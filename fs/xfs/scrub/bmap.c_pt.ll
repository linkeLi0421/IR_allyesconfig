; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/bmap.c_pt.bc'
source_filename = "../fs/xfs/scrub/bmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xchk_bmap_info = type { ptr, i64, i8, i8, i8, i32 }
%struct.xfs_iext_cursor = type { ptr, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
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
%struct.cpumask = type { [1 x i32] }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.xchk_btree = type { ptr, ptr, ptr, ptr, ptr, %union.xfs_btree_rec, %struct.list_head, [0 x %union.xfs_btree_key] }
%union.xfs_btree_rec = type { %struct.xfs_rmap_rec }
%struct.xfs_rmap_rec = type { i32, i32, i64, i64 }
%union.xfs_btree_key = type { %struct.xfs_bmbt_key, [32 x i8] }
%struct.xfs_bmbt_key = type { i64 }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.95, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%union.anon.95 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.96, %union.anon.97 }
%union.anon.96 = type { ptr }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%struct.xfs_btree_block = type { i32, i16, i16, %union.anon.88 }
%union.anon.88 = type { %struct.xfs_btree_block_lhdr }
%struct.xfs_btree_block_lhdr = type { i64, i64, i64, i64, %struct.uuid_t, i64, i32, i32 }
%struct.xfs_rmap_irec = type { i32, i32, i64, i64, i32 }
%struct.xchk_bmap_check_rmap_info = type { ptr, i32, %struct.xfs_iext_cursor }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"whichfork == XFS_DATA_FORK\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/xfs/scrub/bmap.c\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/common.h\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"XFS_IFORK_PTR(sc->ip, whichfork) != NULL\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967268, i64 4294967291]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 670, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant [25 x i8] c"../fs/xfs/scrub/common.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 24, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [23 x i8] c"../fs/xfs/scrub/bmap.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 597, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_setup_inode_bmap(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xchk_get_inode(ptr noundef %sc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup33_crit_edge

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.end:                                           ; preds = %entry
  %ilock_flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 17, ptr %ilock_flags, align 4
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ip, align 4
  tail call void @xfs_ilock(ptr noundef %2, i32 noundef 17) #6
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %i_vnode.i, align 8
  %7 = and i16 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %7)
  %cmp = icmp eq i16 %7, -32768
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %8 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sm, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %cmp5 = icmp eq i32 %11, 12
  br i1 %cmp5, label %if.then7, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then7:                                         ; preds = %land.lhs.true
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %4, i32 0, i32 27, i32 9
  %12 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping, align 8
  tail call void @inode_dio_wait(ptr noundef %i_vnode.i) #6
  %call12 = tail call i32 @filemap_fdatawrite(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.then7.if.end16_crit_edge

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 @filemap_fdatawait_keep_errors(ptr noundef %13) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then7.if.end16_crit_edge
  %error.0 = phi i32 [ %call12, %if.then7.if.end16_crit_edge ], [ %call15, %if.then14 ]
  %14 = zext i32 %error.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %error.0, label %if.end16.cleanup33_crit_edge [
    i32 0, label %if.end16.if.end26_crit_edge
    i32 -28, label %if.end16.if.end26_crit_edge56
    i32 -5, label %if.end16.if.end26_crit_edge57
  ]

if.end16.if.end26_crit_edge57:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end16.if.end26_crit_edge56:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end16.cleanup33_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.end26:                                         ; preds = %if.end16.if.end26_crit_edge, %if.end16.if.end26_crit_edge56, %if.end16.if.end26_crit_edge57, %land.lhs.true.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %call27 = tail call i32 @xchk_trans_alloc(ptr noundef %sc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup33_crit_edge

if.end26.cleanup33_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ilock_flags, align 4
  %or = or i32 %16, 4
  store i32 %or, ptr %ilock_flags, align 4
  %17 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ip, align 4
  tail call void @xfs_ilock(ptr noundef %18, i32 noundef 4) #6
  br label %cleanup33

cleanup33:                                        ; preds = %if.end30, %if.end26.cleanup33_crit_edge, %if.end16.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  %error.1 = phi i32 [ %call, %entry.cleanup33_crit_edge ], [ %call27, %if.end26.cleanup33_crit_edge ], [ 0, %if.end30 ], [ %error.0, %if.end16.cleanup33_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_get_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_keep_errors(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_trans_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_bmap_data(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xchk_bmap(ptr noundef %sc, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_bmap(ptr noundef %sc, i32 noundef %whichfork) unnamed_addr #3 align 64 {
entry:
  %irec = alloca %struct.xfs_bmbt_irec, align 8
  %info = alloca %struct.xchk_bmap_info, align 8
  %endoff = alloca i64, align 8
  %icur = alloca %struct.xfs_iext_cursor, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irec) #6
  %0 = call ptr @memset(ptr %irec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info) #6
  %1 = call ptr @memset(ptr %info, i32 0, i32 24)
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %ip2 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %4 = ptrtoint ptr %ip2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp = icmp eq i32 %whichfork, 0
  br i1 %cmp, label %cond.end6.thread, label %cond.false

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp3 = icmp eq i32 %whichfork, 1
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 6
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 7
  %cond7.in = select i1 %cmp3, ptr %i_afp, ptr %i_cowfp
  %6 = ptrtoint ptr %cond7.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond7 = load ptr, ptr %cond7.in, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %endoff) #6
  %7 = ptrtoint ptr %endoff to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %endoff, align 8, !annotation !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #6
  %8 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !17
  %9 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %11 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %error, align 4
  %tobool.not = icmp eq ptr %cond7, null
  br i1 %tobool.not, label %cond.false.out_crit_edge, label %land.end18

cond.false.out_crit_edge:                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

cond.end6.thread:                                 ; preds = %entry
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %endoff) #6
  %12 = ptrtoint ptr %endoff to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %endoff, align 8, !annotation !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #6
  %13 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !17
  %14 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %16 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %error, align 4
  %tobool.not166 = icmp eq ptr %i_df, null
  br i1 %tobool.not166, label %cond.end6.thread.out_crit_edge, label %land.rhs

cond.end6.thread.out_crit_edge:                   ; preds = %cond.end6.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.rhs:                                         ; preds = %cond.end6.thread
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 24
  %17 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %i_diflags, align 2
  %19 = and i16 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool9.not = icmp eq i16 %19, 0
  br i1 %tobool9.not, label %land.rhs.sw.default.thread_crit_edge, label %land.rhs10

land.rhs.sw.default.thread_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.thread

land.rhs10:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool11 = icmp ne ptr %23, null
  %frombool.c = zext i1 %tobool11 to i8
  br label %sw.default.thread

sw.default.thread:                                ; preds = %land.rhs10, %land.rhs.sw.default.thread_crit_edge
  %frombool.c.sink = phi i8 [ %frombool.c, %land.rhs10 ], [ 0, %land.rhs.sw.default.thread_crit_edge ]
  %24 = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool.c.sink, ptr %24, align 8
  %26 = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %26, align 4
  %i_diflags2.i = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 25
  %28 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_diflags2.i, align 8
  %is_shared172 = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 3
  %30 = trunc i64 %29 to i8
  %31 = lshr i8 %30, 1
  %32 = and i8 %31, 1
  %33 = ptrtoint ptr %is_shared172 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %is_shared172, align 1
  %34 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %sc, ptr %info, align 8
  br label %sw.epilog

land.end18:                                       ; preds = %cond.false
  %is_rt.c153 = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 2
  %35 = ptrtoint ptr %is_rt.c153 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %is_rt.c153, align 8
  %whichfork13.c154 = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %36 = ptrtoint ptr %whichfork13.c154 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %whichfork, ptr %whichfork13.c154, align 4
  %is_shared = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 3
  %37 = ptrtoint ptr %is_shared to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %is_shared, align 1
  %38 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %sc, ptr %info, align 8
  %39 = zext i32 %whichfork to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %whichfork, label %cond.false37 [
    i32 2, label %sw.bb
    i32 1, label %sw.bb25
  ]

sw.bb:                                            ; preds = %land.end18
  %i_diflags2.i155 = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 25
  %40 = ptrtoint ptr %i_diflags2.i155 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_diflags2.i155, align 8
  %and.i156 = and i64 %41, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i156)
  %tobool.i157.not = icmp eq i64 %and.i156, 0
  br i1 %tobool.i157.not, label %if.then22, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 4
  %42 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_ino, align 8
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %43) #6
  br label %out

sw.bb25:                                          ; preds = %land.end18
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %44 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %m_features.i, align 8
  %46 = and i64 %45, 1025
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %.not = icmp eq i64 %46, 0
  br i1 %.not, label %if.then28, label %sw.bb25.sw.epilog_crit_edge

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then28:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %i_ino30 = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 4
  %47 = ptrtoint ptr %i_ino30 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_ino30, align 8
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %48) #6
  br label %sw.epilog

cond.false37:                                     ; preds = %land.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 670) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false37, %if.then28, %sw.bb25.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %sw.default.thread
  %cond7167169174 = phi ptr [ %cond7, %cond.false37 ], [ %cond7, %sw.bb25.sw.epilog_crit_edge ], [ %cond7, %if.then28 ], [ %cond7, %sw.bb.sw.epilog_crit_edge ], [ %i_df, %sw.default.thread ]
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %cond7167169174, i32 0, i32 6
  %49 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %if_format, align 2
  %conv39 = sext i8 %50 to i32
  %51 = zext i32 %conv39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %conv39, label %sw.default50 [
    i32 4, label %sw.epilog.out_crit_edge
    i32 0, label %sw.epilog.out_crit_edge179
    i32 1, label %sw.epilog.out_crit_edge180
    i32 2, label %sw.epilog.sw.epilog51_crit_edge
    i32 3, label %sw.bb41
  ]

