; ModuleID = '/llk/IR_all_yes/fs/nilfs2/ifile.c_pt.bc'
source_filename = "../fs/nilfs2/ifile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.hlist_node = type { ptr, ptr }
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
%struct.nilfs_inode = type { i64, i64, i64, i64, i32, i32, i32, i32, i16, i16, i32, [7 x i64], i64, i32, i32 }
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
%struct.nilfs_root = type { i64, %struct.rb_node, %struct.refcount_struct, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, %struct.kobject, %struct.completion }
%struct.nilfs_ifile_info = type { %struct.nilfs_mdt_info, %struct.nilfs_palloc_cache }
%struct.nilfs_mdt_info = type { %struct.rw_semaphore, ptr, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.nilfs_palloc_cache = type { %struct.spinlock, %struct.nilfs_bh_assoc, %struct.nilfs_bh_assoc, %struct.nilfs_bh_assoc }
%struct.nilfs_bh_assoc = type { i32, ptr }

@__func__.nilfs_ifile_get_inode_block = private unnamed_addr constant [28 x i8] c"nilfs_ifile_get_inode_block\00", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bad inode number: %lu\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014error %d reading inode: ino=%lu\00", [62 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 139, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [21 x i8] c"../fs/nilfs2/ifile.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 145, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_ifile_create_inode(ptr noundef %ifile, ptr nocapture noundef writeonly %out_ino, ptr nocapture noundef writeonly %out_bh) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.nilfs_palloc_req, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req) #4
  %0 = getelementptr inbounds i8, ptr %req, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %req, align 8
  %pr_entry_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 3
  %3 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pr_entry_bh, align 8
  %call = call i32 @nilfs_palloc_prepare_alloc_entry(ptr noundef %ifile, ptr noundef nonnull %req) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %req, align 8
  %call3 = call i32 @nilfs_palloc_get_entry_block(ptr noundef %ifile, i64 noundef %5, i32 noundef 1, ptr noundef %pr_entry_bh) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end5.thread, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end5.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @nilfs_palloc_abort_alloc_entry(ptr noundef %ifile, ptr noundef nonnull %req) #4
  br label %if.then7

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.end5.if.then7_crit_edge, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.then7:                                         ; preds = %if.end5.if.then7_crit_edge, %if.end5.thread
  %ret.025 = phi i32 [ %call3, %if.end5.thread ], [ %call, %if.end5.if.then7_crit_edge ]
  %6 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pr_entry_bh, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then7.cleanup_crit_edge, label %if.then.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %7) #4
  br label %cleanup

if.end9:                                          ; preds = %if.end5.if.end9_crit_edge, %if.then.if.end9_crit_edge
  call void @nilfs_palloc_commit_alloc_entry(ptr noundef %ifile, ptr noundef nonnull %req) #4
  %8 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pr_entry_bh, align 8
  call void @mark_buffer_dirty(ptr noundef %9) #4
  %i_state.i = getelementptr i8, ptr %ifile, i32 -588
  %10 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %i_state.i, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i21 = icmp eq i32 %12, 0
  br i1 %tobool.not.i21, label %if.then.i22, label %if.end9.nilfs_mdt_mark_dirty.exit_crit_edge

if.end9.nilfs_mdt_mark_dirty.exit_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %nilfs_mdt_mark_dirty.exit

if.then.i22:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #4
  br label %nilfs_mdt_mark_dirty.exit

nilfs_mdt_mark_dirty.exit:                        ; preds = %if.then.i22, %if.end9.nilfs_mdt_mark_dirty.exit_crit_edge
  %13 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %req, align 8
  %conv = trunc i64 %14 to i32
  %15 = ptrtoint ptr %out_ino to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %out_ino, align 4
  %16 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pr_entry_bh, align 8
  %18 = ptrtoint ptr %out_bh to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %out_bh, align 4
  br label %cleanup

