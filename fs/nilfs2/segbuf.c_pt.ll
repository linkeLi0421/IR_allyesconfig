; ModuleID = '/llk/IR_all_yes/fs/nilfs2/segbuf.c_pt.bc'
source_filename = "../fs/nilfs2/segbuf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.nilfs_segment_buffer = type { ptr, %struct.list_head, %struct.nilfs_segsum_info, i64, i64, i64, i64, i64, i32, %struct.list_head, %struct.list_head, ptr, i32, %struct.atomic_t, %struct.completion }
%struct.nilfs_segsum_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.nilfs_segment_summary = type { i32, i32, i32, i16, i16, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.nilfs_write_info = type { ptr, ptr, i32, i32, i32, i32, i32, i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.40 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.40 = type { %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
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

@nilfs_segbuf_cachep = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@.str.1 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013I/O error writing log (start-blocknr=%llu, block-count=%lu) in segment %llu\00", [50 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 87, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [22 x i8] c"../fs/nilfs2/segbuf.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 504, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @init_completion.__key, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_segbuf_new(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_segbuf_cachep to i32))
  %0 = load ptr, ptr @nilfs_segbuf_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sb, ptr %call, align 8
  %sb_list = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %sb_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %sb_list, ptr %sb_list, align 4
  %prev.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sb_list, ptr %prev.i, align 8
  %sb_segsum_buffers = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %sb_segsum_buffers to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %sb_segsum_buffers, ptr %sb_segsum_buffers, align 4
  %prev.i13 = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sb_segsum_buffers, ptr %prev.i13, align 8
  %sb_payload_buffers = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %sb_payload_buffers to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %sb_payload_buffers, ptr %sb_payload_buffers, align 4
  %prev.i14 = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sb_payload_buffers, ptr %prev.i14, align 8
  %sb_super_root = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call, i32 0, i32 11
  %8 = ptrtoint ptr %sb_super_root to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sb_super_root, align 4
  %sb_bio_event = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %sb_bio_event to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sb_bio_event, align 8
  %wait.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #9
  %sb_err = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sb_err, i32 noundef 4) #9
  %10 = ptrtoint ptr %sb_err to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %sb_err, align 4
  %sb_nbio = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %call, i32 0, i32 12
  %11 = ptrtoint ptr %sb_nbio to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sb_nbio, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_segbuf_free(ptr noundef %segbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_segbuf_cachep to i32))
  %0 = load ptr, ptr @nilfs_segbuf_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %segbuf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nilfs_segbuf_map(ptr nocapture noundef %segbuf, i64 noundef %segnum, i32 noundef %offset, ptr nocapture noundef readonly %nilfs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_segnum = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 3
  %0 = ptrtoint ptr %sb_segnum to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %segnum, ptr %sb_segnum, align 8
  %sb_fseg_start = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 5
  %sb_fseg_end = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 6
  %ns_blocks_per_segment.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 47
  %1 = ptrtoint ptr %ns_blocks_per_segment.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ns_blocks_per_segment.i, align 4
  %conv.i = zext i32 %2 to i64
  %mul.i = mul i64 %conv.i, %segnum
  %3 = ptrtoint ptr %sb_fseg_start to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %mul.i, ptr %sb_fseg_start, align 8
  %4 = load i32, ptr %ns_blocks_per_segment.i, align 4
  %conv2.i = zext i32 %4 to i64
  %add.i = add i64 %mul.i, -1
  %sub.i = add i64 %add.i, %conv2.i
  %5 = ptrtoint ptr %sb_fseg_end to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %sub.i, ptr %sb_fseg_end, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %segnum)
  %cmp.i = icmp eq i64 %segnum, 0
  br i1 %cmp.i, label %if.then.i, label %entry.nilfs_get_segment_range.exit_crit_edge

entry.nilfs_get_segment_range.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_get_segment_range.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ns_first_data_block.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 50
  %6 = ptrtoint ptr %ns_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ns_first_data_block.i, align 8
  %conv4.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %sb_fseg_start to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv4.i, ptr %sb_fseg_start, align 8
  br label %nilfs_get_segment_range.exit

