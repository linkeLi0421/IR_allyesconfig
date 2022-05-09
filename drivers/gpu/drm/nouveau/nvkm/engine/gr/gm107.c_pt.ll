; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.anon.171 = type { i32, i32 }
%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_gr_ucode = type { %struct.nvkm_blob, %struct.nvkm_blob }
%struct.nvkm_blob = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.nvbios_P0260E = type { i32 }
%struct.nvbios_P0260X = type { i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.160, %struct.anon.161, i8, ptr, ptr }
%struct.anon.160 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.161 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }

@gm107_gr_init_scc_0 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4227132, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gm107_gr_init_prop_0 = dso_local constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4293640, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4293792, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gm107_gr_init_setup_1 = dso_local constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294856, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294864, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4294868, i8 1, i32 4, i32 66049 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gm107_gr_init_zcull_0 = dso_local constant { [7 x %struct.gf100_gr_init], [48 x i8] } { [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294928, i8 1, i32 4, i32 65537 }, %struct.gf100_gr_init { i32 4294932, i8 1, i32 4, i32 769 }, %struct.gf100_gr_init { i32 4294936, i8 1, i32 4, i32 8388608 }, %struct.gf100_gr_init { i32 4294960, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295040, i8 1, i32 4, i32 2004318064 }, %struct.gf100_gr_init { i32 4295044, i8 3, i32 4, i32 2004318071 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gm107_gr_init_gpc_unk_1 = dso_local constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295936, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296448, i8 1, i32 4, i32 1024 }, %struct.gf100_gr_init { i32 4296456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296200, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gm107_gr_init_tex_0 = dso_local constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299440, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299448, i8 1, i32 4, i32 231 }, %struct.gf100_gr_init { i32 4299452, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299468, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 4299456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299432, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299472, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299488, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299504, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gm107_gr_init_l1c_0 = dso_local constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299928, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299968, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gm107_gr_init_wwdx_0 = dso_local constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308948, i8 1, i32 4, i32 8388608 }, %struct.gf100_gr_init { i32 4308956, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gm107_gr_init_cbm_0 = dso_local constant { [2 x %struct.gf100_gr_init], [32 x i8] } { [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308684, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gm107_gr_init_bios.regs = internal constant { [5 x %struct.anon.171], [56 x i8] } { [5 x %struct.anon.171] [%struct.anon.171 { i32 4300504, i32 4300512 }, %struct.anon.171 { i32 4299472, i32 4299476 }, %struct.anon.171 { i32 4299488, i32 4299492 }, %struct.anon.171 { i32 4299504, i32 4299508 }, %struct.anon.171 { i32 4299512, i32 4299516 }], [56 x i8] zeroinitializer }, align 32
@gm107_gr_fwif = internal constant { [3 x %struct.gf100_gr_fwif], [36 x i8] } { [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_load, ptr @gm107_gr, ptr null, ptr null }, %struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_nofw, ptr @gm107_gr, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gm107_gr_pack_mmio = internal constant { [32 x %struct.gf100_gr_pack], [64 x i8] } { [32 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gm107_gr_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_sked_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk110_gr_init_cwd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk208_gr_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_setup_1, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_zcull_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gcc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gk104_gr_init_gpc_unk_2, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_sm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_l1c_1, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_pes_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_cbm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_be_0, i32 0 }, %struct.gf100_gr_pack { ptr @gm107_gr_init_sm_1, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [64 x i8] zeroinitializer }, align 32
@gm107_gr_fecs_ucode = internal global { %struct.gf100_gr_ucode, [16 x i8] } { %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gm107_grhub_code, i32 2560 }, %struct.nvkm_blob { ptr @gm107_grhub_data, i32 772 } }, [16 x i8] zeroinitializer }, align 32
@gm107_gr_gpccs_ucode = internal global { %struct.gf100_gr_ucode, [16 x i8] } { %struct.gf100_gr_ucode { %struct.nvkm_blob { ptr @gm107_grgpc_code, i32 2048 }, %struct.nvkm_blob { ptr @gm107_grgpc_data, i32 108 } }, [16 x i8] zeroinitializer }, align 32
@gm107_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gm107_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] }, [64 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gf100_gr_oneinit_tiles, ptr @gf100_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gm107_gr_init_gpc_mmu, ptr null, ptr @gm107_gr_init_bios, ptr @gk104_gr_init_vsc_stream_master, ptr @gf117_gr_init_zcull, ptr @gf100_gr_init_num_active_ltcs, ptr @gk104_gr_init_rop_active_fbps, ptr @gm107_gr_init_bios_2, ptr null, ptr null, ptr @gf100_gr_init_fecs_exceptions, ptr null, ptr null, ptr @gk104_gr_init_sked_hww_esr, ptr @gf100_gr_init_419cc0, ptr null, ptr null, ptr @gk104_gr_init_ppc_exceptions, ptr @gf100_gr_init_tex_hww_esr, ptr @gm107_gr_init_504430, ptr @gm107_gr_init_shader_exceptions, ptr @gm107_gr_init_400054, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr @gm107_gr_pack_mmio, %struct.anon { ptr @gm107_gr_fecs_ucode }, %struct.anon.0 { ptr @gm107_gr_gpccs_ucode }, ptr @gf100_gr_rops, i32 0, i32 0, i32 2, ptr @gm107_grctx, ptr null, ptr @gf100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41280, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 45207, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 45248, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [64 x i8] zeroinitializer }, align 32
@gm107_gr_init_main_0 = internal constant { [16 x %struct.gf100_gr_init], [64 x i8] } { [16 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4229132, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229392, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4303008, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194432, i8 1, i32 4, i32 3146690 }, %struct.gf100_gr_init { i32 4194440, i8 1, i32 4, i32 114663 }, %struct.gf100_gr_init { i32 4194444, i8 1, i32 4, i32 393216 }, %struct.gf100_gr_init { i32 4194448, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 4194620, i8 1, i32 4, i32 3736051 }, %struct.gf100_gr_init { i32 4194624, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4194628, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194632, i8 1, i32 4, i32 272 }, %struct.gf100_gr_init { i32 4194616, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194608, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4194596, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init zeroinitializer], [64 x i8] zeroinitializer }, align 32
@gk110_gr_init_fe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_pri_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_rstr2d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_pd_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_gr_init_ds_0 = internal constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216900, i8 1, i32 4, i32 16777215 }, %struct.gf100_gr_init { i32 4216912, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217088, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217096, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gm107_gr_init_sked_0 = internal constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4222992, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4223040, i8 1, i32 4, i32 1078199332 }, %struct.gf100_gr_init { i32 4223048, i8 1, i32 4, i32 10 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gk110_gr_init_cwd_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk208_gr_init_gpc_unk_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_setup_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_crstr_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_gpm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_gcc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gk104_gr_init_gpc_unk_2 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_gr_init_tpccs_0 = internal constant { [10 x %struct.gf100_gr_init], [32 x i8] } { [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300228, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300232, i8 1, i32 4, i32 1281 }, %struct.gf100_gr_init { i32 4300240, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300244, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4300248, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4300252, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4300256, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4300044, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300048, i8 1, i32 4, i32 20 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gm107_gr_init_pe_0 = internal constant { [8 x %struct.gf100_gr_init], [32 x i8] } { [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299008, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 4298764, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4298820, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298808, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 4298832, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 4298836, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298900, i8 3, i32 4, i32 1049601 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_mpc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gm107_gr_init_sm_0 = internal constant { [15 x %struct.gf100_gr_init], [48 x i8] } { [15 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300336, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 4300288, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300448, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300516, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300452, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4300456, i8 1, i32 4, i32 16777216 }, %struct.gf100_gr_init { i32 4300520, i8 1, i32 4, i32 145 }, %struct.gf100_gr_init { i32 4300468, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300476, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300508, i8 1, i32 4, i32 792592 }, %struct.gf100_gr_init { i32 4300504, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300512, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300660, i8 1, i32 4, i32 20821 }, %struct.gf100_gr_init { i32 4300672, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gm107_gr_init_l1c_1 = internal constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299980, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299904, i8 1, i32 4, i32 1056989218 }, %struct.gf100_gr_init { i32 4299912, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gm107_gr_init_pes_0 = internal constant { [8 x %struct.gf100_gr_init], [32 x i8] } { [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4308560, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 4308484, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4308488, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 4308492, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 4308496, i8 1, i32 4, i32 238783431 }, %struct.gf100_gr_init { i32 4308500, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4308540, i8 5, i32 4, i32 1049601 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gm107_gr_init_be_0 = internal constant { [20 x %struct.gf100_gr_init], [64 x i8] } { [20 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4229264, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 4229200, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 4229240, i8 1, i32 4, i32 13112835 }, %struct.gf100_gr_init { i32 4229244, i8 1, i32 4, i32 -2141965262 }, %struct.gf100_gr_init { i32 4229248, i8 1, i32 4, i32 1071134 }, %struct.gf100_gr_init { i32 4229252, i8 1, i32 4, i32 4613 }, %struct.gf100_gr_init { i32 4229492, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 4229396, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4229460, i8 1, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 4229464, i8 1, i32 4, i32 52 }, %struct.gf100_gr_init { i32 4229468, i8 1, i32 4, i32 -2060345341 }, %struct.gf100_gr_init { i32 4229472, i8 1, i32 4, i32 90282074 }, %struct.gf100_gr_init { i32 4229476, i8 1, i32 4, i32 81878095 }, %struct.gf100_gr_init { i32 4229480, i8 1, i32 4, i32 41977907 }, %struct.gf100_gr_init { i32 4229484, i8 1, i32 4, i32 32515128 }, %struct.gf100_gr_init { i32 4229488, i8 1, i32 4, i32 76800 }, %struct.gf100_gr_init { i32 4229512, i8 1, i32 4, i32 134480385 }, %struct.gf100_gr_init { i32 4229516, i8 1, i32 4, i32 -2143281136 }, %struct.gf100_gr_init zeroinitializer], [64 x i8] zeroinitializer }, align 32
@gm107_gr_init_sm_1 = internal constant { [3 x %struct.gf100_gr_init], [48 x i8] } { [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300380, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300376, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gm107_grhub_data = internal global { [193 x i32], [220 x i8] } { [193 x i32] [i32 768, i32 772, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68675868], [220 x i8] zeroinitializer }, align 32
@gm107_grhub_code = internal global { <{ [602 x i32], [38 x i32] }>, [640 x i8] } { <{ [602 x i32], [38 x i32] }> <{ [602 x i32] [i32 51252981, i32 -1744775016, i32 -2031091239, i32 -192306168, i32 34540315, i32 194686, i32 -1731985160, i32 59028999, i32 -1241477701, i32 -1900738432, i32 26195200, i32 -268332874, i32 -642445420, i32 -201263103, i32 -661126863, i32 31037440, i32 200575396, i32 126469153, i32 -1157393226, i32 -1867120483, i32 10393608, i32 -1241407592, i32 -2064645760, i32 14202127, i32 -134139148, i32 -252923392, i32 8396745, i32 217448906, i32 -1945846528, i32 -821966336, i32 -859307828, i32 -165940193, i32 -327285238, i32 9371648, i32 -3210805, i32 -2147420160, i32 -167654400, i32 79495183, i32 -906957646, i32 516550687, i32 30015616, i32 -1124070154, i32 -905933820, i32 13422337, i32 -199242552, i32 16315931, i32 -1712286531, i32 922779648, i32 652802, i32 8389821, i32 183894534, i32 -2012955392, i32 -822018048, i32 -1962999672, i32 -165940088, i32 -1712286531, i32 385908736, i32 652802, i32 16254141, i32 -1712286531, i32 922779648, i32 652802, i32 8389821, i32 183894534, i32 -2012955392, i32 -822018048, i32 -1962999672, i32 -166988664, i32 -1712286531, i32 385908736, i32 652802, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 469036964, i32 -123751700, i32 -258687744, i32 8389017, i32 167117367, i32 -1123762944, i32 96206228, i32 -2146497548, i32 -167656448, i32 79495179, i32 -50292240, i32 200541678, i32 -973045736, i32 980481, i32 8389821, i32 267780551, i32 -268124928, i32 -1412955751, i32 280278528, i32 -938690064, i32 -457834066, i32 96402705, i32 29687936, i32 -1124070410, i32 -989819388, i32 15650561, i32 -199236368, i32 -828836341, i32 99220736, i32 29884544, i32 -1124069642, i32 79738372, i32 469028260, i32 44812511, i32 -1961092108, i32 -821967616, i32 -1259339589, i32 280277023, i32 183704564, i32 12090885, i32 621736960, i32 -1241470008, i32 -1175449420, i32 314175500, i32 29687936, i32 -1124070410, i32 -989820156, i32 12308225, i32 -200098872, i32 -1799490021, i32 -2147378704, i32 -167635200, i32 79495177, i32 -1594294024, i32 -1199701494, i32 -1594097664, i32 201916664, i32 38468736, i32 -1124070922, i32 34242052, i32 151058432, i32 1258061837, i32 652802, i32 176030909, i32 16252930, i32 -58716404, i32 217449039, i32 201637120, i32 1258061835, i32 849410, i32 -58719043, i32 251003471, i32 201637120, i32 1258061834, i32 849410, i32 176030909, i32 16252930, i32 -1712286531, i32 922779651, i32 652802, i32 377357501, i32 51249154, i32 145534, i32 -58669891, i32 217449031, i32 201637120, i32 1258061825, i32 849410, i32 176030909, i32 210894850, i32 1190952961, i32 849410, i32 34342077, i32 38468736, i32 -1124070154, i32 34242052, i32 36142592, i32 1107331072, i32 536905986, i32 10080002, i32 -167182699, i32 -1896480626, i32 -2138386624, i32 -1241078346, i32 -356843104, i32 75544064, i32 -201223498, i32 -457775077, i32 -219169784, i32 -1712286531, i32 385908739, i32 652802, i32 16254141, i32 33882240, i32 -1124069386, i32 -2147414268, i32 -167573760, i32 79495183, i32 79495416, i32 1090521086, i32 298795520, i32 152168192, i32 135575041, i32 33559806, i32 302006274, i32 -1124072714, i32 97140996, i32 -1124069122, i32 117456932, i32 -1124072714, i32 537084420, i32 16842880, i32 -1124072714, i32 537149956, i32 16843904, i32 -1124072714, i32 537608708, i32 16844928, i32 -1124072714, i32 537674244, i32 16850048, i32 -1124072714, i32 17011204, i32 50921600, i32 -1124072458, i32 -2029747708, i32 67125248, i32 -1124072714, i32 1074004484, i32 49677056, i32 -201016064, i32 76419121, i32 1702772886, i32 -21889024, i32 -1248792121, i32 -185597183, i32 34583839, i32 532349185, i32 18003460, i32 16973952, i32 -1124072970, i32 67141636, i32 128513, i32 4261053, i32 2114064129, i32 2113930925, i32 251659964, i32 117341712, i32 956416, i32 2113998744, i32 -1795161824, i32 8390676, i32 83231168, i32 -2147173120, i32 -167657216, i32 79495172, i32 318779575, i32 -1241505861, i32 8389365, i32 267780563, i32 -1241203456, i32 280365077, i32 135575041, i32 1753096114, i32 532348930, i32 33789952, i32 1344274564, i32 134500024, i32 2116006400, i32 -1207959409, i32 68686, i32 -1887505219, i32 1320681472, i32 2113929476, i32 -1207959409, i32 65614, i32 -1887567345, i32 1320681472, i32 2113931264, i32 -939523995, i32 200548351, i32 72268025, i32 1702756360, i32 532348928, i32 4241152, i32 20100736, i32 263461876, i32 117341696, i32 2113933056, i32 -2147481939, i32 -167640832, i32 79495169, i32 435164349, i32 805339167, i32 128514, i32 687080637, i32 3273728, i32 931008525, i32 32768000, i32 31764980, i32 -954469056, i32 -258687744, i32 8389785, i32 167117367, i32 -2130395904, i32 -821903360, i32 8519697, i32 583992001, i32 521390080, i32 -931722252, i32 200548131, i32 -1306461867, i32 -258687726, i32 8390553, i32 167117367, i32 -201016064, i32 838074674, i32 142704130, i32 -258687744, i32 8390553, i32 167117335, i32 -66798336, i32 -258687712, i32 8390297, i32 167117367, i32 -201016064, i32 -2122448591, i32 -1799553016, i32 -2147051024, i32 -167635200, i32 79495177, i32 -114356492, i32 -200101344, i32 854851890, i32 142704130, i32 -2145321984, i32 -167591936, i32 79495170, i32 -938275084, i32 200548131, i32 20050957, i32 2114073332, i32 33556609, i32 -1023377407, i32 194050, i32 -1799551811, i32 -2147182096, i32 -167635200, i32 79495177, i32 -13627659, i32 -201202512, i32 -223212517, i32 532862, i32 -1337979148, i32 468976356, i32 -258687700, i32 8390553, i32 167117367, i32 -201016064, i32 854851890, i32 142704130, i32 -258687744, i32 8390553, i32 167117335, i32 -201016064, i32 -275508978, i32 32894992, i32 194686, i32 -18608395, i32 703603901, i32 805339167, i32 194050, i32 250938557, i32 16383698, i32 -1996586759, i32 -108988159, i32 -106890864, i32 -103745104, i32 -1108280864, i32 33573380, i32 -1006589233, i32 200541355, i32 1309674787, i32 -288417280, i32 419450624, i32 2113994703, i32 -1224736764, i32 235143344, i32 486555649, i32 -1124069642, i32 11265028, i32 202109953, i32 21893133, i32 294464, i32 11265024, i32 1443623940, i32 1074202766, i32 25982, i32 8454066, i32 267780612, i32 -1912292096, i32 2118125316, i32 -1308622747, i32 50364671, i32 1046018, i32 -20511555, i32 49189968, i32 1074200719, i32 2113990587, i32 -2147483547, i32 -167640576, i32 79495183, i32 -125959409, i32 4915202, i32 -1900039679, i32 2118123844, i32 1258291343, i32 -1329789692, i32 -189486081, i32 8391691, i32 200672007, i32 1074052352, i32 183894272, i32 -66798336, i32 -52364048, i32 -55509808, i32 -57607008, i32 8978048, i32 16548092, i32 -134204684, i32 284553217, i32 1888419762, i32 -1887551423, i32 16252928, i32 1078030478, i32 25982, i32 -185532494, i32 -216271856, i32 5112056, i32 1088811010, i32 -266279440, i32 8392933, i32 251003269, i32 251968768, i32 32683528, i32 -235070476, i32 -251395867, i32 -2147417883, i32 -167672576, i32 79495182, i32 8388856, i32 267780643, i32 -1308312320, i32 -1978364161, i32 9403968, i32 -1895845376, i32 2118232204, i32 -134217585, i32 -2080342016, i32 1046018, i32 9372861, i32 -3210620, i32 100662528, i32 -118088716, i32 -258687744, i32 8390041, i32 167117367, i32 168082688, i32 12090892, i32 -2131444480, i32 -167606016, i32 79495183, i32 46203008, i32 -1124072714, i32 -2097119228, i32 194050, i32 118424765, i32 466302, i32 46137472, i32 -1124072714, i32 785924, i32 -1239471376, i32 548799524, i32 -258687742, i32 8390809, i32 167117367, i32 -2147173120, i32 -167608064, i32 79495170, i32 210, i32 36040832, i32 42467456, i32 -1124072714, i32 1108345092, i32 602931712, i32 85129730, i32 -1799552008, i32 -2146919952, i32 -167635200, i32 79495177, i32 -1233059432, i32 43522068, i32 136689280, i32 -1257958659, i32 -1799547391, i32 -2146854416, i32 -167627008, i32 79495177, i32 42008704, i32 -1124072970, i32 -2147417596, i32 -167606272, i32 79495170, i32 -268369855, i32 33162771, i32 -1123813371, i32 161083540, i32 35061888, i32 -1124070922, i32 -258687740, i32 8390041, i32 167117335, i32 -133907200, i32 120946176, i32 2114718208, i32 251658424, i32 119373317, i32 -1744766976, i32 8405251, i32 66454145, i32 -1123762944, i32 -13319116, i32 1158552564, i32 1408238080, i32 87423494, i32 1318585336, i32 -2125490048, i32 36734, i32 -1240977226, i32 468975890, i32 369334495, i32 42008704, i32 -1124072458, i32 1073788164, i32 -268369855, i32 33162771, i32 -133957626, i32 -2147217920, i32 -167575040, i32 79495182, i32 50331790, i32 -251597105, i32 -199229212, i32 301266203, i32 201520134, i32 -25292785, i32 301203462, i32 2114064155, i32 2113930925, i32 2113930940, i32 -1124071730, i32 112033524, i32 120946176, i32 369203200, i32 8398013, i32 49676549, i32 -1308312320, i32 -1526690273, i32 9403969, i32 33353728, i32 -1241371408, i32 -218300124, i32 -1895845371, i32 2118231300, i32 2113929359, i32 -1124072938, i32 1207730212, i32 194050, i32 753927357, i32 52475393, i32 38468736, i32 -1124072714, i32 28110852, i32 184985072, i32 825344, i32 234950040, i32 20807168, i32 2114456064, i32 2113929452, i32 -201326070, i32 201986561, i32 47230, i32 494798095, i32 49545223, i32 2114064173, i32 -1124071763, i32 117341940, i32 36142592, i32 113016320, i32 2129968384, i32 -201324883, i32 26742801, i32 85065024, i32 2114391028, i32 -134215629], [38 x i32] zeroinitializer }>, [640 x i8] zeroinitializer }, align 32
@gm107_grgpc_code = internal global { <{ [471 x i32], [41 x i32] }>, [512 x i8] } { <{ [471 x i32], [41 x i32] }> <{ [471 x i32] [i32 54595317, i32 -1744775016, i32 -2031091239, i32 -192306168, i32 34540315, i32 194686, i32 -1731985160, i32 59028999, i32 -1241477701, i32 -1900738432, i32 26195200, i32 -268332874, i32 -642445420, i32 -201263103, i32 -661126863, i32 31037440, i32 200575396, i32 126469153, i32 -1157393226, i32 -1867120483, i32 10393608, i32 -1241407592, i32 -2064645760, i32 14202127, i32 -134139148, i32 -252923392, i32 8396745, i32 217448906, i32 -1945846528, i32 -821966336, i32 -859307828, i32 -165940193, i32 -327285238, i32 9371648, i32 -3210805, i32 -2147420160, i32 -167654400, i32 79495183, i32 -906957646, i32 516550687, i32 30015616, i32 -1124070154, i32 -905933820, i32 13422337, i32 -199242552, i32 16315931, i32 -1712286531, i32 922779648, i32 652802, i32 8389821, i32 183894534, i32 -2012955392, i32 -822018048, i32 -1962999672, i32 -165940088, i32 -1712286531, i32 385908736, i32 652802, i32 16254141, i32 -1712286531, i32 922779648, i32 652802, i32 8389821, i32 183894534, i32 -2012955392, i32 -822018048, i32 -1962999672, i32 -166988664, i32 -1712286531, i32 385908736, i32 652802, i32 16254141, i32 -392653635, i32 444970496, i32 -1241415498, i32 -1732574588, i32 81835520, i32 469036964, i32 -123751700, i32 -258687744, i32 8389017, i32 167117367, i32 -1123762944, i32 96206228, i32 -2146497548, i32 -167656448, i32 79495179, i32 -50292240, i32 200541678, i32 -973045736, i32 980481, i32 8389821, i32 267780551, i32 -268124928, i32 -1412955751, i32 280278528, i32 -938690064, i32 -457834066, i32 96402705, i32 29687936, i32 -1124070410, i32 -989819388, i32 15650561, i32 -199236368, i32 -828836341, i32 99220736, i32 29884544, i32 -1124069642, i32 79738372, i32 469028260, i32 44812511, i32 -1961092108, i32 -821967616, i32 -1259339589, i32 280277023, i32 183704564, i32 12090885, i32 621736960, i32 -1241470008, i32 -1175449420, i32 314175500, i32 29687936, i32 -1124070410, i32 -989820156, i32 12308225, i32 -200098872, i32 -1799490021, i32 -2147378704, i32 -167635200, i32 79495177, i32 -1594294024, i32 -1199701494, i32 -1594097664, i32 201916664, i32 38468736, i32 -1124070922, i32 34242052, i32 151058432, i32 1258061837, i32 652802, i32 176030909, i32 16252930, i32 -58716404, i32 217449039, i32 201637120, i32 1258061835, i32 849410, i32 -58719043, i32 251003471, i32 201637120, i32 1258061834, i32 849410, i32 176030909, i32 16252930, i32 -1712286531, i32 922779651, i32 652802, i32 377357501, i32 51249154, i32 145534, i32 -58669891, i32 217449031, i32 201637120, i32 1258061825, i32 849410, i32 176030909, i32 210894850, i32 1190952961, i32 849410, i32 34342077, i32 38468736, i32 -1124070154, i32 34242052, i32 36142592, i32 1107331072, i32 536905986, i32 10080002, i32 -167182699, i32 -1896480626, i32 -2138386624, i32 -1241078346, i32 -356843104, i32 75544064, i32 -201223498, i32 -457775077, i32 -219169784, i32 -1712286531, i32 385908739, i32 652802, i32 16254141, i32 -5054215, i32 1083708558, i32 36734, i32 -5111537, i32 1083972750, i32 36734, i32 16310524, i32 -1799515911, i32 -2146788880, i32 -167627008, i32 79495177, i32 54460553, i32 -1291806257, i32 -1107754860, i32 177860756, i32 35061888, i32 -1124070922, i32 -124716028, i32 1090829568, i32 298795520, i32 152168192, i32 135575041, i32 33559806, i32 302006274, i32 -1124072714, i32 95240452, i32 1073746174, i32 16123648, i32 33864960, i32 67125252, i32 -1124072714, i32 271709188, i32 25297026, i32 50340559, i32 522514433, i32 -1241238853, i32 45416754, i32 100906245, i32 25559170, i32 -1258282289, i32 615908354, i32 -922714097, i32 194049, i32 814613693, i32 -437235700, i32 -1121665791, i32 2118434100, i32 -1342177179, i32 200540406, i32 -1157558514, i32 1341981938, i32 19969541, i32 -1241440074, i32 649069792, i32 -501484542, i32 -1257831499, i32 8521732, i32 583991809, i32 -1791705856, i32 8390693, i32 100008384, i32 -2147173120, i32 -167657216, i32 79495173, i32 -1744826728, i32 545128719, i32 800784385, i32 4176640, i32 -1744761192, i32 545128975, i32 244842497, i32 15727877, i32 -1157615941, i32 244842558, i32 51353602, i32 73854, i32 -49869160, i32 784007407, i32 4111104, i32 -2147338826, i32 -167652608, i32 79495171, i32 -1240980042, i32 548800053, i32 19969537, i32 -1240980298, i32 800196660, i32 157822, i32 -1157615685, i32 1057947711, i32 1344102542, i32 -1308498448, i32 9404159, i32 -1911812352, i32 -263184984, i32 -5111323, i32 36734, i32 201854, i32 1619934991, i32 -437235683, i32 2130686465, i32 251658383, i32 496799232, i32 31846480, i32 -1887502414, i32 17760256, i32 201854, i32 1344120974, i32 -1308498448, i32 9404159, i32 -1895887104, i32 -263185000, i32 -5111323, i32 36734, i32 -1467088369, i32 -437235683, i32 2130686465, i32 2113929359, i32 -1744829676, i32 8717572, i32 1441812544, i32 1885255681, i32 1702756357, i32 -156106752, i32 1589146813, i32 -1308621472, i32 9404031, i32 -2007058432, i32 798294021, i32 9403912, i32 -1939949568, i32 798294021, i32 9403912, i32 -1872840704, i32 1702756357, i32 -172621824, i32 32552454, i32 -1157040970, i32 1069219887, i32 24163840, i32 -201235786, i32 1354219291, i32 1119225856, i32 -1474563071, i32 1619934991, i32 -437235683, i32 2130686465, i32 251658383, i32 497585677, i32 31846480, i32 -1887502414, i32 343801856, i32 8388611, i32 66454017, i32 -1123762944, i32 522842148, i32 36700288, i32 -1124072714, i32 2683908, i32 218116596, i32 3636772, i32 -201198592, i32 -201005904, i32 -2114052840, i32 -1123679743, i32 68353312, i32 -50207562, i32 419300638, i32 105414144, i32 -636554240, i32 -267325548, i32 -125959691, i32 250871810, i32 -117376563, i32 25755264, i32 -1862696711, i32 -1325817607, i32 -520498951, i32 79556857, i32 -821952438, i32 -1413218134, i32 520877060, i32 5121037, i32 15650586, i32 -820445105, i32 75366655, i32 17694720, i32 -165871552, i32 79495182, i32 -167706560, i32 79495178, i32 -520294148, i32 -1325608708, i32 -1862491908, i32 -1996586756, i32 -58655744, i32 3339264, i32 17760760, i32 -1157362024, i32 -5110530, i32 1083447438, i32 36734, i32 537854200, i32 25493632, i32 -1124069386, i32 -1240986108, i32 468976098, i32 16118269, i32 16118024, i32 -2063564798, i32 1046017, i32 16254141, i32 42008704, i32 -1124069386, i32 499420676, i32 31846480, i32 -1887502414, i32 301203456, i32 102923783, i32 35028480, i32 -2145075968, i32 -167622660, i32 79495170, i32 -1241436944, i32 -58719456, i32 49676874, i32 251968768, i32 497585676, i32 31846480, i32 -1887502414, i32 343801856, i32 1057947651, i32 1344102542, i32 -1308498448, i32 9404159, i32 -1912598784, i32 -263184996, i32 -5111323, i32 36734, i32 343802127, i32 -51380221, i32 66106881, i32 1344120974, i32 -1308498448, i32 9404159, i32 28110848, i32 -1962760720, i32 -1739587584, i32 -994704372, i32 12368655, i32 -1744827240, i32 917773, i32 81278, i32 -1962824464, i32 -1739571200, i32 -994704372, i32 12368655, i32 -1744761704, i32 261620237, i32 134237702, i32 81278, i32 -268325648, i32 9110693, i32 211308592, i32 264549892, i32 -1744782149, i32 228065804, i32 135239683, i32 2114060366, i32 2113929533, i32 2113929738, i32 -201325804, i32 317982209, i32 36142618, i32 -1911746816, i32 -263184984, i32 -5111323, i32 36734, i32 201854, i32 396926, i32 248], [41 x i32] zeroinitializer }>, [512 x i8] zeroinitializer }, align 32
@gm107_grgpc_data = internal global { <{ i32, i32, i32, i32, [23 x i32] }>, [52 x i8] } { <{ i32, i32, i32, i32, [23 x i32] }> <{ i32 108, i32 108, i32 108, i32 108, [23 x i32] zeroinitializer }>, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [20 x i8] c"gm107_gr_init_scc_0\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 69, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"gm107_gr_init_prop_0\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 83, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"gm107_gr_init_setup_1\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 90, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"gm107_gr_init_zcull_0\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 98, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [24 x i8] c"gm107_gr_init_gpc_unk_1\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 109, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"gm107_gr_init_tex_0\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 132, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [20 x i8] c"gm107_gr_init_l1c_0\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 158, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"gm107_gr_init_wwdx_0\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 204, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"gm107_gr_init_cbm_0\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 211, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 339, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"gm107_gr_fwif\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 433, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"gm107_gr_pack_mmio\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 248, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"gm107_gr_fecs_ucode\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 378, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"gm107_gr_gpccs_ucode\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 388, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [9 x i8] c"gm107_gr\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 396, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"gm107_gr_init_main_0\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 40, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"gm107_gr_init_ds_0\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 60, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"gm107_gr_init_sked_0\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 75, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"gm107_gr_init_tpccs_0\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 118, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"gm107_gr_init_pe_0\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 146, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"gm107_gr_init_sm_0\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 165, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c"gm107_gr_init_l1c_1\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 184, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"gm107_gr_init_pes_0\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 192, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"gm107_gr_init_be_0\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 217, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"gm107_gr_init_sm_1\00", align 1
@___asan_gen_.78 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 241, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"gm107_grhub_data\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 2, i32 17 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"gm107_grhub_code\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgm107.fuc5.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 209, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"gm107_grgpc_code\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 44, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"gm107_grgpc_data\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgm107.fuc5.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 2, i32 17 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @gm107_gr_init_scc_0, ptr @gm107_gr_init_prop_0, ptr @gm107_gr_init_setup_1, ptr @gm107_gr_init_zcull_0, ptr @gm107_gr_init_gpc_unk_1, ptr @gm107_gr_init_tex_0, ptr @gm107_gr_init_l1c_0, ptr @gm107_gr_init_wwdx_0, ptr @gm107_gr_init_cbm_0, ptr @gm107_gr_init_bios.regs, ptr @gm107_gr_fwif, ptr @gm107_gr_pack_mmio, ptr @gm107_gr_fecs_ucode, ptr @gm107_gr_gpccs_ucode, ptr @gm107_gr, ptr @gm107_gr_init_main_0, ptr @gm107_gr_init_ds_0, ptr @gm107_gr_init_sked_0, ptr @gm107_gr_init_tpccs_0, ptr @gm107_gr_init_pe_0, ptr @gm107_gr_init_sm_0, ptr @gm107_gr_init_l1c_1, ptr @gm107_gr_init_pes_0, ptr @gm107_gr_init_be_0, ptr @gm107_gr_init_sm_1, ptr @gm107_grhub_data, ptr @gm107_grhub_code, ptr @gm107_grgpc_code, ptr @gm107_grgpc_data], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_scc_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_prop_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_setup_1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_zcull_0 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_gpc_unk_1 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_tex_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_l1c_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_wwdx_0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_cbm_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_bios.regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_fwif to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_pack_mmio to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_fecs_ucode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_gpccs_ucode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_main_0 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_ds_0 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_sked_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_tpccs_0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_pe_0 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_sm_0 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_l1c_1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_pes_0 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_be_0 to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_gr_init_sm_1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grhub_data to i32), i32 772, i32 992, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grhub_code to i32), i32 2560, i32 3200, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grgpc_code to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_grgpc_data to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm107_gr_init_400054(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !67
  tail call void @arm_heavy_mb() #3
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4194388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 741674851) #3, !srcloc !68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm107_gr_init_shader_exceptions(ptr nocapture noundef readonly %gr, i32 noundef %gpc, i32 noundef %tpc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !69
  tail call void @arm_heavy_mb() #3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %gpc, 15
  %add = add i32 %mul, 5259264
  %mul2 = shl i32 %tpc, 11
  %add3 = add i32 %add, %mul2
  %add4 = or i32 %add3, 1604
  %add.ptr = getelementptr i8, ptr %3, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 14680062) #3, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !70
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add13 = or i32 %add3, 1612
  %add.ptr14 = getelementptr i8, ptr %5, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 5) #3, !srcloc !68
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm107_gr_init_504430(ptr nocapture noundef readonly %gr, i32 noundef %gpc, i32 noundef %tpc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !71
  tail call void @arm_heavy_mb() #3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %gpc, 15
  %mul2 = shl i32 %tpc, 11
  %add3 = add i32 %mul, 5260336
  %add4 = add i32 %add3, %mul2
  %add.ptr = getelementptr i8, ptr %3, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1073741824) #3, !srcloc !68
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm107_gr_init_bios(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  %infoE = alloca %struct.nvbios_P0260E, align 4
  %infoX = alloca %struct.nvbios_P0260X, align 4
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %infoE) #3
  %4 = ptrtoint ptr %infoE to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %infoE, align 4, !annotation !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %infoX) #3
  %5 = ptrtoint ptr %infoX to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %infoX, align 4, !annotation !72
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #3
  %6 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %ver, align 1, !annotation !72
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #3
  %7 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %hdr, align 1, !annotation !72
  %call26 = call i32 @nvbios_P0260Ep(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %infoE) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not27 = icmp eq i32 %call26, 0
  br i1 %tobool.not27, label %entry.while.end16_crit_edge, label %while.body.lr.ph

entry.while.end16_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end16

while.body.lr.ph:                                 ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %inc28 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc28)
  %cmp = icmp ult i32 %inc28, 5
  br i1 %cmp, label %do.body, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body:                                          ; preds = %while.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  call void @arm_heavy_mb() #3
  %8 = ptrtoint ptr %infoE to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %infoE, align 4
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %arrayidx = getelementptr [5 x %struct.anon.171], ptr @gm107_gr_init_bios.regs, i32 0, i32 %inc28
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #3, !srcloc !68
  %call523 = call i32 @nvbios_P0260Xp(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %infoX) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call523)
  %tobool6.not24 = icmp eq i32 %call523, 0
  br i1 %tobool6.not24, label %do.body.if.end_crit_edge, label %do.body8.lr.ph

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body8.lr.ph:                                   ; preds = %do.body
  %data14 = getelementptr [5 x %struct.anon.171], ptr @gm107_gr_init_bios.regs, i32 0, i32 %inc28, i32 1
  br label %do.body8

do.body8:                                         ; preds = %do.body8.do.body8_crit_edge, %do.body8.lr.ph
  %inc425 = phi i32 [ 0, %do.body8.lr.ph ], [ %inc4, %do.body8.do.body8_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !74
  call void @arm_heavy_mb() #3
  %14 = ptrtoint ptr %infoX to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %infoX, align 4
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %18 = ptrtoint ptr %data14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data14, align 4
  %add.ptr15 = getelementptr i8, ptr %17, i32 %19
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %15) #3, !srcloc !68
  %inc4 = add i32 %inc425, 1
  %call5 = call i32 @nvbios_P0260Xp(ptr noundef %3, i32 noundef %inc4, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %infoX) #3
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body8.if.end_crit_edge, label %do.body8.do.body8_crit_edge

do.body8.do.body8_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body8

do.body8.if.end_crit_edge:                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %do.body8.if.end_crit_edge, %do.body.if.end_crit_edge, %while.body.if.end_crit_edge
  %inc = add i32 %inc28, 1
  %call = call i32 @nvbios_P0260Ep(ptr noundef %3, i32 noundef %inc, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %infoE) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.while.end16_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end.while.end16_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end16

while.end16:                                      ; preds = %if.end.while.end16_crit_edge, %entry.while.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %infoX) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %infoE) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_P0260Ep(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_P0260Xp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm107_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gm107_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #3
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm107_gr_init_gpc_mmu(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %fb2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !75
  tail call void @arm_heavy_mb() #3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4294784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #3, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !76
  tail call void @arm_heavy_mb() #3
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 4294800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #3, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !77
  tail call void @arm_heavy_mb() #3
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 4294804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #3, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !78
  tail call void @arm_heavy_mb() #3
  %mmu_wr = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %mmu_wr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmu_wr, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr, align 4
  %call = tail call i64 %15(ptr noundef %11) #3
  %shr = lshr i64 %call, 8
  %conv = trunc i64 %shr to i32
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %17, i32 4294836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %conv) #3, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !79
  tail call void @arm_heavy_mb() #3
  %mmu_rd = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %mmu_rd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmu_rd, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %addr23 = getelementptr inbounds %struct.nvkm_memory_func, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %addr23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr23, align 4
  %call25 = tail call i64 %23(ptr noundef %19) #3
  %shr26 = lshr i64 %call25, 8
  %conv27 = trunc i64 %shr26 to i32
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr29 = getelementptr i8, ptr %25, i32 4294840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %conv27) #3, !srcloc !68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_vsc_stream_master(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_gr_init_zcull(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_num_active_ltcs(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_rop_active_fbps(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm107_gr_init_bios_2(ptr noundef %gr) #0 align 64 {
entry:
  %bit_P = alloca %struct.bit_entry, align 2
  %init = alloca %struct.nvbios_init, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1
  %device2 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %bios3 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios3, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_P) #3
  %4 = getelementptr inbounds %struct.bit_entry, ptr %bit_P, i32 0, i32 2
  %5 = getelementptr inbounds %struct.bit_entry, ptr %bit_P, i32 0, i32 3
  %6 = call ptr @memset(ptr %bit_P, i32 255, i32 6)
  %call = call i32 @bit_entry(ptr noundef %3, i8 noundef zeroext 80, ptr noundef nonnull %bit_P) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

land.lhs.true:                                    ; preds = %entry
  %7 = getelementptr inbounds %struct.bit_entry, ptr %bit_P, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp eq i8 %9, 2
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

land.lhs.true5:                                   ; preds = %land.lhs.true
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 43, i16 %11)
  %cmp7 = icmp ugt i16 %11, 43
  br i1 %cmp7, label %if.then, label %land.lhs.true5.if.end38_crit_edge

