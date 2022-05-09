; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgp100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgp100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@gp100_grctx = dso_local constant { %struct.gf100_grctx_func, [36 x i8] } { %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm107_grctx_generate_bundle, i32 12288, i32 384, i32 4224, ptr @gp100_grctx_generate_pagepool, i32 131072, ptr @gp100_grctx_generate_attrib, i32 1632, i32 1088, i32 3072, i32 2048, i32 0, ptr null, ptr @gm107_grctx_generate_sm_id, ptr null, i8 0, ptr null, ptr @gf117_grctx_generate_rop_mapping, ptr null, ptr null, ptr @gm200_grctx_generate_dist_skip_table, ptr @gm200_grctx_generate_r406500, ptr @gk104_grctx_generate_gpc_tpc_nr, ptr null, ptr @gm200_grctx_generate_tpc_mask, ptr @gp100_grctx_generate_smid_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm200_grctx_generate_r419a3c, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"gp100_grctx\00", align 1
@___asan_gen_.2 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgp100.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 117, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @gp100_grctx], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp100_grctx to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gp100_grctx_generate_pagepool(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call = tail call i32 @gf100_grctx_mmio_data(ptr noundef %info, i32 noundef %7, i32 noundef 256, i1 noundef zeroext true) #4
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4227084, i32 noundef 0, i32 noundef 8, i32 noundef %call) #4
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4227088, i32 noundef -2146969600, i32 noundef 0, i32 noundef -1) #4
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4296708, i32 noundef 0, i32 noundef 8, i32 noundef %call) #4
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4296712, i32 noundef 0, i32 noundef 0, i32 noundef -1) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_grctx_mmio_data(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_mmio_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gp100_grctx_generate_smid_config(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  %dist = alloca [64 x i32], align 4
  %gpcs = alloca [16 x i32], align 4
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
  %div84 = lshr i32 %sub, 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %dist) #4
  %4 = call ptr @memset(ptr %dist, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %gpcs) #4
  %5 = call ptr @memset(ptr %gpcs, i32 0, i32 64)
  %sm_nr = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 26
  %6 = ptrtoint ptr %sm_nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sm_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp87.not = icmp eq i8 %7, 0
  br i1 %cmp87.not, label %entry.for.cond31.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond31.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond31.preheader

for.body.lr.ph:                                   ; preds = %entry
  %8 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gr, align 4
  %gpc_nr = getelementptr inbounds %struct.gf100_gr_func, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpc_nr, align 4
  %wide.trip.count = zext i8 %7 to i32
  br label %for.body

for.cond31.preheader:                             ; preds = %for.body.for.cond31.preheader_crit_edge, %entry.for.cond31.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3389.not = icmp eq i8 %3, 0
  br i1 %cmp3389.not, label %for.cond31.preheader.for.cond44.preheader_crit_edge, label %do.body.lr.ph

for.cond31.preheader.for.cond44.preheader_crit_edge: ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond44.preheader

do.body.lr.ph:                                    ; preds = %for.cond31.preheader
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %umax = call i32 @llvm.umax.i32(i32 %div84, i32 1)
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 25, i32 %indvars.iv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %tpc10 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 25, i32 %indvars.iv, i32 1
  %14 = ptrtoint ptr %tpc10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tpc10, align 1
  %conv11 = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv11, 4
  %conv12 = zext i8 %15 to i32
  %or = or i32 %shl, %conv12
  %rem = shl nuw nsw i32 %indvars.iv, 3
  %mul = and i32 %rem, 24
  %shl14 = shl i32 %or, %mul
  %div1685 = lshr i32 %indvars.iv, 2
  %arrayidx17 = getelementptr [64 x i32], ptr %dist, i32 0, i32 %div1685
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17, align 4
  %or18 = or i32 %shl14, %17
  store i32 %or18, ptr %arrayidx17, align 4
  %rem21 = shl nuw nsw i32 %conv12, 3
  %mul22 = and i32 %rem21, 24
  %shl23 = shl nuw i32 %indvars.iv, %mul22
  %div2686 = lshr i32 %conv12, 2
  %mul27 = mul i32 %11, %div2686
  %add28 = add i32 %mul27, %conv11
  %arrayidx29 = getelementptr [16 x i32], ptr %gpcs, i32 0, i32 %add28
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx29, align 4
  %or30 = or i32 %19, %shl23
  store i32 %or30, ptr %arrayidx29, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.cond31.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.cond31.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond31.preheader

for.cond44.preheader:                             ; preds = %do.body.for.cond44.preheader_crit_edge, %for.cond31.preheader.for.cond44.preheader_crit_edge
  %pri54 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %do.body49

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %indvars.iv93 = phi i32 [ 0, %do.body.lr.ph ], [ %indvars.iv.next94, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %arrayidx37 = getelementptr [64 x i32], ptr %dist, i32 0, i32 %indvars.iv93
  %20 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx37, align 4
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %mul39 = shl nuw nsw i32 %indvars.iv93, 2
  %add40 = add nuw nsw i32 %mul39, 4217696
  %add.ptr = getelementptr i8, ptr %23, i32 %add40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #4, !srcloc !12
  %indvars.iv.next94 = add nuw nsw i32 %indvars.iv93, 1
  %exitcond95.not = icmp eq i32 %indvars.iv.next94, %umax
  br i1 %exitcond95.not, label %do.body.for.cond44.preheader_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body.for.cond44.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond44.preheader

do.body49:                                        ; preds = %do.body49.do.body49_crit_edge, %for.cond44.preheader
  %indvars.iv96 = phi i32 [ 0, %for.cond44.preheader ], [ %indvars.iv.next97, %do.body49.do.body49_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %arrayidx53 = getelementptr [16 x i32], ptr %gpcs, i32 0, i32 %indvars.iv96
  %24 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx53, align 4
  %26 = ptrtoint ptr %pri54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri54, align 4
  %mul56 = shl nuw nsw i32 %indvars.iv96, 2
  %add57 = add nuw nsw i32 %mul56, 4217760
  %add.ptr58 = getelementptr i8, ptr %27, i32 %add57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %25) #4, !srcloc !12
  %indvars.iv.next97 = add nuw nsw i32 %indvars.iv96, 1
  %exitcond98.not = icmp eq i32 %indvars.iv.next97, 16
  br i1 %exitcond98.not, label %for.end61, label %do.body49.do.body49_crit_edge

do.body49.do.body49_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body49

for.end61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %gpcs) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %dist) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_bundle(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_grctx_generate_attrib(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %alpha_nr_max = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 21
  %10 = ptrtoint ptr %alpha_nr_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alpha_nr_max, align 4
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tpc_total, align 1
  %conv = zext i8 %13 to i32
  %mul = mul i32 %11, %conv
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gpc_nr, align 1
  %conv3 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp139.not = icmp eq i8 %15, 0
  br i1 %cmp139.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %attrib_nr_max = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 19
  %16 = ptrtoint ptr %attrib_nr_max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attrib_nr_max, align 4
  %ppc_tpc_max = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 22
  %18 = ptrtoint ptr %ppc_tpc_max to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ppc_tpc_max, align 1
  %conv7 = zext i8 %19 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %gpc.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %size.0140 = phi i32 [ %mul, %for.body.lr.ph ], [ %add9, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 17, i32 %gpc.0141
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %21 to i32
  %mul6 = mul i32 %17, %conv5
  %mul8 = mul i32 %mul6, %conv7
  %add9 = add i32 %mul8, %size.0140
  %inc = add nuw nsw i32 %gpc.0141, 1
  %exitcond.not = icmp eq i32 %inc, %conv3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %size.0.lcssa = phi i32 [ %mul, %entry.for.end_crit_edge ], [ %add9, %for.body.for.end_crit_edge ]
  %mul10 = shl i32 %size.0.lcssa, 5
  %add11 = add i32 %mul10, 128
  %and = and i32 %add11, -128
  %call = tail call i32 @gf100_grctx_mmio_data(ptr noundef %info, i32 noundef %and, i32 noundef 4096, i1 noundef zeroext false) #4
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4294672, i32 noundef -2147483648, i32 noundef 12, i32 noundef %call) #4
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4298824, i32 noundef 268435456, i32 noundef 12, i32 noundef %call) #4
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4299820, i32 noundef 268435456, i32 noundef 12, i32 noundef %call) #4
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4299520, i32 noundef 0, i32 noundef 12, i32 noundef %call) #4
  %shr = lshr i32 %add11, 7
  %or = or i32 %shr, -2147483648
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4299524, i32 noundef %or, i32 noundef 0, i32 noundef -1) #4
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4216880, i32 noundef %9, i32 noundef 0, i32 noundef -1) #4
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4216924, i32 noundef %7, i32 noundef 0, i32 noundef -1) #4
  %22 = shl i32 %7, 14
  %or12 = or i32 %22, 65535
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4220100, i32 noundef %or12, i32 noundef 0, i32 noundef -1) #4
  %23 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp16154.not = icmp eq i8 %24, 0
  br i1 %cmp16154.not, label %for.end.for.end70_crit_edge, label %for.cond19.preheader.lr.ph

