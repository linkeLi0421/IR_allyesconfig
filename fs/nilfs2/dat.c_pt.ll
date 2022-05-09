; ModuleID = '/llk/IR_all_yes/fs/nilfs2/dat.c_pt.bc'
source_filename = "../fs/nilfs2/dat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nilfs_palloc_req = type { i64, ptr, ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nilfs_dat_entry = type { i64, i64, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.79 = type { ptr }
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
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nilfs_transaction_info = type { i32, ptr, i16, i16 }
%struct.nilfs_mdt_info = type { %struct.rw_semaphore, ptr, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.nilfs_vinfo = type { i64, i64, i64, i64 }
%struct.nilfs_dat_info = type { %struct.nilfs_mdt_info, %struct.nilfs_palloc_cache, %struct.nilfs_shadow_map }
%struct.nilfs_palloc_cache = type { %struct.spinlock, %struct.nilfs_bh_assoc, %struct.nilfs_bh_assoc, %struct.nilfs_bh_assoc }
%struct.nilfs_bh_assoc = type { i32, ptr }
%struct.nilfs_shadow_map = type { %struct.nilfs_bmap_store, %struct.address_space, %struct.address_space, %struct.list_head }
%struct.nilfs_bmap_store = type { [7 x i64], i64, i64, i32 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nilfs2/dat.c\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\012%s: invalid vblocknr = %llu, [%llu, %llu)\00", [52 x i8] zeroinitializer }, align 32
@__func__.nilfs_dat_move = private unnamed_addr constant [15 x i8] c"nilfs_dat_move\00", align 1
@nilfs_dat_read.dat_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013too large DAT entry size: %zu bytes\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013too small DAT entry size: %zu bytes\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dat_lock_key\00", [18 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 122, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 343, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [13 x i8] c"dat_lock_key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 468, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 474, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 478, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [19 x i8] c"../fs/nilfs2/dat.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 498, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @nilfs_dat_read.dat_lock_key, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_dat_read.dat_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_dat_prepare_alloc(ptr noundef %dat, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nilfs_palloc_prepare_alloc_entry(ptr noundef %dat, ptr noundef %req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %req, align 8
  %pr_entry_bh.i = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 3
  %call.i = tail call i32 @nilfs_palloc_get_entry_block(ptr noundef %dat, i64 noundef %1, i32 noundef 1, ptr noundef %pr_entry_bh.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nilfs_palloc_abort_alloc_entry(ptr noundef %dat, ptr noundef %req) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.then3 ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_palloc_prepare_alloc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_palloc_abort_alloc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_dat_commit_alloc(ptr noundef %dat, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pr_entry_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pr_entry_bh, align 8
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %4, 512
  %5 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %9 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 213
  %13 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %3, i32 noundef %or.i) #6
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %req, align 8
  %17 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pr_entry_bh, align 8
  %call3 = tail call ptr @nilfs_palloc_block_get_entry(ptr noundef %dat, i64 noundef %16, ptr noundef %18, ptr noundef %call.i.i) #6
  %de_start = getelementptr inbounds %struct.nilfs_dat_entry, ptr %call3, i32 0, i32 1
  %19 = ptrtoint ptr %de_start to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 72057594037927936, ptr %de_start, align 8
  %de_end = getelementptr inbounds %struct.nilfs_dat_entry, ptr %call3, i32 0, i32 2
  %20 = ptrtoint ptr %de_end to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %de_end, align 8
  %21 = ptrtoint ptr %call3 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %call3, align 8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %22 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 213
  %26 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %27, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  %28 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @nilfs_palloc_commit_alloc_entry(ptr noundef %dat, ptr noundef %req) #6
  %32 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pr_entry_bh, align 8
  tail call void @mark_buffer_dirty(ptr noundef %33) #6
  %i_state.i.i = getelementptr i8, ptr %dat, i32 -588
  %34 = ptrtoint ptr %i_state.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %i_state.i.i, align 4
  %36 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.nilfs_mdt_mark_dirty.exit.i_crit_edge

entry.nilfs_mdt_mark_dirty.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nilfs_mdt_mark_dirty.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i.i) #6
  br label %nilfs_mdt_mark_dirty.exit.i

nilfs_mdt_mark_dirty.exit.i:                      ; preds = %if.then.i.i, %entry.nilfs_mdt_mark_dirty.exit.i_crit_edge
  %37 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pr_entry_bh, align 8
  %tobool.not.i3.i = icmp eq ptr %38, null
  br i1 %tobool.not.i3.i, label %nilfs_mdt_mark_dirty.exit.i.nilfs_dat_commit_entry.exit_crit_edge, label %if.then.i4.i

nilfs_mdt_mark_dirty.exit.i.nilfs_dat_commit_entry.exit_crit_edge: ; preds = %nilfs_mdt_mark_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nilfs_dat_commit_entry.exit

if.then.i4.i:                                     ; preds = %nilfs_mdt_mark_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %38) #6
  br label %nilfs_dat_commit_entry.exit

nilfs_dat_commit_entry.exit:                      ; preds = %if.then.i4.i, %nilfs_mdt_mark_dirty.exit.i.nilfs_dat_commit_entry.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_palloc_block_get_entry(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__kunmap_atomic(ptr noundef %addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kunmap_local_indexed(ptr noundef %addr) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i1 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i, align 8
  %dec.i.i = add i32 %5, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  %6 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %9, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_palloc_commit_alloc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_dat_abort_alloc(ptr noundef %dat, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pr_entry_bh.i = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %pr_entry_bh.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pr_entry_bh.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.nilfs_dat_abort_entry.exit_crit_edge, label %if.then.i.i

entry.nilfs_dat_abort_entry.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nilfs_dat_abort_entry.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %1) #6
  br label %nilfs_dat_abort_entry.exit

nilfs_dat_abort_entry.exit:                       ; preds = %if.then.i.i, %entry.nilfs_dat_abort_entry.exit_crit_edge
  tail call void @nilfs_palloc_abort_alloc_entry(ptr noundef %dat, ptr noundef %req) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_dat_prepare_start(ptr noundef %dat, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %req, align 8
  %pr_entry_bh.i = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 3
  %call.i = tail call i32 @nilfs_palloc_get_entry_block(ptr noundef %dat, i64 noundef %1, i32 noundef 0, ptr noundef %pr_entry_bh.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !27

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_dat_commit_start(ptr noundef %dat, ptr nocapture noundef readonly %req, i64 noundef %blocknr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pr_entry_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pr_entry_bh, align 8
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %4, 512
  %5 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %9 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 213
  %13 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %3, i32 noundef %or.i) #6
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %req, align 8
  %17 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pr_entry_bh, align 8
  %call3 = tail call ptr @nilfs_palloc_block_get_entry(ptr noundef %dat, i64 noundef %16, ptr noundef %18, ptr noundef %call.i.i) #6
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dat, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i, align 16
  %ns_cno.i = getelementptr inbounds %struct.the_nilfs, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %ns_cno.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ns_cno.i, align 8
  %25 = tail call i64 @llvm.bswap.i64(i64 %24)
  %de_start = getelementptr inbounds %struct.nilfs_dat_entry, ptr %call3, i32 0, i32 1
  %26 = ptrtoint ptr %de_start to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %de_start, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %blocknr)
  %28 = ptrtoint ptr %call3 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %call3, align 8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %29 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 213
  %33 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %34, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  %35 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %39 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pr_entry_bh, align 8
  tail call void @mark_buffer_dirty(ptr noundef %40) #6
  %i_state.i.i = getelementptr i8, ptr %dat, i32 -588
  %41 = ptrtoint ptr %i_state.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %i_state.i.i, align 4
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.nilfs_mdt_mark_dirty.exit.i_crit_edge

entry.nilfs_mdt_mark_dirty.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nilfs_mdt_mark_dirty.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i.i) #6
  br label %nilfs_mdt_mark_dirty.exit.i

nilfs_mdt_mark_dirty.exit.i:                      ; preds = %if.then.i.i, %entry.nilfs_mdt_mark_dirty.exit.i_crit_edge
  %44 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pr_entry_bh, align 8
  %tobool.not.i3.i = icmp eq ptr %45, null
  br i1 %tobool.not.i3.i, label %nilfs_mdt_mark_dirty.exit.i.nilfs_dat_commit_entry.exit_crit_edge, label %if.then.i4.i

nilfs_mdt_mark_dirty.exit.i.nilfs_dat_commit_entry.exit_crit_edge: ; preds = %nilfs_mdt_mark_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nilfs_dat_commit_entry.exit

if.then.i4.i:                                     ; preds = %nilfs_mdt_mark_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %45) #6
  br label %nilfs_dat_commit_entry.exit

nilfs_dat_commit_entry.exit:                      ; preds = %if.then.i4.i, %nilfs_mdt_mark_dirty.exit.i.nilfs_dat_commit_entry.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_dat_prepare_end(ptr noundef %dat, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %req, align 8
  %pr_entry_bh.i = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 3
  %call.i = tail call i32 @nilfs_palloc_get_entry_block(ptr noundef %dat, i64 noundef %1, i32 noundef 0, ptr noundef %pr_entry_bh.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i)
  %cmp2 = icmp eq i32 %call.i, -2
  br i1 %cmp2, label %do.end, label %if.then.cleanup_crit_edge, !prof !27

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %entry
  %2 = ptrtoint ptr %pr_entry_bh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pr_entry_bh.i, align 8
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %6 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %6, 512
  %7 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %11 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 213
  %15 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %16, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %5, i32 noundef %or.i) #6
  %17 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %req, align 8
  %19 = ptrtoint ptr %pr_entry_bh.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pr_entry_bh.i, align 8
  %call25 = tail call ptr @nilfs_palloc_block_get_entry(ptr noundef %dat, i64 noundef %18, ptr noundef %20, ptr noundef %call.i.i) #6
  %21 = ptrtoint ptr %call25 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %call25, align 8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %23 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 213
  %27 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %28, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  %29 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp32 = icmp eq i64 %22, 0
  br i1 %cmp32, label %if.then33, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %if.end22
  %call34 = tail call i32 @nilfs_palloc_prepare_free_entry(ptr noundef %dat, ptr noundef %req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then36:                                        ; preds = %if.then33
  %33 = ptrtoint ptr %pr_entry_bh.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pr_entry_bh.i, align 8
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.then36.cleanup_crit_edge, label %if.then.i.i

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %34) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then36.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end ], [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.then33.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ %call34, %if.then36.cleanup_crit_edge ], [ %call34, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_palloc_prepare_free_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_dat_commit_end(ptr noundef %dat, ptr noundef %req, i32 noundef %dead) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pr_entry_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pr_entry_bh, align 8
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %4, 512
  %5 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %9 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 213
  %13 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %3, i32 noundef %or.i) #6
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %req, align 8
  %17 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pr_entry_bh, align 8
  %call3 = tail call ptr @nilfs_palloc_block_get_entry(ptr noundef %dat, i64 noundef %16, ptr noundef %18, ptr noundef %call.i.i) #6
  %de_start = getelementptr inbounds %struct.nilfs_dat_entry, ptr %call3, i32 0, i32 1
  %19 = ptrtoint ptr %de_start to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %de_start, align 8
  %21 = tail call i64 @llvm.bswap.i64(i64 %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dead)
  %tobool.not = icmp eq i32 %dead, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then:                                          ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dat, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %ns_cno.i = getelementptr inbounds %struct.the_nilfs, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %ns_cno.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ns_cno.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %27)
  %cmp = icmp ugt i64 %21, %27
  br i1 %cmp, label %do.end, label %if.then.if.end25_crit_edge, !prof !27

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef null) #6
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.then.if.end25_crit_edge, %entry.if.end25_crit_edge
  %end.0 = phi i64 [ %21, %entry.if.end25_crit_edge ], [ %27, %do.end ], [ %27, %if.then.if.end25_crit_edge ]
  %28 = tail call i64 @llvm.bswap.i64(i64 %end.0)
  %de_end = getelementptr inbounds %struct.nilfs_dat_entry, ptr %call3, i32 0, i32 2
  %29 = ptrtoint ptr %de_end to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %de_end, align 8
  %30 = ptrtoint ptr %call3 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %call3, align 8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %32 = tail call i32 @llvm.read_register.i32(metadata !13) #6
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
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  %38 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp32 = icmp eq i64 %31, 0
  %42 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pr_entry_bh, align 8
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end25
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %b_page.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %46 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %46, 512
  %47 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %50, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %51 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 213
  %55 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %56, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %45, i32 noundef %or.i.i) #6
  %57 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %req, align 8
  %59 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pr_entry_bh, align 8
  %call3.i = tail call ptr @nilfs_palloc_block_get_entry(ptr noundef %dat, i64 noundef %58, ptr noundef %60, ptr noundef %call.i.i.i) #6
  %de_start.i = getelementptr inbounds %struct.nilfs_dat_entry, ptr %call3.i, i32 0, i32 1
  %61 = ptrtoint ptr %de_start.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 72057594037927936, ptr %de_start.i, align 8
  %de_end.i = getelementptr inbounds %struct.nilfs_dat_entry, ptr %call3.i, i32 0, i32 2
  %62 = ptrtoint ptr %de_end.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 72057594037927936, ptr %de_end.i, align 8
  %63 = ptrtoint ptr %call3.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 0, ptr %call3.i, align 8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %64 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i.i47 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i1.i.i47 to ptr
  %task.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i.i.i.i48, align 8
  %pagefault_disabled.i.i.i.i49 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 213
  %68 = ptrtoint ptr %pagefault_disabled.i.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pagefault_disabled.i.i.i.i49, align 8
  %dec.i.i.i.i = add i32 %69, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i49, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  %70 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i.i50 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %73, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  %74 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pr_entry_bh, align 8
  tail call void @mark_buffer_dirty(ptr noundef %75) #6
  %i_state.i.i.i = getelementptr i8, ptr %dat, i32 -588
  %76 = ptrtoint ptr %i_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %i_state.i.i.i, align 4
  %78 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i.i.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then33.nilfs_mdt_mark_dirty.exit.i.i_crit_edge

