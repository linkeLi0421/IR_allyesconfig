; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/repair.c_pt.bc'
source_filename = "../fs/xfs/scrub/repair.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.xchk_meta_ops = type { ptr, ptr, ptr, ptr, i32 }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_agf = type { i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, %struct.uuid_t, i32, i32, i32, i32, [14 x i64], i64, i32, i32 }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.xfs_alloc_arg = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %struct.xfs_owner_info, i32, i8 }
%struct.xbitmap_range = type { %struct.list_head, i64, i64 }
%struct.xrep_findroot = type { ptr, ptr, ptr, ptr }
%struct.xrep_find_ag_btree = type { i64, ptr, i32, i32, i32 }
%struct.xfs_rmap_irec = type { i32, i32, i64, i64, i32 }
%struct.xfs_quotainfo = type { %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, ptr, ptr, %struct.list_lru, i32, %struct.mutex, i64, i32, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.shrinker, i64, i64 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.xfs_def_quota = type { %struct.xfs_quota_limits, %struct.xfs_quota_limits, %struct.xfs_quota_limits }
%struct.xfs_quota_limits = type { i64, i64, i64, i16 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%union.anon.76 = type { %struct.callback_head }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.78 = type { ptr }
%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.xfs_btree_block = type { i32, i16, i16, %union.anon.88 }
%union.anon.88 = type { %struct.xfs_btree_block_lhdr }
%struct.xfs_btree_block_lhdr = type { i64, i64, i64, i64, %struct.uuid_t, i64, i32, i32 }
%struct.xfs_btree_block_shdr = type { i32, i32, i64, i64, %struct.uuid_t, i32, i32 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sc->ops->repair\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/repair.c\00", [42 x i8] zeroinitializer }, align 32
@xrep_failure._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.xrep_failure = private unnamed_addr constant [13 x i8] c"xrep_failure\00", align 1
@.str.3 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Corruption not fixed during online repair.  Unmount and run xfs_repair.\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"args.len == 1\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"XFS_FSB_TO_AGNO(mp, fsb) == sc->sa.pag->pag_agno\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xfs_has_rmapbt(sc->mp)\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"sc->ip != NULL || XFS_FSB_TO_AGNO(sc->mp, fsbno) == sc->sa.pag->pag_agno\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xfs_buf_islocked(agf_bp)\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"agfl_bp == NULL || xfs_buf_islocked(agfl_bp)\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"agfl_bp || fab->rmap_owner != XFS_RMAP_OWN_AG\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"XFS_RMAP_NON_INODE_OWNER(fab->rmap_owner)\00", [54 x i8] zeroinitializer }, align 32
@xrep_ino_dqattach._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.xrep_ino_dqattach = private unnamed_addr constant [18 x i8] c"xrep_ino_dqattach\00", align 1
@.str.12 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"inode %llu repair encountered quota error %d, quotacheck forced.\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_xrep_attempt = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/xfs/scrub/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_xrep_attempt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xrep_done = external dso_local global %struct.tracepoint, align 4
@trace_xrep_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/common.h\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_xrep_calc_ag_resblks = external dso_local global %struct.tracepoint, align 4
@trace_xrep_calc_ag_resblks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xrep_calc_ag_resblks_btsize = external dso_local global %struct.tracepoint, align 4
@trace_xrep_calc_ag_resblks_btsize.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xrep_init_btblock = external dso_local global %struct.tracepoint, align 4
@trace_xrep_init_btblock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xrep_dispose_btree_extent = external dso_local global %struct.tracepoint, align 4
@trace_xrep_dispose_btree_extent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@XFS_RMAP_OINFO_AG = external dso_local constant %struct.xfs_owner_info, align 8
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fab->buf_ops->magic[1] != 0\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"!xfs_trans_buf_is_dirty(bp)\00", [36 x i8] zeroinitializer }, align 32
@__tracepoint_xrep_findroot_block = external dso_local global %struct.tracepoint, align 4
@trace_xrep_findroot_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.xrep_force_quotacheck = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 1024, i32 0, i32 256], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967261, i64 4294967285]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 4294967179, i64 4294967222, i64 4294967293, i64 4294967294]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967171]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 51, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 94, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 333, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 356, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 615, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 618, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 883, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 884, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 891, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 892, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 946, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [24 x i8] c"../fs/xfs/scrub/trace.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 139, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 108, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [25 x i8] c"../fs/xfs/scrub/common.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 24, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 736, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [25 x i8] c"../fs/xfs/scrub/repair.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 758, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [35 x i8] c"switch.table.xrep_force_quotacheck\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @xrep_failure._rs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @xrep_ino_dqattach._rs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @switch.table.xrep_force_quotacheck], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xrep_failure._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xrep_ino_dqattach._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xrep_force_quotacheck to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xrep_attempt(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 4
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -312
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %4 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sm, align 4
  tail call fastcc void @trace_xrep_attempt(ptr noundef %add.ptr.i, ptr noundef %5)
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  tail call void @xchk_ag_btcur_free(ptr noundef %sa) #9
  %ops = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %repair = getelementptr inbounds %struct.xchk_meta_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %repair to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %repair, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !70

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 51) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %repair5 = getelementptr inbounds %struct.xchk_meta_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %repair5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %repair5, align 4
  %call6 = tail call i32 %13(ptr noundef %sc) #9
  %14 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %file, align 4
  %f_inode.i32 = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %f_inode.i32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f_inode.i32, align 8
  %add.ptr.i33 = getelementptr i8, ptr %17, i32 -312
  %18 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sm, align 4
  tail call fastcc void @trace_xrep_done(ptr noundef %add.ptr.i33, ptr noundef %19, i32 noundef %call6)
  %20 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %cond.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 -35, label %cond.end.sw.bb12_crit_edge
    i32 -11, label %cond.end.sw.bb12_crit_edge34
  ]

cond.end.sw.bb12_crit_edge34:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

