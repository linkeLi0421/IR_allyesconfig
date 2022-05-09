; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/ialloc.c_pt.bc'
source_filename = "../fs/xfs/scrub/ialloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xchk_iallocbt = type { i64, i32, i32 }
%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xfs_inobt_rec_incore = type { i32, i16, i8, i8, i64 }
%struct.xchk_btree = type { ptr, ptr, ptr, ptr, ptr, %union.xfs_btree_rec, %struct.list_head, [0 x %union.xfs_btree_key] }
%union.xfs_btree_rec = type { %struct.xfs_rmap_rec }
%struct.xfs_rmap_rec = type { i32, i32, i64, i64 }
%struct.list_head = type { ptr, ptr }
%union.xfs_btree_key = type { %struct.xfs_bmbt_key, [32 x i8] }
%struct.xfs_bmbt_key = type { i64 }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.95, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%union.anon.95 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.96, %union.anon.97 }
%union.anon.96 = type { ptr }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.xfs_dinode = type { i16, i16, i8, i8, i16, i32, i32, i32, i16, i16, [6 x i8], i16, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, i16, i16, i32, i32, i32, i64, i64, i64, i32, [12 x i8], i64, i64, %struct.uuid_t }

@__const.xchk_iallocbt.iabt = private unnamed_addr constant %struct.xchk_iallocbt { i64 0, i32 -1, i32 -1 }, align 8
@XFS_RMAP_OINFO_INOBT = external dso_local constant %struct.xfs_owner_info, align 8
@XFS_RMAP_OINFO_INODES = external dso_local constant %struct.xfs_owner_info, align 8
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"imap.im_boffset == 0 || cluster_base == 0\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/ialloc.c\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_xchk_iallocbt_check_cluster = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/xfs/scrub/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_xchk_iallocbt_check_cluster.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/common.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private constant [25 x i8] c"../fs/xfs/scrub/ialloc.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 251, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [24 x i8] c"../fs/xfs/scrub/trace.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 557, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 108, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"../fs/xfs/scrub/common.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 24, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_setup_ag_iallocbt(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call = tail call i32 @xchk_setup_ag_btree(ptr noundef %sc, i1 noundef zeroext %tobool) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_ag_btree(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_inobt(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xchk_iallocbt(ptr noundef %sc, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_iallocbt(ptr noundef %sc, i32 noundef %which) unnamed_addr #2 align 64 {
entry:
  %iabt = alloca %struct.xchk_iallocbt, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iabt) #7
  %0 = call ptr @memcpy(ptr %iabt, ptr @__const.xchk_iallocbt.iabt, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %which)
  %cmp = icmp eq i32 %which, 4
  %ino_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 6
  %fino_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 7
  %cond.in = select i1 %cmp, ptr %ino_cur, ptr %fino_cur
  %1 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %cond = load ptr, ptr %cond.in, align 4
  %call = call i32 @xchk_btree(ptr noundef %sc, ptr noundef %cond, ptr noundef nonnull @xchk_iallocbt_rec, ptr noundef nonnull @XFS_RMAP_OINFO_INOBT, ptr noundef nonnull %iabt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @xchk_iallocbt_xref_rmap_btreeblks(ptr noundef %sc)
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %iabt to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %iabt, align 8
  call fastcc void @xchk_iallocbt_xref_rmap_inodes(ptr noundef %sc, i64 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iabt) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_finobt(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xchk_iallocbt(ptr noundef %sc, i32 noundef 5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xchk_xref_is_not_inode_chunk(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %has_inodes.i7 = alloca i8, align 1
  %error.i8 = alloca i32, align 4
  %has_inodes.i = alloca i8, align 1
  %error.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ino_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %has_inodes.i) #7
  %0 = ptrtoint ptr %has_inodes.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %has_inodes.i, align 1, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #7
  %1 = ptrtoint ptr %ino_cur to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ino_cur, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.xchk_xref_inode_check.exit_crit_edge, label %lor.lhs.false.i

entry.xchk_xref_inode_check.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_xref_inode_check.exit

lor.lhs.false.i:                                  ; preds = %entry
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sm_flags.i.i, align 4
  %and.i.i = and i32 %6, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %lor.lhs.false.i.xchk_xref_inode_check.exit_crit_edge

lor.lhs.false.i.xchk_xref_inode_check.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_xref_inode_check.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call1.i = call i32 @xfs_ialloc_has_inodes_at_extent(ptr noundef nonnull %2, i32 noundef %agbno, i32 noundef %len, ptr noundef nonnull %has_inodes.i) #7
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call1.i, ptr %error.i, align 4
  %call2.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i, ptr noundef %ino_cur) #7
  br i1 %call2.i, label %if.end4.i, label %if.end.i.xchk_xref_inode_check.exit_crit_edge

if.end.i.xchk_xref_inode_check.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_xref_inode_check.exit

if.end4.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %has_inodes.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_inodes.i, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 0
  br i1 %cmp.not.i, label %if.end4.i.xchk_xref_inode_check.exit_crit_edge, label %if.then9.i

if.end4.i.xchk_xref_inode_check.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_xref_inode_check.exit

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %ino_cur to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ino_cur, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %11, i32 noundef 0) #7
  br label %xchk_xref_inode_check.exit

xchk_xref_inode_check.exit:                       ; preds = %if.then9.i, %if.end4.i.xchk_xref_inode_check.exit_crit_edge, %if.end.i.xchk_xref_inode_check.exit_crit_edge, %lor.lhs.false.i.xchk_xref_inode_check.exit_crit_edge, %entry.xchk_xref_inode_check.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %has_inodes.i) #7
  %fino_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %has_inodes.i7) #7
  %12 = ptrtoint ptr %has_inodes.i7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %has_inodes.i7, align 1, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i8) #7
  %13 = ptrtoint ptr %fino_cur to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fino_cur, align 4
  %tobool.not.i9 = icmp eq ptr %14, null
  br i1 %tobool.not.i9, label %xchk_xref_inode_check.exit.xchk_xref_inode_check.exit21_crit_edge, label %lor.lhs.false.i14

xchk_xref_inode_check.exit.xchk_xref_inode_check.exit21_crit_edge: ; preds = %xchk_xref_inode_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_xref_inode_check.exit21

lor.lhs.false.i14:                                ; preds = %xchk_xref_inode_check.exit
  %sm.i10 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %15 = ptrtoint ptr %sm.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sm.i10, align 4
  %sm_flags.i.i11 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %sm_flags.i.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sm_flags.i.i11, align 4
  %and.i.i12 = and i32 %18, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i12)
  %tobool.i.not.i13 = icmp eq i32 %and.i.i12, 0
  br i1 %tobool.i.not.i13, label %if.end.i17, label %lor.lhs.false.i14.xchk_xref_inode_check.exit21_crit_edge