if.then33.nilfs_mdt_mark_dirty.exit.i.i_crit_edge: ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %nilfs_mdt_mark_dirty.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i.i.i) #6
  br label %nilfs_mdt_mark_dirty.exit.i.i

nilfs_mdt_mark_dirty.exit.i.i:                    ; preds = %if.then.i.i.i, %if.then33.nilfs_mdt_mark_dirty.exit.i.i_crit_edge
  %79 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pr_entry_bh, align 8
  %tobool.not.i3.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i3.i.i, label %nilfs_mdt_mark_dirty.exit.i.i.nilfs_dat_commit_free.exit_crit_edge, label %if.then.i4.i.i

nilfs_mdt_mark_dirty.exit.i.i.nilfs_dat_commit_free.exit_crit_edge: ; preds = %nilfs_mdt_mark_dirty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nilfs_dat_commit_free.exit

if.then.i4.i.i:                                   ; preds = %nilfs_mdt_mark_dirty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %80) #6
  br label %nilfs_dat_commit_free.exit

nilfs_dat_commit_free.exit:                       ; preds = %if.then.i4.i.i, %nilfs_mdt_mark_dirty.exit.i.i.nilfs_dat_commit_free.exit_crit_edge
  tail call void @nilfs_palloc_commit_free_entry(ptr noundef %dat, ptr noundef %req) #6
  br label %if.end34

