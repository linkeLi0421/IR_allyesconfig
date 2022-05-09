; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/attr.c_pt.bc'
source_filename = "../fs/xfs/scrub/attr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xchk_xattr = type { %struct.xfs_attr_list_context, ptr }
%struct.xfs_attr_list_context = type { ptr, ptr, %struct.xfs_attrlist_cursor_kern, ptr, i32, i8, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.xfs_attrlist_cursor_kern = type { i32, i32, i32, i16, i8, i8 }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xchk_da_btree = type { %struct.xfs_da_args, [5 x i32], [5 x i32], ptr, ptr, ptr, i32, i32, i32 }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_da_state = type { ptr, ptr, %struct.xfs_da_state_path, %struct.xfs_da_state_path, i8, i8, i8, %struct.xfs_da_state_blk }
%struct.xfs_da_state_path = type { i32, [5 x %struct.xfs_da_state_blk] }
%struct.xfs_da_state_blk = type { ptr, i32, i64, i32, i32, i32 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_da_blkinfo = type { i32, i32, i16, i16 }
%struct.xfs_attr3_leafblock = type { %struct.xfs_attr3_leaf_hdr, [1 x %struct.xfs_attr_leaf_entry] }
%struct.xfs_attr3_leaf_hdr = type { %struct.xfs_da3_blkinfo, i16, i16, i16, i8, i8, [3 x %struct.xfs_attr_leaf_map], i32 }
%struct.xfs_da3_blkinfo = type { %struct.xfs_da_blkinfo, i32, i64, i64, %struct.uuid_t, i64 }
%struct.xfs_attr_leaf_map = type { i16, i16 }
%struct.xfs_attr_leaf_entry = type { i32, i16, i8, i8 }
%struct.xfs_attr_leafblock = type { %struct.xfs_attr_leaf_hdr, [1 x %struct.xfs_attr_leaf_entry] }
%struct.xfs_attr_leaf_hdr = type { %struct.xfs_da_blkinfo, i16, i16, i16, i8, i8, [3 x %struct.xfs_attr_leaf_map] }
%struct.xfs_attr_leaf_name_local = type { i16, i8, [1 x i8] }
%struct.xfs_attr_leaf_name_remote = type { i32, i32, i8, [1 x i8] }
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
%struct.kuid_t = type { i32 }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
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
%struct.xchk_xattr_buf = type { i32, [0 x i8] }
%struct.xfs_attr3_icleaf_hdr = type { i32, i32, i16, i16, i16, i32, i8, [3 x %struct.anon.92] }
%struct.anon.92 = type { i16, i16 }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"blk->magic == XFS_ATTR_LEAF_MAGIC\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/xfs/scrub/attr.c\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/common.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private constant [23 x i8] c"../fs/xfs/scrub/attr.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 417, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [25 x i8] c"../fs/xfs/scrub/common.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 24, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_setup_xattr(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %buf.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 6
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf.i, align 4
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  %m_attr_geo.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %m_attr_geo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_attr_geo.i, align 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %sub.i = add i32 %9, 31
  %div26.i = lshr i32 %sub.i, 5
  %mul.i = mul nuw nsw i32 %div26.i, 12
  %10 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 65536) #7
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.end5.i_crit_edge, label %if.then.i

if.then.if.end5.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i:                                        ; preds = %if.then
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp2.not.i = icmp ugt i32 %10, %12
  br i1 %cmp2.not.i, label %if.end.i, label %if.then.i.if.end3_crit_edge

if.then.i.if.end3_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kvfree(ptr noundef nonnull %3) #7
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %buf.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.then.if.end5.i_crit_edge
  %add6.i = add nuw nsw i32 %10, 4
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add6.i, i32 noundef 3264, i32 noundef -1) #10
  %tobool7.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %10, ptr %call.i.i, align 4
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %buf.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end9.i, %if.then.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call4 = tail call i32 @xchk_setup_inode_contents(ptr noundef %sc, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end5.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -12, %if.end5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_inode_contents(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_xattr(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %sx = alloca %struct.xchk_xattr, align 4
  %last_checked = alloca i32, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %sx) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_checked) #7
  %0 = ptrtoint ptr %last_checked to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %last_checked, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ip, align 4
  %call = tail call i32 @xfs_inode_hasattr(ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds i8, ptr %sx, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 60)
  %call1 = call i32 @xchk_da_btree(ptr noundef %sc, i32 noundef 1, ptr noundef nonnull @xchk_xattr_rec, ptr noundef nonnull %last_checked) #7
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %if.end
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %6 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sm_flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip, align 4
  %dp = getelementptr inbounds %struct.xfs_attr_list_context, ptr %sx, i32 0, i32 1
  %12 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dp, align 4
  %resynch = getelementptr inbounds %struct.xfs_attr_list_context, ptr %sx, i32 0, i32 11
  %13 = ptrtoint ptr %resynch to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %resynch, align 4
  %put_listent = getelementptr inbounds %struct.xfs_attr_list_context, ptr %sx, i32 0, i32 12
  %14 = ptrtoint ptr %put_listent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @xchk_xattr_listent, ptr %put_listent, align 4
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %15 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tp, align 4
  %17 = ptrtoint ptr %sx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %sx, align 4
  %allow_incomplete = getelementptr inbounds %struct.xfs_attr_list_context, ptr %sx, i32 0, i32 5
  %18 = ptrtoint ptr %allow_incomplete to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %allow_incomplete, align 4
  %sc14 = getelementptr inbounds %struct.xchk_xattr, ptr %sx, i32 0, i32 1
  %19 = ptrtoint ptr %sc14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sc, ptr %sc14, align 4
  %call16 = call i32 @xfs_attr_list_ilocked(ptr noundef nonnull %sx) #7
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call16, ptr %error, align 4
  %call17 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 1, i64 noundef 0, ptr noundef nonnull %error) #7
  br i1 %call17, label %if.end19, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end19:                                         ; preds = %if.end7
  %seen_enough = getelementptr inbounds %struct.xfs_attr_list_context, ptr %sx, i32 0, i32 4
  %21 = ptrtoint ptr %seen_enough to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %seen_enough, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %if.then21, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %error, align 4
  br label %out

