; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@gf119_grctx_init_crstr_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_grctx_init_gpm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_gcc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_grctx_pack_gpc_1 = dso_local constant { [4 x %struct.gf100_gr_pack], [32 x i8] } { [4 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf119_grctx_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_grctx_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_gcc_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf117_grctx_init_pe_0 = dso_local constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4298824, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298852, i8 1, i32 4, i32 297 }, %struct.gf100_gr_init { i32 4298888, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf117_grctx_init_wwdx_0 = dso_local constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308736, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4308740, i8 1, i32 4, i32 102793446 }, %struct.gf100_gr_init { i32 4308744, i8 1, i32 4, i32 33790116 }, %struct.gf100_gr_init { i32 4308748, i8 1, i32 4, i32 241340514 }, %struct.gf100_gr_init { i32 4308752, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4308756, i8 1, i32 4, i32 230 }, %struct.gf100_gr_init { i32 4308944, i8 1, i32 4, i32 9437443 }, %struct.gf100_gr_init { i32 4308960, i8 1, i32 4, i32 4194305 }, %struct.gf100_gr_init { i32 4308964, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf117_grctx_pack_hub = internal constant { [10 x %struct.gf100_gr_pack], [48 x i8] } { [10 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_grctx_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_memfmt_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_grctx_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_grctx_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_grctx_init_be_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf117_grctx_pack_gpc_0 = internal constant { [6 x %struct.gf100_gr_pack], [48 x i8] } { [6 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_grctx_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_grctx_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_grctx_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_zcull_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_pack_zcull = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf117_grctx_pack_tpc = internal constant { [6 x %struct.gf100_gr_pack], [48 x i8] } { [6 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf117_grctx_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_grctx_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_grctx_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf104_grctx_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_grctx_init_sm_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf117_grctx_pack_ppc = internal constant { [4 x %struct.gf100_gr_pack], [32 x i8] } { [4 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf117_grctx_init_pes_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_grctx_init_cbm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_grctx_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf119_grctx_pack_icmd = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf119_grctx_pack_mthd = external dso_local constant [0 x %struct.gf100_gr_pack], align 4
@gf117_grctx = dso_local constant { %struct.gf100_grctx_func, [36 x i8] } { %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr @gf117_grctx_pack_hub, ptr @gf117_grctx_pack_gpc_0, ptr @gf117_grctx_pack_gpc_1, ptr @gf100_grctx_pack_zcull, ptr @gf117_grctx_pack_tpc, ptr @gf117_grctx_pack_ppc, ptr @gf119_grctx_pack_icmd, ptr @gf119_grctx_pack_mthd, ptr null, ptr @gf100_grctx_generate_bundle, i32 6144, i32 0, i32 0, ptr @gf100_grctx_generate_pagepool, i32 32768, ptr @gf117_grctx_generate_attrib, i32 804, i32 536, i32 2047, i32 804, i32 0, ptr null, ptr @gf100_grctx_generate_sm_id, ptr @gf100_grctx_generate_tpc_nr, i8 0, ptr @gf100_grctx_generate_r4060a8, ptr @gf117_grctx_generate_rop_mapping, ptr @gf100_grctx_generate_alpha_beta_tables, ptr @gf100_grctx_generate_max_ways_evict, ptr @gf117_grctx_generate_dist_skip_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gf100_grctx_generate_r419cb8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gf100_grctx_init_main_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_grctx_init_fe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_pri_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_memfmt_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_grctx_init_ds_0 = internal constant { [9 x %struct.gf100_gr_init], [48 x i8] } { [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216832, i8 1, i32 4, i32 260047039 }, %struct.gf100_gr_init { i32 4216880, i8 1, i32 4, i32 35128100 }, %struct.gf100_gr_init { i32 4216884, i8 1, i32 4, i32 134217728 }, %struct.gf100_gr_init { i32 4216888, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4216916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4216944, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4217344, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217368, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf117_grctx_init_pd_0 = internal constant { [9 x %struct.gf100_gr_init], [48 x i8] } { [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4218912, i8 1, i32 4, i32 66497 }, %struct.gf100_gr_init { i32 4218920, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4220072, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220076, i8 1, i32 4, i32 16383 }, %struct.gf100_gr_init { i32 4220084, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220096, i8 1, i32 4, i32 -2145779592 }, %struct.gf100_gr_init { i32 4220100, i8 1, i32 4, i32 13238271 }, %struct.gf100_gr_init { i32 4220112, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_rstr2d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_scc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_grctx_init_be_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_grctx_init_gpc_unk_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_grctx_init_prop_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_grctx_init_gpc_unk_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_grctx_init_setup_0 = internal constant { [9 x %struct.gf100_gr_init], [48 x i8] } { [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294656, i8 1, i32 4, i32 1879475722 }, %struct.gf100_gr_init { i32 4294664, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294696, i8 1, i32 4, i32 33858 }, %struct.gf100_gr_init { i32 4294704, i8 1, i32 4, i32 268435457 }, %struct.gf100_gr_init { i32 4294872, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 4294880, i8 1, i32 4, i32 16777216 }, %struct.gf100_gr_init { i32 4294888, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294908, i8 1, i32 4, i32 537919512 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_grctx_init_zcull_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_grctx_init_tex_0 = internal constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299264, i8 1, i32 4, i32 496 }, %struct.gf100_gr_init { i32 4299268, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4299272, i8 1, i32 4, i32 35 }, %struct.gf100_gr_init { i32 4299276, i8 1, i32 4, i32 131072 }, %struct.gf100_gr_init { i32 4299280, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299284, i8 1, i32 4, i32 512 }, %struct.gf100_gr_init { i32 4299292, i8 1, i32 4, i32 32768 }, %struct.gf100_gr_init { i32 4299296, i8 1, i32 4, i32 2048 }, %struct.gf100_gr_init { i32 4299460, i8 1, i32 4, i32 1569856 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf117_grctx_init_mpc_0 = internal constant { [7 x %struct.gf100_gr_init], [48 x i8] } { [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299776, i8 1, i32 4, i32 10 }, %struct.gf100_gr_init { i32 4299780, i8 1, i32 4, i32 6 }, %struct.gf100_gr_init { i32 4299784, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4299808, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299812, i8 1, i32 4, i32 541200 }, %struct.gf100_gr_init { i32 4299816, i8 1, i32 4, i32 1056698302 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf104_grctx_init_l1c_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_grctx_init_sm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_grctx_init_pes_0 = internal constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308516, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf117_grctx_init_cbm_0 = internal constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308672, i8 1, i32 4, i32 303562752 }, %struct.gf100_gr_init { i32 4308676, i8 1, i32 4, i32 16383 }, %struct.gf100_gr_init { i32 4308708, i8 1, i32 4, i32 52691480 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"gf117_grctx_pack_gpc_1\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 97, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [22 x i8] c"gf117_grctx_init_pe_0\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 105, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"gf117_grctx_init_wwdx_0\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 162, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"gf117_grctx_pack_hub\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 60, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [23 x i8] c"gf117_grctx_pack_gpc_0\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 87, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"gf117_grctx_pack_tpc\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 138, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"gf117_grctx_pack_ppc\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 176, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"gf117_grctx\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 282, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"gf117_grctx_init_ds_0\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 34, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"gf117_grctx_init_pd_0\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 47, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [25 x i8] c"gf117_grctx_init_setup_0\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 74, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"gf117_grctx_init_tex_0\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 113, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"gf117_grctx_init_mpc_0\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 127, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [23 x i8] c"gf117_grctx_init_pes_0\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 148, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"gf117_grctx_init_cbm_0\00", align 1
@___asan_gen_.44 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 154, i32 1 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @gf117_grctx_pack_gpc_1, ptr @gf117_grctx_init_pe_0, ptr @gf117_grctx_init_wwdx_0, ptr @gf117_grctx_pack_hub, ptr @gf117_grctx_pack_gpc_0, ptr @gf117_grctx_pack_tpc, ptr @gf117_grctx_pack_ppc, ptr @gf117_grctx, ptr @gf117_grctx_init_ds_0, ptr @gf117_grctx_init_pd_0, ptr @gf117_grctx_init_setup_0, ptr @gf117_grctx_init_tex_0, ptr @gf117_grctx_init_mpc_0, ptr @gf117_grctx_init_pes_0, ptr @gf117_grctx_init_cbm_0], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx_pack_gpc_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx_init_pe_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx_init_wwdx_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx_pack_hub to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx_pack_gpc_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx_pack_tpc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx_pack_ppc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx_init_ds_0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx_init_pd_0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx_init_setup_0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx_init_tex_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx_init_mpc_0 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx_init_pes_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf117_grctx_init_cbm_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf117_grctx_generate_dist_skip_table(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4220112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr.1 = getelementptr i8, ptr %5, i32 4220116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 0) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr.2 = getelementptr i8, ptr %7, i32 4220120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 0) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr.3 = getelementptr i8, ptr %9, i32 4220124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3, i32 0) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr.4 = getelementptr i8, ptr %11, i32 4220128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4, i32 0) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr.5 = getelementptr i8, ptr %13, i32 4220132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5, i32 0) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr.6 = getelementptr i8, ptr %15, i32 4220136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6, i32 0) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr.7 = getelementptr i8, ptr %17, i32 4220140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.7, i32 0) #3, !srcloc !40
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf117_grctx_generate_rop_mapping(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  %data = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #3
  %2 = call ptr @memset(ptr %data, i32 0, i32 24)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0160 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %i.0160
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, 7
  %and = zext i8 %5 to i32
  %i.0160.frozen = freeze i32 %i.0160
  %div = udiv i32 %i.0160.frozen, 6
  %6 = mul i32 %div, 6
  %rem.decomposed = sub i32 %i.0160.frozen, %6
  %mul = mul nuw nsw i32 %rem.decomposed, 5
  %shl = shl nuw nsw i32 %and, %mul
  %arrayidx2 = getelementptr [6 x i32], ptr %data, i32 0, i32 %div
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  %or = or i32 %shl, %8
  store i32 %or, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %i.0160, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 16
  %9 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tpc_total, align 1
  %conv3161 = zext i8 %10 to i32
  %and4162 = and i32 %conv3161, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4162)
  %tobool.not163 = icmp eq i32 %and4162, 0
  br i1 %tobool.not163, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %ntpcv.0165 = phi i8 [ %shl6, %while.body.while.body_crit_edge ], [ %10, %for.end.while.body_crit_edge ]
  %shift.0164 = phi i8 [ %inc8, %while.body.while.body_crit_edge ], [ 0, %for.end.while.body_crit_edge ]
  %shl6 = shl i8 %ntpcv.0165, 1
  %inc8 = add i8 %shift.0164, 1
  %conv3 = zext i8 %shl6 to i32
  %and4 = and i32 %conv3, 16
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %phi.cast = zext i8 %inc8 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 21
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %for.end.while.end_crit_edge
  %shift.0.lcssa = phi i32 [ 0, %for.end.while.end_crit_edge ], [ %phi.bo, %while.end.loopexit ]
  %ntpcv.0.lcssa = phi i8 [ %10, %for.end.while.end_crit_edge ], [ %shl6, %while.end.loopexit ]
  %conv3.lcssa = phi i32 [ %conv3161, %for.end.while.end_crit_edge ], [ %conv3, %while.end.loopexit ]
  %rem17159 = urem i8 32, %ntpcv.0.lcssa
  %rem17.zext = zext i8 %rem17159 to i32
  %rem27.rhs.trunc = trunc i32 %conv3.lcssa to i8
  %rem27178 = urem i8 64, %rem27.rhs.trunc
  %rem27.zext = zext i8 %rem27178 to i32
  %rem27.1.rhs.trunc = trunc i32 %conv3.lcssa to i8
  %rem27.1179 = urem i8 -128, %rem27.1.rhs.trunc
  %rem27.1.zext = zext i8 %rem27.1179 to i32
  %shl29.1 = shl nuw nsw i32 %rem27.1.zext, 5
  %or31.1 = or i32 %shl29.1, %rem27.zext
  %rem27.2.rhs.trunc = trunc i32 %conv3.lcssa to i16
  %rem27.2180 = urem i16 256, %rem27.2.rhs.trunc
  %rem27.2.zext = zext i16 %rem27.2180 to i32
  %shl29.2 = shl nuw nsw i32 %rem27.2.zext, 10
  %or31.2 = or i32 %shl29.2, %or31.1
  %rem27.3.rhs.trunc = trunc i32 %conv3.lcssa to i16
  %rem27.3181 = urem i16 512, %rem27.3.rhs.trunc
  %rem27.3.zext = zext i16 %rem27.3181 to i32
  %shl29.3 = shl nuw nsw i32 %rem27.3.zext, 15
  %or31.3 = or i32 %shl29.3, %or31.2
  %rem27.4.rhs.trunc = trunc i32 %conv3.lcssa to i16
  %rem27.4182 = urem i16 1024, %rem27.4.rhs.trunc
  %rem27.4.zext = zext i16 %rem27.4182 to i32
  %shl29.4 = shl nuw nsw i32 %rem27.4.zext, 20
  %or31.4 = or i32 %shl29.4, %or31.3
  %rem27.5.rhs.trunc = trunc i32 %conv3.lcssa to i16
  %rem27.5183 = urem i16 2048, %rem27.5.rhs.trunc
  %rem27.5.zext = zext i16 %rem27.5183 to i32
  %shl29.5 = shl i32 %rem27.5.zext, 25
  %or31.5 = or i32 %shl29.5, %or31.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %11 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tpc_total, align 1
  %conv36 = zext i8 %12 to i32
  %shl37 = shl nuw nsw i32 %conv36, 8
  %screen_tile_row_offset = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %13 = ptrtoint ptr %screen_tile_row_offset to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %screen_tile_row_offset, align 2
  %conv38 = zext i8 %14 to i32
  %or39 = or i32 %shl37, %conv38
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 4295608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or39) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 4
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr51 = getelementptr i8, ptr %20, i32 4295432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %18) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  %arrayidx47.1 = getelementptr inbounds [6 x i32], ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx47.1, align 4
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr51.1 = getelementptr i8, ptr %24, i32 4295436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.1, i32 %22) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  %arrayidx47.2 = getelementptr inbounds [6 x i32], ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx47.2, align 4
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr51.2 = getelementptr i8, ptr %28, i32 4295440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.2, i32 %26) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  %arrayidx47.3 = getelementptr inbounds [6 x i32], ptr %data, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx47.3, align 4
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr51.3 = getelementptr i8, ptr %32, i32 4295444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.3, i32 %30) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  %arrayidx47.4 = getelementptr inbounds [6 x i32], ptr %data, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx47.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx47.4, align 4
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr51.4 = getelementptr i8, ptr %36, i32 4295448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.4, i32 %34) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  %arrayidx47.5 = getelementptr inbounds [6 x i32], ptr %data, i32 0, i32 5
  %37 = ptrtoint ptr %arrayidx47.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx47.5, align 4
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr51.5 = getelementptr i8, ptr %40, i32 4295452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.5, i32 %38) #3, !srcloc !40
  %shl10 = shl nuw nsw i32 %conv3.lcssa, 16
  %shl18 = shl nuw nsw i32 %rem17.zext, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  tail call void @arm_heavy_mb() #3
  %41 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tpc_total, align 1
  %conv59 = zext i8 %42 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %43 = ptrtoint ptr %screen_tile_row_offset to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %screen_tile_row_offset, align 2
  %conv62 = zext i8 %44 to i32
  %or63 = or i32 %shl10, %shift.0.lcssa
  %or15 = or i32 %or63, %shl18
  %or20 = or i32 %or15, %conv62
  %or65 = or i32 %or20, %shl60
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr67 = getelementptr i8, ptr %46, i32 4308944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %or65) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  tail call void @arm_heavy_mb() #3
  %47 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri, align 4
  %add.ptr73 = getelementptr i8, ptr %48, i32 4308964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %or31.5) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %49 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri, align 4
  %add.ptr85 = getelementptr i8, ptr %50, i32 4308736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %18) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %51 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri, align 4
  %add.ptr85.1 = getelementptr i8, ptr %52, i32 4308740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.1, i32 %22) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %53 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri, align 4
  %add.ptr85.2 = getelementptr i8, ptr %54, i32 4308744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.2, i32 %26) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %55 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri, align 4
  %add.ptr85.3 = getelementptr i8, ptr %56, i32 4308748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.3, i32 %30) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %57 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri, align 4
  %add.ptr85.4 = getelementptr i8, ptr %58, i32 4308752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.4, i32 %34) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %59 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pri, align 4
  %add.ptr85.5 = getelementptr i8, ptr %60, i32 4308756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.5, i32 %38) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %61 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %tpc_total, align 1
  %conv93 = zext i8 %62 to i32
  %shl94 = shl nuw nsw i32 %conv93, 8
  %63 = ptrtoint ptr %screen_tile_row_offset to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %screen_tile_row_offset, align 2
  %conv96 = zext i8 %64 to i32
  %or97 = or i32 %shl94, %conv96
  %65 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri, align 4
  %add.ptr99 = getelementptr i8, ptr %66, i32 4225212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %or97) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data, align 4
  %69 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri, align 4
  %add.ptr111 = getelementptr i8, ptr %70, i32 4225036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 %68) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %71 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx47.1, align 4
  %73 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pri, align 4
  %add.ptr111.1 = getelementptr i8, ptr %74, i32 4225040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.1, i32 %72) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %75 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx47.2, align 4
  %77 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pri, align 4
  %add.ptr111.2 = getelementptr i8, ptr %78, i32 4225044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.2, i32 %76) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %79 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx47.3, align 4
  %81 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pri, align 4
  %add.ptr111.3 = getelementptr i8, ptr %82, i32 4225048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.3, i32 %80) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %83 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri, align 4
  %add.ptr111.4 = getelementptr i8, ptr %84, i32 4225052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.4, i32 %34) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %85 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri, align 4
  %add.ptr111.5 = getelementptr i8, ptr %86, i32 4225056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.5, i32 %38) #3, !srcloc !40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf117_grctx_generate_attrib(ptr noundef %info) #0 align 64 {
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
  %cmp126.not = icmp eq i8 %22, 0
  br i1 %cmp126.not, label %entry.for.end67_crit_edge, label %for.cond13.preheader.lr.ph