lor.lhs.false.i14.xchk_xref_inode_check.exit21_crit_edge: ; preds = %lor.lhs.false.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_xref_inode_check.exit21

if.end.i17:                                       ; preds = %lor.lhs.false.i14
  %call1.i15 = call i32 @xfs_ialloc_has_inodes_at_extent(ptr noundef nonnull %14, i32 noundef %agbno, i32 noundef %len, ptr noundef nonnull %has_inodes.i7) #7
  %19 = ptrtoint ptr %error.i8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call1.i15, ptr %error.i8, align 4
  %call2.i16 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i8, ptr noundef %fino_cur) #7
  br i1 %call2.i16, label %if.end4.i19, label %if.end.i17.xchk_xref_inode_check.exit21_crit_edge

if.end.i17.xchk_xref_inode_check.exit21_crit_edge: ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_xref_inode_check.exit21

if.end4.i19:                                      ; preds = %if.end.i17
  %20 = ptrtoint ptr %has_inodes.i7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_inodes.i7, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.not.i18 = icmp eq i8 %21, 0
  br i1 %cmp.not.i18, label %if.end4.i19.xchk_xref_inode_check.exit21_crit_edge, label %if.then9.i20

if.end4.i19.xchk_xref_inode_check.exit21_crit_edge: ; preds = %if.end4.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_xref_inode_check.exit21

if.then9.i20:                                     ; preds = %if.end4.i19
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %fino_cur to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fino_cur, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %23, i32 noundef 0) #7
  br label %xchk_xref_inode_check.exit21

xchk_xref_inode_check.exit21:                     ; preds = %if.then9.i20, %if.end4.i19.xchk_xref_inode_check.exit21_crit_edge, %if.end.i17.xchk_xref_inode_check.exit21_crit_edge, %lor.lhs.false.i14.xchk_xref_inode_check.exit21_crit_edge, %xchk_xref_inode_check.exit.xchk_xref_inode_check.exit21_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %has_inodes.i7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xchk_xref_is_inode_chunk(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %has_inodes.i = alloca i8, align 1
  %error.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ino_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %has_inodes.i) #7
  %0 = ptrtoint ptr %has_inodes.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %has_inodes.i, align 1, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #7
  %1 = ptrtoint ptr %ino_cur to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ino_cur, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.xchk_xref_inode_check.exit_crit_edge, label %lor.lhs.false.i

entry.xchk_xref_inode_check.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_xref_inode_check.exit

lor.lhs.false.i:                                  ; preds = %entry
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm.i, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sm_flags.i.i, align 4
  %and.i.i = and i32 %6, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %lor.lhs.false.i.xchk_xref_inode_check.exit_crit_edge

lor.lhs.false.i.xchk_xref_inode_check.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_xref_inode_check.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call1.i = call i32 @xfs_ialloc_has_inodes_at_extent(ptr noundef nonnull %2, i32 noundef %agbno, i32 noundef %len, ptr noundef nonnull %has_inodes.i) #7
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call1.i, ptr %error.i, align 4
  %call2.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i, ptr noundef %ino_cur) #7
  br i1 %call2.i, label %if.end4.i, label %if.end.i.xchk_xref_inode_check.exit_crit_edge

if.end.i.xchk_xref_inode_check.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_xref_inode_check.exit

if.end4.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %has_inodes.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_inodes.i, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 1
  br i1 %cmp.not.i, label %if.end4.i.xchk_xref_inode_check.exit_crit_edge, label %if.then9.i

if.end4.i.xchk_xref_inode_check.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_xref_inode_check.exit

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %ino_cur to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ino_cur, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %11, i32 noundef 0) #7
  br label %xchk_xref_inode_check.exit

xchk_xref_inode_check.exit:                       ; preds = %if.then9.i, %if.end4.i.xchk_xref_inode_check.exit_crit_edge, %if.end.i.xchk_xref_inode_check.exit_crit_edge, %lor.lhs.false.i.xchk_xref_inode_check.exit_crit_edge, %entry.xchk_xref_inode_check.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %has_inodes.i) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_btree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_iallocbt_rec(ptr nocapture noundef readonly %bs, ptr noundef %rec) #2 align 64 {
entry:
  %irec = alloca %struct.xfs_inobt_rec_incore, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_mp, align 4
  %private = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 4
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %irec) #7
  %6 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 1
  %7 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 2
  %8 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 3
  %9 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 4
  %10 = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 10
  %11 = call ptr @memset(ptr %irec, i32 255, i32 16)
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pag_agno, align 4
  call void @xfs_inobt_btrec_to_irec(ptr noundef %3, ptr noundef %rec, ptr noundef nonnull %irec) #7
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %17)
  %cmp = icmp ugt i8 %17, 64
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %19)
  %cmp4 = icmp ugt i8 %19, 64
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %20 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bs, align 8
  %22 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %21, ptr noundef %23, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %8, align 1
  %conv8 = zext i8 %25 to i32
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %7, align 2
  %conv10 = zext i8 %27 to i32
  %sub = add nuw nsw i32 %conv8, 64
  %add = sub nsw i32 %sub, %conv10
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %9, align 8
  %call.i.i = call i32 @__sw_hweight64(i64 noundef %29) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %call.i.i)
  %cmp11.not = icmp eq i32 %add, %call.i.i
  br i1 %cmp11.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bs, align 8
  %32 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %31, ptr noundef %33, i32 noundef 0) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %34 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irec, align 8
  %call17 = call zeroext i1 @xfs_verify_agino(ptr noundef %3, i32 noundef %15, i32 noundef %35) #7
  br i1 %call17, label %lor.lhs.false18, label %if.end16.if.then22_crit_edge

if.end16.if.then22_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

