; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgv100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gf100_gr_pack = type { ptr, i32 }
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

@gv100_grctx_init_sw_veid_bundle_init_0 = dso_local constant { [23 x %struct.gf100_gr_init], [80 x i8] } { [23 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4096, i8 64, i32 1048576, i32 8 }, %struct.gf100_gr_init { i32 2369, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 2430, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 2431, i8 64, i32 1048576, i32 256 }, %struct.gf100_gr_init { i32 860, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 861, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 2568, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 2569, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 2570, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 850, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 851, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 856, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 857, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 880, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 881, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 882, i8 64, i32 1048576, i32 1048575 }, %struct.gf100_gr_init { i32 870, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 871, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 872, i8 64, i32 1048576, i32 4095 }, %struct.gf100_gr_init { i32 1571, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 1572, i8 64, i32 1048576, i32 0 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 33554433 }, %struct.gf100_gr_init zeroinitializer], [80 x i8] zeroinitializer }, align 32
@gv100_grctx_pack_sw_veid_bundle_init = internal constant { [2 x %struct.gf100_gr_pack], [16 x i8] } { [2 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gv100_grctx_init_sw_veid_bundle_init_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], [16 x i8] zeroinitializer }, align 32
@gv100_grctx = dso_local constant { %struct.gf100_grctx_func, [36 x i8] } { %struct.gf100_grctx_func { ptr @gv100_grctx_unkn88c, ptr @gf100_grctx_generate_main, ptr @gv100_grctx_generate_unkn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gv100_grctx_pack_sw_veid_bundle_init, ptr @gm107_grctx_generate_bundle, i32 12288, i32 384, i32 5760, ptr @gp100_grctx_generate_pagepool, i32 131072, ptr @gv100_grctx_generate_attrib, i32 1728, i32 1152, i32 3072, i32 2048, i32 3344, ptr null, ptr @gv100_grctx_generate_sm_id, ptr null, i8 0, ptr null, ptr @gv100_grctx_generate_rop_mapping, ptr null, ptr null, ptr @gm200_grctx_generate_dist_skip_table, ptr @gm200_grctx_generate_r406500, ptr @gk104_grctx_generate_gpc_tpc_nr, ptr null, ptr null, ptr @gp100_grctx_generate_smid_config, ptr @gv100_grctx_generate_r400088, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [39 x i8] c"gv100_grctx_init_sw_veid_bundle_init_0\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 29, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [37 x i8] c"gv100_grctx_pack_sw_veid_bundle_init\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 56, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"gv100_grctx\00", align 1
@___asan_gen_.8 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgv100.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 190, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @gv100_grctx_init_sw_veid_bundle_init_0, ptr @gv100_grctx_pack_sw_veid_bundle_init, ptr @gv100_grctx], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_grctx_init_sw_veid_bundle_init_0 to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_grctx_pack_sw_veid_bundle_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_grctx to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gv100_grctx_generate_attrib(ptr noundef %info) #0 align 64 {
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
  %cmp135.not = icmp eq i8 %17, 0
  br i1 %cmp135.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

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
  %gpc.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %size.0136 = phi i32 [ %mul, %for.body.lr.ph ], [ %add10, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 17, i32 %gpc.0137
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %21 to i32
  %mul7 = mul i32 %11, %conv6
  %mul9 = mul i32 %mul7, %conv8
  %add10 = add i32 %mul9, %size.0136
  %inc = add nuw nsw i32 %gpc.0137, 1
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
  %add12 = add i32 %mul11, 127
  %and = and i32 %add12, -128
  %call = tail call i32 @gf100_grctx_mmio_data(ptr noundef %info, i32 noundef %and, i32 noundef 4096, i1 noundef zeroext false) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4294672, i32 noundef -2147483648, i32 noundef 12, i32 noundef %call) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4298824, i32 noundef 268435456, i32 noundef 12, i32 noundef %call) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4299820, i32 noundef 268435456, i32 noundef 12, i32 noundef %call) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4300288, i32 noundef 0, i32 noundef 12, i32 noundef %call) #2
  %shr = lshr i32 %add12, 7
  %or = or i32 %shr, -2147483648
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4300292, i32 noundef %or, i32 noundef 0, i32 noundef -1) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4216880, i32 noundef %9, i32 noundef 0, i32 noundef -1) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4216924, i32 noundef %7, i32 noundef 0, i32 noundef -1) #2
  %22 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %gpc_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp16150.not = icmp eq i8 %23, 0
  br i1 %cmp16150.not, label %for.end.for.end69_crit_edge, label %for.cond19.preheader.lr.ph

