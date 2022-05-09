; ModuleID = '/llk/IR_all_yes/kernel/dma/ops_helpers.c_pt.bc'
source_filename = "../kernel/dma/ops_helpers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dma_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.63 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@arm_dma_ops = external dso_local local_unnamed_addr constant %struct.dma_map_ops, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_common_get_sgtable(ptr nocapture noundef readnone %dev, ptr noundef %sgt, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %cpu_addr) #4
  br i1 %call.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call ptr @vmalloc_to_page(ptr noundef %cpu_addr) #4
  br label %dma_common_vaddr_to_page.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %cpu_addr to i32
  %sub.i = add i32 %1, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %0, i32 %shr.i
  br label %dma_common_vaddr_to_page.exit

dma_common_vaddr_to_page.exit:                    ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ %add.ptr.i, %if.end.i ]
  %call1 = tail call i32 @sg_alloc_table(ptr noundef %sgt, i32 noundef 1, i32 noundef 3264) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %dma_common_vaddr_to_page.exit.if.end_crit_edge

dma_common_vaddr_to_page.exit.if.end_crit_edge:   ; preds = %dma_common_vaddr_to_page.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %dma_common_vaddr_to_page.exit
  %2 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt, align 4
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %retval.0.i to i32
  %and2.i.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !12

do.body5.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.body11.i.i:                                    ; preds = %if.then
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !12

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %and.i.i = and i32 %5, 3
  %or.i.i = or i32 %and.i.i, %6
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i.i, ptr %3, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %length.i, align 4
  br label %if.end

if.end:                                           ; preds = %sg_set_page.exit, %dma_common_vaddr_to_page.exit.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_common_mmap(ptr noundef %dev, ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_end.i, align 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %1, %3
  %shr.i = lshr i32 %sub.i, 12
  %add = add i32 %size, 4095
  %shr = lshr i32 %add, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %cpu_addr) #4
  br i1 %call.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call ptr @vmalloc_to_page(ptr noundef %cpu_addr) #4
  br label %dma_common_vaddr_to_page.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %cpu_addr to i32
  %sub.i31 = add i32 %7, 1073741824
  %shr.i32 = lshr i32 %sub.i31, 12
  %add.ptr.i = getelementptr %struct.page, ptr %6, i32 %shr.i32
  br label %dma_common_vaddr_to_page.exit

dma_common_vaddr_to_page.exit:                    ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ %add.ptr.i, %if.end.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #4
  %8 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -6, ptr %ret, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %9 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_page_prot, align 4
  %call2 = tail call i32 @dma_pgprot(ptr noundef %dev, i32 noundef %10, i32 noundef %attrs) #4
  %11 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call2, ptr %vm_page_prot, align 4
  %call4 = call i32 @dma_mmap_from_dev_coherent(ptr noundef %dev, ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %size, ptr noundef nonnull %ret) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %dma_common_vaddr_to_page.exit
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ret, align 4
  br label %cleanup

if.end:                                           ; preds = %dma_common_vaddr_to_page.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %5)
  %cmp.not = icmp ule i32 %shr, %5
  %sub = sub i32 %shr, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %sub)
  %cmp5 = icmp ugt i32 %shr.i, %sub
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vma, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.0.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %17 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %18 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_pgoff, align 4
  %add8 = add i32 %19, %17
  %add10 = add i32 %add8, %sub.ptr.div
  %shl = and i32 %sub.i, -4096
  %20 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_page_prot, align 4
  %call12 = call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %15, i32 noundef %add10, i32 noundef %shl, i32 noundef %21) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ %call12, %if.end7 ], [ -6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_pgprot(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_from_dev_coherent(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_common_alloc_pages(ptr noundef %dev, i32 noundef %size, ptr nocapture noundef writeonly %dma_handle, i32 noundef %dir, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i28 = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i28, ptr @arm_dma_ops, ptr %1
  %call1 = tail call ptr @dma_alloc_contiguous(ptr noundef %dev, i32 noundef %size, i32 noundef %gfp) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end:                                           ; preds = %entry
  %dec.i = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %2 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #4, !range !15
  %sub.i.i = sub nuw nsw i32 32, %2
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %call38.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp, i32 noundef %cond.i.i, i32 noundef 0, ptr noundef null) #4
  %tobool5.not = icmp eq ptr %call38.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %page.031 = phi ptr [ %call38.i.i, %if.end.if.end7_crit_edge ], [ %call1, %entry.if.end7_crit_edge ]
  %map_page = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 8
  %3 = ptrtoint ptr %map_page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map_page, align 4
  %call8 = tail call i32 %4(ptr noundef %dev, ptr noundef nonnull %page.031, i32 noundef 0, i32 noundef %size, i32 noundef %dir, i32 noundef 32) #4
  %5 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call8, ptr %dma_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp = icmp eq i32 %call8, -1
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dma_free_contiguous(ptr noundef %dev, ptr noundef nonnull %page.031, i32 noundef %size) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call ptr @page_address(ptr noundef nonnull %page.031) #4
  %6 = call ptr @memset(ptr %call11, i32 0, i32 %size)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then9 ], [ %page.031, %if.end10 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_contiguous(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_contiguous(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_common_free_pages(ptr noundef %dev, i32 noundef %size, ptr noundef %page, i32 noundef %dma_handle, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %unmap_page = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 9
  %2 = ptrtoint ptr %unmap_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unmap_page, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(ptr noundef %dev, i32 noundef %dma_handle, i32 noundef %size, i32 noundef %dir, i32 noundef 32) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @dma_free_contiguous(ptr noundef %dev, ptr noundef %page, i32 noundef %size) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{!"sp"}
!1 = distinct !{null, !2, !"<string literal>", i1 false, i1 false}
!2 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2153788503, i64 2153788995, i64 2153788540, i64 2153788596, i64 2153788630, i64 2153788654, i64 2153788695, i64 2153788716, i64 2153788744, i64 2153788778}
!14 = !{i64 2153790113, i64 2153790605, i64 2153790150, i64 2153790206, i64 2153790240, i64 2153790264, i64 2153790305, i64 2153790326, i64 2153790354, i64 2153790388}
!15 = !{i32 0, i32 33}
