; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgp102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgp102.c"
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

@gp102_grctx = dso_local constant { %struct.gf100_grctx_func, [36 x i8] } { %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm107_grctx_generate_bundle, i32 12288, i32 384, i32 2304, ptr @gp100_grctx_generate_pagepool, i32 131072, ptr @gp102_grctx_generate_attrib, i32 1200, i32 800, i32 3072, i32 2048, i32 2984, ptr null, ptr @gm107_grctx_generate_sm_id, ptr null, i8 0, ptr null, ptr @gf117_grctx_generate_rop_mapping, ptr null, ptr null, ptr @gm200_grctx_generate_dist_skip_table, ptr @gm200_grctx_generate_r406500, ptr @gk104_grctx_generate_gpc_tpc_nr, ptr null, ptr @gm200_grctx_generate_tpc_mask, ptr @gp100_grctx_generate_smid_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm200_grctx_generate_r419a3c, ptr @gp102_grctx_generate_r408840, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"gp102_grctx\00", align 1
@___asan_gen_.2 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgp102.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 95, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @gp102_grctx], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp102_grctx to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gp102_grctx_generate_attrib(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
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
  %gfxp_nr = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 23
  %10 = ptrtoint ptr %gfxp_nr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gfxp_nr, align 4
  %alpha_nr_max = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 21
  %12 = ptrtoint ptr %alpha_nr_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %alpha_nr_max, align 4
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tpc_total, align 1
  %conv = zext i8 %15 to i32
  %mul = mul i32 %13, %conv
  %gpc_nr = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %gpc_nr, align 1
  %conv3 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp150.not = icmp eq i8 %17, 0
  br i1 %cmp150.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ppc_tpc_max = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 22
  %18 = ptrtoint ptr %ppc_tpc_max to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ppc_tpc_max, align 1
  %conv8 = zext i8 %19 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %gpc.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %size.0151 = phi i32 [ %mul, %for.body.lr.ph ], [ %add10, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 17, i32 %gpc.0152
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %21 to i32
  %mul7 = mul i32 %11, %conv6
  %mul9 = mul i32 %mul7, %conv8
  %add10 = add i32 %mul9, %size.0151
  %inc = add nuw nsw i32 %gpc.0152, 1
  %exitcond.not = icmp eq i32 %inc, %conv3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %size.0.lcssa = phi i32 [ %mul, %entry.for.end_crit_edge ], [ %add10, %for.body.for.end_crit_edge ]
  %mul11 = shl i32 %size.0.lcssa, 5
  %add12 = add i32 %mul11, 128
  %and = and i32 %add12, -128
  %call = tail call i32 @gf100_grctx_mmio_data(ptr noundef %info, i32 noundef %and, i32 noundef 4096, i1 noundef zeroext false) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4294672, i32 noundef -2147483648, i32 noundef 12, i32 noundef %call) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4298824, i32 noundef 268435456, i32 noundef 12, i32 noundef %call) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4299820, i32 noundef 268435456, i32 noundef 12, i32 noundef %call) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4299520, i32 noundef 0, i32 noundef 12, i32 noundef %call) #2
  %shr = lshr i32 %add12, 7
  %or = or i32 %shr, -2147483648
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4299524, i32 noundef %or, i32 noundef 0, i32 noundef -1) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4216880, i32 noundef %9, i32 noundef 0, i32 noundef -1) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4216924, i32 noundef %7, i32 noundef 0, i32 noundef -1) #2
  %22 = shl i32 %7, 14
  %or13 = or i32 %22, 65535
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4220100, i32 noundef %or13, i32 noundef 0, i32 noundef -1) #2
  %23 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp17165.not = icmp eq i8 %24, 0
  br i1 %cmp17165.not, label %for.end.for.end77_crit_edge, label %for.cond20.preheader.lr.ph

for.end.for.end77_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end77

for.cond20.preheader.lr.ph:                       ; preds = %for.end
  %ppc_tpc_max31 = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 22
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.inc75.for.cond20.preheader_crit_edge, %for.cond20.preheader.lr.ph
  %n.0170 = phi i32 [ 0, %for.cond20.preheader.lr.ph ], [ %n.1.lcssa, %for.inc75.for.cond20.preheader_crit_edge ]
  %gpc.1168 = phi i32 [ 0, %for.cond20.preheader.lr.ph ], [ %inc76, %for.inc75.for.cond20.preheader_crit_edge ]
  %bo.0167 = phi i32 [ %mul, %for.cond20.preheader.lr.ph ], [ %bo.1.lcssa, %for.inc75.for.cond20.preheader_crit_edge ]
  %ao.0166 = phi i32 [ 0, %for.cond20.preheader.lr.ph ], [ %ao.1.lcssa, %for.inc75.for.cond20.preheader_crit_edge ]
  %arrayidx22 = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 17, i32 %gpc.1168
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp24154.not = icmp eq i8 %26, 0
  br i1 %cmp24154.not, label %for.cond20.preheader.for.inc75_crit_edge, label %for.body26.lr.ph

for.cond20.preheader.for.inc75_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc75

for.body26.lr.ph:                                 ; preds = %for.cond20.preheader
  %arrayidx49 = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 18, i32 %gpc.1168
  %mul39 = shl i32 %gpc.1168, 15
  %add47 = add nuw nsw i32 %mul39, 5246020
  %add40 = add nuw nsw i32 %mul39, 5255168
  br label %for.body26