for.end.for.end69_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end69

for.cond19.preheader.lr.ph:                       ; preds = %for.end
  %ppc_tpc_max30 = getelementptr inbounds %struct.gf100_gr, ptr %1, i32 0, i32 22
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.inc67.for.cond19.preheader_crit_edge, %for.cond19.preheader.lr.ph
  %n.0155 = phi i32 [ 0, %for.cond19.preheader.lr.ph ], [ %n.1.lcssa, %for.inc67.for.cond19.preheader_crit_edge ]
  %gpc.1153 = phi i32 [ 0, %for.cond19.preheader.lr.ph ], [ %inc68, %for.inc67.for.cond19.preheader_crit_edge ]
  %bo.0152 = phi i32 [ %mul, %for.cond19.preheader.lr.ph ], [ %bo.1.lcssa, %for.inc67.for.cond19.preheader_crit_edge ]
  %ao.0151 = phi i32 [ 0, %for.cond19.preheader.lr.ph ], [ %ao.1.lcssa, %for.inc67.for.cond19.preheader_crit_edge ]
  %arrayidx21 = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 17, i32 %gpc.1153
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp23139.not = icmp eq i8 %25, 0
  br i1 %cmp23139.not, label %for.cond19.preheader.for.inc67_crit_edge, label %for.body25.lr.ph

for.cond19.preheader.for.inc67_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc67

for.body25.lr.ph:                                 ; preds = %for.cond19.preheader
  %arrayidx43 = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 18, i32 %gpc.1153
  %mul38 = shl i32 %gpc.1153, 15
  %add39 = add nuw nsw i32 %mul38, 5255168
  br label %for.body25

for.body25:                                       ; preds = %cleanup.for.body25_crit_edge, %for.body25.lr.ph
  %n.1144 = phi i32 [ %n.0155, %for.body25.lr.ph ], [ %inc65, %cleanup.for.body25_crit_edge ]
  %ppc.0142 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc64, %cleanup.for.body25_crit_edge ]
  %bo.1141 = phi i32 [ %bo.0152, %for.body25.lr.ph ], [ %bo.2, %cleanup.for.body25_crit_edge ]
  %ao.1140 = phi i32 [ %ao.0151, %for.body25.lr.ph ], [ %ao.2, %cleanup.for.body25_crit_edge ]
  %26 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %27 to i32
  %shl = shl nuw i32 1, %ppc.0142
  %and45 = and i32 %shl, %conv44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool.not = icmp eq i32 %and45, 0
  br i1 %tobool.not, label %for.body25.cleanup_crit_edge, label %if.end

