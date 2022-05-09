; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.138, %struct.anon.144, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.145], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.135 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.135 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.138 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.142, %struct.anon.143, %struct.nvkm_engine }
%struct.anon.142 = type { i32, ptr, i32, i8 }
%struct.anon.143 = type { i32, ptr, i32, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.144 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.145 = type { i8, i8 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gm107_grctx_init_gpc_unk_0 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4293504, i8 1, i32 4, i32 86 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gm107_grctx_init_wwdx_0 = dso_local constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308736, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4308740, i8 1, i32 4, i32 102793446 }, %struct.gf100_gr_init { i32 4308744, i8 1, i32 4, i32 33790116 }, %struct.gf100_gr_init { i32 4308748, i8 1, i32 4, i32 241340514 }, %struct.gf100_gr_init { i32 4308752, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4308756, i8 1, i32 4, i32 230 }, %struct.gf100_gr_init { i32 4308944, i8 1, i32 4, i32 9437443 }, %struct.gf100_gr_init { i32 4308960, i8 1, i32 4, i32 -2147483648 }, %struct.gf100_gr_init { i32 4308964, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gm107_grctx_pack_hub = internal constant { [11 x %struct.gf100_gr_pack], [40 x i8] } { [11 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_grctx_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_grctx_init_memfmt_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_grctx_init_cwd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk208_grctx_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_grctx_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_be_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gm107_grctx_pack_gpc_0 = internal constant { [6 x %struct.gf100_gr_pack], [48 x i8] } { [6 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gm107_grctx_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk208_grctx_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_zcull_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gm107_grctx_pack_gpc_1 = internal constant { [5 x %struct.gf100_gr_pack], [56 x i8] } { [5 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gk208_grctx_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_grctx_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_gpc_unk_2, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_gcc_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gf100_grctx_pack_zcull = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gm107_grctx_pack_tpc = internal constant { [6 x %struct.gf100_gr_pack], [48 x i8] } { [6 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf117_grctx_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_sm_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gm107_grctx_pack_ppc = internal constant { [4 x %struct.gf100_gr_pack], [32 x i8] } { [4 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gk104_grctx_init_pes_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_cbm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_grctx_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gm107_grctx_pack_icmd = internal constant { [2 x %struct.gf100_gr_pack], [16 x i8] } { [2 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gm107_grctx_init_icmd_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [16 x i8] zeroinitializer }, align 32
@gm107_grctx_pack_mthd = internal constant { [3 x %struct.gf100_gr_pack], [40 x i8] } { [3 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gm107_grctx_init_b097_0, i32 45207 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_902d_0, i32 36909 }, %struct.gf100_gr_pack zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gm107_grctx = dso_local constant { %struct.gf100_grctx_func, [36 x i8] } { %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr @gm107_grctx_pack_hub, ptr @gm107_grctx_pack_gpc_0, ptr @gm107_grctx_pack_gpc_1, ptr @gf100_grctx_pack_zcull, ptr @gm107_grctx_pack_tpc, ptr @gm107_grctx_pack_ppc, ptr @gm107_grctx_pack_icmd, ptr @gm107_grctx_pack_mthd, ptr null, ptr @gm107_grctx_generate_bundle, i32 12288, i32 384, i32 704, ptr @gm107_grctx_generate_pagepool, i32 32768, ptr @gm107_grctx_generate_attrib, i32 4080, i32 2720, i32 6144, i32 4096, i32 0, ptr null, ptr @gm107_grctx_generate_sm_id, ptr @gf100_grctx_generate_tpc_nr, i8 0, ptr null, ptr @gf117_grctx_generate_rop_mapping, ptr @gk104_grctx_generate_alpha_beta_tables, ptr null, ptr @gf117_grctx_generate_dist_skip_table, ptr @gm107_grctx_generate_r406500, ptr @gk104_grctx_generate_gpc_tpc_nr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm107_grctx_generate_r419e00, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gf100_grctx_init_main_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_fe_0 = internal constant { [18 x %struct.gf100_gr_init], [64 x i8] } { [18 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4210692, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210724, i8 1, i32 4, i32 57344 }, %struct.gf100_gr_init { i32 4210728, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210856, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210888, i8 1, i32 4, i32 -134217585 }, %struct.gf100_gr_init { i32 4210896, i8 6, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210936, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210944, i8 10, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210992, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211024, i8 1, i32 4, i32 46 }, %struct.gf100_gr_init { i32 4211028, i8 1, i32 4, i32 1024 }, %struct.gf100_gr_init { i32 4211032, i8 1, i32 4, i32 512 }, %struct.gf100_gr_init { i32 4211044, i8 1, i32 4, i32 69 }, %struct.gf100_gr_init { i32 4211068, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211092, i8 1, i32 4, i32 16779008 }, %struct.gf100_gr_init { i32 4211104, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211200, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [64 x i8] zeroinitializer }, align 32
@gk110_grctx_init_pri_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_grctx_init_memfmt_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_ds_0 = internal constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216832, i8 1, i32 4, i32 260047295 }, %struct.gf100_gr_init { i32 4216880, i8 1, i32 4, i32 178262016 }, %struct.gf100_gr_init { i32 4216884, i8 1, i32 4, i32 134217728 }, %struct.gf100_gr_init { i32 4216888, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4216916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4216944, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4217344, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217368, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217372, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gk110_grctx_init_cwd_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_pd_0 = internal constant { [12 x %struct.gf100_gr_init], [32 x i8] } { [12 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4218912, i8 1, i32 4, i32 121700353 }, %struct.gf100_gr_init { i32 4218920, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4220072, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220076, i8 1, i32 4, i32 16383 }, %struct.gf100_gr_init { i32 4220080, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220096, i8 1, i32 4, i32 -2143288704 }, %struct.gf100_gr_init { i32 4220100, i8 1, i32 4, i32 67174399 }, %struct.gf100_gr_init { i32 4220104, i8 1, i32 4, i32 25166335 }, %struct.gf100_gr_init { i32 4220108, i8 9, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220156, i8 1, i32 4, i32 554 }, %struct.gf100_gr_init { i32 4220160, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gk208_grctx_init_rstr2d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_grctx_init_scc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_be_0 = internal constant { [9 x %struct.gf100_gr_init], [48 x i8] } { [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4229120, i8 1, i32 4, i32 847260220 }, %struct.gf100_gr_init { i32 4229124, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4229128, i8 1, i32 4, i32 268689413 }, %struct.gf100_gr_init { i32 4229184, i8 1, i32 4, i32 11 }, %struct.gf100_gr_init { i32 4229376, i8 1, i32 4, i32 -1333741567 }, %struct.gf100_gr_init { i32 4229380, i8 1, i32 4, i32 1661173761 }, %struct.gf100_gr_init { i32 4229384, i8 1, i32 4, i32 46665775 }, %struct.gf100_gr_init { i32 4229504, i8 1, i32 4, i32 285 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk208_grctx_init_prop_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_gpc_unk_1 = internal constant { [7 x %struct.gf100_gr_init], [48 x i8] } { [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294144, i8 1, i32 4, i32 127 }, %struct.gf100_gr_init { i32 4294276, i8 1, i32 4, i32 31 }, %struct.gf100_gr_init { i32 4294400, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4294404, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 4294408, i8 1, i32 4, i32 1073741824 }, %struct.gf100_gr_init { i32 4294412, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gm107_grctx_init_setup_0 = internal constant { [9 x %struct.gf100_gr_init], [48 x i8] } { [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294656, i8 1, i32 4, i32 1879475770 }, %struct.gf100_gr_init { i32 4294672, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294696, i8 1, i32 4, i32 68 }, %struct.gf100_gr_init { i32 4294704, i8 1, i32 4, i32 268435457 }, %struct.gf100_gr_init { i32 4294872, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 4294880, i8 1, i32 4, i32 16777216 }, %struct.gf100_gr_init { i32 4294888, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294908, i8 1, i32 4, i32 537919576 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_zcull_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk208_grctx_init_crstr_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_grctx_init_gpm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_gpc_unk_2 = internal constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295972, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296192, i8 1, i32 4, i32 -1879048192 }, %struct.gf100_gr_init { i32 4296228, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296232, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 4296240, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296244, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4296248, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296256, i8 22, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296352, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_grctx_init_gcc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_grctx_init_pe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_tex_0 = internal constant { [12 x %struct.gf100_gr_init], [32 x i8] } { [12 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299264, i8 1, i32 4, i32 196848 }, %struct.gf100_gr_init { i32 4299268, i8 1, i32 4, i32 5 }, %struct.gf100_gr_init { i32 4299272, i8 1, i32 4, i32 1057 }, %struct.gf100_gr_init { i32 4299276, i8 1, i32 4, i32 1179648 }, %struct.gf100_gr_init { i32 4299280, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299284, i8 1, i32 4, i32 8704 }, %struct.gf100_gr_init { i32 4299292, i8 1, i32 4, i32 49152 }, %struct.gf100_gr_init { i32 4299296, i8 1, i32 4, i32 536906240 }, %struct.gf100_gr_init { i32 4299312, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4299324, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4299460, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gm107_grctx_init_mpc_0 = internal constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299776, i8 1, i32 4, i32 26 }, %struct.gf100_gr_init { i32 4299780, i8 1, i32 4, i32 -2147483642 }, %struct.gf100_gr_init { i32 4299784, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4299808, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299812, i8 1, i32 4, i32 541200 }, %struct.gf100_gr_init { i32 4299816, i8 1, i32 4, i32 1056698302 }, %struct.gf100_gr_init { i32 4299820, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299828, i8 1, i32 4, i32 33497075 }, %struct.gf100_gr_init { i32 4299836, i8 1, i32 4, i32 6425 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gm107_grctx_init_l1c_0 = internal constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299908, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gm107_grctx_init_sm_0 = internal constant { [17 x %struct.gf100_gr_init], [80 x i8] } { [17 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300292, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300304, i8 1, i32 4, i32 7170 }, %struct.gf100_gr_init { i32 4300356, i8 1, i32 4, i32 13889522 }, %struct.gf100_gr_init { i32 4300360, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300364, i8 1, i32 4, i32 127 }, %struct.gf100_gr_init { i32 4300368, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300384, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300404, i8 10, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300460, i8 1, i32 4, i32 118667 }, %struct.gf100_gr_init { i32 4300464, i8 1, i32 4, i32 197376 }, %struct.gf100_gr_init { i32 4300472, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300528, i8 24, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300648, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300656, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 4300664, i8 1, i32 4, i32 1003 }, %struct.gf100_gr_init { i32 4300668, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [80 x i8] zeroinitializer }, align 32
@gk104_grctx_init_pes_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_grctx_init_cbm_0 = internal constant { [6 x %struct.gf100_gr_init], [32 x i8] } { [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308672, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4308676, i8 1, i32 4, i32 17104896 }, %struct.gf100_gr_init { i32 4308708, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4308720, i8 1, i32 4, i32 1023 }, %struct.gf100_gr_init { i32 4308724, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gm107_grctx_init_icmd_0 = internal constant { [255 x %struct.gf100_gr_init], [1008 x i8] } { [255 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 57, i8 3, i32 1, i32 0 }, %struct.gf100_gr_init { i32 169, i8 1, i32 1, i32 65535 }, %struct.gf100_gr_init { i32 56, i8 1, i32 1, i32 262957185 }, %struct.gf100_gr_init { i32 61, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 232, i8 8, i32 1, i32 1024 }, %struct.gf100_gr_init { i32 120, i8 8, i32 1, i32 768 }, %struct.gf100_gr_init { i32 80, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 88, i8 8, i32 1, i32 8 }, %struct.gf100_gr_init { i32 520, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 129, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 133, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 136, i8 1, i32 1, i32 1024 }, %struct.gf100_gr_init { i32 144, i8 1, i32 1, i32 768 }, %struct.gf100_gr_init { i32 152, i8 1, i32 1, i32 4097 }, %struct.gf100_gr_init { i32 227, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 218, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 248, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 250, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 177, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 159, i8 4, i32 1, i32 65535 }, %struct.gf100_gr_init { i32 168, i8 1, i32 1, i32 65535 }, %struct.gf100_gr_init { i32 173, i8 1, i32 1, i32 318 }, %struct.gf100_gr_init { i32 225, i8 1, i32 1, i32 16 }, %struct.gf100_gr_init { i32 656, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 944, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 672, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1056, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 688, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1072, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 704, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1232, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1824, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2240, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2192, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2272, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2208, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2288, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2380, i8 1, i32 1, i32 255 }, %struct.gf100_gr_init { i32 2381, i8 1, i32 1, i32 -1 }, %struct.gf100_gr_init { i32 2382, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 754, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 757, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 759, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 771, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 742, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1126, i8 1, i32 1, i32 82 }, %struct.gf100_gr_init { i32 769, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 772, i8 1, i32 1, i32 807407616 }, %struct.gf100_gr_init { i32 773, i8 1, i32 1, i32 1885360192 }, %struct.gf100_gr_init { i32 774, i8 1, i32 1, i32 -1196910456 }, %struct.gf100_gr_init { i32 775, i8 1, i32 1, i32 -118957880 }, %struct.gf100_gr_init { i32 778, i8 1, i32 1, i32 16776960 }, %struct.gf100_gr_init { i32 222, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 779, i8 1, i32 1, i32 26 }, %struct.gf100_gr_init { i32 780, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 792, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 832, i8 1, i32 1, i32 0 }, %struct.gf100_gr_init { i32 893, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 928, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 937, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 896, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 899, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 864, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 870, i8 2, i32 1, i32 0 }, %struct.gf100_gr_init { i32 872, i8 1, i32 1, i32 4095 }, %struct.gf100_gr_init { i32 880, i8 2, i32 1, i32 0 }, %struct.gf100_gr_init { i32 882, i8 1, i32 1, i32 1048575 }, %struct.gf100_gr_init { i32 890, i8 1, i32 1, i32 18 }, %struct.gf100_gr_init { i32 1561, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2065, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2066, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2067, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 2068, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2069, i8 1, i32 1, i32 11 }, %struct.gf100_gr_init { i32 2048, i8 6, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1586, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1587, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1588, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 1589, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 1620, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1623, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1621, i8 2, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1741, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 2037, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 2012, i8 1, i32 1, i32 958994697 }, %struct.gf100_gr_init { i32 2013, i8 1, i32 1, i32 2036947273 }, %struct.gf100_gr_init { i32 2014, i8 1, i32 1, i32 -1180067447 }, %struct.gf100_gr_init { i32 2015, i8 1, i32 1, i32 -102114871 }, %struct.gf100_gr_init { i32 2024, i8 1, i32 1, i32 12816 }, %struct.gf100_gr_init { i32 2025, i8 1, i32 1, i32 30292 }, %struct.gf100_gr_init { i32 2026, i8 1, i32 1, i32 152 }, %struct.gf100_gr_init { i32 2028, i8 1, i32 1, i32 958994697 }, %struct.gf100_gr_init { i32 2029, i8 1, i32 1, i32 2036947273 }, %struct.gf100_gr_init { i32 2030, i8 1, i32 1, i32 -1180067447 }, %struct.gf100_gr_init { i32 2031, i8 1, i32 1, i32 -102114871 }, %struct.gf100_gr_init { i32 2032, i8 1, i32 1, i32 12816 }, %struct.gf100_gr_init { i32 2033, i8 1, i32 1, i32 30292 }, %struct.gf100_gr_init { i32 2034, i8 1, i32 1, i32 152 }, %struct.gf100_gr_init { i32 1445, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1488, i8 1, i32 1, i32 538447880 }, %struct.gf100_gr_init { i32 1489, i8 1, i32 1, i32 1077424168 }, %struct.gf100_gr_init { i32 1490, i8 1, i32 1, i32 1616400456 }, %struct.gf100_gr_init { i32 1491, i8 1, i32 1, i32 -2139590552 }, %struct.gf100_gr_init { i32 2432, i8 -128, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1128, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 1132, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1136, i8 96, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1296, i8 16, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1312, i8 1, i32 1, i32 694 }, %struct.gf100_gr_init { i32 1321, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1328, i8 16, i32 1, i32 -65536 }, %struct.gf100_gr_init { i32 1360, i8 32, i32 1, i32 -65536 }, %struct.gf100_gr_init { i32 1413, i8 1, i32 1, i32 63 }, %struct.gf100_gr_init { i32 1398, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 1403, i8 1, i32 1, i32 89 }, %struct.gf100_gr_init { i32 1414, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 1410, i8 2, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1429, i8 1, i32 1, i32 4194368 }, %struct.gf100_gr_init { i32 1430, i8 1, i32 1, i32 1170 }, %struct.gf100_gr_init { i32 1431, i8 1, i32 1, i32 134742531 }, %struct.gf100_gr_init { i32 1453, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 1432, i8 1, i32 1, i32 131073 }, %struct.gf100_gr_init { i32 1474, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1592, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1594, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1595, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1597, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1598, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2232, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2304, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2312, i8 8, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2320, i8 16, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2336, i8 8, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2344, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1634, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1608, i8 9, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1624, i8 1, i32 1, i32 15 }, %struct.gf100_gr_init { i32 2047, i8 1, i32 1, i32 10 }, %struct.gf100_gr_init { i32 1642, i8 1, i32 1, i32 1073741824 }, %struct.gf100_gr_init { i32 1643, i8 1, i32 1, i32 268435456 }, %struct.gf100_gr_init { i32 1644, i8 2, i32 1, i32 -65536 }, %struct.gf100_gr_init { i32 1967, i8 2, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2038, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1714, i8 1, i32 1, i32 85 }, %struct.gf100_gr_init { i32 1965, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2417, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2418, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 2419, i8 1, i32 1, i32 300 }, %struct.gf100_gr_init { i32 2428, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 2421, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 2422, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2423, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 2424, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2391, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2398, i8 1, i32 1, i32 538329104 }, %struct.gf100_gr_init { i32 2399, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 2573, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 2429, i8 1, i32 1, i32 12 }, %struct.gf100_gr_init { i32 1667, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 1671, i8 1, i32 1, i32 4194303 }, %struct.gf100_gr_init { i32 1696, i8 1, i32 1, i32 5 }, %struct.gf100_gr_init { i32 2112, i8 1, i32 1, i32 4194312 }, %struct.gf100_gr_init { i32 2113, i8 1, i32 1, i32 134217856 }, %struct.gf100_gr_init { i32 2114, i8 1, i32 1, i32 4194312 }, %struct.gf100_gr_init { i32 2115, i8 1, i32 1, i32 134217856 }, %struct.gf100_gr_init { i32 2072, i8 8, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2120, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1848, i8 1, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1706, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1707, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1708, i8 1, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1709, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 1713, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 1723, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1742, i8 1, i32 1, i32 712057992 }, %struct.gf100_gr_init { i32 1849, i8 1, i32 1, i32 1082507264 }, %struct.gf100_gr_init { i32 1850, i8 1, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1926, i8 1, i32 1, i32 -2147483392 }, %struct.gf100_gr_init { i32 1852, i8 1, i32 1, i32 65792 }, %struct.gf100_gr_init { i32 1853, i8 1, i32 1, i32 41943040 }, %struct.gf100_gr_init { i32 1927, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 1938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1940, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1943, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 2102, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1946, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2099, i8 1, i32 1, i32 71582848 }, %struct.gf100_gr_init { i32 1953, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1955, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2097, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2823, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2824, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2826, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2564, i8 1, i32 1, i32 255 }, %struct.gf100_gr_init { i32 2571, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 2431, i8 1, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2562, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2057, i8 1, i32 1, i32 7 }, %struct.gf100_gr_init { i32 49697, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 49584, i8 8, i32 1, i32 15 }, %struct.gf100_gr_init { i32 49592, i8 1, i32 1, i32 262957185 }, %struct.gf100_gr_init { i32 49593, i8 1, i32 1, i32 16434824 }, %struct.gf100_gr_init { i32 50177, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 50178, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 50179, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 50190, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1706, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1709, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 1713, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 1938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1940, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1943, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1946, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1953, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1955, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2097, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 57, i8 3, i32 1, i32 0 }, %struct.gf100_gr_init { i32 896, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 870, i8 2, i32 1, i32 0 }, %struct.gf100_gr_init { i32 872, i8 1, i32 1, i32 4095 }, %struct.gf100_gr_init { i32 880, i8 2, i32 1, i32 0 }, %struct.gf100_gr_init { i32 882, i8 1, i32 1, i32 1048575 }, %struct.gf100_gr_init { i32 2067, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 2068, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2072, i8 8, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2120, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1848, i8 1, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2823, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2824, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2826, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2564, i8 1, i32 1, i32 255 }, %struct.gf100_gr_init { i32 2571, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 2431, i8 1, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2562, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2057, i8 1, i32 1, i32 7 }, %struct.gf100_gr_init { i32 49697, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 50177, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 50178, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 50179, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 50190, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2823, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2824, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2826, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init zeroinitializer], [1008 x i8] zeroinitializer }, align 32
@gm107_grctx_init_b097_0 = internal constant { [313 x %struct.gf100_gr_init], [1264 x i8] } { [313 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 2048, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2052, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2056, i8 8, i32 64, i32 1024 }, %struct.gf100_gr_init { i32 2060, i8 8, i32 64, i32 768 }, %struct.gf100_gr_init { i32 2064, i8 1, i32 4, i32 207 }, %struct.gf100_gr_init { i32 2128, i8 7, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2068, i8 8, i32 64, i32 64 }, %struct.gf100_gr_init { i32 2072, i8 8, i32 64, i32 1 }, %struct.gf100_gr_init { i32 2076, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2080, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 7168, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7172, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7176, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7180, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7424, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7428, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7432, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7436, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7936, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 7940, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8064, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8068, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8192, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8256, i8 1, i32 4, i32 17 }, %struct.gf100_gr_init { i32 8320, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 8384, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 8448, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 8512, i8 1, i32 4, i32 81 }, %struct.gf100_gr_init { i32 8204, i8 6, i32 64, i32 1 }, %struct.gf100_gr_init { i32 8208, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8272, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8336, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 8400, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 8464, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 8528, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 896, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 900, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 904, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 908, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 1792, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 1796, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 1800, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 10240, i8 -128, i32 4, i32 0 }, %struct.gf100_gr_init { i32 2560, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2564, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2568, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2572, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2576, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2580, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 3072, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3076, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3080, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3084, i8 16, i32 16, i32 1065353216 }, %struct.gf100_gr_init { i32 3328, i8 8, i32 8, i32 -65536 }, %struct.gf100_gr_init { i32 3332, i8 8, i32 8, i32 -65536 }, %struct.gf100_gr_init { i32 3584, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3588, i8 16, i32 16, i32 -65536 }, %struct.gf100_gr_init { i32 3592, i8 16, i32 16, i32 -65536 }, %struct.gf100_gr_init { i32 3392, i8 4, i32 8, i32 0 }, %struct.gf100_gr_init { i32 3396, i8 4, i32 8, i32 0 }, %struct.gf100_gr_init { i32 7680, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7684, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7688, i8 8, i32 32, i32 2 }, %struct.gf100_gr_init { i32 7692, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7696, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7700, i8 8, i32 32, i32 2 }, %struct.gf100_gr_init { i32 7704, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 5248, i8 8, i32 16, i32 0 }, %struct.gf100_gr_init { i32 5252, i8 8, i32 16, i32 0 }, %struct.gf100_gr_init { i32 5256, i8 8, i32 16, i32 0 }, %struct.gf100_gr_init { i32 13312, i8 -128, i32 4, i32 0 }, %struct.gf100_gr_init { i32 780, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6468, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5396, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3432, i8 1, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 4636, i8 1, i32 4, i32 262957185 }, %struct.gf100_gr_init { i32 4012, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5432, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4064, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4072, i8 1, i32 4, i32 20 }, %struct.gf100_gr_init { i32 4076, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4080, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6044, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4648, i8 1, i32 4, i32 1024 }, %struct.gf100_gr_init { i32 4652, i8 1, i32 4, i32 768 }, %struct.gf100_gr_init { i32 4656, i8 1, i32 4, i32 65537 }, %struct.gf100_gr_init { i32 2040, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5556, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5580, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5428, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1876, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4016, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5584, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5436, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5812, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4028, i8 4, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 3576, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6472, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6512, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5660, i8 1, i32 4, i32 2544 }, %struct.gf100_gr_init { i32 3532, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 5604, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4448, i8 32, i32 4, i32 635437120 }, %struct.gf100_gr_init { i32 6272, i8 32, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3972, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6088, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6096, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 6100, i8 1, i32 4, i32 -1 }, %struct.gf100_gr_init { i32 6104, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 6108, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5620, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5172, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3444, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5028, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4888, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4224, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4232, i8 2, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4240, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4244, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4248, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4252, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4256, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5700, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1864, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3560, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5704, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4772, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4384, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4376, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5708, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5720, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6416, i8 1, i32 4, i32 656 }, %struct.gf100_gr_init { i32 5400, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5724, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5408, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5636, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5488, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5040, i8 2, i32 4, i32 1065353216 }, %struct.gf100_gr_init { i32 524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5744, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 5748, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 5752, i8 1, i32 4, i32 -1196910456 }, %struct.gf100_gr_init { i32 5756, i8 1, i32 4, i32 -118957880 }, %struct.gf100_gr_init { i32 5740, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5760, i8 1, i32 4, i32 16776960 }, %struct.gf100_gr_init { i32 4816, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4820, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 5764, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3500, i8 2, i32 4, i32 6914 }, %struct.gf100_gr_init { i32 3508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5772, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5564, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5484, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6268, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4368, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 3520, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3904, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4660, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5776, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1936, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4348, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4752, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 536, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4824, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4828, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 3476, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5468, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5476, i8 1, i32 4, i32 4095 }, %struct.gf100_gr_init { i32 5492, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5500, i8 1, i32 4, i32 1048575 }, %struct.gf100_gr_init { i32 4948, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5648, i8 1, i32 4, i32 18 }, %struct.gf100_gr_init { i32 5640, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 9740, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1964, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5676, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 528, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 800, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 804, i8 6, i32 4, i32 1065353216 }, %struct.gf100_gr_init { i32 1872, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1888, i8 1, i32 4, i32 958994697 }, %struct.gf100_gr_init { i32 1892, i8 1, i32 4, i32 2036947273 }, %struct.gf100_gr_init { i32 1896, i8 1, i32 4, i32 -1180067447 }, %struct.gf100_gr_init { i32 1900, i8 1, i32 4, i32 -102114871 }, %struct.gf100_gr_init { i32 1904, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 1908, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 1912, i8 1, i32 4, i32 36992 }, %struct.gf100_gr_init { i32 1920, i8 1, i32 4, i32 958994697 }, %struct.gf100_gr_init { i32 1924, i8 1, i32 4, i32 2036947273 }, %struct.gf100_gr_init { i32 1928, i8 1, i32 4, i32 -1180067447 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 4, i32 -102114871 }, %struct.gf100_gr_init { i32 2000, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 2004, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 2008, i8 1, i32 4, i32 36992 }, %struct.gf100_gr_init { i32 892, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 1856, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 9728, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6424, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6428, i8 1, i32 4, i32 2304 }, %struct.gf100_gr_init { i32 6432, i8 1, i32 4, i32 1029 }, %struct.gf100_gr_init { i32 4872, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6436, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5036, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6444, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6460, i8 1, i32 4, i32 11292 }, %struct.gf100_gr_init { i32 3452, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3980, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 704, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5392, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6464, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4084, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6476, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6504, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5520, i8 1, i32 4, i32 63 }, %struct.gf100_gr_init { i32 2024, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6508, i8 1, i32 4, i32 17 }, %struct.gf100_gr_init { i32 740, i8 1, i32 4, i32 45057 }, %struct.gf100_gr_init { i32 876, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4044, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 728, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 6528, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 5380, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 6532, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3936, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3940, i8 1, i32 4, i32 4194368 }, %struct.gf100_gr_init { i32 3944, i8 1, i32 4, i32 8722 }, %struct.gf100_gr_init { i32 3948, i8 1, i32 4, i32 134742531 }, %struct.gf100_gr_init { i32 4360, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 3952, i8 1, i32 4, i32 524289 }, %struct.gf100_gr_init { i32 4092, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 768, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5032, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4844, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4880, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4884, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4992, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4996, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5012, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5020, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5016, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5528, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 3924, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6588, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3996, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4812, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4840, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4876, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4960, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4924, i8 2, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4932, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4936, i8 2, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4944, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4952, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4836, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4892, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6592, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4416, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3536, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3540, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 756, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6596, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6600, i8 1, i32 4, i32 5376 }, %struct.gf100_gr_init { i32 4956, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3984, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6624, i8 8, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6604, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5560, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6656, i8 1, i32 4, i32 4369 }, %struct.gf100_gr_init { i32 6660, i8 7, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3436, i8 2, i32 4, i32 -65536 }, %struct.gf100_gr_init { i32 4344, i8 1, i32 4, i32 4112 }, %struct.gf100_gr_init { i32 3456, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3488, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1956, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5384, i8 1, i32 4, i32 -2147483648 }, %struct.gf100_gr_init { i32 5388, i8 1, i32 4, i32 1073741824 }, %struct.gf100_gr_init { i32 5736, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 792, i8 2, i32 4, i32 8 }, %struct.gf100_gr_init { i32 3484, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 3860, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 884, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 888, i8 1, i32 4, i32 12 }, %struct.gf100_gr_init { i32 2012, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1868, i8 1, i32 4, i32 85 }, %struct.gf100_gr_init { i32 5152, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4104, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 4108, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4112, i8 1, i32 4, i32 300 }, %struct.gf100_gr_init { i32 3424, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4120, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 4124, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4128, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 4132, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5188, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 864, i8 1, i32 4, i32 538329104 }, %struct.gf100_gr_init { i32 868, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 872, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3496, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 3556, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 516, i8 1, i32 4, i32 6 }, %struct.gf100_gr_init { i32 720, i8 1, i32 4, i32 4194303 }, %struct.gf100_gr_init { i32 4640, i8 1, i32 4, i32 5 }, %struct.gf100_gr_init { i32 4060, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3992, i8 1, i32 4, i32 4194312 }, %struct.gf100_gr_init { i32 4740, i8 1, i32 4, i32 134217856 }, %struct.gf100_gr_init { i32 5200, i8 1, i32 4, i32 4194312 }, %struct.gf100_gr_init { i32 5204, i8 1, i32 4, i32 134217856 }, %struct.gf100_gr_init { i32 532, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [1264 x i8] zeroinitializer }, align 32
@gf100_grctx_init_902d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@___asan_gen_.1 = private unnamed_addr constant [27 x i8] c"gm107_grctx_init_gpc_unk_0\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 703, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [24 x i8] c"gm107_grctx_init_wwdx_0\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 843, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"gm107_grctx_pack_hub\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 688, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"gm107_grctx_pack_gpc_0\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 747, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [23 x i8] c"gm107_grctx_pack_gpc_1\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 757, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"gm107_grctx_pack_tpc\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 823, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"gm107_grctx_pack_ppc\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 857, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"gm107_grctx_pack_icmd\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 293, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"gm107_grctx_pack_mthd\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 616, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"gm107_grctx\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 964, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"gm107_grctx_init_fe_0\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 623, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"gm107_grctx_init_ds_0\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 645, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"gm107_grctx_init_pd_0\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 659, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"gm107_grctx_init_be_0\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 675, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [27 x i8] c"gm107_grctx_init_gpc_unk_1\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 709, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [25 x i8] c"gm107_grctx_init_setup_0\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 720, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"gm107_grctx_init_gpc_unk_2\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 733, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"gm107_grctx_init_tex_0\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 766, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"gm107_grctx_init_mpc_0\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 782, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"gm107_grctx_init_l1c_0\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 796, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"gm107_grctx_init_sm_0\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 802, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"gm107_grctx_init_cbm_0\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 833, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"gm107_grctx_init_icmd_0\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 34, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [24 x i8] c"gm107_grctx_init_b097_0\00", align 1
@___asan_gen_.71 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 299, i32 1 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @gm107_grctx_init_gpc_unk_0, ptr @gm107_grctx_init_wwdx_0, ptr @gm107_grctx_pack_hub, ptr @gm107_grctx_pack_gpc_0, ptr @gm107_grctx_pack_gpc_1, ptr @gm107_grctx_pack_tpc, ptr @gm107_grctx_pack_ppc, ptr @gm107_grctx_pack_icmd, ptr @gm107_grctx_pack_mthd, ptr @gm107_grctx, ptr @gm107_grctx_init_fe_0, ptr @gm107_grctx_init_ds_0, ptr @gm107_grctx_init_pd_0, ptr @gm107_grctx_init_be_0, ptr @gm107_grctx_init_gpc_unk_1, ptr @gm107_grctx_init_setup_0, ptr @gm107_grctx_init_gpc_unk_2, ptr @gm107_grctx_init_tex_0, ptr @gm107_grctx_init_mpc_0, ptr @gm107_grctx_init_l1c_0, ptr @gm107_grctx_init_sm_0, ptr @gm107_grctx_init_cbm_0, ptr @gm107_grctx_init_icmd_0, ptr @gm107_grctx_init_b097_0], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_gpc_unk_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_wwdx_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_pack_hub to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_pack_gpc_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_pack_gpc_1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_pack_tpc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_pack_ppc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_pack_icmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_pack_mthd to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_fe_0 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_ds_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_pd_0 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_be_0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_gpc_unk_1 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_setup_0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_gpc_unk_2 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_tex_0 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_mpc_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_l1c_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_sm_0 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_cbm_0 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_icmd_0 to i32), i32 4080, i32 5088, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grctx_init_b097_0 to i32), i32 5008, i32 6272, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm107_grctx_generate_bundle(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %grctx1 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %grctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grctx1, align 4
  %bundle_min_gpm_fifo_depth = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %bundle_min_gpm_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bundle_min_gpm_fifo_depth, align 4
  %bundle_size = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %bundle_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bundle_size, align 4
  %div22 = lshr i32 %9, 5
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 %div22)
  %bundle_token_limit = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 15
  %11 = ptrtoint ptr %bundle_token_limit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bundle_token_limit, align 4
  %call = tail call i32 @gf100_grctx_mmio_data(ptr noundef %info, i32 noundef %9, i32 noundef 256, i1 noundef zeroext true) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4227076, i32 noundef 0, i32 noundef 8, i32 noundef %call) #3
  %13 = ptrtoint ptr %bundle_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bundle_size, align 4
  %shr = lshr i32 %14, 8
  %or = or i32 %shr, -2147483648
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4227080, i32 noundef %or, i32 noundef 0, i32 noundef -1) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4296228, i32 noundef 0, i32 noundef 8, i32 noundef %call) #3
  %15 = ptrtoint ptr %bundle_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bundle_size, align 4
  %shr5 = lshr i32 %16, 8
  %or6 = or i32 %shr5, -2147483648
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4296232, i32 noundef %or6, i32 noundef 0, i32 noundef -1) #3
  %shl = shl i32 %10, 16
  %or7 = or i32 %shl, %12
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4220104, i32 noundef %or7, i32 noundef 0, i32 noundef -1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_grctx_mmio_data(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_mmio_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm107_grctx_generate_pagepool(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %grctx1 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %grctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grctx1, align 4
  %pagepool_size = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %pagepool_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pagepool_size, align 4
  %call = tail call i32 @gf100_grctx_mmio_data(ptr noundef %info, i32 noundef %7, i32 noundef 256, i1 noundef zeroext true) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4227084, i32 noundef 0, i32 noundef 8, i32 noundef %call) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4227088, i32 noundef -2147483648, i32 noundef 0, i32 noundef -1) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4296708, i32 noundef 0, i32 noundef 8, i32 noundef %call) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4296712, i32 noundef 0, i32 noundef 0, i32 noundef -1) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4220108, i32 noundef -2147483648, i32 noundef 0, i32 noundef -1) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4296240, i32 noundef -2147483648, i32 noundef 0, i32 noundef -1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm107_grctx_generate_attrib(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %grctx2 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %grctx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grctx2, align 4
  %alpha_nr = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %alpha_nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alpha_nr, align 4
  %attrib_nr = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %attrib_nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attrib_nr, align 4
  %attrib_nr_max = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 19
  %10 = ptrtoint ptr %attrib_nr_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attrib_nr_max, align 4
  %alpha_nr_max = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 21
  %12 = ptrtoint ptr %alpha_nr_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %alpha_nr_max, align 4
  %add = add i32 %13, %11
  %mul = shl i32 %add, 5
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tpc_total, align 1
  %conv = zext i8 %15 to i32
  %mul3 = mul i32 %mul, %conv
  %call = tail call i32 @gf100_grctx_mmio_data(ptr noundef %info, i32 noundef %mul3, i32 noundef 4096, i1 noundef zeroext false) #3
  %16 = ptrtoint ptr %attrib_nr_max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attrib_nr_max, align 4
  %18 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tpc_total, align 1
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4294672, i32 noundef -2147483648, i32 noundef 12, i32 noundef %call) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4298824, i32 noundef 268435456, i32 noundef 12, i32 noundef %call) #3
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4299820, i32 noundef 268435456, i32 noundef 12, i32 noundef %call) #3
  %shl = shl i32 %9, 16
  %or = or i32 %shl, %7
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4216880, i32 noundef %or, i32 noundef 0, i32 noundef -1) #3
  %20 = shl i32 %7, 14
  %or10 = or i32 %20, 65535
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4220100, i32 noundef %or10, i32 noundef 0, i32 noundef -1) #3
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp132.not = icmp eq i8 %22, 0
  br i1 %cmp132.not, label %entry.for.end64_crit_edge, label %for.cond13.preheader.preheader

entry.for.end64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end64

for.cond13.preheader.preheader:                   ; preds = %entry
  %conv6 = zext i8 %19 to i32
  %mul7 = mul i32 %17, %conv6
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.inc62.for.cond13.preheader_crit_edge, %for.cond13.preheader.preheader
  %n.0137 = phi i32 [ %n.1.lcssa, %for.inc62.for.cond13.preheader_crit_edge ], [ 0, %for.cond13.preheader.preheader ]
  %gpc.0135 = phi i32 [ %inc63, %for.inc62.for.cond13.preheader_crit_edge ], [ 0, %for.cond13.preheader.preheader ]
  %ao.0134 = phi i32 [ %ao.1.lcssa, %for.inc62.for.cond13.preheader_crit_edge ], [ %mul7, %for.cond13.preheader.preheader ]
  %bo.0133 = phi i32 [ %bo.1.lcssa, %for.inc62.for.cond13.preheader_crit_edge ], [ 0, %for.cond13.preheader.preheader ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 17, i32 %gpc.0135
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp15122.not = icmp eq i8 %24, 0
  br i1 %cmp15122.not, label %for.cond13.preheader.for.inc62_crit_edge, label %for.body17.lr.ph

for.cond13.preheader.for.inc62_crit_edge:         ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc62

for.body17.lr.ph:                                 ; preds = %for.cond13.preheader
  %arrayidx34 = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 18, i32 %gpc.0135
  %mul29 = shl i32 %gpc.0135, 15
  %add30 = add nuw nsw i32 %mul29, 5255168
  br label %for.body17

for.body17:                                       ; preds = %cleanup.for.body17_crit_edge, %for.body17.lr.ph
  %n.1127 = phi i32 [ %n.0137, %for.body17.lr.ph ], [ %inc61, %cleanup.for.body17_crit_edge ]
  %ppc.0125 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc, %cleanup.for.body17_crit_edge ]
  %ao.1124 = phi i32 [ %ao.0134, %for.body17.lr.ph ], [ %ao.2, %cleanup.for.body17_crit_edge ]
  %bo.1123 = phi i32 [ %bo.0133, %for.body17.lr.ph ], [ %bo.2, %cleanup.for.body17_crit_edge ]
  %25 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %26 to i32
  %shl36 = shl nuw i32 1, %ppc.0125
  %and = and i32 %shl36, %conv35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body17.cleanup_crit_edge, label %if.end

for.body17.cleanup_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #5
  %mul31 = shl i32 %ppc.0125, 9
  %add32 = add nuw nsw i32 %add30, %mul31
  %mul27 = shl i32 %n.1127, 2
  %add28 = add i32 %mul27, 4296352
  %arrayidx19 = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 20, i32 %gpc.0135, i32 %ppc.0125
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %28 to i32
  %mul26 = mul i32 %9, %conv20
  %mul21 = mul i32 %7, %conv20
  %add37 = or i32 %add32, 192
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add37, i32 noundef %mul26, i32 noundef 0, i32 noundef -1) #3
  %add38 = or i32 %add32, 244
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add38, i32 noundef %bo.1123, i32 noundef 0, i32 noundef -1) #3
  %29 = ptrtoint ptr %attrib_nr_max to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %attrib_nr_max, align 4
  %31 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx19, align 1
  %conv43 = zext i8 %32 to i32
  %mul44 = mul i32 %30, %conv43
  %add45 = add i32 %mul44, %bo.1123
  %add46 = or i32 %add32, 228
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add46, i32 noundef %mul21, i32 noundef 0, i32 noundef -1) #3
  %add47 = or i32 %add32, 248
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add47, i32 noundef %ao.1124, i32 noundef 0, i32 noundef -1) #3
  %33 = ptrtoint ptr %alpha_nr_max to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %alpha_nr_max, align 4
  %35 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx19, align 1
  %conv52 = zext i8 %36 to i32
  %mul53 = mul i32 %34, %conv52
  %add54 = add i32 %mul53, %ao.1124
  %div55 = udiv i32 %mul26, 3
  %shl56 = shl i32 %div55, 16
  %or57 = or i32 %shl56, %mul26
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add28, i32 noundef %or57, i32 noundef 0, i32 noundef -1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body17.cleanup_crit_edge
  %bo.2 = phi i32 [ %add45, %if.end ], [ %bo.1123, %for.body17.cleanup_crit_edge ]
  %ao.2 = phi i32 [ %add54, %if.end ], [ %ao.1124, %for.body17.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %ppc.0125, 1
  %inc61 = add i32 %n.1127, 1
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %38 to i32
  %cmp15 = icmp ult i32 %inc, %conv14
  br i1 %cmp15, label %cleanup.for.body17_crit_edge, label %cleanup.for.inc62_crit_edge

cleanup.for.inc62_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc62

cleanup.for.body17_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body17

for.inc62:                                        ; preds = %cleanup.for.inc62_crit_edge, %for.cond13.preheader.for.inc62_crit_edge
  %bo.1.lcssa = phi i32 [ %bo.0133, %for.cond13.preheader.for.inc62_crit_edge ], [ %bo.2, %cleanup.for.inc62_crit_edge ]
  %ao.1.lcssa = phi i32 [ %ao.0134, %for.cond13.preheader.for.inc62_crit_edge ], [ %ao.2, %cleanup.for.inc62_crit_edge ]
  %n.1.lcssa = phi i32 [ %n.0137, %for.cond13.preheader.for.inc62_crit_edge ], [ %inc61, %cleanup.for.inc62_crit_edge ]
  %inc63 = add nuw nsw i32 %gpc.0135, 1
  %39 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %gpc_nr, align 1
  %conv11 = zext i8 %40 to i32
  %cmp = icmp ult i32 %inc63, %conv11
  br i1 %cmp, label %for.inc62.for.cond13.preheader_crit_edge, label %for.inc62.for.end64_crit_edge

for.inc62.for.end64_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end64

for.inc62.for.cond13.preheader_crit_edge:         ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond13.preheader

for.end64:                                        ; preds = %for.inc62.for.end64_crit_edge, %entry.for.end64_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm107_grctx_generate_sm_id(ptr nocapture noundef readonly %gr, i32 noundef %gpc, i32 noundef %tpc, i32 noundef %sm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !57
  tail call void @arm_heavy_mb() #3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %gpc, 15
  %add = add i32 %mul, 5259264
  %mul2 = shl i32 %tpc, 11
  %add3 = add i32 %add, %mul2
  %add4 = or i32 %add3, 1688
  %add.ptr = getelementptr i8, ptr %3, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %sm) #3, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !59
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %mul11 = shl i32 %tpc, 2
  %add12 = add i32 %mul, 5245968
  %add13 = add i32 %add12, %mul11
  %add.ptr14 = getelementptr i8, ptr %5, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %sm) #3, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !60
  tail call void @arm_heavy_mb() #3
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add23 = or i32 %add3, 136
  %add.ptr24 = getelementptr i8, ptr %7, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %sm) #3, !srcloc !58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_tpc_nr(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_rop_mapping(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_alpha_beta_tables(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_dist_skip_table(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm107_grctx_generate_r406500(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !61
  tail call void @arm_heavy_mb() #3
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4220160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1) #3, !srcloc !58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm107_grctx_generate_r419e00(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4300288
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !64
  tail call void @arm_heavy_mb() #3
  %or = or i32 %4, 8421504
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4300288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #3, !srcloc !58
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 4299980
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #3, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !66
  tail call void @arm_heavy_mb() #3
  %or17 = or i32 %9, -2147483648
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 4299980
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %or17) #3, !srcloc !58
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %13, i32 4300672
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #3, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !68
  tail call void @arm_heavy_mb() #3
  %or33 = or i32 %14, -2147483648
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %16, i32 4300672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %or33) #3, !srcloc !58
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr42 = getelementptr i8, ptr %18, i32 4300680
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #3, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !70
  tail call void @arm_heavy_mb() #3
  %or49 = or i32 %19, -2147483648
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr51 = getelementptr i8, ptr %21, i32 4300680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %or49) #3, !srcloc !58
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @gm107_grctx_init_gpc_unk_0, !1, !"gm107_grctx_init_gpc_unk_0", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 703, i32 1}
!2 = !{ptr @gm107_grctx_init_wwdx_0, !3, !"gm107_grctx_init_wwdx_0", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 843, i32 1}
!4 = !{ptr @gm107_grctx, !5, !"gm107_grctx", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 964, i32 1}
!6 = !{ptr @gm107_grctx_pack_hub, !7, !"gm107_grctx_pack_hub", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 688, i32 1}
!8 = !{ptr @gm107_grctx_init_fe_0, !9, !"gm107_grctx_init_fe_0", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 623, i32 1}
!10 = !{ptr @gm107_grctx_init_ds_0, !11, !"gm107_grctx_init_ds_0", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 645, i32 1}
!12 = !{ptr @gm107_grctx_init_pd_0, !13, !"gm107_grctx_init_pd_0", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 659, i32 1}
!14 = !{ptr @gm107_grctx_init_be_0, !15, !"gm107_grctx_init_be_0", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 675, i32 1}
!16 = !{ptr @gm107_grctx_pack_gpc_0, !17, !"gm107_grctx_pack_gpc_0", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 747, i32 1}
!18 = !{ptr @gm107_grctx_init_gpc_unk_1, !19, !"gm107_grctx_init_gpc_unk_1", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 709, i32 1}
!20 = !{ptr @gm107_grctx_init_setup_0, !21, !"gm107_grctx_init_setup_0", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 720, i32 1}
!22 = !{ptr @gm107_grctx_pack_gpc_1, !23, !"gm107_grctx_pack_gpc_1", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 757, i32 1}
!24 = !{ptr @gm107_grctx_init_gpc_unk_2, !25, !"gm107_grctx_init_gpc_unk_2", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 733, i32 1}
!26 = !{ptr @gm107_grctx_pack_tpc, !27, !"gm107_grctx_pack_tpc", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 823, i32 1}
!28 = !{ptr @gm107_grctx_init_tex_0, !29, !"gm107_grctx_init_tex_0", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 766, i32 1}
!30 = !{ptr @gm107_grctx_init_mpc_0, !31, !"gm107_grctx_init_mpc_0", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 782, i32 1}
!32 = !{ptr @gm107_grctx_init_l1c_0, !33, !"gm107_grctx_init_l1c_0", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 796, i32 1}
!34 = !{ptr @gm107_grctx_init_sm_0, !35, !"gm107_grctx_init_sm_0", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 802, i32 1}
!36 = !{ptr @gm107_grctx_pack_ppc, !37, !"gm107_grctx_pack_ppc", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 857, i32 1}
!38 = !{ptr @gm107_grctx_init_cbm_0, !39, !"gm107_grctx_init_cbm_0", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 833, i32 1}
!40 = !{ptr @gm107_grctx_pack_icmd, !41, !"gm107_grctx_pack_icmd", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 293, i32 1}
!42 = !{ptr @gm107_grctx_init_icmd_0, !43, !"gm107_grctx_init_icmd_0", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 34, i32 1}
!44 = !{ptr @gm107_grctx_pack_mthd, !45, !"gm107_grctx_pack_mthd", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 616, i32 1}
!46 = !{ptr @gm107_grctx_init_b097_0, !47, !"gm107_grctx_init_b097_0", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm107.c", i32 299, i32 1}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2156336243}
!58 = !{i64 5446987}
!59 = !{i64 2156336773}
!60 = !{i64 2156337324}
!61 = !{i64 2156335684}
!62 = !{i64 5447405}
!63 = !{i64 2156325986}
!64 = !{i64 2156326388}
!65 = !{i64 2156327261}
!66 = !{i64 2156327663}
!67 = !{i64 2156328536}
!68 = !{i64 2156328938}
!69 = !{i64 2156329811}
!70 = !{i64 2156330213}
