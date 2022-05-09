; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c"
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
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.149, %struct.anon.155, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.156], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.87 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.87 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.149 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.153, %struct.anon.154, %struct.nvkm_engine }
%struct.anon.153 = type { i32, ptr, i32, i8 }
%struct.anon.154 = type { i32, ptr, i32, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.155 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.156 = type { i8, i8 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.139, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.139 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@__UNIQUE_ID_firmware293 = internal constant [45 x i8] c"nouveau.firmware=nvidia/tu102/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu102/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu102/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [46 x i8] c"nouveau.firmware=nvidia/tu102/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [46 x i8] c"nouveau.firmware=nvidia/tu102/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu102/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu102/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware300 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu102/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware301 = internal constant [44 x i8] c"nouveau.firmware=nvidia/tu102/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware302 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu102/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware303 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu102/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware304 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu102/gr/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware305 = internal constant [45 x i8] c"nouveau.firmware=nvidia/tu104/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware306 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu104/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware307 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu104/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware308 = internal constant [46 x i8] c"nouveau.firmware=nvidia/tu104/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware309 = internal constant [46 x i8] c"nouveau.firmware=nvidia/tu104/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware310 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu104/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware311 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu104/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware312 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu104/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware313 = internal constant [44 x i8] c"nouveau.firmware=nvidia/tu104/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware314 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu104/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware315 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu104/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware316 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu104/gr/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware317 = internal constant [45 x i8] c"nouveau.firmware=nvidia/tu106/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware318 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu106/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware319 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu106/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware320 = internal constant [46 x i8] c"nouveau.firmware=nvidia/tu106/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware321 = internal constant [46 x i8] c"nouveau.firmware=nvidia/tu106/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware322 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu106/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware323 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu106/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware324 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu106/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware325 = internal constant [44 x i8] c"nouveau.firmware=nvidia/tu106/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware326 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu106/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware327 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu106/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware328 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu106/gr/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware329 = internal constant [45 x i8] c"nouveau.firmware=nvidia/tu117/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware330 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu117/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware331 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu117/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware332 = internal constant [46 x i8] c"nouveau.firmware=nvidia/tu117/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware333 = internal constant [46 x i8] c"nouveau.firmware=nvidia/tu117/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware334 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu117/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware335 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu117/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware336 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu117/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware337 = internal constant [44 x i8] c"nouveau.firmware=nvidia/tu117/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware338 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu117/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware339 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu117/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware340 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu117/gr/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware341 = internal constant [45 x i8] c"nouveau.firmware=nvidia/tu116/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware342 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu116/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware343 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu116/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [46 x i8] c"nouveau.firmware=nvidia/tu116/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [46 x i8] c"nouveau.firmware=nvidia/tu116/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu116/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [48 x i8] c"nouveau.firmware=nvidia/tu116/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu116/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [44 x i8] c"nouveau.firmware=nvidia/tu116/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [47 x i8] c"nouveau.firmware=nvidia/tu116/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu116/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [52 x i8] c"nouveau.firmware=nvidia/tu116/gr/sw_method_init.bin\00", section ".modinfo", align 1
@tu102_gr_fwif = internal constant { [3 x %struct.gf100_gr_fwif], [36 x i8] } { [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 0, ptr @gm200_gr_load, ptr @tu102_gr, ptr @gp108_gr_fecs_acr, ptr @gp108_gr_gpccs_acr }, %struct.gf100_gr_fwif { i32 -1, ptr @gm200_gr_nofw, ptr null, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gp108_gr_fecs_acr = external dso_local constant %struct.nvkm_acr_lsf_func, align 1
@gp108_gr_gpccs_acr = external dso_local constant %struct.nvkm_acr_lsf_func, align 1
@tu102_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gp102_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@tu102_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.147, %struct.anon.148, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] }, [64 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.147, %struct.anon.148, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gm200_gr_oneinit_tiles, ptr @gm200_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr @gv100_gr_init_419bd8, ptr @tu102_gr_init_gpc_mmu, ptr null, ptr null, ptr @gk104_gr_init_vsc_stream_master, ptr @tu102_gr_init_zcull, ptr @gf100_gr_init_num_active_ltcs, ptr @gp100_gr_init_rop_active_fbps, ptr null, ptr @gp102_gr_init_swdx_pes_mask, ptr @tu102_gr_init_fs, ptr @tu102_gr_init_fecs_exceptions, ptr @gm200_gr_init_ds_hww_esr_2, ptr null, ptr @gk104_gr_init_sked_hww_esr, ptr null, ptr null, ptr null, ptr @gk104_gr_init_ppc_exceptions, ptr null, ptr @gv100_gr_init_504430, ptr @gv100_gr_init_shader_exceptions, ptr null, ptr null, ptr @gv100_gr_trap_mp, ptr null, ptr null, %struct.anon.147 zeroinitializer, %struct.anon.148 zeroinitializer, ptr @gm200_gr_rops, i32 6, i32 5, i32 3, ptr @tu102_grctx, ptr null, ptr @gp102_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41280, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 50583, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 50624, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [64 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"tu102_gr_fwif\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 194, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [9 x i8] c"tu102_gr\00", align 1
@___asan_gen_.6 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 94, i32 1 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_firmware300, ptr @__UNIQUE_ID_firmware301, ptr @__UNIQUE_ID_firmware302, ptr @__UNIQUE_ID_firmware303, ptr @__UNIQUE_ID_firmware304, ptr @__UNIQUE_ID_firmware305, ptr @__UNIQUE_ID_firmware306, ptr @__UNIQUE_ID_firmware307, ptr @__UNIQUE_ID_firmware308, ptr @__UNIQUE_ID_firmware309, ptr @__UNIQUE_ID_firmware310, ptr @__UNIQUE_ID_firmware311, ptr @__UNIQUE_ID_firmware312, ptr @__UNIQUE_ID_firmware313, ptr @__UNIQUE_ID_firmware314, ptr @__UNIQUE_ID_firmware315, ptr @__UNIQUE_ID_firmware316, ptr @__UNIQUE_ID_firmware317, ptr @__UNIQUE_ID_firmware318, ptr @__UNIQUE_ID_firmware319, ptr @__UNIQUE_ID_firmware320, ptr @__UNIQUE_ID_firmware321, ptr @__UNIQUE_ID_firmware322, ptr @__UNIQUE_ID_firmware323, ptr @__UNIQUE_ID_firmware324, ptr @__UNIQUE_ID_firmware325, ptr @__UNIQUE_ID_firmware326, ptr @__UNIQUE_ID_firmware327, ptr @__UNIQUE_ID_firmware328, ptr @__UNIQUE_ID_firmware329, ptr @__UNIQUE_ID_firmware330, ptr @__UNIQUE_ID_firmware331, ptr @__UNIQUE_ID_firmware332, ptr @__UNIQUE_ID_firmware333, ptr @__UNIQUE_ID_firmware334, ptr @__UNIQUE_ID_firmware335, ptr @__UNIQUE_ID_firmware336, ptr @__UNIQUE_ID_firmware337, ptr @__UNIQUE_ID_firmware338, ptr @__UNIQUE_ID_firmware339, ptr @__UNIQUE_ID_firmware340, ptr @__UNIQUE_ID_firmware341, ptr @__UNIQUE_ID_firmware342, ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_firmware352, ptr @tu102_gr_fwif, ptr @tu102_gr], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_gr_fwif to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_gr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tu102_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @tu102_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #4
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
declare dso_local void @gv100_gr_init_419bd8(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_gr_init_gpc_mmu(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1051776
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !135
  %and = and i32 %4, -134209537
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4294784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #4, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !137
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 4294800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #4, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !138
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 4294804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #4, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !139
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %12, i32 1051848
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #4, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %15, i32 4294836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %13) #4, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr29 = getelementptr i8, ptr %17, i32 1051852
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #4, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !142
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %20, i32 4294840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %18) #4, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !143
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr39 = getelementptr i8, ptr %22, i32 1051844
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #4, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !144
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr43 = getelementptr i8, ptr %25, i32 4294832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %23) #4, !srcloc !136
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_vsc_stream_master(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_gr_init_zcull(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  %bank = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 16
  %2 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tpc_total, align 1
  %conv = zext i8 %3 to i32
  %sub = add nuw nsw i32 %conv, 8388607
  %div = udiv i32 %sub, %conv
  %add6 = add i8 %3, 63
  %and = and i8 %add6, -64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bank) #4
  %4 = call ptr @memset(ptr %bank, i32 0, i32 32)
  %conv9 = zext i8 %and to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %cmp132.not = icmp eq i8 %and, 0
  br i1 %cmp132.not, label %entry.for.cond47.preheader_crit_edge, label %for.cond11.preheader.lr.ph

entry.for.cond47.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond47.preheader

for.cond11.preheader.lr.ph:                       ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %do.body.for.cond11.preheader_crit_edge, %for.cond11.preheader.lr.ph
  %conv8134 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %conv8, %do.body.for.cond11.preheader_crit_edge ]
  %i.0133 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %add44, %do.body.for.cond11.preheader_crit_edge ]
  %5 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tpc_total, align 1
  %conv19 = zext i8 %6 to i32
  %7 = call i32 @llvm.usub.sat.i32(i32 %conv19, i32 %conv8134)
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8134, i32 %conv19)
  %exitcond.not.not = icmp ult i32 %conv8134, %conv19
  br i1 %exitcond.not.not, label %for.body22, label %for.cond11.preheader.do.body_crit_edge

for.cond11.preheader.do.body_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.cond47.preheader:                             ; preds = %do.body.for.cond47.preheader_crit_edge, %entry.for.cond47.preheader_crit_edge
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %8 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp50135.not = icmp eq i8 %9, 0
  br i1 %cmp50135.not, label %for.cond47.preheader.do.body92_crit_edge, label %do.body53.lr.ph

for.cond47.preheader.do.body92_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body92

do.body53.lr.ph:                                  ; preds = %for.cond47.preheader
  %screen_tile_row_offset = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %pri62 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %do.body53

for.body22:                                       ; preds = %for.cond11.preheader
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %conv8134
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx26 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %13 to i32
  %inc = add i8 %13, 1
  store i8 %inc, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %exitcond.1.not = icmp eq i32 %7, 1
  br i1 %exitcond.1.not, label %for.body22.do.body_crit_edge, label %for.body22.1

for.body22.do.body_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.body22.1:                                     ; preds = %for.body22
  %add17.1 = add nuw nsw i32 %conv8134, 1
  %arrayidx.1 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add17.1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1, align 1
  %idxprom.1 = zext i8 %15 to i32
  %arrayidx26.1 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom.1
  %16 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx26.1, align 1
  %conv27.1 = zext i8 %17 to i32
  %shl.1 = shl nuw nsw i32 %conv27.1, 4
  %or.1 = or i32 %shl.1, %conv27
  %inc.1 = add i8 %17, 1
  store i8 %inc.1, ptr %arrayidx26.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond.2.not = icmp eq i32 %7, 2
  br i1 %exitcond.2.not, label %for.body22.1.do.body_crit_edge, label %for.body22.2

for.body22.1.do.body_crit_edge:                   ; preds = %for.body22.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.body22.2:                                     ; preds = %for.body22.1
  %add17.2 = add nuw nsw i32 %conv8134, 2
  %arrayidx.2 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add17.2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2, align 1
  %idxprom.2 = zext i8 %19 to i32
  %arrayidx26.2 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom.2
  %20 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx26.2, align 1
  %conv27.2 = zext i8 %21 to i32
  %shl.2 = shl nuw nsw i32 %conv27.2, 8
  %or.2 = or i32 %shl.2, %or.1
  %inc.2 = add i8 %21, 1
  store i8 %inc.2, ptr %arrayidx26.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %exitcond.3.not = icmp eq i32 %7, 3
  br i1 %exitcond.3.not, label %for.body22.2.do.body_crit_edge, label %for.body22.3

for.body22.2.do.body_crit_edge:                   ; preds = %for.body22.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.body22.3:                                     ; preds = %for.body22.2
  %add17.3 = add nuw nsw i32 %conv8134, 3
  %arrayidx.3 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add17.3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.3, align 1
  %idxprom.3 = zext i8 %23 to i32
  %arrayidx26.3 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom.3
  %24 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx26.3, align 1
  %conv27.3 = zext i8 %25 to i32
  %shl.3 = shl nuw nsw i32 %conv27.3, 12
  %or.3 = or i32 %shl.3, %or.2
  %inc.3 = add i8 %25, 1
  store i8 %inc.3, ptr %arrayidx26.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %exitcond.4.not = icmp eq i32 %7, 4
  br i1 %exitcond.4.not, label %for.body22.3.do.body_crit_edge, label %for.body22.4

for.body22.3.do.body_crit_edge:                   ; preds = %for.body22.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.body22.4:                                     ; preds = %for.body22.3
  %add17.4 = add nuw nsw i32 %conv8134, 4
  %arrayidx.4 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add17.4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.4, align 1
  %idxprom.4 = zext i8 %27 to i32
  %arrayidx26.4 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom.4
  %28 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx26.4, align 1
  %conv27.4 = zext i8 %29 to i32
  %shl.4 = shl nuw nsw i32 %conv27.4, 16
  %or.4 = or i32 %shl.4, %or.3
  %inc.4 = add i8 %29, 1
  store i8 %inc.4, ptr %arrayidx26.4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %exitcond.5.not = icmp eq i32 %7, 5
  br i1 %exitcond.5.not, label %for.body22.4.do.body_crit_edge, label %for.body22.5

for.body22.4.do.body_crit_edge:                   ; preds = %for.body22.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.body22.5:                                     ; preds = %for.body22.4
  %add17.5 = add nuw nsw i32 %conv8134, 5
  %arrayidx.5 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add17.5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.5, align 1
  %idxprom.5 = zext i8 %31 to i32
  %arrayidx26.5 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom.5
  %32 = ptrtoint ptr %arrayidx26.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx26.5, align 1
  %conv27.5 = zext i8 %33 to i32
  %shl.5 = shl nuw nsw i32 %conv27.5, 20
  %or.5 = or i32 %shl.5, %or.4
  %inc.5 = add i8 %33, 1
  store i8 %inc.5, ptr %arrayidx26.5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %exitcond.6.not = icmp eq i32 %7, 6
  br i1 %exitcond.6.not, label %for.body22.5.do.body_crit_edge, label %for.body22.6

for.body22.5.do.body_crit_edge:                   ; preds = %for.body22.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.body22.6:                                     ; preds = %for.body22.5
  %add17.6 = add nuw nsw i32 %conv8134, 6
  %arrayidx.6 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add17.6
  %34 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.6, align 1
  %idxprom.6 = zext i8 %35 to i32
  %arrayidx26.6 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom.6
  %36 = ptrtoint ptr %arrayidx26.6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx26.6, align 1
  %conv27.6 = zext i8 %37 to i32
  %shl.6 = shl nuw i32 %conv27.6, 24
  %or.6 = or i32 %shl.6, %or.5
  %inc.6 = add i8 %37, 1
  store i8 %inc.6, ptr %arrayidx26.6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %exitcond.7.not = icmp eq i32 %7, 7
  br i1 %exitcond.7.not, label %for.body22.6.do.body_crit_edge, label %for.body22.7

for.body22.6.do.body_crit_edge:                   ; preds = %for.body22.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.body22.7:                                     ; preds = %for.body22.6
  call void @__sanitizer_cov_trace_pc() #6
  %add17.7 = add nuw nsw i32 %conv8134, 7
  %arrayidx.7 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add17.7
  %38 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.7, align 1
  %idxprom.7 = zext i8 %39 to i32
  %arrayidx26.7 = getelementptr [32 x i8], ptr %bank, i32 0, i32 %idxprom.7
  %40 = ptrtoint ptr %arrayidx26.7 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx26.7, align 1
  %conv27.7 = zext i8 %41 to i32
  %shl.7 = shl i32 %conv27.7, 28
  %or.7 = or i32 %shl.7, %or.6
  %inc.7 = add i8 %41, 1
  store i8 %inc.7, ptr %arrayidx26.7, align 1
  br label %do.body

do.body:                                          ; preds = %for.body22.7, %for.body22.6.do.body_crit_edge, %for.body22.5.do.body_crit_edge, %for.body22.4.do.body_crit_edge, %for.body22.3.do.body_crit_edge, %for.body22.2.do.body_crit_edge, %for.body22.1.do.body_crit_edge, %for.body22.do.body_crit_edge, %for.cond11.preheader.do.body_crit_edge
  %data.0.lcssa = phi i32 [ 0, %for.cond11.preheader.do.body_crit_edge ], [ %conv27, %for.body22.do.body_crit_edge ], [ %or.1, %for.body22.1.do.body_crit_edge ], [ %or.2, %for.body22.2.do.body_crit_edge ], [ %or.3, %for.body22.3.do.body_crit_edge ], [ %or.4, %for.body22.4.do.body_crit_edge ], [ %or.5, %for.body22.5.do.body_crit_edge ], [ %or.6, %for.body22.6.do.body_crit_edge ], [ %or.7, %for.body22.7 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !145
  tail call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %44 = lshr i32 %i.0133, 1
  %mul39 = and i32 %44, 124
  %add41 = or i32 %mul39, 4295040
  %add.ptr = getelementptr i8, ptr %43, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %data.0.lcssa) #4, !srcloc !136
  %add44 = add nuw nsw i32 %conv8134, 8
  %conv8 = and i32 %add44, 255
  %cmp = icmp ult i32 %conv8, %conv9
  br i1 %cmp, label %do.body.for.cond11.preheader_crit_edge, label %do.body.for.cond47.preheader_crit_edge

do.body.for.cond47.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond47.preheader

do.body.for.cond11.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond11.preheader

do.body53:                                        ; preds = %do.body53.do.body53_crit_edge, %do.body53.lr.ph
  %indvars.iv = phi i32 [ 0, %do.body53.lr.ph ], [ %indvars.iv.next, %do.body53.do.body53_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  tail call void @arm_heavy_mb() #4
  %45 = ptrtoint ptr %screen_tile_row_offset to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %screen_tile_row_offset, align 2
  %conv56 = zext i8 %46 to i32
  %shl57 = shl nuw nsw i32 %conv56, 8
  %arrayidx59 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %indvars.iv
  %47 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %48 to i32
  %or61 = or i32 %shl57, %conv60
  %49 = ptrtoint ptr %pri62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri62, align 4
  %mul64 = shl nuw nsw i32 %indvars.iv, 15
  %add66 = add nuw nsw i32 %mul64, 5245204
  %add.ptr67 = getelementptr i8, ptr %50, i32 %add66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %or61) #4, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  tail call void @arm_heavy_mb() #4
  %51 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tpc_total, align 1
  %conv72 = zext i8 %52 to i32
  %or73 = or i32 %conv72, 262144
  %53 = ptrtoint ptr %pri62 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri62, align 4
  %add78 = add nuw nsw i32 %mul64, 5245200
  %add.ptr79 = getelementptr i8, ptr %54, i32 %add78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %or73) #4, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !148
  tail call void @arm_heavy_mb() #4
  %55 = ptrtoint ptr %pri62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri62, align 4
  %add87 = add nuw nsw i32 %mul64, 5245208
  %add.ptr88 = getelementptr i8, ptr %56, i32 %add87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %div) #4, !srcloc !136
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %57 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %gpc_nr, align 1
  %59 = zext i8 %58 to i32
  %cmp50 = icmp ult i32 %indvars.iv.next, %59
  br i1 %cmp50, label %do.body53.do.body53_crit_edge, label %do.body53.do.body92_crit_edge