for.body25.cleanup_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #4
  %mul40 = shl i32 %ppc.0142, 9
  %add41 = add nuw nsw i32 %add39, %mul40
  %mul36 = shl i32 %n.1144, 2
  %add37 = add i32 %mul36, 4296352
  %28 = ptrtoint ptr %ppc_tpc_max30 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ppc_tpc_max30, align 1
  %conv31 = zext i8 %29 to i32
  %mul35 = mul i32 %11, %conv31
  %mul32 = mul i32 %9, %conv31
  %arrayidx27 = getelementptr %struct.gf100_gr, ptr %1, i32 0, i32 20, i32 %gpc.1153, i32 %ppc.0142
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %31 to i32
  %mul29 = mul i32 %7, %conv28
  %add46 = or i32 %add41, 192
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add46, i32 noundef %mul35, i32 noundef 0, i32 noundef -1) #2
  %add47 = or i32 %add41, 244
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add47, i32 noundef %bo.1141, i32 noundef 0, i32 noundef -1) #2
  %add48 = or i32 %add41, 240
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add48, i32 noundef %mul32, i32 noundef 0, i32 noundef -1) #2
  %add49 = add i32 %mul35, %bo.1141
  %add50 = or i32 %add41, 228
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add50, i32 noundef %mul29, i32 noundef 0, i32 noundef -1) #2
  %add51 = or i32 %add41, 248
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add51, i32 noundef %ao.1140, i32 noundef 0, i32 noundef -1) #2
  %32 = ptrtoint ptr %alpha_nr_max to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %alpha_nr_max, align 4
  %34 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx27, align 1
  %conv56 = zext i8 %35 to i32
  %mul57 = mul i32 %33, %conv56
  %add58 = add i32 %mul57, %ao.1140
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef %add37, i32 noundef %mul32, i32 noundef 0, i32 noundef -1) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body25.cleanup_crit_edge
  %ao.2 = phi i32 [ %add58, %if.end ], [ %ao.1140, %for.body25.cleanup_crit_edge ]
  %bo.2 = phi i32 [ %add49, %if.end ], [ %bo.1141, %for.body25.cleanup_crit_edge ]
  %inc64 = add nuw nsw i32 %ppc.0142, 1
  %inc65 = add i32 %n.1144, 1
  %36 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %37 to i32
  %cmp23 = icmp ult i32 %inc64, %conv22
  br i1 %cmp23, label %cleanup.for.body25_crit_edge, label %cleanup.for.inc67_crit_edge

cleanup.for.inc67_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc67

cleanup.for.body25_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body25

for.inc67:                                        ; preds = %cleanup.for.inc67_crit_edge, %for.cond19.preheader.for.inc67_crit_edge
  %ao.1.lcssa = phi i32 [ %ao.0151, %for.cond19.preheader.for.inc67_crit_edge ], [ %ao.2, %cleanup.for.inc67_crit_edge ]
  %bo.1.lcssa = phi i32 [ %bo.0152, %for.cond19.preheader.for.inc67_crit_edge ], [ %bo.2, %cleanup.for.inc67_crit_edge ]
  %n.1.lcssa = phi i32 [ %n.0155, %for.cond19.preheader.for.inc67_crit_edge ], [ %inc65, %cleanup.for.inc67_crit_edge ]
  %inc68 = add nuw nsw i32 %gpc.1153, 1
  %38 = ptrtoint ptr %gpc_nr to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %gpc_nr, align 1
  %conv15 = zext i8 %39 to i32
  %cmp16 = icmp ult i32 %inc68, %conv15
  br i1 %cmp16, label %for.inc67.for.cond19.preheader_crit_edge, label %for.inc67.for.end69_crit_edge

for.inc67.for.end69_crit_edge:                    ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end69

for.inc67.for.cond19.preheader_crit_edge:         ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond19.preheader

