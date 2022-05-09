; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm200.c"
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@gm200_grctx = dso_local constant { %struct.gf100_grctx_func, [36 x i8] } { %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm107_grctx_generate_bundle, i32 12288, i32 384, i32 1920, ptr @gm107_grctx_generate_pagepool, i32 131072, ptr @gm107_grctx_generate_attrib, i32 1536, i32 1024, i32 6144, i32 4096, i32 0, ptr null, ptr @gm107_grctx_generate_sm_id, ptr null, i8 0, ptr null, ptr @gf117_grctx_generate_rop_mapping, ptr null, ptr null, ptr @gm200_grctx_generate_dist_skip_table, ptr @gm200_grctx_generate_r406500, ptr @gk104_grctx_generate_gpc_tpc_nr, ptr null, ptr @gm200_grctx_generate_tpc_mask, ptr @gm200_grctx_generate_smid_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm200_grctx_generate_r418e94, ptr @gm200_grctx_generate_r419a3c, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"gm200_grctx\00", align 1
@___asan_gen_.2 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm200.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 105, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @gm200_grctx], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_grctx to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_grctx_generate_r419a3c(ptr nocapture noundef readonly %gr) #0 align 64 {
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
  %add.ptr = getelementptr i8, ptr %3, i32 4299324
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %and = and i32 %4, -21
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4299324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #4, !srcloc !14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_grctx_generate_smid_config(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  %dist = alloca [64 x i32], align 4
  %gpcs = alloca [32 x i32], align 4
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
  %sub = add nuw nsw i32 %conv, 3
  %div79 = lshr i32 %sub, 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %dist) #4
  %4 = call ptr @memset(ptr %dist, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %gpcs) #4
  %5 = call ptr @memset(ptr %gpcs, i32 0, i32 128)
  %sm_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 26
  %6 = ptrtoint ptr %sm_nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sm_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp81.not = icmp eq i8 %7, 0
  br i1 %cmp81.not, label %entry.for.cond26.preheader_crit_edge, label %for.body.preheader

entry.for.cond26.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond26.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i8 %7 to i32
  br label %for.body

for.cond26.preheader:                             ; preds = %for.body.for.cond26.preheader_crit_edge, %entry.for.cond26.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2883.not = icmp eq i8 %3, 0
  br i1 %cmp2883.not, label %for.cond26.preheader.for.cond39.preheader_crit_edge, label %do.body.lr.ph

for.cond26.preheader.for.cond39.preheader_crit_edge: ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond39.preheader

do.body.lr.ph:                                    ; preds = %for.cond26.preheader
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %umax = call i32 @llvm.umax.i32(i32 %div79, i32 1)
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 25, i32 %indvars.iv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %tpc10 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 25, i32 %indvars.iv, i32 1
  %10 = ptrtoint ptr %tpc10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tpc10, align 1
  %conv11 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv11, 4
  %conv12 = zext i8 %11 to i32
  %or = or i32 %shl, %conv12
  %rem = shl nuw nsw i32 %indvars.iv, 3
  %mul = and i32 %rem, 24
  %shl14 = shl i32 %or, %mul
  %div1680 = lshr i32 %indvars.iv, 2
  %arrayidx17 = getelementptr [64 x i32], ptr %dist, i32 0, i32 %div1680
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx17, align 4
  %or18 = or i32 %shl14, %13
  store i32 %or18, ptr %arrayidx17, align 4
  %mul21 = shl nuw nsw i32 %conv12, 3
  %shl22 = shl i32 %indvars.iv, %mul21
  %arrayidx24 = getelementptr [32 x i32], ptr %gpcs, i32 0, i32 %conv11
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx24, align 4
  %or25 = or i32 %15, %shl22
  store i32 %or25, ptr %arrayidx24, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.cond26.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.cond26.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond26.preheader

for.cond39.preheader:                             ; preds = %do.body.for.cond39.preheader_crit_edge, %for.cond26.preheader.for.cond39.preheader_crit_edge
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %16 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp4286.not = icmp eq i8 %17, 0
  br i1 %cmp4286.not, label %for.cond39.preheader.for.end57_crit_edge, label %do.body45.lr.ph

for.cond39.preheader.for.end57_crit_edge:         ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end57