for.end.for.end70_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end70

for.cond19.preheader.lr.ph:                       ; preds = %for.end
  %ppc_tpc_max30 = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 22
  %attrib_nr_max47 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 19
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.inc68.for.cond19.preheader_crit_edge, %for.cond19.preheader.lr.ph
  %n.0159 = phi i32 [ 0, %for.cond19.preheader.lr.ph ], [ %n.1.lcssa, %for.inc68.for.cond19.preheader_crit_edge ]
  %gpc.1157 = phi i32 [ 0, %for.cond19.preheader.lr.ph ], [ %inc69, %for.inc68.for.cond19.preheader_crit_edge ]
  %bo.0156 = phi i32 [ %mul, %for.cond19.preheader.lr.ph ], [ %bo.1.lcssa, %for.inc68.for.cond19.preheader_crit_edge ]
  %ao.0155 = phi i32 [ 0, %for.cond19.preheader.lr.ph ], [ %ao.1.lcssa, %for.inc68.for.cond19.preheader_crit_edge ]
  %arrayidx21 = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 17, i32 %gpc.1157
  %25 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp23143.not = icmp eq i8 %26, 0
  br i1 %cmp23143.not, label %for.cond19.preheader.for.inc68_crit_edge, label %for.body25.lr.ph

for.cond19.preheader.for.inc68_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc68