cleanup:                                          ; preds = %nilfs_mdt_mark_dirty.exit, %if.then.i, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nilfs_mdt_mark_dirty.exit ], [ %ret.025, %if.then7.cleanup_crit_edge ], [ %ret.025, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_palloc_prepare_alloc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_palloc_get_entry_block(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_palloc_abort_alloc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_palloc_commit_alloc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_ifile_delete_inode(ptr noundef %ifile, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.nilfs_palloc_req, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req) #4
  %0 = getelementptr inbounds i8, ptr %req, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %conv = zext i32 %ino to i64
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %req, align 8
  %pr_desc_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pr_desc_bh, align 8
  %pr_bitmap_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pr_bitmap_bh, align 4
  %pr_entry_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pr_entry_bh, align 8
  %call = call i32 @nilfs_palloc_prepare_free_entry(ptr noundef %ifile, ptr noundef nonnull %req) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %req, align 8
  %call3 = call i32 @nilfs_palloc_get_entry_block(ptr noundef %ifile, i64 noundef %7, i32 noundef 0, ptr noundef %pr_entry_bh) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end6.thread, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end6.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @nilfs_palloc_abort_free_entry(ptr noundef %ifile, ptr noundef nonnull %req) #4
  br label %if.then9

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.end6.if.then9_crit_edge, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.then9:                                         ; preds = %if.end6.if.then9_crit_edge, %if.end6.thread
  %ret.038 = phi i32 [ %call3, %if.end6.thread ], [ %call, %if.end6.if.then9_crit_edge ]
  %8 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pr_entry_bh, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then9.cleanup_crit_edge, label %if.then.i

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %9) #4
  br label %cleanup

if.end11:                                         ; preds = %if.end6.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %10 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pr_entry_bh, align 8
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %14 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %14, 512
  %15 = call i32 @llvm.read_register.i32(metadata !5) #4
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  %19 = call i32 @llvm.read_register.i32(metadata !5) #4
  %and.i.i.i1.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 213
  %23 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %24, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !16
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %13, i32 noundef %or.i) #4
  %25 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %req, align 8
  %27 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pr_entry_bh, align 8
  %call16 = call ptr @nilfs_palloc_block_get_entry(ptr noundef %ifile, i64 noundef %26, ptr noundef %28, ptr noundef %call.i.i) #4
  %i_flags = getelementptr inbounds %struct.nilfs_inode, ptr %call16, i32 0, i32 10
  %29 = ptrtoint ptr %i_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %i_flags, align 4
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #4
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  %30 = call i32 @llvm.read_register.i32(metadata !5) #4
  %and.i.i.i1.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 213
  %34 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %35, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !18
  %36 = call i32 @llvm.read_register.i32(metadata !5) #4
  %and.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %40 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pr_entry_bh, align 8
  call void @mark_buffer_dirty(ptr noundef %41) #4
  %42 = ptrtoint ptr %pr_entry_bh to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pr_entry_bh, align 8
  %tobool.not.i33 = icmp eq ptr %43, null
  br i1 %tobool.not.i33, label %if.end11.brelse.exit35_crit_edge, label %if.then.i34

if.end11.brelse.exit35_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit35

if.then.i34:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %43) #4
  br label %brelse.exit35