do.body45.lr.ph:                                  ; preds = %for.cond39.preheader
  %pri50 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %do.body45

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %indvars.iv88 = phi i32 [ 0, %do.body.lr.ph ], [ %indvars.iv.next89, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %arrayidx32 = getelementptr [64 x i32], ptr %dist, i32 0, i32 %indvars.iv88
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx32, align 4
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %mul34 = shl nuw nsw i32 %indvars.iv88, 2
  %add35 = add nuw nsw i32 %mul34, 4217696
  %add.ptr = getelementptr i8, ptr %21, i32 %add35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #4, !srcloc !14
  %indvars.iv.next89 = add nuw nsw i32 %indvars.iv88, 1
  %exitcond90.not = icmp eq i32 %indvars.iv.next89, %umax
  br i1 %exitcond90.not, label %do.body.for.cond39.preheader_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body.for.cond39.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond39.preheader

do.body45:                                        ; preds = %do.body45.do.body45_crit_edge, %do.body45.lr.ph
  %indvars.iv91 = phi i32 [ 0, %do.body45.lr.ph ], [ %indvars.iv.next92, %do.body45.do.body45_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %arrayidx49 = getelementptr [32 x i32], ptr %gpcs, i32 0, i32 %indvars.iv91
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx49, align 4
  %24 = ptrtoint ptr %pri50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri50, align 4
  %mul52 = shl nuw nsw i32 %indvars.iv91, 2
  %add53 = add nuw nsw i32 %mul52, 4217760
  %add.ptr54 = getelementptr i8, ptr %25, i32 %add53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %23) #4, !srcloc !14
  %indvars.iv.next92 = add nuw nsw i32 %indvars.iv91, 1
  %26 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %gpc_nr, align 1
  %28 = zext i8 %27 to i32
  %cmp42 = icmp ult i32 %indvars.iv.next92, %28
  br i1 %cmp42, label %do.body45.do.body45_crit_edge, label %do.body45.for.end57_crit_edge

do.body45.for.end57_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end57

do.body45.do.body45_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body45

for.end57:                                        ; preds = %do.body45.for.end57_crit_edge, %for.cond39.preheader.for.end57_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %gpcs) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %dist) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_grctx_generate_tpc_mask(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %0 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpc_nr, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp12.not = icmp eq i8 %1, 0
  br i1 %cmp12.not, label %entry.do.body_crit_edge, label %for.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gr, align 4
  %tpc_nr3 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %tpc_nr3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tpc_nr3, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %tmp.013 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 14, i32 %i.014
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %7 to i32
  %notmask = shl nsw i32 -1, %conv2
  %sub = xor i32 %notmask, -1
  %mul = mul i32 %5, %i.014
  %shl4 = shl i32 %sub, %mul
  %or = or i32 %shl4, %tmp.013
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.do.body_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %tmp.0.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ %or, %for.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 4211140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %tmp.0.lcssa) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_grctx_generate_r406500(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %device = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4220160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_grctx_generate_dist_skip_table(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  %data = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data) #4
  %2 = call ptr @memset(ptr %data, i32 0, i32 32)
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 13
  %3 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %gpc_nr, align 1
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp70.not = icmp eq i8 %4, 0
  br i1 %cmp70.not, label %entry.for.cond32.preheader_crit_edge, label %for.cond3.preheader.lr.ph

entry.for.cond32.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond32.preheader

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %ppc_tpc_min = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 21
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc29.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %gpc.071 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %inc30, %for.inc29.for.cond3.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 17, i32 %gpc.071
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp567.not = icmp eq i8 %6, 0
  br i1 %cmp567.not, label %for.cond3.preheader.for.inc29_crit_edge, label %for.body7.lr.ph

for.cond3.preheader.for.inc29_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc29

for.body7.lr.ph:                                  ; preds = %for.cond3.preheader
  %7 = ptrtoint ptr %ppc_tpc_min to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ppc_tpc_min, align 4
  %arrayidx26 = getelementptr i8, ptr %data, i32 %gpc.071
  %9 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %9)
  %arrayidx26.promoted = load i8, ptr %arrayidx26, align 1
  br label %for.body7