sw.epilog.sw.epilog51_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog51

sw.epilog.out_crit_edge180:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.epilog.out_crit_edge179:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb41:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whichfork)
  %cmp42 = icmp eq i32 %whichfork, 2
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 2, i64 noundef 0) #6
  br label %out

if.end45:                                         ; preds = %sw.bb41
  %call46 = call fastcc i32 @xchk_bmap_btree(ptr noundef %sc, i32 noundef %whichfork, ptr noundef nonnull %info)
  %52 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call46, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.sw.epilog51_crit_edge, label %if.end45.out_crit_edge

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end45.sw.epilog51_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog51

sw.default50:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef %whichfork, i64 noundef 0) #6
  br label %out

sw.epilog51:                                      ; preds = %if.end45.sw.epilog51_crit_edge, %sw.epilog.sw.epilog51_crit_edge
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %53 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sm_flags, align 4
  %and52 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end55, label %sw.epilog51.out_crit_edge

sw.epilog51.out_crit_edge:                        ; preds = %sw.epilog51
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end55:                                         ; preds = %sw.epilog51
  %call56 = call i32 @xfs_bmap_last_offset(ptr noundef %5, ptr noundef nonnull %endoff, i32 noundef %whichfork) #6
  %57 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call56, ptr %error, align 4
  %call57 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef %whichfork, i64 noundef 0, ptr noundef nonnull %error) #6
  br i1 %call57, label %if.end59, label %if.end55.out_crit_edge

if.end55.out_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end59:                                         ; preds = %if.end55
  %lastoff = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 1
  %58 = ptrtoint ptr %lastoff to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %lastoff, align 8
  br i1 %cmp, label %cond.true62, label %cond.false64

cond.true62:                                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %i_df63 = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 8
  br label %cond.end73

cond.false64:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp65 = icmp eq i32 %whichfork, 1
  br i1 %cmp65, label %cond.true67, label %cond.false69

cond.true67:                                      ; preds = %cond.false64
  call void @__sanitizer_cov_trace_pc() #8
  %i_afp68 = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 6
  %59 = ptrtoint ptr %i_afp68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_afp68, align 8
  br label %cond.end73

cond.false69:                                     ; preds = %cond.false64
  call void @__sanitizer_cov_trace_pc() #8
  %i_cowfp70 = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 7
  %61 = ptrtoint ptr %i_cowfp70 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_cowfp70, align 4
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false69, %cond.true67, %cond.true62
  %cond74 = phi ptr [ %i_df63, %cond.true62 ], [ %60, %cond.true67 ], [ %62, %cond.false69 ]
  call void @xfs_iext_first(ptr noundef %cond74, ptr noundef nonnull %icur) #6
  %call75178 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %cond74, ptr noundef nonnull %icur, ptr noundef nonnull %irec) #6
  br i1 %call75178, label %for.body.lr.ph, label %cond.end73.for.end_crit_edge

cond.end73.for.end_crit_edge:                     ; preds = %cond.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end73
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 24, i32 noundef 0) #6
  %call.i.i = call i32 @__cond_resched() #6
  %63 = call i32 @llvm.read_register.i32(metadata !7) #6
  %and.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %stack.i.i.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  %and1.i.i.i.i.i.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.lor.lhs.false_crit_edge, label %fatal_signal_pending.exit.i

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

fatal_signal_pending.exit.i:                      ; preds = %for.body
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 116, i32 1
  %71 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %signal.i.i.i, align 4
  %73 = and i32 %72, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.lor.lhs.false_crit_edge, label %if.then.i

fatal_signal_pending.exit.i.lor.lhs.false_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

if.then.i:                                        ; preds = %fatal_signal_pending.exit.i
  %74 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i = icmp eq i32 %75, 0
  br i1 %cmp.i, label %if.then3.i, label %if.then.i.out_crit_edge

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -11, ptr %error, align 4
  br label %out

lor.lhs.false:                                    ; preds = %fatal_signal_pending.exit.i.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %77 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sm, align 4
  %sm_flags79 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %sm_flags79 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sm_flags79, align 4
  %and80 = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end83, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end83:                                         ; preds = %lor.lhs.false
  %81 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %br_startblock, align 8
  %and.i163 = and i64 %82, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i163)
  %cmp.i164.not = icmp eq i64 %and.i163, 4503599627239424
  br i1 %cmp.i164.not, label %if.end83.for.inc_crit_edge, label %if.end87

if.end83.for.inc_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end87:                                         ; preds = %if.end83
  %83 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %irec, align 8
  %85 = ptrtoint ptr %endoff to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %endoff, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %84, i64 %86)
  %cmp88.not = icmp ult i64 %84, %86
  br i1 %cmp88.not, label %if.end92, label %if.then90

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef %whichfork, i64 noundef %84) #6
  br label %out

if.end92:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @xchk_bmap_iextent(ptr noundef %5, ptr noundef nonnull %info, ptr noundef nonnull %irec)
  %87 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %error, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end92, %if.end83.for.inc_crit_edge
  call void @xfs_iext_next(ptr noundef %cond74, ptr noundef nonnull %icur) #6
  %call75 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %cond74, ptr noundef nonnull %icur, ptr noundef nonnull %irec) #6
  br i1 %call75, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end73.for.end_crit_edge
  %call97 = call fastcc i32 @xchk_bmap_check_rmaps(ptr noundef %sc, i32 noundef %whichfork)
  %88 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call97, ptr %error, align 4
  %call98 = call zeroext i1 @xchk_fblock_xref_process_error(ptr noundef %sc, i32 noundef %whichfork, i64 noundef 0, ptr noundef nonnull %error) #6
  br label %out

