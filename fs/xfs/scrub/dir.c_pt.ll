; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/dir.c_pt.bc'
source_filename = "../fs/xfs/scrub/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xchk_dir_ctx = type { %struct.dir_context, ptr }
%struct.dir_context = type { ptr, i64 }
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
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xfs_name = type { ptr, i32, i32 }
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
%struct.xfs_da_geometry = type { i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.xfs_dir3_icleaf_hdr = type { i32, i32, i16, i16, i16, ptr }
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
%struct.xfs_dir2_leaf_entry = type { i32, i32 }
%struct.xfs_dir2_data_unused = type { i16, i16, i16 }
%struct.xfs_dir2_data_entry = type { i64, i8, [0 x i8] }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_iext_cursor = type { ptr, i32 }
%struct.xfs_dir2_data_free = type { i16, i16 }
%struct.xfs_dir3_leaf_hdr = type { %struct.xfs_da3_blkinfo, i16, i16, i32 }
%struct.xfs_da3_blkinfo = type { %struct.xfs_da_blkinfo, i32, i64, i64, %struct.uuid_t, i64 }
%struct.xfs_da_blkinfo = type { i32, i32, i16, i16 }
%struct.xfs_dir3_icfree_hdr = type { i32, i32, i32, i32, ptr }
%struct.xfs_dir3_free_hdr = type { %struct.xfs_dir3_blk_hdr, i32, i32, i32, i32 }
%struct.xfs_dir3_blk_hdr = type { i32, i32, i64, i64, %struct.uuid_t, i64 }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/common.h\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"blk->magic == XFS_DIR2_LEAF1_MAGIC || blk->magic == XFS_DIR2_LEAFN_MAGIC\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/scrub/dir.c\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 54001, i64 54015]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967294]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 141, i32 15 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 150, i32 22 }
@___asan_gen_.14 = private unnamed_addr constant [25 x i8] c"../fs/xfs/scrub/common.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 24, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [22 x i8] c"../fs/xfs/scrub/dir.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 224, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_setup_directory(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xchk_setup_inode_contents(ptr noundef %sc, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_inode_contents(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_directory(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %sdc = alloca %struct.xchk_dir_ctx, align 8
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sdc) #7
  %0 = call ptr @memset(ptr %sdc, i32 255, i32 24)
  %1 = ptrtoint ptr %sdc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xchk_dir_actor, ptr %sdc, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %sdc, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %pos, align 8
  %sc1 = getelementptr inbounds %struct.xchk_dir_ctx, ptr %sdc, i32 0, i32 1
  %3 = ptrtoint ptr %sc1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sc, ptr %sc1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %error, align 4
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_vnode.i, align 8
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %9)
  %cmp = icmp eq i16 %9, 16384
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 18
  %10 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 6, i64 %11)
  %cmp6 = icmp slt i64 %11, 6
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 4
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_ino, align 8
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %13) #7
  br label %out

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @xchk_da_btree(ptr noundef %sc, i32 noundef 0, ptr noundef nonnull @xchk_dir_rec, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %14 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sm_flags, align 4
  %and14 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call fastcc i32 @xchk_directory_blocks(ptr noundef %sc)
  %18 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call18, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %19 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sm, align 4
  %sm_flags23 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %sm_flags23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sm_flags23, align 4
  %and24 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %23 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ip, align 4
  %i_disk_size29 = getelementptr inbounds %struct.xfs_inode, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %i_disk_size29 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_disk_size29, align 8
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 32768)
  %28 = trunc i64 %27 to i32
  %ilock_flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 7
  %29 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ilock_flags, align 4
  %and33 = and i32 %30, -5
  store i32 %and33, ptr %ilock_flags, align 4
  tail call void @xfs_iunlock(ptr noundef %24, i32 noundef 4) #7
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end40.while.cond_crit_edge, %if.end27
  %oldpos.0 = phi i64 [ 0, %if.end27 ], [ %37, %if.end40.while.cond_crit_edge ]
  %31 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tp, align 4
  %33 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ip, align 4
  %call37 = call i32 @xfs_readdir(ptr noundef %32, ptr noundef %34, ptr noundef nonnull %sdc, i32 noundef %28) #7
  %35 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call37, ptr %error, align 4
  %call38 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %error) #7
  br i1 %call38, label %if.end40, label %while.cond.out_crit_edge

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end40:                                         ; preds = %while.cond
  %36 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %pos, align 8
  %cmp43 = icmp eq i64 %oldpos.0, %37
  br i1 %cmp43, label %if.end40.out_crit_edge, label %if.end40.while.cond_crit_edge

if.end40.while.cond_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %if.end40.out_crit_edge, %while.cond.out_crit_edge, %if.then8
  %38 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %39, %out ], [ -2, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sdc) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_dir_actor(ptr nocapture noundef readonly %dir_iter, ptr noundef %name, i32 noundef %namelen, i64 noundef %pos, i64 noundef %ino, i32 noundef %type) #3 align 64 {
entry:
  %xname = alloca %struct.xfs_name, align 4
  %lookup_ino = alloca i64, align 8
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %xname) #7
  %0 = getelementptr inbounds %struct.xfs_name, ptr %xname, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !19
  %2 = getelementptr inbounds %struct.xfs_name, ptr %xname, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lookup_ino) #7
  %4 = ptrtoint ptr %lookup_ino to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %lookup_ino, align 8, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %error, align 4
  %sc = getelementptr inbounds %struct.xchk_dir_ctx, ptr %dir_iter, i32 0, i32 1
  %6 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc, align 8
  %ip1 = getelementptr inbounds %struct.xfs_scrub, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ip1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_dir_geo, align 4
  %conv.i.i = shl i64 %pos, 3
  %shl.i.i = and i64 %conv.i.i, 34359738360
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i = zext i8 %15 to i64
  %shr.i2.i = lshr i64 %shl.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i2.i to i32
  %conv.i = zext i8 %15 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %17 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shl.i = shl i32 %conv1.i.i, %sub.i
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 24, i32 noundef 0) #7
  %call.i.i = tail call i32 @__cond_resched() #7
  %18 = tail call i32 @llvm.read_register.i32(metadata !9) #7
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and1.i.i.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %fatal_signal_pending.exit.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

fatal_signal_pending.exit.i:                      ; preds = %entry
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 116, i32 1
  %26 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %signal.i.i.i, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end_crit_edge, label %if.then.i

fatal_signal_pending.exit.i.if.end_crit_edge:     ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %fatal_signal_pending.exit.i
  %29 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  br i1 %cmp.i, label %if.then3.i, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -11, ptr %error, align 4
  br label %if.then

if.then:                                          ; preds = %if.then3.i, %if.then.i.if.then_crit_edge
  %32 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %fatal_signal_pending.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call6 = tail call zeroext i1 @xfs_verify_dir_ino(ptr noundef %11, i64 noundef %ino) #7
  br i1 %call6, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sc, align 8
  %conv9 = zext i32 %shl.i to i64
  tail call void @xchk_fblock_set_corrupt(ptr noundef %35, i32 noundef 0, i64 noundef %conv9) #7
  br label %outthread-pre-split

if.end10:                                         ; preds = %if.end
  %call11 = tail call zeroext i1 @xfs_dir2_namecheck(ptr noundef %name, i32 noundef %namelen) #7
  br i1 %call11, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sc, align 8
  %conv14 = zext i32 %shl.i to i64
  tail call void @xchk_fblock_set_corrupt(ptr noundef %37, i32 noundef 0, i64 noundef %conv14) #7
  br label %outthread-pre-split

if.end15:                                         ; preds = %if.end10
  %call16 = tail call i32 @strncmp(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %namelen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %11, i32 0, i32 61
  %38 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp.not = icmp eq i32 %type, 4
  %or.cond = or i1 %cmp.not, %tobool.i.not
  br i1 %or.cond, label %if.then17.if.end24_crit_edge, label %if.then21

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sc, align 8
  %conv23 = zext i32 %shl.i to i64
  tail call void @xchk_fblock_set_corrupt(ptr noundef %41, i32 noundef 0, i64 noundef %conv23) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then17.if.end24_crit_edge
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %9, i32 0, i32 4
  %42 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %ino)
  %cmp25.not = icmp eq i64 %43, %ino
  br i1 %cmp25.not, label %if.end24.if.end55_crit_edge, label %if.end24.if.end55.sink.split_crit_edge

if.end24.if.end55.sink.split_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.sink.split

if.end24.if.end55_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.else:                                          ; preds = %if.end15
  %call31 = tail call i32 @strncmp(ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %namelen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.else.if.end55_crit_edge

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then33:                                        ; preds = %if.else
  %m_features.i140 = getelementptr inbounds %struct.xfs_mount, ptr %11, i32 0, i32 61
  %44 = ptrtoint ptr %m_features.i140 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %m_features.i140, align 8
  %and.i141 = and i64 %45, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i141)
  %tobool.i142.not = icmp eq i64 %and.i141, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp37.not = icmp eq i32 %type, 4
  %or.cond138 = or i1 %cmp37.not, %tobool.i142.not
  br i1 %or.cond138, label %if.then33.if.end42_crit_edge, label %if.then39

