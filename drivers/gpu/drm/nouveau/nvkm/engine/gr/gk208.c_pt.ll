; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/gk208.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk208.c"
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

@gk208_gr_init_gpc_unk_0 = dso_local constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294148, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294272, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294420, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4293508, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk208_gr_fwif = internal constant { [3 x %struct.gf100_gr_fwif], [36 x i8] } { [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_load, ptr @gk208_gr, ptr null, ptr null }, %struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_nofw, ptr @gk208_gr, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gk208_gr_pack_mmio = internal constant { [31 x %struct.gf100_gr_pack], [40 x i8] } { [31 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gk208_gr_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk208_gr_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_sked_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_cwd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk208_gr_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk208_gr_init_setup_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_zcull_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gcc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_gpc_unk_2, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk208_gr_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk208_gr_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_sm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_pes_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_cbm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_be_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_fe_1, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk208_gr_fecs_ucode = internal global { %struct.gf100_gr_ucode, [16 x i8] } { %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gk208_grhub_code, i32 2560 }, %struct.nvkm_blob { ptr @gk208_grhub_data, i32 772 } }, [16 x i8] zeroinitializer }, align 32
@gk208_gr_gpccs_ucode = internal global { %struct.gf100_gr_ucode, [16 x i8] } { %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gk208_grgpc_code, i32 1536 }, %struct.nvkm_blob { ptr @gk208_grgpc_data, i32 108 } }, [16 x i8] zeroinitializer }, align 32
@gk208_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gk208_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.147, %struct.anon.148, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] }, [64 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.147, %struct.anon.148, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gf100_gr_oneinit_tiles, ptr @gf100_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gf100_gr_init_gpc_mmu, ptr null, ptr null, ptr @gk104_gr_init_vsc_stream_master, ptr @gf117_gr_init_zcull, ptr @gf100_gr_init_num_active_ltcs, ptr @gk104_gr_init_rop_active_fbps, ptr null, ptr null, ptr null, ptr @gf100_gr_init_fecs_exceptions, ptr null, ptr null, ptr @gk104_gr_init_sked_hww_esr, ptr @gf100_gr_init_419cc0, ptr null, ptr null, ptr @gk104_gr_init_ppc_exceptions, ptr @gf100_gr_init_tex_hww_esr, ptr null, ptr @gf100_gr_init_shader_exceptions, ptr @gf100_gr_init_400054, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr @gk208_gr_pack_mmio, %struct.anon.147 { ptr @gk208_gr_fecs_ucode }, %struct.anon.148 { ptr @gk208_gr_gpccs_ucode }, ptr @gf100_gr_rops, i32 0, i32 0, i32 1, ptr @gk208_grctx, ptr null, ptr @gf100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41280, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41367, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41408, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [64 x i8] zeroinitializer }, align 32
@gk208_gr_init_main_0 = internal constant { [12 x %struct.gf100_gr_init], [32 x i8] } { [12 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4194432, i8 1, i32 4, i32 3179458 }, %struct.gf100_gr_init { i32 4194440, i8 1, i32 4, i32 114663 }, %struct.gf100_gr_init { i32 4194444, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194448, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 4194620, i8 1, i32 4, i32 3736055 }, %struct.gf100_gr_init { i32 4194624, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4194628, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194632, i8 1, i32 4, i32 272 }, %struct.gf100_gr_init { i32 4194616, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194608, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194596, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gk110_gr_init_fe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_pri_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_rstr2d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_pd_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk208_gr_init_ds_0 = internal constant { [6 x %struct.gf100_gr_init], [32 x i8] } { [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216900, i8 1, i32 4, i32 16777215 }, %struct.gf100_gr_init { i32 4216912, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217088, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217096, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217128, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_scc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_gr_init_sked_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_gr_init_cwd_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_prop_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_setup_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_crstr_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk208_gr_init_setup_1 = internal constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294856, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294864, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4294868, i8 1, i32 4, i32 513 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_zcull_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_gpm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_gr_init_gpc_unk_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_gcc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_gpc_unk_2 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_tpccs_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk208_gr_init_tex_0 = internal constant { [7 x %struct.gf100_gr_init], [48 x i8] } { [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299440, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299464, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299448, i8 1, i32 4, i32 231 }, %struct.gf100_gr_init { i32 4299452, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299444, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299432, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_gr_init_pe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk208_gr_init_l1c_0 = internal constant { [11 x %struct.gf100_gr_init], [48 x i8] } { [11 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299928, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299944, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299952, i8 1, i32 4, i32 16777216 }, %struct.gf100_gr_init { i32 4299956, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299960, i8 1, i32 4, i32 11570154 }, %struct.gf100_gr_init { i32 4299908, i8 1, i32 4, i32 66436 }, %struct.gf100_gr_init { i32 4299964, i8 1, i32 4, i32 672872006 }, %struct.gf100_gr_init { i32 4299968, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299904, i8 1, i32 4, i32 560 }, %struct.gf100_gr_init { i32 4299980, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_mpc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk110_gr_init_sm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_gr_init_pes_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_gr_init_wwdx_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_gr_init_cbm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_be_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_fe_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk208_grhub_data = internal global { [193 x i32], [220 x i8] } { [193 x i32] [i32 768, i32 772, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68675868], [220 x i8] zeroinitializer }, align 32
@gk208_grhub_code = internal global { <{ [602 x i32], [38 x i32] }>, [640 x i8] } { <{ [602 x i32], [38 x i32] }> <{ [602 x i32] [i32 51252981, i32 -1744775016, i32 -2031091239, i32 -192306168, i32 34540315, i32 194686, i32 -1731985160, i32 59028999, i32 -1241477701, i32 -1900738432, i32 26195200, i32 -268332874, i32 -642445420, i32 -201263103, i32 -661126863, i32 31037440, i32 200575396, i32 126469153, i32 -1157393226, i32 -1867120483, i32 10393608, i32 -1241407592, i32 -2064645760, i32 14202127, i32 -134139148, i32 -252923392, i32 8396745, i32 217448906, i32 -1945846528, i32 -821966336, i32 -859307828, i32 -165940193, i32 -327285238, i32 9371648, i32 -3210805, i32 -2147420160, i32 -167654400, i32 79495183, i32 -906957646, i32 516550687, i32 30015616, i32 -1124070154, i32 -905933820, i32 13422337, i32 -199242552, i32 16315931, i32 -1712286531, i32 922779648, i32 652802, i32 8389821, i32 183894534, i32 -2012955392, i32 -822018048, i32 -1962999672, i32 -165940088, i32 -1712286531, i32 385908736, i32 652802, i32 16254141, i32 -1712286531, i32 922779648, i32 652802, i32 8389821, i32 183894534, i32 -2012955392, i32 -822018048, i32 -1962999672, i32 -166988664, i32 -1712286531, i32 385908736, i32 652802, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 469036964, i32 -123751700, i32 -258687744, i32 8389017, i32 167117367, i32 -1123762944, i32 96206228, i32 -2146497548, i32 -167656448, i32 79495179, i32 -50292240, i32 200541678, i32 -973045736, i32 980481, i32 8389821, i32 267780551, i32 -268124928, i32 -1412955751, i32 280278528, i32 -938690064, i32 -457834066, i32 96402705, i32 29687936, i32 -1124070410, i32 -989819388, i32 15650561, i32 -199236368, i32 -828836341, i32 99220736, i32 29884544, i32 -1124069642, i32 79738372, i32 469028260, i32 44812511, i32 -1961092108, i32 -821967616, i32 -1259339589, i32 280277023, i32 183704564, i32 12090885, i32 621736960, i32 -1241470008, i32 -1175449420, i32 314175500, i32 29687936, i32 -1124070410, i32 -989820156, i32 12308225, i32 -200098872, i32 -1799490021, i32 -2147378704, i32 -167635200, i32 79495177, i32 -1594294024, i32 -1199701494, i32 -1594097664, i32 201916664, i32 38468736, i32 -1124070922, i32 34242052, i32 151058432, i32 1258061837, i32 652802, i32 176030909, i32 16252930, i32 -58716404, i32 217449039, i32 201637120, i32 1258061835, i32 849410, i32 -58719043, i32 251003471, i32 201637120, i32 1258061834, i32 849410, i32 176030909, i32 16252930, i32 -1712286531, i32 922779651, i32 652802, i32 377357501, i32 51249154, i32 145534, i32 -58669891, i32 217449031, i32 201637120, i32 1258061825, i32 849410, i32 176030909, i32 210894850, i32 1190952961, i32 849410, i32 34342077, i32 38468736, i32 -1124070154, i32 34242052, i32 36142592, i32 1107331072, i32 536905986, i32 10080002, i32 -167182699, i32 -1896480626, i32 -2138386624, i32 -1241078346, i32 -356843104, i32 75544064, i32 -201223498, i32 -457775077, i32 -219169784, i32 -1712286531, i32 385908739, i32 652802, i32 16254141, i32 33882240, i32 -1124069386, i32 -2147414268, i32 -167573760, i32 79495183, i32 79495416, i32 1090521086, i32 298795520, i32 152168192, i32 135575041, i32 33559806, i32 302006274, i32 -1124072714, i32 97140996, i32 -1124069122, i32 117456932, i32 -1124072714, i32 537084420, i32 16842880, i32 -1124072714, i32 537149956, i32 16843904, i32 -1124072714, i32 537608708, i32 16844928, i32 -1124072714, i32 537674244, i32 16850048, i32 -1124072714, i32 17011204, i32 50921600, i32 -1124072458, i32 -2029747708, i32 67125248, i32 -1124072714, i32 1074004484, i32 49677056, i32 -201016064, i32 76419121, i32 1702772886, i32 -21889024, i32 -1248792121, i32 -185597183, i32 34583839, i32 532349185, i32 18003460, i32 16973952, i32 -1124072970, i32 67141636, i32 128513, i32 4261053, i32 2114064129, i32 2113930925, i32 251659964, i32 117341712, i32 956416, i32 2113998744, i32 -1795161824, i32 8390676, i32 83231168, i32 -2147173120, i32 -167657216, i32 79495172, i32 318779575, i32 -1241505861, i32 8389365, i32 267780563, i32 -1241203456, i32 280365077, i32 135575041, i32 1753096114, i32 532348930, i32 33789952, i32 1344274564, i32 134500024, i32 2116006400, i32 -1207959409, i32 68686, i32 -1887505219, i32 1320681472, i32 2113929476, i32 -1207959409, i32 65614, i32 -1887567345, i32 1320681472, i32 2113931264, i32 -939523995, i32 200548351, i32 72268025, i32 1702756360, i32 532348928, i32 4241152, i32 20100736, i32 263461876, i32 117341696, i32 2113933056, i32 -2147481939, i32 -167640832, i32 79495169, i32 435164349, i32 805339167, i32 128514, i32 687080637, i32 3273728, i32 931008525, i32 32768000, i32 31764980, i32 -954469056, i32 -258687744, i32 8389785, i32 167117367, i32 -2130395904, i32 -821903360, i32 8519697, i32 583992001, i32 521390080, i32 -931722252, i32 200548131, i32 -1306461867, i32 -258687726, i32 8390553, i32 167117367, i32 -201016064, i32 838074674, i32 142704130, i32 -258687744, i32 8390553, i32 167117335, i32 -66798336, i32 -258687712, i32 8390297, i32 167117367, i32 -201016064, i32 -2122448591, i32 -1799553016, i32 -2147051024, i32 -167635200, i32 79495177, i32 -114356492, i32 -200101344, i32 854851890, i32 142704130, i32 -2145321984, i32 -167591936, i32 79495170, i32 -938275084, i32 200548131, i32 20050957, i32 2114073332, i32 33556609, i32 -1023377407, i32 194050, i32 -1799551811, i32 -2147182096, i32 -167635200, i32 79495177, i32 -13627659, i32 -201202512, i32 -223212517, i32 532862, i32 -1337979148, i32 468976356, i32 -258687700, i32 8390553, i32 167117367, i32 -201016064, i32 854851890, i32 142704130, i32 -258687744, i32 8390553, i32 167117335, i32 -201016064, i32 -275508978, i32 32894992, i32 194686, i32 -18608395, i32 703603901, i32 805339167, i32 194050, i32 250938557, i32 16383698, i32 -1996586759, i32 -108988159, i32 -106890864, i32 -103745104, i32 -1108280864, i32 33573380, i32 -1006589233, i32 200541355, i32 1309674787, i32 -288417280, i32 419450624, i32 2113994703, i32 -1224736764, i32 235143344, i32 486555649, i32 -1124069642, i32 11265028, i32 202109953, i32 21893133, i32 294464, i32 11265024, i32 1443623940, i32 1074202766, i32 25982, i32 8454066, i32 267780612, i32 -1912292096, i32 2118125316, i32 -1308622747, i32 50364671, i32 1046018, i32 -20511555, i32 49189968, i32 1074200719, i32 2113990587, i32 -2147483547, i32 -167640576, i32 79495183, i32 -125959409, i32 4915202, i32 -1900039679, i32 2118123844, i32 1258291343, i32 -1329789692, i32 -189486081, i32 8391691, i32 200672007, i32 1074052352, i32 183894272, i32 -66798336, i32 -52364048, i32 -55509808, i32 -57607008, i32 8978048, i32 16548092, i32 -134204684, i32 284553217, i32 1888419762, i32 -1887551423, i32 16252928, i32 1078030478, i32 25982, i32 -185532494, i32 -216271856, i32 5112056, i32 1088811010, i32 -266279440, i32 8392933, i32 251003269, i32 251968768, i32 32683528, i32 -235070476, i32 -251395867, i32 -2147417883, i32 -167672576, i32 79495182, i32 8388856, i32 267780643, i32 -1308312320, i32 -1978364161, i32 9403968, i32 -1895845376, i32 2118232204, i32 -134217585, i32 -2080342016, i32 1046018, i32 9372861, i32 -3210620, i32 100662528, i32 -118088716, i32 -258687744, i32 8390041, i32 167117367, i32 168082688, i32 12090892, i32 -2131444480, i32 -167606016, i32 79495183, i32 46203008, i32 -1124072714, i32 -2097119228, i32 194050, i32 118424765, i32 466302, i32 46137472, i32 -1124072714, i32 785924, i32 -1239471376, i32 548799524, i32 -258687742, i32 8390809, i32 167117367, i32 -2147173120, i32 -167608064, i32 79495170, i32 210, i32 36040832, i32 42467456, i32 -1124072714, i32 1108345092, i32 602931712, i32 85129730, i32 -1799552008, i32 -2146919952, i32 -167635200, i32 79495177, i32 -1233059432, i32 43522068, i32 136689280, i32 -1257958659, i32 -1799547391, i32 -2146854416, i32 -167627008, i32 79495177, i32 42008704, i32 -1124072970, i32 -2147417596, i32 -167606272, i32 79495170, i32 -268369855, i32 33162771, i32 -1123813371, i32 161083540, i32 35061888, i32 -1124070922, i32 -258687740, i32 8390041, i32 167117335, i32 -133907200, i32 120946176, i32 2114718208, i32 251658424, i32 119373317, i32 -1744766976, i32 8405251, i32 66454145, i32 -1123762944, i32 -13319116, i32 1158552564, i32 1408238080, i32 87423494, i32 1318585336, i32 -2125490048, i32 36734, i32 -1240977226, i32 468975890, i32 369334495, i32 42008704, i32 -1124072458, i32 1073788164, i32 -268369855, i32 33162771, i32 -133957626, i32 -2147217920, i32 -167575040, i32 79495182, i32 50331790, i32 -251597105, i32 -199229212, i32 301266203, i32 201520134, i32 -25292785, i32 301203462, i32 2114064155, i32 2113930925, i32 2113930940, i32 -1124071730, i32 112033524, i32 120946176, i32 369203200, i32 8398013, i32 49676549, i32 -1308312320, i32 -1526690273, i32 9403969, i32 33353728, i32 -1241371408, i32 -218300124, i32 -1895845371, i32 2118231300, i32 2113929359, i32 -1124072938, i32 1207730212, i32 194050, i32 753927357, i32 52475393, i32 38468736, i32 -1124072714, i32 28110852, i32 184985072, i32 825344, i32 234950040, i32 20807168, i32 2114456064, i32 2113929452, i32 -201326070, i32 201986561, i32 47230, i32 494798095, i32 49545223, i32 2114064173, i32 -1124071763, i32 117341940, i32 36142592, i32 113016320, i32 2129968384, i32 -201324883, i32 26742801, i32 85065024, i32 2114391028, i32 -134215629], [38 x i32] zeroinitializer }>, [640 x i8] zeroinitializer }, align 32
@gk208_grgpc_code = internal global { <{ [369 x i32], [15 x i32] }>, [384 x i8] } { <{ [369 x i32], [15 x i32] }> <{ [369 x i32] [i32 51646197, i32 -1744775016, i32 -2031091239, i32 -192306168, i32 34540315, i32 194686, i32 -1731985160, i32 59028999, i32 -1241477701, i32 -1900738432, i32 26195200, i32 -268332874, i32 -642445420, i32 -201263103, i32 -661126863, i32 31037440, i32 200575396, i32 126469153, i32 -1157393226, i32 -1867120483, i32 10393608, i32 -1241407592, i32 -2064645760, i32 14202127, i32 -134139148, i32 -252923392, i32 8396745, i32 217448906, i32 -1945846528, i32 -821966336, i32 -859307828, i32 -165940193, i32 -327285238, i32 9371648, i32 -3210805, i32 -2147420160, i32 -167654400, i32 79495183, i32 -906957646, i32 516550687, i32 30015616, i32 -1124070154, i32 -905933820, i32 13422337, i32 -199242552, i32 16315931, i32 -1712286531, i32 922779648, i32 652802, i32 8389821, i32 183894534, i32 -2012955392, i32 -822018048, i32 -1962999672, i32 -165940088, i32 -1712286531, i32 385908736, i32 652802, i32 16254141, i32 -1712286531, i32 922779648, i32 652802, i32 8389821, i32 183894534, i32 -2012955392, i32 -822018048, i32 -1962999672, i32 -166988664, i32 -1712286531, i32 385908736, i32 652802, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 469036964, i32 -123751700, i32 -258687744, i32 8389017, i32 167117367, i32 -1123762944, i32 96206228, i32 -2146497548, i32 -167656448, i32 79495179, i32 -50292240, i32 200541678, i32 -973045736, i32 980481, i32 8389821, i32 267780551, i32 -268124928, i32 -1412955751, i32 280278528, i32 -938690064, i32 -457834066, i32 96402705, i32 29687936, i32 -1124070410, i32 -989819388, i32 15650561, i32 -199236368, i32 -828836341, i32 99220736, i32 29884544, i32 -1124069642, i32 79738372, i32 469028260, i32 44812511, i32 -1961092108, i32 -821967616, i32 -1259339589, i32 280277023, i32 183704564, i32 12090885, i32 621736960, i32 -1241470008, i32 -1175449420, i32 314175500, i32 29687936, i32 -1124070410, i32 -989820156, i32 12308225, i32 -200098872, i32 -1799490021, i32 -2147378704, i32 -167635200, i32 79495177, i32 -1594294024, i32 -1199701494, i32 -1594097664, i32 201916664, i32 38468736, i32 -1124070922, i32 34242052, i32 151058432, i32 1258061837, i32 652802, i32 176030909, i32 16252930, i32 -58716404, i32 217449039, i32 201637120, i32 1258061835, i32 849410, i32 -58719043, i32 251003471, i32 201637120, i32 1258061834, i32 849410, i32 176030909, i32 16252930, i32 -1712286531, i32 922779651, i32 652802, i32 377357501, i32 51249154, i32 145534, i32 -58669891, i32 217449031, i32 201637120, i32 1258061825, i32 849410, i32 176030909, i32 210894850, i32 1190952961, i32 849410, i32 34342077, i32 38468736, i32 -1124070154, i32 34242052, i32 36142592, i32 1107331072, i32 536905986, i32 10080002, i32 -167182699, i32 -1896480626, i32 -2138386624, i32 -1241078346, i32 -356843104, i32 75544064, i32 -201223498, i32 -457775077, i32 -219169784, i32 -1712286531, i32 385908739, i32 652802, i32 16254141, i32 -5054215, i32 1083708558, i32 36734, i32 -5111537, i32 1083972750, i32 36734, i32 16310524, i32 4261053, i32 1167170, i32 17371623, i32 -33024842, i32 33685524, i32 -166592448, i32 79495170, i32 -33258431, i32 4194320, i32 62983, i32 67241149, i32 -167509952, i32 79495170, i32 -2112867852, i32 -821984768, i32 16973858, i32 -1155586832, i32 850789426, i32 84063489, i32 -2113535051, i32 -821983744, i32 45416482, i32 254064132, i32 29950080, i32 -1124072714, i32 204508676, i32 31846480, i32 884810941, i32 1702773949, i32 -156237824, i32 235664384, i32 -222625521, i32 89128196, i32 -1241435978, i32 -524943072, i32 19312644, i32 -1243472908, i32 78972675, i32 16810504, i32 2281218, i32 630535357, i32 -1073709048, i32 390657, i32 8389821, i32 100008385, i32 -1744519936, i32 261619726, i32 18906625, i32 3128064, i32 -1744814149, i32 261619982, i32 18906626, i32 84842496, i32 -1157566467, i32 1052442670, i32 34510848, i32 2114129816, i32 -1744830176, i32 -268630258, i32 3062528, i32 -1241497925, i32 8389173, i32 66453971, i32 -1241203456, i32 901122085, i32 18920966, i32 -1241435978, i32 884344868, i32 2117054984, i32 -1157627288, i32 1069219887, i32 16809984, i32 259586, i32 616367293, i32 -2145441296, i32 -167628800, i32 79495170, i32 -201316108, i32 604831793, i32 14206, i32 -1326185996, i32 418645220, i32 25296413, i32 549258754, i32 -1241246979, i32 519897572, i32 1637893, i32 335742, i32 -1797648652, i32 -168816401, i32 49839617, i32 -854658048, i32 -2131164935, i32 -117339906, i32 -107939456, i32 -105842272, i32 -102696496, i32 1241824752, i32 -1429274112, i32 78365696, i32 220138484, i32 436227620, i32 1325461199, i32 -3204864, i32 294400, i32 1073810944, i32 251010304, i32 1074052352, i32 183894272, i32 -66798336, i32 -52364048, i32 -55509808, i32 -57607008, i32 8978048, i32 16548092, i32 -134204684, i32 -1744761087, i32 -21298162, i32 -1895845372, i32 2118161432, i32 -134217585, i32 -2145382656, i32 -167672576, i32 79495183, i32 -491386866, i32 -48499711, i32 134280689, i32 33617393, i32 25493632, i32 -1124069386, i32 -2147420156, i32 -167608064, i32 79495183, i32 2114392564, i32 2113930489, i32 -1124072938, i32 1207730212, i32 194050, i32 753927357, i32 52475393, i32 38468736, i32 -1124072714, i32 28110852, i32 -1962760720, i32 -1739587584, i32 -994704372, i32 12368655, i32 -1744827240, i32 917773, i32 81278, i32 -1962824464, i32 -1739571200, i32 -994704372, i32 12368655, i32 -1744761704, i32 261620237, i32 134237702, i32 81278, i32 -268325648, i32 9110693, i32 211308592, i32 264549892, i32 -1744782149, i32 228065804, i32 135239683, i32 2114060366, i32 2113929533, i32 -201326070, i32 317982209, i32 36142599, i32 82148864, i32 63488], [15 x i32] zeroinitializer }>, [384 x i8] zeroinitializer }, align 32
@gk208_grgpc_data = internal global { <{ i32, i32, i32, i32, [23 x i32] }>, [52 x i8] } { <{ i32, i32, i32, i32, [23 x i32] }> <{ i32 108, i32 108, i32 108, i32 108, [23 x i32] zeroinitializer }>, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [24 x i8] c"gk208_gr_init_gpc_unk_0\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 62, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"gk208_gr_fwif\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 198, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"gk208_gr_pack_mmio\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 105, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"gk208_gr_fecs_ucode\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 146, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"gk208_gr_gpccs_ucode\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 156, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"gk208_gr\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 164, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"gk208_gr_init_main_0\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 36, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"gk208_gr_init_ds_0\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 52, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"gk208_gr_init_setup_1\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 71, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"gk208_gr_init_tex_0\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 79, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"gk208_gr_init_l1c_0\00", align 1
@___asan_gen_.36 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk208.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 90, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"gk208_grhub_data\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 2, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"gk208_grhub_code\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgk208.fuc5.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 209, i32 17 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"gk208_grgpc_code\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 44, i32 17 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"gk208_grgpc_data\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgk208.fuc5.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 2, i32 17 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @gk208_gr_init_gpc_unk_0, ptr @gk208_gr_fwif, ptr @gk208_gr_pack_mmio, ptr @gk208_gr_fecs_ucode, ptr @gk208_gr_gpccs_ucode, ptr @gk208_gr, ptr @gk208_gr_init_main_0, ptr @gk208_gr_init_ds_0, ptr @gk208_gr_init_setup_1, ptr @gk208_gr_init_tex_0, ptr @gk208_gr_init_l1c_0, ptr @gk208_grhub_data, ptr @gk208_grhub_code, ptr @gk208_grgpc_code, ptr @gk208_grgpc_data], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_gr_init_gpc_unk_0 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_gr_fwif to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_gr_pack_mmio to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_gr_fecs_ucode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_gr_gpccs_ucode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_gr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_gr_init_main_0 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_gr_init_ds_0 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_gr_init_setup_1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_gr_init_tex_0 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_gr_init_l1c_0 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_grhub_data to i32), i32 772, i32 992, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_grhub_code to i32), i32 2560, i32 3200, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_grgpc_code to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk208_grgpc_data to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk208_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gk208_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #2
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @gk208_gr_init_gpc_unk_0, !1, !"gk208_gr_init_gpc_unk_0", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk208.c", i32 62, i32 1}
!2 = !{ptr @gk208_gr_fwif, !3, !"gk208_gr_fwif", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk208.c", i32 198, i32 1}
!4 = !{ptr @gk208_gr, !5, !"gk208_gr", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk208.c", i32 164, i32 1}
!6 = !{ptr @gk208_gr_pack_mmio, !7, !"gk208_gr_pack_mmio", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk208.c", i32 105, i32 1}
!8 = !{ptr @gk208_gr_init_main_0, !9, !"gk208_gr_init_main_0", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk208.c", i32 36, i32 1}
!10 = !{ptr @gk208_gr_init_ds_0, !11, !"gk208_gr_init_ds_0", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk208.c", i32 52, i32 1}
!12 = !{ptr @gk208_gr_init_setup_1, !13, !"gk208_gr_init_setup_1", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk208.c", i32 71, i32 1}
!14 = !{ptr @gk208_gr_init_tex_0, !15, !"gk208_gr_init_tex_0", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk208.c", i32 79, i32 1}
!16 = !{ptr @gk208_gr_init_l1c_0, !17, !"gk208_gr_init_l1c_0", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk208.c", i32 90, i32 1}
!18 = !{ptr @gk208_gr_fecs_ucode, !19, !"gk208_gr_fecs_ucode", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk208.c", i32 146, i32 1}
!20 = !{ptr @gk208_grhub_code, !21, !"gk208_grhub_code", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgk208.fuc5.h", i32 209, i32 17}
!22 = !{ptr @gk208_grhub_data, !23, !"gk208_grhub_data", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgk208.fuc5.h", i32 2, i32 17}
!24 = !{ptr @gk208_gr_gpccs_ucode, !25, !"gk208_gr_gpccs_ucode", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk208.c", i32 156, i32 1}
!26 = !{ptr @gk208_grgpc_code, !27, !"gk208_grgpc_code", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgk208.fuc5.h", i32 44, i32 17}
!28 = !{ptr @gk208_grgpc_data, !29, !"gk208_grgpc_data", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgk208.fuc5.h", i32 2, i32 17}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