for.end69:                                        ; preds = %for.inc67.for.end69_crit_edge, %for.end.for.end69_crit_edge
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4293092, i32 noundef 256, i32 noundef 0, i32 noundef -1) #2
  tail call void @gf100_grctx_mmio_item(ptr noundef %info, i32 noundef 4308732, i32 noundef 256, i32 noundef 0, i32 noundef -1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_grctx_mmio_data(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_mmio_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gv100_grctx_generate_rop_mapping(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %tpc_total = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 16
  %2 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tpc_total, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %screen_tile_row_offset = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 23
  %4 = ptrtoint ptr %screen_tile_row_offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %screen_tile_row_offset, align 2
  %conv2 = zext i8 %5 to i32
  %or = or i32 %shl, %conv2
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4295608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #2, !srcloc !16
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond4.preheader.for.cond4.preheader_crit_edge, %entry
  %i.0144 = phi i32 [ 0, %entry ], [ %inc34, %for.cond4.preheader.for.cond4.preheader_crit_edge ]
  %mul = mul nuw nsw i32 %i.0144, 6
  %arrayidx = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %mul
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = and i8 %9, 31
  %and = zext i8 %10 to i32
  %add.1 = or i32 %mul, 1
  %arrayidx.1 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add.1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  %13 = and i8 %12, 31
  %and.1 = zext i8 %13 to i32
  %shl10.1 = shl nuw nsw i32 %and.1, 5
  %or11.1 = or i32 %shl10.1, %and
  %add.2 = add nuw nsw i32 %mul, 2
  %arrayidx.2 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add.2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.2, align 1
  %16 = and i8 %15, 31
  %and.2 = zext i8 %16 to i32
  %shl10.2 = shl nuw nsw i32 %and.2, 10
  %or11.2 = or i32 %shl10.2, %or11.1
  %add.3 = add nuw nsw i32 %mul, 3
  %arrayidx.3 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add.3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.3, align 1
  %19 = and i8 %18, 31
  %and.3 = zext i8 %19 to i32
  %shl10.3 = shl nuw nsw i32 %and.3, 15
  %or11.3 = or i32 %shl10.3, %or11.2
  %add.4 = add nuw nsw i32 %mul, 4
  %arrayidx.4 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add.4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4, align 1
  %22 = and i8 %21, 31
  %and.4 = zext i8 %22 to i32
  %shl10.4 = shl nuw nsw i32 %and.4, 20
  %or11.4 = or i32 %shl10.4, %or11.3
  %add.5 = add nuw nsw i32 %mul, 5
  %arrayidx.5 = getelementptr %struct.gf100_gr, ptr %gr, i32 0, i32 24, i32 %add.5
  %23 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.5, align 1
  %25 = and i8 %24, 31
  %and.5 = zext i8 %25 to i32
  %shl10.5 = shl nuw nsw i32 %and.5, 25
  %or11.5 = or i32 %shl10.5, %or11.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %mul16 = shl i32 %i.0144, 2
  %add17 = add nuw nsw i32 %mul16, 4295432
  %add.ptr18 = getelementptr i8, ptr %27, i32 %add17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %or11.5) #2, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !18
  tail call void @arm_heavy_mb() #2
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add24 = add nuw nsw i32 %mul16, 4308736
  %add.ptr25 = getelementptr i8, ptr %29, i32 %add24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %or11.5) #2, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !19
  tail call void @arm_heavy_mb() #2
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add31 = add nuw nsw i32 %mul16, 4225036
  %add.ptr32 = getelementptr i8, ptr %31, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %or11.5) #2, !srcloc !16
  %inc34 = add nuw nsw i32 %i.0144, 1
  %exitcond.not = icmp eq i32 %inc34, 11
  br i1 %exitcond.not, label %do.body36, label %for.cond4.preheader.for.cond4.preheader_crit_edge

for.cond4.preheader.for.cond4.preheader_crit_edge: ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond4.preheader