out:                                              ; preds = %if.then21, %if.end19.out_crit_edge, %if.end7.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge
  %24 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %out ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_checked) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %sx) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inode_hasattr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_da_btree(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_xattr_rec(ptr noundef %ds, i32 noundef %level) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  %mp1 = getelementptr inbounds %struct.xfs_da_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mp1, align 4
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %1, i32 0, i32 2, i32 1, i32 %level
  %magic = getelementptr %struct.xfs_da_state, ptr %1, i32 0, i32 2, i32 1, i32 %level, i32 5
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64494, i32 %5)
  %cmp = icmp eq i32 %5, 64494
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !15

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 417) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_addr, align 4
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %11)
  %cmp.i = icmp eq i16 %11, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %9, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %9, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %entries.i, ptr %entries2.i
  %index = getelementptr %struct.xfs_da_state, ptr %1, i32 0, i32 2, i32 1, i32 %level, i32 3
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %add.ptr = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %13
  %call6 = tail call fastcc i32 @xchk_xattr_block(ptr noundef %ds, i32 noundef %level)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %cond.end.out_crit_edge

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %cond.end
  %sc = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 4
  %14 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc, align 4
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sm_flags, align 4
  %and = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @xchk_da_btree_hash(ptr noundef %ds, i32 noundef %level, ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end14:                                         ; preds = %if.end10
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 8
  %b_addr16 = getelementptr inbounds %struct.xfs_buf, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %b_addr16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_addr16, align 4
  %magic.i98 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %magic.i98 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %magic.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %25)
  %cmp.i99 = icmp eq i16 %25, 15342
  %..i = select i1 %cmp.i99, i32 80, i32 32
  %nameidx18 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %13, i32 1
  %26 = ptrtoint ptr %nameidx18 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nameidx18, align 4
  %conv = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %..i, i32 %conv)
  %cmp19 = icmp ugt i32 %..i, %conv
  br i1 %cmp19, label %if.end14.out.sink.split_crit_edge, label %lor.lhs.false

if.end14.out.sink.split_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

lor.lhs.false:                                    ; preds = %if.end14
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 7
  %28 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m_attr_geo, align 32
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv)
  %cmp21.not = icmp ugt i32 %31, %conv
  br i1 %cmp21.not, label %if.end24, label %lor.lhs.false.out.sink.split_crit_edge

lor.lhs.false.out.sink.split_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end24:                                         ; preds = %lor.lhs.false
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr, align 4
  %flags = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i, i32 %13, i32 2
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags, align 2
  %36 = and i8 %35, 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp28.not = icmp eq i8 %36, 0
  br i1 %cmp28.not, label %if.end24.if.end31_crit_edge, label %if.then30

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end24.if.end31_crit_edge
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags, align 2
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool35.not = icmp eq i8 %39, 0
  %40 = ptrtoint ptr %b_addr16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_addr16, align 4
  %add.ptr48 = getelementptr i8, ptr %41, i32 %conv
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end31
  %namelen = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %add.ptr48, i32 0, i32 1
  %42 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %namelen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp40 = icmp eq i8 %43, 0
  br i1 %cmp40, label %if.then36.out.sink.split_crit_edge, label %if.end43

if.then36.out.sink.split_crit_edge:               ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end43:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %conv39 = zext i8 %43 to i32
  %nameval = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %add.ptr48, i32 0, i32 2
  %call46 = tail call i32 @xfs_da_hashname(ptr noundef %nameval, i32 noundef %conv39) #7
  br label %if.end59

if.else:                                          ; preds = %if.end31
  %namelen49 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %add.ptr48, i32 0, i32 2
  %44 = ptrtoint ptr %namelen49 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %namelen49, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp51 = icmp eq i8 %45, 0
  br i1 %cmp51, label %if.else.out.sink.split_crit_edge, label %if.end54

if.else.out.sink.split_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end54:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv50 = zext i8 %45 to i32
  %name = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %add.ptr48, i32 0, i32 3
  %call58 = tail call i32 @xfs_da_hashname(ptr noundef %name, i32 noundef %conv50) #7
  br label %if.end59

