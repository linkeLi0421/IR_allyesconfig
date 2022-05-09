; ModuleID = '/llk/IR_all_yes/drivers/pci/irq.c_pt.bc'
source_filename = "../drivers/pci/irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pci_request_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_request_irq\09\09\09\09"
module asm "\09.long\09__crc_pci_request_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_request_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_request_irq\22\09\09\09\09\09"
module asm "__kstrtabns_pci_request_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_free_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_free_irq\09\09\09\09"
module asm "\09.long\09__crc_pci_free_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_free_irq\22\09\09\09\09\09"
module asm "__kstrtabns_pci_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.__va_list = type { ptr }

@__kstrtab_pci_request_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_request_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_request_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_request_irq to i32), ptr @__kstrtab_pci_request_irq, ptr @__kstrtabns_pci_request_irq }, section "___ksymtab+pci_request_irq", align 4
@__kstrtab_pci_free_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_free_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_free_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_free_irq to i32), ptr @__kstrtab_pci_free_irq, ptr @__kstrtabns_pci_free_irq }, section "___ksymtab+pci_free_irq", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_pci_free_irq, ptr @__ksymtab_pci_request_irq], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_request_irq(ptr noundef %dev, i32 noundef %nr, ptr noundef %handler, ptr noundef %thread_fn, ptr noundef %dev_id, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #4
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !13
  %tobool.not = icmp eq ptr %handler, null
  %spec.select = select i1 %tobool.not, i32 8320, i32 128
  call void @llvm.va_start(ptr nonnull %ap)
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call noalias ptr @kvasprintf(i32 noundef 3264, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #4
  call void @llvm.va_end(ptr nonnull %ap)
  %call1 = call i32 @pci_irq_vector(ptr noundef %dev, i32 noundef %nr) #4
  %call2 = call i32 @request_threaded_irq(i32 noundef %call1, ptr noundef %handler, ptr noundef %thread_fn, i32 noundef %spec.select, ptr noundef %call, ptr noundef %dev_id) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %entry.if.end5_crit_edge, label %if.then4

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef %call) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %entry.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #4
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kvasprintf(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_free_irq(ptr noundef %dev, i32 noundef %nr, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_irq_vector(ptr noundef %dev, i32 noundef %nr) #4
  %call1 = tail call ptr @free_irq(i32 noundef %call, ptr noundef %dev_id) #4
  tail call void @kfree(ptr noundef %call1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_pci_request_irq, !1, !"__ksymtab_pci_request_irq", i1 false, i1 false}
!1 = !{!"../drivers/pci/irq.c", i32 54, i32 1}
!2 = !{ptr @__ksymtab_pci_free_irq, !3, !"__ksymtab_pci_free_irq", i1 false, i1 false}
!3 = !{!"../drivers/pci/irq.c", i32 74, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
