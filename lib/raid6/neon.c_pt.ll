; ModuleID = '/llk/IR_all_yes/lib/raid6/neon.c_pt.bc'
source_filename = "../lib/raid6/neon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.raid6_calls = type { ptr, ptr, ptr, ptr, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"neonx1\00", [25 x i8] zeroinitializer }, align 32
@raid6_neonx1 = dso_local constant { %struct.raid6_calls, [44 x i8] } { %struct.raid6_calls { ptr @raid6_neon1_gen_syndrome, ptr @raid6_neon1_xor_syndrome, ptr @raid6_have_neon, ptr @.str, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"neonx2\00", [25 x i8] zeroinitializer }, align 32
@raid6_neonx2 = dso_local constant { %struct.raid6_calls, [44 x i8] } { %struct.raid6_calls { ptr @raid6_neon2_gen_syndrome, ptr @raid6_neon2_xor_syndrome, ptr @raid6_have_neon, ptr @.str.1, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"neonx4\00", [25 x i8] zeroinitializer }, align 32
@raid6_neonx4 = dso_local constant { %struct.raid6_calls, [44 x i8] } { %struct.raid6_calls { ptr @raid6_neon4_gen_syndrome, ptr @raid6_neon4_xor_syndrome, ptr @raid6_have_neon, ptr @.str.2, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"neonx8\00", [25 x i8] zeroinitializer }, align 32
@raid6_neonx8 = dso_local constant { %struct.raid6_calls, [44 x i8] } { %struct.raid6_calls { ptr @raid6_neon8_gen_syndrome, ptr @raid6_neon8_xor_syndrome, ptr @raid6_have_neon, ptr @.str.3, i32 0 }, [44 x i8] zeroinitializer }, align 32
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"raid6_neonx1\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 64, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"raid6_neonx2\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 65, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"raid6_neonx4\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 66, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"raid6_neonx8\00", align 1
@___asan_gen_.26 = private constant [20 x i8] c"../lib/raid6/neon.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 67, i32 1 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @raid6_neonx1, ptr @.str.1, ptr @raid6_neonx2, ptr @.str.2, ptr @raid6_neonx4, ptr @.str.3, ptr @raid6_neonx8], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid6_neonx1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid6_neonx2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid6_neonx4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid6_neonx8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid6_neon1_gen_syndrome(i32 noundef %disks, i32 noundef %bytes, ptr noundef %ptrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kernel_neon_begin() #3
  tail call void @raid6_neon1_gen_syndrome_real(i32 noundef %disks, i32 noundef %bytes, ptr noundef %ptrs) #3
  tail call void @kernel_neon_end() #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid6_neon1_xor_syndrome(i32 noundef %disks, i32 noundef %start, i32 noundef %stop, i32 noundef %bytes, ptr noundef %ptrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kernel_neon_begin() #3
  tail call void @raid6_neon1_xor_syndrome_real(i32 noundef %disks, i32 noundef %start, i32 noundef %stop, i32 noundef %bytes, ptr noundef %ptrs) #3
  tail call void @kernel_neon_end() #3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @raid6_have_neon() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = lshr i32 %0, 12
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid6_neon2_gen_syndrome(i32 noundef %disks, i32 noundef %bytes, ptr noundef %ptrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kernel_neon_begin() #3
  tail call void @raid6_neon2_gen_syndrome_real(i32 noundef %disks, i32 noundef %bytes, ptr noundef %ptrs) #3
  tail call void @kernel_neon_end() #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid6_neon2_xor_syndrome(i32 noundef %disks, i32 noundef %start, i32 noundef %stop, i32 noundef %bytes, ptr noundef %ptrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kernel_neon_begin() #3
  tail call void @raid6_neon2_xor_syndrome_real(i32 noundef %disks, i32 noundef %start, i32 noundef %stop, i32 noundef %bytes, ptr noundef %ptrs) #3
  tail call void @kernel_neon_end() #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid6_neon4_gen_syndrome(i32 noundef %disks, i32 noundef %bytes, ptr noundef %ptrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kernel_neon_begin() #3
  tail call void @raid6_neon4_gen_syndrome_real(i32 noundef %disks, i32 noundef %bytes, ptr noundef %ptrs) #3
  tail call void @kernel_neon_end() #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid6_neon4_xor_syndrome(i32 noundef %disks, i32 noundef %start, i32 noundef %stop, i32 noundef %bytes, ptr noundef %ptrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kernel_neon_begin() #3
  tail call void @raid6_neon4_xor_syndrome_real(i32 noundef %disks, i32 noundef %start, i32 noundef %stop, i32 noundef %bytes, ptr noundef %ptrs) #3
  tail call void @kernel_neon_end() #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid6_neon8_gen_syndrome(i32 noundef %disks, i32 noundef %bytes, ptr noundef %ptrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kernel_neon_begin() #3
  tail call void @raid6_neon8_gen_syndrome_real(i32 noundef %disks, i32 noundef %bytes, ptr noundef %ptrs) #3
  tail call void @kernel_neon_end() #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid6_neon8_xor_syndrome(i32 noundef %disks, i32 noundef %start, i32 noundef %stop, i32 noundef %bytes, ptr noundef %ptrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kernel_neon_begin() #3
  tail call void @raid6_neon8_xor_syndrome_real(i32 noundef %disks, i32 noundef %start, i32 noundef %stop, i32 noundef %bytes, ptr noundef %ptrs) #3
  tail call void @kernel_neon_end() #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid6_neon1_gen_syndrome_real(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid6_neon1_xor_syndrome_real(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid6_neon2_gen_syndrome_real(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid6_neon2_xor_syndrome_real(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid6_neon4_gen_syndrome_real(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid6_neon4_xor_syndrome_real(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid6_neon8_gen_syndrome_real(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid6_neon8_xor_syndrome_real(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/raid6/neon.c", i32 64, i32 1}
!2 = !{ptr @raid6_neonx1, !1, !"raid6_neonx1", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../lib/raid6/neon.c", i32 65, i32 1}
!5 = !{ptr @raid6_neonx2, !4, !"raid6_neonx2", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/raid6/neon.c", i32 66, i32 1}
!8 = !{ptr @raid6_neonx4, !7, !"raid6_neonx4", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../lib/raid6/neon.c", i32 67, i32 1}
!11 = !{ptr @raid6_neonx8, !10, !"raid6_neonx8", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
