; ModuleID = '/llk/IR_all_yes/drivers/iommu/io-pgtable.c_pt.bc'
source_filename = "../drivers/iommu/io-pgtable.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+alloc_io_pgtable_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_io_pgtable_ops\09\09\09\09"
module asm "\09.long\09__crc_alloc_io_pgtable_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_io_pgtable_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_io_pgtable_ops\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_io_pgtable_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+free_io_pgtable_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_free_io_pgtable_ops\09\09\09\09"
module asm "\09.long\09__crc_free_io_pgtable_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_io_pgtable_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22free_io_pgtable_ops\22\09\09\09\09\09"
module asm "__kstrtabns_free_io_pgtable_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.io_pgtable_init_fns = type { ptr, ptr }
%struct.io_pgtable = type { i32, ptr, %struct.io_pgtable_cfg, %struct.io_pgtable_ops }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.70 }
%union.anon.70 = type { %struct.anon.77 }
%struct.anon.77 = type { [4 x i64], i32 }
%struct.io_pgtable_ops = type { ptr, ptr, ptr, ptr, ptr }

@io_pgtable_init_table = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @io_pgtable_arm_32_lpae_s1_init_fns, ptr @io_pgtable_arm_32_lpae_s2_init_fns, ptr @io_pgtable_arm_64_lpae_s1_init_fns, ptr @io_pgtable_arm_64_lpae_s2_init_fns, ptr @io_pgtable_arm_v7s_init_fns, ptr @io_pgtable_arm_mali_lpae_init_fns, ptr null, ptr @io_pgtable_apple_dart_init_fns], [32 x i8] zeroinitializer }, align 32
@__kstrtab_alloc_io_pgtable_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_io_pgtable_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_io_pgtable_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_io_pgtable_ops to i32), ptr @__kstrtab_alloc_io_pgtable_ops, ptr @__kstrtabns_alloc_io_pgtable_ops }, section "___ksymtab_gpl+alloc_io_pgtable_ops", align 4
@__kstrtab_free_io_pgtable_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_io_pgtable_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_free_io_pgtable_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_io_pgtable_ops to i32), ptr @__kstrtab_free_io_pgtable_ops, ptr @__kstrtabns_free_io_pgtable_ops }, section "___ksymtab_gpl+free_io_pgtable_ops", align 4
@io_pgtable_arm_32_lpae_s1_init_fns = external dso_local global %struct.io_pgtable_init_fns, align 4
@io_pgtable_arm_32_lpae_s2_init_fns = external dso_local global %struct.io_pgtable_init_fns, align 4
@io_pgtable_arm_64_lpae_s1_init_fns = external dso_local global %struct.io_pgtable_init_fns, align 4
@io_pgtable_arm_64_lpae_s2_init_fns = external dso_local global %struct.io_pgtable_init_fns, align 4
@io_pgtable_arm_v7s_init_fns = external dso_local global %struct.io_pgtable_init_fns, align 4
@io_pgtable_arm_mali_lpae_init_fns = external dso_local global %struct.io_pgtable_init_fns, align 4
@io_pgtable_apple_dart_init_fns = external dso_local global %struct.io_pgtable_init_fns, align 4
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"io_pgtable_init_table\00", align 1
@___asan_gen_.2 = private constant [30 x i8] c"../drivers/iommu/io-pgtable.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 16, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_alloc_io_pgtable_ops, ptr @__ksymtab_free_io_pgtable_ops, ptr @io_pgtable_init_table], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_pgtable_init_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_io_pgtable_ops(i32 noundef %fmt, ptr noundef %cfg, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %fmt)
  %cmp = icmp ugt i32 %fmt, 7
  %0 = and i32 %fmt, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %tobool.not = icmp eq i32 %0, 6
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end2:                                          ; preds = %entry
  %arrayidx = getelementptr [8 x ptr], ptr @io_pgtable_init_table, i32 0, i32 %fmt
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = tail call ptr %4(ptr noundef %cfg, ptr noundef %cookie) #1
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #3
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %fmt, ptr %call, align 8
  %cookie7 = getelementptr inbounds %struct.io_pgtable, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %cookie7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cookie, ptr %cookie7, align 4
  %cfg8 = getelementptr inbounds %struct.io_pgtable, ptr %call, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %cfg8, ptr %cfg, i32 72)
  %ops = getelementptr inbounds %struct.io_pgtable, ptr %call, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ops, %if.end5 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end2.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_io_pgtable_ops(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ops, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %ops, i32 -80
  %tlb.i = getelementptr i8, ptr %ops, i32 -52
  %0 = ptrtoint ptr %tlb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tlb.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.io_pgtable_tlb_flush_all.exit_crit_edge, label %land.lhs.true.i

if.end.io_pgtable_tlb_flush_all.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %io_pgtable_tlb_flush_all.exit

land.lhs.true.i:                                  ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool3.not.i = icmp eq ptr %3, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.io_pgtable_tlb_flush_all.exit_crit_edge, label %if.then.i

land.lhs.true.i.io_pgtable_tlb_flush_all.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %io_pgtable_tlb_flush_all.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #3
  %cookie.i = getelementptr i8, ptr %ops, i32 -76
  %4 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cookie.i, align 4
  tail call void %3(ptr noundef %5) #1
  br label %io_pgtable_tlb_flush_all.exit

io_pgtable_tlb_flush_all.exit:                    ; preds = %if.then.i, %land.lhs.true.i.io_pgtable_tlb_flush_all.exit_crit_edge, %if.end.io_pgtable_tlb_flush_all.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 8
  %arrayidx = getelementptr [8 x ptr], ptr @io_pgtable_init_table, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %free = getelementptr inbounds %struct.io_pgtable_init_fns, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %free, align 4
  tail call void %11(ptr noundef %add.ptr) #1
  br label %cleanup

cleanup:                                          ; preds = %io_pgtable_tlb_flush_all.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_alloc_io_pgtable_ops, !1, !"__ksymtab_alloc_io_pgtable_ops", i1 false, i1 false}
!1 = !{!"../drivers/iommu/io-pgtable.c", i32 57, i32 1}
!2 = !{ptr @__ksymtab_free_io_pgtable_ops, !3, !"__ksymtab_free_io_pgtable_ops", i1 false, i1 false}
!3 = !{!"../drivers/iommu/io-pgtable.c", i32 74, i32 1}
!4 = !{ptr @io_pgtable_init_table, !5, !"io_pgtable_init_table", i1 false, i1 false}
!5 = !{!"../drivers/iommu/io-pgtable.c", i32 16, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