if.end59:                                         ; preds = %if.end54, %if.end43
  %calc_hash.0 = phi i32 [ %call46, %if.end43 ], [ %call58, %if.end54 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %calc_hash.0, i32 %33)
  %cmp60.not = icmp eq i32 %calc_hash.0, %33
  br i1 %cmp60.not, label %if.end59.out_crit_edge, label %if.end59.out.sink.split_crit_edge

if.end59.out.sink.split_crit_edge:                ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out.sink.split:                                   ; preds = %if.end59.out.sink.split_crit_edge, %if.else.out.sink.split_crit_edge, %if.then36.out.sink.split_crit_edge, %lor.lhs.false.out.sink.split_crit_edge, %if.end14.out.sink.split_crit_edge
  tail call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %out

out:                                              ; preds = %out.sink.split, %if.end59.out_crit_edge, %if.end10.out_crit_edge, %if.end.out_crit_edge, %cond.end.out_crit_edge
  %error.0 = phi i32 [ %call6, %cond.end.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ %call11, %if.end10.out_crit_edge ], [ 0, %if.end59.out_crit_edge ], [ 0, %out.sink.split ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xchk_xattr_listent(ptr nocapture noundef %context, i32 noundef %flags, ptr noundef %name, i32 noundef %namelen, i32 noundef %valuelen) #0 align 64 {
entry:
  %args = alloca %struct.xfs_da_args, align 8
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %args) #7
  %0 = call ptr @memset(ptr %args, i32 0, i32 112)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %1 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %error, align 4
  %sc = getelementptr inbounds %struct.xchk_xattr, ptr %context, i32 0, i32 1
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 24, i32 noundef 0) #7
  %call.i.i = tail call i32 @__cond_resched() #7
  %2 = tail call i32 @llvm.read_register.i32(metadata !5) #7
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stack.i.i.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and1.i.i.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %fatal_signal_pending.exit.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

fatal_signal_pending.exit.i:                      ; preds = %entry
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 116, i32 1
  %10 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %signal.i.i.i, align 4
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end_crit_edge, label %if.then.i

fatal_signal_pending.exit.i.if.end_crit_edge:     ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %fatal_signal_pending.exit.i
  %13 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then3.i, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -11, ptr %error, align 4
  br label %if.then

if.then:                                          ; preds = %if.then3.i, %if.then.i.if.then_crit_edge
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error, align 4
  %seen_enough = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 4
  %18 = ptrtoint ptr %seen_enough to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %seen_enough, align 4
  br label %cleanup

if.end:                                           ; preds = %fatal_signal_pending.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %and = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sc, align 4
  %dp = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 1
  %21 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dp, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_ino, align 8
  tail call void @xchk_ino_set_preen(ptr noundef %20, i64 noundef %24) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call zeroext i1 @xfs_attr_namecheck(ptr noundef %name, i32 noundef %namelen) #7
  %25 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc, align 4
  br i1 %call4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %blkno = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 14
  %27 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blkno, align 8
  %conv = zext i32 %28 to i64
  tail call void @xchk_fblock_set_corrupt(ptr noundef %26, i32 noundef 1, i64 noundef %conv) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %buf.i = getelementptr inbounds %struct.xfs_scrub, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf.i, align 4
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %26, align 4
  %m_attr_geo.i = getelementptr inbounds %struct.xfs_mount, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %m_attr_geo.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %m_attr_geo.i, align 32
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %sub.i = add i32 %36, 31
  %div26.i = lshr i32 %sub.i, 5
  %mul.i = mul nuw nsw i32 %div26.i, 12
  %37 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 %valuelen) #7
  %tobool.not.i76 = icmp eq ptr %30, null
  br i1 %tobool.not.i76, label %if.end7.if.end5.i_crit_edge, label %if.then.i77

if.end7.if.end5.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i77:                                      ; preds = %if.end7
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp2.not.i = icmp ugt i32 %37, %39
  br i1 %cmp2.not.i, label %if.end.i, label %if.then.i77.if.end16_crit_edge

if.then.i77.if.end16_crit_edge:                   ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end.i:                                         ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kvfree(ptr noundef nonnull %30) #7
  %40 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %buf.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.end7.if.end5.i_crit_edge
  %add6.i = add i32 %37, 4
  %call.i.i78 = tail call noalias ptr @kvmalloc_node(i32 noundef %add6.i, i32 noundef 19648, i32 noundef -1) #10
  %tobool7.not.i = icmp eq ptr %call.i.i78, null
  br i1 %tobool7.not.i, label %if.then14, label %if.end9.i

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call.i.i78 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %37, ptr %call.i.i78, align 4
  %42 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i78, ptr %buf.i, align 4
  br label %if.end16