for.body25.lr.ph:                                 ; preds = %for.cond19.preheader
  %arrayidx40 = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 18, i32 %gpc.1157
  %mul35 = shl i32 %gpc.1157, 15
  %add36 = add nuw nsw i32 %mul35, 5255168
  br label %for.body25

for.body25:                                       ; preds = %cleanup.for.body25_crit_edge, %for.body25.lr.ph
  %n.1148 = phi i32 [ %n.0159, %for.body25.lr.ph ], [ %inc66, %cleanup.for.body25_crit_edge ]
  %ppc.0146 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc65, %cleanup.for.body25_crit_edge ]
  %bo.1145 = phi i32 [ %bo.0156, %for.body25.lr.ph ], [ %bo.2, %cleanup.for.body25_crit_edge ]
  %ao.1144 = phi i32 [ %ao.0155, %for.body25.lr.ph ], [ %ao.2, %cleanup.for.body25_crit_edge ]
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %28 to i32
  %shl42 = shl nuw i32 1, %ppc.0146
  %and43 = and i32 %shl42, %conv41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool.not = icmp eq i32 %and43, 0
  br i1 %tobool.not, label %for.body25.cleanup_crit_edge, label %if.end

for.body25.cleanup_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #6
  %mul37 = shl i32 %ppc.0146, 9
  %add38 = add nuw nsw i32 %add36, %mul37
  %mul33 = shl i32 %n.1148, 2
  %add34 = add i32 %mul33, 4296352
  %29 = ptrtoint ptr %ppc_tpc_max30 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ppc_tpc_max30, align 1
  %conv31 = zext i8 %30 to i32
  %mul32 = mul i32 %9, %conv31
  %arrayidx27 = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 20, i32 %gpc.1157, i32 %ppc.0146
  %31 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %32 to i32
  %mul29 = mul i32 %7, %conv28
  %add44 = or i32 %add38, 192
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add44, i32 noundef %mul32, i32 noundef 0, i32 noundef -1) #4
  %add45 = or i32 %add38, 244
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add45, i32 noundef %bo.1145, i32 noundef 0, i32 noundef -1) #4
  %add46 = or i32 %add38, 240
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add46, i32 noundef %mul32, i32 noundef 0, i32 noundef -1) #4
  %33 = ptrtoint ptr %attrib_nr_max47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %attrib_nr_max47, align 4
  %35 = ptrtoint ptr %ppc_tpc_max30 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ppc_tpc_max30, align 1
  %conv49 = zext i8 %36 to i32
  %mul50 = mul i32 %34, %conv49
  %add51 = add i32 %mul50, %bo.1145
  %add52 = or i32 %add38, 228
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add52, i32 noundef %mul29, i32 noundef 0, i32 noundef -1) #4
  %add53 = or i32 %add38, 248
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add53, i32 noundef %ao.1144, i32 noundef 0, i32 noundef -1) #4
  %37 = ptrtoint ptr %alpha_nr_max to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %alpha_nr_max, align 4
  %39 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx27, align 1
  %conv58 = zext i8 %40 to i32
  %mul59 = mul i32 %38, %conv58
  %add60 = add i32 %mul59, %ao.1144
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add34, i32 noundef %mul32, i32 noundef 0, i32 noundef -1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body25.cleanup_crit_edge
  %ao.2 = phi i32 [ %add60, %if.end ], [ %ao.1144, %for.body25.cleanup_crit_edge ]
  %bo.2 = phi i32 [ %add51, %if.end ], [ %bo.1145, %for.body25.cleanup_crit_edge ]
  %inc65 = add nuw nsw i32 %ppc.0146, 1
  %inc66 = add i32 %n.1148, 1
  %41 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %42 to i32
  %cmp23 = icmp ult i32 %inc65, %conv22
  br i1 %cmp23, label %cleanup.for.body25_crit_edge, label %cleanup.for.inc68_crit_edge