if.else:                                          ; preds = %if.end25
  tail call void @mark_buffer_dirty(ptr noundef %43) #6
  %i_state.i.i = getelementptr i8, ptr %dat, i32 -588
  %81 = ptrtoint ptr %i_state.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %i_state.i.i, align 4
  %83 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.nilfs_mdt_mark_dirty.exit.i_crit_edge

if.else.nilfs_mdt_mark_dirty.exit.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %nilfs_mdt_mark_dirty.exit.i

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i.i) #6
  br label %nilfs_mdt_mark_dirty.exit.i

nilfs_mdt_mark_dirty.exit.i:                      ; preds = %if.then.i.i, %if.else.nilfs_mdt_mark_dirty.exit.i_crit_edge
  %84 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pr_entry_bh, align 8
  %tobool.not.i3.i = icmp eq ptr %85, null
  br i1 %tobool.not.i3.i, label %nilfs_mdt_mark_dirty.exit.i.if.end34_crit_edge, label %if.then.i4.i

nilfs_mdt_mark_dirty.exit.i.if.end34_crit_edge:   ; preds = %nilfs_mdt_mark_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then.i4.i:                                     ; preds = %nilfs_mdt_mark_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %85) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then.i4.i, %nilfs_mdt_mark_dirty.exit.i.if.end34_crit_edge, %nilfs_dat_commit_free.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_dat_abort_end(ptr noundef %dat, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pr_entry_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pr_entry_bh, align 8
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %4, 512
  %5 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %9 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 213
  %13 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %3, i32 noundef %or.i) #6
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %req, align 8
  %17 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pr_entry_bh, align 8
  %call3 = tail call ptr @nilfs_palloc_block_get_entry(ptr noundef %dat, i64 noundef %16, ptr noundef %18, ptr noundef %call.i.i) #6
  %de_start = getelementptr inbounds %struct.nilfs_dat_entry, ptr %call3, i32 0, i32 1
  %19 = ptrtoint ptr %de_start to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %de_start, align 8
  %21 = tail call i64 @llvm.bswap.i64(i64 %20)
  %22 = ptrtoint ptr %call3 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %call3, align 8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %24 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 213
  %28 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %29, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  %30 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dat, i32 0, i32 8
  %34 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 33
  %36 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info.i, align 16
  %ns_cno.i = getelementptr inbounds %struct.the_nilfs, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %ns_cno.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ns_cno.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %39)
  %cmp = icmp eq i64 %21, %39
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp8 = icmp eq i64 %23, 0
  %or.cond = select i1 %cmp, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nilfs_palloc_abort_free_entry(ptr noundef %dat, ptr noundef %req) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %40 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pr_entry_bh, align 8
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end.nilfs_dat_abort_entry.exit_crit_edge, label %if.then.i.i

