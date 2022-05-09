; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_hw_mixer = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, ptr, %struct.dpu_hw_lm_ops, %struct.dpu_hw_mixer_cfg }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_lm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_mixer_cfg = type { i32, i32, i8, i32 }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_lm_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_lm_sub_blks = type { i32, i32, [12 x i32], %struct.dpu_pp_blk }
%struct.dpu_pp_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_mdss_color = type { i32, i32, i32, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LM_OUT_SIZE\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LM_OP_MODE\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"LM_BLEND0_CONST_ALPHA + stage_off\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LM_BLEND0_OP + stage_off\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LM_BLEND0_FG_ALPHA + stage_off\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LM_BLEND0_BG_ALPHA + stage_off\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LM_BORDER_COLOR_0\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LM_BORDER_COLOR_1\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LM_MISR_CTRL\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 83, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 90, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 162, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 166, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 167, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 183, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 184, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 100, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 103, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [45 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 114, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_lm_init(i32 noundef %idx, ptr noundef %addr, ptr nocapture noundef readonly %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 80) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.dpu_hw_mixer, ptr %call7.i.i, i32 0, i32 1
  %mixer_count.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 8
  %1 = ptrtoint ptr %mixer_count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mixer_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp25.not.i = icmp eq i32 %2, 0
  br i1 %cmp25.not.i, label %if.end.if.then4_crit_edge, label %for.body.lr.ph.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then4

for.body.lr.ph.i:                                 ; preds = %if.end
  %mixer1.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 9
  %3 = ptrtoint ptr %mixer1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mixer1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.dpu_lm_cfg, ptr %4, i32 %i.026.i, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %idx)
  %cmp2.i = icmp eq i32 %6, %idx
  br i1 %cmp2.i, label %_lm_offset.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.if.then4_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.if.then4_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then4

_lm_offset.exit:                                  ; preds = %for.body.i
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %addr, ptr %hw, align 8
  %base.i = getelementptr %struct.dpu_lm_cfg, ptr %4, i32 %i.026.i, i32 2
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 4
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %blk_off.i, align 4
  %len.i = getelementptr %struct.dpu_lm_cfg, ptr %4, i32 %i.026.i, i32 3
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %length.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %call7.i.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %length.i, align 8
  %14 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m, align 4
  %hwversion7.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %call7.i.i, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %hwversion7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hwversion7.i, align 8
  %log_mask.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %call7.i.i, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %log_mask.i, align 4
  %arrayidx9.i = getelementptr %struct.dpu_lm_cfg, ptr %4, i32 %i.026.i
  %tobool.not.i = icmp eq ptr %arrayidx9.i, null
  %cmp.i = icmp ugt ptr %arrayidx9.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %_lm_offset.exit.if.then4_crit_edge, label %if.end6

_lm_offset.exit.if.then4_crit_edge:               ; preds = %_lm_offset.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then4

if.then4:                                         ; preds = %_lm_offset.exit.if.then4_crit_edge, %for.inc.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

