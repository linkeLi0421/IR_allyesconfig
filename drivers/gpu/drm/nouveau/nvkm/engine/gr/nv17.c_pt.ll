; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv17.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv17.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type opaque
%struct.anon.136 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@nv04_gr_object = external dso_local constant %struct.nvkm_object_func, align 1
@nv17_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.136, [19 x %struct.nvkm_sclass] }, [108 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.136, [19 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr @nv10_gr_init, ptr null, ptr @nv10_gr_intr, ptr @nv10_gr_tile, ptr null, ptr @nv10_gr_chan_new, ptr null, ptr null, ptr null, %struct.anon.136 zeroinitializer, [19 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 18, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 25, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 57, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 67, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 68, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 74, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 82, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 95, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 98, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 114, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 137, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 138, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 159, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 147, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 148, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 149, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 153, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [108 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [8 x i8] c"nv17_gr\00", align 1
@___asan_gen_.3 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv17.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 27, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nv17_gr], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_gr to i32), i32 436, i32 544, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv17_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv10_gr_new_(ptr noundef nonnull @nv17_gr, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_gr_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv10_gr_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv10_gr_tile(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_gr_chan_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @nv17_gr, !1, !"nv17_gr", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv17.c", i32 27, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