if.end.nilfs_dat_abort_entry.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %nilfs_dat_abort_entry.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %41) #6
  br label %nilfs_dat_abort_entry.exit

nilfs_dat_abort_entry.exit:                       ; preds = %if.then.i.i, %if.end.nilfs_dat_abort_entry.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_palloc_abort_free_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_dat_prepare_update(ptr noundef %dat, ptr noundef %oldreq, ptr noundef %newreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nilfs_dat_prepare_end(ptr noundef %dat, ptr noundef %oldreq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @nilfs_palloc_prepare_alloc_entry(ptr noundef %dat, ptr noundef %newreq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.then2_crit_edge, label %if.end.i

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end.i:                                         ; preds = %if.then
  %0 = ptrtoint ptr %newreq to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %newreq, align 8
  %pr_entry_bh.i.i = getelementptr inbounds %struct.nilfs_palloc_req, ptr %newreq, i32 0, i32 3
  %call.i.i = tail call i32 @nilfs_palloc_get_entry_block(ptr noundef %dat, i64 noundef %1, i32 noundef 1, ptr noundef %pr_entry_bh.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end3_crit_edge

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nilfs_palloc_abort_alloc_entry(ptr noundef %dat, ptr noundef %newreq) #6
  br label %if.then2

if.then2:                                         ; preds = %if.then3.i, %if.then.if.then2_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %if.then3.i ], [ %call.i, %if.then.if.then2_crit_edge ]
  tail call void @nilfs_dat_abort_end(ptr noundef %dat, ptr noundef %oldreq)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end3_crit_edge ], [ %retval.0.i.ph, %if.then2 ], [ %call.i.i, %if.end.i.if.end3_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_dat_commit_update(ptr noundef %dat, ptr noundef %oldreq, ptr noundef %newreq, i32 noundef %dead) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nilfs_dat_commit_end(ptr noundef %dat, ptr noundef %oldreq, i32 noundef %dead)
  tail call void @nilfs_dat_commit_alloc(ptr noundef %dat, ptr noundef %newreq)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_dat_abort_update(ptr noundef %dat, ptr noundef %oldreq, ptr noundef %newreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nilfs_dat_abort_end(ptr noundef %dat, ptr noundef %oldreq)
  %pr_entry_bh.i.i = getelementptr inbounds %struct.nilfs_palloc_req, ptr %newreq, i32 0, i32 3
  %0 = ptrtoint ptr %pr_entry_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pr_entry_bh.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nilfs_dat_abort_alloc.exit_crit_edge, label %if.then.i.i.i

entry.nilfs_dat_abort_alloc.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nilfs_dat_abort_alloc.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %1) #6
  br label %nilfs_dat_abort_alloc.exit

nilfs_dat_abort_alloc.exit:                       ; preds = %if.then.i.i.i, %entry.nilfs_dat_abort_alloc.exit_crit_edge
  tail call void @nilfs_palloc_abort_alloc_entry(ptr noundef %dat, ptr noundef %newreq) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_dat_mark_dirty(ptr noundef %dat, i64 noundef %vblocknr) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.nilfs_palloc_req, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req) #6
  %0 = getelementptr inbounds i8, ptr %req, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %vblocknr, ptr %req, align 8
  %pr_entry_bh.i = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 3
  %call.i = call i32 @nilfs_palloc_get_entry_block(ptr noundef %dat, i64 noundef %vblocknr, i32 noundef 0, ptr noundef %pr_entry_bh.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %pr_entry_bh.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pr_entry_bh.i, align 8
  call void @mark_buffer_dirty(ptr noundef %4) #6
  %i_state.i.i = getelementptr i8, ptr %dat, i32 -588
  %5 = ptrtoint ptr %i_state.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_state.i.i, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.nilfs_mdt_mark_dirty.exit.i_crit_edge

if.then.nilfs_mdt_mark_dirty.exit.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %nilfs_mdt_mark_dirty.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i.i) #6
  br label %nilfs_mdt_mark_dirty.exit.i

nilfs_mdt_mark_dirty.exit.i:                      ; preds = %if.then.i.i, %if.then.nilfs_mdt_mark_dirty.exit.i_crit_edge
  %8 = ptrtoint ptr %pr_entry_bh.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pr_entry_bh.i, align 8
  %tobool.not.i3.i = icmp eq ptr %9, null
  br i1 %tobool.not.i3.i, label %nilfs_mdt_mark_dirty.exit.i.if.end_crit_edge, label %if.then.i4.i

nilfs_mdt_mark_dirty.exit.i.if.end_crit_edge:     ; preds = %nilfs_mdt_mark_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i4.i:                                     ; preds = %nilfs_mdt_mark_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %9) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %nilfs_mdt_mark_dirty.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_dat_freev(ptr noundef %dat, ptr noundef %vblocknrs, i32 noundef %nitems) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nilfs_palloc_freev(ptr noundef %dat, ptr noundef %vblocknrs, i32 noundef %nitems) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_palloc_freev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_dat_move(ptr noundef %dat, i64 noundef %vblocknr, i64 noundef %blocknr) local_unnamed_addr #0 align 64 {
entry:
  %entry_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry_bh) #6
  %0 = ptrtoint ptr %entry_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %entry_bh, align 4, !annotation !28
  %call = call i32 @nilfs_palloc_get_entry_block(ptr noundef %dat, i64 noundef %vblocknr, i32 noundef 0, ptr noundef nonnull %entry_bh) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %entry_bh, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @nilfs_mdt_freeze_buffer(ptr noundef %dat, ptr noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then6

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.then3
  %6 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entry_bh, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then6.cleanup_crit_edge, label %if.then6.cleanup.sink.split_crit_edge

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %8 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entry_bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %12 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %12, 512
  %13 = call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %17 = call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 213
  %21 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %22, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %11, i32 noundef %or.i) #6
  %23 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry_bh, align 4
  %call10 = call ptr @nilfs_palloc_block_get_entry(ptr noundef %dat, i64 noundef %vblocknr, ptr noundef %24, ptr noundef %call.i.i) #6
  %25 = ptrtoint ptr %call10 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %call10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp11 = icmp eq i64 %26, 0
  br i1 %cmp11, label %if.then14, label %if.end18, !prof !27

