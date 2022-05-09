; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gf104_grctx_init_tex_0 = dso_local constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299264, i8 1, i32 4, i32 496 }, %struct.gf100_gr_init { i32 4299268, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4299272, i8 1, i32 4, i32 35 }, %struct.gf100_gr_init { i32 4299276, i8 1, i32 4, i32 131072 }, %struct.gf100_gr_init { i32 4299280, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299284, i8 1, i32 4, i32 512 }, %struct.gf100_gr_init { i32 4299292, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299296, i8 1, i32 4, i32 2048 }, %struct.gf100_gr_init { i32 4299460, i8 1, i32 4, i32 521280 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf104_grctx_init_l1c_0 = dso_local constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299952, i8 1, i32 4, i32 131144 }, %struct.gf100_gr_init { i32 4300008, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300020, i8 1, i32 4, i32 387 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf104_grctx_init_sm_0 = dso_local constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300292, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300304, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4300356, i8 1, i32 4, i32 1830898 }, %struct.gf100_gr_init { i32 4300360, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300364, i8 1, i32 4, i32 15 }, %struct.gf100_gr_init { i32 4300368, i8 17, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300440, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300512, i8 1, i32 4, i32 69904 }, %struct.gf100_gr_init { i32 4300592, i8 11, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_pack_hub = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf100_grctx_pack_gpc_0 = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf100_grctx_pack_gpc_1 = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf100_grctx_pack_zcull = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf104_grctx_pack_tpc = internal constant { [8 x %struct.gf100_gr_pack], [32 x i8] } { [8 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf104_grctx_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf104_grctx_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf104_grctx_init_sm_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_pack_icmd = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf100_grctx_pack_mthd = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf104_grctx = dso_local constant { %struct.gf100_grctx_func, [36 x i8] } { %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gf100_grctx_generate_unkn, ptr @gf100_grctx_pack_hub, ptr @gf100_grctx_pack_gpc_0, ptr @gf100_grctx_pack_gpc_1, ptr @gf100_grctx_pack_zcull, ptr @gf104_grctx_pack_tpc, ptr null, ptr @gf100_grctx_pack_icmd, ptr @gf100_grctx_pack_mthd, ptr null, ptr @gf100_grctx_generate_bundle, i32 6144, i32 0, i32 0, ptr @gf100_grctx_generate_pagepool, i32 32768, ptr @gf100_grctx_generate_attrib, i32 804, i32 536, i32 0, i32 0, i32 0, ptr null, ptr @gf100_grctx_generate_sm_id, ptr @gf100_grctx_generate_tpc_nr, i8 0, ptr @gf100_grctx_generate_r4060a8, ptr @gf100_grctx_generate_rop_mapping, ptr @gf100_grctx_generate_alpha_beta_tables, ptr @gf100_grctx_generate_max_ways_evict, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gf100_grctx_generate_r419cb8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gf100_grctx_init_pe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_wwdx_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_mpc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_tpccs_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"gf104_grctx_init_tex_0\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 31, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"gf104_grctx_init_l1c_0\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 45, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"gf104_grctx_init_sm_0\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 53, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"gf104_grctx_pack_tpc\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 67, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"gf104_grctx\00", align 1
@___asan_gen_.14 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf104.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 83, i32 1 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @gf104_grctx_init_tex_0, ptr @gf104_grctx_init_l1c_0, ptr @gf104_grctx_init_sm_0, ptr @gf104_grctx_pack_tpc, ptr @gf104_grctx], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf104_grctx_init_tex_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf104_grctx_init_l1c_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf104_grctx_init_sm_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf104_grctx_pack_tpc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf104_grctx to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_unkn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_bundle(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_pagepool(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_attrib(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_tpc_nr(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_r4060a8(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_rop_mapping(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_alpha_beta_tables(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_max_ways_evict(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_r419cb8(ptr noundef) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @gf104_grctx_init_tex_0, !1, !"gf104_grctx_init_tex_0", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf104.c", i32 31, i32 1}
!2 = !{ptr @gf104_grctx_init_l1c_0, !3, !"gf104_grctx_init_l1c_0", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf104.c", i32 45, i32 1}
!4 = !{ptr @gf104_grctx_init_sm_0, !5, !"gf104_grctx_init_sm_0", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf104.c", i32 53, i32 1}
!6 = !{ptr @gf104_grctx, !7, !"gf104_grctx", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf104.c", i32 83, i32 1}
!8 = !{ptr @gf104_grctx_pack_tpc, !9, !"gf104_grctx_pack_tpc", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf104.c", i32 67, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
