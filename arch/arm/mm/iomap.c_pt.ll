; ModuleID = '/llk/IR_all_yes/arch/arm/mm/iomap.c_pt.bc'
source_filename = "../arch/arm/mm/iomap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vga_base\22, \22a\22\09"
module asm "\09.weak\09__crc_vga_base\09\09\09\09"
module asm "\09.long\09__crc_vga_base\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_base:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_base\22\09\09\09\09\09"
module asm "__kstrtabns_vga_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ioport_map\22, \22a\22\09"
module asm "\09.weak\09__crc_ioport_map\09\09\09\09"
module asm "\09.long\09__crc_ioport_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ioport_map:\09\09\09\09\09"
module asm "\09.asciz \09\22ioport_map\22\09\09\09\09\09"
module asm "__kstrtabns_ioport_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ioport_unmap\22, \22a\22\09"
module asm "\09.weak\09__crc_ioport_unmap\09\09\09\09"
module asm "\09.long\09__crc_ioport_unmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ioport_unmap:\09\09\09\09\09"
module asm "\09.asciz \09\22ioport_unmap\22\09\09\09\09\09"
module asm "__kstrtabns_ioport_unmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pcibios_min_io\22, \22a\22\09"
module asm "\09.weak\09__crc_pcibios_min_io\09\09\09\09"
module asm "\09.long\09__crc_pcibios_min_io\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcibios_min_io:\09\09\09\09\09"
module asm "\09.asciz \09\22pcibios_min_io\22\09\09\09\09\09"
module asm "__kstrtabns_pcibios_min_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pcibios_min_mem\22, \22a\22\09"
module asm "\09.weak\09__crc_pcibios_min_mem\09\09\09\09"
module asm "\09.long\09__crc_pcibios_min_mem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcibios_min_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22pcibios_min_mem\22\09\09\09\09\09"
module asm "__kstrtabns_pcibios_min_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_iounmap\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_iounmap\09\09\09\09"
module asm "\09.long\09__crc_pci_iounmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_iounmap:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_iounmap\22\09\09\09\09\09"
module asm "__kstrtabns_pci_iounmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@vga_base = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_vga_base = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_base = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_base to i32), ptr @__kstrtab_vga_base, ptr @__kstrtabns_vga_base }, section "___ksymtab+vga_base", align 4
@__kstrtab_ioport_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_ioport_map = external dso_local constant [0 x i8], align 1
@__ksymtab_ioport_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ioport_map to i32), ptr @__kstrtab_ioport_map, ptr @__kstrtabns_ioport_map }, section "___ksymtab+ioport_map", align 4
@__kstrtab_ioport_unmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_ioport_unmap = external dso_local constant [0 x i8], align 1
@__ksymtab_ioport_unmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ioport_unmap to i32), ptr @__kstrtab_ioport_unmap, ptr @__kstrtabns_ioport_unmap }, section "___ksymtab+ioport_unmap", align 4
@pcibios_min_io = dso_local global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__kstrtab_pcibios_min_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcibios_min_io = external dso_local constant [0 x i8], align 1
@__ksymtab_pcibios_min_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcibios_min_io to i32), ptr @__kstrtab_pcibios_min_io, ptr @__kstrtabns_pcibios_min_io }, section "___ksymtab+pcibios_min_io", align 4
@pcibios_min_mem = dso_local global { i32, [28 x i8] } { i32 16777216, [28 x i8] zeroinitializer }, align 32
@__kstrtab_pcibios_min_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcibios_min_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_pcibios_min_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcibios_min_mem to i32), ptr @__kstrtab_pcibios_min_mem, ptr @__kstrtabns_pcibios_min_mem }, section "___ksymtab+pcibios_min_mem", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_pci_iounmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_iounmap = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_iounmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_iounmap to i32), ptr @__kstrtab_pci_iounmap, ptr @__kstrtabns_pci_iounmap }, section "___ksymtab+pci_iounmap", align 4
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"vga_base\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 15, i32 15 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"pcibios_min_io\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 32, i32 15 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"pcibios_min_mem\00", align 1
@___asan_gen_.8 = private constant [23 x i8] c"../arch/arm/mm/iomap.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 35, i32 15 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_ioport_map, ptr @__ksymtab_ioport_unmap, ptr @__ksymtab_pci_iounmap, ptr @__ksymtab_pcibios_min_io, ptr @__ksymtab_pcibios_min_mem, ptr @__ksymtab_vga_base, ptr @vga_base, ptr @pcibios_min_io, ptr @pcibios_min_mem], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcibios_min_io to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcibios_min_mem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ioport_map(i32 noundef %port, i32 %nr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %port, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ioport_unmap(ptr nocapture %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_iounmap(ptr nocapture readnone %dev, ptr noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %2 = ptrtoint ptr %1 to i32
  %add = add i32 %2, 8388608
  %and = and i32 %add, -8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %0)
  %cmp.not = icmp ule i32 %and, %0
  %cmp1 = icmp ult ptr %addr, inttoptr (i32 -8388608 to ptr)
  %or.cond = and i1 %cmp1, %cmp.not
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @iounmap(ptr noundef %addr) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_vga_base, !1, !"__ksymtab_vga_base", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/iomap.c", i32 16, i32 1}
!2 = !{ptr @__ksymtab_ioport_map, !3, !"__ksymtab_ioport_map", i1 false, i1 false}
!3 = !{!"../arch/arm/mm/iomap.c", i32 23, i32 1}
!4 = !{ptr @__ksymtab_ioport_unmap, !5, !"__ksymtab_ioport_unmap", i1 false, i1 false}
!5 = !{!"../arch/arm/mm/iomap.c", i32 28, i32 1}
!6 = !{ptr @pcibios_min_io, !7, !"pcibios_min_io", i1 false, i1 false}
!7 = !{!"../arch/arm/mm/iomap.c", i32 32, i32 15}
!8 = !{ptr @__ksymtab_pcibios_min_io, !9, !"__ksymtab_pcibios_min_io", i1 false, i1 false}
!9 = !{!"../arch/arm/mm/iomap.c", i32 33, i32 1}
!10 = !{ptr @pcibios_min_mem, !11, !"pcibios_min_mem", i1 false, i1 false}
!11 = !{!"../arch/arm/mm/iomap.c", i32 35, i32 15}
!12 = !{ptr @__ksymtab_pcibios_min_mem, !13, !"__ksymtab_pcibios_min_mem", i1 false, i1 false}
!13 = !{!"../arch/arm/mm/iomap.c", i32 36, i32 1}
!14 = !{ptr @__ksymtab_pci_iounmap, !15, !"__ksymtab_pci_iounmap", i1 false, i1 false}
!15 = !{!"../arch/arm/mm/iomap.c", i32 44, i32 1}
!16 = !{ptr @vga_base, !17, !"vga_base", i1 false, i1 false}
!17 = !{!"../arch/arm/mm/iomap.c", i32 15, i32 15}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