lor.lhs.false18:                                  ; preds = %if.end16
  %sub20 = add i32 %35, 63
  %call21 = call zeroext i1 @xfs_verify_agino(ptr noundef %3, i32 noundef %15, i32 noundef %sub20) #7
  br i1 %call21, label %if.end25, label %lor.lhs.false18.if.then22_crit_edge

lor.lhs.false18.if.then22_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false18.if.then22_crit_edge, %if.end16.if.then22_crit_edge
  %36 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bs, align 8
  %38 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %37, ptr noundef %39, i32 noundef 0) #7
  br label %out

if.end25:                                         ; preds = %lor.lhs.false18
  call fastcc void @xchk_iallocbt_rec_alignment(ptr noundef %bs, ptr noundef nonnull %irec)
  %40 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bs, align 8
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sm_flags, align 4
  %and = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end28, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end28:                                         ; preds = %if.end25
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %7, align 2
  %conv30 = zext i8 %47 to i64
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %5, align 8
  %add31 = add i64 %49, %conv30
  store i64 %add31, ptr %5, align 8
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.i.not = icmp eq i16 %51, 0
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 17
  %52 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sb_inodesize, align 8
  %conv34 = zext i16 %53 to i32
  br i1 %tobool.i.not, label %if.then33, label %if.end52

if.then33:                                        ; preds = %if.end28
  %mul = shl nuw nsw i32 %conv34, 6
  %conv35 = zext i32 %mul to i64
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 31
  %54 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %m_blockmask, align 8
  %conv36 = zext i32 %55 to i64
  %add37 = add nuw nsw i64 %conv35, %conv36
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 20
  %56 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %57 to i64
  %shr = lshr i64 %add37, %sh_prom
  %conv40 = trunc i64 %shr to i32
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %59)
  %cmp43.not = icmp eq i8 %59, 64
  br i1 %cmp43.not, label %if.then33.if.end48_crit_edge, label %if.then45

if.then33.if.end48_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then45:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bs, align 8
  %62 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %61, ptr noundef %63, i32 noundef 0) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.then33.if.end48_crit_edge
  call fastcc void @xchk_iallocbt_chunk(ptr noundef %bs, ptr noundef nonnull %irec, i32 noundef %35, i32 noundef %conv40)
  br label %check_clusters

if.end52:                                         ; preds = %if.end28
  %mul57 = shl nuw nsw i32 %conv34, 2
  %conv58 = zext i32 %mul57 to i64
  %m_blockmask59 = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 31
  %64 = ptrtoint ptr %m_blockmask59 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %m_blockmask59, align 8
  %conv60 = zext i32 %65 to i64
  %add61 = add nuw nsw i64 %conv58, %conv60
  %sb_blocklog63 = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 20
  %66 = ptrtoint ptr %sb_blocklog63 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %sb_blocklog63, align 8
  %sh_prom65 = zext i8 %67 to i64
  %shr66 = lshr i64 %add61, %sh_prom65
  %conv67 = trunc i64 %shr66 to i32
  %call68 = call i64 @xfs_inobt_irec_to_allocmask(ptr noundef nonnull %irec) #7
  %neg = xor i64 %call68, -1
  %68 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %9, align 8
  %and70 = and i64 %69, %neg
  call void @__sanitizer_cov_trace_cmp8(i64 %and70, i64 %neg)
  %cmp71.not = icmp eq i64 %and70, %neg
  br i1 %cmp71.not, label %lor.lhs.false73, label %if.end52.if.then80_crit_edge

if.end52.if.then80_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then80

lor.lhs.false73:                                  ; preds = %if.end52
  %70 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %8, align 1
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %7, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %73)
  %cmp78 = icmp ugt i8 %71, %73
  br i1 %cmp78, label %lor.lhs.false73.if.then80_crit_edge, label %lor.lhs.false73.for.body.preheader_crit_edge

lor.lhs.false73.for.body.preheader_crit_edge:     ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

lor.lhs.false73.if.then80_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then80

if.then80:                                        ; preds = %lor.lhs.false73.if.then80_crit_edge, %if.end52.if.then80_crit_edge
  %74 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bs, align 8
  %76 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %75, ptr noundef %77, i32 noundef 0) #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then80, %lor.lhs.false73.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end94.for.body_crit_edge, %for.body.preheader
  %holemask.0157 = phi i16 [ %79, %if.end94.for.body_crit_edge ], [ %51, %for.body.preheader ]
  %i.0156 = phi i32 [ %inc, %if.end94.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %holecount.0155 = phi i32 [ %holecount.1, %if.end94.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %agino.0153 = phi i32 [ %add98, %if.end94.for.body_crit_edge ], [ %35, %for.body.preheader ]
  %78 = and i16 %holemask.0157, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool88.not = icmp eq i16 %78, 0
  br i1 %tobool88.not, label %if.else, label %if.then89

if.then89:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add90 = add i32 %holecount.0155, 4
  br label %if.end94

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @xchk_iallocbt_chunk(ptr noundef %bs, ptr noundef nonnull %irec, i32 noundef %agino.0153, i32 noundef %conv67)
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.then89
  %holecount.1 = phi i32 [ %add90, %if.then89 ], [ %holecount.0155, %if.else ]
  %79 = lshr i16 %holemask.0157, 1
  %add98 = add i32 %agino.0153, 4
  %inc = add nuw nsw i32 %i.0156, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end94.for.body_crit_edge

if.end94.for.body_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end94
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %holecount.1)
  %cmp99 = icmp ugt i32 %holecount.1, 64
  br i1 %cmp99, label %for.end.if.then107_crit_edge, label %lor.lhs.false101

for.end.if.then107_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then107

lor.lhs.false101:                                 ; preds = %for.end
  %80 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %7, align 2
  %conv103 = zext i8 %81 to i32
  %add104 = add nuw nsw i32 %holecount.1, %conv103
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add104)
  %cmp105.not = icmp eq i32 %add104, 64
  br i1 %cmp105.not, label %lor.lhs.false101.check_clusters_crit_edge, label %lor.lhs.false101.if.then107_crit_edge

lor.lhs.false101.if.then107_crit_edge:            ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then107

lor.lhs.false101.check_clusters_crit_edge:        ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_clusters