if.then33.if.end42_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then39:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sc, align 8
  %conv41 = zext i32 %shl.i to i64
  tail call void @xchk_fblock_set_corrupt(ptr noundef %47, i32 noundef 0, i64 noundef %conv41) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.then33.if.end42_crit_edge
  %i_ino43 = getelementptr inbounds %struct.xfs_inode, ptr %9, i32 0, i32 4
  %48 = ptrtoint ptr %i_ino43 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %i_ino43, align 8
  %sb_rootino = getelementptr inbounds %struct.xfs_sb, ptr %11, i32 0, i32 7
  %50 = ptrtoint ptr %sb_rootino to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %sb_rootino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %51)
  %cmp44 = icmp ne i64 %49, %51
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %ino)
  %cmp48.not = icmp eq i64 %49, %ino
  %or.cond139 = or i1 %cmp48.not, %cmp44
  br i1 %or.cond139, label %if.end42.if.end55_crit_edge, label %if.end42.if.end55.sink.split_crit_edge

if.end42.if.end55.sink.split_crit_edge:           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.sink.split

if.end42.if.end55_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end55.sink.split:                              ; preds = %if.end42.if.end55.sink.split_crit_edge, %if.end24.if.end55.sink.split_crit_edge
  %52 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sc, align 8
  %conv52 = zext i32 %shl.i to i64
  tail call void @xchk_fblock_set_corrupt(ptr noundef %53, i32 noundef 0, i64 noundef %conv52) #7
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.end42.if.end55_crit_edge, %if.else.if.end55_crit_edge, %if.end24.if.end55_crit_edge
  %checked_ftype.0.off0 = phi i1 [ false, %if.else.if.end55_crit_edge ], [ true, %if.end42.if.end55_crit_edge ], [ true, %if.end24.if.end55_crit_edge ], [ true, %if.end55.sink.split ]
  %54 = ptrtoint ptr %xname to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %name, ptr %xname, align 4
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %namelen, ptr %0, align 4
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %2, align 4
  %57 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sc, align 8
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tp, align 4
  %call59 = call i32 @xfs_dir_lookup(ptr noundef %60, ptr noundef %9, ptr noundef nonnull %xname, ptr noundef nonnull %lookup_ino, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call59)
  %cmp60 = icmp eq i32 %call59, -2
  %spec.store.select = select i1 %cmp60, i32 -117, i32 %call59
  %61 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.store.select, ptr %error, align 4
  %62 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sc, align 8
  %conv65 = zext i32 %shl.i to i64
  %call66 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %63, i32 noundef 0, i64 noundef %conv65, ptr noundef nonnull %error) #7
  br i1 %call66, label %if.end68, label %if.end55.outthread-pre-split_crit_edge

if.end55.outthread-pre-split_crit_edge:           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %outthread-pre-split

if.end68:                                         ; preds = %if.end55
  %64 = ptrtoint ptr %lookup_ino to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %lookup_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %65, i64 %ino)
  %cmp69.not = icmp eq i64 %65, %ino
  br i1 %cmp69.not, label %if.end74, label %if.then71

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sc, align 8
  call void @xchk_fblock_set_corrupt(ptr noundef %67, i32 noundef 0, i64 noundef %conv65) #7
  br label %outthread-pre-split

if.end74:                                         ; preds = %if.end68
  br i1 %checked_ftype.0.off0, label %if.end74.outthread-pre-split_crit_edge, label %if.then76

if.end74.outthread-pre-split_crit_edge:           ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %outthread-pre-split

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = call fastcc i32 @xchk_dir_check_ftype(ptr noundef %dir_iter, i64 noundef %conv65, i64 noundef %ino, i32 noundef %type)
  br label %out

outthread-pre-split:                              ; preds = %if.end74.outthread-pre-split_crit_edge, %if.then71, %if.end55.outthread-pre-split_crit_edge, %if.then12, %if.then7
  %68 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr = load i32, ptr %error, align 4
  br label %out

out:                                              ; preds = %outthread-pre-split, %if.then76
  %69 = phi i32 [ %.pr, %outthread-pre-split ], [ %call78, %if.then76 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp83 = icmp eq i32 %69, 0
  br i1 %cmp83, label %land.lhs.true85, label %out.if.end89_crit_edge

out.if.end89_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

land.lhs.true85:                                  ; preds = %out
  %70 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sc, align 8
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sm_flags, align 4
  %and = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool87.not = icmp eq i32 %and, 0
  br i1 %tobool87.not, label %land.lhs.true85.if.end89_crit_edge, label %land.lhs.true85.cleanup_crit_edge

land.lhs.true85.cleanup_crit_edge:                ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true85.if.end89_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.end89:                                         ; preds = %land.lhs.true85.if.end89_crit_edge, %out.if.end89_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %land.lhs.true85.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %33, %if.then ], [ %69, %if.end89 ], [ -117, %land.lhs.true85.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lookup_ino) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %xname) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ino_set_corrupt(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_da_btree(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_dir_rec(ptr noundef %ds, i32 noundef %level) #3 align 64 {
entry:
  %bp = alloca ptr, align 4
  %hdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  %arrayidx = getelementptr %struct.xfs_da_state, ptr %1, i32 0, i32 2, i32 1, i32 %level
  %mp3 = getelementptr inbounds %struct.xfs_da_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mp3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mp3, align 4
  %dp4 = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 10
  %4 = ptrtoint ptr %dp4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp4, align 8
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_dir_geo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #7
  %8 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr) #7
  %9 = call ptr @memset(ptr %hdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %magic = getelementptr %struct.xfs_da_state, ptr %1, i32 0, i32 2, i32 1, i32 %level, i32 5
  %10 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %magic, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %cond.false [
    i32 54015, label %entry.cond.end_crit_edge
    i32 54001, label %entry.cond.end_crit_edge184
  ]

entry.cond.end_crit_edge184:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 225) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge184
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_addr, align 4
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %3, ptr noundef nonnull %hdr, ptr noundef %16) #7
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %hdr, i32 0, i32 5
  %17 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ents, align 4
  %index = getelementptr %struct.xfs_da_state, ptr %1, i32 0, i32 2, i32 1, i32 %level, i32 3
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 8
  %add.ptr = getelementptr %struct.xfs_dir2_leaf_entry, ptr %18, i32 %20
  %call = call i32 @xchk_da_btree_hash(ptr noundef %ds, i32 noundef %level, ptr noundef %add.ptr) #7
  %21 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end, label %cond.end.out_crit_edge

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %cond.end
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %18, i32 %20, i32 1
  %22 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp10 = icmp eq i32 %23, 0
  br i1 %cmp10, label %if.end.cleanup97_crit_edge, label %if.end12

if.end.cleanup97_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup97

if.end12:                                         ; preds = %if.end
  %conv.i.i = zext i32 %23 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 3
  %blklog.i.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %7, i32 0, i32 3
  %24 = ptrtoint ptr %blklog.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %blklog.i.i, align 1
  %sh_prom.i.i = zext i8 %25 to i64
  %shr.i2.i = lshr i64 %shl.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i2.i to i32
  %shl.i.i172 = shl i32 %23, 3
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %7, align 4
  %sub.i.i = add i32 %27, -1
  %conv1.i.i173 = and i32 %sub.i.i, %shl.i.i172
  %conv.i = zext i8 %25 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %7, i32 0, i32 2
  %28 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %29 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shl.i = shl i32 %conv1.i.i, %sub.i
  %leafblk = getelementptr inbounds %struct.xfs_da_geometry, ptr %7, i32 0, i32 10
  %30 = ptrtoint ptr %leafblk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %leafblk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %31)
  %cmp16.not = icmp ult i32 %shl.i, %31
  br i1 %cmp16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_da_set_corrupt(ptr noundef %ds, i32 noundef %level) #7
  br label %out

if.end18:                                         ; preds = %if.end12
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %ds, i32 0, i32 11
  %32 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %trans, align 4
  %call20 = call i32 @xfs_dir3_data_read(ptr noundef %33, ptr noundef %5, i32 noundef %shl.i, i32 noundef 1, ptr noundef nonnull %bp) #7
  %34 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call20, ptr %error, align 4
  %sc = getelementptr inbounds %struct.xchk_da_btree, ptr %ds, i32 0, i32 4
  %35 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sc, align 4
  %conv = zext i32 %shl.i to i64
  %call21 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %36, i32 noundef 0, i64 noundef %conv, ptr noundef nonnull %error) #7
  br i1 %call21, label %if.end23, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end23:                                         ; preds = %if.end18
  %37 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bp, align 4
  %tobool24.not = icmp eq ptr %38, null
  %39 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sc, align 4
  br i1 %tobool24.not, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_fblock_set_corrupt(ptr noundef %40, i32 noundef 0, i64 noundef %conv) #7
  br label %out

if.end28:                                         ; preds = %if.end23
  call void @xchk_buffer_recheck(ptr noundef %40, ptr noundef nonnull %38) #7
  %41 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sc, align 4
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sm_flags, align 4
  %and = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.out_relse_crit_edge

