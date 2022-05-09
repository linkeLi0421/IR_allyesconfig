; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/via/via_video.c_pt.bc'
source_filename = "../drivers/gpu/drm/via/via_video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_via_private = type { ptr, ptr, ptr, ptr, i32, [5 x %struct.wait_queue_head], ptr, i32, i32, i32, i32, ptr, ptr, %struct.drm_via_ring_buffer, i64, i32, i64, %struct.atomic_t, %struct.drm_via_state_t, [60000 x i8], [1024 x ptr], i32, i32, [4 x %struct.drm_via_irq], i32, ptr, i32, i32, ptr, i32, i32, %struct.drm_mm, i32, %struct.drm_mm, %struct.idr, i32, i32, [2 x %struct._drm_via_blitq], i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_via_ring_buffer = type { %struct.drm_local_map, ptr }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.drm_via_state_t = type { i32, i32, i32, [2 x [10 x i32]], [2 x [10 x i32]], [2 x [10 x i32]], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.drm_via_irq = type { %struct.atomic_t, i32, i32, %struct.wait_queue_head }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct._drm_via_blitq = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x ptr], %struct.spinlock, [8 x %struct.wait_queue_head], %struct.wait_queue_head, %struct.work_struct, %struct.timer_list }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct._drm_via_sarea = type { i32, i32, [8 x %struct.drm_clip_rect], [65 x %struct._drm_via_tex_region], i32, i32, i32, [384 x i8], [10 x i32], [10 x i32], i32, i32 }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct._drm_via_tex_region = type { i8, i8, i8, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.72 = type { i32, ptr }
%struct._drm_via_futex = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@via_init_futex.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(dev_priv->decoder_queue[i])\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 37, i32 2 }
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [35 x i8] c"../drivers/gpu/drm/via/via_video.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 40, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @via_init_futex.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_futex.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_init_futex(ptr noundef %dev_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #5
  %arrayidx = getelementptr %struct.drm_via_private, ptr %dev_priv, i32 0, i32 5, i32 0
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx, ptr noundef nonnull @.str.1, ptr noundef nonnull @via_init_futex.__key) #5
  %0 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv, align 8
  %XvMCLockArea = getelementptr inbounds %struct._drm_via_sarea, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %XvMCLockArea to i32
  %add = add i32 %2, 63
  %and = and i32 %add, -64
  %3 = inttoptr i32 %and to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %3, align 64
  %arrayidx.1 = getelementptr %struct.drm_via_private, ptr %dev_priv, i32 0, i32 5, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.1, ptr noundef nonnull @via_init_futex.__key) #5
  %5 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv, align 8
  %XvMCLockArea.1 = getelementptr inbounds %struct._drm_via_sarea, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %XvMCLockArea.1 to i32
  %8 = add i32 %7, 127
  %add1.1 = and i32 %8, -64
  %9 = inttoptr i32 %add1.1 to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %9, align 64
  %arrayidx.2 = getelementptr %struct.drm_via_private, ptr %dev_priv, i32 0, i32 5, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx.2, ptr noundef nonnull @.str.1, ptr noundef nonnull @via_init_futex.__key) #5
  %11 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv, align 8
  %XvMCLockArea.2 = getelementptr inbounds %struct._drm_via_sarea, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %XvMCLockArea.2 to i32
  %14 = add i32 %13, 191
  %add1.2 = and i32 %14, -64
  %15 = inttoptr i32 %add1.2 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %15, align 64
  %arrayidx.3 = getelementptr %struct.drm_via_private, ptr %dev_priv, i32 0, i32 5, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx.3, ptr noundef nonnull @.str.1, ptr noundef nonnull @via_init_futex.__key) #5
  %17 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv, align 8
  %XvMCLockArea.3 = getelementptr inbounds %struct._drm_via_sarea, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %XvMCLockArea.3 to i32
  %20 = add i32 %19, 255
  %add1.3 = and i32 %20, -64
  %21 = inttoptr i32 %add1.3 to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %21, align 64
  %arrayidx.4 = getelementptr %struct.drm_via_private, ptr %dev_priv, i32 0, i32 5, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx.4, ptr noundef nonnull @.str.1, ptr noundef nonnull @via_init_futex.__key) #5
  %23 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv, align 8
  %XvMCLockArea.4 = getelementptr inbounds %struct._drm_via_sarea, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %XvMCLockArea.4 to i32
  %26 = add i32 %25, 319
  %add1.4 = and i32 %26, -64
  %27 = inttoptr i32 %add1.4 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %27, align 64
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @via_cleanup_futex(ptr nocapture noundef %dev_priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_release_futex(ptr noundef %dev_priv, i32 noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv, align 8
  %XvMCLockArea = getelementptr inbounds %struct._drm_via_sarea, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %XvMCLockArea to i32
  %add = add i32 %4, 63
  %and = and i32 %add, -64
  %5 = inttoptr i32 %and to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 64
  %and3 = and i32 %7, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %context)
  %cmp4 = icmp eq i32 %and3, %context
  br i1 %cmp4, label %if.then5, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then5:                                         ; preds = %for.body.preheader
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %5, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool7.not = icmp sgt i32 %9, -1
  br i1 %tobool7.not, label %if.then5.if.end11_crit_edge, label %land.lhs.true

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true:                                    ; preds = %if.then5
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %5, align 64
  %and8 = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end11_crit_edge, label %if.then10

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.drm_via_private, ptr %dev_priv, i32 0, i32 5, i32 0
  tail call void @__wake_up(ptr noundef %arrayidx, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %if.then5.if.end11_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %5, align 64
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %for.body.preheader.for.inc_crit_edge
  %13 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv, align 8
  %XvMCLockArea.1 = getelementptr inbounds %struct._drm_via_sarea, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %XvMCLockArea.1 to i32
  %16 = add i32 %15, 127
  %add2.1 = and i32 %16, -64
  %17 = inttoptr i32 %add2.1 to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 64
  %and3.1 = and i32 %19, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.1, i32 %context)
  %cmp4.1 = icmp eq i32 %and3.1, %context
  br i1 %cmp4.1, label %if.then5.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then5.1:                                       ; preds = %for.inc
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %17, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool7.not.1 = icmp sgt i32 %21, -1
  br i1 %tobool7.not.1, label %if.then5.1.if.end11.1_crit_edge, label %land.lhs.true.1

if.then5.1.if.end11.1_crit_edge:                  ; preds = %if.then5.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.1

land.lhs.true.1:                                  ; preds = %if.then5.1
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %17, align 64
  %and8.1 = and i32 %23, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.1)
  %tobool9.not.1 = icmp eq i32 %and8.1, 0
  br i1 %tobool9.not.1, label %land.lhs.true.1.if.end11.1_crit_edge, label %if.then10.1