out:                                              ; preds = %for.end, %if.then90, %lor.lhs.false.out_crit_edge, %if.then3.i, %if.then.i.out_crit_edge, %if.end55.out_crit_edge, %sw.epilog51.out_crit_edge, %sw.default50, %if.end45.out_crit_edge, %if.then44, %sw.epilog.out_crit_edge, %sw.epilog.out_crit_edge179, %sw.epilog.out_crit_edge180, %if.then22, %cond.end6.thread.out_crit_edge, %cond.false.out_crit_edge
  %89 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %endoff) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irec) #6
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_bmap_attr(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xchk_bmap(ptr noundef %sc, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_bmap_cow(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %i_diflags2.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_diflags2.i, align 8
  %and.i = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @xchk_bmap(ptr noundef %sc, i32 noundef 2)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ino_set_corrupt(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_fblock_set_corrupt(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_bmap_btree(ptr noundef %sc, i32 noundef %whichfork, ptr noundef %info) unnamed_addr #3 align 64 {
entry:
  %oinfo = alloca %struct.xfs_owner_info, align 8
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %oinfo) #6
  %0 = getelementptr inbounds i8, ptr %oinfo, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp = icmp eq i32 %whichfork, 0
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ip, align 4
  br i1 %cmp, label %cond.true, label %cond.true2

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 8
  br label %cond.end6

cond.true2:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_afp, align 8
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true2, %cond.true
  %cond7 = phi ptr [ %i_df, %cond.true ], [ %5, %cond.true2 ]
  %6 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc, align 4
  %ip10 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %8 = ptrtoint ptr %ip10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %if_format.i = getelementptr inbounds %struct.xfs_ifork, ptr %cond7, i32 0, i32 6
  %10 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp.i = icmp eq i8 %11, 3
  br i1 %cmp.i, label %land.rhs.i, label %cond.end6.xfs_need_iread_extents.exit_crit_edge

cond.end6.xfs_need_iread_extents.exit_crit_edge:  ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfs_need_iread_extents.exit

land.rhs.i:                                       ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #8
  %if_height.i = getelementptr inbounds %struct.xfs_ifork, ptr %cond7, i32 0, i32 3
  %12 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.i = icmp ne i32 %13, 0
  br label %xfs_need_iread_extents.exit

xfs_need_iread_extents.exit:                      ; preds = %land.rhs.i, %cond.end6.xfs_need_iread_extents.exit_crit_edge
  %14 = phi i1 [ true, %cond.end6.xfs_need_iread_extents.exit_crit_edge ], [ %cmp2.i, %land.rhs.i ]
  %was_loaded = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 4
  %frombool = zext i1 %14 to i8
  %15 = ptrtoint ptr %was_loaded to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %was_loaded, align 2
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %16 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tp, align 4
  %call11 = tail call i32 @xfs_iread_extents(ptr noundef %17, ptr noundef %9, i32 noundef %whichfork) #6
  %18 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call11, ptr %error, align 4
  %call12 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef %whichfork, i64 noundef 0, ptr noundef nonnull %error) #6
  br i1 %call12, label %if.end, label %xfs_need_iread_extents.exit.out_crit_edge

xfs_need_iread_extents.exit.out_crit_edge:        ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tp, align 4
  %call14 = call ptr @xfs_bmbt_init_cursor(ptr noundef %7, ptr noundef %20, ptr noundef %9, i32 noundef %whichfork) #6
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %9, i32 0, i32 4
  %21 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_ino, align 8
  %23 = ptrtoint ptr %oinfo to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %oinfo, align 8
  %oi_offset.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 1
  %24 = ptrtoint ptr %oi_offset.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %oi_offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp.i33 = icmp eq i32 %whichfork, 1
  %spec.select.i = select i1 %cmp.i33, i32 3, i32 2
  %oi_flags.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 2
  %25 = ptrtoint ptr %oi_flags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select.i, ptr %oi_flags.i, align 8
  %call15 = call i32 @xchk_btree(ptr noundef %sc, ptr noundef %call14, ptr noundef nonnull @xchk_bmapbt_rec, ptr noundef nonnull %oinfo, ptr noundef %info) #6
  %26 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call15, ptr %error, align 4
  call void @xfs_btree_del_cursor(ptr noundef %call14, i32 noundef %call15) #6
  br label %out

out:                                              ; preds = %if.end, %xfs_need_iread_extents.exit.out_crit_edge
  %27 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %oinfo) #6
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_last_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_fblock_process_error(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_first(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_get_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_bmap_iextent(ptr nocapture noundef readonly %ip, ptr noundef %info, ptr nocapture noundef readonly %irec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %irec, align 8
  %lastoff = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %lastoff to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lastoff, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp = icmp ult i64 %5, %7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %whichfork = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %whichfork, align 4
  tail call void @xchk_fblock_set_corrupt(ptr noundef %1, i32 noundef %9, i64 noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %irec, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  %12 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %br_blockcount, align 8
  %call = tail call zeroext i1 @xfs_verify_fileext(ptr noundef %3, i64 noundef %11, i64 noundef %13) #6
  br i1 %call, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 8
  %whichfork7 = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %16 = ptrtoint ptr %whichfork7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %whichfork7, align 4
  %18 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %irec, align 8
  tail call void @xchk_fblock_set_corrupt(ptr noundef %15, i32 noundef %17, i64 noundef %19) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  tail call fastcc void @xchk_bmap_dirattr_extent(ptr noundef %ip, ptr noundef %info, ptr noundef %irec)
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 1
  %20 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %21)
  %cmp10 = icmp eq i64 %21, -2
  br i1 %cmp10, label %if.then11, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info, align 8
  %whichfork13 = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %24 = ptrtoint ptr %whichfork13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %whichfork13, align 4
  %26 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %irec, align 8
  tail call void @xchk_fblock_set_corrupt(ptr noundef %23, i32 noundef %25, i64 noundef %27) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9.if.end15_crit_edge
  %28 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %br_startblock, align 8
  %and.i = and i64 %29, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i)
  %cmp.i.not = icmp eq i64 %and.i, 4503599627239424
  br i1 %cmp.i.not, label %if.then18, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info, align 8
  %whichfork20 = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %32 = ptrtoint ptr %whichfork20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %whichfork20, align 4
  %34 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %irec, align 8
  tail call void @xchk_fblock_set_corrupt(ptr noundef %31, i32 noundef %33, i64 noundef %35) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end15.if.end22_crit_edge
  %36 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %br_blockcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097151, i64 %37)
  %cmp24 = icmp ugt i64 %37, 2097151
  br i1 %cmp24, label %if.then25, label %if.end22.if.end29_crit_edge

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info, align 8
  %whichfork27 = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %40 = ptrtoint ptr %whichfork27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %whichfork27, align 4
  %42 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %irec, align 8
  tail call void @xchk_fblock_set_corrupt(ptr noundef %39, i32 noundef %41, i64 noundef %43) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end22.if.end29_crit_edge
  %is_rt = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 2
  %44 = ptrtoint ptr %is_rt to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_rt, align 8, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool30.not = icmp eq i8 %45, 0
  br i1 %tobool30.not, label %if.end29.land.lhs.true41_crit_edge, label %land.lhs.true

if.end29.land.lhs.true41_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true41

land.lhs.true:                                    ; preds = %if.end29
  %46 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %br_startblock, align 8
  %48 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %br_blockcount, align 8
  %call33 = tail call zeroext i1 @xfs_verify_rtext(ptr noundef %3, i64 noundef %47, i64 noundef %49) #6
  br i1 %call33, label %land.lhs.true.if.end38_crit_edge, label %if.then34

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info, align 8
  %whichfork36 = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %52 = ptrtoint ptr %whichfork36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %whichfork36, align 4
  %54 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %irec, align 8
  tail call void @xchk_fblock_set_corrupt(ptr noundef %51, i32 noundef %53, i64 noundef %55) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %land.lhs.true.if.end38_crit_edge
  %56 = ptrtoint ptr %is_rt to i32
  call void @__asan_load1_noabort(i32 %56)
  %.pr = load i8, ptr %is_rt, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool40.not = icmp eq i8 %.pr, 0
  br i1 %tobool40.not, label %if.end38.land.lhs.true41_crit_edge, label %if.end38.if.end49_crit_edge

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end38.land.lhs.true41_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true41

land.lhs.true41:                                  ; preds = %if.end38.land.lhs.true41_crit_edge, %if.end29.land.lhs.true41_crit_edge
  %57 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %br_startblock, align 8
  %59 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %br_blockcount, align 8
  %call44 = tail call zeroext i1 @xfs_verify_fsbext(ptr noundef %3, i64 noundef %58, i64 noundef %60) #6
  br i1 %call44, label %land.lhs.true41.if.end49_crit_edge, label %if.then45

land.lhs.true41.if.end49_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then45:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %info, align 8
  %whichfork47 = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %63 = ptrtoint ptr %whichfork47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %whichfork47, align 4
  %65 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %irec, align 8
  tail call void @xchk_fblock_set_corrupt(ptr noundef %62, i32 noundef %64, i64 noundef %66) #6
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %land.lhs.true41.if.end49_crit_edge, %if.end38.if.end49_crit_edge
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 3
  %67 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %br_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp50 = icmp eq i32 %68, 1
  br i1 %cmp50, label %land.lhs.true51, label %if.end49.if.end58_crit_edge

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

land.lhs.true51:                                  ; preds = %if.end49
  %whichfork52 = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %69 = ptrtoint ptr %whichfork52 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %whichfork52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp53 = icmp eq i32 %70, 1
  br i1 %cmp53, label %if.then54, label %land.lhs.true51.if.end58_crit_edge

land.lhs.true51.if.end58_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then54:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %info, align 8
  %73 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %irec, align 8
  tail call void @xchk_fblock_set_corrupt(ptr noundef %72, i32 noundef 1, i64 noundef %74) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %land.lhs.true51.if.end58_crit_edge, %if.end49.if.end58_crit_edge
  %75 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %info, align 8
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sm_flags, align 4
  %and = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %81 = ptrtoint ptr %is_rt to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %is_rt, align 8, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool64.not = icmp eq i8 %82, 0
  br i1 %tobool64.not, label %if.else, label %if.then65

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @xchk_bmap_rt_iextent_xref(ptr noundef %info, ptr noundef %irec)
  br label %if.end66

if.else:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @xchk_bmap_iextent_xref(ptr noundef %info, ptr noundef %irec)
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then65
  %83 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %irec, align 8
  %85 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %br_blockcount, align 8
  %add = add i64 %86, %84
  %87 = ptrtoint ptr %lastoff to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %add, ptr %lastoff, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end58.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_bmap_check_rmaps(ptr noundef %sc, i32 noundef %whichfork) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp = icmp eq i32 %whichfork, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8
  br label %cond.end6

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp1 = icmp eq i32 %whichfork, 1
  %ip3 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %2 = ptrtoint ptr %ip3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ip3, align 4
  br i1 %cmp1, label %cond.true2, label %cond.false4

cond.true2:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_afp, align 8
  br label %cond.end6

cond.false4:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_cowfp, align 4
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false4, %cond.true2, %cond.true
  %cond7 = phi ptr [ %i_df, %cond.true ], [ %5, %cond.true2 ], [ %7, %cond.false4 ]
  %8 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %9, i32 0, i32 61
  %10 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whichfork)
  %cmp8 = icmp eq i32 %whichfork, 2
  %or.cond = or i1 %cmp8, %tobool.i.not
  br i1 %or.cond, label %cond.end6.cleanup_crit_edge, label %lor.lhs.false9

cond.end6.cleanup_crit_edge:                      ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false9:                                   ; preds = %cond.end6
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %12 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sm_flags, align 4
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false9
  %ip10 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %16 = ptrtoint ptr %ip10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ip10, align 4
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %17, i32 0, i32 24
  %18 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %i_diflags, align 2
  %20 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool12.not = icmp eq i16 %20, 0
  br i1 %tobool12.not, label %if.end.if.end19_crit_edge, label %land.lhs.true

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %17, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool14.not = icmp ne ptr %24, null
  %25 = and i1 %cmp, %tobool14.not
  br i1 %25, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end.if.end19_crit_edge
  br i1 %cmp, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %i_df24 = getelementptr inbounds %struct.xfs_inode, ptr %17, i32 0, i32 8
  br label %cond.end36

cond.false25:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp26 = icmp eq i32 %whichfork, 1
  br i1 %cmp26, label %cond.true28, label %cond.false31

cond.true28:                                      ; preds = %cond.false25
  call void @__sanitizer_cov_trace_pc() #8
  %i_afp30 = getelementptr inbounds %struct.xfs_inode, ptr %17, i32 0, i32 6
  %26 = ptrtoint ptr %i_afp30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_afp30, align 8
  br label %cond.end36

cond.false31:                                     ; preds = %cond.false25
  call void @__sanitizer_cov_trace_pc() #8
  %i_cowfp33 = getelementptr inbounds %struct.xfs_inode, ptr %17, i32 0, i32 7
  %28 = ptrtoint ptr %i_cowfp33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_cowfp33, align 4
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false31, %cond.true28, %cond.true22
  %cond37 = phi ptr [ %i_df24, %cond.true22 ], [ %27, %cond.true28 ], [ %29, %cond.false31 ]
  %cmp38.not = icmp eq ptr %cond37, null
  br i1 %cmp38.not, label %cond.false43, label %cond.end36.cond.end44_crit_edge, !prof !19

cond.end36.cond.end44_crit_edge:                  ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end44

cond.false43:                                     ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 597) #6
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %cond.end36.cond.end44_crit_edge
  br i1 %cmp, label %if.then47, label %if.end53.thread

if.then47:                                        ; preds = %cond.end44
  %30 = ptrtoint ptr %ip10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ip10, align 4
  %i_size_seqcount.i = getelementptr inbounds %struct.xfs_inode, ptr %31, i32 0, i32 27, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.xfs_inode, ptr %31, i32 0, i32 27, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.xfs_inode, ptr %31, i32 0, i32 27, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.then47
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !20
  %and.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  %33 = tail call ptr @llvm.returnaddress(i32 0) #6
  %34 = ptrtoint ptr %33 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %34) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %34) #6
  tail call void @trace_hardirqs_on() #6
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = tail call ptr @llvm.returnaddress(i32 0) #6
  %36 = ptrtoint ptr %35 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %36) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %36) #6
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !21
  %and.i.i.i.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !19

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #6, !srcloc !22
  %38 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !24
  %40 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i115 = and i32 %41, 1
  %tobool.not.i = icmp eq i32 %and.i115, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %39, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %41, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  %42 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !26
  %44 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %45, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %if.end53, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end53:                                         ; preds = %while.end.i
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %cond7, i32 0, i32 6
  %46 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %47)
  %cmp55.not = icmp eq i8 %47, 3
  br i1 %cmp55.not, label %if.end53.if.end64_crit_edge, label %land.lhs.true57

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.end53.thread:                                  ; preds = %cond.end44
  %if_format117 = getelementptr inbounds %struct.xfs_ifork, ptr %cond7, i32 0, i32 6
  %48 = ptrtoint ptr %if_format117 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %if_format117, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %49)
  %cmp55.not118 = icmp eq i8 %49, 3
  br i1 %cmp55.not118, label %if.end53.thread.if.end64_crit_edge, label %if.end53.thread.lor.lhs.false60_crit_edge

