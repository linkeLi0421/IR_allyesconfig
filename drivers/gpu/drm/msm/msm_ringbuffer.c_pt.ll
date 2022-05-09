; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/msm_ringbuffer.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_ringbuffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.drm_sched_backend_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, %struct.list_head, %struct.ww_acquire_ctx, i32, ptr, ptr, i32, ptr, ptr, i8, i8, i8, ptr, ptr, i32, i32, i32, ptr, [0 x %struct.anon.97] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.89, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.89 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.atomic_t = type { i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.anon.97 = type { i32, %union.anon.98, i64 }
%union.anon.98 = type { ptr }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.108, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.108 = type { i8, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.85, ptr }
%union.anon.85 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.88, i64, i64, i32, %struct.kref, i32 }
%union.anon.88 = type { i64 }
%struct.msm_gem_object = type { %struct.drm_gem_object, i32, i8, i8, i8, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %struct.list_head, ptr, [32 x i8], i32, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.msm_rbmemptrs = type { i32, i32, [64 x %struct.msm_gpu_submit_stats], i64 }
%struct.msm_gpu_submit_stats = type { i64, i64, i64, i64 }

@__UNIQUE_ID_num_hw_submissions338 = internal constant [83 x i8] c"msm.parm=num_hw_submissions:The max # of jobs to write into ringbuffer (default 8)\00", section ".modinfo", align 1
@__param_str_num_hw_submissions = internal constant [23 x i8] c"msm.num_hw_submissions\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@num_hw_submissions = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_num_hw_submissions = internal constant %struct.kernel_param { ptr @__param_str_num_hw_submissions, ptr null, ptr @param_ops_uint, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @num_hw_submissions } }, section "__param", align 4
@__UNIQUE_ID_num_hw_submissionstype339 = internal constant [37 x i8] c"msm.parmtype=num_hw_submissions:uint\00", section ".modinfo", align 1
@msm_sched_ops = dso_local constant { %struct.drm_sched_backend_ops, [16 x i8] } { %struct.drm_sched_backend_ops { ptr null, ptr @msm_job_run, ptr null, ptr @msm_job_free }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ring%d\00", [25 x i8] zeroinitializer }, align 32
@msm_ringbuffer_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ring->submit_lock\00", [45 x i8] zeroinitializer }, align 32
@msm_ringbuffer_new.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ring->preempt_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu-ring-%d\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"num_hw_submissions\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 10, i32 13 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"msm_sched_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 43, i32 36 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 78, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 98, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 99, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [40 x i8] c"../drivers/gpu/drm/msm/msm_ringbuffer.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 101, i32 31 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_num_hw_submissions338, ptr @__UNIQUE_ID_num_hw_submissionstype339, ptr @__param_num_hw_submissions, ptr @num_hw_submissions, ptr @msm_sched_ops, ptr @.str, ptr @msm_ringbuffer_new.__key, ptr @.str.1, ptr @msm_ringbuffer_new.__key.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_hw_submissions to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_sched_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_ringbuffer_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_ringbuffer_new.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @msm_job_run(ptr noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu1 = getelementptr inbounds %struct.msm_gem_submit, ptr %job, i32 0, i32 3
  %0 = ptrtoint ptr %gpu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu1, align 8
  %ring = getelementptr inbounds %struct.msm_gem_submit, ptr %job, i32 0, i32 16
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 4
  %fctx = getelementptr inbounds %struct.msm_ringbuffer, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %fctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fctx, align 8
  %call2 = tail call ptr @msm_fence_alloc(ptr noundef %5) #6
  %hw_fence = getelementptr inbounds %struct.msm_gem_submit, ptr %job, i32 0, i32 8
  %6 = ptrtoint ptr %hw_fence to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %hw_fence, align 4
  %pdev = getelementptr inbounds %struct.msm_gpu, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  %lock = getelementptr inbounds %struct.msm_gpu, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  tail call void @msm_gpu_submit(ptr noundef %1, ptr noundef %job) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %call.i18 = tail call i32 @__pm_runtime_idle(ptr noundef %dev6, i32 noundef 5) #6
  %11 = ptrtoint ptr %hw_fence to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_fence, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.dma_fence_get.exit_crit_edge, label %if.then.i

entry.dma_fence_get.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %12, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #6
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #6, !srcloc !29
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !30

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !31

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #6
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %entry.dma_fence_get.exit_crit_edge
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_job_free(ptr noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_sched_job_cleanup(ptr noundef %job) #6
  %ref.i = getelementptr inbounds %struct.msm_gem_submit, ptr %job, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #6, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.msm_gem_submit_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !31

if.end5.i.i.i.i.i.msm_gem_submit_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %msm_gem_submit_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #6
  br label %msm_gem_submit_put.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @__msm_gem_submit_destroy(ptr noundef %ref.i) #6
  br label %msm_gem_submit_put.exit

msm_gem_submit_put.exit:                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.msm_gem_submit_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_ringbuffer_new(ptr noundef %gpu, i32 noundef %id, ptr noundef %memptrs, i64 noundef %memptrs_iova) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #6
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 720) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.msm_ringbuffer_destroy.exit_crit_edge, label %if.end3

entry.msm_ringbuffer_destroy.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %msm_ringbuffer_destroy.exit

if.end3:                                          ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %gpu, ptr %call7.i.i, align 8
  %id5 = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %id5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %id, ptr %id5, align 4
  %dev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %hw_apriv = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 45
  %6 = ptrtoint ptr %hw_apriv to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_apriv, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  %or = select i1 %tobool6.not, i32 131074, i32 537001986
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %8 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aspace, align 8
  %bo = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 2
  %iova = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 10
  %call7 = tail call ptr @msm_gem_kernel_new(ptr noundef %5, i32 noundef 32768, i32 noundef %or, ptr noundef %9, ptr noundef %bo, ptr noundef %iova) #6
  %start = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7, ptr %start, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call7 to i32
  %12 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %start, align 4
  br label %fail

if.end14:                                         ; preds = %if.end3
  %13 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bo, align 8
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %id) #6
  %15 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %start, align 4
  %add.ptr = getelementptr i32, ptr %16, i32 8192
  %end = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %end, align 8
  %next = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %next, align 8
  %cur = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %cur, align 4
  %memptrs19 = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 13
  %20 = ptrtoint ptr %memptrs19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %memptrs, ptr %memptrs19, align 8
  %memptrs_iova20 = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 14
  %21 = ptrtoint ptr %memptrs_iova20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %memptrs_iova, ptr %memptrs_iova20, align 8
  %sched = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 7
  %22 = load i32, ptr @num_hw_submissions, align 4
  %23 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bo, align 8
  %name23 = getelementptr inbounds %struct.msm_gem_object, ptr %24, i32 0, i32 12
  %call24 = tail call i32 @drm_sched_init(ptr noundef %sched, ptr noundef nonnull @msm_sched_ops, i32 noundef %22, i32 noundef 0, i32 noundef 2147483647, ptr noundef null, ptr noundef null, ptr noundef %name23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end14.fail_crit_edge

if.end14.fail_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end27:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %submits = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %submits to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %submits, ptr %submits, align 8
  %prev.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %submits, ptr %prev.i, align 4
  %submit_lock = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %submit_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @msm_ringbuffer_new.__key, i16 noundef signext 3) #6
  %preempt_lock = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %preempt_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @msm_ringbuffer_new.__key.2, i16 noundef signext 3) #6
  %27 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id5, align 4
  %call38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %28)
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %31 = ptrtoint ptr %memptrs19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %memptrs19, align 8
  %fence = getelementptr inbounds %struct.msm_rbmemptrs, ptr %32, i32 0, i32 1
  %call42 = call ptr @msm_fence_context_alloc(ptr noundef %30, ptr noundef %fence, ptr noundef nonnull %name) #6
  %fctx = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 15
  %33 = ptrtoint ptr %fctx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call42, ptr %fctx, align 8
  br label %cleanup

