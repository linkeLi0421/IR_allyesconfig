; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/gm20b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm20b.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func_zbc = type { ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.153 = type { ptr }
%struct.anon.154 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.flcn_bl_dmem_desc = type { [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.152, i32 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.152 = type { i32, i32, i32 }
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.155, %struct.anon.156, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.157], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.155 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.150, %struct.anon.151, %struct.nvkm_engine }
%struct.anon.150 = type { i32, ptr, i32, i8 }
%struct.anon.151 = type { i32, ptr, i32, i8 }
%struct.anon.156 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.157 = type { i8, i8 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gm20b_gr_fecs_acr = dso_local constant { %struct.nvkm_acr_lsf_func, [56 x i8] } { %struct.nvkm_acr_lsf_func { i32 0, i32 76, ptr @gm20b_gr_acr_bld_write, ptr @gm20b_gr_acr_bld_patch, ptr null, i64 0, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@gm20b_gr_fwif = internal constant { [3 x %struct.gf100_gr_fwif], [36 x i8] } { [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 0, ptr @gm20b_gr_load, ptr @gm20b_gr, ptr @gm20b_gr_fecs_acr, ptr null }, %struct.gf100_gr_fwif { i32 -1, ptr @gm200_gr_nofw, ptr null, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gr/fecs_\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gr/\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpccs_inst\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpccs_data\00", [21 x i8] zeroinitializer }, align 32
@gm20b_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gm20b_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.153, %struct.anon.154, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] }, [64 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.153, %struct.anon.154, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gm200_gr_oneinit_tiles, ptr @gm200_gr_oneinit_sm_id, ptr @gk20a_gr_init, ptr null, ptr @gm20b_gr_init_gpc_mmu, ptr null, ptr null, ptr null, ptr @gf117_gr_init_zcull, ptr null, ptr @gk104_gr_init_rop_active_fbps, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gf100_gr_trap_mp, ptr @gm20b_gr_set_hww_esr_report_mask, ptr null, %struct.anon.153 zeroinitializer, %struct.anon.154 zeroinitializer, ptr @gm200_gr_rops, i32 0, i32 0, i32 1, ptr @gm20b_grctx, ptr null, ptr @gf100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41280, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 45463, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 45504, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [64 x i8] zeroinitializer }, align 32
@gm20b_gr_init_gpc_mmu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 92, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cannot bypass secure boot - expect failure soon!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gm20b_gr_init_gpc_mmu\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/gm20b.c\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gm20b_gr_init_gpc_mmu._entry_ptr = internal global ptr @gm20b_gr_init_gpc_mmu._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"gm20b_gr_fecs_acr\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 74, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"gm20b_gr_fwif\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 177, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 147, i32 9 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 152, i32 38 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 152, i32 45 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 154, i32 45 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"gm20b_gr\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 117, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm20b.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 91, i32 4 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @gm20b_gr_init_gpc_mmu._entry, ptr @gm20b_gr_init_gpc_mmu._entry_ptr, ptr @gm20b_gr_fecs_acr, ptr @gm20b_gr_fwif, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @gm20b_gr, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_gr_fecs_acr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_gr_fwif to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_gr to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm20b_gr_init_gpc_mmu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm20b_gr_acr_bld_patch(ptr noundef %acr, i32 noundef %bld, i64 noundef %adjust) #0 align 64 {
entry:
  %hdr = alloca %struct.flcn_bl_dmem_desc, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %hdr) #4
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 76)
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %_data.062 = phi ptr [ %hdr, %entry ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %_size.061 = phi i32 [ 19, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %_addr.060 = phi i32 [ %bld, %entry ], [ %add, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %_size.061, -1
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
  %conv = zext i32 %_addr.060 to i64
  %call = tail call i32 %6(ptr noundef %2, i64 noundef %conv) #4
  %incdec.ptr = getelementptr i32, ptr %_data.062, i32 1
  %7 = ptrtoint ptr %_data.062 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %_data.062, align 4
  %add = add i32 %_addr.060, 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body
  %code_dma_base1 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 11
  %8 = ptrtoint ptr %code_dma_base1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %code_dma_base1, align 4
  %conv2 = zext i32 %9 to i64
  %shl = shl i64 %conv2, 40
  %code_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 3
  %10 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code_dma_base, align 4
  %shl3 = shl i32 %11, 8
  %conv4 = zext i32 %shl3 to i64
  %or = or i64 %shl, %conv4
  %add5 = add i64 %or, %adjust
  %shr = lshr i64 %add5, 8
  %conv6 = trunc i64 %shr to i32
  store i32 %conv6, ptr %code_dma_base, align 4
  %shr10 = lshr i64 %add5, 40
  %conv12 = trunc i64 %shr10 to i32
  store i32 %conv12, ptr %code_dma_base1, align 4
  %data_dma_base1 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 12
  %12 = ptrtoint ptr %data_dma_base1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_dma_base1, align 4
  %conv14 = zext i32 %13 to i64
  %shl15 = shl i64 %conv14, 40
  %data_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 9
  %14 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_dma_base, align 4
  %shl16 = shl i32 %15, 8
  %conv17 = zext i32 %shl16 to i64
  %or18 = or i64 %shl15, %conv17
  %add19 = add i64 %or18, %adjust
  %shr20 = lshr i64 %add19, 8
  %conv22 = trunc i64 %shr20 to i32
  store i32 %conv22, ptr %data_dma_base, align 4
  %shr26 = lshr i64 %add19, 40
  %conv28 = trunc i64 %shr26 to i32
  store i32 %conv28, ptr %data_dma_base1, align 4
  br label %while.body37

while.body37:                                     ; preds = %while.body37.while.body37_crit_edge, %while.end
  %_data33.065 = phi ptr [ %hdr, %while.end ], [ %incdec.ptr42, %while.body37.while.body37_crit_edge ]
  %_size32.064 = phi i32 [ 19, %while.end ], [ %dec35, %while.body37.while.body37_crit_edge ]
  %_addr31.063 = phi i32 [ %bld, %while.end ], [ %add43, %while.body37.while.body37_crit_edge ]
  %dec35 = add nsw i32 %_size32.064, -1
  %16 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wpr, align 8
  %ptrs39 = getelementptr inbounds %struct.nvkm_memory, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ptrs39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptrs39, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wr32, align 4
  %conv41 = zext i32 %_addr31.063 to i64
  %incdec.ptr42 = getelementptr i32, ptr %_data33.065, i32 1
  %22 = ptrtoint ptr %_data33.065 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %_data33.065, align 4
  tail call void %21(ptr noundef %17, i64 noundef %conv41, i32 noundef %23) #4
  %add43 = add i32 %_addr31.063, 4
  %tobool36.not = icmp eq i32 %dec35, 0
  br i1 %tobool36.not, label %while.end44, label %while.body37.while.body37_crit_edge

while.body37.while.body37_crit_edge:              ; preds = %while.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body37

while.end44:                                      ; preds = %while.body37
  call void @__sanitizer_cov_trace_pc() #6
  %subdev = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1
  call void @flcn_bl_dmem_desc_dump(ptr noundef %subdev, ptr noundef nonnull %hdr) #4
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %hdr) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_bl_dmem_desc_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm20b_gr_acr_bld_write(ptr nocapture noundef readonly %acr, i32 noundef %bld, ptr nocapture noundef readonly %lsfw) #0 align 64 {
entry:
  %hdr = alloca %struct.flcn_bl_dmem_desc, align 4
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
  %shr = lshr i64 %add2, 8
  %app_resident_data_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 13
  %6 = ptrtoint ptr %app_resident_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %app_resident_data_offset, align 4
  %conv3 = zext i32 %7 to i64
  %add4 = add nuw nsw i64 %conv3, %conv
  %shr5 = lshr i64 %add4, 8
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %hdr) #4
  %code_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 3
  %conv6 = trunc i64 %shr to i32
  %8 = call ptr @memset(ptr %hdr, i32 0, i32 36)
  %9 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv6, ptr %code_dma_base, align 4
  %non_sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 4
  %10 = ptrtoint ptr %non_sec_code_off to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %non_sec_code_off, align 4
  %non_sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 5
  %app_resident_code_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 12
  %11 = ptrtoint ptr %app_resident_code_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %app_resident_code_size, align 4
  %13 = ptrtoint ptr %non_sec_code_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %non_sec_code_size, align 4
  %sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 6
  %14 = ptrtoint ptr %sec_code_off to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sec_code_off, align 4
  %sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 7
  %15 = ptrtoint ptr %sec_code_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sec_code_size, align 4
  %code_entry_point = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 8
  %app_imem_entry = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 10
  %16 = ptrtoint ptr %app_imem_entry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %app_imem_entry, align 4
  %18 = ptrtoint ptr %code_entry_point to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %code_entry_point, align 4
  %data_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 9
  %conv9 = trunc i64 %shr5 to i32
  %19 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv9, ptr %data_dma_base, align 4
  %data_size = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 10
  %app_resident_data_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 14
  %20 = ptrtoint ptr %app_resident_data_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %app_resident_data_size, align 4
  %22 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %data_size, align 4
  %code_dma_base1 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 11
  %23 = ptrtoint ptr %code_dma_base1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %code_dma_base1, align 4
  %data_dma_base1 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 12
  %24 = ptrtoint ptr %data_dma_base1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %data_dma_base1, align 4
  %wpr = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %_data.033 = phi ptr [ %hdr, %entry ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %_size.032 = phi i32 [ 19, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %_addr.031 = phi i32 [ %bld, %entry ], [ %add18, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %_size.032, -1
  %25 = ptrtoint ptr %wpr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wpr, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr32, align 4
  %conv17 = zext i32 %_addr.031 to i64
  %incdec.ptr = getelementptr i32, ptr %_data.033, i32 1
  %31 = ptrtoint ptr %_data.033 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %_data.033, align 4
  tail call void %30(ptr noundef %26, i64 noundef %conv17, i32 noundef %32) #4
  %add18 = add i32 %_addr.031, 4
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
define dso_local i32 @gm20b_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gm20b_gr_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gm20b_gr_load(ptr noundef %gr, i32 noundef %ver, ptr nocapture noundef readonly %fwif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1
  %fecs = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 2
  %fecs2 = getelementptr inbounds %struct.gf100_gr_fwif, ptr %fwif, i32 0, i32 3
  %0 = ptrtoint ptr %fecs2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fecs2, align 4
  %call = tail call i32 @nvkm_acr_lsfw_load_bl_inst_data_sig(ptr noundef %subdev1, ptr noundef %fecs, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %ver, ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %inst = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 3, i32 1
  %call3 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %subdev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %ver, ptr noundef %inst) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 3, i32 2
  %call6 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %subdev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef %ver, ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %firmware = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 4
  %2 = ptrtoint ptr %firmware to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %firmware, align 4
  %call10 = tail call i32 @gk20a_gr_load_sw(ptr noundef %gr, ptr noundef nonnull @.str.1, i32 noundef %ver) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call, %entry.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_nofw(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_lsfw_load_bl_inst_data_sig(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_firmware_load_blob(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_gr_load_sw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_oneinit_tiles(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_gr_oneinit_sm_id(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_gr_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm20b_gr_init_gpc_mmu(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %acr = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %acr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1051876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #4, !srcloc !32
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 1051876
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.not = icmp eq i32 %8, -1
  br i1 %cmp.not, label %do.body.if.end14_crit_edge, label %do.body5

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.body5:                                         ; preds = %do.body
  %debug = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp6 = icmp ugt i32 %10, 1
  br i1 %cmp6, label %do.end10, label %do.body5.if.end14_crit_edge

do.body5.if.end14_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.end10:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %12, ptr noundef nonnull @.str.5) #7
  br label %if.end14

if.end14:                                         ; preds = %do.end10, %do.body5.if.end14_crit_edge, %do.body.if.end14_crit_edge, %entry.if.end14_crit_edge
  %pri16 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %pri16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri16, align 4
  %add.ptr17 = getelementptr i8, ptr %14, i32 1051776
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %and = and i32 %15, -268429185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %pri16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri16, align 4
  %add.ptr24 = getelementptr i8, ptr %17, i32 4294784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %and) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %pri16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri16, align 4
  %add.ptr29 = getelementptr i8, ptr %19, i32 4294800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %pri16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri16, align 4
  %add.ptr34 = getelementptr i8, ptr %21, i32 4294804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %pri16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri16, align 4
  %add.ptr40 = getelementptr i8, ptr %23, i32 1051844
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  %25 = ptrtoint ptr %pri16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri16, align 4
  %add.ptr44 = getelementptr i8, ptr %26, i32 4294832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %24) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %27 = ptrtoint ptr %pri16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri16, align 4
  %add.ptr50 = getelementptr i8, ptr %28, i32 1051848
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  %30 = ptrtoint ptr %pri16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri16, align 4
  %add.ptr54 = getelementptr i8, ptr %31, i32 4294836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %29) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %32 = ptrtoint ptr %pri16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri16, align 4
  %add.ptr60 = getelementptr i8, ptr %33, i32 1051852
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  %35 = ptrtoint ptr %pri16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri16, align 4
  %add.ptr64 = getelementptr i8, ptr %36, i32 4294840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %34) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %37 = ptrtoint ptr %pri16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri16, align 4
  %add.ptr70 = getelementptr i8, ptr %38, i32 1050624
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %40 = ptrtoint ptr %pri16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri16, align 4
  %add.ptr74 = getelementptr i8, ptr %41, i32 4294828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %39) #4, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_gr_init_zcull(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_rop_active_fbps(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm20b_gr_set_hww_esr_report_mask(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4300356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 14680062) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 4300364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 5) #4, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_rops(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @gm20b_gr_fecs_acr, !1, !"gm20b_gr_fecs_acr", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm20b.c", i32 74, i32 1}
!2 = !{ptr @gm20b_gr_fwif, !3, !"gm20b_gr_fwif", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm20b.c", i32 177, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm20b.c", i32 147, i32 9}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm20b.c", i32 152, i32 38}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm20b.c", i32 152, i32 45}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm20b.c", i32 154, i32 45}
!12 = !{ptr @gm20b_gr, !13, !"gm20b_gr", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm20b.c", i32 117, i32 1}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/gm20b.c", i32 91, i32 4}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gm20b_gr_init_gpc_mmu._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @gm20b_gr_init_gpc_mmu._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2156315495}
!32 = !{i64 5407286}
!33 = !{i64 5407704}
!34 = !{i64 2156315951}
!35 = !{i64 2156318788}
!36 = !{i64 2156319116}
!37 = !{i64 2156319504}
!38 = !{i64 2156319890}
!39 = !{i64 2156321067}
!40 = !{i64 2156321320}
!41 = !{i64 2156322447}
!42 = !{i64 2156322700}
!43 = !{i64 2156323827}
!44 = !{i64 2156324080}
!45 = !{i64 2156325207}
!46 = !{i64 2156325460}
!47 = !{i64 2156325810}
!48 = !{i64 2156326207}