land.lhs.true5.if.end38_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.then:                                          ; preds = %land.lhs.true5
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %5, align 2
  %conv9 = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv9, 40
  %call10 = call i32 @nvbios_rd32(ptr noundef %3, i32 noundef %add) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then.if.end38_crit_edge, label %if.then12

if.then.if.end38_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.then12:                                        ; preds = %if.then
  %call14 = call zeroext i8 @nvbios_rd08(ptr noundef %3, i32 noundef %call10) #3
  %add15 = add i32 %call10, 1
  %call16 = call zeroext i8 @nvbios_rd08(ptr noundef %3, i32 noundef %add15) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %call14)
  %cmp18 = icmp eq i8 %call14, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %call16)
  %cmp22 = icmp ugt i8 %call16, 7
  %or.cond = select i1 %cmp18, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.then24, label %if.then12.if.end38_crit_edge

if.then12.if.end38_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.then24:                                        ; preds = %if.then12
  %add25 = add i32 %call10, 4
  %call26 = call i32 @nvbios_rd32(ptr noundef %3, i32 noundef %add25) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then24.if.end38_crit_edge, label %if.then28

if.then24.if.end38_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 6394948
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !81
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %init) #3
  %17 = getelementptr inbounds i8, ptr %init, i32 24
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4, !annotation !72
  %19 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %subdev1, ptr %init, align 4
  %offset31 = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 1
  %20 = ptrtoint ptr %offset31 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call26, ptr %offset31, align 4
  %outp = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 2
  %21 = ptrtoint ptr %outp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %outp, align 4
  %or = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 3
  %22 = ptrtoint ptr %or to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %or, align 4
  %link = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 4
  %23 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %link, align 4
  %head = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 5
  %24 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %head, align 4
  %execute = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 6
  %25 = ptrtoint ptr %execute to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %execute, align 4
  %nested = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 7
  %26 = call ptr @memset(ptr %nested, i32 0, i32 16)
  %call33 = call i32 @nvbios_exec(ptr noundef nonnull %init) #3
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %init) #3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !82
  call void @arm_heavy_mb() #3
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %28, i32 6394948
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %16) #3, !srcloc !68
  br label %if.end38