if.then14:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %seen_enough15 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 4
  %43 = ptrtoint ptr %seen_enough15 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -35, ptr %seen_enough15, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end9.i, %if.then.i77.if.end16_crit_edge
  %op_flags = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 24
  %44 = ptrtoint ptr %op_flags to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 32, ptr %op_flags, align 8
  %and17 = and i32 %flags, 6
  %attr_filter = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 6
  %45 = ptrtoint ptr %attr_filter to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and17, ptr %attr_filter, align 8
  %dp18 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 1
  %46 = ptrtoint ptr %dp18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dp18, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %m_attr_geo, align 32
  %52 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %args, align 8
  %whichfork = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 13
  %53 = ptrtoint ptr %whichfork to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %whichfork, align 4
  %dp20 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %54 = ptrtoint ptr %dp20 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %47, ptr %dp20, align 8
  %name21 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 1
  %55 = ptrtoint ptr %name21 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %name, ptr %name21, align 4
  %namelen22 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 2
  %56 = ptrtoint ptr %namelen22 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %namelen, ptr %namelen22, align 8
  %call25 = tail call i32 @xfs_da_hashname(ptr noundef %name, i32 noundef %namelen) #7
  %hashval = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 8
  %57 = ptrtoint ptr %hashval to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call25, ptr %hashval, align 8
  %58 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %context, align 4
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %60 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %trans, align 4
  %61 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sc, align 4
  %buf.i79 = getelementptr inbounds %struct.xfs_scrub, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %buf.i79 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buf.i79, align 4
  %buf1.i = getelementptr inbounds %struct.xchk_xattr_buf, ptr %64, i32 0, i32 1
  %value = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 4
  %65 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %buf1.i, ptr %value, align 8
  %valuelen28 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 5
  %66 = ptrtoint ptr %valuelen28 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %valuelen, ptr %valuelen28, align 4
  %call29 = call i32 @xfs_attr_get_ilocked(ptr noundef nonnull %args) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call29)
  %cmp30 = icmp eq i32 %call29, -61
  %spec.store.select56 = select i1 %cmp30, i32 -117, i32 %call29
  %67 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %spec.store.select56, ptr %error, align 4
  %68 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sc, align 4
  %blkno35 = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 14
  %70 = ptrtoint ptr %blkno35 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %blkno35, align 8
  %conv36 = zext i32 %71 to i64
  %call37 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %69, i32 noundef 1, i64 noundef %conv36, ptr noundef nonnull %error) #7
  br i1 %call37, label %if.end39, label %if.end16.fail_xref_crit_edge

if.end16.fail_xref_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_xref

if.end39:                                         ; preds = %if.end16
  %72 = ptrtoint ptr %valuelen28 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %valuelen28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %valuelen)
  %cmp41.not = icmp eq i32 %73, %valuelen
  br i1 %cmp41.not, label %if.end39.fail_xref_crit_edge, label %if.then43

if.end39.fail_xref_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_xref

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sc, align 4
  %76 = ptrtoint ptr %blkno35 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %blkno35, align 8
  %conv46 = zext i32 %77 to i64
  call void @xchk_fblock_set_corrupt(ptr noundef %75, i32 noundef 1, i64 noundef %conv46) #7
  br label %fail_xref

fail_xref:                                        ; preds = %if.then43, %if.end39.fail_xref_crit_edge, %if.end16.fail_xref_crit_edge
  %78 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sc, align 4
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sm_flags, align 4
  %and49 = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %fail_xref.cleanup_crit_edge, label %if.then51

fail_xref.cleanup_crit_edge:                      ; preds = %fail_xref
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then51:                                        ; preds = %fail_xref
  call void @__sanitizer_cov_trace_pc() #9
  %seen_enough52 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 4
  %84 = ptrtoint ptr %seen_enough52 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %seen_enough52, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %fail_xref.cleanup_crit_edge, %if.then14, %if.then5, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %args) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_list_ilocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_fblock_process_error(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_xattr_block(ptr noundef %ds, i32 noundef %level) unnamed_addr #3 align 64 {
entry:
  %leafhdr = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %last_hashval = alloca i32, align 4
  %usedbytes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %leafhdr) #7
  %0 = call ptr @memset(ptr %leafhdr, i32 255, i32 36)
  %state = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 3
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 8
  %mp1 = getelementptr inbounds %struct.xfs_da_state, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %mp1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mp1, align 4
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %2, i32 0, i32 2, i32 1, i32 %level
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 8
  %private = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 5
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %6, i32 0, i32 16
  %9 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_hashval) #7
  %11 = ptrtoint ptr %last_hashval to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %last_hashval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usedbytes) #7
  %12 = ptrtoint ptr %usedbytes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %usedbytes, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %8, align 4
  %blkno = getelementptr %struct.xfs_da_state, ptr %2, i32 0, i32 2, i32 1, i32 %level, i32 1
  %15 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blkno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp = icmp eq i32 %14, %16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sc = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 4
  %17 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc, align 4
  %buf.i = getelementptr inbounds %struct.xfs_scrub, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %m_attr_geo.i = getelementptr inbounds %struct.xfs_mount, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %m_attr_geo.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m_attr_geo.i, align 32
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %sub.i = add i32 %26, 31
  %div26.i = lshr i32 %sub.i, 5
  %mul.i = mul nuw nsw i32 %div26.i, 12
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.if.end5.i_crit_edge, label %if.then.i

if.end.if.end5.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %28)
  %cmp2.not.i = icmp ugt i32 %mul.i, %28
  br i1 %cmp2.not.i, label %if.end.i, label %if.then.i.if.end9_crit_edge

