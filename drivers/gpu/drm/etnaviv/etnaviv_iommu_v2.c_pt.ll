; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/etnaviv/etnaviv_iommu_v2.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_iommu_v2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.etnaviv_iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.etnaviv_iommuv2_context = type { %struct.etnaviv_iommu_context, i16, ptr, i32, [1024 x ptr], [1024 x i32] }
%struct.etnaviv_iommu_context = type { %struct.kref, ptr, %struct.mutex, %struct.list_head, %struct.drm_mm, i32, %struct.etnaviv_vram_mapping }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.etnaviv_iommu_global = type { ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %union.anon.90 }
%union.anon.90 = type { %struct.anon.92 }
%struct.anon.92 = type { ptr, i32, %struct.spinlock, [16 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@etnaviv_iommuv2_ops = dso_local constant { %struct.etnaviv_iommu_ops, [36 x i8] } { %struct.etnaviv_iommu_ops { ptr null, ptr @etnaviv_iommuv2_free, ptr @etnaviv_iommuv2_map, ptr @etnaviv_iommuv2_unmap, ptr @etnaviv_iommuv2_dump_size, ptr @etnaviv_iommuv2_dump, ptr @etnaviv_iommuv2_restore }, [36 x i8] zeroinitializer }, align 32
@etnaviv_iommuv2_context_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&context->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/etnaviv/etnaviv_iommu_v2.c\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unhandled GPU security mode\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.3 = private unnamed_addr constant [20 x i8] c"etnaviv_iommuv2_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 260, i32 32 }
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 303, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [46 x i8] c"../drivers/gpu/drm/etnaviv/etnaviv_iommu_v2.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 255, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @etnaviv_iommuv2_ops, ptr @etnaviv_iommuv2_context_alloc.__key, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_iommuv2_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_iommuv2_context_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @etnaviv_iommuv2_get_mtlb_addr(ptr nocapture noundef readonly %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtlb_dma = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %mtlb_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtlb_dma, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @etnaviv_iommuv2_get_pta_id(ptr nocapture noundef readonly %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 8
  ret i16 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etnaviv_iommuv2_free(ptr noundef %context) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mm = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 4
  tail call void @drm_mm_takedown(ptr noundef %mm) #9
  %global = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 4, i32 %i.021
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %global, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx3 = getelementptr %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 5, i32 %i.021
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 4) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %global, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %mtlb_cpu = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 2
  %12 = ptrtoint ptr %mtlb_cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mtlb_cpu, align 4
  %mtlb_dma = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 3
  %14 = ptrtoint ptr %mtlb_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtlb_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef 4096, ptr noundef %13, i32 noundef %15, i32 noundef 4) #9
  %id = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 1
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %id, align 8
  %conv = zext i16 %17 to i32
  %18 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %global, align 4
  %pta_alloc = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %19, i32 0, i32 8, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %pta_alloc) #9
  tail call void @vfree(ptr noundef %context) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_iommuv2_map(ptr noundef %context, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp.not = icmp eq i32 %size, 4096
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %prot, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %spec.select.v = select i1 %tobool.not, i32 1, i32 5
  %spec.select = or i32 %spec.select.v, %paddr
  %shr = lshr i32 %iova, 22
  %arrayidx.i = getelementptr %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 4, i32 %shr
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.i:                                         ; preds = %if.end
  %global.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %global.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %global.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx1.i = getelementptr %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 5, i32 %shr
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef %arrayidx1.i, i32 noundef 3264, i32 noundef 4) #9
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.end.i.cleanup_crit_edge, label %if.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i28.i = tail call ptr @__memset32(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 4096) #9
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1.i, align 4
  %or.i = or i32 %8, 1
  %mtlb_cpu.i = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 2
  %9 = ptrtoint ptr %mtlb_cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mtlb_cpu.i, align 4
  %arrayidx14.i = getelementptr i32, ptr %10, i32 %shr
  %11 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %arrayidx14.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end8.i, %if.end.if.end12_crit_edge
  %and7 = lshr i32 %iova, 12
  %shr8 = and i32 %and7, 1023
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx13 = getelementptr i32, ptr %13, i32 %shr8
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %arrayidx13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @etnaviv_iommuv2_unmap(ptr nocapture noundef readonly %context, i32 noundef %iova, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp.not = icmp eq i32 %size, 4096
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %iova, 22
  %and1 = lshr i32 %iova, 12
  %shr2 = and i32 %and1, 1023
  %arrayidx = getelementptr %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 4, i32 %shr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr i32, ptr %1, i32 %shr2
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %arrayidx3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4096, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_iommuv2_dump_size(ptr nocapture noundef readonly %context) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtlb_cpu = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %mtlb_cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtlb_cpu, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %dump_size.04 = phi i32 [ 4096, %entry ], [ %spec.select, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %1, i32 %i.05
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add = add i32 %dump_size.04, 4096
  %spec.select = select i1 %tobool.not, i32 %dump_size.04, i32 %add
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 %spec.select
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etnaviv_iommuv2_dump(ptr nocapture noundef readonly %context, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtlb_cpu = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %mtlb_cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtlb_cpu, align 4
  %2 = call ptr @memcpy(ptr %buf, ptr %1, i32 4096)
  %add.ptr = getelementptr i8, ptr %buf, i32 4096
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %buf.addr.012 = phi ptr [ %add.ptr, %entry ], [ %buf.addr.1, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %mtlb_cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mtlb_cpu, align 4
  %arrayidx = getelementptr i32, ptr %4, i32 %i.013
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2 = getelementptr %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 4, i32 %i.013
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx2, align 4
  %9 = call ptr @memcpy(ptr %buf.addr.012, ptr %8, i32 4096)
  %add.ptr3 = getelementptr i8, ptr %buf.addr.012, i32 4096
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %buf.addr.1 = phi ptr [ %add.ptr3, %if.then ], [ %buf.addr.012, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etnaviv_iommuv2_restore(ptr noundef %gpu, ptr noundef %context) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_mode = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 5
  %0 = ptrtoint ptr %sec_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sec_mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %mmio.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %3 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 396
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !18
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %mmu_context.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 30
  %7 = ptrtoint ptr %mmu_context.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmu_context.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %8) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %context, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %context, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %context, ptr %context, i32 1, ptr elementtype(i32) %context) #9, !srcloc !19
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end5.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !20

if.end5.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end5.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.etnaviv_iommu_context_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !21

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.etnaviv_iommu_context_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %etnaviv_iommu_context_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end5.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end5.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %context, i32 noundef %.sink.i.i.i.i.i.i) #9
  br label %etnaviv_iommu_context_get.exit.i

etnaviv_iommu_context_get.exit.i:                 ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.etnaviv_iommu_context_get.exit.i_crit_edge
  %11 = ptrtoint ptr %mmu_context.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %context, ptr %mmu_context.i, align 4
  %mtlb_dma.i = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 3
  %12 = ptrtoint ptr %mtlb_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtlb_dma.i, align 8
  %global.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  %14 = ptrtoint ptr %global.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %global.i, align 4
  %bad_page_dma.i = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %bad_page_dma.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bad_page_dma.i, align 4
  %call8.i = tail call zeroext i16 @etnaviv_buffer_config_mmuv2(ptr noundef %gpu, i32 noundef %13, i32 noundef %17) #9
  %buffer.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10
  %call9.i = tail call i32 @etnaviv_cmdbuf_get_pa(ptr noundef %buffer.i) #9
  tail call void @etnaviv_gpu_start_fe(ptr noundef %gpu, i32 noundef %call9.i, i16 noundef zeroext %call8.i) #9
  %call10.i = tail call i32 @etnaviv_gpu_wait_idle(ptr noundef %gpu, i32 noundef 100) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %19, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 16777216) #9, !srcloc !23
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %mmio.i.i20 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %20 = ptrtoint ptr %mmio.i.i20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i20, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %21, i32 904
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21) #9, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !18
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i22 = icmp eq i32 %23, 0
  br i1 %tobool.not.i22, label %if.end.i25, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i25:                                       ; preds = %sw.bb1
  %mmu_context.i23 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 30
  %24 = ptrtoint ptr %mmu_context.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmu_context.i23, align 4
  %tobool2.not.i24 = icmp eq ptr %25, null
  br i1 %tobool2.not.i24, label %if.end.i25.if.end5.i30_crit_edge, label %if.then3.i26