if.end53.thread.lor.lhs.false60_crit_edge:        ; preds = %if.end53.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false60

if.end53.thread.if.end64_crit_edge:               ; preds = %if.end53.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

land.lhs.true57:                                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %cmp51 = icmp eq i64 %43, 0
  br i1 %cmp51, label %land.lhs.true57.cleanup_crit_edge, label %land.lhs.true57.lor.lhs.false60_crit_edge

land.lhs.true57.lor.lhs.false60_crit_edge:        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false60

land.lhs.true57.cleanup_crit_edge:                ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false60:                                  ; preds = %land.lhs.true57.lor.lhs.false60_crit_edge, %if.end53.thread.lor.lhs.false60_crit_edge
  %if_nextents = getelementptr inbounds %struct.xfs_ifork, ptr %cond7, i32 0, i32 7
  %50 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp61 = icmp sgt i32 %51, 0
  br i1 %cmp61, label %lor.lhs.false60.cleanup_crit_edge, label %lor.lhs.false60.if.end64_crit_edge

lor.lhs.false60.if.end64_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

lor.lhs.false60.cleanup_crit_edge:                ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %lor.lhs.false60.if.end64_crit_edge, %if.end53.thread.if.end64_crit_edge, %if.end53.if.end64_crit_edge
  %52 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sc, align 4
  %call66 = tail call ptr @xfs_perag_get(ptr noundef %53, i32 noundef 0) #6
  %cmp67.not126 = icmp eq ptr %call66, null
  br i1 %cmp67.not126, label %if.end64.cleanup_crit_edge, label %if.end64.for.body_crit_edge

if.end64.for.body_crit_edge:                      ; preds = %if.end64
  br label %for.body

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %if.end64.for.body_crit_edge
  %pag.0127 = phi ptr [ %call.i, %xfs_perag_next.exit.for.body_crit_edge ], [ %call66, %if.end64.for.body_crit_edge ]
  %call69 = tail call fastcc i32 @xchk_bmap_check_ag_rmaps(ptr noundef %sc, i32 noundef %whichfork, ptr noundef nonnull %pag.0127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %for.body.if.then82_crit_edge

for.body.if.then82_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then82

if.end72:                                         ; preds = %for.body
  %54 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sm, align 4
  %sm_flags74 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %sm_flags74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sm_flags74, align 4
  %and75 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %for.inc, label %if.end72.if.then82_crit_edge

if.end72.if.then82_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then82

for.inc:                                          ; preds = %if.end72
  %58 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sc, align 4
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %61, -1
  %62 = ptrtoint ptr %pag.0127 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pag.0127, align 4
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.0127, i32 0, i32 1
  %64 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pag_agno.i, align 4
  %add.i = add i32 %65, 1
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.0127) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp.i = icmp ugt i32 %add.i, %sub
  br i1 %cmp.i, label %for.inc.cleanup_crit_edge, label %xfs_perag_next.exit

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

xfs_perag_next.exit:                              ; preds = %for.inc
  %call.i = tail call ptr @xfs_perag_get(ptr noundef %63, i32 noundef %add.i) #6
  %cmp67.not = icmp eq ptr %call.i, null
  br i1 %cmp67.not, label %xfs_perag_next.exit.cleanup_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