land.lhs.true.1.if.end11.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.1

if.then10.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.1 = getelementptr %struct.drm_via_private, ptr %dev_priv, i32 0, i32 5, i32 1
  tail call void @__wake_up(ptr noundef %arrayidx.1, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %if.end11.1

if.end11.1:                                       ; preds = %if.then10.1, %land.lhs.true.1.if.end11.1_crit_edge, %if.then5.1.if.end11.1_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %17, align 64
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end11.1, %for.inc.for.inc.1_crit_edge
  %25 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv, align 8
  %XvMCLockArea.2 = getelementptr inbounds %struct._drm_via_sarea, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %XvMCLockArea.2 to i32
  %28 = add i32 %27, 191
  %add2.2 = and i32 %28, -64
  %29 = inttoptr i32 %add2.2 to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 64
  %and3.2 = and i32 %31, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.2, i32 %context)
  %cmp4.2 = icmp eq i32 %and3.2, %context
  br i1 %cmp4.2, label %if.then5.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then5.2:                                       ; preds = %for.inc.1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %29, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool7.not.2 = icmp sgt i32 %33, -1
  br i1 %tobool7.not.2, label %if.then5.2.if.end11.2_crit_edge, label %land.lhs.true.2

if.then5.2.if.end11.2_crit_edge:                  ; preds = %if.then5.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.2

land.lhs.true.2:                                  ; preds = %if.then5.2
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %29, align 64
  %and8.2 = and i32 %35, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.2)
  %tobool9.not.2 = icmp eq i32 %and8.2, 0
  br i1 %tobool9.not.2, label %land.lhs.true.2.if.end11.2_crit_edge, label %if.then10.2