do.body36:                                        ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !20
  tail call void @arm_heavy_mb() #2
  %32 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tpc_total, align 1
  %conv40 = zext i8 %33 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %34 = ptrtoint ptr %screen_tile_row_offset to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %screen_tile_row_offset, align 2
  %conv43 = zext i8 %35 to i32
  %or44 = or i32 %shl41, %conv43
  %36 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %37, i32 4308944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %or44) #2, !srcloc !16
  %38 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tpc_total, align 1
  %rem148 = urem i8 2, %39
  %rem.zext = zext i8 %rem148 to i32
  %rem60149 = urem i8 4, %39
  %rem60.zext = zext i8 %rem60149 to i32
  %rem66150 = urem i8 8, %39
  %rem66.zext = zext i8 %rem66150 to i32
  %rem72151 = urem i8 16, %39
  %rem72.zext = zext i8 %rem72151 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !21
  tail call void @arm_heavy_mb() #2
  %shl78 = shl nuw nsw i32 %rem72.zext, 24
  %conv79 = shl nuw nsw i32 %rem66.zext, 16
  %or81 = or i32 %shl78, %conv79
  %conv82 = shl nuw nsw i32 %rem60.zext, 8
  %or84 = or i32 %or81, %conv82
  %or86 = or i32 %or84, %rem.zext
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr90 = getelementptr i8, ptr %41, i32 4308912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %or86) #2, !srcloc !16
  %42 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tpc_total, align 1
  %rem.1152 = urem i8 32, %43
  %rem.1.zext = zext i8 %rem.1152 to i32
  %rem60.1153 = urem i8 64, %43
  %rem60.1.zext = zext i8 %rem60.1153 to i32
  %rem66.1154 = urem i8 -128, %43
  %rem66.1.zext = zext i8 %rem66.1154 to i32
  %rem72.1.rhs.trunc = zext i8 %43 to i16
  %rem72.1155 = urem i16 256, %rem72.1.rhs.trunc
  %rem72.1.zext = zext i16 %rem72.1155 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !21
  tail call void @arm_heavy_mb() #2
  %shl78.1 = shl nuw i32 %rem72.1.zext, 24
  %conv79.1 = shl nuw nsw i32 %rem66.1.zext, 16
  %or81.1 = or i32 %shl78.1, %conv79.1
  %conv82.1 = shl nuw nsw i32 %rem60.1.zext, 8
  %or84.1 = or i32 %or81.1, %conv82.1
  %or86.1 = or i32 %or84.1, %rem.1.zext
  %44 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri, align 4
  %add.ptr90.1 = getelementptr i8, ptr %45, i32 4308916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90.1, i32 %or86.1) #2, !srcloc !16
  %46 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tpc_total, align 1
  %rem.2.rhs.trunc = zext i8 %47 to i16
  %rem.2156 = urem i16 512, %rem.2.rhs.trunc
  %rem.2.zext = zext i16 %rem.2156 to i32
  %rem60.2.rhs.trunc = zext i8 %47 to i16
  %rem60.2157 = urem i16 1024, %rem60.2.rhs.trunc
  %rem66.2.rhs.trunc = zext i8 %47 to i16
  %rem66.2158 = urem i16 2048, %rem66.2.rhs.trunc
  %rem66.2.zext = zext i16 %rem66.2158 to i32
  %rem72.2.rhs.trunc = zext i8 %47 to i16
  %rem72.2159 = urem i16 4096, %rem72.2.rhs.trunc
  %rem72.2.zext = zext i16 %rem72.2159 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !21
  tail call void @arm_heavy_mb() #2
  %shl78.2 = shl nuw i32 %rem72.2.zext, 24
  %conv79.2 = shl nuw nsw i32 %rem66.2.zext, 16
  %shl80.2 = and i32 %conv79.2, 16711680
  %or81.2 = or i32 %shl78.2, %shl80.2
  %48 = shl nuw i16 %rem60.2157, 8
  %conv82.2 = zext i16 %48 to i32
  %or84.2 = or i32 %or81.2, %conv82.2
  %or86.2 = or i32 %or84.2, %rem.2.zext
  %49 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri, align 4
  %add.ptr90.2 = getelementptr i8, ptr %50, i32 4308920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90.2, i32 %or86.2) #2, !srcloc !16
  %51 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tpc_total, align 1
  %conv54.3 = zext i8 %52 to i32
  %rem.3.rhs.trunc = zext i8 %52 to i16
  %rem.3160 = urem i16 8192, %rem.3.rhs.trunc
  %rem.3.zext = zext i16 %rem.3160 to i32
  %rem60.3.rhs.trunc = zext i8 %52 to i16
  %rem60.3161 = urem i16 16384, %rem60.3.rhs.trunc
  %rem66.3.rhs.trunc = zext i8 %52 to i16
  %rem66.3162 = urem i16 -32768, %rem66.3.rhs.trunc
  %rem66.3.zext = zext i16 %rem66.3162 to i32
  %rem72.3 = urem i32 65536, %conv54.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !21
  tail call void @arm_heavy_mb() #2
  %shl78.3 = shl nuw i32 %rem72.3, 24
  %conv79.3 = shl nuw nsw i32 %rem66.3.zext, 16
  %shl80.3 = and i32 %conv79.3, 16711680
  %or81.3 = or i32 %shl78.3, %shl80.3
  %53 = shl nuw i16 %rem60.3161, 8
  %conv82.3 = zext i16 %53 to i32
  %or84.3 = or i32 %or81.3, %conv82.3
  %or86.3 = or i32 %or84.3, %rem.3.zext
  %54 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri, align 4
  %add.ptr90.3 = getelementptr i8, ptr %55, i32 4308924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90.3, i32 %or86.3) #2, !srcloc !16
  %56 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %tpc_total, align 1
  %conv54.4 = zext i8 %57 to i32
  %rem.4 = urem i32 131072, %conv54.4
  %rem60.4 = urem i32 262144, %conv54.4
  %rem66.4 = urem i32 524288, %conv54.4
  %rem72.4 = urem i32 1048576, %conv54.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !21
  tail call void @arm_heavy_mb() #2
  %shl78.4 = shl nuw i32 %rem72.4, 24
  %conv79.4 = shl nuw nsw i32 %rem66.4, 16
  %shl80.4 = and i32 %conv79.4, 16711680
  %or81.4 = or i32 %shl78.4, %shl80.4
  %conv82.4 = shl nuw nsw i32 %rem60.4, 8
  %shl83.4 = and i32 %conv82.4, 65280
  %or84.4 = or i32 %or81.4, %shl83.4
  %or86.4 = or i32 %or84.4, %rem.4
  %58 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri, align 4
  %add.ptr90.4 = getelementptr i8, ptr %59, i32 4308928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90.4, i32 %or86.4) #2, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !22
  tail call void @arm_heavy_mb() #2
  %60 = ptrtoint ptr %tpc_total to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tpc_total, align 1
  %conv99 = zext i8 %61 to i32
  %shl100 = shl nuw nsw i32 %conv99, 8
  %62 = ptrtoint ptr %screen_tile_row_offset to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %screen_tile_row_offset, align 2
  %conv102 = zext i8 %63 to i32
  %or103 = or i32 %shl100, %conv102
  %64 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri, align 4
  %add.ptr105 = getelementptr i8, ptr %65, i32 4225212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %or103) #2, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gv100_grctx_generate_r400088(ptr nocapture noundef readonly %gr, i1 noundef zeroext %on) #0 align 64 {
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
  %add.ptr = getelementptr i8, ptr %3, i32 4194440
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !25
  tail call void @arm_heavy_mb() #2
  %and = and i32 %4, -393217
  %cond = select i1 %on, i32 393216, i32 0
  %or = or i32 %and, %cond
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4194440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #2, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gv100_grctx_generate_unkn(ptr nocapture noundef readonly %gr) #0 align 64 {
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
  %add.ptr = getelementptr i8, ptr %3, i32 4298764
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !27
  tail call void @arm_heavy_mb() #2
  %or = or i32 %4, 16
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4298764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #2, !srcloc !16
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 4308488
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !29
  tail call void @arm_heavy_mb() #2
  %or17 = or i32 %9, 4
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 4308488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %or17) #2, !srcloc !16
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %13, i32 4220096
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !31
  tail call void @arm_heavy_mb() #2
  %or33 = or i32 %14, -2147483648
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %16, i32 4220096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %or33) #2, !srcloc !16
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr42 = getelementptr i8, ptr %18, i32 4216832
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !33
  tail call void @arm_heavy_mb() #2
  %or49 = or i32 %19, 134217728
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr51 = getelementptr i8, ptr %21, i32 4216832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %or49) #2, !srcloc !16
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr58 = getelementptr i8, ptr %23, i32 4299776
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !35
  tail call void @arm_heavy_mb() #2
  %or65 = or i32 %24, 8
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr67 = getelementptr i8, ptr %26, i32 4299776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %or65) #2, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gv100_grctx_unkn88c(ptr nocapture noundef readonly %gr, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %cond = select i1 %on, i32 16, i32 0
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4233356
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !37
  tail call void @arm_heavy_mb() #2
  %and = and i32 %4, -17
  %or = or i32 %and, %cond
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 4233356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #2, !srcloc !16
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 4233356
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !38
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %11, i32 4302988
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !40
  tail call void @arm_heavy_mb() #2
  %and21 = and i32 %12, -17
  %or22 = or i32 %and21, %cond
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr24 = getelementptr i8, ptr %14, i32 4302988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %or22) #2, !srcloc !16
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr28 = getelementptr i8, ptr %16, i32 4302988
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !41
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %19, i32 4229652
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !43
  tail call void @arm_heavy_mb() #2
  %and42 = and i32 %20, -17
  %or43 = or i32 %and42, %cond
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr45 = getelementptr i8, ptr %22, i32 4229652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %or43) #2, !srcloc !16
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr49 = getelementptr i8, ptr %24, i32 4229652
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_main(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_bundle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_grctx_generate_pagepool(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gv100_grctx_generate_sm_id(ptr nocapture noundef readonly %gr, i32 noundef %gpc, i32 noundef %tpc, i32 noundef %sm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.gf100_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !45
  tail call void @arm_heavy_mb() #2
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %gpc, 15
  %add = add i32 %mul, 5259264
  %mul2 = shl i32 %tpc, 11
  %add3 = add i32 %add, %mul2
  %add4 = or i32 %add3, 1544
  %add.ptr = getelementptr i8, ptr %3, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %sm) #2, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !46
  tail call void @arm_heavy_mb() #2
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %mul11 = shl i32 %tpc, 2
  %add12 = add i32 %mul, 5245968
  %add13 = add i32 %add12, %mul11
  %add.ptr14 = getelementptr i8, ptr %5, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %sm) #2, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !47
  tail call void @arm_heavy_mb() #2
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add23 = or i32 %add3, 136
  %add.ptr24 = getelementptr i8, ptr %7, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %sm) #2, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_dist_skip_table(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_r406500(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_gpc_tpc_nr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_grctx_generate_smid_config(ptr noundef) #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @gv100_grctx_init_sw_veid_bundle_init_0, !1, !"gv100_grctx_init_sw_veid_bundle_init_0", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgv100.c", i32 29, i32 1}