xfs_perag_next.exit.cleanup_crit_edge:            ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then82:                                        ; preds = %if.end72.if.then82_crit_edge, %for.body.if.then82_crit_edge
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.0127) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %xfs_perag_next.exit.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %lor.lhs.false60.cleanup_crit_edge, %land.lhs.true57.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %cond.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false9.cleanup_crit_edge ], [ 0, %cond.end6.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %lor.lhs.false60.cleanup_crit_edge ], [ 0, %land.lhs.true57.cleanup_crit_edge ], [ %call69, %if.then82 ], [ -1, %if.end64.cleanup_crit_edge ], [ 0, %xfs_perag_next.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_fblock_xref_process_error(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iread_extents(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_bmbt_init_cursor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_btree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_bmapbt_rec(ptr nocapture noundef readonly %bs, ptr noundef %rec) #3 align 64 {
entry:
  %irec = alloca %struct.xfs_bmbt_irec, align 8
  %iext_irec = alloca %struct.xfs_bmbt_irec, align 8
  %icur = alloca %struct.xfs_iext_cursor, align 4
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irec) #6
  %0 = call ptr @memset(ptr %irec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iext_irec) #6
  %1 = call ptr @memset(ptr %iext_irec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #6
  %2 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !17
  %3 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !17
  %private = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 4
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private, align 8
  %cur = getelementptr inbounds %struct.xchk_btree, ptr %bs, i32 0, i32 1
  %7 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur, align 4
  %9 = getelementptr inbounds %struct.xfs_btree_cur, ptr %8, i32 0, i32 10
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #6
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bp, align 4
  %whichfork = getelementptr inbounds %struct.xchk_bmap_info, ptr %6, i32 0, i32 5
  %13 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %whichfork, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %14, label %cond.false5 [
    i32 0, label %cond.true
    i32 1, label %cond.true4
  ]

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %11, i32 0, i32 8
  br label %cond.end6

cond.true4:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_afp, align 8
  br label %cond.end6

cond.false5:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %11, i32 0, i32 7
  %18 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_cowfp, align 4
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true4, %cond.true
  %cond7 = phi ptr [ %i_df, %cond.true ], [ %17, %cond.true4 ], [ %19, %cond.false5 ]
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %8, i32 0, i32 1
  %20 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bc_mp, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %21, i32 0, i32 61
  %22 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %cond.end6.if.end22_crit_edge, label %land.lhs.true

cond.end6.if.end22_crit_edge:                     ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true:                                    ; preds = %cond.end6
  %ptr = getelementptr inbounds %struct.xfs_btree_cur, ptr %8, i32 1, i32 1
  %24 = ptrtoint ptr %ptr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %25)
  %cmp10 = icmp eq i16 %25, 1
  br i1 %cmp10, label %for.cond.preheader, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.cond.preheader:                               ; preds = %land.lhs.true
  %26 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cur, align 4
  %bc_nlevels73 = getelementptr inbounds %struct.xfs_btree_cur, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %bc_nlevels73 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bc_nlevels73, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp1476 = icmp ugt i8 %29, 1
  br i1 %cmp1476, label %for.body.lr.ph, label %for.cond.preheader.if.end22_crit_edge

for.cond.preheader.if.end22_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %11, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %30 = phi ptr [ %27, %for.body.lr.ph ], [ %40, %for.inc.for.body_crit_edge ]
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call17 = call ptr @xfs_btree_get_block(ptr noundef %30, i32 noundef %i.077, ptr noundef nonnull %bp) #6
  %bb_owner = getelementptr inbounds %struct.xfs_btree_block, ptr %call17, i32 0, i32 3, i32 0, i32 5
  %31 = ptrtoint ptr %bb_owner to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bb_owner, align 8
  %33 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %34)
  %cmp18.not = icmp eq i64 %32, %34
  br i1 %cmp18.not, label %for.body.for.inc_crit_edge, label %if.then20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bs, align 8
  %37 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %whichfork, align 4
  call void @xchk_fblock_set_corrupt(ptr noundef %36, i32 noundef %38, i64 noundef 0) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.077, 1
  %39 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur, align 4
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bc_nlevels, align 8
  %conv13 = zext i8 %42 to i32
  %sub = add nsw i32 %conv13, -1
  %cmp14 = icmp slt i32 %inc, %sub
  br i1 %cmp14, label %for.inc.for.body_crit_edge, label %for.inc.if.end22_crit_edge

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end22:                                         ; preds = %for.inc.if.end22_crit_edge, %for.cond.preheader.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %cond.end6.if.end22_crit_edge
  %was_loaded = getelementptr inbounds %struct.xchk_bmap_info, ptr %6, i32 0, i32 4
  %43 = ptrtoint ptr %was_loaded to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %was_loaded, align 2, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not = icmp eq i8 %44, 0
  br i1 %tobool.not, label %if.end22.cleanup_crit_edge, label %if.end24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end22
  call void @xfs_bmbt_disk_get_all(ptr noundef %rec, ptr noundef nonnull %irec) #6
  %45 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %irec, align 8
  %call25 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %11, ptr noundef %cond7, i64 noundef %46, ptr noundef nonnull %icur, ptr noundef nonnull %iext_irec) #6
  br i1 %call25, label %lor.lhs.false, label %if.end24.if.then42_crit_edge

if.end24.if.then42_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

lor.lhs.false:                                    ; preds = %if.end24
  %47 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %irec, align 8
  %49 = ptrtoint ptr %iext_irec to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %iext_irec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %50)
  %cmp28.not = icmp eq i64 %48, %50
  br i1 %cmp28.not, label %lor.lhs.false30, label %lor.lhs.false.if.then42_crit_edge

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

lor.lhs.false30:                                  ; preds = %lor.lhs.false
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 1
  %51 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %br_startblock, align 8
  %br_startblock31 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %iext_irec, i32 0, i32 1
  %53 = ptrtoint ptr %br_startblock31 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %br_startblock31, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %54)
  %cmp32.not = icmp eq i64 %52, %54
  br i1 %cmp32.not, label %lor.lhs.false34, label %lor.lhs.false30.if.then42_crit_edge

lor.lhs.false30.if.then42_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

lor.lhs.false34:                                  ; preds = %lor.lhs.false30
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  %55 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %br_blockcount, align 8
  %br_blockcount35 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %iext_irec, i32 0, i32 2
  %57 = ptrtoint ptr %br_blockcount35 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %br_blockcount35, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %58)
  %cmp36.not = icmp eq i64 %56, %58
  br i1 %cmp36.not, label %lor.lhs.false38, label %lor.lhs.false34.if.then42_crit_edge

lor.lhs.false34.if.then42_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 3
  %59 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %br_state, align 8
  %br_state39 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %iext_irec, i32 0, i32 3
  %61 = ptrtoint ptr %br_state39 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %br_state39, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp40.not = icmp eq i32 %60, %62
  br i1 %cmp40.not, label %lor.lhs.false38.cleanup_crit_edge, label %lor.lhs.false38.if.then42_crit_edge

lor.lhs.false38.if.then42_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

