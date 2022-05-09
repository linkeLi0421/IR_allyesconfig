; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/scheduler/sched_fence.c_pt.bc'
source_filename = "../drivers/gpu/drm/scheduler/sched_fence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+to_drm_sched_fence\22, \22a\22\09"
module asm "\09.weak\09__crc_to_drm_sched_fence\09\09\09\09"
module asm "\09.long\09__crc_to_drm_sched_fence\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_to_drm_sched_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22to_drm_sched_fence\22\09\09\09\09\09"
module asm "__kstrtabns_to_drm_sched_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i32, %struct.kref, i32 }
%union.anon.2 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.list_head = type { ptr, ptr }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }

@sched_fence_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@drm_sched_fence_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/scheduler/sched_fence.c\00", [56 x i8] zeroinitializer }, align 32
@drm_sched_fence_ops_scheduled = internal constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @drm_sched_fence_get_driver_name, ptr @drm_sched_fence_get_timeline_name, ptr null, ptr null, ptr null, ptr @drm_sched_fence_release_scheduled, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@drm_sched_fence_ops_finished = internal constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @drm_sched_fence_get_driver_name, ptr @drm_sched_fence_get_timeline_name, ptr null, ptr null, ptr null, ptr @drm_sched_fence_release_finished, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_to_drm_sched_fence = external dso_local constant [0 x i8], align 1
@__kstrtabns_to_drm_sched_fence = external dso_local constant [0 x i8], align 1
@__ksymtab_to_drm_sched_fence = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @to_drm_sched_fence to i32), ptr @__kstrtab_to_drm_sched_fence, ptr @__kstrtabns_to_drm_sched_fence }, section "___ksymtab+to_drm_sched_fence", align 4
@drm_sched_fence_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&fence->lock\00", [19 x i8] zeroinitializer }, align 32
@__initcall__kmod_gpu_sched__217_178_drm_sched_fence_slab_init6 = internal global ptr @drm_sched_fence_slab_init, section ".initcall6.init", align 4
@__exitcall_drm_sched_fence_slab_fini = internal global ptr @drm_sched_fence_slab_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description218 = internal constant [40 x i8] c"gpu_sched.description=DRM GPU scheduler\00", section ".modinfo", align 1
@__UNIQUE_ID_file219 = internal constant [51 x i8] c"gpu_sched.file=drivers/gpu/drm/scheduler/gpu-sched\00", section ".modinfo", align 1
@__UNIQUE_ID_license220 = internal constant [44 x i8] c"gpu_sched.license=GPL and additional rights\00", section ".modinfo", align 1
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"drm_sched\00", [22 x i8] zeroinitializer }, align 32
@drm_sched_fence_free_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drm_sched_fence\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"sched_fence_slab\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 32, i32 27 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 92, i32 7 }
@___asan_gen_.10 = private unnamed_addr constant [30 x i8] c"drm_sched_fence_ops_scheduled\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 126, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [29 x i8] c"drm_sched_fence_ops_finished\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 132, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 160, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 63, i32 9 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [43 x i8] c"../drivers/gpu/drm/scheduler/sched_fence.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 37, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_description218, ptr @__UNIQUE_ID_file219, ptr @__UNIQUE_ID_license220, ptr @__exitcall_drm_sched_fence_slab_fini, ptr @__initcall__kmod_gpu_sched__217_178_drm_sched_fence_slab_init6, ptr @__ksymtab_to_drm_sched_fence, ptr @drm_sched_fence_slab_fini, ptr @sched_fence_slab, ptr @.str, ptr @drm_sched_fence_ops_scheduled, ptr @drm_sched_fence_ops_finished, ptr @drm_sched_fence_alloc.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_fence_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_sched_fence_ops_scheduled to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_sched_fence_ops_finished to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_sched_fence_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @drm_sched_fence_slab_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rcu_barrier() #7
  %0 = load ptr, ptr @sched_fence_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_fence_scheduled(ptr noundef %fence) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dma_fence_signal(ptr noundef %fence) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_fence_finished(ptr noundef %fence) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %fence, i32 0, i32 1
  %call = tail call i32 @dma_fence_signal(ptr noundef %finished) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_fence_free(ptr noundef %fence) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sched = getelementptr inbounds %struct.drm_sched_fence, ptr %fence, i32 0, i32 3
  %0 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then37.critedge, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b42 = load i1, ptr @drm_sched_fence_free.__already_done, align 1
  br i1 %.b42, label %land.rhs.if.end38_crit_edge, label %if.then, !prof !38

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @drm_sched_fence_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 92, i32 noundef 9, ptr noundef null) #7
  br label %if.end38