land.lhs.true.2.if.end11.2_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.2

if.then10.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.2 = getelementptr %struct.drm_via_private, ptr %dev_priv, i32 0, i32 5, i32 2
  tail call void @__wake_up(ptr noundef %arrayidx.2, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %if.end11.2

if.end11.2:                                       ; preds = %if.then10.2, %land.lhs.true.2.if.end11.2_crit_edge, %if.then5.2.if.end11.2_crit_edge
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 0, ptr %29, align 64
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end11.2, %for.inc.1.for.inc.2_crit_edge
  %37 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv, align 8
  %XvMCLockArea.3 = getelementptr inbounds %struct._drm_via_sarea, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %XvMCLockArea.3 to i32
  %40 = add i32 %39, 255
  %add2.3 = and i32 %40, -64
  %41 = inttoptr i32 %add2.3 to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 64
  %and3.3 = and i32 %43, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.3, i32 %context)
  %cmp4.3 = icmp eq i32 %and3.3, %context
  br i1 %cmp4.3, label %if.then5.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then5.3:                                       ; preds = %for.inc.2
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %41, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %tobool7.not.3 = icmp sgt i32 %45, -1
  br i1 %tobool7.not.3, label %if.then5.3.if.end11.3_crit_edge, label %land.lhs.true.3

if.then5.3.if.end11.3_crit_edge:                  ; preds = %if.then5.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.3

land.lhs.true.3:                                  ; preds = %if.then5.3
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %41, align 64
  %and8.3 = and i32 %47, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.3)
  %tobool9.not.3 = icmp eq i32 %and8.3, 0
  br i1 %tobool9.not.3, label %land.lhs.true.3.if.end11.3_crit_edge, label %if.then10.3

land.lhs.true.3.if.end11.3_crit_edge:             ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.3

if.then10.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.3 = getelementptr %struct.drm_via_private, ptr %dev_priv, i32 0, i32 5, i32 3
  tail call void @__wake_up(ptr noundef %arrayidx.3, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %if.end11.3

if.end11.3:                                       ; preds = %if.then10.3, %land.lhs.true.3.if.end11.3_crit_edge, %if.then5.3.if.end11.3_crit_edge
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %41, align 64
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end11.3, %for.inc.2.for.inc.3_crit_edge
  %49 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_priv, align 8
  %XvMCLockArea.4 = getelementptr inbounds %struct._drm_via_sarea, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %XvMCLockArea.4 to i32
  %52 = add i32 %51, 319
  %add2.4 = and i32 %52, -64
  %53 = inttoptr i32 %add2.4 to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 64
  %and3.4 = and i32 %55, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.4, i32 %context)
  %cmp4.4 = icmp eq i32 %and3.4, %context
  br i1 %cmp4.4, label %if.then5.4, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.4:                                       ; preds = %for.inc.3
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %53, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %tobool7.not.4 = icmp sgt i32 %57, -1
  br i1 %tobool7.not.4, label %if.then5.4.if.end11.4_crit_edge, label %land.lhs.true.4

if.then5.4.if.end11.4_crit_edge:                  ; preds = %if.then5.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.4

land.lhs.true.4:                                  ; preds = %if.then5.4
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %53, align 64
  %and8.4 = and i32 %59, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.4)
  %tobool9.not.4 = icmp eq i32 %and8.4, 0
  br i1 %tobool9.not.4, label %land.lhs.true.4.if.end11.4_crit_edge, label %if.then10.4

land.lhs.true.4.if.end11.4_crit_edge:             ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.4