if.end28.out_relse_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_relse

if.end33:                                         ; preds = %if.end28
  %47 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bp, align 4
  %b_addr34 = getelementptr inbounds %struct.xfs_buf, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %b_addr34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %b_addr34, align 4
  %add.ptr35 = getelementptr i8, ptr %50, i32 %conv1.i.i173
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %7, i32 0, i32 15
  %51 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_entry_offset, align 4
  %call37 = call i32 @xfs_dir3_data_end_offset(ptr noundef %7, ptr noundef %50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end33.out_relse.sink.split_crit_edge, label %for.cond.preheader

if.end33.out_relse.sink.split_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_relse.sink.split

for.cond.preheader:                               ; preds = %if.end33
  %53 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bp, align 4
  %b_addr43 = getelementptr inbounds %struct.xfs_buf, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %b_addr43 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_addr43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %call37)
  %cmp47.not181 = icmp ult i32 %52, %call37
  br i1 %cmp47.not181, label %if.end52.lr.ph, label %for.cond.preheader.out_relse.sink.split_crit_edge

for.cond.preheader.out_relse.sink.split_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_relse.sink.split

if.end52.lr.ph:                                   ; preds = %for.cond.preheader
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  br label %if.end52

if.end52:                                         ; preds = %cleanup.if.end52_crit_edge, %if.end52.lr.ph
  %iter_off.0182 = phi i32 [ %52, %if.end52.lr.ph ], [ %iter_off.1, %cleanup.if.end52_crit_edge ]
  %add.ptr44183 = getelementptr i8, ptr %56, i32 %iter_off.0182
  %57 = ptrtoint ptr %add.ptr44183 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr44183, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %58)
  %cmp54 = icmp eq i16 %58, -1
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %length = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr44183, i32 0, i32 1
  %59 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %length, align 2
  %conv57 = zext i16 %60 to i32
  br label %cleanup

if.end58:                                         ; preds = %if.end52
  %cmp59 = icmp eq ptr %add.ptr44183, %add.ptr35
  br i1 %cmp59, label %for.end, label %if.end62

if.end62:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr44183, i32 0, i32 1
  %61 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %namelen, align 8
  %conv63 = zext i8 %62 to i32
  %63 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %64, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %spec.select.v.i = select i1 %tobool.i.not.i, i32 11, i32 12
  %spec.select.i = add nsw i32 %conv63, -1
  %sub.i174 = add nsw i32 %spec.select.i, %spec.select.v.i
  %or.i = or i32 %sub.i174, 7
  %add3.i = add nsw i32 %or.i, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then56
  %conv57.pn = phi i32 [ %conv57, %if.then56 ], [ %add3.i, %if.end62 ]
  %iter_off.1 = add i32 %conv57.pn, %iter_off.0182
  %cmp47.not = icmp ult i32 %iter_off.1, %call37
  br i1 %cmp47.not, label %cleanup.if.end52_crit_edge, label %cleanup.out_relse.sink.split_crit_edge

cleanup.out_relse.sink.split_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_relse.sink.split

cleanup.if.end52_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

for.end:                                          ; preds = %if.end58
  %65 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %add.ptr35, align 8
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr, align 4
  %call68 = call ptr @xfs_dir2_data_entry_tag_p(ptr noundef %3, ptr noundef %add.ptr35) #7
  %69 = ptrtoint ptr %call68 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %call68, align 2
  %call71 = call zeroext i1 @xfs_verify_dir_ino(ptr noundef %3, i64 noundef %66) #7
  %conv70 = zext i16 %70 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i173, i32 %conv70)
  %cmp72.not = icmp eq i32 %conv1.i.i173, %conv70
  %or.cond = select i1 %call71, i1 %cmp72.not, i1 false
  br i1 %or.cond, label %for.end.if.end77_crit_edge, label %if.then74

for.end.if.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then74:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sc, align 4
  call void @xchk_fblock_set_corrupt(ptr noundef %72, i32 noundef 0, i64 noundef %conv) #7
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %for.end.if.end77_crit_edge
  %namelen78 = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr35, i32 0, i32 1
  %73 = ptrtoint ptr %namelen78 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %namelen78, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp80 = icmp eq i8 %74, 0
  br i1 %cmp80, label %if.end77.out_relse.sink.split_crit_edge, label %if.end85

if.end77.out_relse.sink.split_crit_edge:          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_relse.sink.split

if.end85:                                         ; preds = %if.end77
  %conv79 = zext i8 %74 to i32
  %name = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr35, i32 0, i32 2
  %call88 = call i32 @xfs_da_hashname(ptr noundef %name, i32 noundef %conv79) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call88, i32 %68)
  %cmp89.not = icmp eq i32 %call88, %68
  br i1 %cmp89.not, label %if.end85.out_relse_crit_edge, label %if.end85.out_relse.sink.split_crit_edge

if.end85.out_relse.sink.split_crit_edge:          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_relse.sink.split

if.end85.out_relse_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_relse

out_relse.sink.split:                             ; preds = %if.end85.out_relse.sink.split_crit_edge, %if.end77.out_relse.sink.split_crit_edge, %cleanup.out_relse.sink.split_crit_edge, %for.cond.preheader.out_relse.sink.split_crit_edge, %if.end33.out_relse.sink.split_crit_edge
  %75 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sc, align 4
  call void @xchk_fblock_set_corrupt(ptr noundef %76, i32 noundef 0, i64 noundef %conv) #7
  br label %out_relse

out_relse:                                        ; preds = %out_relse.sink.split, %if.end85.out_relse_crit_edge, %if.end28.out_relse_crit_edge
  %77 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %trans, align 4
  %79 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %78, ptr noundef %80) #7
  br label %out

out:                                              ; preds = %out_relse, %if.then25, %if.end18.out_crit_edge, %if.then17, %cond.end.out_crit_edge
  %81 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %error, align 4
  br label %cleanup97

cleanup97:                                        ; preds = %out, %if.end.cleanup97_crit_edge
  %retval.0 = phi i32 [ %82, %out ], [ 0, %if.end.cleanup97_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_directory_blocks(ptr noundef %sc) unnamed_addr #3 align 64 {
entry:
  %got = alloca %struct.xfs_bmbt_irec, align 8
  %args = alloca %struct.xfs_da_args, align 8
  %icur = alloca %struct.xfs_iext_cursor, align 4
  %is_block = alloca i32, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %got) #7
  %0 = call ptr @memset(ptr %got, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %args) #7
  %1 = call ptr @memset(ptr %args, i32 255, i32 112)
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ip, align 4
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #7
  %6 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !19
  %7 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_block) #7
  %9 = ptrtoint ptr %is_block to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %is_block, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 8, i32 6
  %10 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %if_format, align 2
  %12 = and i8 %11, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %switch = icmp eq i8 %12, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 31
  %13 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m_blockmask, align 8
  %conv7 = zext i32 %14 to i64
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 20
  %15 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %16 to i64
  %shr = lshr i64 %conv7, %sh_prom
  %add11 = or i64 %conv7, 34359738368
  %shr16 = lshr i64 %add11, %sh_prom
  %add19 = or i64 %conv7, 68719476736
  %shr24 = lshr i64 %add19, %sh_prom
  %dp = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 10
  %17 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %dp, align 8
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m_dir_geo, align 4
  %20 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %args, align 8
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %21 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tp, align 4
  %trans = getelementptr inbounds %struct.xfs_da_args, ptr %args, i32 0, i32 11
  %23 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %trans, align 4
  %call = call i32 @xfs_dir2_isblock(ptr noundef nonnull %args, ptr noundef nonnull %is_block) #7
  %24 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call, ptr %error, align 4
  %call26 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef %shr, ptr noundef nonnull %error) #7
  br i1 %call26, label %if.end28, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end28:                                         ; preds = %if.end
  %25 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ip, align 4
  %call30 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %26, ptr noundef %i_df, i64 noundef %shr, ptr noundef nonnull %icur, ptr noundef nonnull %got) #7
  br i1 %call30, label %land.rhs.lr.ph, label %if.end28.while.end_crit_edge

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end28
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 2
  %27 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sm, align 4
  %sm_flags308 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %sm_flags308 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sm_flags308, align 4
  %and309 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and309)
  %tobool32.not310 = icmp eq i32 %and309, 0
  br i1 %tobool32.not310, label %land.rhs.lr.ph.while.body_crit_edge, label %land.rhs.lr.ph.while.end_crit_edge

land.rhs.lr.ph.while.end_crit_edge:               ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs.lr.ph.while.body_crit_edge:              ; preds = %land.rhs.lr.ph
  br label %while.body