if.end.i25.if.end5.i30_crit_edge:                 ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i30

if.then3.i26:                                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %25) #9
  br label %if.end5.i30

if.end5.i30:                                      ; preds = %if.then3.i26, %if.end.i25.if.end5.i30_crit_edge
  %call.i.i.i.i.i.i.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %context, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %context, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %context, ptr %context, i32 1, ptr elementtype(i32) %context) #9, !srcloc !19
  %asmresult.i.i.i.i.i.i.i.i28 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i28)
  %tobool1.not.i.i.i.i.i.i29 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i28, 0
  br i1 %tobool1.not.i.i.i.i.i.i29, label %if.end5.i30.if.end15.sink.split.i.i.i.i.i.i35_crit_edge, label %if.else.i.i.i.i.i.i33, !prof !20

if.end5.i30.if.end15.sink.split.i.i.i.i.i.i35_crit_edge: ; preds = %if.end5.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i35

if.else.i.i.i.i.i.i33:                            ; preds = %if.end5.i30
  %add.i.i.i.i.i.i31 = add i32 %asmresult.i.i.i.i.i.i.i.i28, 1
  %27 = or i32 %add.i.i.i.i.i.i31, %asmresult.i.i.i.i.i.i.i.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i.i.i32 = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i.i.i32, label %if.else.i.i.i.i.i.i33.etnaviv_iommu_context_get.exit.i40_crit_edge, label %if.else.i.i.i.i.i.i33.if.end15.sink.split.i.i.i.i.i.i35_crit_edge, !prof !21