lor.lhs.false38.cleanup_crit_edge:                ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then42:                                        ; preds = %lor.lhs.false38.if.then42_crit_edge, %lor.lhs.false34.if.then42_crit_edge, %lor.lhs.false30.if.then42_crit_edge, %lor.lhs.false.if.then42_crit_edge, %if.end24.if.then42_crit_edge
  %63 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bs, align 8
  %65 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %whichfork, align 4
  %67 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %irec, align 8
  call void @xchk_fblock_set_corrupt(ptr noundef %64, i32 noundef %66, i64 noundef %68) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %lor.lhs.false38.cleanup_crit_edge, %if.end22.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iext_irec) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irec) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_del_cursor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_get_block(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bmbt_disk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_lookup_extent(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_fileext(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_bmap_dirattr_extent(ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %irec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %2 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_vnode.i, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %whichfork = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %whichfork, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp2.not = icmp eq i32 %6, 1
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %irec, align 8
  %call4 = tail call zeroext i1 @xfs_verify_dablk(ptr noundef %1, i64 noundef %8) #6
  br i1 %call4, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 8
  %whichfork6 = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %11 = ptrtoint ptr %whichfork6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %whichfork6, align 4
  %13 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %irec, align 8
  tail call void @xchk_fblock_set_corrupt(ptr noundef %10, i32 noundef %12, i64 noundef %14) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %15 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %irec, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  %17 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %br_blockcount, align 8
  %add = add i64 %16, -1
  %sub = add i64 %add, %18
  %call10 = tail call zeroext i1 @xfs_verify_dablk(ptr noundef %1, i64 noundef %sub) #6
  br i1 %call10, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info, align 8
  %whichfork13 = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %21 = ptrtoint ptr %whichfork13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %whichfork13, align 4
  tail call void @xchk_fblock_set_corrupt(ptr noundef %20, i32 noundef %22, i64 noundef %sub) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_rtext(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_fsbext(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_bmap_rt_iextent_xref(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %irec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 1
  %2 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %br_startblock, align 8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  %4 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %br_blockcount, align 8
  %conv = trunc i64 %5 to i32
  tail call void @xchk_xref_is_used_rt_space(ptr noundef %1, i64 noundef %3, i32 noundef %conv) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_bmap_iextent_xref(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %irec) unnamed_addr #3 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 1
  %4 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %br_startblock, align 8
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sb_agblklog, align 4
  %conv = zext i8 %7 to i32
  %sh_prom = zext i8 %7 to i64
  %shr = lshr i64 %5, %sh_prom
  %conv2 = trunc i64 %shr to i32
  %notmask.i = shl nsw i32 -1, %conv
  %sub.i = xor i32 %notmask.i, -1
  %8 = trunc i64 %5 to i32
  %conv8 = and i32 %sub.i, %8
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  %9 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %br_blockcount, align 8
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %1, i32 0, i32 10
  %call.i = tail call i32 @xchk_ag_init(ptr noundef %1, i32 noundef %conv2, ptr noundef %sa) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -2
  %spec.select.i = select i1 %cmp.i, i32 -117, i32 %call.i
  %11 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select.i, ptr %error, align 4
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 8
  %whichfork = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %14 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %whichfork, align 4
  %16 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %irec, align 8
  %call14 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %13, i32 noundef %15, i64 noundef %17, ptr noundef nonnull %error) #6
  br i1 %call14, label %if.end, label %entry.out_free_crit_edge

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end:                                           ; preds = %entry
  %conv9 = trunc i64 %10 to i32
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 8
  call void @xchk_xref_is_used_space(ptr noundef %19, i32 noundef %conv8, i32 noundef %conv9) #6
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info, align 8
  call void @xchk_xref_is_not_inode_chunk(ptr noundef %21, i32 noundef %conv8, i32 noundef %conv9) #6
  call fastcc void @xchk_bmap_xref_rmap(ptr noundef %info, ptr noundef %irec, i32 noundef %conv8)
  %22 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %whichfork, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %23, label %if.end.out_free_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb23_crit_edge
    i32 2, label %sw.bb27
  ]

if.end.sw.bb23_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb23

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

sw.bb:                                            ; preds = %if.end
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 8
  %ip19 = getelementptr inbounds %struct.xfs_scrub, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %ip19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ip19, align 4
  %i_diflags2.i = getelementptr inbounds %struct.xfs_inode, ptr %28, i32 0, i32 25
  %29 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_diflags2.i, align 8
  %and.i = and i64 %30, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %sw.bb.sw.bb23_crit_edge, label %sw.bb.out_free_crit_edge

sw.bb.out_free_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

sw.bb.sw.bb23_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb23

sw.bb23:                                          ; preds = %sw.bb.sw.bb23_crit_edge, %if.end.sw.bb23_crit_edge
  %31 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %info, align 8
  %33 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %br_blockcount, align 8
  %conv26 = trunc i64 %34 to i32
  call void @xchk_xref_is_not_shared(ptr noundef %32, i32 noundef %conv8, i32 noundef %conv26) #6
  br label %out_free

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %info, align 8
  %37 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %br_blockcount, align 8
  %conv30 = trunc i64 %38 to i32
  call void @xchk_xref_is_cow_staging(ptr noundef %36, i32 noundef %conv8, i32 noundef %conv30) #6
  br label %out_free

out_free:                                         ; preds = %sw.bb27, %sw.bb23, %sw.bb.out_free_crit_edge, %if.end.out_free_crit_edge, %entry.out_free_crit_edge
  %39 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %info, align 8
  %sa33 = getelementptr inbounds %struct.xfs_scrub, ptr %40, i32 0, i32 10
  call void @xchk_ag_free(ptr noundef %40, ptr noundef %sa33) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_dablk(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_used_rt_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_used_space(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_not_inode_chunk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_bmap_xref_rmap(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %irec, i32 noundef %agbno) unnamed_addr #3 align 64 {
entry:
  %has_rmap.i = alloca i32, align 4
  %error.i = alloca i32, align 4
  %rmap = alloca %struct.xfs_rmap_irec, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rmap) #6
  %0 = call ptr @memset(ptr %rmap, i32 255, i32 32)
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 8
  %rmap_cur = getelementptr inbounds %struct.xfs_scrub, ptr %2, i32 0, i32 10, i32 8
  %3 = ptrtoint ptr %rmap_cur to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmap_cur, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sm, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sm_flags.i, align 4
  %and.i = and i32 %8, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %whichfork = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 5
  %9 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %whichfork, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %if.end.if.end4_crit_edge, label %if.else

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %2, i32 0, i32 5
  %11 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ip, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_ino, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end.if.end4_crit_edge
  %owner.0 = phi i64 [ %14, %if.else ], [ -9, %if.end.if.end4_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %has_rmap.i) #6
  %15 = ptrtoint ptr %has_rmap.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %has_rmap.i, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #6
  %16 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %error.i, align 4, !annotation !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp eq i32 %10, 1
  %spec.select.i = zext i1 %cmp.i to i32
  %br_state.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 3
  %17 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %br_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp1.i = icmp eq i32 %18, 1
  %or3.i = or i32 %spec.select.i, 4
  %rflags.1.i = select i1 %cmp1.i, i32 %or3.i, i32 %spec.select.i
  br i1 %cmp, label %if.end4.if.end8.i_crit_edge, label %if.else.i

if.end4.if.end8.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %irec, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.end4.if.end8.i_crit_edge
  %offset.0.i = phi i64 [ %20, %if.else.i ], [ 0, %if.end4.if.end8.i_crit_edge ]
  %is_shared.i = getelementptr inbounds %struct.xchk_bmap_info, ptr %info, i32 0, i32 3
  %21 = ptrtoint ptr %is_shared.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_shared.i, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end17.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end8.i
  %call.i = call i32 @xfs_rmap_lookup_le_range(ptr noundef nonnull %4, i32 noundef %agbno, i64 noundef %owner.0, i64 noundef %offset.0.i, i32 noundef %rflags.1.i, ptr noundef nonnull %rmap, ptr noundef nonnull %has_rmap.i) #6
  %23 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i, ptr %error.i, align 4
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 8
  %rmap_cur13.i = getelementptr inbounds %struct.xfs_scrub, ptr %25, i32 0, i32 10, i32 8
  %call14.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %25, ptr noundef nonnull %error.i, ptr noundef %rmap_cur13.i) #6
  br i1 %call14.i, label %if.then9.i.out.i_crit_edge, label %if.then9.i.xchk_bmap_get_rmap.exit.thread_crit_edge

if.then9.i.xchk_bmap_get_rmap.exit.thread_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xchk_bmap_get_rmap.exit.thread

if.then9.i.out.i_crit_edge:                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end17.i:                                       ; preds = %if.end8.i
  %call21.i = call i32 @xfs_rmap_lookup_le(ptr noundef nonnull %4, i32 noundef %agbno, i32 noundef 0, i64 noundef %owner.0, i64 noundef %offset.0.i, i32 noundef %rflags.1.i, ptr noundef nonnull %has_rmap.i) #6
  %26 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call21.i, ptr %error.i, align 4
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info, align 8
  %rmap_cur25.i = getelementptr inbounds %struct.xfs_scrub, ptr %28, i32 0, i32 10, i32 8
  %call26.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %28, ptr noundef nonnull %error.i, ptr noundef %rmap_cur25.i) #6
  br i1 %call26.i, label %if.end28.i, label %if.end17.i.xchk_bmap_get_rmap.exit.thread_crit_edge

if.end17.i.xchk_bmap_get_rmap.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xchk_bmap_get_rmap.exit.thread

if.end28.i:                                       ; preds = %if.end17.i
  %29 = ptrtoint ptr %has_rmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %has_rmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool29.not.i = icmp eq i32 %30, 0
  br i1 %tobool29.not.i, label %if.end28.i.xchk_bmap_get_rmap.exit_crit_edge, label %if.end31.i

if.end28.i.xchk_bmap_get_rmap.exit_crit_edge:     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xchk_bmap_get_rmap.exit

if.end31.i:                                       ; preds = %if.end28.i
  %31 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %info, align 8
  %rmap_cur34.i = getelementptr inbounds %struct.xfs_scrub, ptr %32, i32 0, i32 10, i32 8
  %33 = ptrtoint ptr %rmap_cur34.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmap_cur34.i, align 4
  %call35.i = call i32 @xfs_rmap_get_rec(ptr noundef %34, ptr noundef nonnull %rmap, ptr noundef nonnull %has_rmap.i) #6
  %35 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call35.i, ptr %error.i, align 4
  %36 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info, align 8
  %rmap_cur39.i = getelementptr inbounds %struct.xfs_scrub, ptr %37, i32 0, i32 10, i32 8
  %call40.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %37, ptr noundef nonnull %error.i, ptr noundef %rmap_cur39.i) #6
  br i1 %call40.i, label %if.end31.i.out.i_crit_edge, label %if.end31.i.xchk_bmap_get_rmap.exit.thread_crit_edge

if.end31.i.xchk_bmap_get_rmap.exit.thread_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xchk_bmap_get_rmap.exit.thread

if.end31.i.out.i_crit_edge:                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

out.i:                                            ; preds = %if.end31.i.out.i_crit_edge, %if.then9.i.out.i_crit_edge
  %38 = ptrtoint ptr %has_rmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr.i = load i32, ptr %has_rmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool43.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool43.not.i, label %out.i.xchk_bmap_get_rmap.exit_crit_edge, label %xchk_bmap_get_rmap.exit.thread134

out.i.xchk_bmap_get_rmap.exit_crit_edge:          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xchk_bmap_get_rmap.exit

xchk_bmap_get_rmap.exit.thread134:                ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %has_rmap.i) #6
  br label %if.end7

xchk_bmap_get_rmap.exit.thread:                   ; preds = %if.end31.i.xchk_bmap_get_rmap.exit.thread_crit_edge, %if.end17.i.xchk_bmap_get_rmap.exit.thread_crit_edge, %if.then9.i.xchk_bmap_get_rmap.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %has_rmap.i) #6
  br label %cleanup

xchk_bmap_get_rmap.exit:                          ; preds = %out.i.xchk_bmap_get_rmap.exit_crit_edge, %if.end28.i.xchk_bmap_get_rmap.exit_crit_edge
  %39 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %info, align 8
  %41 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %whichfork, align 4
  %43 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %irec, align 8
  call void @xchk_fblock_xref_set_corrupt(ptr noundef %40, i32 noundef %42, i64 noundef %44) #6
  %45 = ptrtoint ptr %has_rmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %has_rmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool49.i.not = icmp eq i32 %.pr, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %has_rmap.i) #6
  br i1 %tobool49.i.not, label %xchk_bmap_get_rmap.exit.cleanup_crit_edge, label %xchk_bmap_get_rmap.exit.if.end7_crit_edge