land.rhs:                                         ; preds = %for.end
  %31 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sm_flags, align 4
  %and = and i32 %34, 2
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %land.rhs.while.body_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.lr.ph.while.body_crit_edge
  %last_data_db.0268312 = phi i32 [ %last_data_db.1.lcssa, %land.rhs.while.body_crit_edge ], [ 0, %land.rhs.lr.ph.while.body_crit_edge ]
  %lblk.0269311 = phi i64 [ %conv71, %land.rhs.while.body_crit_edge ], [ %shr, %land.rhs.lr.ph.while.body_crit_edge ]
  %35 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %got, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %shr16)
  %cmp33.not = icmp ult i64 %36, %shr16
  br i1 %cmp33.not, label %if.end36, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end36:                                         ; preds = %while.body
  %37 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %args, align 8
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fsbcount, align 4
  %conv39 = trunc i64 %36 to i32
  %sub = add i32 %conv39, -1
  %add40 = add i32 %sub, %40
  %41 = urem i32 %add40, %40
  %mul = sub i32 %add40, %41
  %conv41 = zext i32 %mul to i64
  %42 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %got, align 8
  %44 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %br_blockcount, align 8
  %add43262 = add i64 %45, %43
  call void @__sanitizer_cov_trace_cmp8(i64 %add43262, i64 %conv41)
  %cmp44263 = icmp ugt i64 %add43262, %conv41
  %extract.t281 = trunc i64 %add43262 to i32
  br i1 %cmp44263, label %if.end36.for.body_crit_edge, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end36.for.body_crit_edge
  %lblk.1264 = phi i64 [ %add58, %for.inc.for.body_crit_edge ], [ %conv41, %if.end36.for.body_crit_edge ]
  %46 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %args, align 8
  %conv47 = trunc i64 %lblk.1264 to i32
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %blklog.i, align 1
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %fsblog.i, align 4
  %52 = ptrtoint ptr %is_block to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %is_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool50 = icmp ne i32 %53, 0
  %call51 = call fastcc i32 @xchk_directory_data_bestfree(ptr noundef %sc, i32 noundef %conv47, i1 noundef zeroext %tobool50)
  %54 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call51, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.inc, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.inc:                                          ; preds = %for.body
  %55 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %args, align 8
  %fsbcount56 = getelementptr inbounds %struct.xfs_da_geometry, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %fsbcount56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fsbcount56, align 4
  %conv57 = zext i32 %58 to i64
  %add58 = add i64 %lblk.1264, %conv57
  %59 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %got, align 8
  %61 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %br_blockcount, align 8
  %add43 = add i64 %62, %60
  %cmp44 = icmp ult i64 %add58, %add43
  br i1 %cmp44, label %for.inc.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %conv47.le = trunc i64 %lblk.1264 to i32
  %conv.i.le = zext i8 %49 to i32
  %conv1.i.le = zext i8 %51 to i32
  %sub.i.le = sub nsw i32 %conv.i.le, %conv1.i.le
  %shr.i.le = lshr i32 %conv47.le, %sub.i.le
  %extract.t280 = trunc i64 %add43 to i32
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end36.for.end_crit_edge
  %last_data_db.1.lcssa = phi i32 [ %shr.i.le, %for.cond.for.end_crit_edge ], [ %last_data_db.0268312, %if.end36.for.end_crit_edge ]
  %add43.lcssa.off0 = phi i32 [ %extract.t280, %for.cond.for.end_crit_edge ], [ %extract.t281, %if.end36.for.end_crit_edge ]
  %63 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %args, align 8
  %fsbcount65 = getelementptr inbounds %struct.xfs_da_geometry, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %fsbcount65 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fsbcount65, align 4
  %sub67 = add i32 %add43.lcssa.off0, -1
  %add68 = add i32 %sub67, %66
  %67 = urem i32 %add68, %66
  %mul70 = sub i32 %add68, %67
  %conv71 = zext i32 %mul70 to i64
  %68 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ip, align 4
  %call73 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %69, ptr noundef %i_df, i64 noundef %conv71, ptr noundef nonnull %icur, ptr noundef nonnull %got) #7
  br i1 %call73, label %land.rhs, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %land.rhs.lr.ph.while.end_crit_edge, %if.end28.while.end_crit_edge
  %last_data_db.0.lcssa = phi i32 [ 0, %if.end28.while.end_crit_edge ], [ 0, %land.rhs.lr.ph.while.end_crit_edge ], [ %last_data_db.1.lcssa, %land.rhs.while.end_crit_edge ], [ %last_data_db.0268312, %while.body.while.end_crit_edge ], [ %last_data_db.1.lcssa, %for.end.while.end_crit_edge ]
  %lblk.0.lcssa = phi i64 [ %shr, %if.end28.while.end_crit_edge ], [ %shr, %land.rhs.lr.ph.while.end_crit_edge ], [ %conv71, %land.rhs.while.end_crit_edge ], [ %lblk.0269311, %while.body.while.end_crit_edge ], [ %conv71, %for.end.while.end_crit_edge ]
  %sm75 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %70 = ptrtoint ptr %sm75 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sm75, align 4
  %sm_flags76 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %sm_flags76 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sm_flags76, align 4
  %and77 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end80, label %while.end.out_crit_edge

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end80:                                         ; preds = %while.end
  %74 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ip, align 4
  %call82 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %75, ptr noundef %i_df, i64 noundef %shr16, ptr noundef nonnull %icur, ptr noundef nonnull %got) #7
  br i1 %call82, label %land.lhs.true84, label %if.end80.if.end106_crit_edge

if.end80.if.end106_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

land.lhs.true84:                                  ; preds = %if.end80
  %76 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %got, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %77, i64 %shr16)
  %cmp86 = icmp eq i64 %77, %shr16
  br i1 %cmp86, label %land.lhs.true88, label %land.lhs.true84.if.end106_crit_edge

land.lhs.true84.if.end106_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

land.lhs.true88:                                  ; preds = %land.lhs.true84
  %br_blockcount89 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 2
  %78 = ptrtoint ptr %br_blockcount89 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %br_blockcount89, align 8
  %80 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %args, align 8
  %fsbcount91 = getelementptr inbounds %struct.xfs_da_geometry, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %fsbcount91 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fsbcount91, align 4
  %conv92 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %79, i64 %conv92)
  %cmp93 = icmp eq i64 %79, %conv92
  br i1 %cmp93, label %land.lhs.true95, label %land.lhs.true88.if.end106_crit_edge

land.lhs.true88.if.end106_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

land.lhs.true95:                                  ; preds = %land.lhs.true88
  call void @xfs_iext_next(ptr noundef %i_df, ptr noundef nonnull %icur) #7
  %call.i = call zeroext i1 @xfs_iext_get_extent(ptr noundef %i_df, ptr noundef nonnull %icur, ptr noundef nonnull %got) #7
  br i1 %call.i, label %land.lhs.true95.if.end106_crit_edge, label %if.then97

land.lhs.true95.if.end106_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then97:                                        ; preds = %land.lhs.true95
  %84 = ptrtoint ptr %is_block to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %is_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool98.not = icmp eq i32 %85, 0
  br i1 %tobool98.not, label %if.end100, label %if.then97.out.sink.split_crit_edge

if.then97.out.sink.split_crit_edge:               ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end100:                                        ; preds = %if.then97
  %conv101 = trunc i64 %shr16 to i32
  %call102 = call fastcc i32 @xchk_directory_leaf1_bestfree(ptr noundef %sc, ptr noundef nonnull %args, i32 noundef %last_data_db.0.lcssa, i32 noundef %conv101)
  %86 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call102, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end100.if.end106_crit_edge, label %if.end100.out_crit_edge

if.end100.out_crit_edge:                          ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end100.if.end106_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.end106:                                        ; preds = %if.end100.if.end106_crit_edge, %land.lhs.true95.if.end106_crit_edge, %land.lhs.true88.if.end106_crit_edge, %land.lhs.true84.if.end106_crit_edge, %if.end80.if.end106_crit_edge
  %87 = ptrtoint ptr %sm75 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sm75, align 4
  %sm_flags108 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %sm_flags108 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sm_flags108, align 4
  %and109 = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end112, label %if.end106.out_crit_edge

if.end106.out_crit_edge:                          ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end112:                                        ; preds = %if.end106
  %91 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ip, align 4
  %call114 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %92, ptr noundef %i_df, i64 noundef %shr24, ptr noundef nonnull %icur, ptr noundef nonnull %got) #7
  br i1 %call114, label %land.rhs119.lr.ph, label %if.end112.out_crit_edge

if.end112.out_crit_edge:                          ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.rhs119.lr.ph:                                ; preds = %if.end112
  %br_blockcount148 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 2
  br label %land.rhs119

land.rhs119:                                      ; preds = %for.end163.land.rhs119_crit_edge, %land.rhs119.lr.ph
  %93 = ptrtoint ptr %sm75 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sm75, align 4
  %sm_flags121 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %sm_flags121 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sm_flags121, align 4
  %and122 = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %while.body126, label %land.rhs119.out_crit_edge

land.rhs119.out_crit_edge:                        ; preds = %land.rhs119
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.body126:                                    ; preds = %land.rhs119
  %97 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %got, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %98)
  %tobool129.not = icmp ult i64 %98, 4294967296
  br i1 %tobool129.not, label %if.end131, label %while.body126.out.sink.split_crit_edge

while.body126.out.sink.split_crit_edge:           ; preds = %while.body126
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end131:                                        ; preds = %while.body126
  %99 = ptrtoint ptr %is_block to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %is_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool132.not = icmp eq i32 %100, 0
  br i1 %tobool132.not, label %if.end134, label %if.end131.out.sink.split_crit_edge

