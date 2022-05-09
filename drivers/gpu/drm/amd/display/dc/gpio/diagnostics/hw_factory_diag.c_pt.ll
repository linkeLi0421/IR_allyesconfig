; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/gpio/diagnostics/hw_factory_diag.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/diagnostics/hw_factory_diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hw_factory_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hw_factory = type { [8 x i32], ptr }

@funcs = internal constant { %struct.hw_factory_funcs, [60 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"funcs\00", align 1
@___asan_gen_.2 = private constant [79 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/diagnostics/hw_factory_diag.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 45, i32 38 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @funcs], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dal_hw_factory_diag_fpga_init(ptr nocapture noundef writeonly %factory) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %factory to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %factory, align 4
  %arrayidx2 = getelementptr [8 x i32], ptr %factory, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr [8 x i32], ptr %factory, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr [8 x i32], ptr %factory, i32 0, i32 3
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr [8 x i32], ptr %factory, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 31, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr [8 x i32], ptr %factory, i32 0, i32 5
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr [8 x i32], ptr %factory, i32 0, i32 6
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr [8 x i32], ptr %factory, i32 0, i32 7
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %arrayidx14, align 4
  %funcs = getelementptr inbounds %struct.hw_factory, ptr %factory, i32 0, i32 1
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @funcs, ptr %funcs, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @funcs, !1, !"funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/diagnostics/hw_factory_diag.c", i32 45, i32 38}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