cond.end.sw.bb12_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sm_flags, align 4
  %and = and i32 %24, -255
  store i32 %and, ptr %sm_flags, align 4
  %flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 8
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %or = or i32 %26, -2147483648
  store i32 %or, ptr %flags, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %cond.end.sw.bb12_crit_edge, %cond.end.sw.bb12_crit_edge34
  %flags13 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 8
  %27 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags13, align 4
  %and14 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %or17 = or i32 %28, 1
  %29 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or17, ptr %flags13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.bb12.cleanup_crit_edge, %sw.bb, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then ], [ -11, %sw.bb ], [ -117, %sw.bb12.cleanup_crit_edge ], [ %call6, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xrep_attempt(ptr noundef %ip, ptr noundef %sm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_attempt, i32 0, i32 1), ptr blockaddress(@trace_xrep_attempt, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  %call42 = tail call i32 @__traceiter_xrep_attempt(ptr noundef null, ptr noundef %ip, ptr noundef %sm, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !72

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_attempt, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_attempt, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_xrep_attempt.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xrep_attempt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 139, ptr noundef nonnull @.str.14) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ag_btcur_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xrep_done(ptr noundef %ip, ptr noundef %sm, i32 noundef %error) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_done, i32 0, i32 1), ptr blockaddress(@trace_xrep_done, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %call42 = tail call i32 @__traceiter_xrep_done(ptr noundef null, ptr noundef %ip, ptr noundef %sm, i32 noundef %error) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_done, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xrep_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xrep_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 140, ptr noundef nonnull @.str.14) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xrep_failure(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @xrep_failure._rs, ptr noundef nonnull @__func__.xrep_failure) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xrep_probe(ptr nocapture noundef readnone %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_resched(ptr noundef nonnull @.str.16, i32 noundef 24, i32 noundef 0) #9
  %call.i.i = tail call i32 @__cond_resched() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.xchk_should_terminate.exit.thread_crit_edge, label %fatal_signal_pending.exit.i

entry.xchk_should_terminate.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xchk_should_terminate.exit.thread

fatal_signal_pending.exit.i:                      ; preds = %entry
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 116, i32 1
  %8 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signal.i.i.i, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.xchk_should_terminate.exit.thread_crit_edge, label %fatal_signal_pending.exit.i.cleanup_crit_edge

fatal_signal_pending.exit.i.cleanup_crit_edge:    ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fatal_signal_pending.exit.i.xchk_should_terminate.exit.thread_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xchk_should_terminate.exit.thread

xchk_should_terminate.exit.thread:                ; preds = %fatal_signal_pending.exit.i.xchk_should_terminate.exit.thread_crit_edge, %entry.xchk_should_terminate.exit.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %xchk_should_terminate.exit.thread, %fatal_signal_pending.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xchk_should_terminate.exit.thread ], [ -11, %fatal_signal_pending.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xrep_roll_ag_trans(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %agi_bp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %agi_bp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tp, align 4
  tail call void @xfs_trans_bhold(ptr noundef %3, ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %agf_bp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %agf_bp, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tp6 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %6 = ptrtoint ptr %tp6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tp6, align 4
  tail call void @xfs_trans_bhold(ptr noundef %7, ptr noundef nonnull %5) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %agfl_bp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %agfl_bp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %agfl_bp, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end9.if.end16_crit_edge, label %if.then12

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %tp13 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %10 = ptrtoint ptr %tp13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tp13, align 4
  tail call void @xfs_trans_bhold(ptr noundef %11, ptr noundef nonnull %9) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end9.if.end16_crit_edge
  %tp17 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %call = tail call i32 @xfs_trans_roll(ptr noundef %tp17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %12 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %agi_bp, align 4
  %tobool23.not = icmp eq ptr %13, null
  br i1 %tobool23.not, label %if.end20.if.end28_crit_edge, label %if.then24

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %tp17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tp17, align 4
  tail call void @xfs_trans_bjoin(ptr noundef %15, ptr noundef nonnull %13) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end20.if.end28_crit_edge
  %16 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %agf_bp, align 4
  %tobool31.not = icmp eq ptr %17, null
  br i1 %tobool31.not, label %if.end28.if.end36_crit_edge, label %if.then32

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %tp17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tp17, align 4
  tail call void @xfs_trans_bjoin(ptr noundef %19, ptr noundef nonnull %17) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end28.if.end36_crit_edge
  %20 = ptrtoint ptr %agfl_bp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %agfl_bp, align 4
  %tobool39.not = icmp eq ptr %21, null
  br i1 %tobool39.not, label %if.end36.cleanup_crit_edge, label %if.then40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %tp17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tp17, align 4
  tail call void @xfs_trans_bjoin(ptr noundef %23, ptr noundef nonnull %21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end36.cleanup_crit_edge, %if.end16.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_bhold(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_roll(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_bjoin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xrep_ag_has_space(ptr noundef %pag, i32 noundef %nr_blocks, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @xfs_ag_resv_critical(ptr noundef %pag, i32 noundef 3) #9
  br i1 %call, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @xfs_ag_resv_critical(ptr noundef %pag, i32 noundef 2) #9
  br i1 %call1, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %pagf_freeblks = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 10
  %0 = ptrtoint ptr %pagf_freeblks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pagf_freeblks, align 4
  %call2 = tail call i32 @xfs_ag_resv_needed(ptr noundef %pag, i32 noundef %type) #9
  %add = add i32 %call2, %nr_blocks
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp = icmp ugt i32 %1, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_ag_resv_critical(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_resv_needed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xrep_calc_ag_resblks(ptr nocapture noundef readonly %sc) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %sm2 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %2 = ptrtoint ptr %sm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !79
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sm_flags, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sm_agno = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sm_agno, align 4
  %call = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %8) #9
  %pagi_init = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %pagi_init to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pagi_init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pagi_count = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 14
  %11 = ptrtoint ptr %pagi_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagi_count, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end
  %13 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sm_agno, align 4
  %call6 = call i32 @xfs_ialloc_read_agi(ptr noundef %1, ptr noundef null, i32 noundef %14, ptr noundef nonnull %bp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %pagi_count9 = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 14
  %15 = ptrtoint ptr %pagi_count9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagi_count9, align 4
  %17 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %18) #9
  call void @xfs_buf_rele(ptr noundef %18) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else.if.end11_crit_edge, %if.then4
  %icount.0 = phi i32 [ %12, %if.then4 ], [ -1, %if.else.if.end11_crit_edge ], [ %16, %if.then8 ]
  %19 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sm_agno, align 4
  %call13 = call i32 @xfs_alloc_read_agf(ptr noundef %1, ptr noundef null, i32 noundef %20, i32 noundef 0, ptr noundef nonnull %bp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else18, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sm_agno, align 4
  %call17 = call i32 @xfs_ag_block_count(ptr noundef %1, i32 noundef %22) #9
  br label %if.end19

if.else18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_addr, align 4
  %agf_length = getelementptr inbounds %struct.xfs_agf, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %agf_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %agf_length, align 4
  %agf_freeblks = getelementptr inbounds %struct.xfs_agf, ptr %26, i32 0, i32 9
  %29 = ptrtoint ptr %agf_freeblks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %agf_freeblks, align 4
  %sub = sub i32 %28, %30
  call void @xfs_buf_unlock(ptr noundef %24) #9
  call void @xfs_buf_rele(ptr noundef %24) #9
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then15
  %aglen.0 = phi i32 [ %call17, %if.then15 ], [ %28, %if.else18 ]
  %usedlen.0 = phi i32 [ %call17, %if.then15 ], [ %sub, %if.else18 ]
  %freelen.0 = phi i32 [ %call17, %if.then15 ], [ %30, %if.else18 ]
  call void @xfs_perag_put(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %icount.0)
  %cmp = icmp eq i32 %icount.0, -1
  br i1 %cmp, label %if.end19.if.then22_crit_edge, label %lor.lhs.false

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.end19
  %31 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sm_agno, align 4
  %call21 = call zeroext i1 @xfs_verify_agino(ptr noundef %1, i32 noundef %32, i32 noundef %icount.0) #9
  br i1 %call21, label %lor.lhs.false.if.end25_crit_edge, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.end19.if.then22_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first) #9
  %33 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %first, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last) #9
  %34 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %last, align 4, !annotation !79
  %35 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sm_agno, align 4
  call void @xfs_agino_range(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %first, ptr noundef nonnull %last) #9
  %37 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %last, align 4
  %39 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %first, align 4
  %sub24 = add i32 %38, 1
  %add = sub i32 %sub24, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %lor.lhs.false.if.end25_crit_edge
  %icount.1 = phi i32 [ %add, %if.then22 ], [ %icount.0, %lor.lhs.false.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %aglen.0)
  %cmp26 = icmp eq i32 %aglen.0, -1
  br i1 %cmp26, label %if.end25.if.then33_crit_edge, label %lor.lhs.false27

if.end25.if.then33_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

lor.lhs.false27:                                  ; preds = %if.end25
  %41 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sm_agno, align 4
  %call29 = call i32 @xfs_ag_block_count(ptr noundef %1, i32 noundef %42) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %aglen.0, i32 %call29)
  %cmp30.not = icmp eq i32 %aglen.0, %call29
  call void @__sanitizer_cov_trace_cmp4(i32 %freelen.0, i32 %aglen.0)
  %cmp32.not = icmp ult i32 %freelen.0, %aglen.0
  %or.cond = select i1 %cmp30.not, i1 %cmp32.not, i1 false
  br i1 %or.cond, label %lor.lhs.false27.if.end36_crit_edge, label %lor.lhs.false27.if.then33_crit_edge

lor.lhs.false27.if.then33_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

lor.lhs.false27.if.end36_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then33:                                        ; preds = %lor.lhs.false27.if.then33_crit_edge, %if.end25.if.then33_crit_edge
  %43 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sm_agno, align 4
  %call35 = call i32 @xfs_ag_block_count(ptr noundef %1, i32 noundef %44) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %lor.lhs.false27.if.end36_crit_edge
  %aglen.1 = phi i32 [ %call35, %if.then33 ], [ %aglen.0, %lor.lhs.false27.if.end36_crit_edge ]
  %usedlen.1 = phi i32 [ %call35, %if.then33 ], [ %usedlen.0, %lor.lhs.false27.if.end36_crit_edge ]
  %freelen.1 = phi i32 [ %call35, %if.then33 ], [ %freelen.0, %lor.lhs.false27.if.end36_crit_edge ]
  %45 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sm_agno, align 4
  call fastcc void @trace_xrep_calc_ag_resblks(ptr noundef %1, i32 noundef %46, i32 noundef %icount.1, i32 noundef %aglen.1, i32 noundef %freelen.1, i32 noundef %usedlen.1)
  %conv = zext i32 %freelen.1 to i64
  %call38 = call i32 @xfs_allocbt_calc_size(ptr noundef %1, i64 noundef %conv) #9
  %mul = shl i32 %call38, 1
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %47 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %48, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %. = select i1 %tobool.i.not, i32 6, i32 2
  %div44165 = lshr i32 %icount.1, %.
  %conv45 = zext i32 %div44165 to i64
  %call46 = call i32 @xfs_iallocbt_calc_size(ptr noundef %1, i64 noundef %conv45) #9
  %49 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %m_features.i, align 8
  %51 = trunc i64 %50 to i32
  %52 = lshr i32 %51, 17
  %53 = and i32 %52, 1
  %spec.select = shl i32 %call46, %53
  %and.i171 = and i64 %50, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i171)
  %tobool.i172.not = icmp eq i64 %and.i171, 0
  br i1 %tobool.i172.not, label %if.end36.if.end57_crit_edge, label %if.then53

if.end36.if.end57_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then53:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %conv54 = zext i32 %usedlen.1 to i64
  %call55 = call i32 @xfs_refcountbt_calc_size(ptr noundef %1, i64 noundef %conv54) #9
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end36.if.end57_crit_edge
  %refcbt_sz.0 = phi i32 [ %call55, %if.then53 ], [ 0, %if.end36.if.end57_crit_edge ]
  %54 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %m_features.i, align 8
  %and.i174 = and i64 %55, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i174)
  %tobool.i175.not = icmp eq i64 %and.i174, 0
  br i1 %tobool.i175.not, label %if.end57.if.end70_crit_edge, label %if.then59

if.end57.if.end70_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %and.i177 = and i64 %55, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i177)
  %tobool.i178.not = icmp eq i64 %and.i177, 0
  %conv62 = zext i32 %aglen.1 to i64
  %mul63 = shl nuw nsw i64 %conv62, 1
  %conv66 = zext i32 %usedlen.1 to i64
  %mul63.sink = select i1 %tobool.i178.not, i64 %conv66, i64 %mul63
  %call64 = call i32 @xfs_rmapbt_calc_size(ptr noundef %1, i64 noundef %mul63.sink) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then59, %if.end57.if.end70_crit_edge
  %rmapbt_sz.0 = phi i32 [ 0, %if.end57.if.end70_crit_edge ], [ %call64, %if.then59 ]
  %56 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sm_agno, align 4
  call fastcc void @trace_xrep_calc_ag_resblks_btsize(ptr noundef %1, i32 noundef %57, i32 noundef %mul, i32 noundef %spec.select, i32 noundef %rmapbt_sz.0, i32 noundef %refcbt_sz.0)
  %58 = call i32 @llvm.umax.i32(i32 %mul, i32 %spec.select)
  %59 = call i32 @llvm.umax.i32(i32 %rmapbt_sz.0, i32 %refcbt_sz.0)
  %60 = call i32 @llvm.umax.i32(i32 %58, i32 %59)
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %60, %if.end70 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ialloc_read_agi(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_read_agf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_block_count(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_agino(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_agino_range(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xrep_calc_ag_resblks(ptr noundef %mp, i32 noundef %agno, i32 noundef %icount, i32 noundef %aglen, i32 noundef %freelen, i32 noundef %usedlen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_calc_ag_resblks, i32 0, i32 1), ptr blockaddress(@trace_xrep_calc_ag_resblks, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
  %call42 = tail call i32 @__traceiter_xrep_calc_ag_resblks(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %icount, i32 noundef %aglen, i32 noundef %freelen, i32 noundef %usedlen) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_calc_ag_resblks, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_calc_ag_resblks, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xrep_calc_ag_resblks.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xrep_calc_ag_resblks.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 837, ptr noundef nonnull @.str.14) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
declare dso_local i32 @xfs_allocbt_calc_size(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iallocbt_calc_size(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_refcountbt_calc_size(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmapbt_calc_size(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xrep_calc_ag_resblks_btsize(ptr noundef %mp, i32 noundef %agno, i32 noundef %bnobt_sz, i32 noundef %inobt_sz, i32 noundef %rmapbt_sz, i32 noundef %refcbt_sz) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_calc_ag_resblks_btsize, i32 0, i32 1), ptr blockaddress(@trace_xrep_calc_ag_resblks_btsize, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %call42 = tail call i32 @__traceiter_xrep_calc_ag_resblks_btsize(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %bnobt_sz, i32 noundef %inobt_sz, i32 noundef %rmapbt_sz, i32 noundef %refcbt_sz) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !83
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_calc_ag_resblks_btsize, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_calc_ag_resblks_btsize, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xrep_calc_ag_resblks_btsize.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xrep_calc_ag_resblks_btsize.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 866, ptr noundef nonnull @.str.14) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
define dso_local i32 @xrep_alloc_ag_block(ptr nocapture noundef readonly %sc, ptr nocapture noundef readonly %oinfo, ptr nocapture noundef writeonly %fsbno, i32 noundef %resv) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.xfs_alloc_arg, align 8
  %args = alloca %struct.xfs_alloc_arg, align 8
  %bno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %args) #9
  %0 = getelementptr inbounds i8, ptr %args, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 120)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bno) #9
  %2 = ptrtoint ptr %bno to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bno, align 4, !annotation !79
  %3 = zext i32 %resv to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %resv, label %sw.epilog [
    i32 1, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge67
  ]

entry.sw.bb_crit_edge67:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge67
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %4 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tp, align 4
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %agf_bp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %agf_bp, align 4
  %call = call i32 @xfs_alloc_get_freelist(ptr noundef %5, ptr noundef %7, ptr noundef nonnull %bno, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %8 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %10 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc, align 4
  %12 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sa, align 4
  call void @xfs_extent_busy_reuse(ptr noundef %11, ptr noundef %13, i32 noundef %9, i32 noundef 1, i1 noundef zeroext false) #9
  %14 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sa, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pag_agno, align 4
  %conv = zext i32 %17 to i64
  %18 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sc, align 4
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %21 to i64
  %shl = shl i64 %conv, %sh_prom
  %22 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bno, align 4
  %conv8 = zext i32 %23 to i64
  %or = or i64 %shl, %conv8
  %24 = ptrtoint ptr %fsbno to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %or, ptr %fsbno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %resv)
  %cmp9 = icmp eq i32 %resv, 3
  br i1 %cmp9, label %if.then11, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc, align 4
  %27 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sa, align 4
  %pag_agno15 = getelementptr inbounds %struct.xfs_perag, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pag_agno15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pag_agno15, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %args.i) #9
  %31 = call ptr @memset(ptr %args.i, i32 0, i32 128)
  %len.i = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args.i, i32 0, i32 17
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %len.i, align 8
  %call.i = call ptr @xfs_perag_get(ptr noundef %26, i32 noundef %30) #9
  call void @xfs_ag_resv_alloc_extent(ptr noundef %call.i, i32 noundef 3, ptr noundef nonnull %args.i) #9
  call void @xfs_perag_put(ptr noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %args.i) #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %tp17 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %33 = ptrtoint ptr %tp17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tp17, align 4
  %35 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %args, align 8
  %36 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sc, align 4
  %mp20 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 1
  %38 = ptrtoint ptr %mp20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %mp20, align 4
  %oinfo21 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 23
  %39 = call ptr @memcpy(ptr %oinfo21, ptr %oinfo, i32 24)
  %sa22 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %40 = ptrtoint ptr %sa22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sa22, align 4
  %pag_agno24 = getelementptr inbounds %struct.xfs_perag, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %pag_agno24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pag_agno24, align 4
  %conv25 = zext i32 %43 to i64
  %sb_agblklog28 = getelementptr inbounds %struct.xfs_sb, ptr %37, i32 0, i32 24
  %44 = ptrtoint ptr %sb_agblklog28 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sb_agblklog28, align 4
  %sh_prom30 = zext i8 %45 to i64
  %shl31 = shl i64 %conv25, %sh_prom30
  %fsbno33 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 4
  %46 = ptrtoint ptr %fsbno33 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %shl31, ptr %fsbno33, align 8
  %minlen = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 7
  %47 = ptrtoint ptr %minlen to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %minlen, align 8
  %maxlen = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 8
  %48 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %maxlen, align 4
  %prod = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 10
  %49 = ptrtoint ptr %prod to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %prod, align 4
  %type = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 18
  %50 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8, ptr %type, align 4
  %resv34 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 24
  %51 = ptrtoint ptr %resv34 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %resv, ptr %resv34, align 8
  %call35 = call i32 @xfs_alloc_vextent(ptr noundef nonnull %args) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %sw.epilog
  %52 = ptrtoint ptr %fsbno33 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %fsbno33, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %53)
  %cmp40 = icmp eq i64 %53, -1
  br i1 %cmp40, label %if.end38.cleanup_crit_edge, label %if.end43

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  %len = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 17
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp44 = icmp eq i32 %55, 1
  br i1 %cmp44, label %if.end43.cond.end_crit_edge, label %cond.false, !prof !72

if.end43.cond.end_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 333) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end43.cond.end_crit_edge
  %56 = ptrtoint ptr %fsbno33 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %fsbno33, align 8
  %58 = ptrtoint ptr %fsbno to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %fsbno, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end38.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then11, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ %call, %sw.bb.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.end2.cleanup_crit_edge ], [ %call35, %sw.epilog.cleanup_crit_edge ], [ -28, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bno) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_get_freelist(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_extent_busy_reuse(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_vextent(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xrep_init_btblock(ptr nocapture noundef readonly %sc, i64 noundef %fsb, ptr nocapture noundef writeonly %bpp, i32 noundef %btnum, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tp1 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %0 = ptrtoint ptr %tp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp1, align 4
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !79
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 24
  %5 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sb_agblklog, align 4
  %conv = zext i8 %6 to i32
  %sh_prom = zext i8 %6 to i64
  %shr = lshr i64 %fsb, %sh_prom
  %conv3 = trunc i64 %shr to i32
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %7 = trunc i64 %fsb to i32
  %conv8 = and i32 %sub.i, %7
  tail call fastcc void @trace_xrep_init_btblock(ptr noundef %3, i32 noundef %conv3, i32 noundef %conv8, i32 noundef %btnum)
  %8 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sb_agblklog, align 4
  %sh_prom12 = zext i8 %9 to i64
  %shr13 = lshr i64 %fsb, %sh_prom12
  %conv14 = trunc i64 %shr13 to i32
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %10 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sa, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pag_agno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv14)
  %cmp = icmp eq i32 %13, %conv14
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !72

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 356) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 13
  %14 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m_ddev_targp, align 8
  %16 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sb_agblklog, align 4
  %conv19 = zext i8 %17 to i32
  %sh_prom20 = zext i8 %17 to i64
  %shr21 = lshr i64 %fsb, %sh_prom20
  %conv23 = and i64 %shr21, 4294967295
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sb_agblocks, align 4
  %conv25 = zext i32 %19 to i64
  %mul = mul nuw i64 %conv23, %conv25
  %notmask.i72 = shl nsw i32 -1, %conv19
  %sub.i73 = xor i32 %notmask.i72, -1
  %conv32 = and i32 %sub.i73, %7
  %conv33 = zext i32 %conv32 to i64
  %add = add nuw i64 %mul, %conv33
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 28
  %20 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %m_blkbb_log, align 1
  %conv34 = zext i8 %21 to i32
  %sh_prom35 = zext i8 %21 to i64
  %shl = shl i64 %add, %sh_prom35
  %shl38 = shl nuw i32 1, %conv34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #9
  %22 = getelementptr inbounds i8, ptr %map.i, i32 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %22, align 8
  %24 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %shl, ptr %map.i, align 8
  store i32 %shl38, ptr %22, align 8
  %call.i = call i32 @xfs_trans_get_buf_map(ptr noundef %1, ptr noundef %15, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not = icmp eq i32 %call.i, 0
  br i1 %tobool40.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bp, align 4
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %b_length, align 8
  %shl41 = shl i32 %28, 9
  call void @xfs_buf_zero(ptr noundef %26, i32 noundef 0, i32 noundef %shl41) #9
  %29 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bp, align 4
  %31 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sa, align 4
  %pag_agno44 = getelementptr inbounds %struct.xfs_perag, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %pag_agno44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pag_agno44, align 4
  %conv45 = zext i32 %34 to i64
  call void @xfs_btree_init_block(ptr noundef %3, ptr noundef %30, i32 noundef %btnum, i16 noundef zeroext 0, i16 noundef zeroext 0, i64 noundef %conv45) #9
  %35 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bp, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %1, ptr noundef %36, i32 noundef 4) #9
  %37 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bp, align 4
  %b_length46 = getelementptr inbounds %struct.xfs_buf, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %b_length46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %b_length46, align 8
  %shl47 = shl i32 %40, 9
  %sub = add i32 %shl47, -1
  call void @xfs_trans_log_buf(ptr noundef %1, ptr noundef %38, i32 noundef 0, i32 noundef %sub) #9
  %41 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %42, i32 0, i32 35
  %43 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ops, ptr %b_ops, align 4
  %44 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %bpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %call.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xrep_init_btblock(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %btnum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_init_btblock, i32 0, i32 1), ptr blockaddress(@trace_xrep_init_btblock, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  %call42 = tail call i32 @__traceiter_xrep_init_btblock(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %btnum) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !85
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_init_btblock, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_init_btblock, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xrep_init_btblock.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xrep_init_btblock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 783, ptr noundef nonnull @.str.14) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
declare dso_local void @xfs_buf_zero(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_init_block(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xrep_invalidate_blocks(ptr nocapture noundef readonly %sc, ptr noundef readonly %bitmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %cmp.not71 = icmp eq ptr %1, %bitmap
  br i1 %cmp.not71, label %entry.for.end45_crit_edge, label %for.body.lr.ph

entry.for.end45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end45

for.body.lr.ph:                                   ; preds = %entry
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %cmp.not = icmp eq ptr %n.073, %bitmap
  br i1 %cmp.not, label %for.cond.loopexit.for.end45_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.loopexit.for.end45_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end45

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %bmr.072 = phi ptr [ %1, %for.body.lr.ph ], [ %n.073, %for.cond.loopexit.for.body_crit_edge ]
  %2 = ptrtoint ptr %bmr.072 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.073 = load ptr, ptr %bmr.072, align 8
  %start = getelementptr inbounds %struct.xbitmap_range, ptr %bmr.072, i32 0, i32 1
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.xbitmap_range, ptr %bmr.072, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %len, align 8
  %add66 = add i64 %6, %4
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %add66)
  %cmp1067 = icmp ult i64 %4, %add66
  br i1 %cmp1067, label %for.body.for.body11_crit_edge, label %for.body.for.cond.loopexit_crit_edge

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %fsbno.068 = phi i64 [ %inc, %for.inc.for.body11_crit_edge ], [ %4, %for.body.for.body11_crit_edge ]
  %7 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc, align 4
  %call = tail call zeroext i1 @xfs_verify_fsbno(ptr noundef %8, i64 noundef %fsbno.068) #9
  br i1 %call, label %if.end, label %for.body11.for.inc_crit_edge

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body11
  %9 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc, align 4
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_ddev_targp, align 8
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %10, i32 0, i32 24
  %13 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sb_agblklog, align 4
  %conv = zext i8 %14 to i32
  %sh_prom = zext i8 %14 to i64
  %shr = lshr i64 %fsbno.068, %sh_prom
  %conv15 = and i64 %shr, 4294967295
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %10, i32 0, i32 11
  %15 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_agblocks, align 4
  %conv18 = zext i32 %16 to i64
  %mul = mul nuw i64 %conv15, %conv18
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %17 = trunc i64 %fsbno.068 to i32
  %conv25 = and i32 %sub.i, %17
  %conv26 = zext i32 %conv25 to i64
  %add27 = add nuw i64 %mul, %conv26
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 28
  %18 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %m_blkbb_log, align 1
  %conv29 = zext i8 %19 to i32
  %sh_prom30 = zext i8 %19 to i64
  %shl = shl i64 %add27, %sh_prom30
  %shl34 = shl nuw i32 1, %conv29
  %call35 = tail call ptr @xfs_buf_incore(ptr noundef %12, i64 noundef %shl, i32 noundef %shl34, i32 noundef 1073741824) #9
  %tobool.not = icmp eq ptr %call35, null
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then36

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tp, align 4
  tail call void @xfs_trans_bjoin(ptr noundef %21, ptr noundef nonnull %call35) #9
  %22 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tp, align 4
  tail call void @xfs_trans_binval(ptr noundef %23, ptr noundef nonnull %call35) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %if.end.for.inc_crit_edge, %for.body11.for.inc_crit_edge
  %inc = add nuw i64 %fsbno.068, 1
  %24 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %start, align 8
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %len, align 8
  %add = add i64 %27, %25
  %cmp10 = icmp ult i64 %inc, %add
  br i1 %cmp10, label %for.inc.for.body11_crit_edge, label %for.inc.for.cond.loopexit_crit_edge

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11

for.end45:                                        ; preds = %for.cond.loopexit.for.end45_crit_edge, %entry.for.end45_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_fsbno(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_incore(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_binval(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xrep_fix_freelist(ptr nocapture noundef readonly %sc, i1 noundef zeroext %can_shrink) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.xfs_alloc_arg, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %args) #9
  %0 = getelementptr inbounds i8, ptr %args, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 120)
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %mp1 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 1
  %4 = ptrtoint ptr %mp1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %mp1, align 4
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %5 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tp, align 4
  %7 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %args, align 8
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %8 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sa, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pag_agno, align 4
  %agno = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 5
  %12 = ptrtoint ptr %agno to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %agno, align 8
  %alignment = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 13
  %13 = ptrtoint ptr %alignment to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %alignment, align 8
  %pag5 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 3
  %14 = ptrtoint ptr %pag5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %pag5, align 4
  %cond = select i1 %can_shrink, i32 0, i32 8
  %call = call i32 @xfs_alloc_fix_freelist(ptr noundef nonnull %args, i32 noundef %cond) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %args) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_fix_freelist(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xrep_reap_extents(ptr noundef %sc, ptr noundef readonly %bitmap, ptr noundef %oinfo, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !70

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 615) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %4 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bitmap, align 4
  %cmp.not77 = icmp eq ptr %5, %bitmap
  br i1 %cmp.not77, label %cond.end.for.end52_crit_edge, label %for.body.lr.ph

cond.end.for.end52_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end52

for.body.lr.ph:                                   ; preds = %cond.end
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc46.for.body_crit_edge, %for.body.lr.ph
  %bmr.079 = phi ptr [ %5, %for.body.lr.ph ], [ %n.080, %for.inc46.for.body_crit_edge ]
  %error.078 = phi i32 [ 0, %for.body.lr.ph ], [ %error.2, %for.inc46.for.body_crit_edge ]
  %6 = ptrtoint ptr %bmr.079 to i32
  call void @__asan_load4_noabort(i32 %6)
  %n.080 = load ptr, ptr %bmr.079, align 8
  %start = getelementptr inbounds %struct.xbitmap_range, ptr %bmr.079, i32 0, i32 1
  %7 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.xbitmap_range, ptr %bmr.079, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %len, align 8
  %add72 = add i64 %10, %8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %add72)
  %cmp1373 = icmp ult i64 %8, %add72
  br i1 %cmp1373, label %for.body.for.body14_crit_edge, label %for.body.for.inc46_crit_edge

for.body.for.inc46_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc46

for.body.for.body14_crit_edge:                    ; preds = %for.body
  br label %for.body14

for.cond11:                                       ; preds = %cond.end28
  %inc = add nuw i64 %fsbno.074, 1
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start, align 8
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %len, align 8
  %add = add i64 %14, %12
  %cmp13 = icmp ult i64 %inc, %add
  br i1 %cmp13, label %for.cond11.for.body14_crit_edge, label %for.cond11.for.inc46_crit_edge

for.cond11.for.inc46_crit_edge:                   ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc46

for.cond11.for.body14_crit_edge:                  ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

for.body14:                                       ; preds = %for.cond11.for.body14_crit_edge, %for.body.for.body14_crit_edge
  %fsbno.074 = phi i64 [ %inc, %for.cond11.for.body14_crit_edge ], [ %8, %for.body.for.body14_crit_edge ]
  %15 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ip, align 4
  %cmp15.not = icmp eq ptr %16, null
  br i1 %cmp15.not, label %lor.rhs, label %for.body14.cond.end28_crit_edge

for.body14.cond.end28_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end28

lor.rhs:                                          ; preds = %for.body14
  %17 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc, align 4
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %20 to i64
  %shr = lshr i64 %fsbno.074, %sh_prom
  %conv17 = trunc i64 %shr to i32
  %21 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sa, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pag_agno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv17)
  %cmp18 = icmp eq i32 %24, %conv17
  br i1 %cmp18, label %lor.rhs.cond.end28_crit_edge, label %cond.false27, !prof !72

lor.rhs.cond.end28_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end28

cond.false27:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 619) #9
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %lor.rhs.cond.end28_crit_edge, %for.body14.cond.end28_crit_edge
  %25 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc, align 4
  %sb_agblklog32 = getelementptr inbounds %struct.xfs_sb, ptr %26, i32 0, i32 24
  %27 = ptrtoint ptr %sb_agblklog32 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sb_agblklog32, align 4
  %conv33 = zext i8 %28 to i32
  %sh_prom34 = zext i8 %28 to i64
  %shr35 = lshr i64 %fsbno.074, %sh_prom34
  %conv36 = trunc i64 %shr35 to i32
  %notmask.i = shl nsw i32 -1, %conv33
  %sub.i = xor i32 %notmask.i, -1
  %29 = trunc i64 %fsbno.074 to i32
  %conv43 = and i32 %sub.i, %29
  tail call fastcc void @trace_xrep_dispose_btree_extent(ptr noundef %26, i32 noundef %conv36, i32 noundef %conv43)
  %call44 = tail call fastcc i32 @xrep_reap_block(ptr noundef %sc, i64 noundef %fsbno.074, ptr noundef %oinfo, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %for.cond11, label %cond.end28.for.inc46_crit_edge

cond.end28.for.inc46_crit_edge:                   ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc46

for.inc46:                                        ; preds = %cond.end28.for.inc46_crit_edge, %for.cond11.for.inc46_crit_edge, %for.body.for.inc46_crit_edge
  %error.2 = phi i32 [ %error.078, %for.body.for.inc46_crit_edge ], [ 0, %for.cond11.for.inc46_crit_edge ], [ %call44, %cond.end28.for.inc46_crit_edge ]
  %cmp.not = icmp eq ptr %n.080, %bitmap
  br i1 %cmp.not, label %for.inc46.for.end52_crit_edge, label %for.inc46.for.body_crit_edge

for.inc46.for.body_crit_edge:                     ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc46.for.end52_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end52

for.end52:                                        ; preds = %for.inc46.for.end52_crit_edge, %cond.end.for.end52_crit_edge
  %error.0.lcssa = phi i32 [ 0, %cond.end.for.end52_crit_edge ], [ %error.2, %for.inc46.for.end52_crit_edge ]
  ret i32 %error.0.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xrep_dispose_btree_extent(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_dispose_btree_extent, i32 0, i32 1), ptr blockaddress(@trace_xrep_dispose_btree_extent, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !86
  %call42 = tail call i32 @__traceiter_xrep_dispose_btree_extent(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef 1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !72

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_dispose_btree_extent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_dispose_btree_extent, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_xrep_dispose_btree_extent.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xrep_dispose_btree_extent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 690, ptr noundef nonnull @.str.14) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xrep_reap_block(ptr noundef %sc, i64 noundef %fsbno, ptr noundef %oinfo, i32 noundef %resv) unnamed_addr #4 align 64 {
entry:
  %agf_bp = alloca ptr, align 4
  %has_other_rmap = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agf_bp) #9
  %0 = ptrtoint ptr %agf_bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %agf_bp, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %has_other_rmap) #9
  %1 = ptrtoint ptr %has_other_rmap to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %has_other_rmap, align 1, !annotation !79
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_agblklog, align 4
  %conv = zext i8 %5 to i32
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %6 = trunc i64 %fsbno to i32
  %conv7 = and i32 %sub.i, %6
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %7 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ip, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sh_prom = zext i8 %5 to i64
  %shr = lshr i64 %fsbno, %sh_prom
  %conv1 = trunc i64 %shr to i32
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %9 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tp, align 4
  %call9 = call i32 @xfs_alloc_read_agf(ptr noundef %3, ptr noundef %10, i32 noundef %conv1, i32 noundef 0, ptr noundef nonnull %agf_bp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then.if.end13_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %agf_bp12 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %agf_bp12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %agf_bp12, align 4
  %13 = ptrtoint ptr %agf_bp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %agf_bp, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then.if.end13_crit_edge
  %14 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc, align 4
  %tp15 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %16 = ptrtoint ptr %tp15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tp15, align 4
  %18 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %agf_bp, align 4
  %sa16 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %20 = ptrtoint ptr %sa16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sa16, align 4
  %call17 = call ptr @xfs_rmapbt_init_cursor(ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef %21) #9
  %call18 = call i32 @xfs_rmap_has_other_keys(ptr noundef %call17, i32 noundef %conv7, i32 noundef 1, ptr noundef %oinfo, ptr noundef nonnull %has_other_rmap) #9
  call void @xfs_btree_del_cursor(ptr noundef %call17, i32 noundef %call18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %out_free

if.end21:                                         ; preds = %if.end13
  %22 = ptrtoint ptr %has_other_rmap to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_other_rmap, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool22.not = icmp eq i8 %23, 0
  br i1 %tobool22.not, label %if.else28, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %tp15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tp15, align 4
  %26 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %agf_bp, align 4
  %28 = ptrtoint ptr %sa16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sa16, align 4
  %call27 = call i32 @xfs_rmap_free(ptr noundef %25, ptr noundef %27, ptr noundef %29, i32 noundef %conv7, i32 noundef 1, ptr noundef %oinfo) #9
  br label %if.end36

if.else28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %resv)
  %cmp = icmp eq i32 %resv, 1
  br i1 %cmp, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = call fastcc i32 @xrep_put_freelist(ptr noundef %sc, i32 noundef %conv7)
  br label %if.end36

if.else32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %tp15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tp15, align 4
  %call.i = call i32 @__xfs_free_extent(ptr noundef %31, i64 noundef %fsbno, i32 noundef 1, ptr noundef %oinfo, i32 noundef %resv, i1 noundef zeroext false) #9
  br label %if.end36

if.end36:                                         ; preds = %if.else32, %if.then30, %if.then23
  %error.0 = phi i32 [ %call27, %if.then23 ], [ %call31, %if.then30 ], [ %call.i, %if.else32 ]
  %32 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %agf_bp, align 4
  %agf_bp38 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %agf_bp38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %agf_bp38, align 4
  %cmp39.not = icmp eq ptr %33, %35
  br i1 %cmp39.not, label %if.end36.if.end43_crit_edge, label %if.then41

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %tp15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tp15, align 4
  call void @xfs_trans_brelse(ptr noundef %37, ptr noundef %33) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end36.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool44.not = icmp eq i32 %error.0, 0
  br i1 %tobool44.not, label %if.end46, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %if.end43
  %38 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ip, align 4
  %tobool48.not = icmp eq ptr %39, null
  br i1 %tobool48.not, label %if.end53, label %if.then49

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = call i32 @xfs_trans_roll_inode(ptr noundef %tp15, ptr noundef nonnull %39) #9
  br label %cleanup

if.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = call i32 @xrep_roll_ag_trans(ptr noundef %sc)
  br label %cleanup

out_free:                                         ; preds = %if.end13
  %40 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %agf_bp, align 4
  %agf_bp56 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 1
  %42 = ptrtoint ptr %agf_bp56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %agf_bp56, align 4
  %cmp57.not = icmp eq ptr %41, %43
  br i1 %cmp57.not, label %out_free.cleanup_crit_edge, label %if.then59

out_free.cleanup_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then59:                                        ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %tp15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tp15, align 4
  call void @xfs_trans_brelse(ptr noundef %45, ptr noundef %41) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %out_free.cleanup_crit_edge, %if.end53, %if.then49, %if.end43.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call52, %if.then49 ], [ %call54, %if.end53 ], [ %call9, %if.then.cleanup_crit_edge ], [ %error.0, %if.end43.cleanup_crit_edge ], [ %call18, %if.then59 ], [ %call18, %out_free.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %has_other_rmap) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agf_bp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xrep_find_ag_btree_roots(ptr noundef %sc, ptr noundef %agf_bp, ptr noundef %btree_info, ptr noundef %agfl_bp) local_unnamed_addr #0 align 64 {
entry:
  %ri = alloca %struct.xrep_findroot, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ri) #9
  %2 = getelementptr inbounds %struct.xrep_findroot, ptr %ri, i32 0, i32 1
  %3 = getelementptr inbounds %struct.xrep_findroot, ptr %ri, i32 0, i32 2
  %4 = getelementptr inbounds %struct.xrep_findroot, ptr %ri, i32 0, i32 3
  %count = getelementptr inbounds %struct.xfs_buf, ptr %agf_bp, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !72

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 883) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cmp3 = icmp eq ptr %agfl_bp, null
  br i1 %cmp3, label %cond.end.cond.end15_crit_edge, label %lor.rhs

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end15

lor.rhs:                                          ; preds = %cond.end
  %count5 = getelementptr inbounds %struct.xfs_buf, ptr %agfl_bp, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %count5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %lor.rhs.cond.end15_crit_edge, label %cond.false14, !prof !72

lor.rhs.cond.end15_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end15

cond.false14:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 884) #9
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %lor.rhs.cond.end15_crit_edge, %cond.end.cond.end15_crit_edge
  %9 = ptrtoint ptr %ri to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sc, ptr %ri, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %btree_info, ptr %4, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agf_bp, i32 0, i32 16
  %11 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_addr, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %3, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %agfl_bp, ptr %2, align 4
  %buf_ops65 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %btree_info, i32 0, i32 1
  %15 = ptrtoint ptr %buf_ops65 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf_ops65, align 8
  %tobool19.not66 = icmp eq ptr %16, null
  br i1 %tobool19.not66, label %cond.end15.for.end_crit_edge, label %cond.end15.for.body_crit_edge

cond.end15.for.body_crit_edge:                    ; preds = %cond.end15
  br label %for.body

cond.end15.for.end_crit_edge:                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %cond.end47.for.body_crit_edge, %cond.end15.for.body_crit_edge
  %fab.067 = phi ptr [ %incdec.ptr, %cond.end47.for.body_crit_edge ], [ %btree_info, %cond.end15.for.body_crit_edge ]
  br i1 %cmp3, label %lor.rhs21, label %for.body.cond.end32thread-pre-split_crit_edge

for.body.cond.end32thread-pre-split_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end32thread-pre-split

lor.rhs21:                                        ; preds = %for.body
  %17 = ptrtoint ptr %fab.067 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fab.067, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %18)
  %cmp22.not = icmp eq i64 %18, -5
  br i1 %cmp22.not, label %cond.false31, label %lor.rhs21.cond.end32_crit_edge, !prof !70

lor.rhs21.cond.end32_crit_edge:                   ; preds = %lor.rhs21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end32

cond.false31:                                     ; preds = %lor.rhs21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 891) #9
  br label %cond.end32thread-pre-split

cond.end32thread-pre-split:                       ; preds = %cond.false31, %for.body.cond.end32thread-pre-split_crit_edge
  %19 = ptrtoint ptr %fab.067 to i32
  call void @__asan_load8_noabort(i32 %19)
  %.pr = load i64, ptr %fab.067, align 8
  br label %cond.end32

cond.end32:                                       ; preds = %cond.end32thread-pre-split, %lor.rhs21.cond.end32_crit_edge
  %20 = phi i64 [ %.pr, %cond.end32thread-pre-split ], [ %18, %lor.rhs21.cond.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %20)
  %tobool34.not = icmp sgt i64 %20, -1
  br i1 %tobool34.not, label %cond.false46, label %cond.end32.cond.end47_crit_edge, !prof !70

cond.end32.cond.end47_crit_edge:                  ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end47

cond.false46:                                     ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 892) #9
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %cond.end32.cond.end47_crit_edge
  %root = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab.067, i32 0, i32 3
  %21 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %root, align 8
  %height = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab.067, i32 0, i32 4
  %22 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %height, align 4
  %incdec.ptr = getelementptr %struct.xrep_find_ag_btree, ptr %fab.067, i32 1
  %buf_ops = getelementptr %struct.xrep_find_ag_btree, ptr %fab.067, i32 1, i32 1
  %23 = ptrtoint ptr %buf_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf_ops, align 8
  %tobool19.not = icmp eq ptr %24, null
  br i1 %tobool19.not, label %cond.end47.for.end_crit_edge, label %cond.end47.for.body_crit_edge