if.end131.out.sink.split_crit_edge:               ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end134:                                        ; preds = %if.end131
  %101 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %args, align 8
  %fsbcount137 = getelementptr inbounds %struct.xfs_da_geometry, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %fsbcount137 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %fsbcount137, align 4
  %conv140 = trunc i64 %98 to i32
  %sub141 = add i32 %conv140, -1
  %add142 = add i32 %sub141, %104
  %105 = urem i32 %add142, %104
  %mul144 = sub i32 %add142, %105
  %conv145 = zext i32 %mul144 to i64
  %106 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %got, align 8
  %108 = ptrtoint ptr %br_blockcount148 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %br_blockcount148, align 8
  %add149275 = add i64 %109, %107
  call void @__sanitizer_cov_trace_cmp8(i64 %add149275, i64 %conv145)
  %cmp150276 = icmp ugt i64 %add149275, %conv145
  %extract.t = trunc i64 %add149275 to i32
  br i1 %cmp150276, label %if.end134.for.body152_crit_edge, label %if.end134.for.end163_crit_edge

if.end134.for.end163_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end163

if.end134.for.body152_crit_edge:                  ; preds = %if.end134
  br label %for.body152

for.body152:                                      ; preds = %for.inc158.for.body152_crit_edge, %if.end134.for.body152_crit_edge
  %lblk.2277 = phi i64 [ %add162, %for.inc158.for.body152_crit_edge ], [ %conv145, %if.end134.for.body152_crit_edge ]
  %conv153 = trunc i64 %lblk.2277 to i32
  %call154 = call fastcc i32 @xchk_directory_free_bestfree(ptr noundef %sc, ptr noundef nonnull %args, i32 noundef %conv153)
  %110 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %call154, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %for.inc158, label %for.body152.out_crit_edge

for.body152.out_crit_edge:                        ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.inc158:                                       ; preds = %for.body152
  %111 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %args, align 8
  %fsbcount160 = getelementptr inbounds %struct.xfs_da_geometry, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %fsbcount160 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fsbcount160, align 4
  %conv161 = zext i32 %114 to i64
  %add162 = add i64 %lblk.2277, %conv161
  %115 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %got, align 8
  %117 = ptrtoint ptr %br_blockcount148 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %br_blockcount148, align 8
  %add149 = add i64 %118, %116
  %cmp150 = icmp ult i64 %add162, %add149
  br i1 %cmp150, label %for.inc158.for.body152_crit_edge, label %for.end163.loopexit

for.inc158.for.body152_crit_edge:                 ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body152

for.end163.loopexit:                              ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t279 = trunc i64 %add149 to i32
  br label %for.end163

for.end163:                                       ; preds = %for.end163.loopexit, %if.end134.for.end163_crit_edge
  %add149.lcssa.off0 = phi i32 [ %extract.t, %if.end134.for.end163_crit_edge ], [ %extract.t279, %for.end163.loopexit ]
  %119 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %args, align 8
  %fsbcount170 = getelementptr inbounds %struct.xfs_da_geometry, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %fsbcount170 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %fsbcount170, align 4
  %sub172 = add i32 %add149.lcssa.off0, -1
  %add173 = add i32 %sub172, %122
  %123 = urem i32 %add173, %122
  %mul175 = sub i32 %add173, %123
  %conv176 = zext i32 %mul175 to i64
  %124 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ip, align 4
  %call178 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %125, ptr noundef %i_df, i64 noundef %conv176, ptr noundef nonnull %icur, ptr noundef nonnull %got) #7
  br i1 %call178, label %for.end163.land.rhs119_crit_edge, label %for.end163.out_crit_edge

for.end163.out_crit_edge:                         ; preds = %for.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.end163.land.rhs119_crit_edge:                 ; preds = %for.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs119

out.sink.split:                                   ; preds = %if.end131.out.sink.split_crit_edge, %while.body126.out.sink.split_crit_edge, %if.then97.out.sink.split_crit_edge
  %.lcssa293.sink = phi i64 [ %lblk.0.lcssa, %if.then97.out.sink.split_crit_edge ], [ %98, %while.body126.out.sink.split_crit_edge ], [ %98, %if.end131.out.sink.split_crit_edge ]
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %.lcssa293.sink) #7
  br label %out