for.cond32.preheader:                             ; preds = %for.inc29.for.cond32.preheader_crit_edge, %entry.for.cond32.preheader_crit_edge
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 4220112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %arrayidx36.1 = getelementptr inbounds [8 x i32], ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx36.1, align 4
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr.1 = getelementptr i8, ptr %17, i32 4220116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 %15) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %arrayidx36.2 = getelementptr inbounds [8 x i32], ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx36.2, align 4
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr.2 = getelementptr i8, ptr %21, i32 4220120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 %19) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %arrayidx36.3 = getelementptr inbounds [8 x i32], ptr %data, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx36.3, align 4
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr.3 = getelementptr i8, ptr %25, i32 4220124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3, i32 %23) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %arrayidx36.4 = getelementptr inbounds [8 x i32], ptr %data, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx36.4, align 4
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add.ptr.4 = getelementptr i8, ptr %29, i32 4220128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4, i32 %27) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %arrayidx36.5 = getelementptr inbounds [8 x i32], ptr %data, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx36.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx36.5, align 4
  %32 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri, align 4
  %add.ptr.5 = getelementptr i8, ptr %33, i32 4220132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5, i32 %31) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %arrayidx36.6 = getelementptr inbounds [8 x i32], ptr %data, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx36.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx36.6, align 4
  %36 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri, align 4
  %add.ptr.6 = getelementptr i8, ptr %37, i32 4220136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6, i32 %35) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %arrayidx36.7 = getelementptr inbounds [8 x i32], ptr %data, i32 0, i32 7
  %38 = ptrtoint ptr %arrayidx36.7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx36.7, align 4
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr.7 = getelementptr i8, ptr %41, i32 4220140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.7, i32 %39) #4, !srcloc !14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data) #4
  ret void

for.body7:                                        ; preds = %while.end.for.body7_crit_edge, %for.body7.lr.ph
  %or6369 = phi i8 [ %arrayidx26.promoted, %for.body7.lr.ph ], [ %or63, %while.end.for.body7_crit_edge ]
  %ppc.068 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc, %while.end.for.body7_crit_edge ]
  %arrayidx9 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 20, i32 %gpc.071, i32 %ppc.068
  %42 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx9, align 1
  %arrayidx11 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 19, i32 %gpc.071, i32 %ppc.068
  %44 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %8)
  %cmp1464 = icmp ugt i8 %43, %8
  br i1 %cmp1464, label %for.body7.while.body_crit_edge, label %for.body7.while.end_crit_edge

for.body7.while.end_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

for.body7.while.body_crit_edge:                   ; preds = %for.body7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body7.while.body_crit_edge
  %ppc_tpcm.066 = phi i8 [ %47, %while.body.while.body_crit_edge ], [ %45, %for.body7.while.body_crit_edge ]
  %ppc_tpcs.065 = phi i8 [ %dec, %while.body.while.body_crit_edge ], [ %43, %for.body7.while.body_crit_edge ]
  %dec = add i8 %ppc_tpcs.065, -1
  %46 = add i8 %ppc_tpcm.066, -1
  %47 = and i8 %46, %ppc_tpcm.066
  %cmp14 = icmp ugt i8 %dec, %8
  br i1 %cmp14, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body7.while.end_crit_edge
  %ppc_tpcm.0.lcssa = phi i8 [ %45, %for.body7.while.end_crit_edge ], [ %47, %while.body.while.end_crit_edge ]
  %xor62 = xor i8 %ppc_tpcm.0.lcssa, %45
  %or63 = or i8 %or6369, %xor62
  %inc = add nuw nsw i32 %ppc.068, 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %for.cond3.for.inc29_crit_edge, label %while.end.for.body7_crit_edge

while.end.for.body7_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7

for.cond3.for.inc29_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %or63, ptr %arrayidx26, align 1
  br label %for.inc29

for.inc29:                                        ; preds = %for.cond3.for.inc29_crit_edge, %for.cond3.preheader.for.inc29_crit_edge
  %inc30 = add nuw nsw i32 %gpc.071, 1
  %exitcond74.not = icmp eq i32 %inc30, %conv
  br i1 %exitcond74.not, label %for.inc29.for.cond32.preheader_crit_edge, label %for.inc29.for.cond3.preheader_crit_edge

for.inc29.for.cond3.preheader_crit_edge:          ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond3.preheader

for.inc29.for.cond32.preheader_crit_edge:         ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond32.preheader
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_bundle(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_pagepool(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_attrib(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_rop_mapping(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm200_grctx_generate_r418e94(ptr nocapture noundef readonly %gr) #0 align 64 {
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
  %add.ptr = getelementptr i8, ptr %3, i32 4296340
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4296340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -1004339200) #4, !srcloc !14
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 4296268
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 4296268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 1879048192) #4, !srcloc !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @gm200_grctx, !1, !"gm200_grctx", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm200.c", i32 105, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 5416960}
!12 = !{i64 2156282137}
!13 = !{i64 2156282539}
!14 = !{i64 5416542}
!15 = !{i64 2156285648}
!16 = !{i64 2156286072}
!17 = !{i64 2156286514}
!18 = !{i64 2156286966}
!19 = !{i64 2156287713}
!20 = !{i64 2156283412}
!21 = !{i64 2156283814}
!22 = !{i64 2156284687}
!23 = !{i64 2156285089}