brelse.exit35:                                    ; preds = %if.then.i34, %if.end11.brelse.exit35_crit_edge
  call void @nilfs_palloc_commit_free_entry(ptr noundef %ifile, ptr noundef nonnull %req) #4
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit35, %if.then.i, %if.then9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %brelse.exit35 ], [ %ret.038, %if.then9.cleanup_crit_edge ], [ %ret.038, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_palloc_prepare_free_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_palloc_abort_free_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_palloc_block_get_entry(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_palloc_commit_free_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_ifile_get_inode_block(ptr noundef %ifile, i32 noundef %ino, ptr noundef %out_bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ifile, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %ns_first_ino = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %ns_first_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ns_first_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %ino)
  %cmp.not = icmp ugt i32 %5, %ino
  %shl = shl nuw i32 1, %ino
  %and = and i32 %shl, 1276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp eq i32 %and, 0
  %6 = select i1 %cmp.not, i1 %tobool, i1 false
  br i1 %6, label %if.then, label %if.end, !prof !19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %1, ptr noundef nonnull @__func__.nilfs_ifile_get_inode_block, ptr noundef nonnull @.str, i32 noundef %ino) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %ino to i64
  %call = tail call i32 @nilfs_palloc_get_entry_block(ptr noundef %ifile, i64 noundef %conv, i32 noundef 0, ptr noundef %out_bh) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then11, !prof !20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %call, i32 noundef %ino) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call, %if.then11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_ifile_count_free_inodes(ptr noundef %ifile, ptr noundef %nmaxinodes, ptr nocapture noundef writeonly %nfreeinodes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nmaxinodes to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %nmaxinodes, align 8
  %1 = ptrtoint ptr %nfreeinodes to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %nfreeinodes, align 8
  %i_root = getelementptr i8, ptr %ifile, i32 -8
  %2 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_root, align 8
  %inodes_count = getelementptr inbounds %struct.nilfs_root, ptr %3, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inodes_count, i32 noundef 8) #4
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %inodes_count) #4
  %call2 = tail call i32 @nilfs_palloc_count_max_entries(ptr noundef %ifile, i64 noundef %call.i, ptr noundef %nmaxinodes) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !20

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %nmaxinodes to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %nmaxinodes, align 8
  %sub = sub i64 %5, %call.i
  %6 = ptrtoint ptr %nfreeinodes to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sub, ptr %nfreeinodes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_palloc_count_max_entries(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_ifile_read(ptr noundef %sb, ptr noundef %root, i32 noundef %inode_size, ptr noundef %raw_inode, ptr nocapture noundef writeonly %inodep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nilfs_iget_locked(ptr noundef %sb, ptr noundef %root, i32 noundef 6) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !19

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %0 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_state, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @nilfs_mdt_init(ptr noundef nonnull %call, i32 noundef 3138, i32 noundef 196) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.failed_crit_edge

if.end6.failed_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %failed

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @nilfs_palloc_init_blockgroup(ptr noundef nonnull %call, i32 noundef %inode_size) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.failed_crit_edge

if.end10.failed_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %failed

if.end14:                                         ; preds = %if.end10
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i.i, align 4
  %palloc_cache = getelementptr inbounds %struct.nilfs_ifile_info, ptr %3, i32 0, i32 1
  tail call void @nilfs_palloc_setup_cache(ptr noundef nonnull %call, ptr noundef %palloc_cache) #4
  %call16 = tail call i32 @nilfs_read_inode_common(ptr noundef nonnull %call, ptr noundef %raw_inode) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.failed_crit_edge

if.end14.failed_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %failed

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @unlock_new_inode(ptr noundef nonnull %call) #4
  br label %out

out:                                              ; preds = %if.end19, %if.end.out_crit_edge
  %4 = ptrtoint ptr %inodep to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %inodep, align 4
  br label %cleanup

failed:                                           ; preds = %if.end14.failed_crit_edge, %if.end10.failed_crit_edge, %if.end6.failed_crit_edge
  %err.0 = phi i32 [ %call7, %if.end6.failed_crit_edge ], [ %call11, %if.end10.failed_crit_edge ], [ %call16, %if.end14.failed_crit_edge ]
  tail call void @iget_failed(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %failed, %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %failed ], [ 0, %out ], [ -12, %entry.cleanup_crit_edge ]
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
declare dso_local i32 @nilfs_read_inode_common(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.named.register.sp = !{!5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__func__.nilfs_ifile_get_inode_block, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/ifile.c", i32 139, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/nilfs2/ifile.c", i32 145, i32 3}
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
!15 = !{i64 2153691253}
!16 = !{i64 2152184797}
!17 = !{i64 2152185004}
!18 = !{i64 2153694024}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 2000, i32 1}