out:                                              ; preds = %out.sink.split, %for.end163.out_crit_edge, %for.body152.out_crit_edge, %land.rhs119.out_crit_edge, %if.end112.out_crit_edge, %if.end106.out_crit_edge, %if.end100.out_crit_edge, %while.end.out_crit_edge, %for.body.out_crit_edge, %if.end.out_crit_edge
  %126 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %127, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_block) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #7
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %got) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_readdir(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_fblock_process_error(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_dir_ino(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_fblock_set_corrupt(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_dir2_namecheck(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_dir_check_ftype(ptr nocapture noundef readonly %sdc, i64 noundef %offset, i64 noundef %inum, i32 noundef %dtype) unnamed_addr #3 align 64 {
entry:
  %ip = alloca ptr, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sc = getelementptr inbounds %struct.xchk_dir_ctx, ptr %sdc, i32 0, i32 1
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #7
  %4 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %ip, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %error, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %8 = zext i32 %dtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %dtype, label %if.then3 [
    i32 0, label %if.then.out_crit_edge
    i32 4, label %if.then.out_crit_edge38
  ]

if.then.out_crit_edge38:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xchk_fblock_set_corrupt(ptr noundef %1, i32 noundef 0, i64 noundef %offset) #7
  br label %out

if.end5:                                          ; preds = %entry
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tp, align 4
  %call7 = call i32 @xfs_iget(ptr noundef %3, ptr noundef %10, i64 noundef %inum, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ip) #7
  %11 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call7, ptr %error, align 4
  %12 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call7, label %if.end13 [
    i32 -22, label %if.end5.if.then10_crit_edge
    i32 -2, label %if.end5.if.then10_crit_edge39
  ]

if.end5.if.then10_crit_edge39:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.end5.if.then10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %if.end5.if.then10_crit_edge, %if.end5.if.then10_crit_edge39
  %13 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -117, ptr %error, align 4
  %14 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc, align 8
  %call12 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %15, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %error) #7
  br label %out

if.end13:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc, align 8
  %call15 = call zeroext i1 @xchk_fblock_xref_process_error(ptr noundef %17, i32 noundef 0, i64 noundef %offset, ptr noundef nonnull %error) #7
  br i1 %call15, label %if.end17, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end17:                                         ; preds = %if.end13
  %18 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %i_vnode.i, align 8
  %conv = zext i16 %21 to i32
  %call19 = call zeroext i8 @xfs_mode_to_ftype(i32 noundef %conv) #7
  %call20 = call zeroext i8 @xfs_dir3_get_dtype(ptr noundef %3, i8 noundef zeroext %call19) #7
  %conv21 = zext i8 %call20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv21, i32 %dtype)
  %cmp22.not = icmp eq i32 %conv21, %dtype
  br i1 %cmp22.not, label %if.end17.if.end26_crit_edge, label %if.then24

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sc, align 8
  call void @xchk_fblock_set_corrupt(ptr noundef %23, i32 noundef 0, i64 noundef %offset) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end17.if.end26_crit_edge
  %24 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ip, align 4
  call void @xfs_irele(ptr noundef %25) #7
  br label %out

out:                                              ; preds = %if.end26, %if.end13.out_crit_edge, %if.then10, %if.then3, %if.then.out_crit_edge, %if.then.out_crit_edge38
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #7
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iget(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_fblock_xref_process_error(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @xfs_dir3_get_dtype(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @xfs_mode_to_ftype(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_leaf_hdr_from_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_da_btree_hash(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_da_set_corrupt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_data_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_buffer_recheck(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_data_end_offset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dir2_data_entry_tag_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_hashname(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_isblock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_lookup_extent(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_directory_data_bestfree(ptr noundef %sc, i32 noundef %lblk, i1 noundef zeroext %is_block) unnamed_addr #3 align 64 {
entry:
  %bp = alloca ptr, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #7
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !19
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  br i1 %is_block, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lblk)
  %cmp.not = icmp eq i32 %lblk, 0
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %lblk to i64
  tail call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %conv) #7
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp, align 4
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ip, align 4
  %call = call i32 @xfs_dir3_block_read(ptr noundef %4, ptr noundef %6, ptr noundef nonnull %bp) #7
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tp6 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %7 = ptrtoint ptr %tp6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tp6, align 4
  %ip7 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %9 = ptrtoint ptr %ip7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ip7, align 4
  %call8 = call i32 @xfs_dir3_data_read(ptr noundef %8, ptr noundef %10, i32 noundef %lblk, i32 noundef 0, ptr noundef nonnull %bp) #7
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %storemerge = phi i32 [ %call8, %if.else ], [ %call, %if.end ]
  %11 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %error, align 4
  %conv10 = zext i32 %lblk to i64
  %call11 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef %conv10, ptr noundef nonnull %error) #7
  br i1 %call11, label %if.end13, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end13:                                         ; preds = %if.end9
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bp, align 4
  call void @xchk_buffer_recheck(ptr noundef %sc, ptr noundef %13) #7
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %14 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sm_flags, align 4
  %and = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end16, label %if.end13.out_buf_crit_edge

if.end13.out_buf_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_buf

if.end16:                                         ; preds = %if.end13
  %18 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_addr, align 4
  %call17 = call ptr @xfs_dir2_data_bestfree_p(ptr noundef %2, ptr noundef %21) #7
  %arrayidx18 = getelementptr %struct.xfs_dir2_data_free, ptr %call17, i32 3
  %cmp19218 = icmp ult ptr %call17, %arrayidx18
  br i1 %cmp19218, label %for.body.lr.ph, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %smallest_bestfree.0221 = phi i32 [ -1, %for.body.lr.ph ], [ %smallest_bestfree.1, %for.inc.for.body_crit_edge ]
  %nr_bestfrees.0220 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_bestfrees.1, %for.inc.for.body_crit_edge ]
  %dfp.0219 = phi ptr [ %call17, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %22 = ptrtoint ptr %dfp.0219 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dfp.0219, align 2
  %conv22 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp23 = icmp eq i16 %23, 0
  br i1 %cmp23, label %for.body.for.inc_crit_edge, label %if.end26

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end26:                                         ; preds = %for.body
  %24 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m_dir_geo, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv22)
  %cmp27.not = icmp ugt i32 %27, %conv22
  br i1 %cmp27.not, label %if.end31, label %if.end26.out_buf.sink.split_crit_edge

if.end26.out_buf.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_buf.sink.split

if.end31:                                         ; preds = %if.end26
  %28 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bp, align 4
  %b_addr32 = getelementptr inbounds %struct.xfs_buf, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %b_addr32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_addr32, align 4
  %add.ptr = getelementptr i8, ptr %31, i32 %conv22
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %33)
  %cmp35.not = icmp eq i16 %33, -1
  br i1 %cmp35.not, label %lor.lhs.false, label %if.end31.out_buf.sink.split_crit_edge

if.end31.out_buf.sink.split_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_buf.sink.split

lor.lhs.false:                                    ; preds = %if.end31
  %length.i = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr, i32 0, i32 1
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %35 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 -2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %36 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr1.i, align 2
  %length38 = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %dfp.0219, i32 0, i32 1
  %38 = ptrtoint ptr %length38 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %length38, align 2
  %conv39 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %39)
  %cmp40.not = icmp ne i16 %35, %39
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %23)
  %cmp44.not = icmp ne i16 %37, %23
  %or.cond = select i1 %cmp40.not, i1 true, i1 %cmp44.not
  call void @__sanitizer_cov_trace_cmp4(i32 %smallest_bestfree.0221, i32 %conv39)
  %cmp51 = icmp ult i32 %smallest_bestfree.0221, %conv39
  %or.cond253 = select i1 %or.cond, i1 true, i1 %cmp51
  br i1 %or.cond253, label %lor.lhs.false.out_buf.sink.split_crit_edge, label %if.end55

lor.lhs.false.out_buf.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_buf.sink.split

if.end55:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %nr_bestfrees.0220, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end55, %for.body.for.inc_crit_edge
  %nr_bestfrees.1 = phi i32 [ %nr_bestfrees.0220, %for.body.for.inc_crit_edge ], [ %inc, %if.end55 ]
  %smallest_bestfree.1 = phi i32 [ %smallest_bestfree.0221, %for.body.for.inc_crit_edge ], [ %conv39, %if.end55 ]
  %incdec.ptr = getelementptr %struct.xfs_dir2_data_free, ptr %dfp.0219, i32 1
  %cmp19 = icmp ult ptr %incdec.ptr, %arrayidx18
  br i1 %cmp19, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge
  %nr_bestfrees.0.lcssa = phi i32 [ 0, %if.end16.for.end_crit_edge ], [ %nr_bestfrees.1, %for.inc.for.end_crit_edge ]
  %m_dir_geo58 = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 6
  %40 = ptrtoint ptr %m_dir_geo58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %m_dir_geo58, align 4
  %data_entry_offset = getelementptr inbounds %struct.xfs_da_geometry, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %data_entry_offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_entry_offset, align 4
  %44 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bp, align 4
  %b_addr60 = getelementptr inbounds %struct.xfs_buf, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %b_addr60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %b_addr60, align 4
  %call61 = call i32 @xfs_dir3_data_end_offset(ptr noundef %41, ptr noundef %47) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %call61)
  %cmp62222228 = icmp ult i32 %43, %call61
  br i1 %cmp62222228, label %while.body.lr.ph.lr.ph, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %for.end
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 61
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end100.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %offset.0.ph230 = phi i32 [ %43, %while.body.lr.ph.lr.ph ], [ %add101, %if.end100.while.body.lr.ph_crit_edge ]
  %nr_frees.0.ph229 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %spec.select, %if.end100.while.body.lr.ph_crit_edge ]
  %48 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bp, align 4
  %b_addr64 = getelementptr inbounds %struct.xfs_buf, ptr %49, i32 0, i32 16
  %50 = ptrtoint ptr %b_addr64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_addr64, align 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %offset.0223 = phi i32 [ %offset.0.ph230, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %add.ptr65 = getelementptr i8, ptr %51, i32 %offset.0223
  %52 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr65, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %53)
  %cmp68.not = icmp eq i16 %53, -1
  br i1 %cmp68.not, label %if.end80, label %if.then70

if.then70:                                        ; preds = %while.body
  %namelen = getelementptr inbounds %struct.xfs_dir2_data_entry, ptr %add.ptr65, i32 0, i32 1
  %54 = ptrtoint ptr %namelen to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %namelen, align 8
  %conv73 = zext i8 %55 to i32
  %56 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %57, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %spec.select.v.i = select i1 %tobool.i.not.i, i32 11, i32 12
  %spec.select.i = add nsw i32 %conv73, -1
  %sub.i = add nsw i32 %spec.select.i, %spec.select.v.i
  %or.i = or i32 %sub.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp75 = icmp slt i32 %or.i, 0
  br i1 %cmp75, label %if.then70.out_buf.sink.split_crit_edge, label %cleanup

if.then70.out_buf.sink.split_crit_edge:           ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_buf.sink.split

cleanup:                                          ; preds = %if.then70
  %add3.i = add i32 %offset.0223, 1
  %add = add i32 %add3.i, %or.i
  %cmp62 = icmp ult i32 %add, %call61
  br i1 %cmp62, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end80:                                         ; preds = %while.body
  %length.i200 = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %add.ptr65, i32 0, i32 1
  %58 = ptrtoint ptr %length.i200 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %length.i200, align 2
  %conv.i201 = zext i16 %59 to i32
  %add.ptr.i202 = getelementptr i8, ptr %add.ptr65, i32 -2
  %add.ptr1.i203 = getelementptr i8, ptr %add.ptr.i202, i32 %conv.i201
  %60 = ptrtoint ptr %add.ptr1.i203 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr1.i203, align 2
  %conv82 = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0223, i32 %conv82)
  %cmp83.not = icmp eq i32 %offset.0223, %conv82
  br i1 %cmp83.not, label %if.end87, label %if.end80.out_buf.sink.split_crit_edge

if.end80.out_buf.sink.split_crit_edge:            ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_buf.sink.split

if.end87:                                         ; preds = %if.end80
  call fastcc void @xchk_directory_check_free_entry(ptr noundef %sc, i32 noundef %lblk, ptr noundef %call17, ptr noundef %add.ptr65)
  %62 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sm, align 4
  %sm_flags89 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %sm_flags89 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sm_flags89, align 4
  %and90 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end87.out_buf_crit_edge

if.end87.out_buf_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_buf

if.end93:                                         ; preds = %if.end87
  %66 = ptrtoint ptr %length.i200 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %length.i200, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp96 = icmp eq i16 %67, 0
  br i1 %cmp96, label %if.end93.out_buf.sink.split_crit_edge, label %if.end100

if.end93.out_buf.sink.split_crit_edge:            ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_buf.sink.split

if.end100:                                        ; preds = %if.end93
  %conv95 = zext i16 %67 to i32
  %add101 = add i32 %offset.0223, %conv95
  call void @__sanitizer_cov_trace_cmp4(i32 %add101, i32 %call61)
  %cmp102.not = icmp ule i32 %add101, %call61
  %inc105 = zext i1 %cmp102.not to i32
  %spec.select = add i32 %nr_frees.0.ph229, %inc105
  %cmp62222 = icmp ult i32 %add101, %call61
  br i1 %cmp62222, label %if.end100.while.body.lr.ph_crit_edge, label %if.end100.while.end_crit_edge

if.end100.while.end_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end100.while.body.lr.ph_crit_edge:             ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph

while.end:                                        ; preds = %if.end100.while.end_crit_edge, %cleanup.while.end_crit_edge, %for.end.while.end_crit_edge
  %nr_frees.0.ph.lcssa214 = phi i32 [ 0, %for.end.while.end_crit_edge ], [ %nr_frees.0.ph229, %cleanup.while.end_crit_edge ], [ %spec.select, %if.end100.while.end_crit_edge ]
  %offset.0.lcssa = phi i32 [ %43, %for.end.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ], [ %add101, %if.end100.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0.lcssa, i32 %call61)
  %cmp107.not = icmp eq i32 %offset.0.lcssa, %call61
  br i1 %cmp107.not, label %while.end.if.end111_crit_edge, label %if.then109

while.end.if.end111_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then109:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %conv10) #7
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %while.end.if.end111_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_frees.0.ph.lcssa214, i32 %nr_bestfrees.0.lcssa)
  %cmp112 = icmp ult i32 %nr_frees.0.ph.lcssa214, %nr_bestfrees.0.lcssa
  br i1 %cmp112, label %if.end111.out_buf.sink.split_crit_edge, label %if.end111.out_buf_crit_edge

