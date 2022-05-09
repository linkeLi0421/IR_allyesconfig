; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/agheader_repair.c_pt.bc'
source_filename = "../fs/xfs/scrub/agheader_repair.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xfs_dsb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xrep_find_ag_btree = type { i64, ptr, i32, i32, i32 }
%struct.xfs_agf = type { i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, %struct.uuid_t, i32, i32, i32, i32, [14 x i64], i64, i32, i32 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.xrep_agf_allocbt = type { ptr, i32, i32 }
%struct.xbitmap = type { %struct.list_head }
%struct.xrep_agfl = type { %struct.xbitmap, ptr, ptr }
%struct.xfs_agfl = type <{ i32, i32, %struct.uuid_t, i64, i32 }>
%struct.xbitmap_range = type { %struct.list_head, i64, i64 }
%struct.xfs_agi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], %struct.uuid_t, i32, i32, i64, i32, i32, i32, i32 }
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
%struct.xfs_alloc_rec_incore = type { i32, i32 }
%struct.xfs_rmap_irec = type { i32, i32, i64, i64, i32 }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.93, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%union.anon.93 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.94, %union.anon.95 }
%union.anon.94 = type { ptr }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }

@xfs_bnobt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_cntbt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_rmapbt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_refcountbt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_agf_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_agfl_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@XFS_RMAP_OINFO_AG = external dso_local constant %struct.xfs_owner_info, align 8
@xfs_inobt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_finobt_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_agi_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sc->sa.pag->pagf_init\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fs/xfs/scrub/agheader_repair.c\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/common.h\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"flcount <= xfs_agfl_size(sc->mp)\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"flcount <= xfs_agfl_size(mp)\00", [35 x i8] zeroinitializer }, align 32
@__tracepoint_xrep_agfl_insert = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/xfs/scrub/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_xrep_agfl_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sc->sa.pag->pagi_init\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 213, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [25 x i8] c"../fs/xfs/scrub/common.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 24, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 565, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 597, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [24 x i8] c"../fs/xfs/scrub/trace.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 691, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 108, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [34 x i8] c"../fs/xfs/scrub/agheader_repair.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 797, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xrep_superblock(ptr nocapture noundef readonly %sc) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #7
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !29
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm, align 4
  %sm_agno = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sm_agno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %7 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tp, align 4
  %call = call i32 @xfs_sb_get_secondary(ptr noundef %1, ptr noundef %8, i32 noundef %6, ptr noundef nonnull %bp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bp, align 4
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %b_length, align 8
  %shl = shl i32 %12, 9
  call void @xfs_buf_zero(ptr noundef %10, i32 noundef 0, i32 noundef %shl) #7
  %13 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_addr, align 4
  call void @xfs_sb_to_disk(ptr noundef %16, ptr noundef %1) #7
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %17 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bp, align 4
  %b_addr6 = getelementptr inbounds %struct.xfs_buf, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %b_addr6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_addr6, align 4
  %sb_features_incompat = getelementptr inbounds %struct.xfs_dsb, ptr %22, i32 0, i32 48
  %23 = ptrtoint ptr %sb_features_incompat to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sb_features_incompat, align 8
  %and = and i32 %24, -17
  store i32 %and, ptr %sb_features_incompat, align 8
  %sb_features_log_incompat = getelementptr inbounds %struct.xfs_dsb, ptr %22, i32 0, i32 49
  %25 = ptrtoint ptr %sb_features_log_incompat to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sb_features_log_incompat, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %26 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tp, align 4
  %28 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bp, align 4
  call void @xfs_trans_buf_set_type(ptr noundef %27, ptr noundef %29, i32 noundef 18) #7
  %30 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tp, align 4
  %32 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bp, align 4
  %b_length10 = getelementptr inbounds %struct.xfs_buf, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %b_length10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %b_length10, align 8
  %shl11 = shl i32 %35, 9
  %sub = add i32 %shl11, -1
  call void @xfs_trans_log_buf(ptr noundef %31, ptr noundef %33, i32 noundef 0, i32 noundef %sub) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_sb_get_secondary(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_zero(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_sb_to_disk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xrep_agf(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %fab = alloca [5 x %struct.xrep_find_ag_btree], align 8
  %old_agf = alloca %struct.xfs_agf, align 8
  %agf_bp = alloca ptr, align 4
  %agfl_bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %fab) #7
  %0 = ptrtoint ptr %fab to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -5, ptr %fab, align 8
  %buf_ops = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 1
  %1 = ptrtoint ptr %buf_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xfs_bnobt_buf_ops, ptr %buf_ops, align 8
  %maxlevels = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 2
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %m_alloc_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %m_alloc_maxlevels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_alloc_maxlevels, align 4
  %6 = ptrtoint ptr %maxlevels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %maxlevels, align 4
  %root = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 3
  %7 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %root, align 8
  %height = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 4
  %8 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %height, align 4
  %arrayinit.element = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -5, ptr %arrayinit.element, align 8
  %buf_ops2 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 1
  %10 = ptrtoint ptr %buf_ops2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xfs_cntbt_buf_ops, ptr %buf_ops2, align 8
  %maxlevels3 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 2
  %11 = ptrtoint ptr %maxlevels3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %maxlevels3, align 4
  %root6 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 3
  %12 = ptrtoint ptr %root6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %root6, align 8
  %height7 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 4
  %13 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %height7, align 4
  %arrayinit.element8 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 2
  %14 = ptrtoint ptr %arrayinit.element8 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -5, ptr %arrayinit.element8, align 8
  %buf_ops10 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 2, i32 1
  %15 = ptrtoint ptr %buf_ops10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @xfs_rmapbt_buf_ops, ptr %buf_ops10, align 8
  %maxlevels11 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 2, i32 2
  %m_rmap_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 44
  %16 = ptrtoint ptr %m_rmap_maxlevels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m_rmap_maxlevels, align 16
  %18 = ptrtoint ptr %maxlevels11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %maxlevels11, align 4
  %root13 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 2, i32 3
  %19 = ptrtoint ptr %root13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %root13, align 8
  %height14 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 2, i32 4
  %20 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %height14, align 4
  %arrayinit.element15 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 3
  %21 = ptrtoint ptr %arrayinit.element15 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -8, ptr %arrayinit.element15, align 8
  %buf_ops17 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 3, i32 1
  %22 = ptrtoint ptr %buf_ops17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @xfs_refcountbt_buf_ops, ptr %buf_ops17, align 8
  %maxlevels18 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 3, i32 2
  %m_refc_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 45
  %23 = ptrtoint ptr %m_refc_maxlevels to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %m_refc_maxlevels, align 4
  %25 = ptrtoint ptr %maxlevels18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %maxlevels18, align 4
  %root20 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 3, i32 3
  %26 = call ptr @memset(ptr %root20, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %old_agf) #7
  %27 = call ptr @memset(ptr %old_agf, i32 255, i32 224)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agf_bp) #7
  %28 = ptrtoint ptr %agf_bp to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %agf_bp, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agfl_bp) #7
  %29 = ptrtoint ptr %agfl_bp to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %agfl_bp, align 4, !annotation !29
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %30 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %31, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %32 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tp, align 4
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 13
  %34 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %m_ddev_targp, align 8
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %36 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sa, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pag_agno, align 4
  %conv = zext i32 %39 to i64
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 11
  %40 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sb_agblocks, align 4
  %conv30 = zext i32 %41 to i64
  %mul = mul nuw i64 %conv30, %conv
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 28
  %42 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %43 to i64
  %shl = shl i64 %mul, %sh_prom
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 30
  %44 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %m_sectbb_log, align 1
  %conv32 = zext i8 %45 to i32
  %shl33 = shl nuw i32 1, %conv32
  %conv34 = sext i32 %shl33 to i64
  %add35 = add i64 %shl, %conv34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #7
  %46 = getelementptr inbounds i8, ptr %map.i, i32 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 -1, ptr %46, align 8
  %48 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %add35, ptr %map.i, align 8
  store i32 %shl33, ptr %46, align 8
  %call.i = call i32 @xfs_trans_read_buf_map(ptr noundef %3, ptr noundef %33, ptr noundef %35, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %agf_bp, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end41, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.end
  %49 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %agf_bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %50, i32 0, i32 35
  %51 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @xfs_agf_buf_ops, ptr %b_ops, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %50, i32 0, i32 16
  %52 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_addr, align 4
  %54 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tp, align 4
  %56 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sa, align 4
  %pag_agno45 = getelementptr inbounds %struct.xfs_perag, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %pag_agno45 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pag_agno45, align 4
  %call46 = call i32 @xfs_alloc_read_agfl(ptr noundef %3, ptr noundef %55, i32 noundef %59, ptr noundef nonnull %agfl_bp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %60 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sc, align 4
  %62 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %agf_bp, align 4
  %b_addr51 = getelementptr inbounds %struct.xfs_buf, ptr %63, i32 0, i32 16
  %64 = ptrtoint ptr %b_addr51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %b_addr51, align 4
  %66 = ptrtoint ptr %agfl_bp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %agfl_bp, align 4
  %call52 = call i32 @xfs_agfl_walk(ptr noundef %61, ptr noundef %65, ptr noundef %67, ptr noundef nonnull @xrep_agf_check_agfl_block, ptr noundef %sc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end55:                                         ; preds = %if.end49
  %68 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %agf_bp, align 4
  %70 = ptrtoint ptr %agfl_bp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %agfl_bp, align 4
  %call56 = call fastcc i32 @xrep_agf_find_btrees(ptr noundef %sc, ptr noundef %69, ptr noundef nonnull %fab, ptr noundef %71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  %72 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %agf_bp, align 4
  call fastcc void @xrep_agf_init_header(ptr noundef %sc, ptr noundef %73, ptr noundef nonnull %old_agf)
  call fastcc void @xrep_agf_set_roots(ptr noundef %sc, ptr noundef %53, ptr noundef nonnull %fab)
  %74 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %agf_bp, align 4
  %call61 = call fastcc i32 @xrep_agf_calc_from_btrees(ptr noundef %sc, ptr noundef %75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %out_revert

if.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %agf_bp, align 4
  call fastcc void @xrep_agf_commit_new(ptr noundef %sc, ptr noundef %77)
  br label %cleanup

out_revert:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sa, align 4
  %pagf_init = getelementptr inbounds %struct.xfs_perag, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %pagf_init to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %pagf_init, align 4
  %81 = call ptr @memcpy(ptr %53, ptr %old_agf, i32 224)
  br label %cleanup

cleanup:                                          ; preds = %out_revert, %if.end64, %if.end55.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call61, %out_revert ], [ 0, %if.end64 ], [ -95, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call46, %if.end41.cleanup_crit_edge ], [ %call52, %if.end49.cleanup_crit_edge ], [ %call56, %if.end55.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agfl_bp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agf_bp) #7
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %old_agf) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %fab) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_read_agfl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_agfl_walk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xrep_agf_check_agfl_block(ptr noundef %mp, i32 noundef %agbno, ptr nocapture noundef readonly %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sa, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pag_agno, align 4
  %call = tail call zeroext i1 @xfs_verify_agbno(ptr noundef %mp, i32 noundef %3, i32 noundef %agbno) #7
  %. = select i1 %call, i32 0, i32 -117
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xrep_agf_find_btrees(ptr noundef %sc, ptr noundef %agf_bp, ptr noundef %fab, ptr noundef %agfl_bp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agf_bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %call = tail call i32 @xrep_find_ag_btree_roots(ptr noundef %sc, ptr noundef %agf_bp, ptr noundef %fab, ptr noundef %agfl_bp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %4 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sm.i, align 4
  %sm_agno.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sm_agno.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sm_agno.i, align 4
  %root.i = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 3
  %8 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %root.i, align 8
  %call.i = tail call zeroext i1 @xfs_verify_agbno(ptr noundef %3, i32 noundef %7, i32 noundef %9) #7
  br i1 %call.i, label %xrep_check_btree_root.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xrep_check_btree_root.exit:                       ; preds = %if.end
  %height.i = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 4
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height.i, align 4
  %maxlevels.i = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 2
  %12 = ptrtoint ptr %maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxlevels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i.not = icmp ugt i32 %11, %13
  br i1 %cmp.i.not, label %xrep_check_btree_root.exit.cleanup_crit_edge, label %lor.lhs.false

xrep_check_btree_root.exit.cleanup_crit_edge:     ; preds = %xrep_check_btree_root.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %xrep_check_btree_root.exit
  %14 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc, align 4
  %16 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sm.i, align 4
  %sm_agno.i32 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %sm_agno.i32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sm_agno.i32, align 4
  %root.i33 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 3
  %20 = ptrtoint ptr %root.i33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %root.i33, align 8
  %call.i34 = tail call zeroext i1 @xfs_verify_agbno(ptr noundef %15, i32 noundef %19, i32 noundef %21) #7
  br i1 %call.i34, label %xrep_check_btree_root.exit39, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xrep_check_btree_root.exit39:                     ; preds = %lor.lhs.false
  %height.i35 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 4
  %22 = ptrtoint ptr %height.i35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height.i35, align 4
  %maxlevels.i36 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 2
  %24 = ptrtoint ptr %maxlevels.i36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %maxlevels.i36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.i37.not = icmp ugt i32 %23, %25
  br i1 %cmp.i37.not, label %xrep_check_btree_root.exit39.cleanup_crit_edge, label %lor.lhs.false4

xrep_check_btree_root.exit39.cleanup_crit_edge:   ; preds = %xrep_check_btree_root.exit39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4:                                   ; preds = %xrep_check_btree_root.exit39
  %26 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sc, align 4
  %28 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sm.i, align 4
  %sm_agno.i41 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %sm_agno.i41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sm_agno.i41, align 4
  %root.i42 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 2, i32 3
  %32 = ptrtoint ptr %root.i42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %root.i42, align 8
  %call.i43 = tail call zeroext i1 @xfs_verify_agbno(ptr noundef %27, i32 noundef %31, i32 noundef %33) #7
  br i1 %call.i43, label %xrep_check_btree_root.exit48, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xrep_check_btree_root.exit48:                     ; preds = %lor.lhs.false4
  %height.i44 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 2, i32 4
  %34 = ptrtoint ptr %height.i44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height.i44, align 4
  %maxlevels.i45 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 2, i32 2
  %36 = ptrtoint ptr %maxlevels.i45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %maxlevels.i45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp.i46.not = icmp ugt i32 %35, %37
  br i1 %cmp.i46.not, label %xrep_check_btree_root.exit48.cleanup_crit_edge, label %if.end8

xrep_check_btree_root.exit48.cleanup_crit_edge:   ; preds = %xrep_check_btree_root.exit48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %xrep_check_btree_root.exit48
  %38 = ptrtoint ptr %root.i42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %root.i42, align 8
  %arrayidx10 = getelementptr %struct.xfs_agf, ptr %1, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.not = icmp eq i32 %39, %41
  br i1 %cmp.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %42 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sc, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %43, i32 0, i32 61
  %44 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %45, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end12.if.end17_crit_edge, label %land.lhs.true

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end12
  %arrayidx14 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 3
  %call15 = tail call fastcc zeroext i1 @xrep_check_btree_root(ptr noundef %sc, ptr noundef %arrayidx14)
  br i1 %call15, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end12.if.end17_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %land.lhs.true.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %xrep_check_btree_root.exit48.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %xrep_check_btree_root.exit39.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %xrep_check_btree_root.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call, %entry.cleanup_crit_edge ], [ -117, %xrep_check_btree_root.exit48.cleanup_crit_edge ], [ -117, %xrep_check_btree_root.exit39.cleanup_crit_edge ], [ -117, %xrep_check_btree_root.exit.cleanup_crit_edge ], [ -117, %if.end8.cleanup_crit_edge ], [ -117, %land.lhs.true.cleanup_crit_edge ], [ -117, %if.end.cleanup_crit_edge ], [ -117, %lor.lhs.false.cleanup_crit_edge ], [ -117, %lor.lhs.false4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xrep_agf_init_header(ptr nocapture noundef readonly %sc, ptr nocapture noundef readonly %agf_bp, ptr nocapture noundef %old_agf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agf_bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %4 = call ptr @memcpy(ptr %old_agf, ptr %3, i32 224)
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %agf_bp, i32 0, i32 2
  %5 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_length, align 8
  %shl = shl i32 %6, 9
  %7 = call ptr @memset(ptr %3, i32 0, i32 %shl)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1480673094, ptr %3, align 8
  %agf_versionnum = getelementptr inbounds %struct.xfs_agf, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %agf_versionnum to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %agf_versionnum, align 4
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %10 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sa, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pag_agno, align 4
  %agf_seqno = getelementptr inbounds %struct.xfs_agf, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %agf_seqno to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %agf_seqno, align 8
  %15 = load ptr, ptr %sa, align 4
  %pag_agno4 = getelementptr inbounds %struct.xfs_perag, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pag_agno4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pag_agno4, align 4
  %call = tail call i32 @xfs_ag_block_count(ptr noundef %1, i32 noundef %17) #7
  %agf_length = getelementptr inbounds %struct.xfs_agf, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %agf_length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call, ptr %agf_length, align 4
  %agf_flfirst = getelementptr inbounds %struct.xfs_agf, ptr %old_agf, i32 0, i32 6
  %19 = ptrtoint ptr %agf_flfirst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %agf_flfirst, align 8
  %agf_flfirst5 = getelementptr inbounds %struct.xfs_agf, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %agf_flfirst5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %agf_flfirst5, align 8
  %agf_fllast = getelementptr inbounds %struct.xfs_agf, ptr %old_agf, i32 0, i32 7
  %22 = ptrtoint ptr %agf_fllast to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %agf_fllast, align 4
  %agf_fllast6 = getelementptr inbounds %struct.xfs_agf, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %agf_fllast6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %agf_fllast6, align 4
  %agf_flcount = getelementptr inbounds %struct.xfs_agf, ptr %old_agf, i32 0, i32 8
  %25 = ptrtoint ptr %agf_flcount to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %agf_flcount, align 8
  %agf_flcount7 = getelementptr inbounds %struct.xfs_agf, ptr %3, i32 0, i32 8
  %27 = ptrtoint ptr %agf_flcount7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %agf_flcount7, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %28 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %agf_uuid = getelementptr inbounds %struct.xfs_agf, ptr %3, i32 0, i32 12
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 54
  %30 = call ptr @memcpy(ptr %agf_uuid, ptr %sb_meta_uuid, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %31 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sa, align 4
  %pagf_init = getelementptr inbounds %struct.xfs_perag, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %pagf_init to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pagf_init, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not = icmp eq i8 %34, 0
  br i1 %tobool.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !30

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 213) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %35 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sa, align 4
  %pagf_init15 = getelementptr inbounds %struct.xfs_perag, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %pagf_init15 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %pagf_init15, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @xrep_agf_set_roots(ptr nocapture noundef readonly %sc, ptr nocapture noundef writeonly %agf, ptr nocapture noundef readonly %fab) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 3
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %root, align 8
  %agf_roots = getelementptr inbounds %struct.xfs_agf, ptr %agf, i32 0, i32 4
  %2 = ptrtoint ptr %agf_roots to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %agf_roots, align 8
  %height = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 4
  %3 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height, align 4
  %agf_levels = getelementptr inbounds %struct.xfs_agf, ptr %agf, i32 0, i32 5
  %5 = ptrtoint ptr %agf_levels to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %agf_levels, align 4
  %root5 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 3
  %6 = ptrtoint ptr %root5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %root5, align 8
  %arrayidx7 = getelementptr %struct.xfs_agf, ptr %agf, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx7, align 4
  %height9 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 4
  %9 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height9, align 4
  %arrayidx11 = getelementptr %struct.xfs_agf, ptr %agf, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx11, align 4
  %root13 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 2, i32 3
  %12 = ptrtoint ptr %root13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %root13, align 8
  %arrayidx15 = getelementptr %struct.xfs_agf, ptr %agf, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx15, align 8
  %height17 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 2, i32 4
  %15 = ptrtoint ptr %height17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height17, align 4
  %arrayidx19 = getelementptr %struct.xfs_agf, ptr %agf, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx19, align 4
  %18 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sc, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %19, i32 0, i32 61
  %20 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %21, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %root21 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 3, i32 3
  %22 = ptrtoint ptr %root21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %root21, align 8
  %agf_refcount_root = getelementptr inbounds %struct.xfs_agf, ptr %agf, i32 0, i32 15
  %24 = ptrtoint ptr %agf_refcount_root to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %agf_refcount_root, align 8
  %height23 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 3, i32 4
  %25 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height23, align 4
  %agf_refcount_level = getelementptr inbounds %struct.xfs_agf, ptr %agf, i32 0, i32 16
  %27 = ptrtoint ptr %agf_refcount_level to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %agf_refcount_level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xrep_agf_calc_from_btrees(ptr noundef %sc, ptr noundef %agf_bp) unnamed_addr #3 align 64 {
entry:
  %raa = alloca %struct.xrep_agf_allocbt, align 4
  %blocks = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %raa) #7
  %0 = getelementptr inbounds %struct.xrep_agf_allocbt, ptr %raa, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xrep_agf_allocbt, ptr %raa, i32 0, i32 2
  %2 = ptrtoint ptr %raa to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sc, ptr %raa, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %1, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agf_bp, i32 0, i32 16
  %5 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_addr, align 4
  %7 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocks) #7
  %9 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %blocks, align 4, !annotation !29
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %10 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tp, align 4
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %12 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sa, align 4
  %call = tail call ptr @xfs_allocbt_init_cursor(ptr noundef %8, ptr noundef %11, ptr noundef %agf_bp, ptr noundef %13, i32 noundef 0) #7
  %call3 = call i32 @xfs_alloc_query_all(ptr noundef %call, ptr noundef nonnull @xrep_agf_walk_allocbt, ptr noundef nonnull %raa) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end:                                           ; preds = %entry
  %call4 = call i32 @xfs_btree_count_blocks(ptr noundef %call, ptr noundef nonnull %blocks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end7:                                          ; preds = %if.end
  call void @xfs_btree_del_cursor(ptr noundef %call, i32 noundef 0) #7
  %14 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blocks, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  %agf_freeblks = getelementptr inbounds %struct.xfs_agf, ptr %6, i32 0, i32 9
  %18 = ptrtoint ptr %agf_freeblks to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %agf_freeblks, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %agf_longest = getelementptr inbounds %struct.xfs_agf, ptr %6, i32 0, i32 10
  %21 = ptrtoint ptr %agf_longest to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %agf_longest, align 8
  %22 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tp, align 4
  %24 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sa, align 4
  %call13 = call ptr @xfs_allocbt_init_cursor(ptr noundef %8, ptr noundef %23, ptr noundef %agf_bp, ptr noundef %25, i32 noundef 1) #7
  %call14 = call i32 @xfs_btree_count_blocks(ptr noundef %call13, ptr noundef nonnull %blocks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end7.err_crit_edge

if.end7.err_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end17:                                         ; preds = %if.end7
  call void @xfs_btree_del_cursor(ptr noundef %call13, i32 noundef 0) #7
  %26 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %blocks, align 4
  %28 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tp, align 4
  %30 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sa, align 4
  %call22 = call ptr @xfs_rmapbt_init_cursor(ptr noundef %8, ptr noundef %29, ptr noundef %agf_bp, ptr noundef %31) #7
  %call23 = call i32 @xfs_btree_count_blocks(ptr noundef %call22, ptr noundef nonnull %blocks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end17.err_crit_edge

if.end17.err_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end26:                                         ; preds = %if.end17
  call void @xfs_btree_del_cursor(ptr noundef %call22, i32 noundef 0) #7
  %32 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blocks, align 4
  %agf_rmap_blocks = getelementptr inbounds %struct.xfs_agf, ptr %6, i32 0, i32 13
  %34 = ptrtoint ptr %agf_rmap_blocks to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %agf_rmap_blocks, align 8
  %sub18 = add i32 %15, -3
  %sub27 = add i32 %sub18, %27
  %add28 = add i32 %sub27, %33
  %agf_btreeblks = getelementptr inbounds %struct.xfs_agf, ptr %6, i32 0, i32 11
  %35 = ptrtoint ptr %agf_btreeblks to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add28, ptr %agf_btreeblks, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %8, i32 0, i32 61
  %36 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %37, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end26.cleanup_crit_edge, label %if.then30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then30:                                        ; preds = %if.end26
  %38 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tp, align 4
  %40 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sa, align 4
  %call34 = call ptr @xfs_refcountbt_init_cursor(ptr noundef %8, ptr noundef %39, ptr noundef %agf_bp, ptr noundef %41) #7
  %call35 = call i32 @xfs_btree_count_blocks(ptr noundef %call34, ptr noundef nonnull %blocks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then30.err_crit_edge

if.then30.err_crit_edge:                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end38:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  call void @xfs_btree_del_cursor(ptr noundef %call34, i32 noundef 0) #7
  %42 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %blocks, align 4
  %agf_refcount_blocks = getelementptr inbounds %struct.xfs_agf, ptr %6, i32 0, i32 14
  %44 = ptrtoint ptr %agf_refcount_blocks to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %agf_refcount_blocks, align 4
  br label %cleanup

err:                                              ; preds = %if.then30.err_crit_edge, %if.end17.err_crit_edge, %if.end7.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  %cur.0 = phi ptr [ %call, %entry.err_crit_edge ], [ %call, %if.end.err_crit_edge ], [ %call13, %if.end7.err_crit_edge ], [ %call22, %if.end17.err_crit_edge ], [ %call34, %if.then30.err_crit_edge ]
  %error.0 = phi i32 [ %call3, %entry.err_crit_edge ], [ %call4, %if.end.err_crit_edge ], [ %call14, %if.end7.err_crit_edge ], [ %call23, %if.end17.err_crit_edge ], [ %call35, %if.then30.err_crit_edge ]
  call void @xfs_btree_del_cursor(ptr noundef %cur.0, i32 noundef %error.0) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end38, %if.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err ], [ 0, %if.end38 ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %raa) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xrep_agf_commit_new(ptr nocapture noundef readonly %sc, ptr noundef %agf_bp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agf_bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  tail call void @xfs_force_summary_recalc(ptr noundef %3) #7
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %4 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tp, align 4
  tail call void @xfs_trans_buf_set_type(ptr noundef %5, ptr noundef %agf_bp, i32 noundef 5) #7
  %6 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tp, align 4
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %agf_bp, i32 0, i32 2
  %8 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_length, align 8
  %shl = shl i32 %9, 9
  %sub = add i32 %shl, -1
  tail call void @xfs_trans_log_buf(ptr noundef %7, ptr noundef %agf_bp, i32 noundef 0, i32 noundef %sub) #7
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %10 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sa, align 4
  %agf_btreeblks = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %agf_btreeblks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %agf_btreeblks, align 4
  %pagf_btreeblks = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 12
  %14 = ptrtoint ptr %pagf_btreeblks to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pagf_btreeblks, align 4
  %agf_freeblks = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %agf_freeblks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %agf_freeblks, align 4
  %pagf_freeblks = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 10
  %17 = ptrtoint ptr %pagf_freeblks to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %pagf_freeblks, align 4
  %agf_longest = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %agf_longest to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %agf_longest, align 8
  %pagf_longest = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 11
  %20 = ptrtoint ptr %pagf_longest to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pagf_longest, align 4
  %agf_levels = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %agf_levels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %agf_levels, align 4
  %conv = trunc i32 %22 to i8
  %pagf_levels = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 7
  %23 = ptrtoint ptr %pagf_levels to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %pagf_levels, align 4
  %arrayidx5 = getelementptr %struct.xfs_agf, ptr %1, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5, align 4
  %conv6 = trunc i32 %25 to i8
  %arrayidx8 = getelementptr %struct.xfs_perag, ptr %11, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv6, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.xfs_agf, ptr %1, i32 0, i32 5, i32 2
  %27 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx10, align 4
  %conv11 = trunc i32 %28 to i8
  %arrayidx13 = getelementptr %struct.xfs_perag, ptr %11, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv11, ptr %arrayidx13, align 2
  %agf_refcount_level = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 16
  %30 = ptrtoint ptr %agf_refcount_level to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %agf_refcount_level, align 4
  %conv14 = trunc i32 %31 to i8
  %pagf_refcount_level = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 19
  %32 = ptrtoint ptr %pagf_refcount_level to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv14, ptr %pagf_refcount_level, align 4
  %pagf_init = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 3
  %33 = ptrtoint ptr %pagf_init to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %pagf_init, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xrep_agfl(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %agfl_extents = alloca %struct.xbitmap, align 4
  %agf_bp = alloca ptr, align 4
  %agfl_bp = alloca ptr, align 4
  %flcount = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agfl_extents) #7
  %0 = ptrtoint ptr %agfl_extents to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %agfl_extents, align 4, !annotation !29
  %1 = getelementptr inbounds %struct.list_head, ptr %agfl_extents, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !29
  %3 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agf_bp) #7
  %5 = ptrtoint ptr %agf_bp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %agf_bp, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agfl_bp) #7
  %6 = ptrtoint ptr %agfl_bp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %agfl_bp, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flcount) #7
  %7 = ptrtoint ptr %flcount to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %flcount, align 4, !annotation !29
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @xbitmap_init(ptr noundef nonnull %agfl_extents) #7
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %10 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tp, align 4
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %12 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sa, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pag_agno, align 4
  %call2 = call i32 @xfs_alloc_read_agf(ptr noundef %4, ptr noundef %11, i32 noundef %15, i32 noundef 0, ptr noundef nonnull %agf_bp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %16 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tp, align 4
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 13
  %18 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m_ddev_targp, align 8
  %20 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sa, align 4
  %pag_agno8 = getelementptr inbounds %struct.xfs_perag, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pag_agno8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pag_agno8, align 4
  %conv = zext i32 %23 to i64
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %4, i32 0, i32 11
  %24 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sb_agblocks, align 4
  %conv9 = zext i32 %25 to i64
  %mul = mul nuw i64 %conv9, %conv
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 28
  %26 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %27 to i64
  %shl = shl i64 %mul, %sh_prom
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 30
  %28 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %m_sectbb_log, align 1
  %conv11 = zext i8 %29 to i32
  %shl12 = shl i32 3, %conv11
  %conv13 = sext i32 %shl12 to i64
  %add14 = add i64 %shl, %conv13
  %shl17 = shl nuw i32 1, %conv11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #7
  %30 = getelementptr inbounds i8, ptr %map.i, i32 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -1, ptr %30, align 8
  %32 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add14, ptr %map.i, align 8
  store i32 %shl17, ptr %30, align 8
  %call.i = call i32 @xfs_trans_read_buf_map(ptr noundef %4, ptr noundef %17, ptr noundef %19, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %agfl_bp, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end21, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end4
  %33 = ptrtoint ptr %agfl_bp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %agfl_bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %34, i32 0, i32 35
  %35 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @xfs_agfl_buf_ops, ptr %b_ops, align 4
  %36 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %agf_bp, align 4
  %call22 = call fastcc i32 @xrep_agfl_collect_blocks(ptr noundef %sc, ptr noundef %37, ptr noundef nonnull %agfl_extents, ptr noundef nonnull %flcount)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.err_crit_edge

if.end21.err_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end25:                                         ; preds = %if.end21
  %38 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %agf_bp, align 4
  %40 = ptrtoint ptr %flcount to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flcount, align 4
  call fastcc void @xrep_agfl_update_agf(ptr noundef %sc, ptr noundef %39, i32 noundef %41)
  %42 = ptrtoint ptr %agfl_bp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %agfl_bp, align 4
  call fastcc void @xrep_agfl_init_header(ptr noundef %sc, ptr noundef %43, ptr noundef nonnull %agfl_extents, i32 noundef %41)
  %44 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %agf_bp, align 4
  %agf_bp27 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %agf_bp27 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %agf_bp27, align 4
  %47 = ptrtoint ptr %agfl_bp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %agfl_bp, align 4
  %agfl_bp29 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 2
  %49 = ptrtoint ptr %agfl_bp29 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %agfl_bp29, align 4
  %call30 = call i32 @xrep_roll_ag_trans(ptr noundef %sc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end25.err_crit_edge

if.end25.err_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 @xrep_reap_extents(ptr noundef %sc, ptr noundef nonnull %agfl_extents, ptr noundef nonnull @XFS_RMAP_OINFO_AG, i32 noundef 1) #7
  br label %err

err:                                              ; preds = %if.end33, %if.end25.err_crit_edge, %if.end21.err_crit_edge
  %error.0 = phi i32 [ %call22, %if.end21.err_crit_edge ], [ %call30, %if.end25.err_crit_edge ], [ %call34, %if.end33 ]
  call void @xbitmap_destroy(ptr noundef nonnull %agfl_extents) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err ], [ -95, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flcount) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agfl_bp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agf_bp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agfl_extents) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xbitmap_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_read_agf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xrep_agfl_collect_blocks(ptr noundef %sc, ptr noundef %agf_bp, ptr noundef %agfl_extents, ptr nocapture noundef writeonly %flcount) unnamed_addr #3 align 64 {
entry:
  %ra = alloca %struct.xrep_agfl, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ra) #7
  %0 = getelementptr inbounds %struct.xrep_agfl, ptr %ra, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xrep_agfl, ptr %ra, i32 0, i32 2
  %2 = ptrtoint ptr %ra to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %ra, align 8
  %3 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sc, ptr %1, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %agfl_extents, ptr %0, align 8
  call void @xbitmap_init(ptr noundef nonnull %ra) #7
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %7 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tp, align 4
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %9 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sa, align 4
  %call = call ptr @xfs_rmapbt_init_cursor(ptr noundef %4, ptr noundef %8, ptr noundef %agf_bp, ptr noundef %10) #7
  %call3 = call i32 @xfs_rmap_query_all(ptr noundef %call, ptr noundef nonnull @xrep_agfl_walk_rmap, ptr noundef nonnull %ra) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end:                                           ; preds = %entry
  call void @xfs_btree_del_cursor(ptr noundef %call, i32 noundef 0) #7
  %11 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tp, align 4
  %13 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sa, align 4
  %call7 = call ptr @xfs_allocbt_init_cursor(ptr noundef %4, ptr noundef %12, ptr noundef %agf_bp, ptr noundef %14, i32 noundef 0) #7
  %call9 = call i32 @xbitmap_set_btblocks(ptr noundef nonnull %ra, ptr noundef %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end12:                                         ; preds = %if.end
  call void @xfs_btree_del_cursor(ptr noundef %call7, i32 noundef 0) #7
  %15 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tp, align 4
  %17 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sa, align 4
  %call16 = call ptr @xfs_allocbt_init_cursor(ptr noundef %4, ptr noundef %16, ptr noundef %agf_bp, ptr noundef %18, i32 noundef 1) #7
  %call18 = call i32 @xbitmap_set_btblocks(ptr noundef nonnull %ra, ptr noundef %call16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end12.err_crit_edge

if.end12.err_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end21:                                         ; preds = %if.end12
  call void @xfs_btree_del_cursor(ptr noundef %call16, i32 noundef 0) #7
  %call23 = call i32 @xbitmap_disunion(ptr noundef %agfl_extents, ptr noundef nonnull %ra) #7
  call void @xbitmap_destroy(ptr noundef nonnull %ra) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.end27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = call i64 @xbitmap_hweight(ptr noundef %agfl_extents) #7
  %call29 = call i32 @xfs_agfl_size(ptr noundef %4) #7
  %conv = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call28, i64 %conv)
  %cmp = icmp ult i64 %call28, %conv
  %extract.t = trunc i64 %call28 to i32
  %cond.off0 = select i1 %cmp, i32 %extract.t, i32 %call29
  %19 = ptrtoint ptr %flcount to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond.off0, ptr %flcount, align 4
  br label %cleanup

err:                                              ; preds = %if.end12.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  %cur.0 = phi ptr [ %call, %entry.err_crit_edge ], [ %call7, %if.end.err_crit_edge ], [ %call16, %if.end12.err_crit_edge ]
  %error.0 = phi i32 [ %call3, %entry.err_crit_edge ], [ %call9, %if.end.err_crit_edge ], [ %call18, %if.end12.err_crit_edge ]
  call void @xbitmap_destroy(ptr noundef nonnull %ra) #7
  call void @xfs_btree_del_cursor(ptr noundef %cur.0, i32 noundef %error.0) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end27, %if.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err ], [ 0, %if.end27 ], [ %call23, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ra) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xrep_agfl_update_agf(ptr nocapture noundef readonly %sc, ptr noundef %agf_bp, i32 noundef %flcount) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agf_bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %call = tail call i32 @xfs_agfl_size(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %flcount)
  %cmp.not = icmp ult i32 %call, %flcount
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !30

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 565) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  tail call void @xfs_force_summary_recalc(ptr noundef %5) #7
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %6 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sa, align 4
  %pagf_init = getelementptr inbounds %struct.xfs_perag, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %pagf_init to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pagf_init, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %pagf_flcount = getelementptr inbounds %struct.xfs_perag, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %pagf_flcount to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flcount, ptr %pagf_flcount, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %agf_flfirst = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %agf_flfirst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %agf_flfirst, align 8
  %agf_flcount = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %agf_flcount to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %flcount, ptr %agf_flcount, align 8
  %sub = add i32 %flcount, -1
  %agf_fllast = getelementptr inbounds %struct.xfs_agf, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %agf_fllast to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %agf_fllast, align 4
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %14 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tp, align 4
  tail call void @xfs_alloc_log_agf(ptr noundef %15, ptr noundef %agf_bp, i32 noundef 448) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xrep_agfl_init_header(ptr nocapture noundef readonly %sc, ptr noundef %agfl_bp, ptr noundef readonly %agfl_extents, i32 noundef %flcount) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %call = tail call i32 @xfs_agfl_size(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %flcount)
  %cmp.not = icmp ult i32 %call, %flcount
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !30

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 597) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agfl_bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %agfl_bp, i32 0, i32 2
  %4 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_length, align 8
  %shl = shl i32 %5, 9
  %6 = call ptr @memset(ptr %3, i32 255, i32 %shl)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 1480672844, ptr %3, align 1
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %8 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sa, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pag_agno, align 4
  %agfl_seqno = getelementptr inbounds %struct.xfs_agfl, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %agfl_seqno to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %agfl_seqno, align 1
  %agfl_uuid = getelementptr inbounds %struct.xfs_agfl, ptr %3, i32 0, i32 2
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 54
  %13 = call ptr @memcpy(ptr %agfl_uuid, ptr %sb_meta_uuid, i32 16)
  %b_mount.i = getelementptr inbounds %struct.xfs_buf, ptr %agfl_bp, i32 0, i32 14
  %14 = ptrtoint ptr %b_mount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_mount.i, align 4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %15, i32 0, i32 61
  %16 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %18 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_addr, align 4
  %retval.0.idx.i = select i1 %tobool.i.not.i, i32 0, i32 36
  %retval.0.i = getelementptr i8, ptr %19, i32 %retval.0.idx.i
  %20 = ptrtoint ptr %agfl_extents to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %agfl_extents, align 4
  %cmp11.not80 = icmp eq ptr %21, %agfl_extents
  br i1 %cmp11.not80, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %br.082 = phi ptr [ %21, %for.body.lr.ph ], [ %n.083, %list_del.exit.for.body_crit_edge ]
  %fl_off.081 = phi i32 [ 0, %for.body.lr.ph ], [ %fl_off.1.lcssa, %list_del.exit.for.body_crit_edge ]
  %22 = ptrtoint ptr %br.082 to i32
  call void @__asan_load4_noabort(i32 %22)
  %n.083 = load ptr, ptr %br.082, align 8
  %start = getelementptr inbounds %struct.xbitmap_range, ptr %br.082, i32 0, i32 1
  %23 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %start, align 8
  %25 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sb_agblklog, align 4
  %conv = zext i8 %26 to i32
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %27 = trunc i64 %24 to i32
  %conv17 = and i32 %sub.i, %27
  %28 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sa, align 4
  %pag_agno20 = getelementptr inbounds %struct.xfs_perag, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %pag_agno20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pag_agno20, align 4
  %len = getelementptr inbounds %struct.xbitmap_range, ptr %br.082, i32 0, i32 2
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %len, align 8
  %conv21 = trunc i64 %33 to i32
  tail call fastcc void @trace_xrep_agfl_insert(ptr noundef %1, i32 noundef %31, i32 noundef %conv17, i32 noundef %conv21)
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %34)
  %.pr = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr)
  %cmp23.not73 = icmp ne i64 %.pr, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %fl_off.081, i32 %flcount)
  %cmp2574 = icmp ult i32 %fl_off.081, %flcount
  %or.cond75 = select i1 %cmp23.not73, i1 %cmp2574, i1 false
  br i1 %or.cond75, label %for.body.while.body_crit_edge, label %for.body.while.end_crit_edge

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body.while.body_crit_edge
  %agbno.077 = phi i32 [ %inc27, %while.body.while.body_crit_edge ], [ %conv17, %for.body.while.body_crit_edge ]
  %fl_off.176 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ %fl_off.081, %for.body.while.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %retval.0.i, i32 %fl_off.176
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %agbno.077, ptr %arrayidx, align 4
  %inc = add nuw i32 %fl_off.176, 1
  %inc27 = add i32 %agbno.077, 1
  %36 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %start, align 8
  %inc29 = add i64 %37, 1
  store i64 %inc29, ptr %start, align 8
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %len, align 8
  %dec = add i64 %39, -1
  store i64 %dec, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec)
  %cmp23.not = icmp ne i64 %dec, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %flcount)
  %cmp25 = icmp ult i32 %inc, %flcount
  %or.cond = select i1 %cmp23.not, i1 %cmp25, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body.while.end_crit_edge
  %.lcssa = phi i64 [ %.pr, %for.body.while.end_crit_edge ], [ %dec, %while.body.while.end_crit_edge ]
  %fl_off.1.lcssa = phi i32 [ %fl_off.081, %for.body.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.lcssa)
  %tobool32.not = icmp eq i64 %.lcssa, 0
  br i1 %tobool32.not, label %if.end, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %while.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %br.082) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %br.082, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %br.082 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %br.082, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %46 = ptrtoint ptr %br.082 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %br.082, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %br.082, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kvfree(ptr noundef %br.082) #7
  %cmp11.not = icmp eq ptr %n.083, %agfl_extents
  br i1 %cmp11.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %while.end.for.end_crit_edge, %cond.end.for.end_crit_edge
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %48 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tp, align 4
  tail call void @xfs_trans_buf_set_type(ptr noundef %49, ptr noundef %agfl_bp, i32 noundef 6) #7
  %50 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tp, align 4
  %52 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %b_length, align 8
  %shl41 = shl i32 %53, 9
  %sub = add i32 %shl41, -1
  tail call void @xfs_trans_log_buf(ptr noundef %51, ptr noundef %agfl_bp, i32 noundef 0, i32 noundef %sub) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xrep_roll_ag_trans(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xrep_reap_extents(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xbitmap_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xrep_agi(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %fab = alloca [3 x %struct.xrep_find_ag_btree], align 8
  %old_agi = alloca %struct.xfs_agi, align 8
  %agi_bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fab) #7
  %0 = ptrtoint ptr %fab to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -6, ptr %fab, align 8
  %buf_ops = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 1
  %1 = ptrtoint ptr %buf_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xfs_inobt_buf_ops, ptr %buf_ops, align 8
  %maxlevels = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 2
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %inobt_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 64, i32 10
  %4 = ptrtoint ptr %inobt_maxlevels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inobt_maxlevels, align 4
  %6 = ptrtoint ptr %maxlevels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %maxlevels, align 4
  %root = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 3
  %7 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %root, align 8
  %height = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 4
  %8 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %height, align 4
  %arrayinit.element = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -6, ptr %arrayinit.element, align 8
  %buf_ops2 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 1
  %10 = ptrtoint ptr %buf_ops2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xfs_finobt_buf_ops, ptr %buf_ops2, align 8
  %maxlevels3 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 2
  %11 = ptrtoint ptr %maxlevels3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %maxlevels3, align 4
  %root7 = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 3
  %12 = call ptr @memset(ptr %root7, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 344, ptr nonnull %old_agi) #7
  %13 = call ptr @memset(ptr %old_agi, i32 255, i32 344)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agi_bp) #7
  %14 = ptrtoint ptr %agi_bp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %agi_bp, align 4, !annotation !29
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %15 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %17 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tp, align 4
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m_ddev_targp, align 8
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %21 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sa, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pag_agno, align 4
  %conv = zext i32 %24 to i64
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 11
  %25 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sb_agblocks, align 4
  %conv17 = zext i32 %26 to i64
  %mul = mul nuw i64 %conv17, %conv
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 28
  %27 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %28 to i64
  %shl = shl i64 %mul, %sh_prom
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 30
  %29 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %m_sectbb_log, align 1
  %conv19 = zext i8 %30 to i32
  %shl20 = shl i32 2, %conv19
  %conv21 = sext i32 %shl20 to i64
  %add22 = add i64 %shl, %conv21
  %shl25 = shl nuw i32 1, %conv19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #7
  %31 = getelementptr inbounds i8, ptr %map.i, i32 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %31, align 8
  %33 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add22, ptr %map.i, align 8
  store i32 %shl25, ptr %31, align 8
  %call.i = call i32 @xfs_trans_read_buf_map(ptr noundef %3, ptr noundef %18, ptr noundef %20, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %agi_bp, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end28, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %34 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %agi_bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %35, i32 0, i32 35
  %36 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @xfs_agi_buf_ops, ptr %b_ops, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %35, i32 0, i32 16
  %37 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_addr, align 4
  %call29 = call fastcc i32 @xrep_agi_find_btrees(ptr noundef %sc, ptr noundef nonnull %fab)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %39 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %agi_bp, align 4
  call fastcc void @xrep_agi_init_header(ptr noundef %sc, ptr noundef %40, ptr noundef nonnull %old_agi)
  call fastcc void @xrep_agi_set_roots(ptr noundef %sc, ptr noundef %38, ptr noundef nonnull %fab)
  %41 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %agi_bp, align 4
  %call34 = call fastcc i32 @xrep_agi_calc_from_btrees(ptr noundef %sc, ptr noundef %42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %out_revert

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %agi_bp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %agi_bp, align 4
  call fastcc void @xrep_agi_commit_new(ptr noundef %sc, ptr noundef %44)
  br label %cleanup

out_revert:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sa, align 4
  %pagi_init = getelementptr inbounds %struct.xfs_perag, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %pagi_init to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %pagi_init, align 1
  %48 = call ptr @memcpy(ptr %38, ptr %old_agi, i32 344)
  br label %cleanup

cleanup:                                          ; preds = %out_revert, %if.end37, %if.end28.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %out_revert ], [ 0, %if.end37 ], [ -95, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agi_bp) #7
  call void @llvm.lifetime.end.p0(i64 344, ptr nonnull %old_agi) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fab) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xrep_agi_find_btrees(ptr noundef %sc, ptr noundef %fab) unnamed_addr #3 align 64 {
entry:
  %agf_bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agf_bp) #7
  %0 = ptrtoint ptr %agf_bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %agf_bp, align 4, !annotation !29
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc, align 4
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp, align 4
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %5 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sa, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pag_agno, align 4
  %call = call i32 @xfs_alloc_read_agf(ptr noundef %2, ptr noundef %4, i32 noundef %8, i32 noundef 0, ptr noundef nonnull %agf_bp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %agf_bp, align 4
  %call2 = call i32 @xrep_find_ag_btree_roots(ptr noundef %sc, ptr noundef %10, ptr noundef %fab, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sc, align 4
  %sm.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %13 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sm.i, align 4
  %sm_agno.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %sm_agno.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sm_agno.i, align 4
  %root.i = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 3
  %17 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %root.i, align 8
  %call.i = call zeroext i1 @xfs_verify_agbno(ptr noundef %12, i32 noundef %16, i32 noundef %18) #7
  br i1 %call.i, label %xrep_check_btree_root.exit, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xrep_check_btree_root.exit:                       ; preds = %if.end5
  %height.i = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 4
  %19 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height.i, align 4
  %maxlevels.i = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 2
  %21 = ptrtoint ptr %maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maxlevels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.i.not = icmp ugt i32 %20, %22
  br i1 %cmp.i.not, label %xrep_check_btree_root.exit.cleanup_crit_edge, label %if.end8

xrep_check_btree_root.exit.cleanup_crit_edge:     ; preds = %xrep_check_btree_root.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %xrep_check_btree_root.exit
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 61
  %23 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end8.if.end13_crit_edge, label %land.lhs.true

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end8
  %25 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc, align 4
  %27 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sm.i, align 4
  %sm_agno.i28 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %sm_agno.i28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sm_agno.i28, align 4
  %root.i29 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 3
  %31 = ptrtoint ptr %root.i29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %root.i29, align 8
  %call.i30 = call zeroext i1 @xfs_verify_agbno(ptr noundef %26, i32 noundef %30, i32 noundef %32) #7
  br i1 %call.i30, label %xrep_check_btree_root.exit35, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xrep_check_btree_root.exit35:                     ; preds = %land.lhs.true
  %height.i31 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 4
  %33 = ptrtoint ptr %height.i31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height.i31, align 4
  %maxlevels.i32 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 2
  %35 = ptrtoint ptr %maxlevels.i32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %maxlevels.i32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp.i33.not = icmp ugt i32 %34, %36
  br i1 %cmp.i33.not, label %xrep_check_btree_root.exit35.cleanup_crit_edge, label %xrep_check_btree_root.exit35.if.end13_crit_edge

xrep_check_btree_root.exit35.if.end13_crit_edge:  ; preds = %xrep_check_btree_root.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

xrep_check_btree_root.exit35.cleanup_crit_edge:   ; preds = %xrep_check_btree_root.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %xrep_check_btree_root.exit35.if.end13_crit_edge, %if.end8.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %xrep_check_btree_root.exit35.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %xrep_check_btree_root.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -117, %xrep_check_btree_root.exit.cleanup_crit_edge ], [ -117, %xrep_check_btree_root.exit35.cleanup_crit_edge ], [ -117, %if.end5.cleanup_crit_edge ], [ -117, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agf_bp) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xrep_agi_init_header(ptr nocapture noundef readonly %sc, ptr nocapture noundef readonly %agi_bp, ptr nocapture noundef %old_agi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agi_bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %4 = call ptr @memcpy(ptr %old_agi, ptr %1, i32 344)
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %agi_bp, i32 0, i32 2
  %5 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_length, align 8
  %shl = shl i32 %6, 9
  %7 = call ptr @memset(ptr %1, i32 0, i32 %shl)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1480673097, ptr %1, align 8
  %agi_versionnum = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %agi_versionnum to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %agi_versionnum, align 4
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %10 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sa, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pag_agno, align 4
  %agi_seqno = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %agi_seqno to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %agi_seqno, align 8
  %15 = load ptr, ptr %sa, align 4
  %pag_agno4 = getelementptr inbounds %struct.xfs_perag, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pag_agno4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pag_agno4, align 4
  %call = tail call i32 @xfs_ag_block_count(ptr noundef %3, i32 noundef %17) #7
  %agi_length = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %agi_length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call, ptr %agi_length, align 4
  %agi_newino = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %agi_newino to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %agi_newino, align 8
  %agi_dirino = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %agi_dirino to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %agi_dirino, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %21 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %agi_uuid = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 11
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 54
  %23 = call ptr @memcpy(ptr %agi_uuid, ptr %sb_meta_uuid, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %agi_unlinked = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 10
  %agi_unlinked6 = getelementptr inbounds %struct.xfs_agi, ptr %old_agi, i32 0, i32 10
  %24 = call ptr @memcpy(ptr %agi_unlinked, ptr %agi_unlinked6, i32 256)
  %25 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sa, align 4
  %pagi_init = getelementptr inbounds %struct.xfs_perag, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %pagi_init to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pagi_init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !30

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 797) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %29 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sa, align 4
  %pagi_init13 = getelementptr inbounds %struct.xfs_perag, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %pagi_init13 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %pagi_init13, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @xrep_agi_set_roots(ptr nocapture noundef readonly %sc, ptr nocapture noundef writeonly %agi, ptr nocapture noundef readonly %fab) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 3
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %root, align 8
  %agi_root = getelementptr inbounds %struct.xfs_agi, ptr %agi, i32 0, i32 5
  %2 = ptrtoint ptr %agi_root to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %agi_root, align 4
  %height = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 4
  %3 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height, align 4
  %agi_level = getelementptr inbounds %struct.xfs_agi, ptr %agi, i32 0, i32 6
  %5 = ptrtoint ptr %agi_level to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %agi_level, align 8
  %6 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %root3 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 3
  %10 = ptrtoint ptr %root3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %root3, align 8
  %agi_free_root = getelementptr inbounds %struct.xfs_agi, ptr %agi, i32 0, i32 15
  %12 = ptrtoint ptr %agi_free_root to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %agi_free_root, align 8
  %height5 = getelementptr %struct.xrep_find_ag_btree, ptr %fab, i32 1, i32 4
  %13 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height5, align 4
  %agi_free_level = getelementptr inbounds %struct.xfs_agi, ptr %agi, i32 0, i32 16
  %15 = ptrtoint ptr %agi_free_level to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %agi_free_level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xrep_agi_calc_from_btrees(ptr nocapture noundef readonly %sc, ptr noundef %agi_bp) unnamed_addr #3 align 64 {
entry:
  %count = alloca i32, align 4
  %freecount = alloca i32, align 4
  %blocks = alloca i32, align 4
  %blocks13 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agi_bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #7
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %count, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freecount) #7
  %5 = ptrtoint ptr %freecount to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %freecount, align 4, !annotation !29
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %6 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tp, align 4
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %8 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sa, align 4
  %call = tail call ptr @xfs_inobt_init_cursor(ptr noundef %3, ptr noundef %7, ptr noundef %agi_bp, ptr noundef %9, i32 noundef 4) #7
  %call2 = call i32 @xfs_ialloc_count_inodes(ptr noundef %call, ptr noundef nonnull %count, ptr noundef nonnull %freecount) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %10 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %11, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocks) #7
  %12 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %blocks, align 4, !annotation !29
  %call5 = call i32 @xfs_btree_count_blocks(ptr noundef %call, ptr noundef nonnull %blocks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blocks, align 4
  %agi_iblocks = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %agi_iblocks to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %agi_iblocks, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks) #7
  br label %if.end9

