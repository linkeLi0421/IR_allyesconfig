; ModuleID = '/llk/IR_all_yes/drivers/pci/mmap.c_pt.bc'
source_filename = "../drivers/pci/mmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@pci_phys_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"pci_phys_vm_ops\00", align 1
@___asan_gen_.2 = private constant [22 x i8] c"../drivers/pci/mmap.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 37, i32 42 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @pci_phys_vm_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_phys_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_mmap_page_range(ptr noundef %pdev, i32 noundef %bar, ptr noundef %vma, i32 noundef %mmap_state, i32 noundef %write_combine) local_unnamed_addr #0 align 64 {
entry:
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #3
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %start, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #3
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %end, align 4, !annotation !11
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %bar
  call void @pci_resource_to_user(ptr noundef %pdev, i32 noundef %bar, ptr noundef %arrayidx, ptr noundef nonnull %start, ptr noundef nonnull %end) #3
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start, align 4
  %shr = lshr i32 %3, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  %sub = sub i32 %5, %shr
  store i32 %sub, ptr %vm_pgoff, align 4
  %end.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %bar, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %entry.cond.end.i_crit_edge, label %cond.false.i

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 8
  %sub.i = sub i32 %7, %9
  %phi.bo.i = lshr i32 %sub.i, 12
  %phi.bo56.i = add nuw nsw i32 %phi.bo.i, 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %entry.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.bo56.i, %cond.false.i ], [ 1048576, %entry.cond.end.i_crit_edge ]
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end.i.i, align 4
  %12 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vma, align 4
  %sub.i.i = sub i32 %11, %13
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add8.i = add i32 %shr.i.i, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i, i32 %cond.i)
  %cmp9.i = icmp ugt i32 %add8.i, %cond.i
  br i1 %cmp9.i, label %cond.end.i.pci_mmap_resource_range.exit_crit_edge, label %if.end.i

cond.end.i.pci_mmap_resource_range.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %pci_mmap_resource_range.exit

if.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_combine)
  %tobool.not.i = icmp eq i32 %write_combine, 0
  %vm_page_prot12.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %14 = ptrtoint ptr %vm_page_prot12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_page_prot12.i, align 4
  %..i = select i1 %tobool.not.i, i32 -1661, i32 -61
  %.58.i = select i1 %tobool.not.i, i32 1616, i32 4
  %and13.i = and i32 %15, %..i
  %or14.i = or i32 %and13.i, %.58.i
  store i32 %or14.i, ptr %vm_page_prot12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mmap_state)
  %cmp17.i = icmp eq i32 %mmap_state, 0
  br i1 %cmp17.i, label %if.end.i.pci_mmap_resource_range.exit_crit_edge, label %if.else22.i

if.end.i.pci_mmap_resource_range.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %pci_mmap_resource_range.exit

if.else22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 8
  %shr26.i = lshr i32 %17, 12
  %add28.i = add i32 %shr26.i, %sub
  %18 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add28.i, ptr %vm_pgoff, align 4
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %19 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pci_phys_vm_ops, ptr %vm_ops.i, align 4
  %call.i.i = call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %13, i32 noundef %add28.i, i32 noundef %sub.i.i, i32 noundef %or14.i) #3
  br label %pci_mmap_resource_range.exit

pci_mmap_resource_range.exit:                     ; preds = %if.else22.i, %if.end.i.pci_mmap_resource_range.exit_crit_edge, %cond.end.i.pci_mmap_resource_range.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.else22.i ], [ -22, %cond.end.i.pci_mmap_resource_range.exit_crit_edge ], [ -22, %if.end.i.pci_mmap_resource_range.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #3
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_resource_to_user(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_mmap_resource_range(ptr nocapture noundef readonly %pdev, i32 noundef %bar, ptr noundef %vma, i32 noundef %mmap_state, i32 noundef %write_combine) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %bar
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %bar, i32 1
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  %sub = sub i32 %1, %3
  %phi.bo = lshr i32 %sub, 12
  %phi.bo56 = add nuw nsw i32 %phi.bo, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo56, %cond.false ], [ 1048576, %entry.cond.end_crit_edge ]
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %6 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_end.i, align 4
  %8 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %7, %9
  %shr.i = lshr i32 %sub.i, 12
  %add8 = add i32 %shr.i, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %cond)
  %cmp9 = icmp ugt i32 %add8, %cond
  br i1 %cmp9, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_combine)
  %tobool.not = icmp eq i32 %write_combine, 0
  %vm_page_prot12 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %10 = ptrtoint ptr %vm_page_prot12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_page_prot12, align 4
  %. = select i1 %tobool.not, i32 -1661, i32 -61
  %.58 = select i1 %tobool.not, i32 1616, i32 4
  %and13 = and i32 %11, %.
  %or14 = or i32 %and13, %.58
  store i32 %or14, ptr %vm_page_prot12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mmap_state)
  %cmp17 = icmp eq i32 %mmap_state, 0
  br i1 %cmp17, label %if.end.cleanup_crit_edge, label %if.else22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.else22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 8
  %shr26 = lshr i32 %13, 12
  %add28 = add i32 %shr26, %5
  %14 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add28, ptr %vm_pgoff, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %15 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @pci_phys_vm_ops, ptr %vm_ops, align 4
  %vm_page_prot33 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %16 = ptrtoint ptr %vm_page_prot33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_page_prot33, align 4
  %call.i = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %9, i32 noundef %add28, i32 noundef %sub.i, i32 noundef %17) #3
  br label %cleanup

cleanup:                                          ; preds = %if.else22, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.else22 ], [ -22, %cond.end.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @pci_phys_vm_ops, !1, !"pci_phys_vm_ops", i1 false, i1 false}
!1 = !{!"../drivers/pci/mmap.c", i32 37, i32 42}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