if.then107:                                       ; preds = %lor.lhs.false101.if.then107_crit_edge, %for.end.if.then107_crit_edge
  %82 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bs, align 8
  %84 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %83, ptr noundef %85, i32 noundef 0) #7
  br label %check_clusters

check_clusters:                                   ; preds = %if.then107, %lor.lhs.false101.check_clusters_crit_edge, %if.end48
  %call111 = call fastcc i32 @xchk_iallocbt_check_clusters(ptr noundef %bs, ptr noundef nonnull %irec)
  br label %out

out:                                              ; preds = %check_clusters, %if.end25.out_crit_edge, %if.then22
  %error.0 = phi i32 [ 0, %if.end25.out_crit_edge ], [ %call111, %check_clusters ], [ 0, %if.then22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %irec) #7
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_iallocbt_xref_rmap_btreeblks(ptr noundef %sc) unnamed_addr #2 align 64 {
entry:
  %blocks = alloca i64, align 8
  %inobt_blocks = alloca i32, align 4
  %finobt_blocks = alloca i32, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocks) #7
  %0 = ptrtoint ptr %blocks to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %blocks, align 8, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inobt_blocks) #7
  %1 = ptrtoint ptr %inobt_blocks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %inobt_blocks, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %finobt_blocks) #7
  %2 = ptrtoint ptr %finobt_blocks to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %finobt_blocks, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %ino_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 6
  %3 = ptrtoint ptr %ino_cur to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ino_cur, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rmap_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 8
  %5 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmap_cur, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %8, i32 0, i32 61
  %9 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false3.lor.lhs.false6_crit_edge, label %land.lhs.true

lor.lhs.false3.lor.lhs.false6_crit_edge:          ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false6

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %fino_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 7
  %11 = ptrtoint ptr %fino_cur to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fino_cur, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false6_crit_edge