cleanup:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks) #7
  br label %err

if.end9:                                          ; preds = %cleanup.thread, %if.end.if.end9_crit_edge
  call void @xfs_btree_del_cursor(ptr noundef %call, i32 noundef 0) #7
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %agi_count = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %agi_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %agi_count, align 8
  %19 = ptrtoint ptr %freecount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %freecount, align 4
  %agi_freecount = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %agi_freecount to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %agi_freecount, align 4
  %22 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m_features.i, align 8
  %24 = and i64 %23, 8519680
  call void @__sanitizer_cov_trace_const_cmp8(i64 8519680, i64 %24)
  %25 = icmp eq i64 %24, 8519680
  br i1 %25, label %if.then12, label %if.end9.cleanup26_crit_edge

if.end9.cleanup26_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

if.then12:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocks13) #7
  %26 = ptrtoint ptr %blocks13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %blocks13, align 4, !annotation !29
  %27 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tp, align 4
  %29 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sa, align 4
  %call17 = call ptr @xfs_inobt_init_cursor(ptr noundef %3, ptr noundef %28, ptr noundef %agi_bp, ptr noundef %30, i32 noundef 5) #7
  %call18 = call i32 @xfs_btree_count_blocks(ptr noundef %call17, ptr noundef nonnull %blocks13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup22.thread, label %cleanup22

cleanup22.thread:                                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  call void @xfs_btree_del_cursor(ptr noundef %call17, i32 noundef 0) #7
  %31 = ptrtoint ptr %blocks13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %blocks13, align 4
  %agi_fblocks = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 18
  %33 = ptrtoint ptr %agi_fblocks to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %agi_fblocks, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks13) #7
  br label %cleanup26

