; ModuleID = '/llk/IR_all_yes/kernel/crash_dump.c_pt.bc'
source_filename = "../kernel/crash_dump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+elfcorehdr_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_elfcorehdr_addr\09\09\09\09"
module asm "\09.long\09__crc_elfcorehdr_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elfcorehdr_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22elfcorehdr_addr\22\09\09\09\09\09"
module asm "__kstrtabns_elfcorehdr_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }

@elfcorehdr_addr = dso_local global { i64, [24 x i8] } { i64 -1, [24 x i8] zeroinitializer }, align 32
@__kstrtab_elfcorehdr_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_elfcorehdr_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_elfcorehdr_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elfcorehdr_addr to i32), ptr @__kstrtab_elfcorehdr_addr, ptr @__kstrtabns_elfcorehdr_addr }, section "___ksymtab_gpl+elfcorehdr_addr", align 4
@__setup_str_setup_elfcorehdr = internal constant [11 x i8] c"elfcorehdr\00", section ".init.rodata", align 1
@__setup_setup_elfcorehdr = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_elfcorehdr, ptr @setup_elfcorehdr, i32 1 }, section ".init.setup", align 4
@elfcorehdr_size = dso_local global { i64, [24 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"elfcorehdr_addr\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 15, i32 20 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"elfcorehdr_size\00", align 1
@___asan_gen_.5 = private constant [23 x i8] c"../kernel/crash_dump.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 21, i32 20 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_elfcorehdr_addr, ptr @__setup_setup_elfcorehdr, ptr @elfcorehdr_addr, ptr @elfcorehdr_size], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elfcorehdr_addr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elfcorehdr_size to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @setup_elfcorehdr(ptr noundef %arg) #0 section ".init.text" align 64 {
entry:
  %end = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #3
  %0 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %end, align 4, !annotation !18
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i64 @memparse(ptr noundef nonnull %arg, ptr noundef nonnull %end) #3
  store i64 %call, ptr @elfcorehdr_addr, align 8
  %1 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %4)
  %cmp = icmp eq i8 %4, 64
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  store i64 %call, ptr @elfcorehdr_size, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 1
  %call3 = call i64 @memparse(ptr noundef %add.ptr, ptr noundef nonnull %end) #3
  store i64 %call3, ptr @elfcorehdr_addr, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end, align 4
  %cmp5 = icmp ugt ptr %6, %arg
  %cond = select i1 %cmp5, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @elfcorehdr_addr, !1, !"elfcorehdr_addr", i1 false, i1 false}
!1 = !{!"../kernel/crash_dump.c", i32 15, i32 20}
!2 = !{ptr @__ksymtab_elfcorehdr_addr, !3, !"__ksymtab_elfcorehdr_addr", i1 false, i1 false}
!3 = !{!"../kernel/crash_dump.c", i32 16, i32 1}
!4 = !{ptr @__setup_setup_elfcorehdr, !5, !"__setup_setup_elfcorehdr", i1 false, i1 false}
!5 = !{!"../kernel/crash_dump.c", i32 41, i32 1}
!6 = !{ptr @elfcorehdr_size, !7, !"elfcorehdr_size", i1 false, i1 false}
!7 = !{!"../kernel/crash_dump.c", i32 21, i32 20}
!8 = !{ptr @__setup_str_setup_elfcorehdr, !5, !"__setup_str_setup_elfcorehdr", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"auto-init"}