land.lhs.true.lor.lhs.false6_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false6:                                   ; preds = %land.lhs.true.lor.lhs.false6_crit_edge, %lor.lhs.false3.lor.lhs.false6_crit_edge
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %13 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sm, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sm_flags.i, align 4
  %and.i1 = and i32 %16, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1)
  %tobool.i2.not = icmp eq i32 %and.i1, 0
  br i1 %tobool.i2.not, label %if.end, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %call10 = call i32 @xfs_btree_count_blocks(ptr noundef nonnull %4, ptr noundef nonnull %inobt_blocks) #7
  %17 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call10, ptr %error, align 4
  %call11 = call zeroext i1 @xchk_process_error(ptr noundef %sc, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %error) #7
  br i1 %call11, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %fino_cur15 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 7
  %18 = ptrtoint ptr %fino_cur15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fino_cur15, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %if.end13.if.end24_crit_edge, label %if.then17

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then17:                                        ; preds = %if.end13
  %call20 = call i32 @xfs_btree_count_blocks(ptr noundef nonnull %19, ptr noundef nonnull %finobt_blocks) #7
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call20, ptr %error, align 4
  %call21 = call zeroext i1 @xchk_process_error(ptr noundef %sc, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %error) #7
  br i1 %call21, label %if.then17.if.end24_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end24:                                         ; preds = %if.then17.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  %21 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmap_cur, align 4
  %call27 = call i32 @xchk_count_rmap_ownedby_ag(ptr noundef %sc, ptr noundef %22, ptr noundef nonnull @XFS_RMAP_OINFO_INOBT, ptr noundef nonnull %blocks) #7
  %23 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call27, ptr %error, align 4
  %call30 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %rmap_cur) #7
  br i1 %call30, label %if.end32, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %24 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %blocks, align 8
  %26 = ptrtoint ptr %inobt_blocks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %inobt_blocks, align 4
  %28 = ptrtoint ptr %finobt_blocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %finobt_blocks, align 4
  %add = add i32 %29, %27
  %conv = zext i32 %add to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %conv)
  %cmp.not = icmp eq i64 %25, %conv
  br i1 %cmp.not, label %if.end32.cleanup_crit_edge, label %if.then34

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %ino_cur to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ino_cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %sc, ptr noundef %31, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end32.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %finobt_blocks) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inobt_blocks) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocks) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_iallocbt_xref_rmap_inodes(ptr noundef %sc, i64 noundef %inodes) unnamed_addr #2 align 64 {
entry:
  %blocks = alloca i64, align 8
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocks) #7
  %0 = ptrtoint ptr %blocks to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %blocks, align 8, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %rmap_cur = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 8
  %1 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmap_cur, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sm_flags.i, align 4
  %and.i = and i32 %6, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @xchk_count_rmap_ownedby_ag(ptr noundef %sc, ptr noundef nonnull %2, ptr noundef nonnull @XFS_RMAP_OINFO_INODES, ptr noundef nonnull %blocks) #7
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3, ptr %error, align 4
  %call6 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef %rmap_cur) #7
  br i1 %call6, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc, align 4
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sb_inodesize, align 8
  %conv = zext i16 %11 to i64
  %mul = mul i64 %conv, %inodes
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %9, i32 0, i32 31
  %12 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_blockmask, align 8
  %conv10 = zext i32 %13 to i64
  %add = add i64 %mul, %conv10
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %9, i32 0, i32 20
  %14 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %15 to i64
  %shr = lshr i64 %add, %sh_prom
  %16 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %shr)
  %cmp.not = icmp eq i64 %17, %shr
  br i1 %cmp.not, label %if.end8.cleanup_crit_edge, label %if.then15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmap_cur, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %19, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocks) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inobt_btrec_to_irec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_btree_set_corrupt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_agino(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_iallocbt_rec_alignment(ptr nocapture noundef readonly %bs, ptr nocapture noundef readonly %irec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bs, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 4
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 8
  %cur = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur, align 4
  %bc_btnum = getelementptr inbounds %struct.xfs_btree_cur, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %bc_btnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bc_btnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp = icmp eq i32 %9, 5
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %cluster_align_inodes = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 64, i32 6
  %10 = ptrtoint ptr %cluster_align_inodes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cluster_align_inodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %11)
  %cmp2 = icmp ugt i32 %11, 64
  %phi.bo = add i32 %11, -1
  %cond = select i1 %cmp2, i32 63, i32 %phi.bo
  %12 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irec, align 8
  %and = and i32 %cond, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_btree_set_corrupt(ptr noundef %1, ptr noundef %7, i32 noundef 0) #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  %next_startino = getelementptr inbounds %struct.xchk_iallocbt, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %next_startino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %next_startino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp7.not = icmp eq i32 %15, -1
  %16 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irec, align 8
  br i1 %cmp7.not, label %if.end23, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp11.not = icmp eq i32 %17, %15
  br i1 %cmp11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_btree_set_corrupt(ptr noundef %1, ptr noundef %7, i32 noundef 0) #7
  br label %cleanup

if.end15:                                         ; preds = %if.then8
  %add = add i32 %15, 64
  %18 = ptrtoint ptr %next_startino to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %next_startino, align 8
  %next_cluster_ino = getelementptr inbounds %struct.xchk_iallocbt, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %next_cluster_ino to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %next_cluster_ino, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %20)
  %cmp18.not = icmp ult i32 %add, %20
  br i1 %cmp18.not, label %if.end15.cleanup_crit_edge, label %if.then19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %next_startino to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %next_startino, align 8
  %22 = ptrtoint ptr %next_cluster_ino to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %next_cluster_ino, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end6
  %cluster_align_inodes25 = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 64, i32 6
  %23 = ptrtoint ptr %cluster_align_inodes25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cluster_align_inodes25, align 4
  %sub26 = add i32 %24, -1
  %and27 = and i32 %sub26, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end32, label %if.then29

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_btree_set_corrupt(ptr noundef %1, ptr noundef %7, i32 noundef 0) #7
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  %inodes_per_cluster = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 64, i32 3
  %25 = ptrtoint ptr %inodes_per_cluster to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %inodes_per_cluster, align 8
  %sub34 = add i32 %26, -1
  %and35 = and i32 %sub34, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_btree_set_corrupt(ptr noundef %1, ptr noundef %7, i32 noundef 0) #7
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %26)
  %cmp42 = icmp ult i32 %26, 65
  br i1 %cmp42, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %add46 = add i32 %17, 64
  %27 = ptrtoint ptr %next_startino to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add46, ptr %next_startino, align 8
  %28 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irec, align 8
  %30 = ptrtoint ptr %inodes_per_cluster to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %inodes_per_cluster, align 8
  %add50 = add i32 %31, %29
  %next_cluster_ino51 = getelementptr inbounds %struct.xchk_iallocbt, ptr %5, i32 0, i32 2
  %32 = ptrtoint ptr %next_cluster_ino51 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add50, ptr %next_cluster_ino51, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end40.cleanup_crit_edge, %if.then37, %if.then29, %if.then19, %if.end15.cleanup_crit_edge, %if.then12, %if.then3, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_iallocbt_chunk(ptr nocapture noundef readonly %bs, ptr nocapture noundef readonly %irec, i32 noundef %agino, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_mp, align 4
  %4 = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pag_agno, align 4
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 23
  %9 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sb_inopblog, align 1
  %conv = zext i8 %10 to i32
  %shr = lshr i32 %agino, %conv
  %add = add i32 %shr, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shr)
  %cmp.not = icmp ugt i32 %add, %shr
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i1 @xfs_verify_agbno(ptr noundef %3, i32 noundef %8, i32 noundef %shr) #7
  br i1 %call, label %lor.lhs.false3, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %sub = add i32 %add, -1
  %call5 = tail call zeroext i1 @xfs_verify_agbno(ptr noundef %3, i32 noundef %8, i32 noundef %sub) #7
  br i1 %call5, label %lor.lhs.false3.if.end_crit_edge, label %lor.lhs.false3.if.then_crit_edge

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false3.if.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %11 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bs, align 8
  %13 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur, align 4
  tail call void @xchk_btree_set_corrupt(ptr noundef %12, ptr noundef %14, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false3.if.end_crit_edge
  %15 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bs, align 8
  tail call fastcc void @xchk_iallocbt_chunk_xref(ptr noundef %16, ptr noundef %irec, i32 noundef %agino, i32 noundef %shr, i32 noundef %len)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_inobt_irec_to_allocmask(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_iallocbt_check_clusters(ptr nocapture noundef readonly %bs, ptr nocapture noundef readonly %irec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cluster_base.05 = phi i32 [ 0, %entry ], [ %add, %for.inc.for.body_crit_edge ]
  %call = tail call fastcc i32 @xchk_iallocbt_check_cluster(ptr noundef %bs, ptr noundef %irec, i32 noundef %cluster_base.05)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %0 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bs, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %inodes_per_cluster = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 64, i32 3
  %4 = ptrtoint ptr %inodes_per_cluster to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inodes_per_cluster, align 16
  %add = add i32 %5, %cluster_base.05
  %cmp = icmp ult i32 %add, 64
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_agbno(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_iallocbt_chunk_xref(ptr noundef %sc, ptr nocapture noundef readonly %irec, i32 noundef %agino, i32 noundef %agbno, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %has_irec.i = alloca i8, align 1
  %error.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sm_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  tail call void @xchk_xref_is_used_space(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %has_irec.i) #7
  %4 = ptrtoint ptr %has_irec.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %has_irec.i, align 1, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #7
  %5 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sm, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp.i = icmp eq i32 %8, 8
  %ino_cur.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 6
  %fino_cur.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 7
  %pcur.0.i = select i1 %cmp.i, ptr %ino_cur.i, ptr %fino_cur.i
  %9 = ptrtoint ptr %pcur.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcur.0.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.xchk_iallocbt_chunk_xref_other.exit_crit_edge, label %if.end3.i

if.end.xchk_iallocbt_chunk_xref_other.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_iallocbt_chunk_xref_other.exit

if.end3.i:                                        ; preds = %if.end
  %call.i = call i32 @xfs_ialloc_has_inode_record(ptr noundef nonnull %10, i32 noundef %agino, i32 noundef %agino, ptr noundef nonnull %has_irec.i) #7
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %error.i, align 4
  %call4.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i, ptr noundef %pcur.0.i) #7
  br i1 %call4.i, label %if.end6.i, label %if.end3.i.xchk_iallocbt_chunk_xref_other.exit_crit_edge

if.end3.i.xchk_iallocbt_chunk_xref_other.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_iallocbt_chunk_xref_other.exit

if.end6.i:                                        ; preds = %if.end3.i
  %ir_freecount.i = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 3
  %12 = ptrtoint ptr %ir_freecount.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ir_freecount.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp7.not.i = icmp eq i8 %13, 0
  %14 = ptrtoint ptr %has_irec.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_irec.i, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not.i = icmp eq i8 %15, 0
  br i1 %cmp7.not.i, label %land.lhs.true14.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  br i1 %tobool15.not.i, label %land.lhs.true.i.if.then17.i_crit_edge, label %land.lhs.true.i.xchk_iallocbt_chunk_xref_other.exit_crit_edge

land.lhs.true.i.xchk_iallocbt_chunk_xref_other.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_iallocbt_chunk_xref_other.exit

land.lhs.true.i.if.then17.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

land.lhs.true14.i:                                ; preds = %if.end6.i
  br i1 %tobool15.not.i, label %land.lhs.true14.i.xchk_iallocbt_chunk_xref_other.exit_crit_edge, label %land.lhs.true14.i.if.then17.i_crit_edge

land.lhs.true14.i.if.then17.i_crit_edge:          ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

land.lhs.true14.i.xchk_iallocbt_chunk_xref_other.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xchk_iallocbt_chunk_xref_other.exit

if.then17.i:                                      ; preds = %land.lhs.true14.i.if.then17.i_crit_edge, %land.lhs.true.i.if.then17.i_crit_edge
  %16 = ptrtoint ptr %pcur.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcur.0.i, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %17, i32 noundef 0) #7
  br label %xchk_iallocbt_chunk_xref_other.exit

xchk_iallocbt_chunk_xref_other.exit:              ; preds = %if.then17.i, %land.lhs.true14.i.xchk_iallocbt_chunk_xref_other.exit_crit_edge, %land.lhs.true.i.xchk_iallocbt_chunk_xref_other.exit_crit_edge, %if.end3.i.xchk_iallocbt_chunk_xref_other.exit_crit_edge, %if.end.xchk_iallocbt_chunk_xref_other.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %has_irec.i) #7
  call void @xchk_xref_is_owned_by(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len, ptr noundef nonnull @XFS_RMAP_OINFO_INODES) #7
  call void @xchk_xref_is_not_shared(ptr noundef %sc, i32 noundef %agbno, i32 noundef %len) #7
  br label %return

return:                                           ; preds = %xchk_iallocbt_chunk_xref_other.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_used_space(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_owned_by(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_not_shared(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ialloc_has_inode_record(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_should_check_xref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_btree_xref_set_corrupt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_iallocbt_check_cluster(ptr nocapture noundef readonly %bs, ptr nocapture noundef readonly %irec, i32 noundef %cluster_base) unnamed_addr #2 align 64 {
entry:
  %imap = alloca %struct.xfs_imap, align 8
  %cluster_bp = alloca ptr, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %imap) #7
  %0 = getelementptr inbounds i8, ptr %imap, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %cur = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 4
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc_mp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cluster_bp) #7
  %6 = ptrtoint ptr %cluster_bp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %cluster_bp, align 4, !annotation !23
  %7 = getelementptr inbounds %struct.xfs_btree_cur, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pag_agno, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %inodes_per_cluster = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 64, i32 3
  %12 = ptrtoint ptr %inodes_per_cluster to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inodes_per_cluster, align 16
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 64)
  %15 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irec, align 8
  %add = add i32 %16, %cluster_base
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 23
  %17 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sb_inopblog, align 1
  %conv = zext i8 %18 to i32
  %shr = lshr i32 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp2197.not = icmp eq i32 %14, 0
  br i1 %cmp2197.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cluster_mask.0199 = phi i16 [ %conv6, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %cluster_index.0198 = phi i32 [ %add7, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add4 = add i32 %cluster_index.0198, %cluster_base
  %div193 = lshr i32 %add4, 2
  %sh_prom = zext i32 %div193 to i64
  %shl = shl nuw i64 1, %sh_prom
  %19 = trunc i64 %shl to i16
  %conv6 = or i16 %cluster_mask.0199, %19
  %add7 = add nuw nsw i32 %cluster_index.0198, 4
  %cmp2 = icmp ult i32 %add7, %14
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cluster_mask.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %conv6, %for.body.for.end_crit_edge ]
  %ir_holemask8 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 1
  %20 = ptrtoint ptr %ir_holemask8 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ir_holemask8, align 4
  %conv12 = zext i32 %11 to i64
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 11
  %22 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sb_agblocks, align 4
  %conv14 = zext i32 %23 to i64
  %mul = mul nuw i64 %conv14, %conv12
  %conv15 = zext i32 %shr to i64
  %add16 = add nuw i64 %mul, %conv15
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 28
  %24 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom18 = zext i8 %25 to i64
  %shl19 = shl i64 %add16, %sh_prom18
  %26 = ptrtoint ptr %imap to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %shl19, ptr %imap, align 8
  %blocks_per_cluster = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 64, i32 4
  %27 = ptrtoint ptr %blocks_per_cluster to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blocks_per_cluster, align 4
  %conv22 = zext i8 %25 to i32
  %shl23 = shl i32 %28, %conv22
  %conv24 = trunc i32 %shl23 to i16
  %im_len = getelementptr inbounds %struct.xfs_imap, ptr %imap, i32 0, i32 1
  %29 = ptrtoint ptr %im_len to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv24, ptr %im_len, align 8
  %sh_prom29 = zext i8 %18 to i64
  %notmask = shl nsw i64 -1, %sh_prom29
  %30 = trunc i64 %notmask to i32
  %conv31 = xor i32 %30, -1
  %and32 = and i32 %16, %conv31
  %sb_inodelog = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 22
  %31 = ptrtoint ptr %sb_inodelog to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sb_inodelog, align 2
  %conv34 = zext i8 %32 to i32
  %shl35 = shl i32 %and32, %conv34
  %conv36 = trunc i32 %shl35 to i16
  %im_boffset = getelementptr inbounds %struct.xfs_imap, ptr %imap, i32 0, i32 2
  %33 = ptrtoint ptr %im_boffset to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv36, ptr %im_boffset, align 2
  %conv38 = and i32 %shl35, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv38)
  %cmp39.not = icmp eq i32 %conv38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cluster_base)
  %cmp41.not = icmp eq i32 %cluster_base, 0
  %or.cond = or i1 %cmp41.not, %cmp39.not
  br i1 %or.cond, label %if.end, label %cond.false51

cond.false51:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 251) #7
  %34 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bs, align 8
  %36 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur, align 4
  tail call void @xchk_btree_set_corrupt(ptr noundef %35, ptr noundef %37, i32 noundef 0) #7
  br label %cleanup125

if.end:                                           ; preds = %for.end
  %and191 = and i16 %21, %cluster_mask.0.lcssa
  %and66 = and i32 %add, %conv31
  tail call fastcc void @trace_xchk_iallocbt_check_cluster(ptr noundef %5, i32 noundef %11, i32 noundef %16, i64 noundef %shl19, i16 noundef zeroext %conv24, i32 noundef %cluster_base, i32 noundef %14, i16 noundef zeroext %cluster_mask.0.lcssa, i16 noundef zeroext %and191, i32 noundef %and66)
  call void @__sanitizer_cov_trace_cmp2(i16 %and191, i16 %cluster_mask.0.lcssa)
  %cmp69.not = icmp eq i16 %and191, %cluster_mask.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and191)
  %cmp73.not = icmp eq i16 %and191, 0
  %or.cond194 = or i1 %cmp69.not, %cmp73.not
  %38 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bs, align 8
  br i1 %or.cond194, label %if.end78, label %if.then75

