; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mc/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mc/gk104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_mc_map = type { i32, i32, i32, i8 }
%struct.nvkm_mc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gk104_mc_reset = dso_local constant { [3 x %struct.nvkm_mc_map], [48 x i8] } { [3 x %struct.nvkm_mc_map] [%struct.nvkm_mc_map { i32 256, i32 32, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 8192, i32 19, i32 0, i8 1 }, %struct.nvkm_mc_map zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_mc_intr = dso_local constant { [13 x %struct.nvkm_mc_map], [48 x i8] } { [13 x %struct.nvkm_mc_map] [%struct.nvkm_mc_map { i32 67108864, i32 30, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 256, i32 32, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 1073741824, i32 4, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 268435456, i32 10, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 134217728, i32 13, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 33554432, i32 14, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 16777216, i32 19, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 2097152, i32 5, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 2097152, i32 6, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 1048576, i32 11, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 262144, i32 22, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 8192, i32 13, i32 0, i8 0 }, %struct.nvkm_mc_map zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_mc = internal constant { %struct.nvkm_mc_func, [32 x i8] } { %struct.nvkm_mc_func { ptr @nv50_mc_init, ptr @gk104_mc_intr, ptr @gf100_mc_intr_unarm, ptr @gf100_mc_intr_rearm, ptr @gf100_mc_intr_mask, ptr @gf100_mc_intr_stat, ptr @gk104_mc_reset, ptr @gf100_mc_unk260 }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"gk104_mc_reset\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 27, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"gk104_mc_intr\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 34, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [9 x i8] c"gk104_mc\00", align 1
@___asan_gen_.8 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mc/gk104.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 51, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @gk104_mc_reset, ptr @gk104_mc_intr, ptr @gk104_mc], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_mc_reset to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_mc_intr to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_mc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_mc_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pmc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_mc_new_(ptr noundef nonnull @gk104_mc, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pmc) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mc_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_mc_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_mc_intr_unarm(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_mc_intr_rearm(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_mc_intr_mask(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_mc_intr_stat(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_mc_unk260(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @gk104_mc_reset, !1, !"gk104_mc_reset", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mc/gk104.c", i32 27, i32 1}
!2 = !{ptr @gk104_mc_intr, !3, !"gk104_mc_intr", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mc/gk104.c", i32 34, i32 1}
!4 = !{ptr @gk104_mc, !5, !"gk104_mc", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mc/gk104.c", i32 51, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
