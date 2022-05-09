; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk110.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk110.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fb_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.136, %struct.anon.137, ptr, i8, ptr }
%struct.anon.136 = type { ptr, ptr }
%struct.anon.137 = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_therm_clkgate_pack = type { ptr }
%struct.nvkm_therm_clkgate_init = type { i32, i8, i32 }

@gk110_fb = internal constant { %struct.nvkm_fb_func, [56 x i8] } { %struct.nvkm_fb_func { ptr @gf100_fb_dtor, ptr null, ptr @gf100_fb_oneinit, ptr @gf100_fb_init, ptr null, ptr @gf100_fb_init_page, ptr null, ptr @gf100_fb_intr, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, ptr @gk104_ram_new, i8 17, ptr @gk110_fb_clkgate_pack }, [56 x i8] zeroinitializer }, align 32
@gk110_fb_clkgate_pack = internal constant { [5 x %struct.nvkm_therm_clkgate_pack], [44 x i8] } { [5 x %struct.nvkm_therm_clkgate_pack] [%struct.nvkm_therm_clkgate_pack { ptr @gk110_fb_clkgate_blcg_init_unk_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_fb_clkgate_blcg_init_vm_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_fb_clkgate_blcg_init_main_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_fb_clkgate_blcg_init_bcast_0 }, %struct.nvkm_therm_clkgate_pack zeroinitializer], [44 x i8] zeroinitializer }, align 32
@gk110_fb_clkgate_blcg_init_unk_0 = internal constant { [6 x %struct.nvkm_therm_clkgate_init], [56 x i8] } { [6 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 1051920, i8 1, i32 49730 }, %struct.nvkm_therm_clkgate_init { i32 1051952, i8 1, i32 49730 }, %struct.nvkm_therm_clkgate_init { i32 1051964, i8 1, i32 578 }, %struct.nvkm_therm_clkgate_init { i32 1051976, i8 1, i32 49730 }, %struct.nvkm_therm_clkgate_init { i32 1051932, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gk104_fb_clkgate_blcg_init_vm_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_fb_clkgate_blcg_init_main_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@gk104_fb_clkgate_blcg_init_bcast_0 = external dso_local constant [0 x %struct.nvkm_therm_clkgate_init], align 4
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"gk110_fb\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 56, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [22 x i8] c"gk110_fb_clkgate_pack\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 47, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [33 x i8] c"gk110_fb_clkgate_blcg_init_unk_0\00", align 1
@___asan_gen_.8 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk110.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 37, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @gk110_fb, ptr @gk110_fb_clkgate_pack, ptr @gk110_fb_clkgate_blcg_init_unk_0], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_fb to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_fb_clkgate_pack to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_fb_clkgate_blcg_init_unk_0 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk110_fb_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_fb_new_(ptr noundef nonnull @gk110_fb, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfb) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fb_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gf100_fb_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fb_oneinit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fb_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fb_init_page(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fb_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_ram_new(ptr noundef, ptr noundef) #1

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

!0 = !{ptr @gk110_fb, !1, !"gk110_fb", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk110.c", i32 56, i32 1}
!2 = !{ptr @gk110_fb_clkgate_pack, !3, !"gk110_fb_clkgate_pack", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk110.c", i32 47, i32 1}
!4 = !{ptr @gk110_fb_clkgate_blcg_init_unk_0, !5, !"gk110_fb_clkgate_blcg_init_unk_0", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk110.c", i32 37, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