cond.end47.for.body_crit_edge:                    ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cond.end47.for.end_crit_edge:                     ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cond.end47.for.end_crit_edge, %cond.end15.for.end_crit_edge
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %25 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tp, align 4
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %27 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sa, align 4
  %call = tail call ptr @xfs_rmapbt_init_cursor(ptr noundef %1, ptr noundef %26, ptr noundef %agf_bp, ptr noundef %28) #9
  %call48 = call i32 @xfs_rmap_query_all(ptr noundef %call, ptr noundef nonnull @xrep_findroot_rmap, ptr noundef nonnull %ri) #9
  call void @xfs_btree_del_cursor(ptr noundef %call, i32 noundef %call48) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ri) #9
  ret i32 %call48
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_rmapbt_init_cursor(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_query_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xrep_findroot_rmap(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %rec, ptr nocapture noundef readonly %priv) #4 align 64 {
entry:
  %done = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %done) #9
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 2
  %0 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %1)
  %tobool.not = icmp sgt i64 %1, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 1
  %2 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rm_blockcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp37.not = icmp eq i32 %3, 0
  br i1 %cmp37.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %btree_info = getelementptr inbounds %struct.xrep_findroot, ptr %priv, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc15.for.body_crit_edge, %for.body.lr.ph
  %b.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc15.for.body_crit_edge ]
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %done, align 1
  %5 = ptrtoint ptr %btree_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %btree_info, align 4
  %buf_ops33 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %buf_ops33 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf_ops33, align 8
  %tobool2.not34 = icmp eq ptr %8, null
  br i1 %tobool2.not34, label %for.body.for.inc15_crit_edge, label %for.body.for.body3_crit_edge