if.then75:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur, align 4
  tail call void @xchk_btree_set_corrupt(ptr noundef %39, ptr noundef %41, i32 noundef 0) #7
  br label %cleanup125

if.end78:                                         ; preds = %if.end
  %42 = ptrtoint ptr %blocks_per_cluster to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %blocks_per_cluster, align 4
  br i1 %cmp73.not, label %if.end84, label %if.then80

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_xref_is_not_owned_by(ptr noundef %39, i32 noundef %shr, i32 noundef %43, ptr noundef nonnull @XFS_RMAP_OINFO_INODES) #7
  br label %cleanup125

if.end84:                                         ; preds = %if.end78
  tail call void @xchk_xref_is_owned_by(ptr noundef %39, i32 noundef %shr, i32 noundef %43, ptr noundef nonnull @XFS_RMAP_OINFO_INODES) #7
  %44 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %call = call i32 @xfs_imap_to_bp(ptr noundef %5, ptr noundef %47, ptr noundef nonnull %imap, ptr noundef nonnull %cluster_bp) #7
  %48 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call, ptr %error, align 4
  %49 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bs, align 8
  %51 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur, align 4
  %call91 = call zeroext i1 @xchk_btree_xref_process_error(ptr noundef %50, ptr noundef %52, i32 noundef 0, ptr noundef nonnull %error) #7
  br i1 %call91, label %for.cond94.preheader, label %if.then92