nilfs_get_segment_range.exit:                     ; preds = %if.then.i, %entry.nilfs_get_segment_range.exit_crit_edge
  %9 = ptrtoint ptr %sb_fseg_start to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sb_fseg_start, align 8
  %conv = zext i32 %offset to i64
  %add = add i64 %10, %conv
  %sb_pseg_start = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 7
  %11 = ptrtoint ptr %sb_pseg_start to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add, ptr %sb_pseg_start, align 8
  %sub = sub i64 %sub.i, %add
  %12 = trunc i64 %sub to i32
  %conv5 = add i32 %12, 1
  %sb_rest_blocks = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 8
  %13 = ptrtoint ptr %sb_rest_blocks to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv5, ptr %sb_rest_blocks, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nilfs_segbuf_map_cont(ptr nocapture noundef %segbuf, ptr nocapture noundef readonly %prev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_segnum = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %prev, i32 0, i32 3
  %0 = ptrtoint ptr %sb_segnum to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sb_segnum, align 8
  %sb_segnum1 = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 3
  %2 = ptrtoint ptr %sb_segnum1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %sb_segnum1, align 8
  %sb_fseg_start = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %prev, i32 0, i32 5
  %3 = ptrtoint ptr %sb_fseg_start to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sb_fseg_start, align 8
  %sb_fseg_start2 = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 5
  %5 = ptrtoint ptr %sb_fseg_start2 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %sb_fseg_start2, align 8
  %sb_fseg_end = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %prev, i32 0, i32 6
  %6 = ptrtoint ptr %sb_fseg_end to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_fseg_end, align 8
  %sb_fseg_end3 = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 6
  %8 = ptrtoint ptr %sb_fseg_end3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %sb_fseg_end3, align 8
  %sb_pseg_start = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %prev, i32 0, i32 7
  %9 = ptrtoint ptr %sb_pseg_start to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sb_pseg_start, align 8
  %nblocks = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %prev, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nblocks, align 8
  %conv = zext i32 %12 to i64
  %add = add i64 %10, %conv
  %sb_pseg_start4 = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 7
  %13 = ptrtoint ptr %sb_pseg_start4 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add, ptr %sb_pseg_start4, align 8
  %sub = sub i64 %7, %add
  %14 = trunc i64 %sub to i32
  %conv8 = add i32 %14, 1
  %sb_rest_blocks = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 8
  %15 = ptrtoint ptr %sb_rest_blocks to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv8, ptr %sb_rest_blocks, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nilfs_segbuf_set_next_segnum(ptr nocapture noundef writeonly %segbuf, i64 noundef %nextnum, ptr nocapture noundef readonly %nilfs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_nextnum = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 4
  %0 = ptrtoint ptr %sb_nextnum to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %nextnum, ptr %sb_nextnum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nextnum)
  %cmp.i = icmp eq i64 %nextnum, 0
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ns_first_data_block.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 50
  %1 = ptrtoint ptr %ns_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ns_first_data_block.i, align 8
  %conv.i = zext i32 %2 to i64
  br label %nilfs_get_segment_start_blocknr.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ns_blocks_per_segment.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 47
  %3 = ptrtoint ptr %ns_blocks_per_segment.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ns_blocks_per_segment.i, align 4
  %conv1.i = zext i32 %4 to i64
  %mul.i = mul i64 %conv1.i, %nextnum
  br label %nilfs_get_segment_start_blocknr.exit

nilfs_get_segment_start_blocknr.exit:             ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %conv.i, %cond.true.i ], [ %mul.i, %cond.false.i ]
  %next = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 9
  %5 = ptrtoint ptr %next to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %cond.i, ptr %next, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_segbuf_extend_segsum(ptr noundef %segbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %segbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %segbuf, align 8
  %sb_pseg_start = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 7
  %2 = ptrtoint ptr %sb_pseg_start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sb_pseg_start, align 8
  %nsumblk = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %nsumblk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nsumblk, align 4
  %conv = zext i32 %5 to i64
  %add = add i64 %3, %conv
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %7, i64 noundef %add, i32 noundef %9, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_assoc_buffers.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 9
  %sb_segsum_buffers.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %b_assoc_buffers.i, ptr noundef %11, ptr noundef %sb_segsum_buffers.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.nilfs_segbuf_add_segsum_buffer.exit_crit_edge

if.end.nilfs_segbuf_add_segsum_buffer.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segbuf_add_segsum_buffer.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b_assoc_buffers.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %b_assoc_buffers.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sb_segsum_buffers.i, ptr %b_assoc_buffers.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %b_assoc_buffers.i, ptr %11, align 4
  br label %nilfs_segbuf_add_segsum_buffer.exit

nilfs_segbuf_add_segsum_buffer.exit:              ; preds = %if.end.i.i.i, %if.end.nilfs_segbuf_add_segsum_buffer.exit_crit_edge
  %nblocks.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %nblocks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nblocks.i, align 8
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %nblocks.i, align 8
  %18 = ptrtoint ptr %nsumblk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nsumblk, align 4
  %inc2.i = add i32 %19, 1
  store i32 %inc2.i, ptr %nsumblk, align 4
  br label %cleanup

cleanup:                                          ; preds = %nilfs_segbuf_add_segsum_buffer.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nilfs_segbuf_add_segsum_buffer.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_segbuf_extend_payload(ptr noundef %segbuf, ptr nocapture noundef writeonly %bhp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %segbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %segbuf, align 8
  %sb_pseg_start = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 7
  %2 = ptrtoint ptr %sb_pseg_start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sb_pseg_start, align 8
  %nblocks = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nblocks, align 8
  %conv = zext i32 %5 to i64
  %add = add i64 %3, %conv
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %7, i64 noundef %add, i32 noundef %9, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_assoc_buffers.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 9
  %sb_payload_buffers.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 10
  %prev.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %b_assoc_buffers.i, ptr noundef %11, ptr noundef %sb_payload_buffers.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.nilfs_segbuf_add_payload_buffer.exit_crit_edge

if.end.nilfs_segbuf_add_payload_buffer.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segbuf_add_payload_buffer.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b_assoc_buffers.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %b_assoc_buffers.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sb_payload_buffers.i, ptr %b_assoc_buffers.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %b_assoc_buffers.i, ptr %11, align 4
  br label %nilfs_segbuf_add_payload_buffer.exit

nilfs_segbuf_add_payload_buffer.exit:             ; preds = %if.end.i.i.i, %if.end.nilfs_segbuf_add_payload_buffer.exit_crit_edge
  %16 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nblocks, align 8
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %nblocks, align 8
  %18 = ptrtoint ptr %bhp to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %bhp, align 4
  br label %cleanup

cleanup:                                          ; preds = %nilfs_segbuf_add_payload_buffer.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nilfs_segbuf_add_payload_buffer.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_segbuf_reset(ptr noundef %segbuf, i32 noundef %flags, i64 noundef %ctime, i64 noundef %cno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nsumblk = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %nsumblk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nsumblk, align 4
  %nblocks = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 2
  %1 = ptrtoint ptr %nblocks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nblocks, align 8
  %2 = ptrtoint ptr %segbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %segbuf, align 8
  %sb_pseg_start.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 7
  %4 = ptrtoint ptr %sb_pseg_start.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sb_pseg_start.i, align 8
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__getblk_gfp(ptr noundef %7, i64 noundef %5, i32 noundef %9, i32 noundef 8) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %b_assoc_buffers.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 9
  %sb_segsum_buffers.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 9
  %prev.i.i.i = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %b_assoc_buffers.i.i, ptr noundef %11, ptr noundef %sb_segsum_buffers.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b_assoc_buffers.i.i, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %b_assoc_buffers.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sb_segsum_buffers.i.i, ptr %b_assoc_buffers.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %b_assoc_buffers.i.i, ptr %11, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i.i, %if.end.i.if.end_crit_edge
  %16 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nblocks, align 8
  %inc.i.i = add i32 %17, 1
  store i32 %inc.i.i, ptr %nblocks, align 8
  %18 = ptrtoint ptr %nsumblk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nsumblk, align 4
  %inc2.i.i = add i32 %19, 1
  store i32 %inc2.i.i, ptr %nsumblk, align 4
  %sb_sum = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2
  %20 = ptrtoint ptr %sb_sum to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %flags, ptr %sb_sum, align 8
  %sumbytes = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %sumbytes to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 64, ptr %sumbytes, align 8
  %nfileblk = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %nfileblk to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %nfileblk, align 4
  %nfinfo = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %nfinfo to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %nfinfo, align 4
  %ctime10 = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 8
  %24 = ptrtoint ptr %ctime10 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %ctime, ptr %ctime10, align 8
  %cno12 = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 7
  %25 = ptrtoint ptr %cno12 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %cno, ptr %cno12, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nilfs_segbuf_fill_in_segsum(ptr nocapture noundef readonly %segbuf) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_segsum_buffers = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 9
  %0 = ptrtoint ptr %sb_segsum_buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb_segsum_buffers, align 4
  %b_data = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %ss_magic = getelementptr inbounds %struct.nilfs_segment_summary, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ss_magic to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 301641502, ptr %ss_magic, align 8
  %ss_bytes = getelementptr inbounds %struct.nilfs_segment_summary, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %ss_bytes to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 16384, ptr %ss_bytes, align 4
  %sb_sum = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2
  %6 = ptrtoint ptr %sb_sum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_sum, align 8
  %conv = trunc i32 %7 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %ss_flags = getelementptr inbounds %struct.nilfs_segment_summary, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %ss_flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %ss_flags, align 2
  %seg_seq = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 6
  %10 = ptrtoint ptr %seg_seq to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %seg_seq, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %ss_seq = getelementptr inbounds %struct.nilfs_segment_summary, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %ss_seq to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %ss_seq, align 8
  %ctime = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 8
  %14 = ptrtoint ptr %ctime to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ctime, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %ss_create = getelementptr inbounds %struct.nilfs_segment_summary, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %ss_create to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %ss_create, align 8
  %next4 = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %next4 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %next4, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  %ss_next = getelementptr inbounds %struct.nilfs_segment_summary, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %ss_next to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %ss_next, align 8
  %nblocks = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nblocks, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %ss_nblocks = getelementptr inbounds %struct.nilfs_segment_summary, ptr %3, i32 0, i32 8
  %25 = ptrtoint ptr %ss_nblocks to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ss_nblocks, align 8
  %nfinfo = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %nfinfo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nfinfo, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %ss_nfinfo = getelementptr inbounds %struct.nilfs_segment_summary, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %ss_nfinfo to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ss_nfinfo, align 4
  %sumbytes = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %sumbytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sumbytes, align 8
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %ss_sumbytes = getelementptr inbounds %struct.nilfs_segment_summary, ptr %3, i32 0, i32 10
  %33 = ptrtoint ptr %ss_sumbytes to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ss_sumbytes, align 8
  %ss_pad = getelementptr inbounds %struct.nilfs_segment_summary, ptr %3, i32 0, i32 11
  %34 = ptrtoint ptr %ss_pad to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %ss_pad, align 4
  %cno = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 2, i32 7
  %35 = ptrtoint ptr %cno to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %cno, align 8
  %37 = tail call i64 @llvm.bswap.i64(i64 %36)
  %ss_cno = getelementptr inbounds %struct.nilfs_segment_summary, ptr %3, i32 0, i32 12
  %38 = ptrtoint ptr %ss_cno to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %ss_cno, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_clear_logs(ptr noundef readonly %logs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %logs to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn9 = load ptr, ptr %logs, align 4
  %cmp.not10 = icmp eq ptr %.pn9, %logs
  br i1 %cmp.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn11 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn9, %entry.for.body_crit_edge ]
  %segbuf.0 = getelementptr i8, ptr %.pn11, i32 -4
  tail call fastcc void @nilfs_segbuf_clear(ptr noundef %segbuf.0)
  %1 = ptrtoint ptr %.pn11 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn11, align 4
  %cmp.not = icmp eq ptr %.pn, %logs
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_segbuf_clear(ptr noundef %segbuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_segsum_buffers = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 9
  %0 = ptrtoint ptr %sb_segsum_buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb_segsum_buffers, align 4
  %cmp.not18.i = icmp eq ptr %1, %sb_segsum_buffers
  br i1 %cmp.not18.i, label %entry.nilfs_release_buffers.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.nilfs_release_buffers.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_release_buffers.exit

for.body.i:                                       ; preds = %brelse.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in19.i = phi ptr [ %.pn.i, %brelse.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %bh.0.i = getelementptr i8, ptr %.pn.in19.i, i32 -44
  %2 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in19.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in19.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in19.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %9 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn.in19.i, ptr %.pn.in19.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn.in19.i, ptr %prev.i3.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %bh.0.i, null
  br i1 %tobool.not.i.i, label %list_del_init.exit.i.brelse.exit.i_crit_edge, label %if.then.i.i

list_del_init.exit.i.brelse.exit.i_crit_edge:     ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %bh.0.i) #9
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %list_del_init.exit.i.brelse.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn.i, %sb_segsum_buffers
  br i1 %cmp.not.i, label %brelse.exit.i.nilfs_release_buffers.exit_crit_edge, label %brelse.exit.i.for.body.i_crit_edge

brelse.exit.i.for.body.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

brelse.exit.i.nilfs_release_buffers.exit_crit_edge: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_release_buffers.exit

nilfs_release_buffers.exit:                       ; preds = %brelse.exit.i.nilfs_release_buffers.exit_crit_edge, %entry.nilfs_release_buffers.exit_crit_edge
  %sb_payload_buffers = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 10
  %11 = ptrtoint ptr %sb_payload_buffers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sb_payload_buffers, align 4
  %cmp.not18.i3 = icmp eq ptr %12, %sb_payload_buffers
  br i1 %cmp.not18.i3, label %nilfs_release_buffers.exit.nilfs_release_buffers.exit18_crit_edge, label %nilfs_release_buffers.exit.for.body.i8_crit_edge

nilfs_release_buffers.exit.for.body.i8_crit_edge: ; preds = %nilfs_release_buffers.exit
  br label %for.body.i8

nilfs_release_buffers.exit.nilfs_release_buffers.exit18_crit_edge: ; preds = %nilfs_release_buffers.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_release_buffers.exit18

for.body.i8:                                      ; preds = %brelse.exit.i17.for.body.i8_crit_edge, %nilfs_release_buffers.exit.for.body.i8_crit_edge
  %.pn.in19.i4 = phi ptr [ %.pn.i6, %brelse.exit.i17.for.body.i8_crit_edge ], [ %12, %nilfs_release_buffers.exit.for.body.i8_crit_edge ]
  %bh.0.i5 = getelementptr i8, ptr %.pn.in19.i4, i32 -44
  %13 = ptrtoint ptr %.pn.in19.i4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i6 = load ptr, ptr %.pn.in19.i4, align 4
  %call.i.i.i7 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in19.i4) #9
  br i1 %call.i.i.i7, label %if.end.i.i.i11, label %for.body.i8.list_del_init.exit.i14_crit_edge

for.body.i8.list_del_init.exit.i14_crit_edge:     ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i14

if.end.i.i.i11:                                   ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i9 = getelementptr inbounds %struct.list_head, ptr %.pn.in19.i4, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i9, align 4
  %16 = ptrtoint ptr %.pn.in19.i4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn.in19.i4, align 4
  %prev1.i.i.i.i10 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i10, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit.i14

list_del_init.exit.i14:                           ; preds = %if.end.i.i.i11, %for.body.i8.list_del_init.exit.i14_crit_edge
  %20 = ptrtoint ptr %.pn.in19.i4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %.pn.in19.i4, ptr %.pn.in19.i4, align 4
  %prev.i3.i.i12 = getelementptr inbounds %struct.list_head, ptr %.pn.in19.i4, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i.i12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %.pn.in19.i4, ptr %prev.i3.i.i12, align 4
  %tobool.not.i.i13 = icmp eq ptr %bh.0.i5, null
  br i1 %tobool.not.i.i13, label %list_del_init.exit.i14.brelse.exit.i17_crit_edge, label %if.then.i.i15

list_del_init.exit.i14.brelse.exit.i17_crit_edge: ; preds = %list_del_init.exit.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i17

if.then.i.i15:                                    ; preds = %list_del_init.exit.i14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %bh.0.i5) #9
  br label %brelse.exit.i17

brelse.exit.i17:                                  ; preds = %if.then.i.i15, %list_del_init.exit.i14.brelse.exit.i17_crit_edge
  %cmp.not.i16 = icmp eq ptr %.pn.i6, %sb_payload_buffers
  br i1 %cmp.not.i16, label %brelse.exit.i17.nilfs_release_buffers.exit18_crit_edge, label %brelse.exit.i17.for.body.i8_crit_edge

brelse.exit.i17.for.body.i8_crit_edge:            ; preds = %brelse.exit.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i8

brelse.exit.i17.nilfs_release_buffers.exit18_crit_edge: ; preds = %brelse.exit.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_release_buffers.exit18

nilfs_release_buffers.exit18:                     ; preds = %brelse.exit.i17.nilfs_release_buffers.exit18_crit_edge, %nilfs_release_buffers.exit.nilfs_release_buffers.exit18_crit_edge
  %sb_super_root = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 11
  %22 = ptrtoint ptr %sb_super_root to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %sb_super_root, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_truncate_logs(ptr noundef readonly %logs, ptr noundef readonly %last) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %last, null
  %add.ptr = getelementptr i8, ptr %logs, i32 -4
  %spec.select = select i1 %tobool.not, ptr %add.ptr, ptr %last
  %sb_list = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %spec.select, i32 0, i32 1
  %0 = ptrtoint ptr %sb_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb_list, align 4
  %cmp.not24 = icmp eq ptr %1, %logs
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in25 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %segbuf.0 = getelementptr i8, ptr %.pn.in25, i32 -4
  %2 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in25, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in25, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn.in25, ptr %.pn.in25, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn.in25, ptr %prev.i3.i, align 4
  tail call fastcc void @nilfs_segbuf_clear(ptr noundef %segbuf.0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nilfs_segbuf_cachep to i32))
  %11 = load ptr, ptr @nilfs_segbuf_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef %segbuf.0) #9
  %cmp.not = icmp eq ptr %.pn, %logs
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_write_logs(ptr noundef readonly %logs, ptr noundef %nilfs) local_unnamed_addr #0 align 64 {
entry:
  %wi.i = alloca %struct.nilfs_write_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %logs to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn13 = load ptr, ptr %logs, align 4
  %cmp.not14 = icmp eq ptr %.pn13, %logs
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %wi.i, i32 24
  %bio.i.i = getelementptr inbounds %struct.nilfs_write_info, ptr %wi.i, i32 0, i32 1
  %rest_blocks.i.i = getelementptr inbounds %struct.nilfs_write_info, ptr %wi.i, i32 0, i32 4
  %max_pages.i.i = getelementptr inbounds %struct.nilfs_write_info, ptr %wi.i, i32 0, i32 5
  %end.i.i = getelementptr inbounds %struct.nilfs_write_info, ptr %wi.i, i32 0, i32 3
  %start.i.i = getelementptr inbounds %struct.nilfs_write_info, ptr %wi.i, i32 0, i32 2
  %blocknr.i.i = getelementptr inbounds %struct.nilfs_write_info, ptr %wi.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %nilfs_segbuf_write.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn15 = phi ptr [ %.pn13, %for.body.lr.ph ], [ %.pn, %nilfs_segbuf_write.exit.for.body_crit_edge ]
  %segbuf.0 = getelementptr i8, ptr %.pn15, i32 -4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wi.i) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %1, align 8, !annotation !16
  %3 = ptrtoint ptr %wi.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %nilfs, ptr %wi.i, align 8
  %4 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bio.i.i, align 4
  %nblocks.i.i = getelementptr i8, ptr %.pn15, i32 20
  %5 = ptrtoint ptr %nblocks.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nblocks.i.i, align 8
  %7 = ptrtoint ptr %rest_blocks.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rest_blocks.i.i, align 8
  %8 = ptrtoint ptr %max_pages.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 256, ptr %max_pages.i.i, align 4
  %9 = tail call i32 @llvm.smin.i32(i32 %6, i32 256) #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 8
  %11 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %end.i.i, align 4
  %12 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %start.i.i, align 8
  %sb_pseg_start.i.i = getelementptr i8, ptr %.pn15, i32 100
  %13 = ptrtoint ptr %sb_pseg_start.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sb_pseg_start.i.i, align 8
  %15 = ptrtoint ptr %blocknr.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %blocknr.i.i, align 8
  %sb_segsum_buffers.i = getelementptr i8, ptr %.pn15, i32 112
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %.pn.in.i = phi ptr [ %sb_segsum_buffers.i, %for.body ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %sb_segsum_buffers.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %bh.0.i = getelementptr i8, ptr %.pn.i, i32 -44
  %call.i = call fastcc i32 @nilfs_segbuf_submit_bh(ptr noundef %segbuf.0, ptr noundef nonnull %wi.i, ptr noundef %bh.0.i) #9
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.nilfs_segbuf_write.exit.thread_crit_edge, !prof !17

for.body.i.nilfs_segbuf_write.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segbuf_write.exit.thread

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %sb_payload_buffers.i = getelementptr i8, ptr %.pn15, i32 120
  br label %for.cond15.i

for.cond15.i:                                     ; preds = %for.body21.i.for.cond15.i_crit_edge, %for.end.i
  %.pn57.in.i = phi ptr [ %sb_payload_buffers.i, %for.end.i ], [ %.pn57.i, %for.body21.i.for.cond15.i_crit_edge ]
  %17 = ptrtoint ptr %.pn57.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn57.i = load ptr, ptr %.pn57.in.i, align 4
  %cmp18.not.i = icmp eq ptr %.pn57.i, %sb_payload_buffers.i
  br i1 %cmp18.not.i, label %for.end38.i, label %for.body21.i

for.body21.i:                                     ; preds = %for.cond15.i
  %bh.1.i = getelementptr i8, ptr %.pn57.i, i32 -44
  %call22.i = call fastcc i32 @nilfs_segbuf_submit_bh(ptr noundef %segbuf.0, ptr noundef nonnull %wi.i, ptr noundef %bh.1.i) #9
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %for.body21.i.for.cond15.i_crit_edge, label %for.body21.i.nilfs_segbuf_write.exit.thread_crit_edge, !prof !17

for.body21.i.nilfs_segbuf_write.exit.thread_crit_edge: ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segbuf_write.exit.thread

for.body21.i.for.cond15.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond15.i

for.end38.i:                                      ; preds = %for.cond15.i
  %18 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bio.i.i, align 4
  %tobool39.not.i = icmp eq ptr %19, null
  br i1 %tobool39.not.i, label %for.end38.i.nilfs_segbuf_write.exit_crit_edge, label %if.then40.i

for.end38.i.nilfs_segbuf_write.exit_crit_edge:    ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segbuf_write.exit

if.then40.i:                                      ; preds = %for.end38.i
  %sb_nbio.i.i = getelementptr i8, ptr %.pn15, i32 132
  %20 = ptrtoint ptr %sb_nbio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sb_nbio.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp sgt i32 %21, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then40.i.if.end8.i.i_crit_edge

if.then40.i.if.end8.i.i_crit_edge:                ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.then40.i
  %22 = ptrtoint ptr %segbuf.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %segbuf.0, align 8
  %s_bdi.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %s_bdi.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_bdi.i.i, align 8
  %congested.i.i.i.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %25, i32 0, i32 11, i32 10
  %26 = ptrtoint ptr %congested.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %congested.i.i.i.i.i, align 8
  %and.i.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %sb_bio_event.i.i = getelementptr i8, ptr %.pn15, i32 140
  tail call void @wait_for_completion(ptr noundef %sb_bio_event.i.i) #9
  %28 = ptrtoint ptr %sb_nbio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sb_nbio.i.i, align 8
  %dec.i.i = add i32 %29, -1
  store i32 %dec.i.i, ptr %sb_nbio.i.i, align 8
  %sb_err.i.i = getelementptr i8, ptr %.pn15, i32 136
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sb_err.i.i, i32 noundef 4) #9
  %30 = ptrtoint ptr %sb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %sb_err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool4.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i.if.end8.i.i_crit_edge, label %if.then7.i.i, !prof !17

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then7.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bio_put(ptr noundef nonnull %19) #9
  br label %nilfs_segbuf_write.exit.thread