if.else.i.i.i.i.i.i33.if.end15.sink.split.i.i.i.i.i.i35_crit_edge: ; preds = %if.else.i.i.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i35

if.else.i.i.i.i.i.i33.etnaviv_iommu_context_get.exit.i40_crit_edge: ; preds = %if.else.i.i.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %etnaviv_iommu_context_get.exit.i40

if.end15.sink.split.i.i.i.i.i.i35:                ; preds = %if.else.i.i.i.i.i.i33.if.end15.sink.split.i.i.i.i.i.i35_crit_edge, %if.end5.i30.if.end15.sink.split.i.i.i.i.i.i35_crit_edge
  %.sink.i.i.i.i.i.i34 = phi i32 [ 2, %if.end5.i30.if.end15.sink.split.i.i.i.i.i.i35_crit_edge ], [ 1, %if.else.i.i.i.i.i.i33.if.end15.sink.split.i.i.i.i.i.i35_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %context, i32 noundef %.sink.i.i.i.i.i.i34) #9
  br label %etnaviv_iommu_context_get.exit.i40

etnaviv_iommu_context_get.exit.i40:               ; preds = %if.end15.sink.split.i.i.i.i.i.i35, %if.else.i.i.i.i.i.i33.etnaviv_iommu_context_get.exit.i40_crit_edge
  %28 = ptrtoint ptr %mmu_context.i23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %context, ptr %mmu_context.i23, align 4
  %global.i36 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  %29 = ptrtoint ptr %global.i36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %global.i36, align 4
  %pta_dma.i = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %30, i32 0, i32 8, i32 0, i32 1
  %31 = ptrtoint ptr %pta_dma.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pta_dma.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  %34 = ptrtoint ptr %mmio.i.i20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i.i20, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %35, i32 908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %33) #9, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %mmio.i.i20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i.i20, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %37, i32 912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 0) #9, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %mmio.i.i20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i.i20, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %39, i32 916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 16777216) #9, !srcloc !23
  %40 = ptrtoint ptr %global.i36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %global.i36, align 4
  %bad_page_dma.i37 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %bad_page_dma.i37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bad_page_dma.i37, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  %45 = ptrtoint ptr %mmio.i.i20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i.i20, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %46, i32 920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 %44) #9, !srcloc !23
  %47 = ptrtoint ptr %global.i36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %global.i36, align 4
  %bad_page_dma15.i = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %bad_page_dma15.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bad_page_dma15.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #9
  %52 = ptrtoint ptr %mmio.i.i20 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i.i20, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %53, i32 924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 %51) #9, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %mmio.i.i20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i.i20, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %55, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 0) #9, !srcloc !23
  %mtlb_dma.i38 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 3
  %56 = ptrtoint ptr %mtlb_dma.i38 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mtlb_dma.i38, align 8
  %conv.i = zext i32 %57 to i64
  %58 = ptrtoint ptr %global.i36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %global.i36, align 4
  %60 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %59, i32 0, i32 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %id.i = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %context, i32 0, i32 1
  %63 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %id.i, align 8
  %idxprom.i = zext i16 %64 to i32
  %arrayidx.i = getelementptr i64, ptr %62, i32 %idxprom.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv.i, ptr %arrayidx.i, align 8
  %66 = load i16, ptr %id.i, align 8
  %call31.i = tail call zeroext i16 @etnaviv_buffer_config_pta(ptr noundef %gpu, i16 noundef zeroext %66) #9
  %buffer.i39 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10
  %call32.i = tail call i32 @etnaviv_cmdbuf_get_pa(ptr noundef %buffer.i39) #9
  tail call void @etnaviv_gpu_start_fe(ptr noundef %gpu, i32 noundef %call32.i, i16 noundef zeroext %call31.i) #9
  %call33.i = tail call i32 @etnaviv_gpu_wait_idle(ptr noundef %gpu, i32 noundef 100) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %67 = ptrtoint ptr %mmio.i.i20 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio.i.i20, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %68, i32 904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 16777216) #9, !srcloc !23
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 9, ptr noundef nonnull @.str.2) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %etnaviv_iommu_context_get.exit.i40, %sw.bb1.sw.epilog_crit_edge, %etnaviv_iommu_context_get.exit.i, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @etnaviv_iommuv2_context_alloc(ptr noundef %global) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vzalloc(i32 noundef 8632) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %global, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %0 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %global, i32 0, i32 8
  %pta_alloc = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %global, i32 0, i32 8, i32 0, i32 3
  %call1 = tail call i32 @_find_first_zero_bit_be(ptr noundef %pta_alloc, i32 noundef 512) #9
  %conv = trunc i32 %call1 to i16
  %id = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %id, align 8
  %conv3 = and i32 %call1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %conv3)
  %cmp = icmp ult i32 %conv3, 512
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  tail call void @_set_bit(i32 noundef %conv3, ptr noundef %pta_alloc) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %2 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %global, align 4
  %mtlb_dma = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %call, i32 0, i32 3
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef 4096, ptr noundef %mtlb_dma, i32 noundef 3264, i32 noundef 4) #9
  %mtlb_cpu = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %mtlb_cpu to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %mtlb_cpu, align 4
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %out_free_id, label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %out_free