if.then.i.if.end9_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kvfree(ptr noundef nonnull %20) #7
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %buf.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.end.if.end5.i_crit_edge
  %add6.i = add nuw nsw i32 %mul.i, 4
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add6.i, i32 noundef 19648, i32 noundef -1) #10
  %tobool7.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul.i, ptr %call.i.i, align 4
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i, ptr %buf.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.i, %if.then.i.if.end9_crit_edge
  %32 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sc, align 4
  %buf.i188 = getelementptr inbounds %struct.xfs_scrub, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %buf.i188 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf.i188, align 4
  %buf1.i = getelementptr inbounds %struct.xchk_xattr_buf, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %blkno, align 4
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %8, align 4
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 7
  %39 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %m_attr_geo, align 32
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %sub.i189 = add i32 %42, 31
  %43 = lshr i32 %sub.i189, 3
  %mul.i190 = and i32 %43, 536870908
  %44 = call ptr @memset(ptr %buf1.i, i32 0, i32 %mul.i190)
  %45 = load ptr, ptr %sc, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %47, i32 0, i32 61
  %48 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %49, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end9
  %50 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_addr, align 4
  %pad1 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %pad1 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pad1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp19.not = icmp eq i8 %53, 0
  br i1 %cmp19.not, label %lor.lhs.false, label %if.then16.if.end46.sink.split_crit_edge

if.then16.if.end46.sink.split_crit_edge:          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.sink.split

lor.lhs.false:                                    ; preds = %if.then16
  %pad2 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, ptr %51, i32 0, i32 7
  %54 = ptrtoint ptr %pad2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pad2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp22.not = icmp eq i32 %55, 0
  br i1 %cmp22.not, label %lor.lhs.false24, label %lor.lhs.false.if.end46.sink.split_crit_edge

lor.lhs.false.if.end46.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.sink.split

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %pad = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %51, i32 0, i32 3
  %56 = ptrtoint ptr %pad to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %pad, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp28.not = icmp eq i16 %57, 0
  br i1 %cmp28.not, label %lor.lhs.false24.if.end46_crit_edge, label %lor.lhs.false24.if.end46.sink.split_crit_edge

lor.lhs.false24.if.end46.sink.split_crit_edge:    ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.sink.split

lor.lhs.false24.if.end46_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.else:                                          ; preds = %if.end9
  %pad133 = getelementptr inbounds %struct.xfs_attr_leaf_hdr, ptr %10, i32 0, i32 5
  %58 = ptrtoint ptr %pad133 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pad133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp35.not = icmp eq i8 %59, 0
  br i1 %cmp35.not, label %lor.lhs.false37, label %if.else.if.end46.sink.split_crit_edge

if.else.if.end46.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.sink.split

lor.lhs.false37:                                  ; preds = %if.else
  %pad40 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %10, i32 0, i32 3
  %60 = ptrtoint ptr %pad40 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %pad40, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp42.not = icmp eq i16 %61, 0
  br i1 %cmp42.not, label %lor.lhs.false37.if.end46_crit_edge, label %lor.lhs.false37.if.end46.sink.split_crit_edge

lor.lhs.false37.if.end46.sink.split_crit_edge:    ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.sink.split

lor.lhs.false37.if.end46_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.end46.sink.split:                              ; preds = %lor.lhs.false37.if.end46.sink.split_crit_edge, %if.else.if.end46.sink.split_crit_edge, %lor.lhs.false24.if.end46.sink.split_crit_edge, %lor.lhs.false.if.end46.sink.split_crit_edge, %if.then16.if.end46.sink.split_crit_edge
  tail call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %if.end46

if.end46:                                         ; preds = %if.end46.sink.split, %lor.lhs.false37.if.end46_crit_edge, %lor.lhs.false24.if.end46_crit_edge
  %62 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %m_attr_geo, align 32
  call void @xfs_attr3_leaf_hdr_from_disk(ptr noundef %63, ptr noundef nonnull %leafhdr, ptr noundef %10) #7
  %magic.i = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %10, i32 0, i32 2
  %64 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %65)
  %cmp.i = icmp eq i16 %65, 15342
  %..i = select i1 %cmp.i, i32 80, i32 32
  %usedbytes49 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %66 = ptrtoint ptr %usedbytes49 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %usedbytes49, align 4
  %conv50 = zext i16 %67 to i32
  %68 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %m_attr_geo, align 32
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %conv50)
  %cmp53 = icmp ult i32 %71, %conv50
  br i1 %cmp53, label %if.then55, label %if.end46.if.end56_crit_edge

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then55:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end46.if.end56_crit_edge
  %firstused = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %72 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %firstused, align 4
  %74 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %m_attr_geo, align 32
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %77)
  %cmp59 = icmp ugt i32 %73, %77
  br i1 %cmp59, label %if.then61, label %if.end56.if.end62_crit_edge

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end56.if.end62_crit_edge
  %78 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %firstused, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %..i)
  %cmp64 = icmp ult i32 %79, %..i
  br i1 %cmp64, label %if.then66, label %if.end62.if.end67_crit_edge

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end62.if.end67_crit_edge
  %80 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sc, align 4
  %call69 = call fastcc zeroext i1 @xchk_xattr_set_map(ptr noundef %81, ptr noundef %buf1.i, i32 noundef 0, i32 noundef %..i)
  br i1 %call69, label %if.end67.if.end71_crit_edge, label %if.then70