if.end8.i.i:                                      ; preds = %if.then.i.i.if.end8.i.i_crit_edge, %land.lhs.true.i.i.if.end8.i.i_crit_edge, %if.then40.i.if.end8.i.i_crit_edge
  %bi_end_io.i.i = getelementptr inbounds %struct.bio, ptr %19, i32 0, i32 10
  %32 = ptrtoint ptr %bi_end_io.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @nilfs_end_bio_write, ptr %bi_end_io.i.i, align 8
  %bi_private.i.i = getelementptr inbounds %struct.bio, ptr %19, i32 0, i32 11
  %33 = ptrtoint ptr %bi_private.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %segbuf.0, ptr %bi_private.i.i, align 4
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %19, i32 0, i32 2
  %34 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2049, ptr %bi_opf.i.i.i, align 8
  tail call void @submit_bio(ptr noundef nonnull %19) #9
  %35 = ptrtoint ptr %sb_nbio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sb_nbio.i.i, align 8
  %inc.i.i = add i32 %36, 1
  store i32 %inc.i.i, ptr %sb_nbio.i.i, align 8
  br label %nilfs_segbuf_write.exit

nilfs_segbuf_write.exit.thread:                   ; preds = %if.then7.i.i, %for.body21.i.nilfs_segbuf_write.exit.thread_crit_edge, %for.body.i.nilfs_segbuf_write.exit.thread_crit_edge
  %res.2.i.ph = phi i32 [ -5, %if.then7.i.i ], [ %call22.i, %for.body21.i.nilfs_segbuf_write.exit.thread_crit_edge ], [ %call.i, %for.body.i.nilfs_segbuf_write.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wi.i) #9
  br label %for.end

