; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmu_interval_notifier_ops = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.amdgpu_bo = type { i32, i32, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i64, ptr, ptr, %struct.mmu_interval_notifier, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.hmm_range = type { ptr, i32, i32, i32, ptr, i32, i32, ptr }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.mmu_notifier_range = type { ptr, ptr, i32, i32, i32, i32, ptr }

@amdgpu_mn_hsa_ops = internal constant { %struct.mmu_interval_notifier_ops, [28 x i8] } { %struct.mmu_interval_notifier_ops { ptr @amdgpu_mn_invalidate_hsa }, [28 x i8] zeroinitializer }, align 32
@amdgpu_mn_gfx_ops = internal constant { %struct.mmu_interval_notifier_ops, [28 x i8] } { %struct.mmu_interval_notifier_ops { ptr @amdgpu_mn_invalidate_gfx }, [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(%ld) failed to wait for user bo\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"amdgpu_mn_hsa_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 120, i32 47 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"amdgpu_mn_gfx_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 86, i32 47 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 82, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @amdgpu_mn_hsa_ops, ptr @amdgpu_mn_gfx_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_mn_hsa_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_mn_gfx_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_mn_register(ptr noundef %bo, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %kfd_bo = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 10
  %0 = ptrtoint ptr %kfd_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kfd_bo, align 4
  %tobool.not = icmp eq ptr %1, null
  %notifier3 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 9
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %and.i14 = and i32 %2, -16384
  %3 = inttoptr i32 %and.i14 to ptr
  %task5 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task5, align 8
  %mm6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %mm6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm6, align 8
  %size.i15 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %8 = ptrtoint ptr %size.i15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i15, align 8
  %amdgpu_mn_gfx_ops.amdgpu_mn_hsa_ops = select i1 %tobool.not, ptr @amdgpu_mn_gfx_ops, ptr @amdgpu_mn_hsa_ops
  %call8 = tail call i32 @mmu_interval_notifier_insert(ptr noundef %notifier3, ptr noundef %7, i32 noundef %addr, i32 noundef %9, ptr noundef nonnull %amdgpu_mn_gfx_ops.amdgpu_mn_hsa_ops) #6
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmu_interval_notifier_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_mn_unregister(ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mm = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %notifier = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 9
  tail call void @mmu_interval_notifier_remove(ptr noundef %notifier) #6
  %2 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %mm, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmu_interval_notifier_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_hmm_range_get_pages(ptr noundef %notifier, ptr noundef %mm, ptr noundef writeonly %pages, i64 noundef %start, i64 noundef %npages, ptr nocapture noundef writeonly %phmm_range, i1 noundef zeroext %readonly, i1 noundef zeroext %mmap_locked, ptr noundef %owner) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !16

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %npages to i32
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv, i32 4) #6
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %if.end.out_free_range_crit_edge, label %kvmalloc_array.exit, !prof !16

if.end.out_free_range_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_range

kvmalloc_array.exit:                              ; preds = %if.end
  %3 = extractvalue { i32, i1 } %1, 0
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %3, i32 noundef 3264, i32 noundef -1) #10
  %tobool6.not = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not, label %kvmalloc_array.exit.out_free_range_crit_edge, label %if.end16, !prof !16

kvmalloc_array.exit.out_free_range_crit_edge:     ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_range

if.end16:                                         ; preds = %kvmalloc_array.exit
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %notifier, ptr %call7.i.i, align 8
  %default_flags = getelementptr inbounds %struct.hmm_range, ptr %call7.i.i, i32 0, i32 5
  %spec.select = select i1 %readonly, i32 -2147483648, i32 -1073741824
  %5 = ptrtoint ptr %default_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %default_flags, align 4
  %hmm_pfns = getelementptr inbounds %struct.hmm_range, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %hmm_pfns to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %hmm_pfns, align 8
  %conv22 = trunc i64 %start to i32
  %start23 = getelementptr inbounds %struct.hmm_range, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %start23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv22, ptr %start23, align 8
  %mul = shl i64 %npages, 12
  %add = add i64 %mul, %start
  %conv24 = trunc i64 %add to i32
  %end = getelementptr inbounds %struct.hmm_range, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv24, ptr %end, align 4
  %dev_private_owner = getelementptr inbounds %struct.hmm_range, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %dev_private_owner to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %owner, ptr %dev_private_owner, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 262143, i64 %npages)
  %cmp = icmp ugt i64 %npages, 262143
  %shr = lshr i64 %npages, 17
  %11 = trunc i64 %shr to i32
  %extract.t = mul i32 %11, 1000
  %cond.off0 = select i1 %cmp, i32 %extract.t, i32 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cond.off0) #6
  %add29 = add i32 %call2.i, %10
  %notifier_seq = getelementptr inbounds %struct.hmm_range, ptr %call7.i.i, i32 0, i32 1
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %mm, i32 0, i32 15
  br label %retry

retry:                                            ; preds = %land.lhs.true.retry_crit_edge, %if.end16
  %call30 = tail call i32 @mmu_interval_read_begin(ptr noundef %notifier) #6
  %12 = ptrtoint ptr %notifier_seq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call30, ptr %notifier_seq, align 4
  br i1 %mmap_locked, label %if.end41.thread, label %if.then40, !prof !16

if.end41.thread:                                  ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #8
  %call42115 = tail call i32 @hmm_range_fault(ptr noundef nonnull %call7.i.i) #6
  br label %if.end53

if.then40:                                        ; preds = %retry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@amdgpu_hmm_range_get_pages, %if.then.i.i)) #6
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !17

