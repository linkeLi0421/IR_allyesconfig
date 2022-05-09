; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/etnaviv/etnaviv_sched.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_sched.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.drm_sched_backend_ops = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.etnaviv_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.etnaviv_cmdbuf, i8, i32, i32, i32, ptr, i32, [0 x %struct.etnaviv_gem_submit_bo] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.85, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.85 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
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
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_gem_submit_bo = type { i32, i64, ptr, ptr, ptr, i32, ptr }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_job_hang_limit = internal constant [23 x i8] c"etnaviv.job_hang_limit\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@etnaviv_job_hang_limit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_job_hang_limit = internal constant %struct.kernel_param { ptr @__param_str_job_hang_limit, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @etnaviv_job_hang_limit } }, section "__param", align 4
@__UNIQUE_ID_job_hang_limittype321 = internal constant [36 x i8] c"etnaviv.parmtype=job_hang_limit:int\00", section ".modinfo", align 1
@__param_str_hw_job_limit = internal constant [21 x i8] c"etnaviv.hw_job_limit\00", align 1
@etnaviv_hw_jobs_limit = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_hw_job_limit = internal constant %struct.kernel_param { ptr @__param_str_hw_job_limit, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @etnaviv_hw_jobs_limit } }, section "__param", align 4
@__UNIQUE_ID_hw_job_limittype322 = internal constant [34 x i8] c"etnaviv.parmtype=hw_job_limit:int\00", section ".modinfo", align 1
@etnaviv_sched_ops = internal constant { %struct.drm_sched_backend_ops, [16 x i8] } { %struct.drm_sched_backend_ops { ptr @etnaviv_sched_dependency, ptr @etnaviv_sched_run_job, ptr @etnaviv_sched_timedout_job, ptr @etnaviv_sched_free_job }, [16 x i8] zeroinitializer }, align 32
@etnaviv_sched_run_job.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"etnaviv\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"etnaviv_sched_run_job\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/etnaviv/etnaviv_sched.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"skipping bad job\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"etnaviv_job_hang_limit\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 15, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"etnaviv_hw_jobs_limit\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 17, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"etnaviv_sched_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 144, i32 43 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [43 x i8] c"../drivers/gpu/drm/etnaviv/etnaviv_sched.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 80, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_hw_job_limittype322, ptr @__UNIQUE_ID_job_hang_limittype321, ptr @__param_hw_job_limit, ptr @__param_job_hang_limit, ptr @etnaviv_job_hang_limit, ptr @etnaviv_hw_jobs_limit, ptr @etnaviv_sched_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_job_hang_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_hw_jobs_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_sched_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_sched_push_job(ptr noundef %sched_entity, ptr noundef %submit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 3
  %0 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu, align 8
  %fence_lock = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %fence_lock, i32 noundef 0) #5
  %ctx = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 2
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @drm_sched_job_init(ptr noundef %submit, ptr noundef %sched_entity, ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end:                                           ; preds = %entry
  tail call void @drm_sched_job_arm(ptr noundef %submit) #5
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %submit, i32 0, i32 3
  %4 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fence, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %5, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %finished, null
  br i1 %tobool.not.i, label %if.end.dma_fence_get.exit_crit_edge, label %if.then.i

if.end.dma_fence_get.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.drm_sched_fence, ptr %5, i32 0, i32 1, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !29
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !30

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !31

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #5
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end.dma_fence_get.exit_crit_edge
  %out_fence = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 6
  %8 = ptrtoint ptr %out_fence to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %finished, ptr %out_fence, align 4
  %9 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpu, align 8
  %fence_idr = getelementptr inbounds %struct.etnaviv_gpu, ptr %10, i32 0, i32 18
  %call6 = tail call i32 @idr_alloc_cyclic(ptr noundef %fence_idr, ptr noundef %finished, i32 noundef 0, i32 noundef 2147483647, i32 noundef 3264) #5
  %out_fence_id = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 8
  %11 = ptrtoint ptr %out_fence_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call6, ptr %out_fence_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_sched_job_cleanup(ptr noundef %submit) #5
  br label %out_unlock

if.end10:                                         ; preds = %dma_fence_get.exit
  %refcount = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %submit, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #5
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #5, !srcloc !29
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end10.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !30

if.end10.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end10
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !31

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end10.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end10.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #5
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @drm_sched_entity_push_job(ptr noundef %submit) #5
  br label %out_unlock

out_unlock:                                       ; preds = %kref_get.exit, %if.then8, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_unlock_crit_edge ], [ -12, %if.then8 ], [ 0, %kref_get.exit ]
  %14 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpu, align 8
  %fence_lock13 = getelementptr inbounds %struct.etnaviv_gpu, ptr %15, i32 0, i32 17
  tail call void @mutex_unlock(ptr noundef %fence_lock13) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_arm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_push_job(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_sched_init(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @etnaviv_hw_jobs_limit, align 4
  %1 = load i32, ptr @etnaviv_job_hang_limit, align 4
  %dev = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %sched = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 7
  %call2 = tail call i32 @drm_sched_init(ptr noundef %sched, ptr noundef nonnull @etnaviv_sched_ops, i32 noundef %0, i32 noundef %1, i32 noundef 50, ptr noundef null, ptr noundef null, ptr noundef %retval.0.i) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_sched_fini(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sched = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 7
  tail call void @drm_sched_fini(ptr noundef %sched) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @etnaviv_sched_dependency(ptr nocapture noundef %sched_job, ptr nocapture noundef readnone %entity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %in_fence = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %sched_job, i32 0, i32 7
  %0 = ptrtoint ptr %in_fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_fence, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then, !prof !31

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %in_fence to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %in_fence, align 8
  %call5 = tail call fastcc zeroext i1 @dma_fence_is_signaled(ptr noundef nonnull %1)
  br i1 %call5, label %if.end, label %if.then.cleanup37_crit_edge

if.then.cleanup37_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup37

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dma_fence_put(ptr noundef nonnull %1)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %nr_bos = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %sched_job, i32 0, i32 16
  %3 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp104.not = icmp eq i32 %4, 0
  br i1 %cmp104.not, label %if.end7.cleanup37_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.cleanup37_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup37

for.body:                                         ; preds = %for.inc34.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.0105 = phi i32 [ %inc35, %for.inc34.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %excl = getelementptr %struct.etnaviv_gem_submit, ptr %sched_job, i32 0, i32 17, i32 %i.0105, i32 4
  %5 = ptrtoint ptr %excl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %excl, align 8
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %for.body.if.end15_crit_edge, label %if.then9

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then9:                                         ; preds = %for.body
  %7 = ptrtoint ptr %excl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %excl, align 8
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 5
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then9.if.then.i_crit_edge

if.then9.if.then.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end.i:                                         ; preds = %if.then9
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup37_crit_edge, label %land.lhs.true.i

if.end.i.cleanup37_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup37

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %13(ptr noundef nonnull %6) #5
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.cleanup37_crit_edge

land.lhs.true.i.cleanup37_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup37

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef nonnull %6) #5
  br label %if.then.i

if.then.i:                                        ; preds = %if.then5.i, %if.then9.if.then.i_crit_edge
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end15_crit_edge, label %if.then10.i.i.i.i.i, !prof !31

if.end5.i.i.i.i.i.if.end15_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %if.end15

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @dma_fence_release(ptr noundef %refcount.i) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end15_crit_edge, %for.body.if.end15_crit_edge
  %nr_shared = getelementptr %struct.etnaviv_gem_submit, ptr %sched_job, i32 0, i32 17, i32 %i.0105, i32 5
  %15 = ptrtoint ptr %nr_shared to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_shared, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp17102.not = icmp eq i32 %16, 0
  br i1 %cmp17102.not, label %if.end15.for.inc34_crit_edge, label %for.body18.lr.ph

if.end15.for.inc34_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34

for.body18.lr.ph:                                 ; preds = %if.end15
  %shared = getelementptr %struct.etnaviv_gem_submit, ptr %sched_job, i32 0, i32 17, i32 %i.0105, i32 6
  br label %for.body18

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %for.body18.lr.ph
  %j.0103 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc, %for.inc.for.body18_crit_edge ]
  %17 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %shared, align 8
  %arrayidx19 = getelementptr ptr, ptr %18, i32 %j.0103
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %20, null
  br i1 %tobool20.not, label %for.body18.for.inc_crit_edge, label %if.end22

for.body18.for.inc_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end22:                                         ; preds = %for.body18
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx19, align 4
  %flags.i71 = getelementptr inbounds %struct.dma_fence, ptr %20, i32 0, i32 5
  %22 = ptrtoint ptr %flags.i71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i71, align 4
  %and1.i.i72 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i72)
  %tobool.not.i73 = icmp eq i32 %and1.i.i72, 0
  br i1 %tobool.not.i73, label %if.end.i77, label %if.end22.if.then.i89_crit_edge

if.end22.if.then.i89_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i89

if.end.i77:                                       ; preds = %if.end22
  %ops.i74 = getelementptr inbounds %struct.dma_fence, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %ops.i74 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i74, align 4
  %signaled.i75 = getelementptr inbounds %struct.dma_fence_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %signaled.i75 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %signaled.i75, align 4
  %tobool1.not.i76 = icmp eq ptr %27, null
  br i1 %tobool1.not.i76, label %if.end.i77.cleanup37_crit_edge, label %land.lhs.true.i79

if.end.i77.cleanup37_crit_edge:                   ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup37

land.lhs.true.i79:                                ; preds = %if.end.i77
  %call4.i78 = tail call zeroext i1 %27(ptr noundef nonnull %20) #5
  br i1 %call4.i78, label %if.then5.i81, label %land.lhs.true.i79.cleanup37_crit_edge

land.lhs.true.i79.cleanup37_crit_edge:            ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup37

if.then5.i81:                                     ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i80 = tail call i32 @dma_fence_signal(ptr noundef nonnull %20) #5
  br label %if.then.i89

if.then.i89:                                      ; preds = %if.then5.i81, %if.end22.if.then.i89_crit_edge
  %refcount.i85 = getelementptr inbounds %struct.dma_fence, ptr %20, i32 0, i32 6
  %call.i.i.i.i.i.i.i86 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i85, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr %refcount.i85, i32 1, i32 3, i32 1) #5
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i85, ptr %refcount.i85, i32 1, ptr elementtype(i32) %refcount.i85) #5, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i87 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i87)
  %cmp.i.i.i.i.i88 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i87, 1
  br i1 %cmp.i.i.i.i.i88, label %if.then.i.i93, label %if.end5.i.i.i.i.i91