if.end67.if.end71_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end67.if.end71_crit_edge
  %82 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sc, align 4
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sm_flags, align 4
  %and = and i32 %87, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool73.not = icmp eq i32 %and, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  %88 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %89)
  %cmp.i192 = icmp eq i16 %89, 15342
  %entries.i = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %10, i32 0, i32 1
  %entries2.i = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %10, i32 0, i32 1
  %retval.0.i193 = select i1 %cmp.i192, ptr %entries.i, ptr %entries2.i
  %count = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %90 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %count, align 2
  %idxprom = zext i16 %91 to i32
  %arrayidx77 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i193, i32 %idxprom
  %92 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %firstused, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %93
  %cmp79 = icmp ugt ptr %arrayidx77, %add.ptr
  br i1 %cmp79, label %if.then81, label %if.end75.if.end82_crit_edge

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end75.if.end82_crit_edge
  %94 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %b_addr, align 4
  %96 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %m_attr_geo, align 32
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %add.ptr86 = getelementptr i8, ptr %95, i32 %99
  %100 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %cmp89196.not = icmp eq i16 %101, 0
  br i1 %cmp89196.not, label %if.end82.for.end_crit_edge, label %for.body.lr.ph

if.end82.for.end_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end82
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0198 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ent.0197 = phi ptr [ %retval.0.i193, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %ent.0197 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %102 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sc, align 4
  %call92 = call fastcc zeroext i1 @xchk_xattr_set_map(ptr noundef %103, ptr noundef %buf1.i, i32 noundef %sub.ptr.sub, i32 noundef 8)
  br i1 %call92, label %if.end94, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end94:                                         ; preds = %for.body
  call fastcc void @xchk_xattr_entry(ptr noundef %ds, i32 noundef %level, ptr noundef %add.ptr86, ptr noundef %10, ptr noundef nonnull %leafhdr, ptr noundef %ent.0197, i32 noundef %i.0198, ptr noundef nonnull %usedbytes, ptr noundef nonnull %last_hashval)
  %104 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sc, align 4
  %sm96 = getelementptr inbounds %struct.xfs_scrub, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %sm96 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sm96, align 4
  %sm_flags97 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %sm_flags97 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %sm_flags97, align 4
  %and98 = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %for.inc, label %if.end94.cleanup_crit_edge

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end94
  %incdec.ptr = getelementptr %struct.xfs_attr_leaf_entry, ptr %ent.0197, i32 1
  %inc = add nuw nsw i32 %i.0198, 1
  %110 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %count, align 2
  %conv88 = zext i16 %111 to i32
  %cmp89 = icmp ult i32 %inc, %conv88
  br i1 %cmp89, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end82.for.end_crit_edge
  %112 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sc, align 4
  %call103 = call fastcc zeroext i1 @xchk_xattr_check_freemap(ptr noundef %113, ptr noundef %buf1.i, ptr noundef nonnull %leafhdr)
  br i1 %call103, label %for.end.if.end105_crit_edge, label %if.then104

for.end.if.end105_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then104:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %for.end.if.end105_crit_edge
  %114 = ptrtoint ptr %usedbytes49 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %usedbytes49, align 4
  %conv107 = zext i16 %115 to i32
  %116 = ptrtoint ptr %usedbytes to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %usedbytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %conv107)
  %cmp108.not = icmp eq i32 %117, %conv107
  br i1 %cmp108.not, label %if.end105.cleanup_crit_edge, label %if.end105.cleanup.sink.split_crit_edge