if.then14:                                        ; preds = %if.end8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dat, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %de_start = getelementptr inbounds %struct.nilfs_dat_entry, ptr %call10, i32 0, i32 1
  %29 = ptrtoint ptr %de_start to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %de_start, align 8
  %31 = call i64 @llvm.bswap.i64(i64 %30)
  %de_end = getelementptr inbounds %struct.nilfs_dat_entry, ptr %call10, i32 0, i32 2
  %32 = ptrtoint ptr %de_end to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %de_end, align 8
  %34 = call i64 @llvm.bswap.i64(i64 %33)
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %28, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nilfs_dat_move, i64 noundef %vblocknr, i64 noundef %31, i64 noundef %34) #6
  call fastcc void @__kunmap_atomic(ptr noundef %call.i.i)
  %35 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %entry_bh, align 4
  %tobool.not.i74 = icmp eq ptr %36, null
  br i1 %tobool.not.i74, label %if.then14.cleanup_crit_edge, label %if.then14.cleanup.sink.split_crit_edge

if.then14.cleanup.sink.split_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %blocknr)
  %cmp19 = icmp eq i64 %blocknr, 0
  br i1 %cmp19, label %do.end35, label %if.end18.if.end41_crit_edge, !prof !27

if.end18.if.end41_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.end35:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 352, i32 noundef 9, ptr noundef null) #6
  br label %if.end41

if.end41:                                         ; preds = %do.end35, %if.end18.if.end41_crit_edge
  %37 = call i64 @llvm.bswap.i64(i64 %blocknr)
  %38 = ptrtoint ptr %call10 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %call10, align 8
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %39 = call i32 @llvm.read_register.i32(metadata !13) #6
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
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  %45 = call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %49 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %entry_bh, align 4
  call void @mark_buffer_dirty(ptr noundef %50) #6
  %i_state.i = getelementptr i8, ptr %dat, i32 -588
  %51 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %i_state.i, align 4
  %53 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i77 = icmp eq i32 %53, 0
  br i1 %tobool.not.i77, label %if.then.i78, label %if.end41.nilfs_mdt_mark_dirty.exit_crit_edge

if.end41.nilfs_mdt_mark_dirty.exit_crit_edge:     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %nilfs_mdt_mark_dirty.exit

if.then.i78:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #6
  br label %nilfs_mdt_mark_dirty.exit

nilfs_mdt_mark_dirty.exit:                        ; preds = %if.then.i78, %if.end41.nilfs_mdt_mark_dirty.exit_crit_edge
  %54 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %entry_bh, align 4
  %tobool.not.i79 = icmp eq ptr %55, null
  br i1 %tobool.not.i79, label %nilfs_mdt_mark_dirty.exit.cleanup_crit_edge, label %nilfs_mdt_mark_dirty.exit.cleanup.sink.split_crit_edge