if.end5.i.i.i.i.i91:                              ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i87)
  %.not.i.i.i.i.i90 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i87, 0
  br i1 %.not.i.i.i.i.i90, label %if.end5.i.i.i.i.i91.for.inc_crit_edge, label %if.then10.i.i.i.i.i92, !prof !31

if.end5.i.i.i.i.i91.for.inc_crit_edge:            ; preds = %if.end5.i.i.i.i.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then10.i.i.i.i.i92:                            ; preds = %if.end5.i.i.i.i.i91
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i85, i32 noundef 3) #5
  br label %for.inc

if.then.i.i93:                                    ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @dma_fence_release(ptr noundef %refcount.i85) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i93, %if.then10.i.i.i.i.i92, %if.end5.i.i.i.i.i91.for.inc_crit_edge, %for.body18.for.inc_crit_edge
  %inc = add nuw i32 %j.0103, 1
  %29 = ptrtoint ptr %nr_shared to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_shared, align 4
  %cmp17 = icmp ult i32 %inc, %30
  br i1 %cmp17, label %for.inc.for.body18_crit_edge, label %for.inc.for.inc34_crit_edge

for.inc.for.inc34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body18

for.inc34:                                        ; preds = %for.inc.for.inc34_crit_edge, %if.end15.for.inc34_crit_edge
  %shared30 = getelementptr %struct.etnaviv_gem_submit, ptr %sched_job, i32 0, i32 17, i32 %i.0105, i32 6
  %31 = ptrtoint ptr %shared30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %shared30, align 8
  tail call void @kfree(ptr noundef %32) #5
  %33 = ptrtoint ptr %nr_shared to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %nr_shared, align 4
  %34 = ptrtoint ptr %shared30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %shared30, align 8
  %inc35 = add nuw i32 %i.0105, 1
  %35 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_bos, align 8
  %cmp = icmp ult i32 %inc35, %36
  br i1 %cmp, label %for.inc34.for.body_crit_edge, label %for.inc34.cleanup37_crit_edge