if.end105.cleanup.sink.split_crit_edge:           ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end105.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end105.cleanup_crit_edge, %if.end94.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end105.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ], [ -35, %if.end5.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ 0, %if.end94.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usedbytes) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_hashval) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %leafhdr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_da_btree_hash(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_da_set_corrupt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_hashname(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_attr3_leaf_hdr_from_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xchk_xattr_set_map(ptr nocapture noundef readonly %sc, ptr noundef %map, i32 noundef %start, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_attr_geo, align 32
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %start)
  %cmp.not = icmp ugt i32 %5, %start
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %len, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp1 = icmp ugt i32 %add, %5
  %sub = sub i32 %5, %start
  %spec.select = select i1 %cmp1, i32 %sub, i32 %len
  %6 = xor i1 %cmp1, true
  %call = tail call i32 @_find_next_bit_be(ptr noundef %map, i32 noundef %5, i32 noundef %start) #7
  %add4 = add i32 %spec.select, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %add4)
  %cmp5 = icmp uge i32 %call, %add4
  %ret.1.off0 = select i1 %cmp5, i1 %6, i1 false
  tail call void @__bitmap_set(ptr noundef %map, i32 noundef %start, i32 noundef %spec.select) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %ret.1.off0, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_xattr_entry(ptr noundef %ds, i32 noundef %level, ptr noundef readnone %buf_end, ptr noundef readonly %leaf, ptr nocapture noundef readonly %leafhdr, ptr nocapture noundef readonly %ent, i32 noundef %idx, ptr nocapture noundef %usedbytes, ptr nocapture noundef %last_hashval) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  %mp1 = getelementptr inbounds %struct.xfs_da_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mp1, align 4
  %sc = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 4
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  %buf.i = getelementptr inbounds %struct.xfs_scrub, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf.i, align 4
  %buf1.i = getelementptr inbounds %struct.xchk_xattr_buf, ptr %7, i32 0, i32 1
  %pad2 = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %ent, i32 0, i32 3
  %8 = ptrtoint ptr %pad2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pad2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not = icmp eq i8 %9, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ent, align 4
  %12 = ptrtoint ptr %last_hashval to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_hashval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp3 = icmp ult i32 %11, %13
  br i1 %cmp3, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %14 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ent, align 4
  %16 = ptrtoint ptr %last_hashval to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %last_hashval, align 4
  %nameidx8 = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %ent, i32 0, i32 1
  %17 = ptrtoint ptr %nameidx8 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nameidx8, align 4
  %conv9 = zext i16 %18 to i32
  %firstused = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %19 = ptrtoint ptr %firstused to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %firstused, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv9)
  %cmp10 = icmp ugt i32 %20, %conv9
  br i1 %cmp10, label %if.end6.if.then14_crit_edge, label %lor.lhs.false

if.end6.if.then14_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end6
  %m_attr_geo = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %m_attr_geo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m_attr_geo, align 32
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv9)
  %cmp12.not = icmp ugt i32 %24, %conv9
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end6.if.then14_crit_edge
  tail call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.xfs_attr_leaf_entry, ptr %ent, i32 0, i32 2
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags, align 2
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  %magic.i.i.i96 = getelementptr inbounds %struct.xfs_da_blkinfo, ptr %leaf, i32 0, i32 2
  %28 = ptrtoint ptr %magic.i.i.i96 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %magic.i.i.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15342, i16 %29)
  %cmp.i.i.i97 = icmp eq i16 %29, 15342
  %entries.i.i.i98 = getelementptr inbounds %struct.xfs_attr3_leafblock, ptr %leaf, i32 0, i32 1
  %entries2.i.i.i99 = getelementptr inbounds %struct.xfs_attr_leafblock, ptr %leaf, i32 0, i32 1
  %retval.0.i.i.i100 = select i1 %cmp.i.i.i97, ptr %entries.i.i.i98, ptr %entries2.i.i.i99
  %nameidx.i.i101 = getelementptr %struct.xfs_attr_leaf_entry, ptr %retval.0.i.i.i100, i32 %idx, i32 1
  %30 = ptrtoint ptr %nameidx.i.i101 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nameidx.i.i101, align 4
  %idxprom.i.i102 = zext i16 %31 to i32
  %arrayidx1.i.i103 = getelementptr i8, ptr %leaf, i32 %idxprom.i.i102
  br i1 %tobool.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  %namelen = getelementptr inbounds %struct.xfs_attr_leaf_name_local, ptr %arrayidx1.i.i103, i32 0, i32 1
  %32 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %namelen, align 2
  %conv19 = zext i8 %33 to i32
  %34 = ptrtoint ptr %arrayidx1.i.i103 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx1.i.i103, align 2
  %conv20 = zext i16 %35 to i32
  %add1.i = add nuw nsw i32 %conv19, 2
  %sub.i = add nuw nsw i32 %add1.i, %conv20
  %or.i = or i32 %sub.i, 3
  %add2.i = add nuw nsw i32 %or.i, 1
  %add.ptr = getelementptr i8, ptr %arrayidx1.i.i103, i32 %add2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp24 = icmp eq i8 %33, 0
  br i1 %cmp24, label %if.then17.if.end42.sink.split_crit_edge, label %if.then17.if.end42_crit_edge

if.then17.if.end42_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then17.if.end42.sink.split_crit_edge:          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.sink.split

if.else:                                          ; preds = %if.end15
  %namelen29 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, ptr %arrayidx1.i.i103, i32 0, i32 2
  %36 = ptrtoint ptr %namelen29 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %namelen29, align 4
  %conv30 = zext i8 %37 to i32
  %sub.i104 = add nuw nsw i32 %conv30, 10
  %or.i105 = or i32 %sub.i104, 3
  %add1.i106 = add nuw nsw i32 %or.i105, 1
  %add.ptr32 = getelementptr i8, ptr %arrayidx1.i.i103, i32 %add1.i106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp35 = icmp eq i8 %37, 0
  br i1 %cmp35, label %if.else.if.end42.sink.split_crit_edge, label %lor.lhs.false37

if.else.if.end42.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.sink.split

lor.lhs.false37:                                  ; preds = %if.else
  %38 = ptrtoint ptr %arrayidx1.i.i103 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx1.i.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp38 = icmp eq i32 %39, 0
  br i1 %cmp38, label %lor.lhs.false37.if.end42.sink.split_crit_edge, label %lor.lhs.false37.if.end42_crit_edge

