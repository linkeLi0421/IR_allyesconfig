; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
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

@gf119_gr_init_pd_0 = dso_local constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4218916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220144, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf119_gr_init_ds_0 = dso_local constant { [6 x %struct.gf100_gr_init], [32 x i8] } { [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216900, i8 1, i32 4, i32 16777215 }, %struct.gf100_gr_init { i32 4216912, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217088, i8 1, i32 4, i32 10292 }, %struct.gf100_gr_init { i32 4217096, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217128, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf119_gr_init_prop_0 = dso_local constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4293640, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4293792, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf119_gr_init_gpm_0 = dso_local constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295684, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295780, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295816, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295860, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf119_gr_init_gpc_unk_1 = dso_local constant { [9 x %struct.gf100_gr_init], [48 x i8] } { [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295936, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295976, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296448, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296480, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296192, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4296200, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296220, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf119_gr_init_tex_0 = dso_local constant { [6 x %struct.gf100_gr_init], [32 x i8] } { [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299440, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299464, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299448, i8 1, i32 4, i32 231 }, %struct.gf100_gr_init { i32 4299452, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299444, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf119_gr_init_sm_0 = dso_local constant { [15 x %struct.gf100_gr_init], [48 x i8] } { [15 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300288, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300448, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300452, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4300456, i8 1, i32 4, i32 33558784 }, %struct.gf100_gr_init { i32 4300460, i8 1, i32 4, i32 286263042 }, %struct.gf100_gr_init { i32 4300464, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4300468, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300488, i8 1, i32 4, i32 235288600 }, %struct.gf100_gr_init { i32 4300492, i8 1, i32 4, i32 235277830 }, %struct.gf100_gr_init { i32 4300496, i8 1, i32 4, i32 14360 }, %struct.gf100_gr_init { i32 4300500, i8 1, i32 4, i32 17892593 }, %struct.gf100_gr_init { i32 4300508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300544, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300588, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf119_gr_init_fe_1 = dso_local constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4210732, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210928, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211060, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf119_gr_fwif = internal constant { [3 x %struct.gf100_gr_fwif], [36 x i8] } { [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_load, ptr @gf119_gr, ptr null, ptr null }, %struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_nofw, ptr @gf119_gr, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gf119_gr_pack_mmio = internal constant { [27 x %struct.gf100_gr_pack], [40 x i8] } { [27 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_gr_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_gr_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_gr_init_setup_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_zcull_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gcc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_tpccs_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_sm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_be_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_fe_1, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gf100_gr_fecs_ucode = external dso_local global %struct.gf100_gr_ucode, align 4
@gf100_gr_gpccs_ucode = external dso_local global %struct.gf100_gr_ucode, align 4
@gf119_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gf119_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.147, %struct.anon.148, ptr, i32, i32, i32, ptr, ptr, ptr, [8 x %struct.nvkm_sclass] }, [68 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.147, %struct.anon.148, ptr, i32, i32, i32, ptr, ptr, ptr, [8 x %struct.nvkm_sclass] } { ptr @gf100_gr_oneinit_tiles, ptr @gf100_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gf100_gr_init_gpc_mmu, ptr null, ptr null, ptr @gf100_gr_init_vsc_stream_master, ptr @gf100_gr_init_zcull, ptr @gf100_gr_init_num_active_ltcs, ptr null, ptr null, ptr null, ptr null, ptr @gf100_gr_init_fecs_exceptions, ptr null, ptr @gf100_gr_init_40601c, ptr null, ptr @gf100_gr_init_419cc0, ptr @gf100_gr_init_419eb4, ptr null, ptr null, ptr @gf100_gr_init_tex_hww_esr, ptr null, ptr @gf100_gr_init_shader_exceptions, ptr @gf100_gr_init_400054, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr @gf119_gr_pack_mmio, %struct.anon.147 { ptr @gf100_gr_fecs_ucode }, %struct.anon.148 { ptr @gf100_gr_gpccs_ucode }, ptr @gf100_gr_rops, i32 0, i32 0, i32 0, ptr @gf119_grctx, ptr null, ptr @gf100_gr_zbc, [8 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 36921, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37015, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37271, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37527, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37056, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37312, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [68 x i8] zeroinitializer }, align 32
@gf100_gr_init_main_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_fe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_pri_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_rstr2d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_scc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_gr_init_gpc_unk_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_setup_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_crstr_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_gr_init_setup_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_zcull_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_gcc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_tpccs_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_pe_0 = internal constant { [8 x %struct.gf100_gr_init], [32 x i8] } { [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4298764, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4298768, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298772, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 4298820, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298828, i8 1, i32 4, i32 43288 }, %struct.gf100_gr_init { i32 4298832, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298880, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_l1c_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_wwdx_0 = internal constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299732, i8 1, i32 4, i32 8388608 }, %struct.gf100_gr_init { i32 4299740, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299768, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf119_gr_init_tpccs_1 = internal constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300076, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300104, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_mpc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_be_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"gf119_gr_init_pd_0\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 34, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"gf119_gr_init_ds_0\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 41, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"gf119_gr_init_prop_0\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 51, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"gf119_gr_init_gpm_0\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 58, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [24 x i8] c"gf119_gr_init_gpc_unk_1\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 67, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"gf119_gr_init_tex_0\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 80, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"gf119_gr_init_sm_0\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 117, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"gf119_gr_init_fe_1\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 136, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"gf119_gr_fwif\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 214, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"gf119_gr_pack_mmio\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 144, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [9 x i8] c"gf119_gr\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 179, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"gf119_gr_init_pe_0\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 90, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"gf119_gr_init_wwdx_0\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 102, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"gf119_gr_init_tpccs_1\00", align 1
@___asan_gen_.42 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 110, i32 1 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @gf119_gr_init_pd_0, ptr @gf119_gr_init_ds_0, ptr @gf119_gr_init_prop_0, ptr @gf119_gr_init_gpm_0, ptr @gf119_gr_init_gpc_unk_1, ptr @gf119_gr_init_tex_0, ptr @gf119_gr_init_sm_0, ptr @gf119_gr_init_fe_1, ptr @gf119_gr_fwif, ptr @gf119_gr_pack_mmio, ptr @gf119_gr, ptr @gf119_gr_init_pe_0, ptr @gf119_gr_init_wwdx_0, ptr @gf119_gr_init_tpccs_1], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_gr_init_pd_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_gr_init_ds_0 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_gr_init_prop_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_gr_init_gpm_0 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_gr_init_gpc_unk_1 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_gr_init_tex_0 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_gr_init_sm_0 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_gr_init_fe_1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_gr_fwif to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_gr_pack_mmio to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_gr to i32), i32 316, i32 384, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_gr_init_pe_0 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_gr_init_wwdx_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_gr_init_tpccs_1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf119_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gf119_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #2
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
declare dso_local void @gf100_gr_init_vsc_stream_master(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_zcull(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_num_active_ltcs(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_fecs_exceptions(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_40601c(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_419cc0(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_419eb4(ptr noundef) #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @gf119_gr_init_pd_0, !1, !"gf119_gr_init_pd_0", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c", i32 34, i32 1}
!2 = !{ptr @gf119_gr_init_ds_0, !3, !"gf119_gr_init_ds_0", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c", i32 41, i32 1}
!4 = !{ptr @gf119_gr_init_prop_0, !5, !"gf119_gr_init_prop_0", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c", i32 51, i32 1}
!6 = !{ptr @gf119_gr_init_gpm_0, !7, !"gf119_gr_init_gpm_0", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c", i32 58, i32 1}
!8 = !{ptr @gf119_gr_init_gpc_unk_1, !9, !"gf119_gr_init_gpc_unk_1", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c", i32 67, i32 1}
!10 = !{ptr @gf119_gr_init_tex_0, !11, !"gf119_gr_init_tex_0", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c", i32 80, i32 1}
!12 = !{ptr @gf119_gr_init_sm_0, !13, !"gf119_gr_init_sm_0", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c", i32 117, i32 1}
!14 = !{ptr @gf119_gr_init_fe_1, !15, !"gf119_gr_init_fe_1", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c", i32 136, i32 1}
!16 = !{ptr @gf119_gr_fwif, !17, !"gf119_gr_fwif", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c", i32 214, i32 1}
!18 = !{ptr @gf119_gr, !19, !"gf119_gr", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c", i32 179, i32 1}
!20 = !{ptr @gf119_gr_pack_mmio, !21, !"gf119_gr_pack_mmio", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c", i32 144, i32 1}
!22 = !{ptr @gf119_gr_init_pe_0, !23, !"gf119_gr_init_pe_0", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c", i32 90, i32 1}
!24 = !{ptr @gf119_gr_init_wwdx_0, !25, !"gf119_gr_init_wwdx_0", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c", i32 102, i32 1}
!26 = !{ptr @gf119_gr_init_tpccs_1, !27, !"gf119_gr_init_tpccs_1", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf119.c", i32 110, i32 1}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