cleanup22:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks13) #7
  br label %err

err:                                              ; preds = %cleanup22, %cleanup, %entry.err_crit_edge
  %cur.0 = phi ptr [ %call, %entry.err_crit_edge ], [ %call, %cleanup ], [ %call17, %cleanup22 ]
  %error.1 = phi i32 [ %call2, %entry.err_crit_edge ], [ %call5, %cleanup ], [ %call18, %cleanup22 ]
  call void @xfs_btree_del_cursor(ptr noundef %cur.0, i32 noundef %error.1) #7
  br label %cleanup26

cleanup26:                                        ; preds = %err, %cleanup22.thread, %if.end9.cleanup26_crit_edge
  %retval.0 = phi i32 [ %error.1, %err ], [ 0, %if.end9.cleanup26_crit_edge ], [ 0, %cleanup22.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freecount) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xrep_agi_commit_new(ptr nocapture noundef readonly %sc, ptr noundef %agi_bp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %agi_bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  tail call void @xfs_force_summary_recalc(ptr noundef %3) #7
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %4 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tp, align 4
  tail call void @xfs_trans_buf_set_type(ptr noundef %5, ptr noundef %agi_bp, i32 noundef 7) #7
  %6 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tp, align 4
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %agi_bp, i32 0, i32 2
  %8 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_length, align 8
  %shl = shl i32 %9, 9
  %sub = add i32 %shl, -1
  tail call void @xfs_trans_log_buf(ptr noundef %7, ptr noundef %agi_bp, i32 noundef 0, i32 noundef %sub) #7
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %10 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sa, align 4
  %agi_count = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %agi_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %agi_count, align 8
  %pagi_count = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 14
  %14 = ptrtoint ptr %pagi_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pagi_count, align 4
  %agi_freecount = getelementptr inbounds %struct.xfs_agi, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %agi_freecount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %agi_freecount, align 4
  %pagi_freecount = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 13
  %17 = ptrtoint ptr %pagi_freecount to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %pagi_freecount, align 4
  %pagi_init = getelementptr inbounds %struct.xfs_perag, ptr %11, i32 0, i32 4
  %18 = ptrtoint ptr %pagi_init to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %pagi_init, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_read_buf_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_agbno(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xrep_find_ag_btree_roots(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xrep_check_btree_root(ptr nocapture noundef readonly %sc, ptr nocapture noundef readonly %fab) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %2 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm, align 4
  %sm_agno = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sm_agno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sm_agno, align 4
  %root = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 3
  %6 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %root, align 8
  %call = tail call zeroext i1 @xfs_verify_agbno(ptr noundef %1, i32 noundef %5, i32 noundef %7) #7
  br i1 %call, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %height = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 4
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %maxlevels = getelementptr inbounds %struct.xrep_find_ag_btree, ptr %fab, i32 0, i32 2
  %10 = ptrtoint ptr %maxlevels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxlevels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp ule i32 %9, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %12 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  ret i1 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_block_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_allocbt_init_cursor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_query_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xrep_agf_walk_allocbt(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %rec, ptr nocapture noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 24, i32 noundef 0) #7
  %call.i.i = tail call i32 @__cond_resched() #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !19) #7
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
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %fatal_signal_pending.exit.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

fatal_signal_pending.exit.i:                      ; preds = %entry
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 116, i32 1
  %8 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signal.i.i.i, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end_crit_edge, label %fatal_signal_pending.exit.i.cleanup_crit_edge

fatal_signal_pending.exit.i.cleanup_crit_edge:    ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fatal_signal_pending.exit.i.if.end_crit_edge:     ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %fatal_signal_pending.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ar_blockcount = getelementptr inbounds %struct.xfs_alloc_rec_incore, ptr %rec, i32 0, i32 1
  %11 = ptrtoint ptr %ar_blockcount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ar_blockcount, align 4
  %freeblks = getelementptr inbounds %struct.xrep_agf_allocbt, ptr %priv, i32 0, i32 1
  %13 = ptrtoint ptr %freeblks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %freeblks, align 4
  %add = add i32 %14, %12
  store i32 %add, ptr %freeblks, align 4
  %15 = load i32, ptr %ar_blockcount, align 4
  %longest = getelementptr inbounds %struct.xrep_agf_allocbt, ptr %priv, i32 0, i32 2
  %16 = ptrtoint ptr %longest to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %longest, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp = icmp ugt i32 %15, %17
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %longest to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %longest, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %fatal_signal_pending.exit.i.cleanup_crit_edge
  %error.016 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then2 ], [ -11, %fatal_signal_pending.exit.i.cleanup_crit_edge ]
  ret i32 %error.016
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_count_blocks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_del_cursor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_rmapbt_init_cursor(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_refcountbt_init_cursor(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_force_summary_recalc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_query_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xrep_agfl_walk_rmap(ptr noundef %cur, ptr nocapture noundef readonly %rec, ptr noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 24, i32 noundef 0) #7
  %call.i.i = tail call i32 @__cond_resched() #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !19) #7
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
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %fatal_signal_pending.exit.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

fatal_signal_pending.exit.i:                      ; preds = %entry
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 116, i32 1
  %8 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signal.i.i.i, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end_crit_edge, label %fatal_signal_pending.exit.i.cleanup_crit_edge

fatal_signal_pending.exit.i.cleanup_crit_edge:    ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fatal_signal_pending.exit.i.if.end_crit_edge:     ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %fatal_signal_pending.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 2
  %11 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %12)
  %cmp = icmp eq i64 %12, -5
  br i1 %cmp, label %if.then1, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then1:                                         ; preds = %if.end
  %13 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pag_agno, align 4
  %conv = zext i32 %17 to i64
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %18 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bc_mp, align 4
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %21 to i64
  %shl = shl i64 %conv, %sh_prom
  %22 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rec, align 8
  %conv3 = zext i32 %23 to i64
  %or = or i64 %shl, %conv3
  %freesp = getelementptr inbounds %struct.xrep_agfl, ptr %priv, i32 0, i32 1
  %24 = ptrtoint ptr %freesp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %freesp, align 4
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 1
  %26 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rm_blockcount, align 4
  %conv4 = zext i32 %27 to i64
  %call5 = tail call i32 @xbitmap_set(ptr noundef %25, i64 noundef %or, i64 noundef %conv4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then1.if.end8_crit_edge, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1.if.end8_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.then1.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call i32 @xbitmap_set_btcur_path(ptr noundef %priv, ptr noundef %cur) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then1.cleanup_crit_edge, %fatal_signal_pending.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call5, %if.then1.cleanup_crit_edge ], [ -11, %fatal_signal_pending.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xbitmap_set_btblocks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xbitmap_disunion(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xbitmap_hweight(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_agfl_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xbitmap_set(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xbitmap_set_btcur_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alloc_log_agf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xrep_agfl_insert(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_agfl_insert, i32 0, i32 1), ptr blockaddress(@trace_xrep_agfl_insert, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !31

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !19) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !32

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !19) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  %call42 = tail call i32 @__traceiter_xrep_agfl_insert(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !34
  %13 = tail call i32 @llvm.read_register.i32(metadata !19) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !19) #7
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !32

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !19) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_agfl_insert, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xrep_agfl_insert, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xrep_agfl_insert.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xrep_agfl_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 691, ptr noundef nonnull @.str.6) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  %31 = tail call i32 @llvm.read_register.i32(metadata !19) #7
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xrep_agfl_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_inobt_init_cursor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ialloc_count_inodes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !16, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/scrub/agheader_repair.c", i32 213, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/scrub/common.h", i32 24, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/scrub/agheader_repair.c", i32 565, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/scrub/agheader_repair.c", i32 597, i32 2}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../fs/xfs/scrub/trace.h", i32 691, i32 1}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/scrub/agheader_repair.c", i32 797, i32 2}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2148268361, i64 2148268366, i64 2148268379, i64 2148268423, i64 2148268457, i64 2148268478}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2156330311}
!34 = !{i64 2156330546}
!35 = !{i64 2149970454}
!36 = !{i64 2149971490}