for.inc34.cleanup37_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup37

for.inc34.for.body_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup37:                                        ; preds = %for.inc34.cleanup37_crit_edge, %land.lhs.true.i79.cleanup37_crit_edge, %if.end.i77.cleanup37_crit_edge, %land.lhs.true.i.cleanup37_crit_edge, %if.end.i.cleanup37_crit_edge, %if.end7.cleanup37_crit_edge, %if.then.cleanup37_crit_edge
  %retval.2 = phi ptr [ %1, %if.then.cleanup37_crit_edge ], [ null, %if.end7.cleanup37_crit_edge ], [ %20, %if.end.i77.cleanup37_crit_edge ], [ %20, %land.lhs.true.i79.cleanup37_crit_edge ], [ null, %for.inc34.cleanup37_crit_edge ], [ %6, %if.end.i.cleanup37_crit_edge ], [ %6, %land.lhs.true.i.cleanup37_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @etnaviv_sched_run_job(ptr noundef %sched_job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 3
  %0 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fence, align 8
  %error = getelementptr inbounds %struct.drm_sched_fence, ptr %1, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %do.body, !prof !31

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call ptr @etnaviv_gpu_submit(ptr noundef %sched_job) #5
  br label %if.end14

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etnaviv_sched_run_job.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etnaviv_sched_run_job, %if.then13)) #5
          to label %if.end14 [label %if.then13], !srcloc !35

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %gpu = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %sched_job, i32 0, i32 3
  %4 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpu, align 8
  %dev = getelementptr inbounds %struct.etnaviv_gpu, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etnaviv_sched_run_job.__UNIQUE_ID_ddebug323, ptr noundef %7, ptr noundef nonnull @.str.3) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %do.body, %if.then
  %fence.0 = phi ptr [ %call4, %if.then ], [ null, %if.then13 ], [ null, %do.body ]
  ret ptr %fence.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_sched_timedout_job(ptr noundef %sched_job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu1 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %sched_job, i32 0, i32 3
  %0 = ptrtoint ptr %gpu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu1, align 8
  %sched = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 7
  tail call void @drm_sched_stop(ptr noundef %sched, ptr noundef %sched_job) #5
  %out_fence = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %sched_job, i32 0, i32 6
  %2 = ptrtoint ptr %out_fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_fence, align 4
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %9(ptr noundef %3) #5
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %3) #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 28
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 1636
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !36
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  %hangcheck_dma_addr = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %hangcheck_dma_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hangcheck_dma_addr, align 4
  %sub = sub i32 %13, %15
  %completed_fence = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %completed_fence to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %completed_fence, align 4
  %hangcheck_fence = getelementptr inbounds %struct.etnaviv_gpu, ptr %1, i32 0, i32 27
  %18 = ptrtoint ptr %hangcheck_fence to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hangcheck_fence, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not = icmp ne i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4 = icmp slt i32 %sub, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp6 = icmp sgt i32 %sub, 16
  %or.cond38 = select i1 %or.cond, i1 true, i1 %cmp6
  br i1 %or.cond38, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %hangcheck_dma_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %13, ptr %hangcheck_dma_addr, align 4
  %21 = ptrtoint ptr %hangcheck_fence to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %hangcheck_fence, align 8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %tobool.not = icmp eq ptr %sched_job, null
  br i1 %tobool.not, label %if.end11.if.end13_crit_edge, label %if.then12