if.end111.out_buf_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_buf

if.end111.out_buf.sink.split_crit_edge:           ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_buf.sink.split

out_buf.sink.split:                               ; preds = %if.end111.out_buf.sink.split_crit_edge, %if.end93.out_buf.sink.split_crit_edge, %if.end80.out_buf.sink.split_crit_edge, %if.then70.out_buf.sink.split_crit_edge, %lor.lhs.false.out_buf.sink.split_crit_edge, %if.end31.out_buf.sink.split_crit_edge, %if.end26.out_buf.sink.split_crit_edge
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %conv10) #7
  br label %out_buf

out_buf:                                          ; preds = %out_buf.sink.split, %if.end111.out_buf_crit_edge, %if.end87.out_buf_crit_edge, %if.end13.out_buf_crit_edge
  %tp117 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %68 = ptrtoint ptr %tp117 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tp117, align 4
  %70 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %69, ptr noundef %71) #7
  br label %out

out:                                              ; preds = %out_buf, %if.end9.out_crit_edge
  %72 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #7
  ret i32 %73
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_directory_leaf1_bestfree(ptr noundef %sc, ptr nocapture noundef readonly %args, i32 noundef %last_data_db, i32 noundef %lblk) unnamed_addr #3 align 64 {
entry:
  %leafhdr = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  %dbp = alloca ptr, align 4
  %bp = alloca ptr, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %leafhdr) #7
  %0 = call ptr @memset(ptr %leafhdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbp) #7
  %1 = ptrtoint ptr %dbp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %dbp, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #7
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !19
  %3 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc, align 4
  %m_dir_geo = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %m_dir_geo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_dir_geo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %7 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tp, align 4
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %9 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ip, align 4
  %call = call i32 @xfs_dir3_leaf_read(ptr noundef %8, ptr noundef %10, i32 noundef %lblk, ptr noundef nonnull %bp) #7
  %11 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call, ptr %error, align 4
  %conv = zext i32 %lblk to i64
  %call1 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef %conv, ptr noundef nonnull %error) #7
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bp, align 4
  call void @xchk_buffer_recheck(ptr noundef %sc, ptr noundef %13) #7
  %14 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_addr, align 4
  %18 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ip, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  call void @xfs_dir2_leaf_hdr_from_disk(ptr noundef %21, ptr noundef nonnull %leafhdr, ptr noundef %17) #7
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %6, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %23
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr1.i, align 4
  %idx.neg.i = sub i32 0, %25
  %add.ptr.i165 = getelementptr i16, ptr %add.ptr1.i, i32 %idx.neg.i
  %26 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sc, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %27, i32 0, i32 61
  %28 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then8:                                         ; preds = %if.end
  %30 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bp, align 4
  %b_addr9 = getelementptr inbounds %struct.xfs_buf, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %b_addr9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_addr9, align 4
  %pad = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not = icmp eq i32 %35, 0
  br i1 %cmp.not, label %if.then8.if.end14_crit_edge, label %if.then11

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %conv) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then8.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %add = add i32 %last_data_db, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add)
  %cmp15.not = icmp eq i32 %25, %add
  br i1 %cmp15.not, label %if.end19, label %if.end14.out.sink.split_crit_edge

if.end14.out.sink.split_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end19:                                         ; preds = %if.end14
  %count = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 3
  %36 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %count, align 2
  %conv20 = zext i16 %37 to i32
  %leaf_max_ents = getelementptr inbounds %struct.xfs_da_geometry, ptr %6, i32 0, i32 9
  %38 = ptrtoint ptr %leaf_max_ents to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %leaf_max_ents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv20)
  %cmp21 = icmp ult i32 %39, %conv20
  br i1 %cmp21, label %if.end19.out.sink.split_crit_edge, label %if.end25

if.end19.out.sink.split_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end25:                                         ; preds = %if.end19
  %ents = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 5
  %40 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ents, align 4
  %arrayidx = getelementptr %struct.xfs_dir2_leaf_entry, ptr %41, i32 %conv20
  %cmp27 = icmp ugt ptr %arrayidx, %add.ptr.i165
  br i1 %cmp27, label %if.end25.out.sink.split_crit_edge, label %for.cond.preheader

if.end25.out.sink.split_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

for.cond.preheader:                               ; preds = %if.end25
  %42 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp34167.not = icmp eq i16 %43, 0
  br i1 %cmp34167.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0170 = phi i32 [ %inc51, %if.end44.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %stale.0169 = phi i32 [ %spec.select, %if.end44.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %lasthash.0168 = phi i32 [ %47, %if.end44.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %44 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ents, align 4
  %arrayidx37 = getelementptr %struct.xfs_dir2_leaf_entry, ptr %45, i32 %i.0170
  %46 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0170)
  %cmp38 = icmp ne i32 %i.0170, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %lasthash.0168, i32 %47)
  %cmp40 = icmp ugt i32 %lasthash.0168, %47
  %or.cond = select i1 %cmp38, i1 %cmp40, i1 false
  br i1 %or.cond, label %if.then42, label %for.body.if.end44_crit_edge

for.body.if.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %conv) #7
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %for.body.if.end44_crit_edge
  %48 = ptrtoint ptr %ents to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ents, align 4
  %address = getelementptr %struct.xfs_dir2_leaf_entry, ptr %49, i32 %i.0170, i32 1
  %50 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp47 = icmp eq i32 %51, 0
  %inc = zext i1 %cmp47 to i32
  %spec.select = add i32 %stale.0169, %inc
  %inc51 = add nuw nsw i32 %i.0170, 1
  %52 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %count, align 2
  %conv33 = zext i16 %53 to i32
  %cmp34 = icmp ult i32 %inc51, %conv33
  br i1 %cmp34, label %if.end44.for.body_crit_edge, label %if.end44.for.end_crit_edge

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end44.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %stale.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %spec.select, %if.end44.for.end_crit_edge ]
  %stale52 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, ptr %leafhdr, i32 0, i32 4
  %54 = ptrtoint ptr %stale52 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %stale52, align 4
  %conv53 = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %stale.0.lcssa, i32 %conv53)
  %cmp54.not = icmp eq i32 %stale.0.lcssa, %conv53
  br i1 %cmp54.not, label %for.end.if.end58_crit_edge, label %if.then56

for.end.if.end58_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %conv) #7
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %for.end.if.end58_crit_edge
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %56 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sm_flags, align 4
  %and = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp62171 = icmp ne i32 %25, 0
  %or.cond174 = select i1 %tobool.not, i1 %cmp62171, i1 false
  br i1 %or.cond174, label %if.end58.for.body64_crit_edge, label %if.end58.out_crit_edge

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end58.for.body64_crit_edge:                    ; preds = %if.end58
  br label %for.body64

for.body64:                                       ; preds = %for.body64.backedge, %if.end58.for.body64_crit_edge
  %i.1173 = phi i32 [ %i.1173.be, %for.body64.backedge ], [ 0, %if.end58.for.body64_crit_edge ]
  %bestp.0172 = phi ptr [ %bestp.0172.be, %for.body64.backedge ], [ %add.ptr.i165, %if.end58.for.body64_crit_edge ]
  %60 = ptrtoint ptr %bestp.0172 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %bestp.0172, align 2
  %62 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tp, align 4
  %64 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ip, align 4
  %66 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %args, align 8
  %blklog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %blklog.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %blklog.i, align 1
  %conv.i = zext i8 %69 to i32
  %fsblog.i = getelementptr inbounds %struct.xfs_da_geometry, ptr %67, i32 0, i32 2
  %70 = ptrtoint ptr %fsblog.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %fsblog.i, align 4
  %conv1.i = zext i8 %71 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %shl.i = shl i32 %i.1173, %sub.i
  %call69 = call i32 @xfs_dir3_data_read(ptr noundef %63, ptr noundef %65, i32 noundef %shl.i, i32 noundef 1, ptr noundef nonnull %dbp) #7
  %72 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call69, ptr %error, align 4
  %call71 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef %conv, ptr noundef nonnull %error) #7
  br i1 %call71, label %if.end73, label %for.body64.out_crit_edge

for.body64.out_crit_edge:                         ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end73:                                         ; preds = %for.body64
  %73 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dbp, align 4
  %tobool74.not = icmp eq ptr %74, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %61)
  %cmp77.not = icmp eq i16 %61, -1
  br i1 %tobool74.not, label %if.then75, label %if.end82

