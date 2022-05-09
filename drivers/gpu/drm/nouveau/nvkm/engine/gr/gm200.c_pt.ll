; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
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
%struct.flcn_bl_dmem_desc_v1 = type <{ [4 x i32], [4 x i32], i32, i64, i32, i32, i32, i32, i32, i64, i32 }>
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.157, i32 }
%struct.anon.157 = type { i32, i32, i32 }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@gm200_gr_nofw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 38, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: firmware unavailable\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gm200_gr_nofw\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gm200_gr_nofw._entry_ptr = internal global ptr @gm200_gr_nofw._entry, section ".printk_index", align 4
@gm200_gr_gpccs_acr = dso_local constant { %struct.nvkm_acr_lsf_func, [56 x i8] } { %struct.nvkm_acr_lsf_func { i32 8, i32 76, ptr @gm200_gr_acr_bld_write, ptr @gm200_gr_acr_bld_patch, ptr null, i64 0, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@gm200_gr_fecs_acr = dso_local constant { %struct.nvkm_acr_lsf_func, [56 x i8] } { %struct.nvkm_acr_lsf_func { i32 0, i32 76, ptr @gm200_gr_acr_bld_write, ptr @gm200_gr_acr_bld_patch, ptr null, i64 0, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@gm200_gr_tile_map_4_16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\01\02\03\02\03\00\01\03\00\01\02\01\02\03\00", [16 x i8] zeroinitializer }, align 32
@gm200_gr_tile_map_6_24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00\01\02\03\04\05\03\04\05\00\01\02\00\01\02\03\04\05\03\04\05\00\01\02", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gr/fecs_\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gr/gpccs_\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gr/\00", [28 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware293 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gm200/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gm200/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gm200/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gm200/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gm200/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gm200/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gm200/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware300 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gm200/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware301 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gm200/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware302 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gm200/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware303 = internal constant [52 x i8] c"nouveau.firmware=nvidia/gm200/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware304 = internal constant [52 x i8] c"nouveau.firmware=nvidia/gm200/gr/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware305 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gm204/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware306 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gm204/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware307 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gm204/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware308 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gm204/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware309 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gm204/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware310 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gm204/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware311 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gm204/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware312 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gm204/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware313 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gm204/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware314 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gm204/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware315 = internal constant [52 x i8] c"nouveau.firmware=nvidia/gm204/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware316 = internal constant [52 x i8] c"nouveau.firmware=nvidia/gm204/gr/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware317 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gm206/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware318 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gm206/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware319 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gm206/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware320 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gm206/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware321 = internal constant [46 x i8] c"nouveau.firmware=nvidia/gm206/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware322 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gm206/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware323 = internal constant [48 x i8] c"nouveau.firmware=nvidia/gm206/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware324 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gm206/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware325 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gm206/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware326 = internal constant [47 x i8] c"nouveau.firmware=nvidia/gm206/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware327 = internal constant [52 x i8] c"nouveau.firmware=nvidia/gm206/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware328 = internal constant [52 x i8] c"nouveau.firmware=nvidia/gm206/gr/sw_method_init.bin\00", section ".modinfo", align 1
@gm200_gr_fwif = internal constant { [3 x %struct.gf100_gr_fwif], [36 x i8] } { [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 0, ptr @gm200_gr_load, ptr @gm200_gr, ptr @gm200_gr_fecs_acr, ptr @gm200_gr_gpccs_acr }, %struct.gf100_gr_fwif { i32 -1, ptr @gm200_gr_nofw, ptr null, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gm200_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gm200_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] }, [64 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gm200_gr_oneinit_tiles, ptr @gm200_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gm200_gr_init_gpc_mmu, ptr null, ptr @gm107_gr_init_bios, ptr @gk104_gr_init_vsc_stream_master, ptr @gf117_gr_init_zcull, ptr @gm200_gr_init_num_active_ltcs, ptr @gm200_gr_init_rop_active_fbps, ptr null, ptr null, ptr null, ptr @gf100_gr_init_fecs_exceptions, ptr @gm200_gr_init_ds_hww_esr_2, ptr null, ptr @gk104_gr_init_sked_hww_esr, ptr @gf100_gr_init_419cc0, ptr null, ptr null, ptr @gk104_gr_init_ppc_exceptions, ptr @gf100_gr_init_tex_hww_esr, ptr @gm107_gr_init_504430, ptr @gm107_gr_init_shader_exceptions, ptr @gm107_gr_init_400054, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr null, %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr @gm200_gr_rops, i32 0, i32 4, i32 2, ptr @gm200_grctx, ptr null, ptr @gf100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41280, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 45463, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 45504, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 6]
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 38, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"gm200_gr_gpccs_acr\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 78, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"gm200_gr_fecs_acr\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 86, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"gm200_gr_tile_map_4_16\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 143, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [23 x i8] c"gm200_gr_tile_map_6_24\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 138, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 227, i32 9 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 234, i32 9 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 241, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"gm200_gr_fwif\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 284, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [9 x i8] c"gm200_gr\00", align 1
@___asan_gen_.52 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 185, i32 1 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_firmware300, ptr @__UNIQUE_ID_firmware301, ptr @__UNIQUE_ID_firmware302, ptr @__UNIQUE_ID_firmware303, ptr @__UNIQUE_ID_firmware304, ptr @__UNIQUE_ID_firmware305, ptr @__UNIQUE_ID_firmware306, ptr @__UNIQUE_ID_firmware307, ptr @__UNIQUE_ID_firmware308, ptr @__UNIQUE_ID_firmware309, ptr @__UNIQUE_ID_firmware310, ptr @__UNIQUE_ID_firmware311, ptr @__UNIQUE_ID_firmware312, ptr @__UNIQUE_ID_firmware313, ptr @__UNIQUE_ID_firmware314, ptr @__UNIQUE_ID_firmware315, ptr @__UNIQUE_ID_firmware316, ptr @__UNIQUE_ID_firmware317, ptr @__UNIQUE_ID_firmware318, ptr @__UNIQUE_ID_firmware319, ptr @__UNIQUE_ID_firmware320, ptr @__UNIQUE_ID_firmware321, ptr @__UNIQUE_ID_firmware322, ptr @__UNIQUE_ID_firmware323, ptr @__UNIQUE_ID_firmware324, ptr @__UNIQUE_ID_firmware325, ptr @__UNIQUE_ID_firmware326, ptr @__UNIQUE_ID_firmware327, ptr @__UNIQUE_ID_firmware328, ptr @gm200_gr_nofw._entry, ptr @gm200_gr_nofw._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gm200_gr_gpccs_acr, ptr @gm200_gr_fecs_acr, ptr @gm200_gr_tile_map_4_16, ptr @gm200_gr_tile_map_6_24, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @gm200_gr_fwif, ptr @gm200_gr], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_gr_nofw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_gr_gpccs_acr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_gr_fecs_acr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_gr_tile_map_4_16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_gr_tile_map_6_24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_gr_fwif to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_gr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_gr_nofw(ptr noundef %gr, i32 %ver, ptr nocapture readnone %fwif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %name) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 -19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm200_gr_acr_bld_write(ptr nocapture noundef readonly %acr, i32 noundef %bld, ptr nocapture noundef readonly %lsfw) #0 align 64 {
entry:
  %hdr = alloca %struct.flcn_bl_dmem_desc_v1, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %img = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %img to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %img, align 4
  %app_start_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 9
  %2 = ptrtoint ptr %app_start_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %app_start_offset, align 4
  %add = add i32 %3, %1
  %conv = zext i32 %add to i64
  %app_resident_code_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 11
  %4 = ptrtoint ptr %app_resident_code_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %app_resident_code_offset, align 4
  %conv1 = zext i32 %5 to i64
  %add2 = add nuw nsw i64 %conv, %conv1
  %app_resident_data_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 13
  %6 = ptrtoint ptr %app_resident_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %app_resident_data_offset, align 4
  %conv3 = zext i32 %7 to i64
  %add4 = add nuw nsw i64 %conv3, %conv
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %hdr) #4
  %code_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 3
  %8 = call ptr @memset(ptr %hdr, i32 0, i32 36)
  %9 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %add2, ptr %code_dma_base, align 1
  %non_sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 4
  %10 = ptrtoint ptr %non_sec_code_off to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %5, ptr %non_sec_code_off, align 1
  %non_sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 5
  %app_resident_code_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 12
  %11 = ptrtoint ptr %app_resident_code_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %app_resident_code_size, align 4
  %13 = ptrtoint ptr %non_sec_code_size to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %non_sec_code_size, align 1
  %sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 6
  %14 = ptrtoint ptr %sec_code_off to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %sec_code_off, align 1
  %sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 7
  %15 = ptrtoint ptr %sec_code_size to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %sec_code_size, align 1
  %code_entry_point = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 8
  %app_imem_entry = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 10
  %16 = ptrtoint ptr %app_imem_entry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %app_imem_entry, align 4
  %18 = ptrtoint ptr %code_entry_point to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %code_entry_point, align 1
  %data_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 9
  %19 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %add4, ptr %data_dma_base, align 1
  %data_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 10
  %app_resident_data_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 14
  %20 = ptrtoint ptr %app_resident_data_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %app_resident_data_size, align 4
  %22 = ptrtoint ptr %data_size to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %data_size, align 1
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %_data.021 = phi ptr [ %hdr, %entry ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %_size.020 = phi i32 [ 19, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %_addr.019 = phi i32 [ %bld, %entry ], [ %add8, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %_size.020, -1
  %23 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wpr, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr32, align 4
  %conv7 = zext i32 %_addr.019 to i64
  %incdec.ptr = getelementptr i32, ptr %_data.021, i32 1
  %29 = ptrtoint ptr %_data.021 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %_data.021, align 4
  tail call void %28(ptr noundef %24, i64 noundef %conv7, i32 noundef %30) #4
  %add8 = add i32 %_addr.019, 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %hdr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm200_gr_acr_bld_patch(ptr noundef %acr, i32 noundef %bld, i64 noundef %adjust) #0 align 64 {
entry:
  %hdr = alloca %struct.flcn_bl_dmem_desc_v1, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %hdr) #4
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 76)
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %_data.033 = phi ptr [ %hdr, %entry ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %_size.032 = phi i32 [ 19, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %_addr.031 = phi i32 [ %bld, %entry ], [ %add, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %_size.032, -1
  %1 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wpr, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptrs, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %conv = zext i32 %_addr.031 to i64
  %call = tail call i32 %6(ptr noundef %2, i64 noundef %conv) #4
  %incdec.ptr = getelementptr i32, ptr %_data.033, i32 1
  %7 = ptrtoint ptr %_data.033 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %_data.033, align 4
  %add = add i32 %_addr.031, 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body
  %code_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 3
  %8 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %code_dma_base, align 1
  %add2 = add i64 %9, %adjust
  store i64 %add2, ptr %code_dma_base, align 1
  %data_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 9
  %10 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %data_dma_base, align 1
  %add4 = add i64 %11, %adjust
  store i64 %add4, ptr %data_dma_base, align 1
  br label %while.body13

while.body13:                                     ; preds = %while.body13.while.body13_crit_edge, %while.end
  %_data9.036 = phi ptr [ %hdr, %while.end ], [ %incdec.ptr18, %while.body13.while.body13_crit_edge ]
  %_size8.035 = phi i32 [ 19, %while.end ], [ %dec11, %while.body13.while.body13_crit_edge ]
  %_addr7.034 = phi i32 [ %bld, %while.end ], [ %add19, %while.body13.while.body13_crit_edge ]
  %dec11 = add nsw i32 %_size8.035, -1
  %12 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wpr, align 8
  %ptrs15 = getelementptr inbounds %struct.nvkm_memory, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ptrs15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptrs15, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wr32, align 4
  %conv17 = zext i32 %_addr7.034 to i64
  %incdec.ptr18 = getelementptr i32, ptr %_data9.036, i32 1
  %18 = ptrtoint ptr %_data9.036 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %_data9.036, align 4
  tail call void %17(ptr noundef %13, i64 noundef %conv17, i32 noundef %19) #4
  %add19 = add i32 %_addr7.034, 4
  %tobool12.not = icmp eq i32 %dec11, 0
  br i1 %tobool12.not, label %while.end20, label %while.body13.while.body13_crit_edge

while.body13.while.body13_crit_edge:              ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body13

while.end20:                                      ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #6
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  call void @flcn_bl_dmem_desc_v1_dump(ptr noundef %subdev, ptr noundef nonnull %hdr) #4
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %hdr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_gr_rops(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1179756
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !110
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_gr_init_ds_hww_esr_2(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !111
  tail call void @arm_heavy_mb() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4216904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1073741824) #4, !srcloc !112
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 4216908
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #4, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %or = or i32 %6, 1
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 4216908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %or) #4, !srcloc !112
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_gr_init_num_active_ltcs(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1050624
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4294828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !117
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %8, i32 1050628
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #4, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 4293436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %9) #4, !srcloc !112
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_gr_init_gpc_mmu(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  tail call void @arm_heavy_mb() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1051776
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  %and = and i32 %4, -268427265
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4294784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 4294800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !122
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 4294804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !123
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %12, i32 1051848
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #4, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %15, i32 4294836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %13) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr29 = getelementptr i8, ptr %17, i32 1051852
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #4, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %20, i32 4294840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %18) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr39 = getelementptr i8, ptr %22, i32 1051844
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #4, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !128
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr43 = getelementptr i8, ptr %25, i32 4294832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %23) #4, !srcloc !112
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_gr_oneinit_sm_id(ptr noundef %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gf100_gr_oneinit_sm_id(ptr noundef %gr) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_sm_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_gr_oneinit_tiles(ptr noundef %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %0 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpc_nr, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.if.else38_crit_edge [
    i8 2, label %land.lhs.true
    i8 4, label %land.lhs.true11
    i8 6, label %land.lhs.true27
  ]

entry.if.else38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else38

land.lhs.true:                                    ; preds = %entry
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 16
  %3 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tpc_total, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %4)
  %cmp3 = icmp eq i8 %4, 8
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.else38_crit_edge

land.lhs.true.if.else38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else38

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %tile = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 24
  %5 = ptrtoint ptr %tile to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 282574488404224, ptr %tile, align 1
  %screen_tile_row_offset = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %6 = ptrtoint ptr %screen_tile_row_offset to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %screen_tile_row_offset, align 2
  br label %if.end40

land.lhs.true11:                                  ; preds = %entry
  %tpc_total12 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 16
  %7 = ptrtoint ptr %tpc_total12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tpc_total12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %cmp14 = icmp eq i8 %8, 16
  br i1 %cmp14, label %if.then16, label %land.lhs.true11.if.else38_crit_edge

land.lhs.true11.if.else38_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else38

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  %tile17 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 24
  %9 = call ptr @memcpy(ptr %tile17, ptr @gm200_gr_tile_map_4_16, i32 16)
  %screen_tile_row_offset21 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %10 = ptrtoint ptr %screen_tile_row_offset21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %screen_tile_row_offset21, align 2
  br label %if.end40

land.lhs.true27:                                  ; preds = %entry
  %tpc_total28 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 16
  %11 = ptrtoint ptr %tpc_total28 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tpc_total28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %12)
  %cmp30 = icmp eq i8 %12, 24
  br i1 %cmp30, label %if.then32, label %land.lhs.true27.if.else38_crit_edge

land.lhs.true27.if.else38_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else38

if.then32:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  %tile33 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 24
  %13 = call ptr @memcpy(ptr %tile33, ptr @gm200_gr_tile_map_6_24, i32 24)
  %screen_tile_row_offset37 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %14 = ptrtoint ptr %screen_tile_row_offset37 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %screen_tile_row_offset37, align 2
  br label %if.end40

if.else38:                                        ; preds = %land.lhs.true27.if.else38_crit_edge, %land.lhs.true11.if.else38_crit_edge, %land.lhs.true.if.else38_crit_edge, %entry.if.else38_crit_edge
  tail call void @gf100_gr_oneinit_tiles(ptr noundef %gr) #4
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.then32, %if.then16, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_tiles(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_gr_load(ptr noundef %gr, i32 noundef %ver, ptr nocapture noundef readonly %fwif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1
  %fecs = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 2
  %fecs1 = getelementptr inbounds %struct.gf100_gr_fwif, ptr %fwif, i32 0, i32 3
  %0 = ptrtoint ptr %fecs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fecs1, align 4
  %call = tail call i32 @nvkm_acr_lsfw_load_bl_inst_data_sig(ptr noundef %subdev, ptr noundef %fecs, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %ver, ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpccs = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 3
  %gpccs6 = getelementptr inbounds %struct.gf100_gr_fwif, ptr %fwif, i32 0, i32 4
  %2 = ptrtoint ptr %gpccs6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpccs6, align 4
  %call7 = tail call i32 @nvkm_acr_lsfw_load_bl_inst_data_sig(ptr noundef %subdev, ptr noundef %gpccs, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef %ver, ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %firmware = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 4
  %4 = ptrtoint ptr %firmware to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %firmware, align 4
  %call11 = tail call i32 @gk20a_gr_load_sw(ptr noundef %gr, ptr noundef nonnull @.str.7, i32 noundef %ver) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_lsfw_load_bl_inst_data_sig(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_gr_load_sw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gm200_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_bl_dmem_desc_v1_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_gr_init_bios(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_vsc_stream_master(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_gr_init_zcull(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm200_gr_init_rop_active_fbps(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1179756
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !129
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 4229200
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #4, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !131
  tail call void @arm_heavy_mb() #4
  %and = and i32 %7, -16
  %or = or i32 %and, %4
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 4229200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %or) #4, !srcloc !112
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %11, i32 4229464
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #4, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %and21 = and i32 %12, -16
  %or22 = or i32 %and21, %4
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr24 = getelementptr i8, ptr %14, i32 4229464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %or22) #4, !srcloc !112
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_fecs_exceptions(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_sked_hww_esr(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_419cc0(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_ppc_exceptions(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_tex_hww_esr(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_gr_init_504430(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_gr_init_shader_exceptions(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_gr_init_400054(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 38, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gm200_gr_nofw._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gm200_gr_nofw._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @gm200_gr_gpccs_acr, !9, !"gm200_gr_gpccs_acr", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 78, i32 1}
!10 = !{ptr @gm200_gr_fecs_acr, !11, !"gm200_gr_fecs_acr", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 86, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 227, i32 9}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 234, i32 9}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 241, i32 30}
!18 = !{ptr @__UNIQUE_ID_firmware293, !19, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 244, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware294, !21, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 245, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware295, !23, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 246, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware296, !25, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 247, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware297, !27, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 248, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware298, !29, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 249, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware299, !31, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 250, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware300, !33, !"__UNIQUE_ID_firmware300", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 251, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware301, !35, !"__UNIQUE_ID_firmware301", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 252, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware302, !37, !"__UNIQUE_ID_firmware302", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 253, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware303, !39, !"__UNIQUE_ID_firmware303", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 254, i32 1}
!40 = !{ptr @__UNIQUE_ID_firmware304, !41, !"__UNIQUE_ID_firmware304", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 255, i32 1}
!42 = !{ptr @__UNIQUE_ID_firmware305, !43, !"__UNIQUE_ID_firmware305", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 257, i32 1}
!44 = !{ptr @__UNIQUE_ID_firmware306, !45, !"__UNIQUE_ID_firmware306", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 258, i32 1}
!46 = !{ptr @__UNIQUE_ID_firmware307, !47, !"__UNIQUE_ID_firmware307", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 259, i32 1}
!48 = !{ptr @__UNIQUE_ID_firmware308, !49, !"__UNIQUE_ID_firmware308", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 260, i32 1}
!50 = !{ptr @__UNIQUE_ID_firmware309, !51, !"__UNIQUE_ID_firmware309", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 261, i32 1}
!52 = !{ptr @__UNIQUE_ID_firmware310, !53, !"__UNIQUE_ID_firmware310", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 262, i32 1}
!54 = !{ptr @__UNIQUE_ID_firmware311, !55, !"__UNIQUE_ID_firmware311", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 263, i32 1}
!56 = !{ptr @__UNIQUE_ID_firmware312, !57, !"__UNIQUE_ID_firmware312", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 264, i32 1}
!58 = !{ptr @__UNIQUE_ID_firmware313, !59, !"__UNIQUE_ID_firmware313", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 265, i32 1}
!60 = !{ptr @__UNIQUE_ID_firmware314, !61, !"__UNIQUE_ID_firmware314", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 266, i32 1}
!62 = !{ptr @__UNIQUE_ID_firmware315, !63, !"__UNIQUE_ID_firmware315", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 267, i32 1}
!64 = !{ptr @__UNIQUE_ID_firmware316, !65, !"__UNIQUE_ID_firmware316", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 268, i32 1}
!66 = !{ptr @__UNIQUE_ID_firmware317, !67, !"__UNIQUE_ID_firmware317", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 270, i32 1}
!68 = !{ptr @__UNIQUE_ID_firmware318, !69, !"__UNIQUE_ID_firmware318", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 271, i32 1}
!70 = !{ptr @__UNIQUE_ID_firmware319, !71, !"__UNIQUE_ID_firmware319", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 272, i32 1}
!72 = !{ptr @__UNIQUE_ID_firmware320, !73, !"__UNIQUE_ID_firmware320", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 273, i32 1}
!74 = !{ptr @__UNIQUE_ID_firmware321, !75, !"__UNIQUE_ID_firmware321", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 274, i32 1}
!76 = !{ptr @__UNIQUE_ID_firmware322, !77, !"__UNIQUE_ID_firmware322", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 275, i32 1}
!78 = !{ptr @__UNIQUE_ID_firmware323, !79, !"__UNIQUE_ID_firmware323", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 276, i32 1}
!80 = !{ptr @__UNIQUE_ID_firmware324, !81, !"__UNIQUE_ID_firmware324", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 277, i32 1}
!82 = !{ptr @__UNIQUE_ID_firmware325, !83, !"__UNIQUE_ID_firmware325", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 278, i32 1}
!84 = !{ptr @__UNIQUE_ID_firmware326, !85, !"__UNIQUE_ID_firmware326", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 279, i32 1}
!86 = !{ptr @__UNIQUE_ID_firmware327, !87, !"__UNIQUE_ID_firmware327", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 280, i32 1}
!88 = !{ptr @__UNIQUE_ID_firmware328, !89, !"__UNIQUE_ID_firmware328", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 281, i32 1}
!90 = distinct !{null, !91, !"gm200_gr_tile_map_2_8", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 148, i32 1}
!92 = !{ptr @gm200_gr_tile_map_4_16, !93, !"gm200_gr_tile_map_4_16", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 143, i32 1}
!94 = !{ptr @gm200_gr_tile_map_6_24, !95, !"gm200_gr_tile_map_6_24", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 138, i32 1}
!96 = !{ptr @gm200_gr_fwif, !97, !"gm200_gr_fwif", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 284, i32 1}
!98 = !{ptr @gm200_gr, !99, !"gm200_gr", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm200.c", i32 185, i32 1}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{i64 5411261}
!110 = !{i64 2156320099}
!111 = !{i64 2156320441}
!112 = !{i64 5410843}
!113 = !{i64 2156321282}
!114 = !{i64 2156321684}
!115 = !{i64 2156322956}
!116 = !{i64 2156323209}
!117 = !{i64 2156324390}
!118 = !{i64 2156324643}
!119 = !{i64 2156325796}
!120 = !{i64 2156326049}
!121 = !{i64 2156326416}
!122 = !{i64 2156326829}
!123 = !{i64 2156328015}
!124 = !{i64 2156328268}
!125 = !{i64 2156329395}
!126 = !{i64 2156329648}
!127 = !{i64 2156330775}
!128 = !{i64 2156331028}
!129 = !{i64 2156331425}
!130 = !{i64 2156332194}
!131 = !{i64 2156332594}
!132 = !{i64 2156333465}
!133 = !{i64 2156333865}