nilfs_mdt_mark_dirty.exit.cleanup.sink.split_crit_edge: ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

nilfs_mdt_mark_dirty.exit.cleanup_crit_edge:      ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %nilfs_mdt_mark_dirty.exit.cleanup.sink.split_crit_edge, %if.then14.cleanup.sink.split_crit_edge, %if.then6.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.then6.cleanup.sink.split_crit_edge ], [ %36, %if.then14.cleanup.sink.split_crit_edge ], [ %55, %nilfs_mdt_mark_dirty.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call4, %if.then6.cleanup.sink.split_crit_edge ], [ -22, %if.then14.cleanup.sink.split_crit_edge ], [ 0, %nilfs_mdt_mark_dirty.exit.cleanup.sink.split_crit_edge ]
  call void @__brelse(ptr noundef nonnull %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %nilfs_mdt_mark_dirty.exit.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.then6.cleanup_crit_edge ], [ -22, %if.then14.cleanup_crit_edge ], [ 0, %nilfs_mdt_mark_dirty.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry_bh) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_palloc_get_entry_block(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_freeze_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_dat_translate(ptr noundef %dat, i64 noundef %vblocknr, ptr nocapture noundef writeonly %blocknrp) local_unnamed_addr #0 align 64 {
entry:
  %entry_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry_bh) #6
  %0 = ptrtoint ptr %entry_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %entry_bh, align 4, !annotation !28
  %call = call i32 @nilfs_palloc_get_entry_block(ptr noundef %dat, i64 noundef %vblocknr, i32 noundef 0, ptr noundef nonnull %entry_bh) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i.i, align 8
  %journal_info.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 146
  %5 = ptrtoint ptr %journal_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %journal_info.i.i, align 4
  %cmp.i.i = icmp eq ptr %6, null
  br i1 %cmp.i.i, label %if.end.land.lhs.true_crit_edge, label %lor.lhs.false.i.i

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false.i.i:                                ; preds = %if.end
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -639397125, i32 %8)
  %cmp1.not.i.i = icmp eq i32 %8, -639397125
  br i1 %cmp1.not.i.i, label %nilfs_doing_gc.exit, label %lor.lhs.false.i.i.land.lhs.true_crit_edge

lor.lhs.false.i.i.land.lhs.true_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

nilfs_doing_gc.exit:                              ; preds = %lor.lhs.false.i.i
  %ti_flags.i.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %ti_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ti_flags.i.i, align 4
  %11 = and i16 %10, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %nilfs_doing_gc.exit.land.lhs.true_crit_edge, label %nilfs_doing_gc.exit.if.end34_crit_edge

nilfs_doing_gc.exit.if.end34_crit_edge:           ; preds = %nilfs_doing_gc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

nilfs_doing_gc.exit.land.lhs.true_crit_edge:      ; preds = %nilfs_doing_gc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %nilfs_doing_gc.exit.land.lhs.true_crit_edge, %lor.lhs.false.i.i.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %12 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entry_bh, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not = icmp eq i32 %16, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end34_crit_edge, label %if.then5

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then5:                                         ; preds = %land.lhs.true
  %call6 = call ptr @nilfs_mdt_get_frozen_buffer(ptr noundef %dat, ptr noundef %13) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then5.if.end34_crit_edge, label %if.then8

if.then5.if.end34_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then8:                                         ; preds = %if.then5
  %17 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %call6, align 4
  %and1.i.i61 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i61)
  %tobool10.not = icmp eq i32 %and1.i.i61, 0
  br i1 %tobool10.not, label %do.end, label %if.then8.if.end26_crit_edge, !prof !27

if.then8.if.end26_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 398, i32 noundef 9, ptr noundef null) #6
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.then8.if.end26_crit_edge
  %19 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %entry_bh, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end26.brelse.exit_crit_edge, label %if.then.i

if.end26.brelse.exit_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %20) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end26.brelse.exit_crit_edge
  %21 = ptrtoint ptr %entry_bh to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call6, ptr %entry_bh, align 4
  br label %if.end34

if.end34:                                         ; preds = %brelse.exit, %if.then5.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %nilfs_doing_gc.exit.if.end34_crit_edge
  %22 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %entry_bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %26 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %26, 512
  %27 = call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %31 = call i32 @llvm.read_register.i32(metadata !13) #6
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
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %25, i32 noundef %or.i) #6
  %37 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %entry_bh, align 4
  %call36 = call ptr @nilfs_palloc_block_get_entry(ptr noundef %dat, i64 noundef %vblocknr, ptr noundef %38, ptr noundef %call.i.i) #6
  %39 = ptrtoint ptr %call36 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %call36, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp37 = icmp eq i64 %40, 0
  br i1 %cmp37, label %if.end34.do.end43_crit_edge, label %if.end39

if.end34.do.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

if.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %41 = call i64 @llvm.bswap.i64(i64 %40)
  %42 = ptrtoint ptr %blocknrp to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %blocknrp, align 8
  br label %do.end43