if.end6:                                          ; preds = %_lm_offset.exit
  call void @__sanitizer_cov_trace_pc() #5
  %idx7 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %idx7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %idx, ptr %idx7, align 8
  %cap = getelementptr inbounds %struct.dpu_hw_mixer, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx9.i, ptr %cap, align 4
  %ops = getelementptr inbounds %struct.dpu_hw_mixer, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dpu_hw_lm_setup_out, ptr %ops, align 8
  %21 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %m, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %22)
  %cmp.i20 = icmp ugt i32 %22, 1073741823
  %spec.select.i21 = select i1 %cmp.i20, ptr @dpu_hw_lm_setup_blend_config_sdm845, ptr @dpu_hw_lm_setup_blend_config
  %23 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %call7.i.i, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %spec.select.i21, ptr %23, align 4
  %setup_alpha_out.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %call7.i.i, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %setup_alpha_out.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dpu_hw_lm_setup_color3, ptr %setup_alpha_out.i, align 8
  %setup_border_color.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %call7.i.i, i32 0, i32 6, i32 3
  %26 = ptrtoint ptr %setup_border_color.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @dpu_hw_lm_setup_border_color, ptr %setup_border_color.i, align 4
  %setup_misr.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %call7.i.i, i32 0, i32 6, i32 4
  %27 = ptrtoint ptr %setup_misr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dpu_hw_lm_setup_misr, ptr %setup_misr.i, align 8
  %collect_misr.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %call7.i.i, i32 0, i32 6, i32 5
  %28 = ptrtoint ptr %collect_misr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dpu_hw_lm_collect_misr, ptr %collect_misr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then4 ], [ %call7.i.i, %if.end6 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_hw_lm_destroy(ptr noundef %lm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %lm) #3
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_lm_setup_out(ptr noundef %ctx, ptr nocapture noundef readonly %mixer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_mixer, ptr %ctx, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 0) #3
  %out_height = getelementptr inbounds %struct.dpu_hw_mixer_cfg, ptr %mixer, i32 0, i32 1
  %0 = ptrtoint ptr %out_height to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_height, align 4
  %shl = shl i32 %1, 16
  %2 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mixer, align 4
  %or = or i32 %shl, %3
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 4, i32 noundef %or, ptr noundef nonnull @.str) #3
  %right_mixer = getelementptr inbounds %struct.dpu_hw_mixer_cfg, ptr %mixer, i32 0, i32 2
  %4 = ptrtoint ptr %right_mixer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %right_mixer, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %and = and i32 %call, 2147483647
  %masksel = select i1 %tobool.not, i32 0, i32 -2147483648
  %op_mode.0 = or i32 %masksel, %and
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 0, i32 noundef %op_mode.0, ptr noundef nonnull @.str.1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_lm_setup_blend_config_sdm845(ptr noundef %ctx, i32 noundef %stage, i32 noundef %fg_alpha, i32 noundef %bg_alpha, i32 noundef %blend_op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_mixer, ptr %ctx, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stage)
  %cmp = icmp eq i32 %stage, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %sblk1.i = getelementptr inbounds %struct.dpu_lm_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk1.i, align 4
  %maxblendstages.i = getelementptr inbounds %struct.dpu_lm_sub_blks, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %maxblendstages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxblendstages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %stage)
  %cmp2.not.i = icmp ult i32 %5, %stage
  br i1 %cmp2.not.i, label %if.end.do.end_crit_edge, label %_stage_offset.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

_stage_offset.exit:                               ; preds = %if.end
  %sub.i = add i32 %stage, -1
  %arrayidx.i = getelementptr %struct.dpu_lm_sub_blks, ptr %3, i32 0, i32 2, i32 %sub.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp slt i32 %7, 0
  br i1 %cmp1, label %_stage_offset.exit.do.end_crit_edge, label %if.end24, !prof !30

_stage_offset.exit.do.end_crit_edge:              ; preds = %_stage_offset.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

do.end:                                           ; preds = %_stage_offset.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 162, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %_stage_offset.exit
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %bg_alpha, 255
  %and25 = shl i32 %fg_alpha, 16
  %shl = and i32 %and25, 16711680
  %or = or i32 %and, %shl
  %add = add nuw i32 %7, 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add, i32 noundef %or, ptr noundef nonnull @.str.3) #3
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %7, i32 noundef %blend_op, ptr noundef nonnull @.str.4) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_lm_setup_blend_config(ptr noundef %ctx, i32 noundef %stage, i32 noundef %fg_alpha, i32 noundef %bg_alpha, i32 noundef %blend_op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_mixer, ptr %ctx, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stage)
  %cmp = icmp eq i32 %stage, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_mixer, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %sblk1.i = getelementptr inbounds %struct.dpu_lm_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk1.i, align 4
  %maxblendstages.i = getelementptr inbounds %struct.dpu_lm_sub_blks, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %maxblendstages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxblendstages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %stage)
  %cmp2.not.i = icmp ult i32 %5, %stage
  br i1 %cmp2.not.i, label %if.end.do.end_crit_edge, label %_stage_offset.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

