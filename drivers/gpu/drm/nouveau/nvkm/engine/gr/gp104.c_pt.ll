; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_acr_lsf_func = type opaque
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func_zbc = type { ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.147 = type { ptr }
%struct.anon.148 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@__UNIQUE_ID_firmware293 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gp104/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp104/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp104/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gp104/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gp104/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gp104/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gp104/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware300 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp104/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware301 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gp104/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware302 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp104/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware303 = internal constant [52 x i8] c"nouveau.firmware=nvidia/gp104/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware304 = internal constant [52 x i8] c"nouveau.firmware=nvidia/gp104/gr/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware305 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gp106/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware306 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp106/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware307 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp106/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware308 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gp106/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware309 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gp106/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware310 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gp106/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware311 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gp106/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware312 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp106/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware313 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gp106/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware314 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gp106/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware315 = internal constant [52 x i8] c"nouveau.firmware=nvidia/gp106/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware316 = internal constant [52 x i8] c"nouveau.firmware=nvidia/gp106/gr/sw_method_init.bin\00", section ".modinfo", align 1
@gp104_gr_fwif = internal constant { [3 x %struct.gf100_gr_fwif], [36 x i8] } { [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 0, ptr @gm200_gr_load, ptr @gp104_gr, ptr @gm200_gr_fecs_acr, ptr @gm200_gr_gpccs_acr }, %struct.gf100_gr_fwif { i32 -1, ptr @gm200_gr_nofw, ptr null, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gm200_gr_fecs_acr = external dso_local constant %struct.nvkm_acr_lsf_func, align 1
@gm200_gr_gpccs_acr = external dso_local constant %struct.nvkm_acr_lsf_func, align 1
@gp104_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gp102_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gp104_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.147, %struct.anon.148, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] }, [64 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.147, %struct.anon.148, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gm200_gr_oneinit_tiles, ptr @gm200_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gm200_gr_init_gpc_mmu, ptr null, ptr null, ptr @gk104_gr_init_vsc_stream_master, ptr @gf117_gr_init_zcull, ptr @gm200_gr_init_num_active_ltcs, ptr @gp100_gr_init_rop_active_fbps, ptr null, ptr @gp102_gr_init_swdx_pes_mask, ptr null, ptr @gp100_gr_init_fecs_exceptions, ptr @gm200_gr_init_ds_hww_esr_2, ptr null, ptr @gk104_gr_init_sked_hww_esr, ptr @gf100_gr_init_419cc0, ptr null, ptr null, ptr @gk104_gr_init_ppc_exceptions, ptr @gf100_gr_init_tex_hww_esr, ptr @gm107_gr_init_504430, ptr @gp100_gr_init_shader_exceptions, ptr null, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr null, %struct.anon.147 zeroinitializer, %struct.anon.148 zeroinitializer, ptr @gm200_gr_rops, i32 6, i32 5, i32 3, ptr @gp104_grctx, ptr null, ptr @gp102_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41280, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 49559, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 49600, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [64 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"gp104_gr_fwif\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 89, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [9 x i8] c"gp104_gr\00", align 1
@___asan_gen_.6 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 28, i32 1 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_firmware300, ptr @__UNIQUE_ID_firmware301, ptr @__UNIQUE_ID_firmware302, ptr @__UNIQUE_ID_firmware303, ptr @__UNIQUE_ID_firmware304, ptr @__UNIQUE_ID_firmware305, ptr @__UNIQUE_ID_firmware306, ptr @__UNIQUE_ID_firmware307, ptr @__UNIQUE_ID_firmware308, ptr @__UNIQUE_ID_firmware309, ptr @__UNIQUE_ID_firmware310, ptr @__UNIQUE_ID_firmware311, ptr @__UNIQUE_ID_firmware312, ptr @__UNIQUE_ID_firmware313, ptr @__UNIQUE_ID_firmware314, ptr @__UNIQUE_ID_firmware315, ptr @__UNIQUE_ID_firmware316, ptr @gp104_gr_fwif, ptr @gp104_gr], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp104_gr_fwif to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp104_gr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp104_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gp104_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_load(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_oneinit_tiles(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_oneinit_sm_id(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_init_gpc_mmu(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_vsc_stream_master(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_gr_init_zcull(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_init_num_active_ltcs(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_gr_init_rop_active_fbps(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp102_gr_init_swdx_pes_mask(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_gr_init_fecs_exceptions(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_init_ds_hww_esr_2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_sked_hww_esr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_419cc0(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_ppc_exceptions(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_tex_hww_esr(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_gr_init_504430(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_gr_init_shader_exceptions(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_rops(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__UNIQUE_ID_firmware293, !1, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 62, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware294, !3, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 63, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware295, !5, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 64, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware296, !7, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 65, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware297, !9, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 66, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware298, !11, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 67, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware299, !13, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 68, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware300, !15, !"__UNIQUE_ID_firmware300", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 69, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware301, !17, !"__UNIQUE_ID_firmware301", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 70, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware302, !19, !"__UNIQUE_ID_firmware302", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 71, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware303, !21, !"__UNIQUE_ID_firmware303", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 72, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware304, !23, !"__UNIQUE_ID_firmware304", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 73, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware305, !25, !"__UNIQUE_ID_firmware305", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 75, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware306, !27, !"__UNIQUE_ID_firmware306", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 76, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware307, !29, !"__UNIQUE_ID_firmware307", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 77, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware308, !31, !"__UNIQUE_ID_firmware308", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 78, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware309, !33, !"__UNIQUE_ID_firmware309", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 79, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware310, !35, !"__UNIQUE_ID_firmware310", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 80, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware311, !37, !"__UNIQUE_ID_firmware311", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 81, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware312, !39, !"__UNIQUE_ID_firmware312", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 82, i32 1}
!40 = !{ptr @__UNIQUE_ID_firmware313, !41, !"__UNIQUE_ID_firmware313", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 83, i32 1}
!42 = !{ptr @__UNIQUE_ID_firmware314, !43, !"__UNIQUE_ID_firmware314", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 84, i32 1}
!44 = !{ptr @__UNIQUE_ID_firmware315, !45, !"__UNIQUE_ID_firmware315", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 85, i32 1}
!46 = !{ptr @__UNIQUE_ID_firmware316, !47, !"__UNIQUE_ID_firmware316", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 86, i32 1}
!48 = !{ptr @gp104_gr_fwif, !49, !"gp104_gr_fwif", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 89, i32 1}
!50 = !{ptr @gp104_gr, !51, !"gp104_gr", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp104.c", i32 28, i32 1}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