if.end11.if.end13_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_sched_increase_karma(ptr noundef nonnull %sched_job) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end11.if.end13_crit_edge
  tail call void @etnaviv_core_dump(ptr noundef %sched_job) #5
  tail call void @etnaviv_gpu_recover_hang(ptr noundef %1) #5
  tail call void @drm_sched_resubmit_jobs(ptr noundef %sched) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then7, %if.then5.i, %entry.cleanup_crit_edge
  tail call void @drm_sched_start(ptr noundef %sched, i1 noundef zeroext true) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etnaviv_sched_free_job(ptr noundef %sched_job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_sched_job_cleanup(ptr noundef %sched_job) #5
  tail call void @etnaviv_submit_put(ptr noundef %sched_job) #5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dma_fence_is_signaled(ptr noundef %fence) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %signaled = getelementptr inbounds %struct.dma_fence_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %signaled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signaled, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %land.lhs.true

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call zeroext i1 %5(ptr noundef %fence) #5
  br i1 %call4, label %if.then5, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @dma_fence_signal(ptr noundef %fence) #5
  br label %return

return:                                           ; preds = %if.then5, %land.lhs.true.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.then5 ], [ true, %entry.return_crit_edge ], [ false, %land.lhs.true.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_fence_put(ptr noundef %fence) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #5, !srcloc !33
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !31

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #5
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @dma_fence_release(ptr noundef %refcount) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gpu_submit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_stop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_increase_karma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_core_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_gpu_recover_hang(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_resubmit_jobs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_start(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_submit_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !10, !12, !14, !16, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__param_job_hang_limit, !1, !"__param_job_hang_limit", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_sched.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_job_hang_limittype321, !1, !"__UNIQUE_ID_job_hang_limittype321", i1 false, i1 false}
!3 = !{ptr @__param_hw_job_limit, !4, !"__param_hw_job_limit", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_sched.c", i32 18, i32 1}
!5 = !{ptr @__UNIQUE_ID_hw_job_limittype322, !4, !"__UNIQUE_ID_hw_job_limittype322", i1 false, i1 false}
!6 = !{ptr @__param_str_job_hang_limit, !1, !"__param_str_job_hang_limit", i1 false, i1 false}
!7 = !{ptr @etnaviv_job_hang_limit, !8, !"etnaviv_job_hang_limit", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_sched.c", i32 15, i32 12}
!9 = !{ptr @__param_str_hw_job_limit, !4, !"__param_str_hw_job_limit", i1 false, i1 false}
!10 = !{ptr @etnaviv_hw_jobs_limit, !11, !"etnaviv_hw_jobs_limit", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_sched.c", i32 17, i32 12}
!12 = !{ptr @etnaviv_sched_ops, !13, !"etnaviv_sched_ops", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_sched.c", i32 144, i32 43}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_sched.c", i32 80, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @etnaviv_sched_run_job.__UNIQUE_ID_ddebug323, !15, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2148249622, i64 2148249654, i64 2148249683, i64 2148249717, i64 2148249748, i64 2148249771}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2148337623}
!33 = !{i64 2148252087, i64 2148252119, i64 2148252148, i64 2148252182, i64 2148252213, i64 2148252236}
!34 = !{i64 2149267028}
!35 = !{i64 2148717423, i64 2148717428, i64 2148717441, i64 2148717485, i64 2148717519, i64 2148717540}
!36 = !{i64 2539474}
!37 = !{i64 2156641034}