if.end38:                                         ; preds = %if.then28, %if.then24.if.end38_crit_edge, %if.then12.if.end38_crit_edge, %if.then.if.end38_crit_edge, %land.lhs.true5.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %entry.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_P) #3
  ret void
}

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
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_rops(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @gm107_gr_init_scc_0, !1, !"gm107_gr_init_scc_0", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 69, i32 1}
!2 = !{ptr @gm107_gr_init_prop_0, !3, !"gm107_gr_init_prop_0", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 83, i32 1}
!4 = !{ptr @gm107_gr_init_setup_1, !5, !"gm107_gr_init_setup_1", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 90, i32 1}
!6 = !{ptr @gm107_gr_init_zcull_0, !7, !"gm107_gr_init_zcull_0", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 98, i32 1}
!8 = !{ptr @gm107_gr_init_gpc_unk_1, !9, !"gm107_gr_init_gpc_unk_1", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 109, i32 1}
!10 = !{ptr @gm107_gr_init_tex_0, !11, !"gm107_gr_init_tex_0", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 132, i32 1}
!12 = !{ptr @gm107_gr_init_l1c_0, !13, !"gm107_gr_init_l1c_0", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 158, i32 1}
!14 = !{ptr @gm107_gr_init_wwdx_0, !15, !"gm107_gr_init_wwdx_0", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 204, i32 1}
!16 = !{ptr @gm107_gr_init_cbm_0, !17, !"gm107_gr_init_cbm_0", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 211, i32 1}
!18 = !{ptr @gm107_gr_init_bios.regs, !19, !"regs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 339, i32 4}
!20 = !{ptr @gm107_gr_fwif, !21, !"gm107_gr_fwif", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 433, i32 1}
!22 = !{ptr @gm107_gr, !23, !"gm107_gr", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 396, i32 1}
!24 = !{ptr @gm107_gr_pack_mmio, !25, !"gm107_gr_pack_mmio", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 248, i32 1}
!26 = !{ptr @gm107_gr_init_main_0, !27, !"gm107_gr_init_main_0", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 40, i32 1}
!28 = !{ptr @gm107_gr_init_ds_0, !29, !"gm107_gr_init_ds_0", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 60, i32 1}
!30 = !{ptr @gm107_gr_init_sked_0, !31, !"gm107_gr_init_sked_0", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 75, i32 1}
!32 = !{ptr @gm107_gr_init_tpccs_0, !33, !"gm107_gr_init_tpccs_0", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 118, i32 1}
!34 = !{ptr @gm107_gr_init_pe_0, !35, !"gm107_gr_init_pe_0", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 146, i32 1}
!36 = !{ptr @gm107_gr_init_sm_0, !37, !"gm107_gr_init_sm_0", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 165, i32 1}
!38 = !{ptr @gm107_gr_init_l1c_1, !39, !"gm107_gr_init_l1c_1", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 184, i32 1}
!40 = !{ptr @gm107_gr_init_pes_0, !41, !"gm107_gr_init_pes_0", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 192, i32 1}
!42 = !{ptr @gm107_gr_init_be_0, !43, !"gm107_gr_init_be_0", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 217, i32 1}
!44 = !{ptr @gm107_gr_init_sm_1, !45, !"gm107_gr_init_sm_1", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 241, i32 1}
!46 = !{ptr @gm107_gr_fecs_ucode, !47, !"gm107_gr_fecs_ucode", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 378, i32 1}
!48 = !{ptr @gm107_grhub_code, !49, !"gm107_grhub_code", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgm107.fuc5.h", i32 209, i32 17}
!50 = !{ptr @gm107_grhub_data, !51, !"gm107_grhub_data", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/hubgm107.fuc5.h", i32 2, i32 17}
!52 = !{ptr @gm107_gr_gpccs_ucode, !53, !"gm107_gr_gpccs_ucode", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm107.c", i32 388, i32 1}
!54 = !{ptr @gm107_grgpc_code, !55, !"gm107_grgpc_code", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgm107.fuc5.h", i32 44, i32 17}
!56 = !{ptr @gm107_grgpc_data, !57, !"gm107_grgpc_data", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/fuc/gpcgm107.fuc5.h", i32 2, i32 17}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2156317386}
!68 = !{i64 5413940}
!69 = !{i64 2156317961}
!70 = !{i64 2156318536}
!71 = !{i64 2156319111}
!72 = !{!"auto-init"}
!73 = !{i64 2156321387}
!74 = !{i64 2156321808}
!75 = !{i64 2156322275}
!76 = !{i64 2156322742}
!77 = !{i64 2156323209}
!78 = !{i64 2156323787}
!79 = !{i64 2156324400}
!80 = !{i64 5414358}
!81 = !{i64 2156319567}
!82 = !{i64 2156320658}