if.then.i.i:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #6
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then40
  tail call void @down_read(ptr noundef %mmap_lock.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@amdgpu_hmm_range_get_pages, %if.end41.thread117)) #6
          to label %if.then52 [label %if.end41.thread117], !srcloc !17

if.end41.thread117:                               ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %if.then52

if.then52:                                        ; preds = %if.end41.thread117, %__mmap_lock_trace_start_locking.exit.i
  %call42 = tail call i32 @hmm_range_fault(ptr noundef nonnull %call7.i.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@amdgpu_hmm_range_get_pages, %if.then.i.i111)) #6
          to label %mmap_read_unlock.exit [label %if.then.i.i111], !srcloc !17

if.then.i.i111:                                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #6
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i111, %if.then52
  tail call void @up_read(ptr noundef %mmap_lock.i) #6
  br label %if.end53

if.end53:                                         ; preds = %mmap_read_unlock.exit, %if.end41.thread
  %call42116 = phi i32 [ %call42115, %if.end41.thread ], [ %call42, %mmap_read_unlock.exit ]
  %13 = zext i32 %call42116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call42116, label %if.end53.out_free_pfns_crit_edge [
    i32 0, label %for.cond.preheader
    i32 -16, label %land.lhs.true
  ], !prof !18

if.end53.out_free_pfns_crit_edge:                 ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_pfns

for.cond.preheader:                               ; preds = %if.end53
  %tobool69.not = icmp ne ptr %pages, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %npages)
  %cmp71121 = icmp ne i64 %npages, 0
  %or.cond122 = and i1 %tobool69.not, %cmp71121
  br i1 %or.cond122, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

land.lhs.true:                                    ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add29, %14
  %cmp64 = icmp slt i32 %sub, 0
  br i1 %cmp64, label %land.lhs.true.out_free_pfns_crit_edge, label %land.lhs.true.retry_crit_edge

land.lhs.true.retry_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry

land.lhs.true.out_free_pfns_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_pfns

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0123 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call.i.i, i32 %i.0123
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %and.i = and i32 %16, 16777215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %18 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %and.i, %18
  %add.ptr.i = getelementptr %struct.page, ptr %17, i32 %sub.i
  %arrayidx74 = getelementptr ptr, ptr %pages, i32 %i.0123
  %19 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %arrayidx74, align 4
  %inc = add i32 %i.0123, 1
  %conv70 = zext i32 %inc to i64
  %cmp71 = icmp ult i64 %conv70, %npages
  br i1 %cmp71, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %20 = ptrtoint ptr %phmm_range to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %phmm_range, align 4
  br label %cleanup