lor.lhs.false37.if.end42_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

lor.lhs.false37.if.end42.sink.split_crit_edge:    ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %lor.lhs.false37.if.end42.sink.split_crit_edge, %if.else.if.end42.sink.split_crit_edge, %if.then17.if.end42.sink.split_crit_edge
  %name_end.0.ph = phi ptr [ %add.ptr, %if.then17.if.end42.sink.split_crit_edge ], [ %add.ptr32, %lor.lhs.false37.if.end42.sink.split_crit_edge ], [ %add.ptr32, %if.else.if.end42.sink.split_crit_edge ]
  %namesize.0.ph = phi i32 [ %add2.i, %if.then17.if.end42.sink.split_crit_edge ], [ %add1.i106, %lor.lhs.false37.if.end42.sink.split_crit_edge ], [ %add1.i106, %if.else.if.end42.sink.split_crit_edge ]
  tail call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %lor.lhs.false37.if.end42_crit_edge, %if.then17.if.end42_crit_edge
  %name_end.0 = phi ptr [ %add.ptr, %if.then17.if.end42_crit_edge ], [ %add.ptr32, %lor.lhs.false37.if.end42_crit_edge ], [ %name_end.0.ph, %if.end42.sink.split ]
  %namesize.0 = phi i32 [ %add2.i, %if.then17.if.end42_crit_edge ], [ %add1.i106, %lor.lhs.false37.if.end42_crit_edge ], [ %namesize.0.ph, %if.end42.sink.split ]
  %cmp43 = icmp ugt ptr %name_end.0, %buf_end
  br i1 %cmp43, label %if.then45, label %if.end42.if.end46_crit_edge

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42.if.end46_crit_edge
  %40 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sc, align 4
  %call48 = tail call fastcc zeroext i1 @xchk_xattr_set_map(ptr noundef %41, ptr noundef %buf1.i, i32 noundef %conv9, i32 noundef %namesize.0)
  br i1 %call48, label %if.end46.if.end50_crit_edge, label %if.then49

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46.if.end50_crit_edge
  %42 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sc, align 4
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sm_flags, align 4
  %and52 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %usedbytes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %usedbytes, align 4
  %add = add i32 %49, %namesize.0
  store i32 %add, ptr %usedbytes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end50.cleanup_crit_edge, %if.then14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xchk_xattr_check_freemap(ptr nocapture noundef readonly %sc, ptr noundef %map, ptr nocapture noundef readonly %leafhdr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buf.i.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 6
  %0 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf.i.i, align 4
  %buf1.i.i = getelementptr inbounds %struct.xchk_xattr_buf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %m_attr_geo.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %m_attr_geo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_attr_geo.i, align 32
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %sub.i = add i32 %7, 31
  %div2.i = lshr i32 %sub.i, 5
  %add.ptr.i = getelementptr i32, ptr %buf1.i.i, i32 %div2.i
  %add.ptr.i23 = getelementptr i32, ptr %add.ptr.i, i32 %div2.i
  %8 = lshr i32 %sub.i, 3
  %mul.i = and i32 %8, 536870908
  %9 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %mul.i)
  %arrayidx = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %leafhdr, i32 0, i32 7, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  %size = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %leafhdr, i32 0, i32 7, i32 0, i32 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %size, align 2
  %conv5 = zext i16 %13 to i32
  %call6 = tail call fastcc zeroext i1 @xchk_xattr_set_map(ptr noundef %sc, ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef %conv5)
  br i1 %call6, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %leafhdr, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %15 to i32
  %size.1 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %leafhdr, i32 0, i32 7, i32 1, i32 1
  %16 = ptrtoint ptr %size.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %size.1, align 2
  %conv5.1 = zext i16 %17 to i32
  %call6.1 = tail call fastcc zeroext i1 @xchk_xattr_set_map(ptr noundef %sc, ptr noundef %add.ptr.i, i32 noundef %conv.1, i32 noundef %conv5.1)
  br i1 %call6.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %leafhdr, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %19 to i32
  %size.2 = getelementptr %struct.xfs_attr3_icleaf_hdr, ptr %leafhdr, i32 0, i32 7, i32 2, i32 1
  %20 = ptrtoint ptr %size.2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %size.2, align 2
  %conv5.2 = zext i16 %21 to i32
  %call6.2 = tail call fastcc zeroext i1 @xchk_xattr_set_map(ptr noundef %sc, ptr noundef %add.ptr.i, i32 noundef %conv.2, i32 noundef %conv5.2)
  br i1 %call6.2, label %if.end.i, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @__bitmap_and(ptr noundef %add.ptr.i23, ptr noundef %add.ptr.i, ptr noundef %map, i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp eq i32 %call.i, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp8, %if.end.i ], [ false, %for.cond.1.cleanup_crit_edge ], [ false, %for.cond.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ino_set_preen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_attr_namecheck(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_fblock_set_corrupt(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_get_ilocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.named.register.sp = !{!5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/scrub/attr.c", i32 417, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/scrub/common.h", i32 24, i32 2}
!5 = !{!"sp"}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 2000, i32 1}