if.then75:                                        ; preds = %if.end73
  br i1 %cmp77.not, label %for.inc97, label %if.then75.out.sink.split_crit_edge

if.then75.out.sink.split_crit_edge:               ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end82:                                         ; preds = %if.end73
  br i1 %cmp77.not, label %if.then86, label %if.else

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %conv) #7
  br label %if.end89

if.else:                                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %conv83 = zext i16 %61 to i32
  call fastcc void @xchk_directory_check_freesp(ptr noundef %sc, i32 noundef %lblk, ptr noundef nonnull %74, i32 noundef %conv83)
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.then86
  %75 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tp, align 4
  %77 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dbp, align 4
  call void @xfs_trans_brelse(ptr noundef %76, ptr noundef %78) #7
  %79 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sm, align 4
  %sm_flags92 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %sm_flags92 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sm_flags92, align 4
  %and93 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  %inc98 = add nuw i32 %i.1173, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc98, i32 %25)
  %cmp62 = icmp ult i32 %inc98, %25
  %or.cond175 = select i1 %tobool94.not, i1 %cmp62, i1 false
  br i1 %or.cond175, label %if.end89.for.body64.backedge_crit_edge, label %if.end89.out_crit_edge

if.end89.out_crit_edge:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end89.for.body64.backedge_crit_edge:           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body64.backedge

for.inc97:                                        ; preds = %if.then75
  %inc98.old = add nuw i32 %i.1173, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc98.old, i32 %25)
  %cmp62.old = icmp ult i32 %inc98.old, %25
  br i1 %cmp62.old, label %for.inc97.for.body64.backedge_crit_edge, label %for.inc97.out_crit_edge

for.inc97.out_crit_edge:                          ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.inc97.for.body64.backedge_crit_edge:          ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body64.backedge

for.body64.backedge:                              ; preds = %for.inc97.for.body64.backedge_crit_edge, %if.end89.for.body64.backedge_crit_edge
  %i.1173.be = phi i32 [ %inc98.old, %for.inc97.for.body64.backedge_crit_edge ], [ %inc98, %if.end89.for.body64.backedge_crit_edge ]
  %bestp.0172.be = getelementptr i16, ptr %bestp.0172, i32 1
  br label %for.body64

out.sink.split:                                   ; preds = %if.then75.out.sink.split_crit_edge, %if.end25.out.sink.split_crit_edge, %if.end19.out.sink.split_crit_edge, %if.end14.out.sink.split_crit_edge
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %conv) #7
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc97.out_crit_edge, %if.end89.out_crit_edge, %for.body64.out_crit_edge, %if.end58.out_crit_edge
  %83 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tp, align 4
  %85 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %84, ptr noundef %86) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %87 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %87)
  %retval.0 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbp) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %leafhdr) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_directory_free_bestfree(ptr noundef %sc, ptr nocapture noundef readonly %args, i32 noundef %lblk) unnamed_addr #3 align 64 {
entry:
  %freehdr = alloca %struct.xfs_dir3_icfree_hdr, align 4
  %dbp = alloca ptr, align 4
  %bp = alloca ptr, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %freehdr) #7
  %0 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, ptr %freehdr, i32 0, i32 4
  %4 = call ptr @memset(ptr %freehdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbp) #7
  %5 = ptrtoint ptr %dbp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %dbp, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #7
  %6 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #7
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %7 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tp, align 4
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %9 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ip, align 4
  %call = call i32 @xfs_dir2_free_read(ptr noundef %8, ptr noundef %10, i32 noundef %lblk, ptr noundef nonnull %bp) #7
  %11 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call, ptr %error, align 4
  %conv = zext i32 %lblk to i64
  %call1 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef %conv, ptr noundef nonnull %error) #7
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bp, align 4
  call void @xchk_buffer_recheck(ptr noundef %sc, ptr noundef %13) #7
  %14 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %15, i32 0, i32 61
  %16 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %18 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_addr, align 4
  %pad = getelementptr inbounds %struct.xfs_dir3_free_hdr, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not = icmp eq i32 %23, 0
  br i1 %cmp.not, label %if.then3.if.end8_crit_edge, label %if.then5

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %conv) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %24 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ip, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %28 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bp, align 4
  %b_addr10 = getelementptr inbounds %struct.xfs_buf, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %b_addr10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_addr10, align 4
  call void @xfs_dir2_free_hdr_from_disk(ptr noundef %27, ptr noundef nonnull %freehdr, ptr noundef %31) #7
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp1167.not = icmp eq i32 %33, 0
  br i1 %cmp1167.not, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.069 = phi i32 [ %inc27, %for.inc.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %stale.068 = phi i32 [ %stale.1, %for.inc.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr i16, ptr %35, i32 %i.069
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx, align 2
  %conv13 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %37)
  %cmp14 = icmp eq i16 %37, -1
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %stale.068, 1
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %38 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tp, align 4
  %40 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ip, align 4
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %0, align 4
  %add = add i32 %43, %i.069
  %44 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %args, align 8
  %fsbcount = getelementptr inbounds %struct.xfs_da_geometry, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %fsbcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fsbcount, align 4
  %mul = mul i32 %47, %add
  %call20 = call i32 @xfs_dir3_data_read(ptr noundef %39, ptr noundef %41, i32 noundef %mul, i32 noundef 0, ptr noundef nonnull %dbp) #7
  %48 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call20, ptr %error, align 4
  %call22 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef %conv, ptr noundef nonnull %error) #7
  br i1 %call22, label %if.end24, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dbp, align 4
  call fastcc void @xchk_directory_check_freesp(ptr noundef %sc, i32 noundef %lblk, ptr noundef %50, i32 noundef %conv13)
  %51 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tp, align 4
  %53 = ptrtoint ptr %dbp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dbp, align 4
  call void @xfs_trans_brelse(ptr noundef %52, ptr noundef %54) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %if.then16
  %stale.1 = phi i32 [ %inc, %if.then16 ], [ %stale.068, %if.end24 ]
  %inc27 = add nuw i32 %i.069, 1
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 4
  %cmp11 = icmp ult i32 %inc27, %56
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  %stale.0.lcssa = phi i32 [ 0, %if.end8.for.end_crit_edge ], [ %stale.1, %for.inc.for.end_crit_edge ]
  %.lcssa = phi i32 [ 0, %if.end8.for.end_crit_edge ], [ %56, %for.inc.for.end_crit_edge ]
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %2, align 4
  %add28 = add i32 %58, %stale.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %.lcssa)
  %cmp30.not = icmp eq i32 %add28, %.lcssa
  br i1 %cmp30.not, label %for.end.out_crit_edge, label %if.then32

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %conv) #7
  br label %out

out:                                              ; preds = %if.then32, %for.end.out_crit_edge, %if.end17.out_crit_edge
  %59 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tp, align 4
  %61 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %60, ptr noundef %62) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %63 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %63)
  %retval.0 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbp) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %freehdr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_block_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dir2_data_bestfree_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_directory_check_free_entry(ptr noundef %sc, i32 noundef %lblk, ptr noundef readonly %bf, ptr nocapture noundef readonly %dup) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.xfs_dir2_data_unused, ptr %dup, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 2
  %length1 = getelementptr %struct.xfs_dir2_data_free, ptr %bf, i32 2, i32 1
  %2 = ptrtoint ptr %length1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp = icmp ult i16 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.xfs_dir2_data_free, ptr %bf, i32 2
  %cmp5.not20 = icmp ult ptr %arrayidx, %bf
  br i1 %cmp5.not20, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.xfs_dir2_data_free, ptr %dfp.021, i32 -1
  %cmp5.not = icmp ult ptr %incdec.ptr, %bf
  br i1 %cmp5.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %dfp.021 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %arrayidx, %if.end.for.body_crit_edge ]
  %length7 = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %dfp.021, i32 0, i32 1
  %4 = ptrtoint ptr %length7 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %5)
  %cmp9 = icmp eq i16 %1, %5
  br i1 %cmp9, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %conv13 = zext i32 %lblk to i64
  tail call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %conv13) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_get_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_leaf_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_directory_check_freesp(ptr noundef %sc, i32 noundef %lblk, ptr nocapture noundef readonly %dbp, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %dbp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %call = tail call ptr @xfs_dir2_data_bestfree_p(ptr noundef %1, ptr noundef %3) #7
  %length = getelementptr inbounds %struct.xfs_dir2_data_free, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp.not = icmp eq i32 %conv, %len
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv2 = zext i32 %lblk to i64
  tail call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %conv2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp3.not = icmp eq i32 %len, 0
  br i1 %cmp3.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %call, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp6 = icmp eq i16 %7, 0
  br i1 %cmp6, label %if.then8, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %conv9 = zext i32 %lblk to i64
  tail call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %conv9) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir2_free_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dir2_free_hdr_from_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.named.register.sp = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/scrub/dir.c", i32 141, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/scrub/dir.c", i32 150, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/scrub/common.h", i32 24, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/xfs/scrub/dir.c", i32 224, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{!"sp"}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