if.end17:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %call.i55 = tail call ptr @__memset32(ptr noundef nonnull %call.i, i32 noundef 2, i32 noundef 4096) #9
  %5 = ptrtoint ptr %mtlb_dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtlb_dma, align 8
  %conv21 = zext i32 %6 to i64
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id, align 8
  %idxprom = zext i16 %10 to i32
  %arrayidx = getelementptr i64, ptr %8, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv21, ptr %arrayidx, align 8
  %global23 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %global23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %global, ptr %global23, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #9
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %call, align 4
  %lock24 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %call, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock24, ptr noundef nonnull @.str, ptr noundef nonnull @etnaviv_iommuv2_context_alloc.__key) #9
  %mappings = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %call, i32 0, i32 3
  %14 = ptrtoint ptr %mappings to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %mappings, ptr %mappings, align 4
  %prev.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %call, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mappings, ptr %prev.i, align 4
  %mm = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %call, i32 0, i32 4
  tail call void @drm_mm_init(ptr noundef %mm, i64 noundef 4096, i64 noundef 4294963200) #9
  br label %cleanup

out_free_id:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %id, align 8
  %conv26 = zext i16 %17 to i32
  tail call void @_clear_bit(i32 noundef %conv26, ptr noundef %pta_alloc) #9
  br label %out_free

out_free:                                         ; preds = %out_free_id, %if.else
  tail call void @vfree(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end17 ], [ null, %out_free ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_context_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @etnaviv_buffer_config_mmuv2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_gpu_start_fe(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_get_pa(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gpu_wait_idle(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @etnaviv_buffer_config_pta(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @etnaviv_iommuv2_ops, !1, !"etnaviv_iommuv2_ops", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_iommu_v2.c", i32 260, i32 32}
!2 = !{ptr @etnaviv_iommuv2_context_alloc.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_iommu_v2.c", i32 303, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_iommu_v2.c", i32 255, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 6223974}
!18 = !{i64 2156723574}
!19 = !{i64 2148170927, i64 2148170959, i64 2148170988, i64 2148171022, i64 2148171053, i64 2148171076}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2156722751}
!23 = !{i64 6223556}