!2 = !{ptr @gv100_grctx, !3, !"gv100_grctx", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgv100.c", i32 190, i32 1}
!4 = !{ptr @gv100_grctx_pack_sw_veid_bundle_init, !5, !"gv100_grctx_pack_sw_veid_bundle_init", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgv100.c", i32 56, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2156286977}
!16 = !{i64 5419774}
!17 = !{i64 2156287446}
!18 = !{i64 2156287861}
!19 = !{i64 2156288276}
!20 = !{i64 2156288779}
!21 = !{i64 2156289404}
!22 = !{i64 2156289985}
!23 = !{i64 5420192}
!24 = !{i64 2156290892}
!25 = !{i64 2156291330}
!26 = !{i64 2156293853}
!27 = !{i64 2156294255}
!28 = !{i64 2156295128}
!29 = !{i64 2156295530}
!30 = !{i64 2156296403}
!31 = !{i64 2156296805}
!32 = !{i64 2156297678}
!33 = !{i64 2156298080}
!34 = !{i64 2156298953}
!35 = !{i64 2156299355}
!36 = !{i64 2156300216}
!37 = !{i64 2156300594}
!38 = !{i64 2156301070}
!39 = !{i64 2156301828}
!40 = !{i64 2156302206}
!41 = !{i64 2156302682}
!42 = !{i64 2156303440}
!43 = !{i64 2156303818}
!44 = !{i64 2156304294}
!45 = !{i64 2156291939}
!46 = !{i64 2156292469}
!47 = !{i64 2156293020}