for.body.for.body3_crit_edge:                     ; preds = %for.body
  br label %for.body3

for.body.for.inc15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.body.for.body3_crit_edge
  %fab.035 = phi ptr [ %incdec.ptr, %for.inc.for.body3_crit_edge ], [ %6, %for.body.for.body3_crit_edge ]
  %9 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rm_owner, align 8
  %11 = ptrtoint ptr %fab.035 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fab.035, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp5.not = icmp eq i64 %10, %12
  br i1 %cmp5.not, label %if.end7, label %for.body3.for.inc_crit_edge

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end7:                                          ; preds = %for.body3
  %13 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rec, align 8
  %add = add i32 %14, %b.038
  %call = call fastcc i32 @xrep_findroot_block(ptr noundef %priv, ptr noundef %fab.035, i64 noundef %10, i32 noundef %add, ptr noundef nonnull %done)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %done, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not = icmp eq i8 %16, 0
  br i1 %tobool12.not, label %if.end11.for.inc_crit_edge, label %if.end11.for.inc15_crit_edge

if.end11.for.inc15_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end11.for.inc_crit_edge, %for.body3.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.xrep_find_ag_btree, ptr %fab.035, i32 1
  %buf_ops = getelementptr %struct.xrep_find_ag_btree, ptr %fab.035, i32 1, i32 1
  %17 = ptrtoint ptr %buf_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf_ops, align 8
  %tobool2.not = icmp eq ptr %18, null
  br i1 %tobool2.not, label %for.inc.for.inc15_crit_edge, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