entry.for.end67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end67

for.cond13.preheader.lr.ph:                       ; preds = %entry
  %conv6 = zext i8 %19 to i32
  %mul7 = mul i32 %17, %conv6
  %mul21 = shl i32 %7, 16
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.inc65.for.cond13.preheader_crit_edge, %for.cond13.preheader.lr.ph
  %gpc.0129 = phi i32 [ 0, %for.cond13.preheader.lr.ph ], [ %inc66, %for.inc65.for.cond13.preheader_crit_edge ]
  %ao.0128 = phi i32 [ %mul7, %for.cond13.preheader.lr.ph ], [ %ao.1.lcssa, %for.inc65.for.cond13.preheader_crit_edge ]
  %bo.0127 = phi i32 [ 0, %for.cond13.preheader.lr.ph ], [ %bo.1.lcssa, %for.inc65.for.cond13.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 17, i32 %gpc.0129
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp15119.not = icmp eq i8 %24, 0
  br i1 %cmp15119.not, label %for.cond13.preheader.for.inc65_crit_edge, label %for.body17.lr.ph

for.cond13.preheader.for.inc65_crit_edge:         ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc65

for.body17.lr.ph:                                 ; preds = %for.cond13.preheader
  %arrayidx33 = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 18, i32 %gpc.0129
  %mul28 = shl i32 %gpc.0129, 15
  %add29 = add nuw nsw i32 %mul28, 5255168
  br label %for.body17

for.body17:                                       ; preds = %cleanup.for.body17_crit_edge, %for.body17.lr.ph
  %ppc.0122 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc64, %cleanup.for.body17_crit_edge ]
  %ao.1121 = phi i32 [ %ao.0128, %for.body17.lr.ph ], [ %ao.2, %cleanup.for.body17_crit_edge ]
  %bo.1120 = phi i32 [ %bo.0127, %for.body17.lr.ph ], [ %bo.2, %cleanup.for.body17_crit_edge ]
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %26 to i32
  %shl35 = shl nuw i32 1, %ppc.0122
  %and = and i32 %shl35, %conv34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body17.cleanup_crit_edge, label %if.end