fail:                                             ; preds = %if.end14.fail_crit_edge, %if.then10
  %ret.0 = phi i32 [ %11, %if.then10 ], [ %call24, %if.end14.fail_crit_edge ]
  %cmp.i.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %fail.msm_ringbuffer_destroy.exit_crit_edge, label %if.end.i

fail.msm_ringbuffer_destroy.exit_crit_edge:       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %msm_ringbuffer_destroy.exit

if.end.i:                                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  %sched.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 7
  tail call void @drm_sched_fini(ptr noundef %sched.i) #6
  %fctx.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %call7.i.i, i32 0, i32 15
  %34 = ptrtoint ptr %fctx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fctx.i, align 8
  tail call void @msm_fence_context_free(ptr noundef %35) #6
  %36 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bo, align 8
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i, align 8
  %aspace.i = getelementptr inbounds %struct.msm_gpu, ptr %39, i32 0, i32 24
  %40 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %aspace.i, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %37, ptr noundef %41) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %msm_ringbuffer_destroy.exit

msm_ringbuffer_destroy.exit:                      ; preds = %if.end.i, %fail.msm_ringbuffer_destroy.exit_crit_edge, %entry.msm_ringbuffer_destroy.exit_crit_edge
  %ret.083 = phi i32 [ %ret.0, %fail.msm_ringbuffer_destroy.exit_crit_edge ], [ %ret.0, %if.end.i ], [ -12, %entry.msm_ringbuffer_destroy.exit_crit_edge ]
  %42 = inttoptr i32 %ret.083 to ptr
  br label %cleanup