for.body26:                                       ; preds = %cleanup.for.body26_crit_edge, %for.body26.lr.ph
  %n.1159 = phi i32 [ %n.0170, %for.body26.lr.ph ], [ %inc73, %cleanup.for.body26_crit_edge ]
  %ppc.0157 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc72, %cleanup.for.body26_crit_edge ]
  %bo.1156 = phi i32 [ %bo.0167, %for.body26.lr.ph ], [ %bo.2, %cleanup.for.body26_crit_edge ]
  %ao.1155 = phi i32 [ %ao.0166, %for.body26.lr.ph ], [ %ao.2, %cleanup.for.body26_crit_edge ]
  %27 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %28 to i32
  %shl51 = shl nuw i32 1, %ppc.0157
  %and52 = and i32 %shl51, %conv50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool.not = icmp eq i32 %and52, 0
  br i1 %tobool.not, label %for.body26.cleanup_crit_edge, label %if.end

for.body26.cleanup_crit_edge:                     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #4
  %mul46 = shl i32 %ppc.0157, 2
  %add48 = add nuw nsw i32 %add47, %mul46
  %mul41 = shl i32 %ppc.0157, 9
  %add42 = add nuw nsw i32 %add40, %mul41
  %mul37 = shl i32 %n.1159, 2
  %add38 = add i32 %mul37, 4296352
  %29 = ptrtoint ptr %ppc_tpc_max31 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ppc_tpc_max31, align 1
  %conv32 = zext i8 %30 to i32
  %mul36 = mul i32 %11, %conv32
  %mul33 = mul i32 %9, %conv32
  %arrayidx28 = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 20, i32 %gpc.1168, i32 %ppc.0157
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %32 to i32
  %mul30 = mul i32 %7, %conv29
  %add53 = or i32 %add42, 192
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add53, i32 noundef %mul36, i32 noundef 0, i32 noundef -1) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add48, i32 noundef %mul33, i32 noundef 0, i32 noundef -1) #2
  %add54 = or i32 %add42, 244
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add54, i32 noundef %bo.1156, i32 noundef 0, i32 noundef -1) #2
  %add55 = or i32 %add42, 240
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add55, i32 noundef %mul33, i32 noundef 0, i32 noundef -1) #2
  %add56 = add i32 %mul36, %bo.1156
  %add57 = or i32 %add42, 228
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add57, i32 noundef %mul30, i32 noundef 0, i32 noundef -1) #2
  %add58 = or i32 %add42, 248
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add58, i32 noundef %ao.1155, i32 noundef 0, i32 noundef -1) #2
  %33 = ptrtoint ptr %alpha_nr_max to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %alpha_nr_max, align 4
  %35 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx28, align 1
  %conv63 = zext i8 %36 to i32
  %mul64 = mul i32 %34, %conv63
  %add65 = add i32 %mul64, %ao.1155
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add38, i32 noundef %mul33, i32 noundef 0, i32 noundef -1) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body26.cleanup_crit_edge
  %ao.2 = phi i32 [ %add65, %if.end ], [ %ao.1155, %for.body26.cleanup_crit_edge ]
  %bo.2 = phi i32 [ %add56, %if.end ], [ %bo.1156, %for.body26.cleanup_crit_edge ]
  %inc72 = add nuw nsw i32 %ppc.0157, 1
  %inc73 = add i32 %n.1159, 1
  %37 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %38 to i32
  %cmp24 = icmp ult i32 %inc72, %conv23
  br i1 %cmp24, label %cleanup.for.body26_crit_edge, label %cleanup.for.inc75_crit_edge

cleanup.for.inc75_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc75

cleanup.for.body26_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body26

for.inc75:                                        ; preds = %cleanup.for.inc75_crit_edge, %for.cond20.preheader.for.inc75_crit_edge
  %ao.1.lcssa = phi i32 [ %ao.0166, %for.cond20.preheader.for.inc75_crit_edge ], [ %ao.2, %cleanup.for.inc75_crit_edge ]
  %bo.1.lcssa = phi i32 [ %bo.0167, %for.cond20.preheader.for.inc75_crit_edge ], [ %bo.2, %cleanup.for.inc75_crit_edge ]
  %n.1.lcssa = phi i32 [ %n.0170, %for.cond20.preheader.for.inc75_crit_edge ], [ %inc73, %cleanup.for.inc75_crit_edge ]
  %inc76 = add nuw nsw i32 %gpc.1168, 1
  %39 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %gpc_nr, align 1
  %conv16 = zext i8 %40 to i32
  %cmp17 = icmp ult i32 %inc76, %conv16
  br i1 %cmp17, label %for.inc75.for.cond20.preheader_crit_edge, label %for.inc75.for.end77_crit_edge

for.inc75.for.end77_crit_edge:                    ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end77

for.inc75.for.cond20.preheader_crit_edge:         ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond20.preheader

for.end77:                                        ; preds = %for.inc75.for.end77_crit_edge, %for.end.for.end77_crit_edge
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4293092, i32 noundef 256, i32 noundef 0, i32 noundef -1) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4308732, i32 noundef 256, i32 noundef 0, i32 noundef -1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_grctx_mmio_data(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_mmio_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_bundle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_grctx_generate_pagepool(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_rop_mapping(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_dist_skip_table(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_r406500(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_tpc_mask(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_grctx_generate_smid_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_r419a3c(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp102_grctx_generate_r408840(ptr nocapture noundef readonly %gr) #0 align 64 {
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
  %add.ptr = getelementptr i8, ptr %3, i32 4229184
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  %and = and i32 %4, -4
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4229184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #2, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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

!0 = !{ptr @gp102_grctx, !1, !"gp102_grctx", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgp102.c", i32 95, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 5416996}
!12 = !{i64 2156293434}
!13 = !{i64 2156293836}
!14 = !{i64 5416578}