out_free_pfns:                                    ; preds = %land.lhs.true.out_free_pfns_crit_edge, %if.end53.out_free_pfns_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #6
  br label %out_free_range

out_free_range:                                   ; preds = %out_free_pfns, %kvmalloc_array.exit.out_free_range_crit_edge, %if.end.out_free_range_crit_edge
  %r.0 = phi i32 [ %call42116, %out_free_pfns ], [ -12, %kvmalloc_array.exit.out_free_range_crit_edge ], [ -12, %if.end.out_free_range_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free_range, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %out_free_range ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmu_interval_read_begin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hmm_range_fault(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_hmm_range_get_pages_done(ptr noundef %hmm_range) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hmm_range to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hmm_range, align 4
  %notifier_seq = getelementptr inbounds %struct.hmm_range, ptr %hmm_range, i32 0, i32 1
  %2 = ptrtoint ptr %notifier_seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %notifier_seq, align 4
  %invalidate_seq.i = getelementptr inbounds %struct.mmu_interval_notifier, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %invalidate_seq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %invalidate_seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.i = icmp ne i32 %5, %3
  %conv = zext i1 %cmp.i to i32
  %hmm_pfns = getelementptr inbounds %struct.hmm_range, ptr %hmm_range, i32 0, i32 4
  %6 = ptrtoint ptr %hmm_pfns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hmm_pfns, align 4
  tail call void @kvfree(ptr noundef %7) #6
  tail call void @kfree(ptr noundef %hmm_range) #6
  ret i32 %conv
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @amdgpu_mn_invalidate_hsa(ptr noundef %mni, ptr nocapture noundef readonly %range, i32 noundef %cur_seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  br i1 %tobool.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bdev = getelementptr i8, ptr %mni, i32 -96
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 8
  %notifier_lock = getelementptr i8, ptr %3, i32 73536
  tail call void @mutex_lock_nested(ptr noundef %notifier_lock, i32 noundef 0) #6
  %invalidate_seq.i = getelementptr inbounds %struct.mmu_interval_notifier, ptr %mni, i32 0, i32 4
  %4 = ptrtoint ptr %invalidate_seq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %cur_seq, ptr %invalidate_seq.i, align 4
  tail call void @mutex_unlock(ptr noundef %notifier_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %tobool.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @amdgpu_mn_invalidate_gfx(ptr noundef %mni, ptr nocapture noundef readonly %range, i32 noundef %cur_seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  br i1 %tobool.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bdev = getelementptr i8, ptr %mni, i32 -96
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 8
  %notifier_lock = getelementptr i8, ptr %3, i32 73536
  tail call void @mutex_lock_nested(ptr noundef %notifier_lock, i32 noundef 0) #6
  %invalidate_seq.i = getelementptr inbounds %struct.mmu_interval_notifier, ptr %mni, i32 0, i32 4
  %4 = ptrtoint ptr %invalidate_seq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %cur_seq, ptr %invalidate_seq.i, align 4
  %resv = getelementptr i8, ptr %mni, i32 -248
  %5 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resv, align 8
  %call3 = tail call i32 @dma_resv_wait_timeout(ptr noundef %6, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 2147483647) #6
  tail call void @mutex_unlock(ptr noundef %notifier_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i1 %tobool.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1, !3, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{!"sp"}
!1 = !{ptr @amdgpu_mn_hsa_ops, !2, !"amdgpu_mn_hsa_ops", i1 false, i1 false}
!2 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c", i32 120, i32 47}
!3 = !{ptr @amdgpu_mn_gfx_ops, !4, !"amdgpu_mn_gfx_ops", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c", i32 86, i32 47}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c", i32 82, i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2148185530, i64 2148185535, i64 2148185548, i64 2148185592, i64 2148185626, i64 2148185647}
!18 = !{!"branch_weights", i32 1, i32 4000, i32 1}