cleanup:                                          ; preds = %msm_ringbuffer_destroy.exit, %if.end27
  %retval.0 = phi ptr [ %42, %msm_ringbuffer_destroy.exit ], [ %call7.i.i, %if.end27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_fence_context_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_ringbuffer_destroy(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ring, null
  %cmp.i = icmp ugt ptr %ring, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sched = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 7
  tail call void @drm_sched_fini(ptr noundef %sched) #6
  %fctx = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 15
  %0 = ptrtoint ptr %fctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fctx, align 8
  tail call void @msm_fence_context_free(ptr noundef %1) #6
  %bo = getelementptr inbounds %struct.msm_ringbuffer, ptr %ring, i32 0, i32 2
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 8
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring, align 8
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aspace, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %3, ptr noundef %7) #6
  tail call void @kfree(ptr noundef nonnull %ring) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_fence_context_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_kernel_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_fence_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_submit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__msm_gem_submit_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !15, !17, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__UNIQUE_ID_num_hw_submissions338, !1, !"__UNIQUE_ID_num_hw_submissions338", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/msm_ringbuffer.c", i32 11, i32 1}
!2 = !{ptr @__param_num_hw_submissions, !3, !"__param_num_hw_submissions", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/msm_ringbuffer.c", i32 12, i32 1}
!4 = !{ptr @__UNIQUE_ID_num_hw_submissionstype339, !3, !"__UNIQUE_ID_num_hw_submissionstype339", i1 false, i1 false}
!5 = !{ptr @msm_sched_ops, !6, !"msm_sched_ops", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/msm_ringbuffer.c", i32 43, i32 36}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/msm_ringbuffer.c", i32 78, i32 36}
!9 = !{ptr @msm_ringbuffer_new.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/msm_ringbuffer.c", i32 98, i32 2}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @msm_ringbuffer_new.__key.2, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/msm_ringbuffer.c", i32 99, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/msm_ringbuffer.c", i32 101, i32 31}
!17 = !{ptr @__param_str_num_hw_submissions, !3, !"__param_str_num_hw_submissions", i1 false, i1 false}
!18 = !{ptr @num_hw_submissions, !19, !"num_hw_submissions", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/msm_ringbuffer.c", i32 10, i32 13}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2148144407, i64 2148144439, i64 2148144468, i64 2148144502, i64 2148144533, i64 2148144556}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2148232408}
!33 = !{i64 2148146872, i64 2148146904, i64 2148146933, i64 2148146967, i64 2148146998, i64 2148147021}
!34 = !{i64 2149316033}
!35 = !{i8 0, i8 2}