nilfs_segbuf_write.exit:                          ; preds = %if.end8.i.i, %for.end38.i.nilfs_segbuf_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wi.i) #9
  %37 = ptrtoint ptr %.pn15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn15, align 4
  %cmp.not = icmp eq ptr %.pn, %logs
  br i1 %cmp.not, label %nilfs_segbuf_write.exit.for.end_crit_edge, label %nilfs_segbuf_write.exit.for.body_crit_edge

nilfs_segbuf_write.exit.for.body_crit_edge:       ; preds = %nilfs_segbuf_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

nilfs_segbuf_write.exit.for.end_crit_edge:        ; preds = %nilfs_segbuf_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %nilfs_segbuf_write.exit.for.end_crit_edge, %nilfs_segbuf_write.exit.thread, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ %res.2.i.ph, %nilfs_segbuf_write.exit.thread ], [ 0, %entry.for.end_crit_edge ], [ 0, %nilfs_segbuf_write.exit.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_wait_on_logs(ptr noundef readonly %logs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %logs to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn12 = load ptr, ptr %logs, align 4
  %cmp.not13 = icmp eq ptr %.pn12, %logs
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %nilfs_segbuf_wait.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn15 = phi ptr [ %.pn, %nilfs_segbuf_wait.exit.for.body_crit_edge ], [ %.pn12, %entry.for.body_crit_edge ]
  %ret.014 = phi i32 [ %ret.1, %nilfs_segbuf_wait.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %segbuf.0 = getelementptr i8, ptr %.pn15, i32 -4
  %sb_nbio.i = getelementptr i8, ptr %.pn15, i32 132
  %1 = ptrtoint ptr %sb_nbio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sb_nbio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %for.body.nilfs_segbuf_wait.exit_crit_edge, label %do.body.preheader.i

for.body.nilfs_segbuf_wait.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segbuf_wait.exit

do.body.preheader.i:                              ; preds = %for.body
  %sb_bio_event.i = getelementptr i8, ptr %.pn15, i32 140
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  tail call void @wait_for_completion(ptr noundef %sb_bio_event.i) #9
  %3 = ptrtoint ptr %sb_nbio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_nbio.i, align 8
  %dec.i = add i32 %4, -1
  store i32 %dec.i, ptr %sb_nbio.i, align 8
  %cmp.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %sb_err.i = getelementptr i8, ptr %.pn15, i32 136
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sb_err.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %sb_err.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sb_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.i = icmp sgt i32 %6, 0
  br i1 %cmp2.i, label %if.then5.i, label %do.end.i.nilfs_segbuf_wait.exit_crit_edge, !prof !15

do.end.i.nilfs_segbuf_wait.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segbuf_wait.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %segbuf.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %segbuf.0, align 8
  %sb_pseg_start.i = getelementptr i8, ptr %.pn15, i32 100
  %9 = ptrtoint ptr %sb_pseg_start.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sb_pseg_start.i, align 8
  %nblocks.i = getelementptr i8, ptr %.pn15, i32 20
  %11 = ptrtoint ptr %nblocks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nblocks.i, align 8
  %sb_segnum.i = getelementptr i8, ptr %.pn15, i32 68
  %13 = ptrtoint ptr %sb_segnum.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sb_segnum.i, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %8, ptr noundef nonnull @.str.1, i64 noundef %10, i32 noundef %12, i64 noundef %14) #9
  br label %nilfs_segbuf_wait.exit

nilfs_segbuf_wait.exit:                           ; preds = %if.then5.i, %do.end.i.nilfs_segbuf_wait.exit_crit_edge, %for.body.nilfs_segbuf_wait.exit_crit_edge
  %tobool.not = phi i1 [ false, %for.body.nilfs_segbuf_wait.exit_crit_edge ], [ false, %do.end.i.nilfs_segbuf_wait.exit_crit_edge ], [ true, %if.then5.i ]
  %retval.0.i = phi i32 [ 0, %for.body.nilfs_segbuf_wait.exit_crit_edge ], [ 0, %do.end.i.nilfs_segbuf_wait.exit_crit_edge ], [ -5, %if.then5.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.014)
  %tobool1.not = icmp eq i32 %ret.014, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  %ret.1 = select i1 %or.cond, i32 %retval.0.i, i32 %ret.014
  %15 = ptrtoint ptr %.pn15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn15, align 4
  %cmp.not = icmp eq ptr %.pn, %logs
  br i1 %cmp.not, label %nilfs_segbuf_wait.exit.for.end_crit_edge, label %nilfs_segbuf_wait.exit.for.body_crit_edge

nilfs_segbuf_wait.exit.for.body_crit_edge:        ; preds = %nilfs_segbuf_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

nilfs_segbuf_wait.exit.for.end_crit_edge:         ; preds = %nilfs_segbuf_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %nilfs_segbuf_wait.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ret.1, %nilfs_segbuf_wait.exit.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_add_checksums_on_logs(ptr noundef readonly %logs, i32 noundef %seed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %logs to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn25 = load ptr, ptr %logs, align 4
  %cmp.not27 = icmp eq ptr %.pn25, %logs
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %nilfs_segbuf_fill_in_data_crc.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn28 = phi ptr [ %.pn, %nilfs_segbuf_fill_in_data_crc.exit.for.body_crit_edge ], [ %.pn25, %entry.for.body_crit_edge ]
  %sb_super_root = getelementptr i8, ptr %.pn28, i32 128
  %1 = ptrtoint ptr %sb_super_root to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sb_super_root, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %segbuf.029 = getelementptr i8, ptr %.pn28, i32 -4
  %3 = ptrtoint ptr %segbuf.029 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %segbuf.029, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %7 = ptrtoint ptr %sb_super_root to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sb_super_root, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data.i, align 4
  %ns_inode_size.i = getelementptr inbounds %struct.the_nilfs, ptr %6, i32 0, i32 51
  %11 = ptrtoint ptr %ns_inode_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ns_inode_size.i, align 4
  %mul.i = mul i32 %12, 3
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %sub.i = add i32 %mul.i, 12
  %call.i = tail call i32 @crc32_le(i32 noundef %seed, ptr noundef %add.ptr.i, i32 noundef %sub.i) #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %call.i) #9
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %sumbytes.i = getelementptr i8, ptr %.pn28, i32 28
  %15 = ptrtoint ptr %sumbytes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sumbytes.i, align 8
  %sb_segsum_buffers.i = getelementptr i8, ptr %.pn28, i32 112
  %17 = ptrtoint ptr %sb_segsum_buffers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sb_segsum_buffers.i, align 4
  %b_data.i14 = getelementptr i8, ptr %18, i32 -16
  %19 = ptrtoint ptr %b_data.i14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data.i14, align 4
  %b_size.i = getelementptr i8, ptr %18, i32 -20
  %21 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %b_size.i, align 8
  %23 = tail call i32 @llvm.umin.i32(i32 %16, i32 %22) #9
  %add.ptr3.i = getelementptr i8, ptr %20, i32 8
  %sub.i15 = add i32 %23, -8
  %call.i16 = tail call i32 @crc32_le(i32 noundef %seed, ptr noundef %add.ptr3.i, i32 noundef %sub.i15) #12
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn46.i = load ptr, ptr %18, align 4
  %cmp10.not47.i = icmp eq ptr %.pn46.i, %sb_segsum_buffers.i
  br i1 %cmp10.not47.i, label %if.end.nilfs_segbuf_fill_in_segsum_crc.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.nilfs_segbuf_fill_in_segsum_crc.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segbuf_fill_in_segsum_crc.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn51.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn46.i, %if.end.for.body.i_crit_edge ]
  %size.050.i = phi i32 [ %27, %for.body.i.for.body.i_crit_edge ], [ %23, %if.end.for.body.i_crit_edge ]
  %bytes.049.i = phi i32 [ %sub11.i, %for.body.i.for.body.i_crit_edge ], [ %16, %if.end.for.body.i_crit_edge ]
  %crc.048.i = phi i32 [ %call20.i, %for.body.i.for.body.i_crit_edge ], [ %call.i16, %if.end.for.body.i_crit_edge ]
  %sub11.i = sub i32 %bytes.049.i, %size.050.i
  %b_size12.i = getelementptr i8, ptr %.pn51.i, i32 -20
  %25 = ptrtoint ptr %b_size12.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %b_size12.i, align 8
  %27 = tail call i32 @llvm.umin.i32(i32 %sub11.i, i32 %26) #9
  %b_data19.i = getelementptr i8, ptr %.pn51.i, i32 -16
  %28 = ptrtoint ptr %b_data19.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data19.i, align 4
  %call20.i = tail call i32 @crc32_le(i32 noundef %crc.048.i, ptr noundef %29, i32 noundef %27) #12
  %30 = ptrtoint ptr %.pn51.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i = load ptr, ptr %.pn51.i, align 4
  %cmp10.not.i = icmp eq ptr %.pn.i, %sb_segsum_buffers.i
  br i1 %cmp10.not.i, label %for.body.i.nilfs_segbuf_fill_in_segsum_crc.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.nilfs_segbuf_fill_in_segsum_crc.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segbuf_fill_in_segsum_crc.exit

nilfs_segbuf_fill_in_segsum_crc.exit:             ; preds = %for.body.i.nilfs_segbuf_fill_in_segsum_crc.exit_crit_edge, %if.end.nilfs_segbuf_fill_in_segsum_crc.exit_crit_edge
  %crc.0.lcssa.i = phi i32 [ %call.i16, %if.end.nilfs_segbuf_fill_in_segsum_crc.exit_crit_edge ], [ %call20.i, %for.body.i.nilfs_segbuf_fill_in_segsum_crc.exit_crit_edge ]
  %31 = tail call i32 @llvm.bswap.i32(i32 %crc.0.lcssa.i) #9
  %ss_sumsum.i = getelementptr inbounds %struct.nilfs_segment_summary, ptr %20, i32 0, i32 1
  %32 = ptrtoint ptr %ss_sumsum.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ss_sumsum.i, align 4
  %33 = ptrtoint ptr %sb_segsum_buffers.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sb_segsum_buffers.i, align 4
  %b_data.i18 = getelementptr i8, ptr %34, i32 -16
  %35 = ptrtoint ptr %b_data.i18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_data.i18, align 4
  %add.ptr1.i = getelementptr i8, ptr %36, i32 4
  %b_size.i19 = getelementptr i8, ptr %34, i32 -20
  %37 = ptrtoint ptr %b_size.i19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %b_size.i19, align 8
  %sub.i20 = add i32 %38, -4
  %call.i21 = tail call i32 @crc32_le(i32 noundef %seed, ptr noundef %add.ptr1.i, i32 noundef %sub.i20) #12
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn60.i = load ptr, ptr %34, align 4
  %cmp.not61.i = icmp eq ptr %.pn60.i, %sb_segsum_buffers.i
  br i1 %cmp.not61.i, label %nilfs_segbuf_fill_in_segsum_crc.exit.for.end.i_crit_edge, label %nilfs_segbuf_fill_in_segsum_crc.exit.for.body.i23_crit_edge

nilfs_segbuf_fill_in_segsum_crc.exit.for.body.i23_crit_edge: ; preds = %nilfs_segbuf_fill_in_segsum_crc.exit
  br label %for.body.i23

nilfs_segbuf_fill_in_segsum_crc.exit.for.end.i_crit_edge: ; preds = %nilfs_segbuf_fill_in_segsum_crc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i23:                                     ; preds = %for.body.i23.for.body.i23_crit_edge, %nilfs_segbuf_fill_in_segsum_crc.exit.for.body.i23_crit_edge
  %.pn63.i = phi ptr [ %.pn.i22, %for.body.i23.for.body.i23_crit_edge ], [ %.pn60.i, %nilfs_segbuf_fill_in_segsum_crc.exit.for.body.i23_crit_edge ]
  %crc.062.i = phi i32 [ %call10.i, %for.body.i23.for.body.i23_crit_edge ], [ %call.i21, %nilfs_segbuf_fill_in_segsum_crc.exit.for.body.i23_crit_edge ]
  %b_data8.i = getelementptr i8, ptr %.pn63.i, i32 -16
  %40 = ptrtoint ptr %b_data8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_data8.i, align 4
  %b_size9.i = getelementptr i8, ptr %.pn63.i, i32 -20
  %42 = ptrtoint ptr %b_size9.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %b_size9.i, align 8
  %call10.i = tail call i32 @crc32_le(i32 noundef %crc.062.i, ptr noundef %41, i32 noundef %43) #12
  %44 = ptrtoint ptr %.pn63.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i22 = load ptr, ptr %.pn63.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i22, %sb_segsum_buffers.i
  br i1 %cmp.not.i, label %for.body.i23.for.end.i_crit_edge, label %for.body.i23.for.body.i23_crit_edge

for.body.i23.for.body.i23_crit_edge:              ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i23

for.body.i23.for.end.i_crit_edge:                 ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i23.for.end.i_crit_edge, %nilfs_segbuf_fill_in_segsum_crc.exit.for.end.i_crit_edge
  %crc.0.lcssa.i24 = phi i32 [ %call.i21, %nilfs_segbuf_fill_in_segsum_crc.exit.for.end.i_crit_edge ], [ %call10.i, %for.body.i23.for.end.i_crit_edge ]
  %sb_payload_buffers.i = getelementptr i8, ptr %.pn28, i32 120
  %45 = ptrtoint ptr %sb_payload_buffers.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn5964.i = load ptr, ptr %sb_payload_buffers.i, align 4
  %cmp23.not65.i = icmp eq ptr %.pn5964.i, %sb_payload_buffers.i
  br i1 %cmp23.not65.i, label %for.end.i.nilfs_segbuf_fill_in_data_crc.exit_crit_edge, label %for.end.i.for.body25.i_crit_edge

for.end.i.for.body25.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body25.i

for.end.i.nilfs_segbuf_fill_in_data_crc.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segbuf_fill_in_data_crc.exit

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %for.end.i.for.body25.i_crit_edge
  %.pn5967.i = phi ptr [ %.pn59.i, %for.body25.i.for.body25.i_crit_edge ], [ %.pn5964.i, %for.end.i.for.body25.i_crit_edge ]
  %crc.166.i = phi i32 [ %call30.i, %for.body25.i.for.body25.i_crit_edge ], [ %crc.0.lcssa.i24, %for.end.i.for.body25.i_crit_edge ]
  %b_page.i = getelementptr i8, ptr %.pn5967.i, i32 -36
  %46 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %b_page.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %48 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %48, 512
  %49 = tail call i32 @llvm.read_register.i32(metadata !5) #9
  %and.i.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %52, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %53 = tail call i32 @llvm.read_register.i32(metadata !5) #9
  %and.i.i.i1.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 213
  %57 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %47, i32 noundef %or.i.i) #9
  %b_data27.i = getelementptr i8, ptr %.pn5967.i, i32 -16
  %59 = ptrtoint ptr %b_data27.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_data27.i, align 4
  %61 = ptrtoint ptr %60 to i32
  %and.i = and i32 %61, 4095
  %add.ptr28.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i
  %b_size29.i = getelementptr i8, ptr %.pn5967.i, i32 -20
  %62 = ptrtoint ptr %b_size29.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %b_size29.i, align 8
  %call30.i = tail call i32 @crc32_le(i32 noundef %crc.166.i, ptr noundef %add.ptr28.i, i32 noundef %63) #12
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %64 = tail call i32 @llvm.read_register.i32(metadata !5) #9
  %and.i.i.i1.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 213
  %68 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %69, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %70 = tail call i32 @llvm.read_register.i32(metadata !5) #9
  %and.i.i.i.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %73, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %74 = ptrtoint ptr %.pn5967.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn59.i = load ptr, ptr %.pn5967.i, align 4
  %cmp23.not.i = icmp eq ptr %.pn59.i, %sb_payload_buffers.i
  br i1 %cmp23.not.i, label %for.body25.i.nilfs_segbuf_fill_in_data_crc.exit_crit_edge, label %for.body25.i.for.body25.i_crit_edge

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body25.i

for.body25.i.nilfs_segbuf_fill_in_data_crc.exit_crit_edge: ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_segbuf_fill_in_data_crc.exit

nilfs_segbuf_fill_in_data_crc.exit:               ; preds = %for.body25.i.nilfs_segbuf_fill_in_data_crc.exit_crit_edge, %for.end.i.nilfs_segbuf_fill_in_data_crc.exit_crit_edge
  %crc.1.lcssa.i = phi i32 [ %crc.0.lcssa.i24, %for.end.i.nilfs_segbuf_fill_in_data_crc.exit_crit_edge ], [ %call30.i, %for.body25.i.nilfs_segbuf_fill_in_data_crc.exit_crit_edge ]
  %75 = tail call i32 @llvm.bswap.i32(i32 %crc.1.lcssa.i) #9
  %76 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %36, align 8
  %77 = ptrtoint ptr %.pn28 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn = load ptr, ptr %.pn28, align 4
  %cmp.not = icmp eq ptr %.pn, %logs
  br i1 %cmp.not, label %nilfs_segbuf_fill_in_data_crc.exit.for.end_crit_edge, label %nilfs_segbuf_fill_in_data_crc.exit.for.body_crit_edge

nilfs_segbuf_fill_in_data_crc.exit.for.body_crit_edge: ; preds = %nilfs_segbuf_fill_in_data_crc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

nilfs_segbuf_fill_in_data_crc.exit.for.end_crit_edge: ; preds = %nilfs_segbuf_fill_in_data_crc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %nilfs_segbuf_fill_in_data_crc.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_segbuf_submit_bh(ptr noundef %segbuf, ptr nocapture noundef %wi, ptr nocapture noundef readonly %bh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_vecs = getelementptr inbounds %struct.nilfs_write_info, ptr %wi, i32 0, i32 6
  %0 = ptrtoint ptr %nr_vecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.body2, label %repeat.preheader, !prof !15

repeat.preheader:                                 ; preds = %entry
  %bio = getelementptr inbounds %struct.nilfs_write_info, ptr %wi, i32 0, i32 1
  %blocknr = getelementptr inbounds %struct.nilfs_write_info, ptr %wi, i32 0, i32 7
  %end = getelementptr inbounds %struct.nilfs_write_info, ptr %wi, i32 0, i32 3
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  br label %repeat

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/segbuf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

repeat:                                           ; preds = %if.end32.repeat_crit_edge, %repeat.preheader
  %2 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bio, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.then9, label %repeat.if.end24_crit_edge

repeat.if.end24_crit_edge:                        ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then9:                                         ; preds = %repeat
  %4 = ptrtoint ptr %wi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wi, align 8
  %6 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %blocknr, align 8
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  %conv = sext i32 %9 to i64
  %add = add i64 %7, %conv
  %10 = ptrtoint ptr %nr_vecs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_vecs, align 8
  %conv.i = trunc i32 %11 to i16
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext %conv.i, ptr noundef nonnull @fs_bio_set) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %nilfs_alloc_seg_bio.exit.thread, label %if.then.i, !prof !15

nilfs_alloc_seg_bio.exit.thread:                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bio, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.then9
  %ns_bdev.i = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %ns_bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ns_bdev.i, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %16, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %18, %14
  br i1 %cmp.not.i.i, label %if.then.i.nilfs_alloc_seg_bio.exit_crit_edge, label %if.then.i.i

if.then.i.nilfs_alloc_seg_bio.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_alloc_seg_bio.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i8.i.i = and i16 %16, -2177
  %19 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %nilfs_alloc_seg_bio.exit

nilfs_alloc_seg_bio.exit:                         ; preds = %if.then.i.i, %if.then.i.nilfs_alloc_seg_bio.exit_crit_edge
  %20 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call.i.i) #9
  %ns_blocksize_bits.i = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 44
  %21 = ptrtoint ptr %ns_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ns_blocksize_bits.i, align 8
  %sub.i = add i32 %22, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %add, %sh_prom.i
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shl.i, ptr %bi_iter.i, align 8
  %24 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i, ptr %bio, align 4
  br label %if.end24

