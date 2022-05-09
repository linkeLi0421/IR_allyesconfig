; ModuleID = '/llk/IR_all_yes/lib/raid6/recov_neon.c_pt.bc'
source_filename = "../lib/raid6/recov_neon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.raid6_recov_calls = type { ptr, ptr, ptr, ptr, i32 }
%struct.raid6_calls = type { ptr, ptr, ptr, ptr, i32 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"neon\00", [27 x i8] zeroinitializer }, align 32
@raid6_recov_neon = dso_local constant { %struct.raid6_recov_calls, [44 x i8] } { %struct.raid6_recov_calls { ptr @raid6_2data_recov_neon, ptr @raid6_datap_recov_neon, ptr @raid6_has_neon, ptr @.str, i32 10 }, [44 x i8] zeroinitializer }, align 32
@raid6_empty_zero_page = external dso_local constant [4096 x i8], align 1
@raid6_call = external dso_local local_unnamed_addr global %struct.raid6_calls, align 4
@raid6_vgfmul = external dso_local constant [256 x [32 x i8]], align 256
@raid6_gfexi = external dso_local local_unnamed_addr constant [256 x i8], align 256
@raid6_gfinv = external dso_local local_unnamed_addr constant [256 x i8], align 256
@raid6_gfexp = external dso_local local_unnamed_addr constant [256 x i8], align 256
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 104, i32 11 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"raid6_recov_neon\00", align 1
@___asan_gen_.5 = private constant [26 x i8] c"../lib/raid6/recov_neon.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 100, i32 32 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @raid6_recov_neon], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid6_recov_neon to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid6_2data_recov_neon(i32 noundef %disks, i32 noundef %bytes, i32 noundef %faila, i32 noundef %failb, ptr noundef %ptrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %disks, -2
  %arrayidx = getelementptr ptr, ptr %ptrs, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %sub1 = add i32 %disks, -1
  %arrayidx2 = getelementptr ptr, ptr %ptrs, i32 %sub1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr ptr, ptr %ptrs, i32 %faila
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  store ptr @raid6_empty_zero_page, ptr %arrayidx3, align 4
  store ptr %5, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr ptr, ptr %ptrs, i32 %failb
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  store ptr @raid6_empty_zero_page, ptr %arrayidx7, align 4
  store ptr %7, ptr %arrayidx2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @raid6_call to i32))
  %8 = load ptr, ptr @raid6_call, align 4
  tail call void %8(i32 noundef %disks, i32 noundef %bytes, ptr noundef %ptrs) #3
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %arrayidx3, align 4
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %arrayidx7, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %arrayidx2, align 4
  %sub17 = sub i32 %failb, %faila
  %arrayidx18 = getelementptr [256 x i8], ptr @raid6_gfexi, i32 0, i32 %sub17
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx18, align 1
  %idxprom = zext i8 %14 to i32
  %arrayidx19 = getelementptr [256 x [32 x i8]], ptr @raid6_vgfmul, i32 0, i32 %idxprom
  %arrayidx20 = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %faila
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %failb
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx21, align 1
  %xor60 = xor i8 %18, %16
  %xor = zext i8 %xor60 to i32
  %arrayidx23 = getelementptr [256 x i8], ptr @raid6_gfinv, i32 0, i32 %xor
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx23, align 1
  %idxprom24 = zext i8 %20 to i32
  %arrayidx25 = getelementptr [256 x [32 x i8]], ptr @raid6_vgfmul, i32 0, i32 %idxprom24
  tail call void @kernel_neon_begin() #3
  tail call void @__raid6_2data_recov_neon(i32 noundef %bytes, ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %arrayidx19, ptr noundef %arrayidx25) #3
  tail call void @kernel_neon_end() #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid6_datap_recov_neon(i32 noundef %disks, i32 noundef %bytes, i32 noundef %faila, ptr noundef %ptrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %disks, -2
  %arrayidx = getelementptr ptr, ptr %ptrs, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %sub1 = add i32 %disks, -1
  %arrayidx2 = getelementptr ptr, ptr %ptrs, i32 %sub1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr ptr, ptr %ptrs, i32 %faila
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  store ptr @raid6_empty_zero_page, ptr %arrayidx3, align 4
  store ptr %5, ptr %arrayidx2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @raid6_call to i32))
  %6 = load ptr, ptr @raid6_call, align 4
  tail call void %6(i32 noundef %disks, i32 noundef %bytes, ptr noundef %ptrs) #3
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %arrayidx3, align 4
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %arrayidx2, align 4
  %arrayidx10 = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %faila
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10, align 1
  %idxprom = zext i8 %10 to i32
  %arrayidx11 = getelementptr [256 x i8], ptr @raid6_gfinv, i32 0, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11, align 1
  %idxprom12 = zext i8 %12 to i32
  %arrayidx13 = getelementptr [256 x [32 x i8]], ptr @raid6_vgfmul, i32 0, i32 %idxprom12
  tail call void @kernel_neon_begin() #3
  tail call void @__raid6_datap_recov_neon(i32 noundef %bytes, ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %arrayidx13) #3
  tail call void @kernel_neon_end() #3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @raid6_has_neon() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = lshr i32 %0, 12
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raid6_2data_recov_neon(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raid6_datap_recov_neon(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/raid6/recov_neon.c", i32 104, i32 11}
!2 = !{ptr @raid6_recov_neon, !3, !"raid6_recov_neon", i1 false, i1 false}
!3 = !{!"../lib/raid6/recov_neon.c", i32 100, i32 32}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