for.cond94.preheader:                             ; preds = %if.end84
  br i1 %cmp2197.not, label %for.cond94.preheader.for.end122_crit_edge, label %for.body97.lr.ph

for.cond94.preheader.for.end122_crit_edge:        ; preds = %for.cond94.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end122

for.body97.lr.ph:                                 ; preds = %for.cond94.preheader
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 17
  br label %for.body97

if.then92:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %error, align 4
  br label %cleanup125

for.body97:                                       ; preds = %for.inc121.for.body97_crit_edge, %for.body97.lr.ph
  %cluster_index.1201 = phi i32 [ 0, %for.body97.lr.ph ], [ %inc, %for.inc121.for.body97_crit_edge ]
  %55 = ptrtoint ptr %im_boffset to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %im_boffset, align 2
  %conv99 = zext i16 %56 to i32
  %57 = ptrtoint ptr %cluster_bp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cluster_bp, align 4
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %b_length, align 8
  %shl100 = shl i32 %60, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shl100, i32 %conv99)
  %cmp101.not = icmp sgt i32 %shl100, %conv99
  br i1 %cmp101.not, label %if.end106, label %if.then103

if.then103:                                       ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bs, align 8
  %63 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %62, ptr noundef %64, i32 noundef 0) #7
  br label %for.end122

if.end106:                                        ; preds = %for.body97
  %call109 = call ptr @xfs_buf_offset(ptr noundef %58, i32 noundef %conv99) #7
  %add110 = add i32 %cluster_index.1201, %cluster_base
  %call111 = call fastcc i32 @xchk_iallocbt_check_cluster_ifree(ptr noundef %bs, ptr noundef %irec, i32 noundef %add110, ptr noundef %call109)
  %65 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call111, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %for.inc121, label %if.end106.for.end122_crit_edge

if.end106.for.end122_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end122

for.inc121:                                       ; preds = %if.end106
  %66 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %sb_inodesize, align 8
  %68 = ptrtoint ptr %im_boffset to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %im_boffset, align 2
  %add119 = add i16 %69, %67
  store i16 %add119, ptr %im_boffset, align 2
  %inc = add nuw nsw i32 %cluster_index.1201, 1
  %exitcond.not = icmp eq i32 %inc, %14
  br i1 %exitcond.not, label %for.inc121.for.end122_crit_edge, label %for.inc121.for.body97_crit_edge

for.inc121.for.body97_crit_edge:                  ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body97

for.inc121.for.end122_crit_edge:                  ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end122

for.end122:                                       ; preds = %for.inc121.for.end122_crit_edge, %if.end106.for.end122_crit_edge, %if.then103, %for.cond94.preheader.for.end122_crit_edge
  %70 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %74 = ptrtoint ptr %cluster_bp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cluster_bp, align 4
  call void @xfs_trans_brelse(ptr noundef %73, ptr noundef %75) #7
  %76 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %error, align 4
  br label %cleanup125