if.end24:                                         ; preds = %nilfs_alloc_seg_bio.exit, %repeat.if.end24_crit_edge
  %25 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bio, align 4
  %27 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_page, align 8
  %29 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %b_size, align 8
  %31 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_data, align 4
  %33 = ptrtoint ptr %32 to i32
  %and = and i32 %33, 4095
  %call26 = tail call i32 @bio_add_page(ptr noundef %26, ptr noundef %28, i32 noundef %30, i32 noundef %and) #9
  %34 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %b_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call26, i32 %35)
  %cmp28 = icmp eq i32 %call26, %35
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %end, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %call33 = tail call fastcc i32 @nilfs_segbuf_submit_bio(ptr noundef %segbuf, ptr noundef %wi, i32 noundef 0)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.repeat_crit_edge, label %if.end32.cleanup_crit_edge, !prof !17

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32.repeat_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %repeat

cleanup:                                          ; preds = %if.end32.cleanup_crit_edge, %if.then30, %nilfs_alloc_seg_bio.exit.thread
  %retval.0 = phi i32 [ 0, %if.then30 ], [ -12, %nilfs_alloc_seg_bio.exit.thread ], [ %call33, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_segbuf_submit_bio(ptr noundef %segbuf, ptr nocapture noundef %wi, i32 noundef %mode_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bio1 = getelementptr inbounds %struct.nilfs_write_info, ptr %wi, i32 0, i32 1
  %0 = ptrtoint ptr %bio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio1, align 4
  %sb_nbio = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 12
  %2 = ptrtoint ptr %sb_nbio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_nbio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %segbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %segbuf, align 8
  %s_bdi = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %s_bdi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdi, align 8
  %congested.i.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %7, i32 0, i32 11, i32 10
  %8 = ptrtoint ptr %congested.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %congested.i.i.i, align 8
  %and.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not, label %land.lhs.true.if.end8_crit_edge, label %if.then

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %sb_bio_event = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 14
  tail call void @wait_for_completion(ptr noundef %sb_bio_event) #9
  %10 = ptrtoint ptr %sb_nbio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_nbio, align 8
  %dec = add i32 %11, -1
  store i32 %dec, ptr %sb_nbio, align 8
  %sb_err = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %segbuf, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sb_err, i32 noundef 4) #9
  %12 = ptrtoint ptr %sb_err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %sb_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %if.then.if.end8_crit_edge, label %if.then7, !prof !17

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bio_put(ptr noundef %1) #9
  %14 = ptrtoint ptr %bio1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %bio1, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @nilfs_end_bio_write, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %segbuf, ptr %bi_private, align 4
  %or.i = or i32 %mode_flags, 1
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %bi_opf.i, align 8
  tail call void @submit_bio(ptr noundef %1) #9
  %18 = ptrtoint ptr %sb_nbio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sb_nbio, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %sb_nbio, align 8
  %20 = ptrtoint ptr %bio1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %bio1, align 4
  %end = getelementptr inbounds %struct.nilfs_write_info, ptr %wi, i32 0, i32 3
  %21 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end, align 4
  %start = getelementptr inbounds %struct.nilfs_write_info, ptr %wi, i32 0, i32 2
  %23 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %start, align 8
  %sub.neg = sub i32 %24, %22
  %rest_blocks = getelementptr inbounds %struct.nilfs_write_info, ptr %wi, i32 0, i32 4
  %25 = ptrtoint ptr %rest_blocks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rest_blocks, align 8
  %sub11 = add i32 %sub.neg, %26
  store i32 %sub11, ptr %rest_blocks, align 8
  %max_pages = getelementptr inbounds %struct.nilfs_write_info, ptr %wi, i32 0, i32 5
  %27 = ptrtoint ptr %max_pages to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_pages, align 4
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 %sub11)
  %nr_vecs = getelementptr inbounds %struct.nilfs_write_info, ptr %wi, i32 0, i32 6
  %30 = ptrtoint ptr %nr_vecs to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %nr_vecs, align 8
  %31 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %22, ptr %start, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7
  %retval.0 = phi i32 [ -5, %if.then7 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_end_bio_write(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sb_err = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %1, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sb_err, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %sb_err, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sb_err, ptr %sb_err, i32 1, ptr elementtype(i32) %sb_err) #9, !srcloc !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #9
  %sb_bio_event = getelementptr inbounds %struct.nilfs_segment_buffer, ptr %1, i32 0, i32 14
  tail call void @complete(ptr noundef %sb_bio_event) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.named.register.sp = !{!5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @init_completion.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../include/linux/completion.h", i32 87, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/nilfs2/segbuf.c", i32 504, i32 3}
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
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"auto-init"}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2153699135}
!19 = !{i64 2152192679}
!20 = !{i64 2152192886}
!21 = !{i64 2153701906}
!22 = !{i64 2154995417, i64 2154995900, i64 2154995454, i64 2154995510, i64 2154995544, i64 2154995568, i64 2154995609, i64 2154995630, i64 2154995658, i64 2154995692}
!23 = !{i64 2148677383, i64 2148677409, i64 2148677438, i64 2148677472, i64 2148677503, i64 2148677526}
