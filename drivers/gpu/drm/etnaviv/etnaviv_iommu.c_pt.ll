; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/etnaviv/etnaviv_iommu.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_iommu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.etnaviv_iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.etnaviv_iommuv1_context = type { %struct.etnaviv_iommu_context, ptr, i32 }
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

@etnaviv_iommuv1_ops = dso_local constant { %struct.etnaviv_iommu_ops, [36 x i8] } { %struct.etnaviv_iommu_ops { ptr null, ptr @etnaviv_iommuv1_free, ptr @etnaviv_iommuv1_map, ptr @etnaviv_iommuv1_unmap, ptr @etnaviv_iommuv1_dump_size, ptr @etnaviv_iommuv1_dump, ptr @etnaviv_iommuv1_restore }, [36 x i8] zeroinitializer }, align 32
@etnaviv_iommuv1_context_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&context->lock\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"etnaviv_iommuv1_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 117, i32 32 }
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [43 x i8] c"../drivers/gpu/drm/etnaviv/etnaviv_iommu.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 163, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @etnaviv_iommuv1_ops, ptr @etnaviv_iommuv1_context_alloc.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_iommuv1_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_iommuv1_context_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etnaviv_iommuv1_free(ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mm = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 4
  tail call void @drm_mm_takedown(ptr noundef %mm) #8
  %global = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pgtable_cpu = getelementptr inbounds %struct.etnaviv_iommuv1_context, ptr %context, i32 0, i32 1
  %4 = ptrtoint ptr %pgtable_cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pgtable_cpu, align 8
  %pgtable_dma = getelementptr inbounds %struct.etnaviv_iommuv1_context, ptr %context, i32 0, i32 2
  %6 = ptrtoint ptr %pgtable_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pgtable_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 2097152, ptr noundef %5, i32 noundef %7, i32 noundef 4) #8
  %8 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %global, align 4
  %10 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %9, i32 0, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %10, align 4
  tail call void @kfree(ptr noundef %context) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @etnaviv_iommuv1_map(ptr nocapture noundef readonly %context, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp.not = icmp eq i32 %size, 4096
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = lshr i32 %iova, 12
  %div2 = xor i32 %sub, 524288
  %pgtable_cpu = getelementptr inbounds %struct.etnaviv_iommuv1_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %pgtable_cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgtable_cpu, align 8
  %arrayidx = getelementptr i32, ptr %1, i32 %div2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %paddr, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @etnaviv_iommuv1_unmap(ptr nocapture noundef readonly %context, i32 noundef %iova, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp.not = icmp eq i32 %size, 4096
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = lshr i32 %iova, 12
  %div3 = xor i32 %sub, 524288
  %global = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global, align 4
  %bad_page_dma = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bad_page_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bad_page_dma, align 4
  %pgtable_cpu = getelementptr inbounds %struct.etnaviv_iommuv1_context, ptr %context, i32 0, i32 1
  %4 = ptrtoint ptr %pgtable_cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pgtable_cpu, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 %div3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4096, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @etnaviv_iommuv1_dump_size(ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2097152
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @etnaviv_iommuv1_dump(ptr nocapture noundef readonly %context, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pgtable_cpu = getelementptr inbounds %struct.etnaviv_iommuv1_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %pgtable_cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgtable_cpu, align 8
  %2 = call ptr @memcpy(ptr %buf, ptr %1, i32 2097152)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etnaviv_iommuv1_restore(ptr nocapture noundef %gpu, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu_context = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 30
  %0 = ptrtoint ptr %mmu_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu_context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %context, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %context, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %context, ptr %context, i32 1, ptr elementtype(i32) %context) #8, !srcloc !14
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !15

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !16

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %etnaviv_iommu_context_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %context, i32 noundef %.sink.i.i.i.i.i) #8
  br label %etnaviv_iommu_context_get.exit

etnaviv_iommu_context_get.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge
  %4 = ptrtoint ptr %mmu_context to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %context, ptr %mmu_context, align 4
  %global = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  %5 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %global, align 4
  %memory_base = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %memory_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %memory_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #8, !srcloc !18
  %12 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %global, align 4
  %memory_base5 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %memory_base5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %memory_base5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %18, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %16) #8, !srcloc !18
  %19 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %global, align 4
  %memory_base7 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %memory_base7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %memory_base7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %25, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %23) #8, !srcloc !18
  %26 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %global, align 4
  %memory_base9 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %memory_base9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %memory_base9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %32, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %30) #8, !srcloc !18
  %33 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %global, align 4
  %memory_base11 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %memory_base11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %memory_base11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  %38 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %39, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %37) #8, !srcloc !18
  %pgtable_dma = getelementptr inbounds %struct.etnaviv_iommuv1_context, ptr %context, i32 0, i32 2
  %40 = ptrtoint ptr %pgtable_dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pgtable_dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  %43 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %44, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %42) #8, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %46, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %42) #8, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %48, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %42) #8, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %50, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %42) #8, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %52, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %42) #8, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @etnaviv_iommuv1_context_alloc(ptr noundef %global) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %global, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %global, i32 0, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #8, !srcloc !14
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !15

if.then.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !16

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %etnaviv_iommu_context_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef %.sink.i.i.i.i.i) #8
  br label %etnaviv_iommu_context_get.exit

etnaviv_iommu_context_get.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 432) #11
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %global, align 4
  %pgtable_dma = getelementptr inbounds %struct.etnaviv_iommuv1_context, ptr %call7.i.i, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %7, i32 noundef 2097152, ptr noundef %pgtable_dma, i32 noundef 3264, i32 noundef 4) #8
  %pgtable_cpu = getelementptr inbounds %struct.etnaviv_iommuv1_context, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %pgtable_cpu to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %pgtable_cpu, align 8
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %out_free, label %if.end12

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %bad_page_dma = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %global, i32 0, i32 6
  %9 = ptrtoint ptr %bad_page_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bad_page_dma, align 4
  %call.i46 = tail call ptr @__memset32(ptr noundef nonnull %call.i, i32 noundef %10, i32 noundef 2097152) #8
  %global15 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %global15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %global, ptr %global15, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %call7.i.i, align 8
  %lock16 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock16, ptr noundef nonnull @.str, ptr noundef nonnull @etnaviv_iommuv1_context_alloc.__key) #8
  %mappings = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %mappings to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %mappings, ptr %mappings, align 4
  %prev.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %call7.i.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mappings, ptr %prev.i, align 8
  %mm = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %call7.i.i, i32 0, i32 4
  tail call void @drm_mm_init(ptr noundef %mm, i64 noundef 2147483648, i64 noundef 2147483648) #8
  %15 = ptrtoint ptr %global15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %global15, align 4
  %17 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %16, i32 0, i32 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %17, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

out_free:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end12, %if.then5, %etnaviv_iommu_context_get.exit
  %retval.0 = phi ptr [ %2, %etnaviv_iommu_context_get.exit ], [ %call7.i.i, %if.end12 ], [ null, %out_free ], [ null, %if.then5 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_context_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @etnaviv_iommuv1_ops, !1, !"etnaviv_iommuv1_ops", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_iommu.c", i32 117, i32 32}
!2 = !{ptr @etnaviv_iommuv1_context_alloc.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_iommu.c", i32 163, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 2148166898, i64 2148166930, i64 2148166959, i64 2148166993, i64 2148167024, i64 2148167047}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2156718722}
!18 = !{i64 6219527}