xchk_bmap_get_rmap.exit.if.end7_crit_edge:        ; preds = %xchk_bmap_get_rmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

xchk_bmap_get_rmap.exit.cleanup_crit_edge:        ; preds = %xchk_bmap_get_rmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %xchk_bmap_get_rmap.exit.if.end7_crit_edge, %xchk_bmap_get_rmap.exit.thread134
  %46 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rmap, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rmap, i32 0, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %agbno)
  %cmp10 = icmp ugt i32 %47, %agbno
  br i1 %cmp10, label %if.end7.if.then17_crit_edge, label %lor.lhs.false12

if.end7.if.then17_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

lor.lhs.false12:                                  ; preds = %if.end7
  %conv = zext i32 %47 to i64
  %48 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rm_blockcount, align 4
  %conv8 = zext i32 %49 to i64
  %add = add nuw nsw i64 %conv8, %conv
  %conv13 = zext i32 %agbno to i64
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  %50 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %br_blockcount, align 8
  %add14 = add i64 %51, %conv13
  call void @__sanitizer_cov_trace_cmp8(i64 %add14, i64 %add)
  %cmp15 = icmp ugt i64 %add14, %add
  br i1 %cmp15, label %lor.lhs.false12.if.then17_crit_edge, label %lor.lhs.false12.if.end20_crit_edge

lor.lhs.false12.if.end20_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

lor.lhs.false12.if.then17_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false12.if.then17_crit_edge, %if.end7.if.then17_crit_edge
  %52 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %info, align 8
  %54 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %whichfork, align 4
  %56 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %irec, align 8
  call void @xchk_fblock_xref_set_corrupt(ptr noundef %53, i32 noundef %55, i64 noundef %57) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %lor.lhs.false12.if.end20_crit_edge
  %58 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %whichfork, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp22.not = icmp eq i32 %59, 2
  br i1 %cmp22.not, label %if.end20.if.end43_crit_edge, label %if.then24

if.end20.if.end43_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then24:                                        ; preds = %if.end20
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rmap, i32 0, i32 3
  %60 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rm_offset, align 8
  %62 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %irec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %63)
  %cmp30 = icmp ugt i64 %61, %63
  br i1 %cmp30, label %if.then24.if.then38_crit_edge, label %lor.lhs.false32

if.then24.if.then38_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

lor.lhs.false32:                                  ; preds = %if.then24
  %64 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rm_blockcount, align 4
  %conv26 = zext i32 %65 to i64
  %add27 = add i64 %61, %conv26
  %br_blockcount34 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  %66 = ptrtoint ptr %br_blockcount34 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %br_blockcount34, align 8
  %add35 = add i64 %67, %63
  call void @__sanitizer_cov_trace_cmp8(i64 %add35, i64 %add27)
  %cmp36 = icmp ugt i64 %add35, %add27
  br i1 %cmp36, label %lor.lhs.false32.if.then38_crit_edge, label %lor.lhs.false32.if.end43_crit_edge

lor.lhs.false32.if.end43_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

lor.lhs.false32.if.then38_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

if.then38:                                        ; preds = %lor.lhs.false32.if.then38_crit_edge, %if.then24.if.then38_crit_edge
  %68 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %info, align 8
  call void @xchk_fblock_xref_set_corrupt(ptr noundef %69, i32 noundef %59, i64 noundef %63) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %lor.lhs.false32.if.end43_crit_edge, %if.end20.if.end43_crit_edge
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rmap, i32 0, i32 2
  %70 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %rm_owner, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %owner.0)
  %cmp44.not = icmp eq i64 %71, %owner.0
  br i1 %cmp44.not, label %if.end43.if.end50_crit_edge, label %if.then46

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %info, align 8
  %74 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %whichfork, align 4
  %76 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %irec, align 8
  call void @xchk_fblock_xref_set_corrupt(ptr noundef %73, i32 noundef %75, i64 noundef %77) #6
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.end43.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9, i64 %owner.0)
  %cmp51.not = icmp eq i64 %owner.0, -9
  br i1 %cmp51.not, label %if.end50.if.end67_crit_edge, label %land.lhs.true

if.end50.if.end67_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

land.lhs.true:                                    ; preds = %if.end50
  %78 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %br_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp53 = icmp ne i32 %79, 1
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rmap, i32 0, i32 4
  %80 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rm_flags, align 8
  %82 = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %83 = icmp ne i32 %82, 0
  %cmp61.not = xor i1 %cmp53, %83
  br i1 %cmp61.not, label %land.lhs.true.if.end67_crit_edge, label %if.then63

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then63:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %info, align 8
  %86 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %whichfork, align 4
  %88 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %irec, align 8
  call void @xchk_fblock_xref_set_corrupt(ptr noundef %85, i32 noundef %87, i64 noundef %89) #6
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %land.lhs.true.if.end67_crit_edge, %if.end50.if.end67_crit_edge
  %90 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %whichfork, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp69 = icmp ne i32 %91, 1
  %rm_flags75 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rmap, i32 0, i32 4
  %92 = ptrtoint ptr %rm_flags75 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rm_flags75, align 8
  %94 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %95 = icmp ne i32 %94, 0
  %cmp82.not = xor i1 %cmp69, %95
  br i1 %cmp82.not, label %if.end67.if.end88_crit_edge, label %if.then84