for.inc.for.inc15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15

for.inc15:                                        ; preds = %for.inc.for.inc15_crit_edge, %if.end11.for.inc15_crit_edge, %for.body.for.inc15_crit_edge
  %inc = add nuw i32 %b.038, 1
  %19 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rm_blockcount, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc15.for.body_crit_edge, label %for.inc15.cleanup_crit_edge

for.inc15.cleanup_crit_edge:                      ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc15.for.body_crit_edge:                     ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc15.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call, %if.end7.cleanup_crit_edge ], [ 0, %for.inc15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %done) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_del_cursor(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xrep_force_quotacheck(ptr nocapture noundef readonly %sc, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i8 %type, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %0 = icmp ult i8 %switch.tableidx, 4
  br i1 %0, label %switch.lookup, label %entry.xfs_quota_chkd_flag.exit_crit_edge

entry.xfs_quota_chkd_flag.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_quota_chkd_flag.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.xrep_force_quotacheck, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %xfs_quota_chkd_flag.exit

xfs_quota_chkd_flag.exit:                         ; preds = %switch.lookup, %entry.xfs_quota_chkd_flag.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.xfs_quota_chkd_flag.exit_crit_edge ]
  %3 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc, align 4
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 60
  %5 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %m_qflags, align 4
  %and = and i32 %6, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %xfs_quota_chkd_flag.exit.cleanup_crit_edge, label %if.end

xfs_quota_chkd_flag.exit.cleanup_crit_edge:       ; preds = %xfs_quota_chkd_flag.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %xfs_quota_chkd_flag.exit
  call void @__sanitizer_cov_trace_pc() #11
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m_quotainfo, align 4
  %qi_quotaofflock = getelementptr inbounds %struct.xfs_quotainfo, ptr %8, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %qi_quotaofflock, i32 noundef 0) #9
  %neg = xor i32 %retval.0.i, -1
  %9 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc, align 4
  %m_qflags3 = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 60
  %11 = ptrtoint ptr %m_qflags3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_qflags3, align 4
  %and4 = and i32 %12, %neg
  store i32 %and4, ptr %m_qflags3, align 4
  %13 = load ptr, ptr %sc, align 4
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %13, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #9
  %14 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc, align 4
  %sb_qflags = getelementptr inbounds %struct.xfs_sb, ptr %15, i32 0, i32 34
  %16 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sb_qflags, align 16
  %18 = trunc i32 %neg to i16
  %conv9 = and i16 %17, %18
  store i16 %conv9, ptr %sb_qflags, align 16
  %19 = load ptr, ptr %sc, align 4
  %m_sb_lock11 = getelementptr inbounds %struct.xfs_mount, ptr %19, i32 0, i32 76
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock11) #9
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %20 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tp, align 4
  tail call void @xfs_log_sb(ptr noundef %21) #9
  %22 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sc, align 4
  %m_quotainfo13 = getelementptr inbounds %struct.xfs_mount, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %m_quotainfo13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m_quotainfo13, align 4
  %qi_quotaofflock14 = getelementptr inbounds %struct.xfs_quotainfo, ptr %25, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %qi_quotaofflock14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xfs_quota_chkd_flag.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_sb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xrep_ino_dqattach(ptr nocapture noundef readonly %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %call = tail call i32 @xfs_qm_dqattach_locked(ptr noundef %1, i1 noundef zeroext false) #9
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call, label %entry.sw.epilog_crit_edge [
    i32 -74, label %entry.do.body_crit_edge
    i32 -117, label %entry.do.body_crit_edge41
    i32 -2, label %entry.do.body_crit_edge42
    i32 -3, label %entry.sw.bb27_crit_edge
  ]

entry.sw.bb27_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb27

entry.do.body_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge41, %entry.do.body_crit_edge42
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @xrep_ino_dqattach._rs, ptr noundef nonnull @__func__.xrep_ino_dqattach) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc, align 4
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ip, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @xfs_err(ptr noundef %4, ptr noundef nonnull @.str.12, i64 noundef %8, i32 noundef %call) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body.do.end_crit_edge
  %9 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc, align 4
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 60
  %11 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_qflags, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end8_crit_edge, label %land.lhs.true

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %do.end
  %13 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ip, align 4
  %i_udquot = getelementptr inbounds %struct.xfs_inode, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_udquot, align 4
  %tobool6.not = icmp eq ptr %16, null
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xrep_force_quotacheck(ptr noundef %sc, i8 noundef zeroext 1)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true.if.end8_crit_edge, %do.end.if.end8_crit_edge
  %17 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc, align 4
  %m_qflags10 = getelementptr inbounds %struct.xfs_mount, ptr %18, i32 0, i32 60
  %19 = ptrtoint ptr %m_qflags10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m_qflags10, align 4
  %and11 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end8.if.end17_crit_edge, label %land.lhs.true13

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true13:                                  ; preds = %if.end8
  %21 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ip, align 4
  %i_gdquot = getelementptr inbounds %struct.xfs_inode, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_gdquot, align 8
  %tobool15.not = icmp eq ptr %24, null
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true13.if.end17_crit_edge