if.then10.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.4 = getelementptr %struct.drm_via_private, ptr %dev_priv, i32 0, i32 5, i32 4
  tail call void @__wake_up(ptr noundef %arrayidx.4, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %if.end11.4

if.end11.4:                                       ; preds = %if.then10.4, %land.lhs.true.4.if.end11.4_crit_edge, %if.then5.4.if.end11.4_crit_edge
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 0, ptr %53, align 64
  br label %cleanup

cleanup:                                          ; preds = %if.end11.4, %for.inc.3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_decoder_futex(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture readnone %file_priv) #0 align 64 {
entry:
  %entry4 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #5
  %lock1 = getelementptr inbounds %struct._drm_via_futex, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %lock1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lock1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %XvMCLockArea = getelementptr inbounds %struct._drm_via_sarea, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %XvMCLockArea to i32
  %add = add i32 %6, 63
  %and = and i32 %add, -64
  %mul = shl nuw nsw i32 %5, 6
  %add3 = add i32 %and, %mul
  %7 = inttoptr i32 %add3 to ptr
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 0, label %do.body
    i32 1, label %sw.bb154
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %entry4) #5
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry4, i32 0, i32 1
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry4, i32 0, i32 2
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry4, i32 0, i32 3
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry4, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %entry4, align 4
  %16 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %11, align 4
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @default_wake_function, ptr %12, align 4
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %13, align 4
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %ms = getelementptr inbounds %struct._drm_via_futex, ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ms, align 4
  %div = udiv i32 %26, 10
  %arrayidx = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 5, i32 %5
  call void @add_wait_queue(ptr noundef %arrayidx, ptr noundef nonnull %entry4) #5
  %val = getelementptr inbounds %struct._drm_via_futex, ptr %data, i32 0, i32 3
  %27 = add i32 %div, %24
  br label %__here

__here:                                           ; preds = %signal_pending.exit.__here_crit_edge, %do.body
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 212
  %30 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 ptrtoint (ptr blockaddress(@via_decoder_futex, %__here) to i32), ptr %task_state_change, align 4
  %31 = load ptr, ptr %task, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1, ptr %31, align 128
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %7, align 64
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp65.not = icmp eq i32 %34, %36
  br i1 %cmp65.not, label %if.end67, label %__here.__here128_crit_edge

__here.__here128_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here128

if.end67:                                         ; preds = %__here
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %37, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp68 = icmp sgt i32 %sub, -1
  br i1 %cmp68, label %if.end67.__here128_crit_edge, label %if.end70

if.end67.__here128_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here128

if.end70:                                         ; preds = %if.end67
  %call71 = call i32 @schedule_timeout(i32 noundef 1) #5
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stack.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %44 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end70.__here128_crit_edge, !prof !19

if.end70.__here128_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here128

signal_pending.exit:                              ; preds = %if.end70
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %41, align 4
  %and1.i.i.i.i.i = and i32 %46, 1
  %tobool75.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool75.not, label %signal_pending.exit.__here_crit_edge, label %signal_pending.exit.__here128_crit_edge

signal_pending.exit.__here128_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here128

signal_pending.exit.__here_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here128:                                        ; preds = %signal_pending.exit.__here128_crit_edge, %if.end70.__here128_crit_edge, %if.end67.__here128_crit_edge, %__here.__here128_crit_edge
  %ret.0 = phi i32 [ 0, %__here.__here128_crit_edge ], [ -16, %if.end67.__here128_crit_edge ], [ -4, %signal_pending.exit.__here128_crit_edge ], [ -4, %if.end70.__here128_crit_edge ]
  %47 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task, align 8
  %task_state_change132 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 212
  %49 = ptrtoint ptr %task_state_change132 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 ptrtoint (ptr blockaddress(@via_decoder_futex, %__here128) to i32), ptr %task_state_change132, align 4
  %50 = load ptr, ptr %task, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 0, ptr %50, align 128
  %52 = ptrtoint ptr %lock1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lock1, align 4
  %arrayidx151 = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 5, i32 %53
  call void @remove_wait_queue(ptr noundef %arrayidx151, ptr noundef nonnull %entry4) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %entry4) #5
  br label %cleanup

sw.bb154:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx157 = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 5, i32 %5
  tail call void @__wake_up(ptr noundef %arrayidx157, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb154, %__here128, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb154 ], [ %ret.0, %__here128 ], [ -14, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8}
!llvm.named.register.sp = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/via/via_video.c", i32 37, i32 2}
!2 = !{ptr @via_init_futex.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/via/via_video.c", i32 40, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/via/via_video.c", i32 86, i32 3}
!7 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
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
!19 = !{!"branch_weights", i32 2000, i32 1}
