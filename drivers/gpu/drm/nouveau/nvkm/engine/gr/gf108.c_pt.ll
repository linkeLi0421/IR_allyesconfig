; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/gf108.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf108.c"
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

@gf108_gr_init_gpc_unk_0 = dso_local constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294148, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294272, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294420, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4293508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf108_gr_init_setup_1 = dso_local constant { [4 x %struct.gf100_gr_init], [32 x i8] } { [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294856, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294864, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4294868, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf108_gr_fwif = dso_local constant { [3 x %struct.gf100_gr_fwif], [36 x i8] } { [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_load, ptr @gf108_gr, ptr null, ptr null }, %struct.gf100_gr_fwif { i32 -1, ptr @gf100_gr_nofw, ptr @gf108_gr, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [36 x i8] zeroinitializer }, align 32
@gf108_gr_pack_mmio = internal constant { [27 x %struct.gf100_gr_pack], [40 x i8] } { [27 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_gr_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf104_gr_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_gr_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_gr_init_setup_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_zcull_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_gr_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_gcc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf104_gr_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf108_gr_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_tpccs_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf104_gr_init_sm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_be_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_gr_init_fe_1, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gf100_gr_fecs_ucode = external dso_local global %struct.gf100_gr_ucode, align 4
@gf100_gr_gpccs_ucode = external dso_local global %struct.gf100_gr_ucode, align 4
@gf108_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gf108_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [6 x %struct.nvkm_sclass] }, [76 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [6 x %struct.nvkm_sclass] } { ptr @gf100_gr_oneinit_tiles, ptr @gf100_gr_oneinit_sm_id, ptr @gf100_gr_init, ptr null, ptr @gf100_gr_init_gpc_mmu, ptr @gf108_gr_init_r405a14, ptr null, ptr @gf100_gr_init_vsc_stream_master, ptr @gf100_gr_init_zcull, ptr @gf100_gr_init_num_active_ltcs, ptr null, ptr null, ptr null, ptr null, ptr @gf100_gr_init_fecs_exceptions, ptr null, ptr @gf100_gr_init_40601c, ptr null, ptr @gf100_gr_init_419cc0, ptr @gf100_gr_init_419eb4, ptr null, ptr null, ptr @gf100_gr_init_tex_hww_esr, ptr null, ptr @gf100_gr_init_shader_exceptions, ptr @gf100_gr_init_400054, ptr null, ptr @gf100_gr_trap_mp, ptr null, ptr @gf108_gr_pack_mmio, %struct.anon { ptr @gf100_gr_fecs_ucode }, %struct.anon.0 { ptr @gf100_gr_gpccs_ucode }, ptr @gf100_gr_rops, i32 0, i32 0, i32 0, ptr @gf108_grctx, ptr null, ptr @gf100_gr_zbc, [6 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 36921, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37015, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37271, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 37056, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [76 x i8] zeroinitializer }, align 32
@gf100_gr_init_main_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_fe_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_pri_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_rstr2d_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_pd_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf104_gr_init_ds_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_scc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_prop_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_setup_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_crstr_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_zcull_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_gpm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_gr_init_gpc_unk_1 = internal constant { [5 x %struct.gf100_gr_init], [48 x i8] } { [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295936, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296456, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296192, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4296200, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_gr_init_gcc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_tpccs_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf104_gr_init_tex_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf108_gr_init_pe_0 = internal constant { [8 x %struct.gf100_gr_init], [32 x i8] } { [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4298764, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4298768, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298772, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 4298820, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298828, i8 1, i32 4, i32 23493 }, %struct.gf100_gr_init { i32 4298832, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298880, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gf100_gr_init_l1c_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_wwdx_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_tpccs_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_mpc_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf104_gr_init_sm_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_be_0 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@gf100_gr_init_fe_1 = external dso_local constant [0 x %struct.gf100_gr_init], align 4
@___asan_gen_.2 = private unnamed_addr constant [24 x i8] c"gf108_gr_init_gpc_unk_0\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 34, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [22 x i8] c"gf108_gr_init_setup_1\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 43, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"gf108_gr_fwif\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 147, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"gf108_gr_pack_mmio\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 72, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [9 x i8] c"gf108_gr\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 113, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [24 x i8] c"gf108_gr_init_gpc_unk_1\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 51, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"gf108_gr_init_pe_0\00", align 1
@___asan_gen_.21 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf108.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 60, i32 1 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @gf108_gr_init_gpc_unk_0, ptr @gf108_gr_init_setup_1, ptr @gf108_gr_fwif, ptr @gf108_gr_pack_mmio, ptr @gf108_gr, ptr @gf108_gr_init_gpc_unk_1, ptr @gf108_gr_init_pe_0], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_gr_init_gpc_unk_0 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_gr_init_setup_1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_gr_fwif to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_gr_pack_mmio to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_gr to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_gr_init_gpc_unk_1 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf108_gr_init_pe_0 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_load(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_nofw(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf108_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gf108_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_tiles(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_sm_id(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_gpc_mmu(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf108_gr_init_r405a14(ptr nocapture noundef readonly %gr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !23
  tail call void @arm_heavy_mb() #2
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4217364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2147483648) #2, !srcloc !24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_vsc_stream_master(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_zcull(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_num_active_ltcs(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_fecs_exceptions(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_40601c(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_419cc0(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_419eb4(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_tex_hww_esr(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_shader_exceptions(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_400054(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_rops(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @gf108_gr_init_gpc_unk_0, !1, !"gf108_gr_init_gpc_unk_0", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf108.c", i32 34, i32 1}
!2 = !{ptr @gf108_gr_init_setup_1, !3, !"gf108_gr_init_setup_1", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf108.c", i32 43, i32 1}
!4 = !{ptr @gf108_gr_fwif, !5, !"gf108_gr_fwif", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf108.c", i32 147, i32 1}
!6 = !{ptr @gf108_gr, !7, !"gf108_gr", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf108.c", i32 113, i32 1}
!8 = !{ptr @gf108_gr_pack_mmio, !9, !"gf108_gr_pack_mmio", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf108.c", i32 72, i32 1}
!10 = !{ptr @gf108_gr_init_gpc_unk_1, !11, !"gf108_gr_init_gpc_unk_1", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf108.c", i32 51, i32 1}
!12 = !{ptr @gf108_gr_init_pe_0, !13, !"gf108_gr_init_pe_0", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gf108.c", i32 60, i32 1}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2156296351}
!24 = !{i64 5406197}