do.end43:                                         ; preds = %if.end39, %if.end34.do.end43_crit_edge
  %ret.0 = phi i32 [ %call, %if.end39 ], [ -2, %if.end34.do.end43_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %43 = call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 213
  %47 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %48, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  %49 = call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %53 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %entry_bh, align 4
  %tobool.not.i62 = icmp eq ptr %54, null
  br i1 %tobool.not.i62, label %do.end43.cleanup_crit_edge, label %if.then.i63

do.end43.cleanup_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i63:                                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %54) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i63, %do.end43.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %ret.0, %do.end43.cleanup_crit_edge ], [ %ret.0, %if.then.i63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry_bh) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_mdt_get_frozen_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_dat_get_vinfo(ptr noundef %dat, ptr nocapture noundef %buf, i32 noundef %visz, i32 noundef %nvi) local_unnamed_addr #0 align 64 {
entry:
  %entry_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry_bh) #6
  %0 = ptrtoint ptr %entry_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %entry_bh, align 4, !annotation !28
  %i_private.i = getelementptr inbounds %struct.inode, ptr %dat, i32 0, i32 54
  %1 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private.i, align 4
  %mi_entries_per_block = getelementptr inbounds %struct.nilfs_mdt_info, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %mi_entries_per_block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mi_entries_per_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvi)
  %cmp360.not = icmp eq i32 %nvi, 0
  br i1 %cmp360.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %conv37 = zext i32 %4 to i64
  %add43 = add nsw i64 %conv37, -1
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0362 = phi i32 [ 0, %for.body.lr.ph ], [ %add212, %brelse.exit.for.body_crit_edge ]
  %vinfo.0361 = phi ptr [ %buf, %for.body.lr.ph ], [ %vinfo.1.lcssa, %brelse.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %vinfo.0361 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %vinfo.0361, align 8
  %call2 = call i32 @nilfs_palloc_get_entry_block(ptr noundef %dat, i64 noundef %6, i32 noundef 0, ptr noundef nonnull %entry_bh) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry_bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %11, 512
  %12 = call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  %16 = call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 213
  %20 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %10, i32 noundef %or.i) #6
  %22 = ptrtoint ptr %vinfo.0361 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vinfo.0361, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %23)
  %cmp173 = icmp ult i64 %23, 4294967296
  br i1 %cmp173, label %if.then177, label %if.else183, !prof !29

if.then177:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv178 = trunc i64 %23 to i32
  %div181 = udiv i32 %conv178, %4
  %conv182 = zext i32 %div181 to i64
  br label %if.end187

if.else183:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %23) #9, !srcloc !30
  %asmresult1.i = extractvalue { i64, i64 } %24, 1
  br label %if.end187

if.end187:                                        ; preds = %if.else183, %if.then177
  %first.0 = phi i64 [ %conv182, %if.then177 ], [ %asmresult1.i, %if.else183 ]
  %mul190 = mul i64 %first.0, %conv37
  %sub193 = add i64 %add43, %mul190
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0362, i32 %nvi)
  %cmp195353 = icmp ult i32 %i.0362, %nvi
  br i1 %cmp195353, label %land.lhs.true197.preheader, label %if.end187.do.end_crit_edge

if.end187.do.end_crit_edge:                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true197.preheader:                       ; preds = %if.end187
  %25 = sub i32 %nvi, %i.0362
  br label %land.lhs.true197

land.lhs.true197:                                 ; preds = %for.body204.land.lhs.true197_crit_edge, %land.lhs.true197.preheader
  %n.0356 = phi i32 [ %inc207, %for.body204.land.lhs.true197_crit_edge ], [ 0, %land.lhs.true197.preheader ]
  %vinfo.1354 = phi ptr [ %add.ptr, %for.body204.land.lhs.true197_crit_edge ], [ %vinfo.0361, %land.lhs.true197.preheader ]
  %26 = ptrtoint ptr %vinfo.1354 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %vinfo.1354, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %mul190)
  %cmp199.not = icmp ult i64 %27, %mul190
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %sub193)
  %cmp202.not = icmp ugt i64 %27, %sub193
  %or.cond = select i1 %cmp199.not, i1 true, i1 %cmp202.not
  br i1 %or.cond, label %land.lhs.true197.do.end_crit_edge, label %for.body204

land.lhs.true197.do.end_crit_edge:                ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body204:                                      ; preds = %land.lhs.true197
  %28 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %entry_bh, align 4
  %call206 = call ptr @nilfs_palloc_block_get_entry(ptr noundef %dat, i64 noundef %27, ptr noundef %29, ptr noundef %call.i.i) #6
  %de_start = getelementptr inbounds %struct.nilfs_dat_entry, ptr %call206, i32 0, i32 1
  %30 = ptrtoint ptr %de_start to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %de_start, align 8
  %32 = call i64 @llvm.bswap.i64(i64 %31)
  %vi_start = getelementptr inbounds %struct.nilfs_vinfo, ptr %vinfo.1354, i32 0, i32 1
  %33 = ptrtoint ptr %vi_start to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %vi_start, align 8
  %de_end = getelementptr inbounds %struct.nilfs_dat_entry, ptr %call206, i32 0, i32 2
  %34 = ptrtoint ptr %de_end to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %de_end, align 8
  %36 = call i64 @llvm.bswap.i64(i64 %35)
  %vi_end = getelementptr inbounds %struct.nilfs_vinfo, ptr %vinfo.1354, i32 0, i32 2
  %37 = ptrtoint ptr %vi_end to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %vi_end, align 8
  %38 = ptrtoint ptr %call206 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %call206, align 8
  %40 = call i64 @llvm.bswap.i64(i64 %39)
  %vi_blocknr = getelementptr inbounds %struct.nilfs_vinfo, ptr %vinfo.1354, i32 0, i32 3
  %41 = ptrtoint ptr %vi_blocknr to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %vi_blocknr, align 8
  %inc207 = add i32 %n.0356, 1
  %add.ptr = getelementptr i8, ptr %vinfo.1354, i32 %visz
  %exitcond.not = icmp eq i32 %inc207, %25
  br i1 %exitcond.not, label %for.body204.do.end_crit_edge, label %for.body204.land.lhs.true197_crit_edge