for.body17.cleanup_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #5
  %mul30 = shl i32 %ppc.0122, 9
  %add31 = add nuw nsw i32 %add29, %mul30
  %arrayidx19 = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 20, i32 %gpc.0129, i32 %ppc.0122
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %28 to i32
  %add36 = or i32 %add31, 192
  %shl37 = mul i32 %shl, %conv20
  %or38 = or i32 %shl37, 268435456
  %inc = add i32 %bo.1120, 1
  %or39 = or i32 %or38, %inc
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add36, i32 noundef %or39, i32 noundef -1, i32 noundef -1) #3
  %or43 = or i32 %or38, %bo.1120
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add36, i32 noundef %or43, i32 noundef 0, i32 noundef -1) #3
  %29 = ptrtoint ptr %attrib_nr_max to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %attrib_nr_max, align 4
  %31 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx19, align 1
  %conv48 = zext i8 %32 to i32
  %mul49 = mul i32 %30, %conv48
  %add50 = add i32 %mul49, %bo.1120
  %add51 = or i32 %add31, 228
  %shl52 = mul i32 %mul21, %conv20
  %or53 = or i32 %shl52, %ao.1121
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add51, i32 noundef %or53, i32 noundef 0, i32 noundef -1) #3
  %33 = ptrtoint ptr %alpha_nr_max to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %alpha_nr_max, align 4
  %35 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx19, align 1
  %conv58 = zext i8 %36 to i32
  %mul59 = mul i32 %34, %conv58
  %add60 = add i32 %mul59, %ao.1121
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body17.cleanup_crit_edge
  %bo.2 = phi i32 [ %add50, %if.end ], [ %bo.1120, %for.body17.cleanup_crit_edge ]
  %ao.2 = phi i32 [ %add60, %if.end ], [ %ao.1121, %for.body17.cleanup_crit_edge ]
  %inc64 = add nuw nsw i32 %ppc.0122, 1
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %38 to i32
  %cmp15 = icmp ult i32 %inc64, %conv14
  br i1 %cmp15, label %cleanup.for.body17_crit_edge, label %cleanup.for.inc65_crit_edge