cleanup125:                                       ; preds = %for.end122, %if.then92, %if.then80, %if.then75, %cond.false51
  %retval.0 = phi i32 [ 0, %cond.false51 ], [ 0, %if.then75 ], [ 0, %if.then80 ], [ %77, %for.end122 ], [ %54, %if.then92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cluster_bp) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %imap) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xchk_iallocbt_check_cluster(ptr noundef %mp, i32 noundef %agno, i32 noundef %startino, i64 noundef %map_daddr, i16 noundef zeroext %map_len, i32 noundef %chunk_ino, i32 noundef %nr_inodes, i16 noundef zeroext %cluster_mask, i16 noundef zeroext %holemask, i32 noundef %cluster_ino) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_iallocbt_check_cluster, i32 0, i32 1), ptr blockaddress(@trace_xchk_iallocbt_check_cluster, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !25

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !26

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %call42 = tail call i32 @__traceiter_xchk_iallocbt_check_cluster(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %startino, i64 noundef %map_daddr, i16 noundef zeroext %map_len, i32 noundef %chunk_ino, i32 noundef %nr_inodes, i16 noundef zeroext %cluster_mask, i16 noundef zeroext %holemask, i32 noundef %cluster_ino) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  %13 = tail call i32 @llvm.read_register.i32(metadata !13) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !13) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !26

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_iallocbt_check_cluster, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xchk_iallocbt_check_cluster, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xchk_iallocbt_check_cluster.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xchk_iallocbt_check_cluster.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 600, ptr noundef nonnull @.str.3) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !30
  %31 = tail call i32 @llvm.read_register.i32(metadata !13) #7
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
declare dso_local void @xchk_xref_is_not_owned_by(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_imap_to_bp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_btree_xref_process_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_offset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_iallocbt_check_cluster_ifree(ptr nocapture noundef readonly %bs, ptr nocapture noundef readonly %irec, i32 noundef %irec_ino, ptr nocapture noundef readonly %dip) unnamed_addr #2 align 64 {
entry:
  %ino_inuse = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_mp, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ino_inuse) #7
  %4 = ptrtoint ptr %ino_inuse to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ino_inuse, align 1, !annotation !23
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 24, i32 noundef 0) #7
  %call.i.i = tail call i32 @__cond_resched() #7
  %5 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and1.i.i.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %fatal_signal_pending.exit.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

fatal_signal_pending.exit.i:                      ; preds = %entry
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 116, i32 1
  %13 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %signal.i.i.i, align 4
  %15 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end_crit_edge, label %fatal_signal_pending.exit.i.cleanup_crit_edge

fatal_signal_pending.exit.i.cleanup_crit_edge:    ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fatal_signal_pending.exit.i.if.end_crit_edge:     ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %fatal_signal_pending.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irec, align 8
  %add = add i32 %17, %irec_ino
  %18 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur, align 4
  %20 = getelementptr inbounds %struct.xfs_btree_cur, ptr %19, i32 0, i32 10
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pag_agno, align 4
  %conv = zext i32 %24 to i64
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 64, i32 15
  %25 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %26 to i64
  %shl = shl i64 %conv, %sh_prom
  %conv2 = zext i32 %add to i64
  %or = or i64 %shl, %conv2
  %ir_free = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 4
  %27 = ptrtoint ptr %ir_free to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ir_free, align 8
  %sh_prom3 = zext i32 %irec_ino to i64
  %shl4 = shl nuw i64 1, %sh_prom3
  %and = and i64 %28, %shl4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool = icmp ne i64 %and, 0
  %29 = ptrtoint ptr %dip to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %dip, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 18766, i16 %30)
  %cmp.not = icmp eq i16 %30, 18766
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end
  %di_version = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %31 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp8 = icmp ugt i8 %32, 2
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %di_ino = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 34
  %33 = ptrtoint ptr %di_ino to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %di_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %or)
  %cmp10.not = icmp eq i64 %34, %or
  br i1 %cmp10.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.if.then12_crit_edge

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %land.lhs.true.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %35 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bs, align 8
  tail call void @xchk_btree_set_corrupt(ptr noundef %36, ptr noundef %19, i32 noundef 0) #7
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %19, align 8
  %call17 = call i32 @xfs_icache_inode_is_allocated(ptr noundef %3, ptr noundef %38, i64 noundef %or, ptr noundef nonnull %ino_inuse) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call17)
  %cmp18 = icmp eq i32 %call17, -61
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end15
  %di_mode = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 1
  %39 = ptrtoint ptr %di_mode to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %di_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool23 = icmp ne i16 %40, 0
  %xor77 = xor i1 %tobool, %tobool23
  %41 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bs, align 8
  %flags = getelementptr inbounds %struct.xfs_scrub, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %and28 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp ne i32 %and28, 0
  %brmerge = select i1 %tobool29.not, i1 true, i1 %xor77
  %brmerge.not = xor i1 %brmerge, true
  %brmerge81 = select i1 %brmerge.not, i1 true, i1 %xor77
  %.mux = select i1 %brmerge, i32 0, i32 -35
  br i1 %brmerge81, label %if.then20.cleanup_crit_edge, label %if.then20.if.then48_crit_edge

if.then20.if.then48_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp34 = icmp slt i32 %call17, 0
  br i1 %cmp34, label %if.else.cleanup_crit_edge, label %if.else37

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else37:                                        ; preds = %if.else
  %45 = ptrtoint ptr %ino_inuse to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ino_inuse, align 1, !range !24
  %47 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %47)
  %extract.t76.not = icmp eq i8 %46, %47
  br i1 %extract.t76.not, label %if.else37.if.then48_crit_edge, label %if.else37.cleanup_crit_edge

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else37.if.then48_crit_edge:                    ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then48

if.then48:                                        ; preds = %if.else37.if.then48_crit_edge, %if.then20.if.then48_crit_edge
  %48 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bs, align 8
  %50 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cur, align 4
  call void @xchk_btree_set_corrupt(ptr noundef %49, ptr noundef %51, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.else37.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.then12, %fatal_signal_pending.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %.mux, %if.then20.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then12 ], [ -11, %fatal_signal_pending.exit.i.cleanup_crit_edge ], [ 0, %if.else37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ino_inuse) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xchk_iallocbt_check_cluster(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_icache_inode_is_allocated(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_count_blocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_process_error(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_count_rmap_ownedby_ag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ialloc_has_inodes_at_extent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !11}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/scrub/ialloc.c", i32 251, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../fs/xfs/scrub/trace.h", i32 557, i32 1}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!7 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/scrub/common.h", i32 24, i32 2}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{i8 0, i8 2}
!25 = !{i64 2148261838, i64 2148261843, i64 2148261856, i64 2148261900, i64 2148261934, i64 2148261955}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2156257246}
!28 = !{i64 2156257661}
!29 = !{i64 2149963931}
!30 = !{i64 2149964967}