for.body204.land.lhs.true197_crit_edge:           ; preds = %for.body204
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true197

for.body204.do.end_crit_edge:                     ; preds = %for.body204
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.body204.do.end_crit_edge, %land.lhs.true197.do.end_crit_edge, %if.end187.do.end_crit_edge
  %vinfo.1.lcssa = phi ptr [ %vinfo.0361, %if.end187.do.end_crit_edge ], [ %add.ptr, %for.body204.do.end_crit_edge ], [ %vinfo.1354, %land.lhs.true197.do.end_crit_edge ]
  %n.0.lcssa = phi i32 [ 0, %if.end187.do.end_crit_edge ], [ %25, %for.body204.do.end_crit_edge ], [ %n.0356, %land.lhs.true197.do.end_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %42 = call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i1.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 213
  %46 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %47, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  %48 = call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %52 = ptrtoint ptr %entry_bh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %entry_bh, align 4
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %do.end.brelse.exit_crit_edge, label %if.then.i

do.end.brelse.exit_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %53) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %do.end.brelse.exit_crit_edge
  %add212 = add i32 %n.0.lcssa, %i.0362
  %cmp = icmp ult i32 %add212, %nvi
  br i1 %cmp, label %brelse.exit.for.body_crit_edge, label %brelse.exit.cleanup_crit_edge

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %brelse.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %nvi, %brelse.exit.cleanup_crit_edge ], [ %call2, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry_bh) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_dat_read(ptr noundef %sb, i32 noundef %entry_size, ptr noundef %raw_inode, ptr nocapture noundef writeonly %inodep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %entry_size)
  %cmp = icmp ult i32 %1, %entry_size
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.2, i32 noundef %entry_size) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %entry_size)
  %cmp1 = icmp ult i32 %entry_size, 32
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.3, i32 noundef %entry_size) #6
  br label %cleanup

if.end3:                                          ; preds = %if.else
  %call = tail call ptr @nilfs_iget_locked(ptr noundef %sb, ptr noundef null, i32 noundef 3) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end8, !prof !27

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_state, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.out_crit_edge, label %if.end11

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end8
  %call12 = tail call i32 @nilfs_mdt_init(ptr noundef nonnull %call, i32 noundef 3138, i32 noundef 968) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.failed_crit_edge

if.end11.failed_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @nilfs_palloc_init_blockgroup(ptr noundef nonnull %call, i32 noundef %entry_size) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.failed_crit_edge

if.end15.failed_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end19:                                         ; preds = %if.end15
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i.i, align 4
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %5, i32 0, i32 6
  %wait_type_inner = getelementptr inbounds %struct.rw_semaphore, ptr %5, i32 0, i32 6, i32 4
  %6 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @nilfs_dat_read.dat_lock_key, i32 noundef 0, i8 noundef zeroext %7, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %palloc_cache = getelementptr inbounds %struct.nilfs_dat_info, ptr %5, i32 0, i32 1
  tail call void @nilfs_palloc_setup_cache(ptr noundef nonnull %call, ptr noundef %palloc_cache) #6
  %shadow = getelementptr inbounds %struct.nilfs_dat_info, ptr %5, i32 0, i32 2
  %call27 = tail call i32 @nilfs_mdt_setup_shadow_map(ptr noundef nonnull %call, ptr noundef %shadow) #6
  %call28 = tail call i32 @nilfs_read_inode_common(ptr noundef nonnull %call, ptr noundef %raw_inode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end19.failed_crit_edge

if.end19.failed_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end31:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unlock_new_inode(ptr noundef nonnull %call) #6
  br label %out

out:                                              ; preds = %if.end31, %if.end8.out_crit_edge
  %8 = ptrtoint ptr %inodep to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %inodep, align 4
  br label %cleanup

failed:                                           ; preds = %if.end19.failed_crit_edge, %if.end15.failed_crit_edge, %if.end11.failed_crit_edge
  %err.0 = phi i32 [ %call12, %if.end11.failed_crit_edge ], [ %call16, %if.end15.failed_crit_edge ], [ %call28, %if.end19.failed_crit_edge ]
  tail call void @iget_failed(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %failed, %out, %if.end3.cleanup_crit_edge, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ %err.0, %failed ], [ 0, %out ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_iget_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_palloc_init_blockgroup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_palloc_setup_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_setup_shadow_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_read_inode_common(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_palloc_commit_free_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/dat.c", i32 122, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nilfs2/dat.c", i32 343, i32 3}
!4 = !{ptr @__func__.nilfs_dat_move, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nilfs_dat_read.dat_lock_key, !6, !"dat_lock_key", i1 false, i1 false}
!6 = !{!"../fs/nilfs2/dat.c", i32 468, i32 31}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nilfs2/dat.c", i32 474, i32 3}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/nilfs2/dat.c", i32 478, i32 3}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/nilfs2/dat.c", i32 498, i32 2}
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
!23 = !{i64 2153698931}
!24 = !{i64 2152192475}
!25 = !{i64 2152192682}
!26 = !{i64 2153701702}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{!"auto-init"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2148526964, i64 2148527244, i64 2148527578, i64 2148527912}
