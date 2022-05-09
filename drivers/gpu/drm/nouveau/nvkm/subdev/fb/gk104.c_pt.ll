; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_therm_clkgate_init = type { i32, i8, i32 }
%struct.nvkm_fb_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.136, %struct.anon.137, ptr, i8, ptr }
%struct.anon.136 = type { ptr, ptr }
%struct.anon.137 = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_therm_clkgate_pack = type { ptr }

@gk104_fb_clkgate_blcg_init_unk_0 = dso_local constant { [6 x %struct.nvkm_therm_clkgate_init], [56 x i8] } { [6 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 1051920, i8 1, i32 49732 }, %struct.nvkm_therm_clkgate_init { i32 1051952, i8 1, i32 49730 }, %struct.nvkm_therm_clkgate_init { i32 1051964, i8 1, i32 578 }, %struct.nvkm_therm_clkgate_init { i32 1051976, i8 1, i32 578 }, %struct.nvkm_therm_clkgate_init { i32 1051932, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gk104_fb_clkgate_blcg_init_vm_0 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 1051800, i8 1, i32 578 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_fb_clkgate_blcg_init_main_0 = dso_local constant { [4 x %struct.nvkm_therm_clkgate_init], [48 x i8] } { [4 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 1110016, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init { i32 1564720, i8 1, i32 68 }, %struct.nvkm_therm_clkgate_init { i32 1564736, i8 1, i32 68 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_fb_clkgate_blcg_init_bcast_0 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 1567328, i8 4, i32 68 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_fb = internal constant { %struct.nvkm_fb_func, [56 x i8] } { %struct.nvkm_fb_func { ptr @gf100_fb_dtor, ptr null, ptr @gf100_fb_oneinit, ptr @gf100_fb_init, ptr null, ptr @gf100_fb_init_page, ptr null, ptr @gf100_fb_intr, %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, ptr @gk104_ram_new, i8 17, ptr @gk104_fb_clkgate_pack }, [56 x i8] zeroinitializer }, align 32
@gk104_fb_clkgate_pack = internal constant { [5 x %struct.nvkm_therm_clkgate_pack], [44 x i8] } { [5 x %struct.nvkm_therm_clkgate_pack] [%struct.nvkm_therm_clkgate_pack { ptr @gk104_fb_clkgate_blcg_init_unk_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_fb_clkgate_blcg_init_vm_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_fb_clkgate_blcg_init_main_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_fb_clkgate_blcg_init_bcast_0 }, %struct.nvkm_therm_clkgate_pack zeroinitializer], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [33 x i8] c"gk104_fb_clkgate_blcg_init_unk_0\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 35, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [32 x i8] c"gk104_fb_clkgate_blcg_init_vm_0\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 45, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [34 x i8] c"gk104_fb_clkgate_blcg_init_main_0\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 51, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [35 x i8] c"gk104_fb_clkgate_blcg_init_bcast_0\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 59, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"gk104_fb\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 74, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [22 x i8] c"gk104_fb_clkgate_pack\00", align 1
@___asan_gen_.17 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk104.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 65, i32 1 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @gk104_fb_clkgate_blcg_init_unk_0, ptr @gk104_fb_clkgate_blcg_init_vm_0, ptr @gk104_fb_clkgate_blcg_init_main_0, ptr @gk104_fb_clkgate_blcg_init_bcast_0, ptr @gk104_fb, ptr @gk104_fb_clkgate_pack], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fb_clkgate_blcg_init_unk_0 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fb_clkgate_blcg_init_vm_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fb_clkgate_blcg_init_main_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fb_clkgate_blcg_init_bcast_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fb to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_fb_clkgate_pack to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_fb_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_fb_new_(ptr noundef nonnull @gk104_fb, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfb) #2
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @gk104_fb_clkgate_blcg_init_unk_0, !1, !"gk104_fb_clkgate_blcg_init_unk_0", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk104.c", i32 35, i32 1}
!2 = !{ptr @gk104_fb_clkgate_blcg_init_vm_0, !3, !"gk104_fb_clkgate_blcg_init_vm_0", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk104.c", i32 45, i32 1}
!4 = !{ptr @gk104_fb_clkgate_blcg_init_main_0, !5, !"gk104_fb_clkgate_blcg_init_main_0", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk104.c", i32 51, i32 1}
!6 = !{ptr @gk104_fb_clkgate_blcg_init_bcast_0, !7, !"gk104_fb_clkgate_blcg_init_bcast_0", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk104.c", i32 59, i32 1}
!8 = !{ptr @gk104_fb, !9, !"gk104_fb", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk104.c", i32 74, i32 1}
!10 = !{ptr @gk104_fb_clkgate_pack, !11, !"gk104_fb_clkgate_pack", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk104.c", i32 65, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
