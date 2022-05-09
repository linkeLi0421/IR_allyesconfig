; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk110b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk110b.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_init = type { i32, i8, i32, i32 }

@gk110_grctx_pack_hub = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gk110_grctx_pack_gpc_0 = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gk110_grctx_pack_gpc_1 = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf100_grctx_pack_zcull = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gk110b_grctx_pack_tpc = internal constant { [6 x %struct.gf100_gr_pack], [48 x i8] } { [6 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf117_grctx_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_grctx_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_grctx_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_grctx_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110b_grctx_init_sm_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk110_grctx_pack_ppc = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gk110_grctx_pack_icmd = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gk110_grctx_pack_mthd = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gk110b_grctx = dso_local constant { %struct.gf100_grctx_func, [36 x i8] } { %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr @gk110_grctx_pack_hub, ptr @gk110_grctx_pack_gpc_0, ptr @gk110_grctx_pack_gpc_1, ptr @gf100_grctx_pack_zcull, ptr @gk110b_grctx_pack_tpc, ptr @gk110_grctx_pack_ppc, ptr @gk110_grctx_pack_icmd, ptr @gk110_grctx_pack_mthd, ptr null, ptr @gk104_grctx_generate_bundle, i32 12288, i32 384, i32 1536, ptr @gk104_grctx_generate_pagepool, i32 32768, ptr @gf117_grctx_generate_attrib, i32 804, i32 536, i32 2047, i32 1608, i32 0, ptr @gk104_grctx_generate_patch_ltc, ptr @gf100_grctx_generate_sm_id, ptr @gf100_grctx_generate_tpc_nr, i8 0, ptr null, ptr @gf117_grctx_generate_rop_mapping, ptr @gk104_grctx_generate_alpha_beta_tables, ptr null, ptr @gf117_grctx_generate_dist_skip_table, ptr null, ptr @gk104_grctx_generate_gpc_tpc_nr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gk104_grctx_generate_r418800, ptr @gk110_grctx_generate_r419eb0, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gf117_grctx_init_pe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_grctx_init_tex_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_grctx_init_mpc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_grctx_init_l1c_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110b_grctx_init_sm_0 = internal constant { [24 x %struct.gf100_gr_init], [96 x i8] } { [24 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300292, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300296, i8 1, i32 4, i32 29 }, %struct.gf100_gr_init { i32 4300300, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300304, i8 1, i32 4, i32 7170 }, %struct.gf100_gr_init { i32 4300356, i8 1, i32 4, i32 1306610 }, %struct.gf100_gr_init { i32 4300360, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300364, i8 1, i32 4, i32 127 }, %struct.gf100_gr_init { i32 4300368, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300376, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4300380, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300392, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4300396, i8 12, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300460, i8 1, i32 4, i32 8079 }, %struct.gf100_gr_init { i32 4300464, i8 1, i32 4, i32 229641519 }, %struct.gf100_gr_init { i32 4300472, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300488, i8 1, i32 4, i32 77903 }, %struct.gf100_gr_init { i32 4300592, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300608, i8 1, i32 4, i32 24 }, %struct.gf100_gr_init { i32 4300612, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300632, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300656, i8 1, i32 4, i32 25344 }, %struct.gf100_gr_init { i32 4300664, i8 1, i32 4, i32 235 }, %struct.gf100_gr_init { i32 4300668, i8 1, i32 4, i32 1028 }, %struct.gf100_gr_init zeroinitializer], [96 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"gk110b_grctx_pack_tpc\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 59, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"gk110b_grctx\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 73, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"gk110b_grctx_init_sm_0\00", align 1
@___asan_gen_.8 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk110b.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 31, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @gk110b_grctx_pack_tpc, ptr @gk110b_grctx, ptr @gk110b_grctx_init_sm_0], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110b_grctx_pack_tpc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110b_grctx to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110b_grctx_init_sm_0 to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_bundle(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_pagepool(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_attrib(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_patch_ltc(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_tpc_nr(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_rop_mapping(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_alpha_beta_tables(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_dist_skip_table(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_r418800(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk110_grctx_generate_r419eb0(ptr noundef) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @gk110b_grctx, !1, !"gk110b_grctx", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk110b.c", i32 73, i32 1}
!2 = !{ptr @gk110b_grctx_pack_tpc, !3, !"gk110b_grctx_pack_tpc", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk110b.c", i32 59, i32 1}
!4 = !{ptr @gk110b_grctx_init_sm_0, !5, !"gk110b_grctx_init_sm_0", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk110b.c", i32 31, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
