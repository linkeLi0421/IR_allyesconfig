; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/mcg.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/mcg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlx5_core_attach_mcg\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_attach_mcg\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_attach_mcg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_attach_mcg:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_attach_mcg\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_attach_mcg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_core_detach_mcg\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_detach_mcg\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_detach_mcg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_detach_mcg:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_detach_mcg\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_detach_mcg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_mlx5_core_attach_mcg = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_attach_mcg = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_attach_mcg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_attach_mcg to i32), ptr @__kstrtab_mlx5_core_attach_mcg, ptr @__kstrtabns_mlx5_core_attach_mcg }, section "___ksymtab+mlx5_core_attach_mcg", align 4
@__kstrtab_mlx5_core_detach_mcg = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_detach_mcg = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_detach_mcg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_detach_mcg to i32), ptr @__kstrtab_mlx5_core_detach_mcg, ptr @__kstrtabns_mlx5_core_detach_mcg }, section "___ksymtab+mlx5_core_detach_mcg", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_mlx5_core_attach_mcg, ptr @__ksymtab_mlx5_core_detach_mcg], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_attach_mcg(ptr noundef %dev, ptr nocapture noundef readonly %mgid, i32 noundef %qpn) #0 align 64 {
entry:
  %in = alloca [8 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #3
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 134610944, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %qpn, 16777215
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and15, ptr %add.ptr13, align 4
  %add.ptr23 = getelementptr inbounds i8, ptr %in, i32 16
  %4 = call ptr @memcpy(ptr %add.ptr23, ptr %mgid, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #3
  %5 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %_out, i32 noundef 16) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #3
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_detach_mcg(ptr noundef %dev, ptr nocapture noundef readonly %mgid, i32 noundef %qpn) #0 align 64 {
entry:
  %in = alloca [8 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #3
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 134676480, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %qpn, 16777215
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and15, ptr %add.ptr13, align 4
  %add.ptr23 = getelementptr inbounds i8, ptr %in, i32 16
  %4 = call ptr @memcpy(ptr %add.ptr23, ptr %mgid, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #3
  %5 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %_out, i32 noundef 16) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #3
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_mlx5_core_attach_mcg, !1, !"__ksymtab_mlx5_core_attach_mcg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/mcg.c", i32 50, i32 1}
!2 = !{ptr @__ksymtab_mlx5_core_detach_mcg, !3, !"__ksymtab_mlx5_core_detach_mcg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/mcg.c", i32 63, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
