; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.nvkm_therm_clkgate_init = type { i32, i8, i32 }
%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.gf100_gr_ucode = type { %struct.nvkm_blob, %struct.nvkm_blob }
%struct.nvkm_blob = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_therm_clkgate_pack = type { ptr }
%struct.gf100_gr_func_zbc = type { ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@gk104_gr_init_main_0 = dso_local constant { [12 x %struct.gf100_gr_init], [32 x i8] } { [12 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4194432, i8 1, i32 4, i32 3179458 }, %struct.gf100_gr_init { i32 4194440, i8 1, i32 4, i32 131047 }, %struct.gf100_gr_init { i32 4194444, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194448, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 4194620, i8 1, i32 4, i32 3736055 }, %struct.gf100_gr_init { i32 4194624, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4194628, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194632, i8 1, i32 4, i32 272 }, %struct.gf100_gr_init { i32 4194616, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194608, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194596, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gk104_gr_init_gpc_unk_2 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294788, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gk104_gr_init_tpccs_0 = dso_local constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300044, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300048, i8 1, i32 4, i32 20 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_gr_init_pe_0 = dso_local constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4298764, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4298820, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298832, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 4298836, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_gr_init_be_0 = dso_local constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4229132, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229200, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 4229392, i8 9, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229460, i8 1, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 4229464, i8 1, i32 4, i32 52 }, %struct.gf100_gr_init { i32 4229508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229512, i8 1, i32 4, i32 134480385 }, %struct.gf100_gr_init { i32 4229516, i8 1, i32 4, i32 -2143281136 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_fe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_pri_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_rstr2d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_pd_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_ds_0 = internal constant { [6 x %struct.gf100_gr_init], [32 x i8] } { [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216900, i8 1, i32 4, i32 16777215 }, %struct.gf100_gr_init { i32 4216912, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217088, i8 1, i32 4, i32 65332 }, %struct.gf100_gr_init { i32 4217096, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217128, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_scc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_sked_0 = internal constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4222992, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gk104_gr_init_cwd_0 = internal constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4217680, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf119_gr_init_prop_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_gr_init_gpc_unk_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_setup_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_crstr_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_gr_init_setup_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_zcull_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_gpm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_gpc_unk_1 = internal constant { [9 x %struct.gf100_gr_init], [48 x i8] } { [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295936, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295976, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296448, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296480, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296192, i8 1, i32 4, i32 96 }, %struct.gf100_gr_init { i32 4296200, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296220, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_gcc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf119_gr_init_tex_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_l1c_0 = internal constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299928, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299944, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299952, i8 1, i32 4, i32 16777216 }, %struct.gf100_gr_init { i32 4299956, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299960, i8 1, i32 4, i32 11570154 }, %struct.gf100_gr_init { i32 4299908, i8 1, i32 4, i32 66436 }, %struct.gf100_gr_init { i32 4299964, i8 1, i32 4, i32 672364102 }, %struct.gf100_gr_init { i32 4299968, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299904, i8 1, i32 4, i32 131634 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_mpc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_sm_0 = internal constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300288, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300448, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300516, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300452, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4300456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300468, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300544, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300660, i8 1, i32 4, i32 1365 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf117_gr_init_pes_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_gr_init_wwdx_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf117_gr_init_cbm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_fe_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_pack_mmio = dso_local constant { [31 x %struct.gf100_gr_pack], [40 x i8] } { [31 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gk104_gr_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_sked_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_cwd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_gr_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_gr_init_setup_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_zcull_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gcc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_gpc_unk_2, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf119_gr_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_sm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_pes_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf117_gr_init_cbm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_be_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_fe_1, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_main_0 = dso_local constant { [4 x %struct.nvkm_therm_clkgate_init], [48 x i8] } { [4 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4211184, i8 1, i32 16454 }, %struct.nvkm_therm_clkgate_init { i32 4233360, i8 1, i32 69 }, %struct.nvkm_therm_clkgate_init { i32 4233392, i8 1, i32 127 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_rstr2d_0 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4225216, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_unk_0 = dso_local constant { [4 x %struct.nvkm_therm_clkgate_init], [48 x i8] } { [4 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4218880, i8 1, i32 16452 }, %struct.nvkm_therm_clkgate_init { i32 4216928, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init { i32 4217100, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gcc_0 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4227136, i8 1, i32 16452 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_sked_0 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4222976, i8 1, i32 16452 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_unk_1 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4217840, i8 1, i32 16452 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_ctxctl_0 = dso_local constant { [3 x %struct.nvkm_therm_clkgate_init], [60 x i8] } { [3 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4302992, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init { i32 4303024, i8 1, i32 127 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [60 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_unk_0 = dso_local constant { [5 x %struct.nvkm_therm_clkgate_init], [36 x i8] } { [5 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4293888, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init { i32 4294152, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init { i32 4294280, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init { i32 4294424, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_esetup_0 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4294696, i8 1, i32 68 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_tpbus_0 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4295612, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_zcull_0 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4295024, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_tpconf_0 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4295792, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_unk_1 = dso_local constant { [5 x %struct.nvkm_therm_clkgate_init], [36 x i8] } { [5 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4295920, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init { i32 4296048, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init { i32 4296460, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init { i32 4296204, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_gcc_0 = dso_local constant { [3 x %struct.nvkm_therm_clkgate_init], [60 x i8] } { [3 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4296736, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init { i32 4296760, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [60 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_ffb_0 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4294808, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_tex_0 = dso_local constant { [3 x %struct.nvkm_therm_clkgate_init], [60 x i8] } { [3 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4299328, i8 9, i32 16450 }, %struct.nvkm_therm_clkgate_init { i32 4299468, i8 1, i32 16455 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [60 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_poly_0 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4298856, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_l1c_0 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4299980, i8 3, i32 66 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_unk_2 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4299888, i8 1, i32 16453 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_mp_0 = dso_local constant { [6 x %struct.nvkm_therm_clkgate_init], [56 x i8] } { [6 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4300752, i8 1, i32 16451 }, %struct.nvkm_therm_clkgate_init { i32 4300760, i8 1, i32 16457 }, %struct.nvkm_therm_clkgate_init { i32 4300768, i8 2, i32 16450 }, %struct.nvkm_therm_clkgate_init { i32 4300784, i8 1, i32 16454 }, %struct.nvkm_therm_clkgate_init { i32 4300792, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_gpc_ppc_0 = dso_local constant { [4 x %struct.nvkm_therm_clkgate_init], [48 x i8] } { [4 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4308520, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init { i32 4308968, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init { i32 4308688, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_rop_zrop_0 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4229136, i8 2, i32 16450 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_rop_0 = dso_local constant { [2 x %struct.nvkm_therm_clkgate_init], [40 x i8] } { [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4229760, i8 6, i32 16450 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_rop_crop_0 = dso_local constant { [4 x %struct.nvkm_therm_clkgate_init], [48 x i8] } { [4 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 4229544, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init { i32 4229552, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init { i32 4229560, i8 1, i32 16450 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gk104_clkgate_blcg_init_pxbar_0 = dso_local constant { [3 x %struct.nvkm_therm_clkgate_init], [60 x i8] } { [3 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 1296416, i8 1, i32 65663 }, %struct.nvkm_therm_clkgate_init { i32 1297376, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init zeroinitializer], [60 x i8] zeroinitializer }, align 32
@gk104_gr_fwif = internal constant { [3 x %struct.gf100_gr_fwif], [36 x i8] } { [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_load, ptr @gk104_gr, ptr null, ptr null }, %struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_nofw, ptr @gk104_gr, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gk104_gr_fecs_ucode = internal global { %struct.gf100_gr_ucode, [16 x i8] } { %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gk104_grhub_code, i32 3072 }, %struct.nvkm_blob { ptr @gk104_grhub_data, i32 772 } }, [16 x i8] zeroinitializer }, align 32
@gk104_gr_gpccs_ucode = internal global { %struct.gf100_gr_ucode, [16 x i8] } { %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gk104_grgpc_code, i32 1792 }, %struct.nvkm_blob { ptr @gk104_grgpc_data, i32 108 } }, [16 x i8] zeroinitializer }, align 32
@gk104_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gk104_clkgate_pack = internal constant { [26 x %struct.nvkm_therm_clkgate_pack], [56 x i8] } { [26 x %struct.nvkm_therm_clkgate_pack] [%struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_main_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_rstr2d_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_unk_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gcc_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_sked_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_unk_1 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_ctxctl_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_unk_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_esetup_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_tpbus_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_zcull_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_tpconf_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_unk_1 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_gcc_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_ffb_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_tex_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_poly_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_l1c_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_unk_2 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_mp_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_gpc_ppc_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_rop_zrop_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_rop_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_rop_crop_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_clkgate_blcg_init_pxbar_0 }, %struct.nvkm_therm_clkgate_pack zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gk104_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] }, [64 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gf100_gr_oneinit_tiles, ptr @gf100_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gf100_gr_init_gpc_mmu, ptr null, ptr null, ptr @gk104_gr_init_vsc_stream_master, ptr @gf117_gr_init_zcull, ptr @gf100_gr_init_num_active_ltcs, ptr @gk104_gr_init_rop_active_fbps, ptr null, ptr null, ptr null, ptr @gk104_gr_init_fecs_exceptions, ptr null, ptr null, ptr @gk104_gr_init_sked_hww_esr, ptr @gf100_gr_init_419cc0, ptr @gf100_gr_init_419eb4, ptr null, ptr @gk104_gr_init_ppc_exceptions, ptr @gf100_gr_init_tex_hww_esr, ptr null, ptr @gf100_gr_init_shader_exceptions, ptr @gf100_gr_init_400054, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr @gk104_gr_pack_mmio, %struct.anon { ptr @gk104_gr_fecs_ucode }, %struct.anon.0 { ptr @gk104_gr_gpccs_ucode }, ptr @gf100_gr_rops, i32 0, i32 0, i32 1, ptr @gk104_grctx, ptr @gk104_clkgate_pack, ptr @gf100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41024, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41111, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41152, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [64 x i8] zeroinitializer }, align 32
@gk104_grhub_data = internal global { [193 x i32], [220 x i8] } { [193 x i32] [i32 768, i32 772, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68675868], [220 x i8] zeroinitializer }, align 32
@gk104_grhub_code = internal global { <{ [707 x i32], [61 x i32] }>, [768 x i8] } { <{ [707 x i32], [61 x i32] }> <{ [707 x i32] [i32 60493557, i32 -1744775016, i32 -2031091239, i32 76134408, i32 -267641868, i32 569705207, i32 16253822, i32 -1241016124, i32 -1917123708, i32 142652928, i32 -2147447168, i32 -1867120241, i32 261419009, i32 -134096512, i32 20050944, i32 -1744775016, i32 -1984429607, i32 554431492, i32 -1241019964, i32 -1648688236, i32 143701504, i32 -1744789864, i32 -2135555681, i32 260370433, i32 -201271168, i32 16253234, i32 -268243783, i32 133242825, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 -1477381349, i32 270660870, i32 16249089, i32 32764107, i32 -134152241, i32 520448, i32 17035468, i32 -1124069424, i32 49068292, i32 -266352144, i32 133242569, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 16315163, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 469010570, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 200575114, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 -201003080, i32 -1615205605, i32 -1124009982, i32 26865812, i32 251660273, i32 -805174288, i32 79495177, i32 -1141009219, i32 302773253, i32 -1006630927, i32 -805239824, i32 79495179, i32 -50292240, i32 200541678, i32 520478, i32 17035462, i32 -1124069680, i32 520452, i32 17035463, i32 -1124069424, i32 26865668, i32 -1241470008, i32 -1175449420, i32 28231692, i32 -49158986, i32 133236158, i32 66110720, i32 774145, i32 -403635011, i32 -470760192, i32 15650561, i32 -199236368, i32 -828837109, i32 99220736, i32 -939522063, i32 -805239824, i32 79495182, i32 -1207648074, i32 468976845, i32 44812504, i32 -249619468, i32 -255524681, i32 -1144061517, i32 531951616, i32 -200231760, i32 -1477382117, i32 -803081211, i32 -936702220, i32 -1263140693, i32 213512208, i32 -250430992, i32 -255524857, i32 198181123, i32 -251347712, i32 -255524681, i32 -1144061517, i32 314296320, i32 -1108141068, i32 26865812, i32 385878001, i32 -805174288, i32 79495177, i32 -1594294024, i32 -201152528, i32 -1594044383, i32 -1745878792, i32 -66588404, i32 33812554, i32 -1124070960, i32 1579283716, i32 -268371966, i32 133238167, i32 66079484, i32 643074, i32 569705661, i32 16253534, i32 -250624016, i32 -263193593, i32 214958595, i32 -268124928, i32 133237703, i32 66079484, i32 839682, i32 133235901, i32 66080764, i32 970754, i32 -940571459, i32 -66588406, i32 33812554, i32 -1124070192, i32 1579283716, i32 -1124009982, i32 60420244, i32 251660273, i32 -805174288, i32 79495177, i32 40509941, i32 -184293392, i32 -1123904479, i32 -66588220, i32 33812551, i32 -1124070192, i32 29880324, i32 1258031089, i32 -805174288, i32 79495180, i32 39723509, i32 -251589486, i32 -263783417, i32 214958595, i32 -268124928, i32 133235399, i32 66079484, i32 839682, i32 569705661, i32 569705054, i32 -2014248321, i32 -2081406464, i32 9957634, i32 43249696, i32 -1795122737, i32 -1898968834, i32 1083101184, i32 -1233089841, i32 -1598683483, i32 15383297, i32 -1241218890, i32 468976018, i32 149206760, i32 -1108152388, i32 60420244, i32 385878001, i32 -805174288, i32 79495177, i32 133234936, i32 66061568, i32 1036290, i32 -135265091, i32 520449, i32 50589703, i32 -1124069424, i32 -1124009980, i32 523780, i32 1107302385, i32 -822078480, i32 300351505, i32 347472137, i32 1375752, i32 -251516944, i32 -267255801, i32 47185923, i32 -251347712, i32 -33109993, i32 616366096, i32 117442545, i32 -805305360, i32 79495170, i32 537077745, i32 16779249, i32 -805239824, i32 79495170, i32 537143281, i32 17041393, i32 -805239824, i32 79495170, i32 537602033, i32 17303537, i32 -805239824, i32 79495170, i32 537667569, i32 18614257, i32 -805239824, i32 79495170, i32 -251591790, i32 -267845625, i32 63963907, i32 -251347712, i32 -259587033, i32 133234723, i32 66061312, i32 184320, i32 670041277, i32 520452, i32 258051, i32 -1124072752, i32 271709188, i32 -1778063375, i32 -197073936, i32 -21403615, i32 -1863203070, i32 -268238464, i32 260055028, i32 18345986, i32 -1241243717, i32 133234962, i32 66061056, i32 118785, i32 133235901, i32 66061312, i32 118785, i32 401671357, i32 -135266048, i32 -618531582, i32 -316541689, i32 284684295, i32 138027509, i32 -1744826728, i32 569704719, i32 345309520, i32 520456, i32 17035456, i32 -1124072240, i32 520452, i32 17035457, i32 -1124072240, i32 3192580, i32 2079507, i32 -251464266, i32 -254607353, i32 265289987, i32 -1241203456, i32 280365077, i32 135575041, i32 -184410183, i32 -1157442783, i32 60293151, i32 4714754, i32 1346629664, i32 134500000, i32 -201187399, i32 1319148833, i32 -188940020, i32 -1600314892, i32 -201259954, i32 1319148833, i32 -135266048, i32 -1658719230, i32 134237856, i32 -932699660, i32 200548351, i32 72261882, i32 1747055624, i32 -1224728645, i32 -1233125312, i32 468975922, i32 16249022, i32 138027509, i32 -184485904, i32 -251143391, i32 -268369913, i32 30409219, i32 -1123762944, i32 521793556, i32 134219761, i32 -805174288, i32 79495169, i32 -201316108, i32 -672137167, i32 958526480, i32 -1309408780, i32 -180354588, i32 -1124013797, i32 77197460, i32 251660273, i32 -805174288, i32 79495177, i32 -1073735695, i32 -821947408, i32 670105617, i32 602980608, i32 2281218, i32 -182512696, i32 -939489013, i32 200548131, i32 -1189021342, i32 -1799552494, i32 -251160080, i32 -267452409, i32 164626947, i32 -201016064, i32 838074674, i32 102888706, i32 -258687734, i32 133236633, i32 66066176, i32 643074, i32 553387197, i32 -1712286531, i32 520454, i32 33812495, i32 -1124070960, i32 20050948, i32 168174069, i32 -1712286531, i32 520454, i32 33812503, i32 -1124070960, i32 856617988, i32 314122489, i32 20116482, i32 -184405260, i32 -66451935, i32 520480, i32 33812672, i32 -1124072752, i32 319747076, i32 -199285816, i32 838077707, i32 36893697, i32 168174069, i32 -251582480, i32 -255655929, i32 47186435, i32 -1123762944, i32 77197460, i32 385878001, i32 -805174288, i32 79495177, i32 -15855883, i32 -201202512, i32 -222753509, i32 -1641941758, i32 1175385097, i32 -201136976, i32 -1799540197, i32 -251160080, i32 -267452409, i32 164626947, i32 -201016064, i32 854851890, i32 102888706, i32 -258687734, i32 133236633, i32 66066176, i32 643074, i32 250873021, i32 284136465, i32 -184420880, i32 -184320479, i32 -1107379442, i32 522842148, i32 134219761, i32 -805174288, i32 79495170, i32 -22671627, i32 -2131164935, i32 -117339906, i32 -107939456, i32 -105842272, i32 -102696496, i32 -251347472, i32 -268304217, i32 -1429274461, i32 78365696, i32 -265286668, i32 -403631913, i32 -470803968, i32 15650560, i32 419493873, i32 -822021136, i32 569639167, i32 11581188, i32 31977476, i32 486541297, i32 -805305360, i32 79495182, i32 16821220, i32 -267580428, i32 -403631913, i32 569655297, i32 11265028, i32 1812722692, i32 118024177, i32 -197073936, i32 -4626399, i32 520450, i32 33812484, i32 -1124069424, i32 82309380, i32 1088679943, i32 -1184357900, i32 133235455, i32 66061056, i32 1036290, i32 -20511555, i32 49189968, i32 117503985, i32 -1153371152, i32 569639151, i32 520552, i32 33812482, i32 -1124069424, i32 66580484, i32 58597877, i32 16824305, i32 -251478087, i32 -268352281, i32 569655523, i32 79163805, i32 -5194491, i32 200586411, i32 520463, i32 50589703, i32 -1124070448, i32 520452, i32 258049, i32 -1124070704, i32 -51315708, i32 -53412640, i32 -56558416, i32 -25101168, i32 -2130968440, i32 854851836, i32 -268306432, i32 -4648715, i32 1894248706, i32 1088680001, i32 -123919884, i32 1894248704, i32 1088680001, i32 -1184357900, i32 -185597185, i32 -266603504, i32 -403635976, i32 -437255680, i32 551940160, i32 -250550800, i32 -259719161, i32 248512771, i32 -268124928, i32 -222951177, i32 -48499711, i32 67167729, i32 16836081, i32 -2063595535, i32 -805239824, i32 79495182, i32 133234936, i32 66067200, i32 1036290, i32 -4651843, i32 350744834, i32 1088680074, i32 -1180884492, i32 -403635457, i32 -470767508, i32 -1658719167, i32 133234936, i32 66094080, i32 1036290, i32 -135199555, i32 -202341376, i32 16764674, i32 -200933379, i32 16315163, i32 -1712286531, i32 520453, i32 33812495, i32 -1124070960, i32 212332548, i32 -1110433292, i32 520692, i32 33812617, i32 -1124069424, i32 520452, i32 33812673, i32 -1124072752, i32 520452, i32 33812611, i32 -1124072752, i32 133689348, i32 140648949, i32 -1073739791, i32 -805174288, i32 79495170, i32 -268432386, i32 615915306, i32 35698180, i32 -1712286531, i32 520456, i32 33812495, i32 -1124070960, i32 520452, i32 33812609, i32 -1124072752, i32 2617604, i32 2355456, i32 36040832, i32 -2013263887, i32 -805174288, i32 79495170, i32 -250603536, i32 -268304345, i32 318374435, i32 -1123813371, i32 144306324, i32 385878001, i32 -805174288, i32 79495177, i32 -1233059432, i32 43522068, i32 136689280, i32 -2147151107, i32 -1799547391, i32 -251029008, i32 -267452409, i32 164626947, i32 -251347712, i32 -259981305, i32 30409219, i32 -268124928, i32 133234983, i32 66095104, i32 184322, i32 401671357, i32 334496000, i32 84015622, i32 -1799552008, i32 -251029008, i32 -266928121, i32 164626947, i32 -1123762944, i32 93974676, i32 385878001, i32 -805174288, i32 79495177, i32 569704696, i32 -1477441408, i32 -803081204, i32 -184158224, i32 -133668319, i32 1090754560, i32 -2130704399, i32 -805174288, i32 79495171, i32 885273789, i32 253490431, i32 33576945, i32 -100248592, i32 66585909, i32 -1736421736, i32 569672015, i32 137410205, i32 -201256266, i32 60350235, i32 520470, i32 33812609, i32 -1124072496, i32 1073774596, i32 16783345, i32 -100264976, i32 66586113, i32 -403701512, i32 520452, i32 50589698, i32 -1124069680, i32 15200516, i32 65269760, i32 -251597105, i32 -199229212, i32 301265435, i32 218297350, i32 -183437328, i32 -200787423, i32 -135259119, i32 -618531582, i32 -316541689, i32 35779847, i32 -168510200, i32 -184034527, i32 -1744273375, i32 616371713, i32 83888113, i32 -805239824, i32 79495170, i32 -251519047, i32 -257621785, i32 569655779, i32 33353885, i32 -1241371408, i32 -218300124, i32 50313477, i32 -1526405135, i32 -197008400, i32 569744673, i32 616366698, i32 1207699441, i32 -805174288, i32 79495170, i32 -1241436944, i32 133235488, i32 66079484, i32 184322, i32 -1393556291, i32 111538177, i32 -1744783376, i32 228065292, i32 15200257, i32 24060405, i32 -183982096, i32 -184479711, i32 -201171423, i32 -1477438719, i32 -803081204, i32 -184158224, i32 -200777183, i32 -135254526, i32 -618531582, i32 -168510201, i32 -184010207, i32 -184385759, i32 -1123554015, i32 -618531340, i32 269612039, i32 -46136936, i32 200541457, i32 -1323174649, i32 63497], [61 x i32] zeroinitializer }>, [768 x i8] zeroinitializer }, align 32
@gk104_grgpc_code = internal global { <{ [431 x i32], [17 x i32] }>, [448 x i8] } { <{ [431 x i32], [17 x i32] }> <{ [431 x i32] [i32 60886773, i32 -1744775016, i32 -2031091239, i32 76134408, i32 -267641868, i32 569705207, i32 16253822, i32 -1241016124, i32 -1917123708, i32 142652928, i32 -2147447168, i32 -1867120241, i32 261419009, i32 -134096512, i32 20050944, i32 -1744775016, i32 -1984429607, i32 554431492, i32 -1241019964, i32 -1648688236, i32 143701504, i32 -1744789864, i32 -2135555681, i32 260370433, i32 -201271168, i32 16253234, i32 -268243783, i32 133242825, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 -1477381349, i32 270660870, i32 16249089, i32 32764107, i32 -134152241, i32 520448, i32 17035468, i32 -1124069424, i32 49068292, i32 -266352144, i32 133242569, i32 66112000, i32 839681, i32 -940505923, i32 -1007629824, i32 13422337, i32 -199242552, i32 16315163, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 469010570, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -1712286531, i32 520448, i32 33812495, i32 -1124070960, i32 520452, i32 33812486, i32 -1124070704, i32 8909060, i32 25423872, i32 -16742193, i32 200575114, i32 -258687501, i32 133234841, i32 66066176, i32 643074, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 -201003080, i32 -1615205605, i32 -1124009982, i32 26865812, i32 251660273, i32 -805174288, i32 79495177, i32 -1141009219, i32 302773253, i32 -1006630927, i32 -805239824, i32 79495179, i32 -50292240, i32 200541678, i32 520478, i32 17035462, i32 -1124069680, i32 520452, i32 17035463, i32 -1124069424, i32 26865668, i32 -1241470008, i32 -1175449420, i32 28231692, i32 -49158986, i32 133236158, i32 66110720, i32 774145, i32 -403635011, i32 -470760192, i32 15650561, i32 -199236368, i32 -828837109, i32 99220736, i32 -939522063, i32 -805239824, i32 79495182, i32 -1207648074, i32 468976845, i32 44812504, i32 -249619468, i32 -255524681, i32 -1144061517, i32 531951616, i32 -200231760, i32 -1477382117, i32 -803081211, i32 -936702220, i32 -1263140693, i32 213512208, i32 -250430992, i32 -255524857, i32 198181123, i32 -251347712, i32 -255524681, i32 -1144061517, i32 314296320, i32 -1108141068, i32 26865812, i32 385878001, i32 -805174288, i32 79495177, i32 -1594294024, i32 -201152528, i32 -1594044383, i32 -1745878792, i32 -66588404, i32 33812554, i32 -1124070960, i32 1579283716, i32 -268371966, i32 133238167, i32 66079484, i32 643074, i32 569705661, i32 16253534, i32 -250624016, i32 -263193593, i32 214958595, i32 -268124928, i32 133237703, i32 66079484, i32 839682, i32 133235901, i32 66080764, i32 970754, i32 -940571459, i32 -66588406, i32 33812554, i32 -1124070192, i32 1579283716, i32 -1124009982, i32 60420244, i32 251660273, i32 -805174288, i32 79495177, i32 40509941, i32 -184293392, i32 -1123904479, i32 -66588220, i32 33812551, i32 -1124070192, i32 29880324, i32 1258031089, i32 -805174288, i32 79495180, i32 39723509, i32 -251589486, i32 -263783417, i32 214958595, i32 -268124928, i32 133235399, i32 66079484, i32 839682, i32 569705661, i32 569705054, i32 -2014248321, i32 -2081406464, i32 9957634, i32 43249696, i32 -1795122737, i32 -1898968834, i32 1083101184, i32 -1233089841, i32 -1598683483, i32 15383297, i32 -1241218890, i32 468976018, i32 149206760, i32 -1108152388, i32 60420244, i32 385878001, i32 -805174288, i32 79495177, i32 -520552200, i32 -251461703, i32 -258468633, i32 569655523, i32 33026205, i32 -251461703, i32 -258204441, i32 569655523, i32 -119472995, i32 -251347712, i32 -264110057, i32 298778643, i32 152168192, i32 135575041, i32 -268430082, i32 133235239, i32 66064896, i32 184320, i32 401671357, i32 285082949, i32 520448, i32 258055, i32 -1124073264, i32 69726212, i32 67110897, i32 -805305360, i32 79495170, i32 -250596876, i32 -259915737, i32 583991587, i32 20443136, i32 -1155586832, i32 850789426, i32 84049921, i32 -251264128, i32 -259653593, i32 583991587, i32 67272704, i32 -250665802, i32 -255262713, i32 47186179, i32 -251347712, i32 -267636505, i32 -437235485, i32 -1121665791, i32 -196821708, i32 -156211167, i32 252441600, i32 -1157498896, i32 1341981938, i32 19969541, i32 -1241440074, i32 649069792, i32 -501484543, i32 -2147024000, i32 670107652, i32 602931456, i32 2281218, i32 630535357, i32 520456, i32 17035456, i32 -1124071984, i32 520452, i32 17035457, i32 -1124071984, i32 956420, i32 -184479848, i32 -1157541855, i32 1069219887, i32 17733632, i32 -184414312, i32 -1744744415, i32 -268630770, i32 3062528, i32 -1744814405, i32 261620238, i32 1344402691, i32 118396929, i32 -1157566467, i32 1052442670, i32 37074432, i32 -754972687, i32 -805239824, i32 79495171, i32 -1240980042, i32 548800053, i32 19969537, i32 -1240980298, i32 800655412, i32 -752749310, i32 3128066, i32 -251641925, i32 -268369913, i32 63963651, i32 -1123762944, i32 522842148, i32 134219761, i32 -805174288, i32 79495170, i32 -201316108, i32 -672137167, i32 958526500, i32 -1326185996, i32 418645220, i32 25296414, i32 -1123670032, i32 68353312, i32 -50207562, i32 419300638, i32 19002624, i32 -653331450, i32 -267325548, i32 569704949, i32 250872702, i32 -117376564, i32 25755264, i32 -1862696711, i32 -1325817607, i32 -520498951, i32 79556857, i32 33597425, i32 -822041616, i32 -1413218134, i32 738980868, i32 -249243664, i32 -266731289, i32 -288423709, i32 16249088, i32 15986713, i32 -201261105, i32 -403700703, i32 520449, i32 258077, i32 -1124069680, i32 520452, i32 258049, i32 -1124070704, i32 -51315708, i32 -53412640, i32 -56558416, i32 -25101168, i32 -2130968440, i32 854851836, i32 -268306432, i32 244842999, i32 83802884, i32 -251461703, i32 -258729753, i32 569655523, i32 -268371811, i32 133243127, i32 66094336, i32 1036289, i32 -403700547, i32 31634952, i32 -235070476, i32 -251133707, i32 -251526923, i32 -259719161, i32 265289987, i32 -133907200, i32 520448, i32 33812609, i32 -1124069424, i32 118617092, i32 97722869, i32 40509941, i32 133244093, i32 66078716, i32 184322, i32 753927357, i32 52475393, i32 1258031089, i32 -805174288, i32 79495170, i32 -268325648, i32 -1208941915, i32 -1276116992, i32 67934288, i32 -1156594506, i32 211288252, i32 17668096, i32 -184490000, i32 -268341471, i32 -1208942164, i32 -1276100608, i32 67934288, i32 -1156594506, i32 211288252, i32 34445313, i32 -251261032, i32 -184024857, i32 -268341471, i32 -1510997588, i32 12054788, i32 1353969712, i32 -1241248616, i32 -1128591420, i32 34379776, i32 -1744630376, i32 -403634161, i32 569704960, i32 569704815, i32 32768606, i32 118682630, i32 41886197, i32 96150005, i32 248], [17 x i32] zeroinitializer }>, [448 x i8] zeroinitializer }, align 32
@gk104_grgpc_data = internal global { <{ i32, i32, i32, i32, [23 x i32] }>, [52 x i8] } { <{ i32, i32, i32, i32, [23 x i32] }> <{ i32 108, i32 108, i32 108, i32 108, [23 x i32] zeroinitializer }>, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"gk104_gr_init_main_0\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 35, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [24 x i8] c"gk104_gr_init_gpc_unk_2\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 86, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"gk104_gr_init_tpccs_0\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 92, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"gk104_gr_init_pe_0\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 99, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"gk104_gr_init_be_0\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 136, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"gk104_gr_init_ds_0\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 51, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"gk104_gr_init_sked_0\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 61, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"gk104_gr_init_cwd_0\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 67, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"gk104_gr_init_gpc_unk_1\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 73, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"gk104_gr_init_l1c_0\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 108, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"gk104_gr_init_sm_0\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 122, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"gk104_gr_pack_mmio\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 150, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [31 x i8] c"gk104_clkgate_blcg_init_main_0\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 185, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [33 x i8] c"gk104_clkgate_blcg_init_rstr2d_0\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 193, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [30 x i8] c"gk104_clkgate_blcg_init_unk_0\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 199, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [30 x i8] c"gk104_clkgate_blcg_init_gcc_0\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 207, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [31 x i8] c"gk104_clkgate_blcg_init_sked_0\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 213, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [30 x i8] c"gk104_clkgate_blcg_init_unk_1\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 219, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [37 x i8] c"gk104_clkgate_blcg_init_gpc_ctxctl_0\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 225, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [34 x i8] c"gk104_clkgate_blcg_init_gpc_unk_0\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 232, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [37 x i8] c"gk104_clkgate_blcg_init_gpc_esetup_0\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 241, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [36 x i8] c"gk104_clkgate_blcg_init_gpc_tpbus_0\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 247, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [36 x i8] c"gk104_clkgate_blcg_init_gpc_zcull_0\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 253, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [37 x i8] c"gk104_clkgate_blcg_init_gpc_tpconf_0\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 259, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [34 x i8] c"gk104_clkgate_blcg_init_gpc_unk_1\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 265, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [34 x i8] c"gk104_clkgate_blcg_init_gpc_gcc_0\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 274, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [34 x i8] c"gk104_clkgate_blcg_init_gpc_ffb_0\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 281, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [34 x i8] c"gk104_clkgate_blcg_init_gpc_tex_0\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 287, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant [35 x i8] c"gk104_clkgate_blcg_init_gpc_poly_0\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 294, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [34 x i8] c"gk104_clkgate_blcg_init_gpc_l1c_0\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 300, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant [34 x i8] c"gk104_clkgate_blcg_init_gpc_unk_2\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 306, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant [33 x i8] c"gk104_clkgate_blcg_init_gpc_mp_0\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 312, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [34 x i8] c"gk104_clkgate_blcg_init_gpc_ppc_0\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 322, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [35 x i8] c"gk104_clkgate_blcg_init_rop_zrop_0\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 330, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant [30 x i8] c"gk104_clkgate_blcg_init_rop_0\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 336, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [35 x i8] c"gk104_clkgate_blcg_init_rop_crop_0\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 342, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [32 x i8] c"gk104_clkgate_blcg_init_pxbar_0\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 350, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"gk104_gr_fwif\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 493, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"gk104_gr_fecs_ucode\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 439, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [21 x i8] c"gk104_gr_gpccs_ucode\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 449, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c"gk104_clkgate_pack\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 357, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [9 x i8] c"gk104_gr\00", align 1
@___asan_gen_.129 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 457, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"gk104_grhub_data\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2, i32 17 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"gk104_grhub_code\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgk104.fuc3.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 209, i32 17 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"gk104_grgpc_code\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 44, i32 17 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"gk104_grgpc_data\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgk104.fuc3.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 2, i32 17 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @gk104_gr_init_main_0, ptr @gk104_gr_init_gpc_unk_2, ptr @gk104_gr_init_tpccs_0, ptr @gk104_gr_init_pe_0, ptr @gk104_gr_init_be_0, ptr @gk104_gr_init_ds_0, ptr @gk104_gr_init_sked_0, ptr @gk104_gr_init_cwd_0, ptr @gk104_gr_init_gpc_unk_1, ptr @gk104_gr_init_l1c_0, ptr @gk104_gr_init_sm_0, ptr @gk104_gr_pack_mmio, ptr @gk104_clkgate_blcg_init_main_0, ptr @gk104_clkgate_blcg_init_rstr2d_0, ptr @gk104_clkgate_blcg_init_unk_0, ptr @gk104_clkgate_blcg_init_gcc_0, ptr @gk104_clkgate_blcg_init_sked_0, ptr @gk104_clkgate_blcg_init_unk_1, ptr @gk104_clkgate_blcg_init_gpc_ctxctl_0, ptr @gk104_clkgate_blcg_init_gpc_unk_0, ptr @gk104_clkgate_blcg_init_gpc_esetup_0, ptr @gk104_clkgate_blcg_init_gpc_tpbus_0, ptr @gk104_clkgate_blcg_init_gpc_zcull_0, ptr @gk104_clkgate_blcg_init_gpc_tpconf_0, ptr @gk104_clkgate_blcg_init_gpc_unk_1, ptr @gk104_clkgate_blcg_init_gpc_gcc_0, ptr @gk104_clkgate_blcg_init_gpc_ffb_0, ptr @gk104_clkgate_blcg_init_gpc_tex_0, ptr @gk104_clkgate_blcg_init_gpc_poly_0, ptr @gk104_clkgate_blcg_init_gpc_l1c_0, ptr @gk104_clkgate_blcg_init_gpc_unk_2, ptr @gk104_clkgate_blcg_init_gpc_mp_0, ptr @gk104_clkgate_blcg_init_gpc_ppc_0, ptr @gk104_clkgate_blcg_init_rop_zrop_0, ptr @gk104_clkgate_blcg_init_rop_0, ptr @gk104_clkgate_blcg_init_rop_crop_0, ptr @gk104_clkgate_blcg_init_pxbar_0, ptr @gk104_gr_fwif, ptr @gk104_gr_fecs_ucode, ptr @gk104_gr_gpccs_ucode, ptr @gk104_clkgate_pack, ptr @gk104_gr, ptr @gk104_grhub_data, ptr @gk104_grhub_code, ptr @gk104_grgpc_code, ptr @gk104_grgpc_data], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_init_main_0 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_init_gpc_unk_2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_init_tpccs_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_init_pe_0 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_init_be_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_init_ds_0 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_init_sked_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_init_cwd_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_init_gpc_unk_1 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_init_l1c_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_init_sm_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_pack_mmio to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_main_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_rstr2d_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_unk_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gcc_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_sked_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_unk_1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_ctxctl_0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_unk_0 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_esetup_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_tpbus_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_zcull_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_tpconf_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_unk_1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_gcc_0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_ffb_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_tex_0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_poly_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_l1c_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_unk_2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_mp_0 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_gpc_ppc_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_rop_zrop_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_rop_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_rop_crop_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_blcg_init_pxbar_0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_fwif to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_fecs_ucode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr_gpccs_ucode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_pack to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_gr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_grhub_data to i32), i32 772, i32 992, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_grhub_code to i32), i32 3072, i32 3840, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_grgpc_code to i32), i32 1792, i32 2240, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_grgpc_data to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_gr_init_sked_hww_esr(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !101
  tail call void @arm_heavy_mb() #2
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4223008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1073741824) #2, !srcloc !102
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_gr_init_rop_active_fbps(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1179764
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !104
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 4229200
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #2, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !106
  tail call void @arm_heavy_mb() #2
  %and = and i32 %7, -16
  %or = or i32 %and, %4
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 4229200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %or) #2, !srcloc !102
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %11, i32 4229464
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #2, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !108
  tail call void @arm_heavy_mb() #2
  %and21 = and i32 %12, -16
  %or22 = or i32 %and21, %4
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr24 = getelementptr i8, ptr %14, i32 4229464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %or22) #2, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_gr_init_ppc_exceptions(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %0 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp31.not = icmp eq i8 %1, 0
  br i1 %cmp31.not, label %entry.for.end15_crit_edge, label %for.cond3.preheader.lr.ph

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end15

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc13.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %gpc.032 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %inc14, %for.inc13.for.cond3.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 17, i32 %gpc.032
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp527.not = icmp eq i8 %5, 0
  br i1 %cmp527.not, label %for.cond3.preheader.for.inc13_crit_edge, label %for.body7.lr.ph

for.cond3.preheader.for.inc13_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc13

for.body7.lr.ph:                                  ; preds = %for.cond3.preheader
  %arrayidx8 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 18, i32 %gpc.032
  %mul = shl i32 %gpc.032, 15
  %add11 = add nuw nsw i32 %mul, 5255224
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body7.lr.ph
  %ppc.028 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc, %for.inc.for.body7_crit_edge ]
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %shl = shl nuw i32 1, %ppc.028
  %and = and i32 %shl, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body7.for.inc_crit_edge, label %do.body

for.body7.for.inc_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

do.body:                                          ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !109
  tail call void @arm_heavy_mb() #2
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %mul10 = shl i32 %ppc.028, 9
  %add12 = add nuw nsw i32 %add11, %mul10
  %add.ptr = getelementptr i8, ptr %9, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1073741824) #2, !srcloc !102
  br label %for.inc

for.inc:                                          ; preds = %do.body, %for.body7.for.inc_crit_edge
  %inc = add nuw nsw i32 %ppc.028, 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp ult i32 %inc, %conv4
  br i1 %cmp5, label %for.inc.for.body7_crit_edge, label %for.inc.for.inc13_crit_edge

for.inc.for.inc13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc13

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body7

for.inc13:                                        ; preds = %for.inc.for.inc13_crit_edge, %for.cond3.preheader.for.inc13_crit_edge
  %inc14 = add nuw nsw i32 %gpc.032, 1
  %12 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %gpc_nr, align 1
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc14, %conv
  br i1 %cmp, label %for.inc13.for.cond3.preheader_crit_edge, label %for.inc13.for.end15_crit_edge

for.inc13.for.end15_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end15

for.inc13.for.cond3.preheader_crit_edge:          ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond3.preheader

for.end15:                                        ; preds = %for.inc13.for.end15_crit_edge, %entry.for.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_gr_init_vsc_stream_master(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !110
  tail call void @arm_heavy_mb() #2
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5255192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1) #2, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gk104_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #2
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
declare dso_local void @gf117_gr_init_zcull(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_num_active_ltcs(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gk104_gr_init_fecs_exceptions(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !111
  tail call void @arm_heavy_mb() #2
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4235260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #2, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !112
  tail call void @arm_heavy_mb() #2
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 4234260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 15934) #2, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !113
  tail call void @arm_heavy_mb() #2
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 4234276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 983041) #2, !srcloc !102
  ret void
}

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

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @gk104_gr_init_main_0, !1, !"gk104_gr_init_main_0", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 35, i32 1}
!2 = !{ptr @gk104_gr_init_gpc_unk_2, !3, !"gk104_gr_init_gpc_unk_2", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 86, i32 1}
!4 = !{ptr @gk104_gr_init_tpccs_0, !5, !"gk104_gr_init_tpccs_0", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 92, i32 1}
!6 = !{ptr @gk104_gr_init_pe_0, !7, !"gk104_gr_init_pe_0", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 99, i32 1}
!8 = !{ptr @gk104_gr_init_be_0, !9, !"gk104_gr_init_be_0", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 136, i32 1}
!10 = !{ptr @gk104_gr_pack_mmio, !11, !"gk104_gr_pack_mmio", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 150, i32 1}
!12 = !{ptr @gk104_clkgate_blcg_init_main_0, !13, !"gk104_clkgate_blcg_init_main_0", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 185, i32 1}
!14 = !{ptr @gk104_clkgate_blcg_init_rstr2d_0, !15, !"gk104_clkgate_blcg_init_rstr2d_0", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 193, i32 1}
!16 = !{ptr @gk104_clkgate_blcg_init_unk_0, !17, !"gk104_clkgate_blcg_init_unk_0", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 199, i32 1}
!18 = !{ptr @gk104_clkgate_blcg_init_gcc_0, !19, !"gk104_clkgate_blcg_init_gcc_0", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 207, i32 1}
!20 = !{ptr @gk104_clkgate_blcg_init_sked_0, !21, !"gk104_clkgate_blcg_init_sked_0", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 213, i32 1}
!22 = !{ptr @gk104_clkgate_blcg_init_unk_1, !23, !"gk104_clkgate_blcg_init_unk_1", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 219, i32 1}
!24 = !{ptr @gk104_clkgate_blcg_init_gpc_ctxctl_0, !25, !"gk104_clkgate_blcg_init_gpc_ctxctl_0", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 225, i32 1}
!26 = !{ptr @gk104_clkgate_blcg_init_gpc_unk_0, !27, !"gk104_clkgate_blcg_init_gpc_unk_0", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 232, i32 1}
!28 = !{ptr @gk104_clkgate_blcg_init_gpc_esetup_0, !29, !"gk104_clkgate_blcg_init_gpc_esetup_0", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 241, i32 1}
!30 = !{ptr @gk104_clkgate_blcg_init_gpc_tpbus_0, !31, !"gk104_clkgate_blcg_init_gpc_tpbus_0", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 247, i32 1}
!32 = !{ptr @gk104_clkgate_blcg_init_gpc_zcull_0, !33, !"gk104_clkgate_blcg_init_gpc_zcull_0", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 253, i32 1}
!34 = !{ptr @gk104_clkgate_blcg_init_gpc_tpconf_0, !35, !"gk104_clkgate_blcg_init_gpc_tpconf_0", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 259, i32 1}
!36 = !{ptr @gk104_clkgate_blcg_init_gpc_unk_1, !37, !"gk104_clkgate_blcg_init_gpc_unk_1", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 265, i32 1}
!38 = !{ptr @gk104_clkgate_blcg_init_gpc_gcc_0, !39, !"gk104_clkgate_blcg_init_gpc_gcc_0", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 274, i32 1}
!40 = !{ptr @gk104_clkgate_blcg_init_gpc_ffb_0, !41, !"gk104_clkgate_blcg_init_gpc_ffb_0", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 281, i32 1}
!42 = !{ptr @gk104_clkgate_blcg_init_gpc_tex_0, !43, !"gk104_clkgate_blcg_init_gpc_tex_0", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 287, i32 1}
!44 = !{ptr @gk104_clkgate_blcg_init_gpc_poly_0, !45, !"gk104_clkgate_blcg_init_gpc_poly_0", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 294, i32 1}
!46 = !{ptr @gk104_clkgate_blcg_init_gpc_l1c_0, !47, !"gk104_clkgate_blcg_init_gpc_l1c_0", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 300, i32 1}
!48 = !{ptr @gk104_clkgate_blcg_init_gpc_unk_2, !49, !"gk104_clkgate_blcg_init_gpc_unk_2", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 306, i32 1}
!50 = !{ptr @gk104_clkgate_blcg_init_gpc_mp_0, !51, !"gk104_clkgate_blcg_init_gpc_mp_0", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 312, i32 1}
!52 = !{ptr @gk104_clkgate_blcg_init_gpc_ppc_0, !53, !"gk104_clkgate_blcg_init_gpc_ppc_0", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 322, i32 1}
!54 = !{ptr @gk104_clkgate_blcg_init_rop_zrop_0, !55, !"gk104_clkgate_blcg_init_rop_zrop_0", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 330, i32 1}
!56 = !{ptr @gk104_clkgate_blcg_init_rop_0, !57, !"gk104_clkgate_blcg_init_rop_0", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 336, i32 1}
!58 = !{ptr @gk104_clkgate_blcg_init_rop_crop_0, !59, !"gk104_clkgate_blcg_init_rop_crop_0", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 342, i32 1}
!60 = !{ptr @gk104_clkgate_blcg_init_pxbar_0, !61, !"gk104_clkgate_blcg_init_pxbar_0", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 350, i32 1}
!62 = !{ptr @gk104_gr_init_ds_0, !63, !"gk104_gr_init_ds_0", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 51, i32 1}
!64 = !{ptr @gk104_gr_init_sked_0, !65, !"gk104_gr_init_sked_0", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 61, i32 1}
!66 = !{ptr @gk104_gr_init_cwd_0, !67, !"gk104_gr_init_cwd_0", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 67, i32 1}
!68 = !{ptr @gk104_gr_init_gpc_unk_1, !69, !"gk104_gr_init_gpc_unk_1", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 73, i32 1}
!70 = !{ptr @gk104_gr_init_l1c_0, !71, !"gk104_gr_init_l1c_0", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 108, i32 1}
!72 = !{ptr @gk104_gr_init_sm_0, !73, !"gk104_gr_init_sm_0", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 122, i32 1}
!74 = !{ptr @gk104_gr_fwif, !75, !"gk104_gr_fwif", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 493, i32 1}
!76 = !{ptr @gk104_gr, !77, !"gk104_gr", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 457, i32 1}
!78 = !{ptr @gk104_gr_fecs_ucode, !79, !"gk104_gr_fecs_ucode", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 439, i32 1}
!80 = !{ptr @gk104_grhub_code, !81, !"gk104_grhub_code", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgk104.fuc3.h", i32 209, i32 17}
!82 = !{ptr @gk104_grhub_data, !83, !"gk104_grhub_data", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgk104.fuc3.h", i32 2, i32 17}
!84 = !{ptr @gk104_gr_gpccs_ucode, !85, !"gk104_gr_gpccs_ucode", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 449, i32 1}
!86 = !{ptr @gk104_grgpc_code, !87, !"gk104_grgpc_code", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgk104.fuc3.h", i32 44, i32 17}
!88 = !{ptr @gk104_grgpc_data, !89, !"gk104_grgpc_data", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgk104.fuc3.h", i32 2, i32 17}
!90 = !{ptr @gk104_clkgate_pack, !91, !"gk104_clkgate_pack", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk104.c", i32 357, i32 1}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2156317225}
!102 = !{i64 5414607}
!103 = !{i64 5415025}
!104 = !{i64 2156318920}
!105 = !{i64 2156319689}
!106 = !{i64 2156320089}
!107 = !{i64 2156320960}
!108 = !{i64 2156321360}
!109 = !{i64 2156321966}
!110 = !{i64 2156322484}
!111 = !{i64 2156317638}
!112 = !{i64 2156318051}
!113 = !{i64 2156318464}
