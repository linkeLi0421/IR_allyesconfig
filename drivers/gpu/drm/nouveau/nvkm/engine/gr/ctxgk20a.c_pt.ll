; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk20a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk20a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gk20a_grctx = dso_local constant { %struct.gf100_grctx_func, [36 x i8] } { %struct.gf100_grctx_func { ptr null, ptr @gk20a_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gk104_grctx_generate_bundle, i32 6144, i32 98, i32 256, ptr @gk104_grctx_generate_pagepool, i32 32768, ptr @gf117_grctx_generate_attrib, i32 576, i32 576, i32 2412, i32 1608, i32 0, ptr null, ptr @gf100_grctx_generate_sm_id, ptr @gf100_grctx_generate_tpc_nr, i8 0, ptr null, ptr @gf117_grctx_generate_rop_mapping, ptr @gk104_grctx_generate_alpha_beta_tables, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"gk20a_grctx\00", align 1
@___asan_gen_.2 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk20a.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 68, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @gk20a_grctx], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_grctx to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gk20a_grctx_generate_main(ptr noundef %gr, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %2 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gr, align 4
  %grctx2 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %grctx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grctx2, align 4
  %sw_ctx = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 6
  %6 = ptrtoint ptr %sw_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw_ctx, align 4
  tail call void @gf100_gr_mmio(ptr noundef %gr, ptr noundef %7) #2
  %call = tail call i32 @gf100_gr_wait_idle(ptr noundef %gr) #2
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 4211028
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 4211028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #2, !srcloc !14
  %attrib = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 18
  %13 = ptrtoint ptr %attrib to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attrib, align 4
  tail call void %14(ptr noundef %info) #2
  %unkn = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %unkn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unkn, align 4
  tail call void %16(ptr noundef %gr) #2
  tail call void @gf100_grctx_generate_floorsweep(ptr noundef %gr) #2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %18, i32 4220112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr11.1 = getelementptr i8, ptr %20, i32 4220116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.1, i32 0) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr11.2 = getelementptr i8, ptr %22, i32 4220120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.2, i32 0) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr11.3 = getelementptr i8, ptr %24, i32 4220124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.3, i32 0) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr11.4 = getelementptr i8, ptr %26, i32 4220128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.4, i32 0) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr11.5 = getelementptr i8, ptr %28, i32 4220132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.5, i32 0) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr11.6 = getelementptr i8, ptr %30, i32 4220136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.6, i32 0) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr11.7 = getelementptr i8, ptr %32, i32 4220140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.7, i32 0) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  tail call void @arm_heavy_mb() #2
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 16
  %33 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tpc_total, align 1
  %conv = zext i8 %34 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %35 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %gpc_nr, align 1
  %conv15 = zext i8 %36 to i32
  %or16 = or i32 %shl, %conv15
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %38, i32 4217600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %or16) #2, !srcloc !14
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr24 = getelementptr i8, ptr %40, i32 5260464
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #2, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !18
  tail call void @arm_heavy_mb() #2
  %or31 = or i32 %41, 134217728
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %43, i32 5260464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %or31) #2, !srcloc !14
  %call35 = tail call i32 @gf100_gr_wait_idle(ptr noundef %gr) #2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !19
  tail call void @arm_heavy_mb() #2
  %44 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri, align 4
  %add.ptr40 = getelementptr i8, ptr %45, i32 4211028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %10) #2, !srcloc !14
  %call41 = tail call i32 @gf100_gr_wait_idle(ptr noundef %gr) #2
  %method = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 8
  %46 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %method, align 4
  tail call void @gf100_gr_mthd(ptr noundef %gr, ptr noundef %47) #2
  %call42 = tail call i32 @gf100_gr_wait_idle(ptr noundef %gr) #2
  %bundle = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 7
  %48 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bundle, align 4
  tail call void @gf100_gr_icmd(ptr noundef %gr, ptr noundef %49) #2
  %pagepool = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 16
  %50 = ptrtoint ptr %pagepool to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pagepool, align 4
  tail call void %51(ptr noundef %info) #2
  %bundle43 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 12
  %52 = ptrtoint ptr %bundle43 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bundle43, align 4
  tail call void %53(ptr noundef %info) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_bundle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_pagepool(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_attrib(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_tpc_nr(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_rop_mapping(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_alpha_beta_tables(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_wait_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_floorsweep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_mthd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_icmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @gk20a_grctx, !1, !"gk20a_grctx", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgk20a.c", i32 68, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 5415488}
!12 = !{i64 2156282808}
!13 = !{i64 2156283210}
!14 = !{i64 5415070}
!15 = !{i64 2156283681}
!16 = !{i64 2156284140}
!17 = !{i64 2156285004}
!18 = !{i64 2156285406}
!19 = !{i64 2156285855}