cleanup.for.inc65_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc65

cleanup.for.body17_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body17

for.inc65:                                        ; preds = %cleanup.for.inc65_crit_edge, %for.cond13.preheader.for.inc65_crit_edge
  %bo.1.lcssa = phi i32 [ %bo.0127, %for.cond13.preheader.for.inc65_crit_edge ], [ %bo.2, %cleanup.for.inc65_crit_edge ]
  %ao.1.lcssa = phi i32 [ %ao.0128, %for.cond13.preheader.for.inc65_crit_edge ], [ %ao.2, %cleanup.for.inc65_crit_edge ]
  %inc66 = add nuw nsw i32 %gpc.0129, 1
  %39 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %gpc_nr, align 1
  %conv11 = zext i8 %40 to i32
  %cmp = icmp ult i32 %inc66, %conv11
  br i1 %cmp, label %for.inc65.for.cond13.preheader_crit_edge, label %for.inc65.for.end67_crit_edge

for.inc65.for.end67_crit_edge:                    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end67

for.inc65.for.cond13.preheader_crit_edge:         ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond13.preheader

for.end67:                                        ; preds = %for.inc65.for.end67_crit_edge, %entry.for.end67_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_grctx_mmio_data(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_mmio_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_bundle(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_pagepool(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_tpc_nr(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_r4060a8(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_alpha_beta_tables(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_max_ways_evict(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_r419cb8(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @gf117_grctx_pack_gpc_1, !1, !"gf117_grctx_pack_gpc_1", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 97, i32 1}
!2 = !{ptr @gf117_grctx_init_pe_0, !3, !"gf117_grctx_init_pe_0", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 105, i32 1}
!4 = !{ptr @gf117_grctx_init_wwdx_0, !5, !"gf117_grctx_init_wwdx_0", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 162, i32 1}
!6 = !{ptr @gf117_grctx, !7, !"gf117_grctx", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 282, i32 1}
!8 = !{ptr @gf117_grctx_pack_hub, !9, !"gf117_grctx_pack_hub", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 60, i32 1}
!10 = !{ptr @gf117_grctx_init_ds_0, !11, !"gf117_grctx_init_ds_0", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 34, i32 1}
!12 = !{ptr @gf117_grctx_init_pd_0, !13, !"gf117_grctx_init_pd_0", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 47, i32 1}
!14 = !{ptr @gf117_grctx_pack_gpc_0, !15, !"gf117_grctx_pack_gpc_0", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 87, i32 1}
!16 = !{ptr @gf117_grctx_init_setup_0, !17, !"gf117_grctx_init_setup_0", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 74, i32 1}
!18 = !{ptr @gf117_grctx_pack_tpc, !19, !"gf117_grctx_pack_tpc", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 138, i32 1}
!20 = !{ptr @gf117_grctx_init_tex_0, !21, !"gf117_grctx_init_tex_0", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 113, i32 1}
!22 = !{ptr @gf117_grctx_init_mpc_0, !23, !"gf117_grctx_init_mpc_0", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 127, i32 1}
!24 = !{ptr @gf117_grctx_pack_ppc, !25, !"gf117_grctx_pack_ppc", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 176, i32 1}
!26 = !{ptr @gf117_grctx_init_pes_0, !27, !"gf117_grctx_init_pes_0", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 148, i32 1}
!28 = !{ptr @gf117_grctx_init_cbm_0, !29, !"gf117_grctx_init_cbm_0", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf117.c", i32 154, i32 1}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2156300176}
!40 = !{i64 5421579}
!41 = !{i64 2156300685}
!42 = !{i64 2156301160}
!43 = !{i64 2156301688}
!44 = !{i64 2156302156}
!45 = !{i64 2156302581}
!46 = !{i64 2156303087}
!47 = !{i64 2156303562}