do.body53.do.body92_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body92

do.body53.do.body53_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body53

do.body92:                                        ; preds = %do.body53.do.body92_crit_edge, %for.cond47.preheader.do.body92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  tail call void @arm_heavy_mb() #4
  %pri95 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %60 = ptrtoint ptr %pri95 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri95, align 4
  %add.ptr96 = getelementptr i8, ptr %61, i32 4308948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %div) #4, !srcloc !136
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bank) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_num_active_ltcs(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_gr_init_rop_active_fbps(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp102_gr_init_swdx_pes_mask(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_gr_init_fs(ptr noundef %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void @gp100_grctx_generate_smid_config(ptr noundef %gr) #4
  tail call void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef %gr) #4
  %sm_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 26
  %2 = ptrtoint ptr %sm_nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sm_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp23.not = icmp eq i8 %3, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %sm.024 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !150
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 25, i32 %sm.024
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv4, 15
  %tpc = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 25, i32 %sm.024, i32 1
  %8 = ptrtoint ptr %tpc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tpc, align 1
  %conv7 = zext i8 %9 to i32
  %mul8 = shl nuw nsw i32 %conv7, 2
  %add9 = or i32 %mul8, %mul
  %add10 = add nuw nsw i32 %add9, 5245968
  %add.ptr = getelementptr i8, ptr %5, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %sm.024) #4, !srcloc !136
  %inc = add nuw nsw i32 %sm.024, 1
  %10 = ptrtoint ptr %sm_nr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sm_nr, align 1
  %conv = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @gm200_grctx_generate_dist_skip_table(ptr noundef %gr) #4
  tail call void @gf100_gr_init_num_tpc_per_gpc(ptr noundef %gr, i1 noundef zeroext true, i1 noundef zeroext true) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tu102_gr_init_fecs_exceptions(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !151
  tail call void @arm_heavy_mb() #4
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4234276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 7274498) #4, !srcloc !136
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_init_ds_hww_esr_2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_sked_hww_esr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_ppc_exceptions(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_gr_init_504430(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_gr_init_shader_exceptions(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_rops(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_grctx_generate_smid_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_dist_skip_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_num_tpc_per_gpc(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__UNIQUE_ID_firmware293, !1, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 128, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware294, !3, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 129, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware295, !5, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 130, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware296, !7, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 131, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware297, !9, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 132, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware298, !11, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 133, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware299, !13, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 134, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware300, !15, !"__UNIQUE_ID_firmware300", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 135, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware301, !17, !"__UNIQUE_ID_firmware301", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 136, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware302, !19, !"__UNIQUE_ID_firmware302", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 137, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware303, !21, !"__UNIQUE_ID_firmware303", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 138, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware304, !23, !"__UNIQUE_ID_firmware304", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 139, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware305, !25, !"__UNIQUE_ID_firmware305", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 141, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware306, !27, !"__UNIQUE_ID_firmware306", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 142, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware307, !29, !"__UNIQUE_ID_firmware307", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 143, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware308, !31, !"__UNIQUE_ID_firmware308", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 144, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware309, !33, !"__UNIQUE_ID_firmware309", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 145, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware310, !35, !"__UNIQUE_ID_firmware310", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 146, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware311, !37, !"__UNIQUE_ID_firmware311", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 147, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware312, !39, !"__UNIQUE_ID_firmware312", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 148, i32 1}
!40 = !{ptr @__UNIQUE_ID_firmware313, !41, !"__UNIQUE_ID_firmware313", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 149, i32 1}
!42 = !{ptr @__UNIQUE_ID_firmware314, !43, !"__UNIQUE_ID_firmware314", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 150, i32 1}
!44 = !{ptr @__UNIQUE_ID_firmware315, !45, !"__UNIQUE_ID_firmware315", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 151, i32 1}
!46 = !{ptr @__UNIQUE_ID_firmware316, !47, !"__UNIQUE_ID_firmware316", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 152, i32 1}
!48 = !{ptr @__UNIQUE_ID_firmware317, !49, !"__UNIQUE_ID_firmware317", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 154, i32 1}
!50 = !{ptr @__UNIQUE_ID_firmware318, !51, !"__UNIQUE_ID_firmware318", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 155, i32 1}
!52 = !{ptr @__UNIQUE_ID_firmware319, !53, !"__UNIQUE_ID_firmware319", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 156, i32 1}
!54 = !{ptr @__UNIQUE_ID_firmware320, !55, !"__UNIQUE_ID_firmware320", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 157, i32 1}
!56 = !{ptr @__UNIQUE_ID_firmware321, !57, !"__UNIQUE_ID_firmware321", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 158, i32 1}
!58 = !{ptr @__UNIQUE_ID_firmware322, !59, !"__UNIQUE_ID_firmware322", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 159, i32 1}
!60 = !{ptr @__UNIQUE_ID_firmware323, !61, !"__UNIQUE_ID_firmware323", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 160, i32 1}
!62 = !{ptr @__UNIQUE_ID_firmware324, !63, !"__UNIQUE_ID_firmware324", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 161, i32 1}
!64 = !{ptr @__UNIQUE_ID_firmware325, !65, !"__UNIQUE_ID_firmware325", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 162, i32 1}
!66 = !{ptr @__UNIQUE_ID_firmware326, !67, !"__UNIQUE_ID_firmware326", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 163, i32 1}
!68 = !{ptr @__UNIQUE_ID_firmware327, !69, !"__UNIQUE_ID_firmware327", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 164, i32 1}
!70 = !{ptr @__UNIQUE_ID_firmware328, !71, !"__UNIQUE_ID_firmware328", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 165, i32 1}
!72 = !{ptr @__UNIQUE_ID_firmware329, !73, !"__UNIQUE_ID_firmware329", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 167, i32 1}
!74 = !{ptr @__UNIQUE_ID_firmware330, !75, !"__UNIQUE_ID_firmware330", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 168, i32 1}
!76 = !{ptr @__UNIQUE_ID_firmware331, !77, !"__UNIQUE_ID_firmware331", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 169, i32 1}
!78 = !{ptr @__UNIQUE_ID_firmware332, !79, !"__UNIQUE_ID_firmware332", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 170, i32 1}
!80 = !{ptr @__UNIQUE_ID_firmware333, !81, !"__UNIQUE_ID_firmware333", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 171, i32 1}
!82 = !{ptr @__UNIQUE_ID_firmware334, !83, !"__UNIQUE_ID_firmware334", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 172, i32 1}
!84 = !{ptr @__UNIQUE_ID_firmware335, !85, !"__UNIQUE_ID_firmware335", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 173, i32 1}
!86 = !{ptr @__UNIQUE_ID_firmware336, !87, !"__UNIQUE_ID_firmware336", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 174, i32 1}
!88 = !{ptr @__UNIQUE_ID_firmware337, !89, !"__UNIQUE_ID_firmware337", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 175, i32 1}
!90 = !{ptr @__UNIQUE_ID_firmware338, !91, !"__UNIQUE_ID_firmware338", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 176, i32 1}
!92 = !{ptr @__UNIQUE_ID_firmware339, !93, !"__UNIQUE_ID_firmware339", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 177, i32 1}
!94 = !{ptr @__UNIQUE_ID_firmware340, !95, !"__UNIQUE_ID_firmware340", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 178, i32 1}
!96 = !{ptr @__UNIQUE_ID_firmware341, !97, !"__UNIQUE_ID_firmware341", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 180, i32 1}
!98 = !{ptr @__UNIQUE_ID_firmware342, !99, !"__UNIQUE_ID_firmware342", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 181, i32 1}
!100 = !{ptr @__UNIQUE_ID_firmware343, !101, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 182, i32 1}
!102 = !{ptr @__UNIQUE_ID_firmware344, !103, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 183, i32 1}
!104 = !{ptr @__UNIQUE_ID_firmware345, !105, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 184, i32 1}
!106 = !{ptr @__UNIQUE_ID_firmware346, !107, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 185, i32 1}
!108 = !{ptr @__UNIQUE_ID_firmware347, !109, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 186, i32 1}
!110 = !{ptr @__UNIQUE_ID_firmware348, !111, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 187, i32 1}
!112 = !{ptr @__UNIQUE_ID_firmware349, !113, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 188, i32 1}
!114 = !{ptr @__UNIQUE_ID_firmware350, !115, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 189, i32 1}
!116 = !{ptr @__UNIQUE_ID_firmware351, !117, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 190, i32 1}
!118 = !{ptr @__UNIQUE_ID_firmware352, !119, !"__UNIQUE_ID_firmware352", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 191, i32 1}
!120 = !{ptr @tu102_gr_fwif, !121, !"tu102_gr_fwif", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 194, i32 1}
!122 = !{ptr @tu102_gr, !123, !"tu102_gr", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/tu102.c", i32 94, i32 1}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 2156303953}
!134 = !{i64 5409305}
!135 = !{i64 2156304206}
!136 = !{i64 5408887}
!137 = !{i64 2156304573}
!138 = !{i64 2156304986}
!139 = !{i64 2156306172}
!140 = !{i64 2156306425}
!141 = !{i64 2156307552}
!142 = !{i64 2156307805}
!143 = !{i64 2156308932}
!144 = !{i64 2156309185}
!145 = !{i64 2156300513}
!146 = !{i64 2156301109}
!147 = !{i64 2156301720}
!148 = !{i64 2156302270}
!149 = !{i64 2156302740}
!150 = !{i64 2156299669}
!151 = !{i64 2156299041}