if.end67.if.end88_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then84:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %info, align 8
  %98 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %irec, align 8
  call void @xchk_fblock_xref_set_corrupt(ptr noundef %97, i32 noundef %91, i64 noundef %99) #6
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end67.if.end88_crit_edge
  %100 = ptrtoint ptr %rm_flags75 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rm_flags75, align 8
  %and90 = and i32 %101, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end88.cleanup_crit_edge, label %if.then92

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %info, align 8
  %104 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %whichfork, align 4
  %106 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %irec, align 8
  call void @xchk_fblock_xref_set_corrupt(ptr noundef %103, i32 noundef %105, i64 noundef %107) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %if.end88.cleanup_crit_edge, %xchk_bmap_get_rmap.exit.cleanup_crit_edge, %xchk_bmap_get_rmap.exit.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rmap) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_not_shared(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_cow_staging(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ag_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_ag_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_fblock_xref_set_corrupt(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_lookup_le_range(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_should_check_xref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_lookup_le(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_get_rec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_bmap_check_ag_rmaps(ptr noundef %sc, i32 noundef %whichfork, ptr noundef %pag) unnamed_addr #3 align 64 {
entry:
  %sbcri = alloca %struct.xchk_bmap_check_rmap_info, align 4
  %agf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sbcri) #6
  %0 = getelementptr inbounds i8, ptr %sbcri, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agf) #6
  %2 = ptrtoint ptr %agf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %agf, align 4, !annotation !17
  %3 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc, align 4
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %5 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tp, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %7 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pag_agno, align 4
  %call = call i32 @xfs_alloc_read_agf(ptr noundef %4, ptr noundef %6, i32 noundef %8, i32 noundef 0, ptr noundef nonnull %agf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = getelementptr inbounds %struct.xchk_bmap_check_rmap_info, ptr %sbcri, i32 0, i32 1
  %10 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc, align 4
  %12 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tp, align 4
  %14 = ptrtoint ptr %agf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %agf, align 4
  %call3 = call ptr @xfs_rmapbt_init_cursor(ptr noundef %11, ptr noundef %13, ptr noundef %15, ptr noundef %pag) #6
  %16 = ptrtoint ptr %sbcri to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sc, ptr %sbcri, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %whichfork, ptr %9, align 4
  %call6 = call i32 @xfs_rmap_query_all(ptr noundef %call3, ptr noundef nonnull @xchk_bmap_check_rmap, ptr noundef nonnull %sbcri) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %call6)
  %cmp = icmp eq i32 %call6, -125
  %spec.store.select = select i1 %cmp, i32 0, i32 %call6
  call void @xfs_btree_del_cursor(ptr noundef %call3, i32 noundef %spec.store.select) #6
  %18 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tp, align 4
  %20 = ptrtoint ptr %agf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %agf, align 4
  call void @xfs_trans_brelse(ptr noundef %19, ptr noundef %21) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agf) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sbcri) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_read_agf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_rmapbt_init_cursor(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_query_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_bmap_check_rmap(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %rec, ptr noundef %priv) #3 align 64 {
entry:
  %irec = alloca %struct.xfs_bmbt_irec, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irec) #6
  %0 = call ptr @memset(ptr %irec, i32 255, i32 32)
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 2
  %3 = ptrtoint ptr %rm_owner to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rm_owner, align 8
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ip, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %8)
  %cmp.not = icmp eq i64 %4, %8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %whichfork = getelementptr inbounds %struct.xchk_bmap_check_rmap_info, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %whichfork, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp2 = icmp eq i32 %10, 1
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 4
  %11 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rm_flags, align 8
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  %tobool4.not = xor i1 %cmp2, %14
  %and8 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond = select i1 %tobool4.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13 = icmp eq i32 %10, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 8
  br label %cond.end23

cond.false:                                       ; preds = %if.end11
  br i1 %cmp2, label %cond.true19, label %cond.false21

cond.true19:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 6
  %15 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_afp, align 8
  br label %cond.end23

cond.false21:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 7
  %17 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_cowfp, align 4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false21, %cond.true19, %cond.true
  %cond24 = phi ptr [ %i_df, %cond.true ], [ %16, %cond.true19 ], [ %18, %cond.false21 ]
  %tobool25.not = icmp eq ptr %cond24, null
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 3
  %19 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rm_offset, align 8
  br i1 %tobool25.not, label %if.then26, label %if.end28

if.then26:                                        ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xchk_fblock_set_corrupt(ptr noundef %2, i32 noundef %10, i64 noundef %20) #6
  br label %out

if.end28:                                         ; preds = %cond.end23
  %icur = getelementptr inbounds %struct.xchk_bmap_check_rmap_info, ptr %priv, i32 0, i32 2
  %call = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %6, ptr noundef nonnull %cond24, i64 noundef %20, ptr noundef %icur, ptr noundef nonnull %irec) #6
  br i1 %call, label %while.body.lr.ph, label %if.end35

if.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %whichfork, align 4
  %23 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rm_offset, align 8
  call void @xchk_fblock_set_corrupt(ptr noundef %2, i32 noundef %22, i64 noundef %24) #6
  br label %out

while.body.lr.ph:                                 ; preds = %if.end28
  %25 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %25)
  %check_rec.sroa.11133.0.copyload134 = load i64, ptr %rm_offset, align 8
  %check_rec.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %rec, i32 4
  %26 = ptrtoint ptr %check_rec.sroa.7.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %check_rec.sroa.7.0.copyload129 = load i32, ptr %check_rec.sroa.7.0..sroa_idx, align 4
  %27 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %27)
  %check_rec.sroa.0.0.copyload128 = load i32, ptr %rec, align 8
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 1
  %28 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %2, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end79.while.body_crit_edge, %while.body.lr.ph
  %check_rec.sroa.0.0149 = phi i32 [ %check_rec.sroa.0.0.copyload128, %while.body.lr.ph ], [ %conv67, %if.end79.while.body_crit_edge ]
  %check_rec.sroa.7.0148 = phi i32 [ %check_rec.sroa.7.0.copyload129, %while.body.lr.ph ], [ %conv74, %if.end79.while.body_crit_edge ]
  %check_rec.sroa.11133.0146 = phi i64 [ %check_rec.sroa.11133.0.copyload134, %while.body.lr.ph ], [ %add70, %if.end79.while.body_crit_edge ]
  %29 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %irec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %check_rec.sroa.11133.0146)
  %cmp38.not = icmp eq i64 %30, %check_rec.sroa.11133.0146
  br i1 %cmp38.not, label %while.body.if.end43_crit_edge, label %if.then40

while.body.if.end43_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then40:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %whichfork, align 4
  call void @xchk_fblock_set_corrupt(ptr noundef %2, i32 noundef %32, i64 noundef %check_rec.sroa.11133.0146) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %while.body.if.end43_crit_edge
  %33 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %br_startblock, align 8
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %28, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pag_agno, align 4
  %conv44 = zext i32 %38 to i64
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %2, align 4
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %40, i32 0, i32 24
  %41 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sb_agblklog, align 4
  %sh_prom = zext i8 %42 to i64
  %shl = shl i64 %conv44, %sh_prom
  %conv46 = zext i32 %check_rec.sroa.0.0149 to i64
  %or = or i64 %shl, %conv46
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %or)
  %cmp47.not = icmp eq i64 %34, %or
  br i1 %cmp47.not, label %if.end43.if.end52_crit_edge, label %if.then49

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %whichfork, align 4
  call void @xchk_fblock_set_corrupt(ptr noundef %2, i32 noundef %44, i64 noundef %check_rec.sroa.11133.0146) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end43.if.end52_crit_edge
  %45 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %br_blockcount, align 8
  %conv53 = zext i32 %check_rec.sroa.7.0148 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %conv53)
  %cmp54 = icmp ugt i64 %46, %conv53
  br i1 %cmp54, label %if.then56, label %if.end52.if.end59_crit_edge

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %whichfork, align 4
  call void @xchk_fblock_set_corrupt(ptr noundef %2, i32 noundef %48, i64 noundef %check_rec.sroa.11133.0146) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end52.if.end59_crit_edge
  %49 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sm_flags, align 4
  %and60 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.out_crit_edge

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end63:                                         ; preds = %if.end59
  %53 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %br_blockcount, align 8
  %55 = trunc i64 %54 to i32
  %conv74 = sub i32 %check_rec.sroa.7.0148, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv74)
  %cmp76 = icmp eq i32 %conv74, 0
  br i1 %cmp76, label %if.end63.out_crit_edge, label %if.end79

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end79:                                         ; preds = %if.end63
  %add70 = add i64 %54, %check_rec.sroa.11133.0146
  %conv67 = add i32 %check_rec.sroa.0.0149, %55
  call void @xfs_iext_next(ptr noundef nonnull %cond24, ptr noundef %icur) #6
  %call.i = call zeroext i1 @xfs_iext_get_extent(ptr noundef nonnull %cond24, ptr noundef %icur, ptr noundef nonnull %irec) #6
  br i1 %call.i, label %if.end79.while.body_crit_edge, label %if.then84

if.end79.while.body_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %whichfork to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %whichfork, align 4
  call void @xchk_fblock_set_corrupt(ptr noundef %2, i32 noundef %57, i64 noundef %add70) #6
  br label %out

out:                                              ; preds = %if.then84, %if.end63.out_crit_edge, %if.end59.out_crit_edge, %if.end35, %if.then26
  %sm88 = getelementptr inbounds %struct.xfs_scrub, ptr %2, i32 0, i32 1
  %58 = ptrtoint ptr %sm88 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sm88, align 4
  %sm_flags89 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %sm_flags89 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sm_flags89, align 4
  %and90 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %. = select i1 %tobool91.not, i32 0, i32 -125
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %., %out ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irec) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.named.register.sp = !{!7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/scrub/bmap.c", i32 670, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/scrub/common.h", i32 24, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/scrub/bmap.c", i32 597, i32 2}
!7 = !{!"sp"}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
!18 = !{i8 0, i8 2}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 1040283, i64 1040344}
!21 = !{i64 1043015}
!22 = !{i64 1043300}
!23 = !{i64 2153135803}
!24 = !{i64 2153135645}
!25 = !{i64 2153135973}
!26 = !{i64 2149799653}
