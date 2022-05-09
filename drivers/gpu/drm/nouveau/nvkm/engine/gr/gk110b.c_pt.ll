; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110b.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_gr_ucode = type { %struct.nvkm_blob, %struct.nvkm_blob }
%struct.nvkm_blob = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func_zbc = type { ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.147 = type { ptr }
%struct.anon.148 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gf100_gr_init = type { i32, i8, i32, i32 }

@gk110b_gr_fwif = internal constant { [3 x %struct.gf100_gr_fwif], [36 x i8] } { [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_load, ptr @gk110b_gr, ptr null, ptr null }, %struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_nofw, ptr @gk110b_gr, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gk110b_gr_pack_mmio = internal constant { [31 x %struct.gf100_gr_pack], [40 x i8] } { [31 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gk104_gr_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_sked_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_cwd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_gr_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_gr_init_setup_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_zcull_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gcc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_gpc_unk_2, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110b_gr_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110b_gr_init_sm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_pes_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_cbm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_be_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_fe_1, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk110_gr_fecs_ucode = external dso_local global %struct.gf100_gr_ucode, align 4
@gk110_gr_gpccs_ucode = external dso_local global %struct.gf100_gr_ucode, align 4
@gk110b_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gk110b_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.147, %struct.anon.148, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] }, [64 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.147, %struct.anon.148, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gf100_gr_oneinit_tiles, ptr @gf100_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gf100_gr_init_gpc_mmu, ptr null, ptr null, ptr @gk104_gr_init_vsc_stream_master, ptr @gf117_gr_init_zcull, ptr @gf100_gr_init_num_active_ltcs, ptr @gk104_gr_init_rop_active_fbps, ptr null, ptr null, ptr null, ptr @gf100_gr_init_fecs_exceptions, ptr null, ptr null, ptr @gk104_gr_init_sked_hww_esr, ptr @gf100_gr_init_419cc0, ptr @gk110_gr_init_419eb4, ptr null, ptr @gk104_gr_init_ppc_exceptions, ptr @gf100_gr_init_tex_hww_esr, ptr null, ptr @gf100_gr_init_shader_exceptions, ptr @gf100_gr_init_400054, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr @gk110b_gr_pack_mmio, %struct.anon.147 { ptr @gk110_gr_fecs_ucode }, %struct.anon.148 { ptr @gk110_gr_gpccs_ucode }, ptr @gf100_gr_rops, i32 0, i32 0, i32 2, ptr @gk110b_grctx, ptr null, ptr @gf100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41280, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41367, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41408, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [64 x i8] zeroinitializer }, align 32
@gk104_gr_init_main_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_gr_init_fe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_pri_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_rstr2d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_pd_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_gr_init_ds_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_scc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_gr_init_sked_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_gr_init_cwd_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_prop_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_gr_init_gpc_unk_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_setup_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_crstr_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_gr_init_setup_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_zcull_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_gpm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_gr_init_gpc_unk_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_gcc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_gpc_unk_2 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_tpccs_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_gr_init_tex_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_pe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110b_gr_init_l1c_0 = internal constant { [11 x %struct.gf100_gr_init], [48 x i8] } { [11 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299928, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299944, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299952, i8 1, i32 4, i32 150994944 }, %struct.gf100_gr_init { i32 4299956, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299960, i8 1, i32 4, i32 11570154 }, %struct.gf100_gr_init { i32 4299908, i8 1, i32 4, i32 66436 }, %struct.gf100_gr_init { i32 4299964, i8 1, i32 4, i32 672872006 }, %struct.gf100_gr_init { i32 4299968, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299904, i8 1, i32 4, i32 131632 }, %struct.gf100_gr_init { i32 4299980, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_mpc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110b_gr_init_sm_0 = internal constant { [13 x %struct.gf100_gr_init], [48 x i8] } { [13 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300288, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 4300448, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300516, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300452, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4300456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300468, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300476, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300544, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300496, i8 1, i32 4, i32 9750 }, %struct.gf100_gr_init { i32 4300660, i8 1, i32 4, i32 87381 }, %struct.gf100_gr_init { i32 4300672, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf117_gr_init_pes_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_gr_init_wwdx_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_gr_init_cbm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_be_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_fe_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@___asan_gen_.2 = private unnamed_addr constant [15 x i8] c"gk110b_gr_fwif\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 140, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [20 x i8] c"gk110b_gr_pack_mmio\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 66, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [10 x i8] c"gk110b_gr\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 105, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"gk110b_gr_init_l1c_0\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 34, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"gk110b_gr_init_sm_0\00", align 1
@___asan_gen_.15 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110b.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 49, i32 1 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @gk110b_gr_fwif, ptr @gk110b_gr_pack_mmio, ptr @gk110b_gr, ptr @gk110b_gr_init_l1c_0, ptr @gk110b_gr_init_sm_0], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110b_gr_fwif to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110b_gr_pack_mmio to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110b_gr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110b_gr_init_l1c_0 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110b_gr_init_sm_0 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk110b_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gk110b_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_load(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_tiles(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_sm_id(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_gpc_mmu(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_vsc_stream_master(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_gr_init_zcull(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_num_active_ltcs(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_rop_active_fbps(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_fecs_exceptions(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_sked_hww_esr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_419cc0(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk110_gr_init_419eb4(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_ppc_exceptions(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_tex_hww_esr(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_shader_exceptions(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_400054(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_rops(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @gk110b_gr_fwif, !1, !"gk110b_gr_fwif", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110b.c", i32 140, i32 1}
!2 = !{ptr @gk110b_gr, !3, !"gk110b_gr", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110b.c", i32 105, i32 1}
!4 = !{ptr @gk110b_gr_pack_mmio, !5, !"gk110b_gr_pack_mmio", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110b.c", i32 66, i32 1}
!6 = !{ptr @gk110b_gr_init_l1c_0, !7, !"gk110b_gr_init_l1c_0", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110b.c", i32 34, i32 1}
!8 = !{ptr @gk110b_gr_init_sm_0, !9, !"gk110b_gr_init_sm_0", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk110b.c", i32 49, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