cleanup.for.inc68_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc68

cleanup.for.body25_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body25

for.inc68:                                        ; preds = %cleanup.for.inc68_crit_edge, %for.cond19.preheader.for.inc68_crit_edge
  %ao.1.lcssa = phi i32 [ %ao.0155, %for.cond19.preheader.for.inc68_crit_edge ], [ %ao.2, %cleanup.for.inc68_crit_edge ]
  %bo.1.lcssa = phi i32 [ %bo.0156, %for.cond19.preheader.for.inc68_crit_edge ], [ %bo.2, %cleanup.for.inc68_crit_edge ]
  %n.1.lcssa = phi i32 [ %n.0159, %for.cond19.preheader.for.inc68_crit_edge ], [ %inc66, %cleanup.for.inc68_crit_edge ]
  %inc69 = add nuw nsw i32 %gpc.1157, 1
  %43 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %gpc_nr, align 1
  %conv15 = zext i8 %44 to i32
  %cmp16 = icmp ult i32 %inc69, %conv15
  br i1 %cmp16, label %for.inc68.for.cond19.preheader_crit_edge, label %for.inc68.for.end70_crit_edge

for.inc68.for.end70_crit_edge:                    ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end70

for.inc68.for.cond19.preheader_crit_edge:         ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond19.preheader

for.end70:                                        ; preds = %for.inc68.for.end70_crit_edge, %for.end.for.end70_crit_edge
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4296428, i32 noundef 0, i32 noundef 0, i32 noundef -1) #4
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4308732, i32 noundef 0, i32 noundef 0, i32 noundef -1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_rop_mapping(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_dist_skip_table(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_r406500(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_tpc_mask(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_r419a3c(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

!0 = !{ptr @gp100_grctx, !1, !"gp100_grctx", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgp100.c", i32 117, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2156296459}
!12 = !{i64 5417259}
!13 = !{i64 2156297197}