_stage_offset.exit:                               ; preds = %if.end
  %sub.i = add i32 %stage, -1
  %arrayidx.i = getelementptr %struct.dpu_lm_sub_blks, ptr %3, i32 0, i32 2, i32 %sub.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp slt i32 %7, 0
  br i1 %cmp1, label %_stage_offset.exit.do.end_crit_edge, label %if.end24, !prof !30

_stage_offset.exit.do.end_crit_edge:              ; preds = %_stage_offset.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

do.end:                                           ; preds = %_stage_offset.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 180, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %_stage_offset.exit
  call void @__sanitizer_cov_trace_pc() #5
  %add = add nuw i32 %7, 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add, i32 noundef %fg_alpha, ptr noundef nonnull @.str.5) #3
  %add25 = add nuw i32 %7, 8
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add25, i32 noundef %bg_alpha, ptr noundef nonnull @.str.6) #3
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %7, i32 noundef %blend_op, ptr noundef nonnull @.str.4) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_lm_setup_color3(ptr noundef %ctx, i32 noundef %mixer_op_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_mixer, ptr %ctx, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 0) #3
  %and = and i32 %call, -1073741824
  %or = or i32 %and, %mixer_op_mode
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 0, i32 noundef %or, ptr noundef nonnull @.str.1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_lm_setup_border_color(ptr noundef %ctx, ptr nocapture noundef readonly %color, i8 noundef zeroext %border_en) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %border_en)
  %tobool.not = icmp eq i8 %border_en, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hw = getelementptr inbounds %struct.dpu_hw_mixer, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %color, align 4
  %and = and i32 %1, 4095
  %color_1 = getelementptr inbounds %struct.dpu_mdss_color, ptr %color, i32 0, i32 1
  %2 = ptrtoint ptr %color_1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %color_1, align 4
  %and1 = shl i32 %3, 16
  %shl = and i32 %and1, 268369920
  %or = or i32 %shl, %and
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 8, i32 noundef %or, ptr noundef nonnull @.str.7) #3
  %color_2 = getelementptr inbounds %struct.dpu_mdss_color, ptr %color, i32 0, i32 2
  %4 = ptrtoint ptr %color_2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %color_2, align 4
  %and2 = and i32 %5, 4095
  %color_3 = getelementptr inbounds %struct.dpu_mdss_color, ptr %color, i32 0, i32 3
  %6 = ptrtoint ptr %color_3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %color_3, align 4
  %and3 = shl i32 %7, 16
  %shl4 = and i32 %and3, 268369920
  %or5 = or i32 %shl4, %and2
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 16, i32 noundef %or5, ptr noundef nonnull @.str.8) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_lm_setup_misr(ptr noundef %ctx, i1 noundef zeroext %enable, i32 noundef %frame_count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_mixer, ptr %ctx, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 784, i32 noundef 1024, ptr noundef nonnull @.str.9) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  %and = and i32 %frame_count, 255
  %or1 = or i32 %and, -2147483392
  %.sink = select i1 %enable, i32 %or1, i32 0
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 784, i32 noundef %.sink, ptr noundef nonnull @.str.9) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_hw_lm_collect_misr(ptr noundef %ctx, ptr noundef writeonly %misr_value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_mixer, ptr %ctx, i32 0, i32 1
  %tobool.not = icmp eq ptr %misr_value, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 784) #3
  %0 = and i32 %call, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %0)
  %.not = icmp eq i32 %0, 768
  br i1 %.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call8 = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 788) #3
  %1 = ptrtoint ptr %misr_value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call8, ptr %misr_value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c", i32 83, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c", i32 90, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c", i32 162, i32 6}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c", i32 166, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c", i32 167, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c", i32 183, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c", i32 184, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c", i32 100, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c", i32 103, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c", i32 114, i32 2}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i8 0, i8 2}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2157260378}