if.then37.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load ptr, ptr @sched_fence_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %fence) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then37.critedge, %if.then, %land.rhs.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @to_drm_sched_fence(ptr noundef readonly %f) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %cmp = icmp eq ptr %1, @drm_sched_fence_ops_scheduled
  %cmp2 = icmp eq ptr %1, @drm_sched_fence_ops_finished
  %add.ptr6 = getelementptr i8, ptr %f, i32 -48
  %spec.select = select i1 %cmp2, ptr %add.ptr6, ptr null
  %retval.0 = select i1 %cmp, ptr %f, ptr %spec.select
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_sched_fence_alloc(ptr nocapture noundef readnone %entity, ptr noundef %owner) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sched_fence_slab, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %owner1 = getelementptr inbounds %struct.drm_sched_fence, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %owner1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %owner, ptr %owner1, align 4
  %lock = getelementptr inbounds %struct.drm_sched_fence, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @drm_sched_fence_alloc.__key, i16 noundef signext 3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_sched_fence_init(ptr noundef %fence, ptr noundef %entity) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rq = getelementptr inbounds %struct.drm_sched_entity, ptr %entity, i32 0, i32 1
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %sched = getelementptr inbounds %struct.drm_sched_rq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched, align 4
  %sched1 = getelementptr inbounds %struct.drm_sched_fence, ptr %fence, i32 0, i32 3
  %4 = ptrtoint ptr %sched1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %sched1, align 4
  %fence_seq = getelementptr inbounds %struct.drm_sched_entity, ptr %entity, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fence_seq, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %fence_seq, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fence_seq, ptr %fence_seq, i32 1, ptr elementtype(i32) %fence_seq) #7, !srcloc !40
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  %lock = getelementptr inbounds %struct.drm_sched_fence, ptr %fence, i32 0, i32 4
  %fence_context = getelementptr inbounds %struct.drm_sched_entity, ptr %entity, i32 0, i32 8
  %6 = ptrtoint ptr %fence_context to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fence_context, align 8
  %conv = zext i32 %asmresult.i.i.i.i to i64
  tail call void @dma_fence_init(ptr noundef %fence, ptr noundef nonnull @drm_sched_fence_ops_scheduled, ptr noundef %lock, i64 noundef %7, i64 noundef %conv) #7
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %fence, i32 0, i32 1
  %8 = ptrtoint ptr %fence_context to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fence_context, align 8
  %add = add i64 %9, 1
  tail call void @dma_fence_init(ptr noundef %finished, ptr noundef nonnull @drm_sched_fence_ops_finished, ptr noundef %lock, i64 noundef %add, i64 noundef %conv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_sched_fence_slab_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 152, i32 noundef 0, i32 noundef 8192, ptr noundef null) #7
  store ptr %call, ptr @sched_fence_slab, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @drm_sched_fence_get_driver_name(ptr nocapture noundef readnone %fence) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @drm_sched_fence_get_timeline_name(ptr nocapture noundef readonly %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %1, @drm_sched_fence_ops_scheduled
  %cmp2.i = icmp eq ptr %1, @drm_sched_fence_ops_finished
  %add.ptr6.i = getelementptr i8, ptr %f, i32 -48
  %spec.select.i = select i1 %cmp2.i, ptr %add.ptr6.i, ptr null
  %retval.0.i = select i1 %cmp.i, ptr %f, ptr %spec.select.i
  %sched = getelementptr inbounds %struct.drm_sched_fence, ptr %retval.0.i, i32 0, i32 3
  %2 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched, align 4
  %name = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_sched_fence_release_scheduled(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %1, @drm_sched_fence_ops_scheduled
  %cmp2.i = icmp eq ptr %1, @drm_sched_fence_ops_finished
  %add.ptr6.i = getelementptr i8, ptr %f, i32 -48
  %spec.select.i = select i1 %cmp2.i, ptr %add.ptr6.i, ptr null
  %retval.0.i = select i1 %cmp.i, ptr %f, ptr %spec.select.i
  %parent = getelementptr inbounds %struct.drm_sched_fence, ptr %retval.0.i, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.dma_fence_put.exit_crit_edge, label %if.then.i

entry.dma_fence_put.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !38

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %entry.dma_fence_put.exit_crit_edge
  %5 = getelementptr inbounds %struct.drm_sched_fence, ptr %retval.0.i, i32 0, i32 1, i32 2
  tail call void @call_rcu(ptr noundef %5, ptr noundef nonnull @drm_sched_fence_free_rcu) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_sched_fence_free_rcu(ptr noundef %rcu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -8
  %ops.i = getelementptr i8, ptr %rcu, i32 -4
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %1, @drm_sched_fence_ops_scheduled
  %cmp2.i = icmp eq ptr %1, @drm_sched_fence_ops_finished
  %add.ptr6.i = getelementptr i8, ptr %rcu, i32 -56
  %spec.select.i = select i1 %cmp2.i, ptr %add.ptr6.i, ptr null
  %retval.0.i = select i1 %cmp.i, ptr %add.ptr, ptr %spec.select.i
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %land.rhs, label %if.then39.critedge

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @drm_sched_fence_free_rcu.__already_done, align 1
  br i1 %.b44, label %land.rhs.if.end40_crit_edge, label %if.then, !prof !38

land.rhs.if.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @drm_sched_fence_free_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #7
  br label %if.end40

if.then39.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load ptr, ptr @sched_fence_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef nonnull %retval.0.i) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then39.critedge, %if.then, %land.rhs.if.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_sched_fence_release_finished(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %1, @drm_sched_fence_ops_scheduled
  %cmp2.i = icmp eq ptr %1, @drm_sched_fence_ops_finished
  %add.ptr6.i = getelementptr i8, ptr %f, i32 -48
  %spec.select.i = select i1 %cmp2.i, ptr %add.ptr6.i, ptr null
  %retval.0.i = select i1 %cmp.i, ptr %f, ptr %spec.select.i
  %tobool.not.i = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not.i, label %entry.dma_fence_put.exit_crit_edge, label %if.then.i

entry.dma_fence_put.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %retval.0.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !38

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %entry.dma_fence_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/scheduler/sched_fence.c", i32 92, i32 7}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_to_drm_sched_fence, !4, !"__ksymtab_to_drm_sched_fence", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/scheduler/sched_fence.c", i32 148, i32 1}
!5 = !{ptr @drm_sched_fence_alloc.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/scheduler/sched_fence.c", i32 160, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_gpu_sched__217_178_drm_sched_fence_slab_init6, !9, !"__initcall__kmod_gpu_sched__217_178_drm_sched_fence_slab_init6", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/scheduler/sched_fence.c", i32 178, i32 1}
!10 = !{ptr @__exitcall_drm_sched_fence_slab_fini, !11, !"__exitcall_drm_sched_fence_slab_fini", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/scheduler/sched_fence.c", i32 179, i32 1}
!12 = !{ptr @__UNIQUE_ID_description218, !13, !"__UNIQUE_ID_description218", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/scheduler/sched_fence.c", i32 181, i32 1}
!14 = !{ptr @__UNIQUE_ID_file219, !15, !"__UNIQUE_ID_file219", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/scheduler/sched_fence.c", i32 182, i32 1}
!16 = !{ptr @__UNIQUE_ID_license220, !15, !"__UNIQUE_ID_license220", i1 false, i1 false}
!17 = !{ptr @sched_fence_slab, !18, !"sched_fence_slab", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/scheduler/sched_fence.c", i32 32, i32 27}
!19 = !{ptr @drm_sched_fence_ops_scheduled, !20, !"drm_sched_fence_ops_scheduled", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/scheduler/sched_fence.c", i32 126, i32 35}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/scheduler/sched_fence.c", i32 63, i32 9}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/scheduler/sched_fence.c", i32 77, i32 7}
!25 = !{ptr @drm_sched_fence_ops_finished, !26, !"drm_sched_fence_ops_finished", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/scheduler/sched_fence.c", i32 132, i32 35}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/scheduler/sched_fence.c", i32 37, i32 3}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2148526554}
!40 = !{i64 2148441863, i64 2148441895, i64 2148441924, i64 2148441958, i64 2148441989, i64 2148442012}
!41 = !{i64 2148526783}
!42 = !{i64 2148530674}
!43 = !{i64 2148445138, i64 2148445170, i64 2148445199, i64 2148445233, i64 2148445264, i64 2148445287}
!44 = !{i64 2149566160}