land.lhs.true13.if.end17_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xrep_force_quotacheck(ptr noundef %sc, i8 noundef zeroext 4)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true13.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %25 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc, align 4
  %m_qflags19 = getelementptr inbounds %struct.xfs_mount, ptr %26, i32 0, i32 60
  %27 = ptrtoint ptr %m_qflags19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %m_qflags19, align 4
  %and20 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end17.sw.bb27_crit_edge, label %land.lhs.true22

if.end17.sw.bb27_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb27

land.lhs.true22:                                  ; preds = %if.end17
  %29 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ip, align 4
  %i_pdquot = getelementptr inbounds %struct.xfs_inode, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_pdquot, align 4
  %tobool24.not = icmp eq ptr %32, null
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true22.sw.bb27_crit_edge

land.lhs.true22.sw.bb27_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb27

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xrep_force_quotacheck(ptr noundef %sc, i8 noundef zeroext 2)
  br label %sw.bb27

sw.bb27:                                          ; preds = %if.then25, %land.lhs.true22.sw.bb27_crit_edge, %if.end17.sw.bb27_crit_edge, %entry.sw.bb27_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb27, %entry.sw.epilog_crit_edge
  %error.0 = phi i32 [ %call, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb27 ]
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqattach_locked(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xrep_attempt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xrep_done(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xrep_calc_ag_resblks(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xrep_calc_ag_resblks_btsize(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ag_resv_alloc_extent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xrep_init_btblock(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_get_buf_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xrep_dispose_btree_extent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_has_other_keys(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_free(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xrep_put_freelist(ptr nocapture noundef readonly %sc, i32 noundef %agbno) unnamed_addr #4 align 64 {
entry:
  %args.i = alloca %struct.xfs_alloc_arg, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %args.i) #9
  %0 = getelementptr inbounds i8, ptr %args.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 120)
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %mp1.i = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args.i, i32 0, i32 1
  %4 = ptrtoint ptr %mp1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %mp1.i, align 4
  %tp.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %5 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tp.i, align 4
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %args.i, align 8
  %sa.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %8 = ptrtoint ptr %sa.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sa.i, align 4
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pag_agno.i, align 4
  %agno.i = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args.i, i32 0, i32 5
  %12 = ptrtoint ptr %agno.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %agno.i, align 8
  %alignment.i = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args.i, i32 0, i32 13
  %13 = ptrtoint ptr %alignment.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %alignment.i, align 8
  %pag5.i = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args.i, i32 0, i32 3
  %14 = ptrtoint ptr %pag5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %pag5.i, align 4
  %call.i = call i32 @xfs_alloc_fix_freelist(ptr noundef nonnull %args.i, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tp.i, align 4
  %agf_bp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %agf_bp, align 4
  %19 = ptrtoint ptr %sa.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sa.i, align 4
  %call2 = call i32 @xfs_rmap_alloc(ptr noundef %16, ptr noundef %18, ptr noundef %20, i32 noundef %agbno, i32 noundef 1, ptr noundef nonnull @XFS_RMAP_OINFO_AG) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %21 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tp.i, align 4
  %23 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %agf_bp, align 4
  %agfl_bp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 2
  %25 = ptrtoint ptr %agfl_bp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %agfl_bp, align 4
  %call10 = call i32 @xfs_alloc_put_freelist(ptr noundef %22, ptr noundef %24, ptr noundef %26, i32 noundef %agbno, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tp.i, align 4
  %29 = ptrtoint ptr %sa.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sa.i, align 4
  call void @xfs_extent_busy_insert(ptr noundef %28, ptr noundef %30, i32 noundef %agbno, i32 noundef 1, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call10, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_roll_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_put_freelist(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_extent_busy_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfs_free_extent(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xrep_findroot_block(ptr nocapture noundef readonly %ri, ptr nocapture noundef %fab, i64 noundef %owner, i32 noundef %agbno, ptr nocapture noundef writeonly %done_with_block) unnamed_addr #4 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %agbno.addr = alloca i32, align 4
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %agbno.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %agbno, ptr %agbno.addr, align 4
  %1 = ptrtoint ptr %ri to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ri, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #9
  %5 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !79
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %2, i32 0, i32 10
  %6 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sa, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pag_agno, align 4
  %conv = zext i32 %9 to i64
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %4, i32 0, i32 11
  %10 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_agblocks, align 4
  %conv3 = zext i32 %11 to i64
  %mul = mul nuw i64 %conv3, %conv
  %conv4 = zext i32 %agbno to i64
  %add = add nuw i64 %mul, %conv4
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 28
  %12 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %13 to i64
  %shl = shl i64 %add, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %owner)
  %cmp = icmp eq i64 %owner, -5
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  %agf = getelementptr inbounds %struct.xrep_findroot, ptr %ri, i32 0, i32 2
  %14 = ptrtoint ptr %agf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %agf, align 4
  %agfl_bp = getelementptr inbounds %struct.xrep_findroot, ptr %ri, i32 0, i32 1
  %16 = ptrtoint ptr %agfl_bp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %agfl_bp, align 4
  %call = call i32 @xfs_agfl_walk(ptr noundef %4, ptr noundef %15, ptr noundef %17, ptr noundef nonnull @xrep_findroot_agfl_walk, ptr noundef nonnull %agbno.addr) #9
  %18 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call, label %if.then10 [
    i32 -125, label %if.then.cleanup_crit_edge
    i32 0, label %if.then.if.end12_crit_edge
  ]

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %19 = ptrtoint ptr %ri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ri, align 4
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tp, align 4
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 13
  %23 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m_ddev_targp, align 8
  %m_bsize = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 26
  %25 = ptrtoint ptr %m_bsize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %m_bsize, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #9
  %27 = getelementptr inbounds i8, ptr %map.i, i32 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %27, align 8
  %29 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %shl, ptr %map.i, align 8
  store i32 %26, ptr %27, align 8
  %call.i = call i32 @xfs_trans_read_buf_map(ptr noundef %4, ptr noundef %22, ptr noundef %24, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %30 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_addr, align 4
  %buf_ops = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 1
  %34 = ptrtoint ptr %buf_ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf_ops, align 8
  %arrayidx = getelementptr %struct.xfs_buf_ops, ptr %35, i32 0, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp18.not = icmp eq i32 %37, 0
  br i1 %cmp18.not, label %cond.false, label %if.end17.cond.end_crit_edge, !prof !70

if.end17.cond.end_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 736) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end17.cond.end_crit_edge
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %33, align 8
  %40 = ptrtoint ptr %buf_ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf_ops, align 8
  %arrayidx23 = getelementptr %struct.xfs_buf_ops, ptr %41, i32 0, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %43)
  %cmp24.not = icmp eq i32 %39, %43
  br i1 %cmp24.not, label %if.end27, label %cond.end.out_crit_edge

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end27:                                         ; preds = %cond.end
  %44 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %45, i32 0, i32 35
  %46 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %b_ops, align 4
  %tobool28.not = icmp eq ptr %47, null
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end27
  %cmp32.not = icmp eq ptr %47, %41
  br i1 %cmp32.not, label %if.then29.if.end60_crit_edge, label %if.then29.out_crit_edge

if.then29.out_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then29.if.end60_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.else:                                          ; preds = %if.end27
  %call36 = call zeroext i1 @xfs_trans_buf_is_dirty(ptr noundef %45) #9
  br i1 %call36, label %cond.false46, label %if.else.cond.end47_crit_edge, !prof !70

if.else.cond.end47_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end47

cond.false46:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 758) #9
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %if.else.cond.end47_crit_edge
  %bb_uuid = getelementptr inbounds %struct.xfs_btree_block, ptr %33, i32 0, i32 3, i32 0, i32 3
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %4, i32 0, i32 54
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %bb_uuid, ptr noundef dereferenceable(16) %sb_meta_uuid, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end51, label %cond.end47.out_crit_edge

cond.end47.out_crit_edge:                         ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end51:                                         ; preds = %cond.end47
  %48 = ptrtoint ptr %buf_ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf_ops, align 8
  %50 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bp, align 4
  %b_ops53 = getelementptr inbounds %struct.xfs_buf, ptr %51, i32 0, i32 35
  %52 = ptrtoint ptr %b_ops53 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %b_ops53, align 4
  %53 = load ptr, ptr %buf_ops, align 8
  %verify_read = getelementptr inbounds %struct.xfs_buf_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %verify_read to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %verify_read, align 4
  call void %55(ptr noundef %51) #9
  %56 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bp, align 4
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %57, i32 0, i32 31
  %58 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool55.not = icmp eq i32 %59, 0
  br i1 %tobool55.not, label %if.end51.if.end60_crit_edge, label %if.then56

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %b_ops57 = getelementptr inbounds %struct.xfs_buf, ptr %57, i32 0, i32 35
  %60 = ptrtoint ptr %b_ops57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %b_ops57, align 4
  %61 = ptrtoint ptr %b_error to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %b_error, align 4
  br label %out

if.end60:                                         ; preds = %if.end51.if.end60_crit_edge, %if.then29.if.end60_crit_edge
  %62 = ptrtoint ptr %done_with_block to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %done_with_block, align 1
  %bb_level.i = getelementptr inbounds %struct.xfs_btree_block, ptr %33, i32 0, i32 1
  %63 = ptrtoint ptr %bb_level.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %bb_level.i, align 4
  %conv.i = zext i16 %64 to i32
  %add62 = add nuw nsw i32 %conv.i, 1
  %height = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 4
  %65 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add62, i32 %66)
  %cmp63 = icmp eq i32 %add62, %66
  br i1 %cmp63, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %root = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 3
  %67 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %root, align 8
  br label %out

if.else66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %conv.i)
  %cmp68 = icmp ugt i32 %66, %conv.i
  br i1 %cmp68, label %if.else66.out_crit_edge, label %if.end72

if.else66.out_crit_edge:                          ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end72:                                         ; preds = %if.else66
  %68 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add62, ptr %height, align 4
  %bb_u75 = getelementptr inbounds %struct.xfs_btree_block, ptr %33, i32 0, i32 3
  %69 = ptrtoint ptr %bb_u75 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bb_u75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp76 = icmp eq i32 %70, -1
  br i1 %cmp76, label %land.lhs.true, label %if.end72.if.end85_crit_edge

if.end72.if.end85_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end72
  %bb_rightsib = getelementptr inbounds %struct.xfs_btree_block_shdr, ptr %bb_u75, i32 0, i32 1
  %71 = ptrtoint ptr %bb_rightsib to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bb_rightsib, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp79 = icmp eq i32 %72, -1
  br i1 %cmp79, label %if.then81, label %land.lhs.true.if.end85_crit_edge

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then81:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %agbno.addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %agbno.addr, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %land.lhs.true.if.end85_crit_edge, %if.end72.if.end85_crit_edge
  %.sink = phi i32 [ %74, %if.then81 ], [ -1, %land.lhs.true.if.end85_crit_edge ], [ -1, %if.end72.if.end85_crit_edge ]
  %root84 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 3
  %75 = ptrtoint ptr %root84 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.sink, ptr %root84, align 8
  %76 = ptrtoint ptr %ri to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ri, align 4
  %sa87 = getelementptr inbounds %struct.xfs_scrub, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %sa87 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sa87, align 4
  %pag_agno89 = getelementptr inbounds %struct.xfs_perag, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %pag_agno89 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pag_agno89, align 4
  %82 = ptrtoint ptr %agbno.addr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %agbno.addr, align 4
  %84 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %33, align 8
  %86 = trunc i32 %add62 to i16
  %conv92 = add i16 %86, -1
  call fastcc void @trace_xrep_findroot_block(ptr noundef %4, i32 noundef %81, i32 noundef %83, i32 noundef %85, i16 noundef zeroext %conv92)
  br label %out

out:                                              ; preds = %if.end85, %if.else66.out_crit_edge, %if.then65, %if.then56, %cond.end47.out_crit_edge, %if.then29.out_crit_edge, %cond.end.out_crit_edge
  %87 = ptrtoint ptr %ri to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ri, align 4
  %tp94 = getelementptr inbounds %struct.xfs_scrub, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %tp94 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tp94, align 4
  %91 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %90, ptr noundef %92) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end12.cleanup_crit_edge, %if.then10, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then10 ], [ 0, %out ], [ 0, %if.then.cleanup_crit_edge ], [ %call.i, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_agfl_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xrep_findroot_agfl_walk(ptr nocapture noundef readnone %mp, i32 noundef %bno, ptr nocapture noundef readonly %priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %bno)
  %cmp = icmp eq i32 %1, %bno
  %cond = select i1 %cmp, i32 -125, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_trans_buf_is_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xrep_findroot_block(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %magic, i16 noundef zeroext %level) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_findroot_block, i32 0, i32 1), ptr blockaddress(@trace_xrep_findroot_block, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %call42 = tail call i32 @__traceiter_xrep_findroot_block(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %magic, i16 noundef zeroext %level) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_findroot_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_findroot_block, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xrep_findroot_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xrep_findroot_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 808, ptr noundef nonnull @.str.14) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #9
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
declare dso_local i32 @xfs_trans_read_buf_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xrep_findroot_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !38, !39, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !57, !59}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/scrub/repair.c", i32 51, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/scrub/repair.c", i32 94, i32 2}
!5 = !{ptr @xrep_failure._rs, !4, !"_rs", i1 false, i1 false}
!6 = !{ptr @__func__.xrep_failure, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/scrub/repair.c", i32 333, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/scrub/repair.c", i32 356, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/xfs/scrub/repair.c", i32 615, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/xfs/scrub/repair.c", i32 618, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/xfs/scrub/repair.c", i32 883, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/xfs/scrub/repair.c", i32 884, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/xfs/scrub/repair.c", i32 891, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/xfs/scrub/repair.c", i32 892, i32 3}
!24 = !{ptr @xrep_ino_dqattach._rs, !25, !"_rs", i1 false, i1 false}
!25 = !{!"../fs/xfs/scrub/repair.c", i32 946, i32 3}
!26 = !{ptr @__func__.xrep_ino_dqattach, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../fs/xfs/scrub/trace.h", i32 139, i32 1}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!32 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../fs/xfs/scrub/trace.h", i32 140, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/scrub/common.h", i32 24, i32 2}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../fs/xfs/scrub/trace.h", i32 809, i32 1}
!43 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../fs/xfs/scrub/trace.h", i32 838, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/xfs/scrub/trace.h", i32 762, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../fs/xfs/scrub/trace.h", i32 690, i32 1}
!52 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/scrub/repair.c", i32 736, i32 2}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/xfs/scrub/repair.c", i32 758, i32 3}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../fs/xfs/scrub/trace.h", i32 784, i32 1}
!59 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2148271627, i64 2148271632, i64 2148271645, i64 2148271689, i64 2148271723, i64 2148271744}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2155950172}
!74 = !{i64 2155950385}
!75 = !{i64 2149973720}
!76 = !{i64 2149974756}
!77 = !{i64 2155966835}
!78 = !{i64 2155967042}
!79 = !{!"auto-init"}
!80 = !{i64 2156558011}
!81 = !{i64 2156558296}
!82 = !{i64 2156577421}
!83 = !{i64 2156577738}
!84 = !{i64 2156517434}
!85 = !{i64 2156517675}
!86 = !{i64 2156378716}
!87 = !{i64 2156378969}
!88 = !{i8 0, i8 2}
!89 = !{i64 2156535265}
!90 = !{i64 2156535524}
