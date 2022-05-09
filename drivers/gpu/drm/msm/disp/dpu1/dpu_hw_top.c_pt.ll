; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_hw_mdp = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_mdp_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_mdp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_mdp_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, [16 x %struct.dpu_clk_ctrl_reg] }
%struct.dpu_clk_ctrl_reg = type { i32, i32 }
%struct.split_pipe_cfg = type { i8, i32, i32, i8 }
%struct.dpu_danger_safe_status = type { i8, [15 x i8] }
%struct.dpu_vsync_source_cfg = type { i32, i32, [8 x i32], i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SSPP_SPARE\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SPLIT_DISPLAY_LOWER_PIPE_CTRL\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SPLIT_DISPLAY_UPPER_PIPE_CTRL\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SPLIT_DISPLAY_EN\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reg_off\00", [24 x i8] zeroinitializer }, align 32
@dpu_hw_setup_vsync_source.pp_offset = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 12, i32 8, i32 4, i32 19, i32 24, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MDP_VSYNC_SEL\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wd_load_value\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wd_ctl\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wd_ctl2\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HDMI_DP_CORE_SELECT\00", [44 x i8] zeroinitializer }, align 32
@switch.table.dpu_hw_setup_vsync_source = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1096, i32 1080, i32 1064, i32 920], [16 x i8] zeroinitializer }, align 32
@switch.table.dpu_hw_setup_vsync_source.10 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1088, i32 1072, i32 1056, i32 912], [16 x i8] zeroinitializer }, align 32
@switch.table.dpu_hw_setup_vsync_source.11 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1092, i32 1076, i32 1060, i32 916], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 85, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 86, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 87, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 88, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 117, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"pp_offset\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 159, i32 19 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 175, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 208, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 211, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 215, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [46 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 260, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [39 x i8] c"switch.table.dpu_hw_setup_vsync_source\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [42 x i8] c"switch.table.dpu_hw_setup_vsync_source.10\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [42 x i8] c"switch.table.dpu_hw_setup_vsync_source.11\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dpu_hw_setup_vsync_source.pp_offset, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @switch.table.dpu_hw_setup_vsync_source, ptr @switch.table.dpu_hw_setup_vsync_source.10, ptr @switch.table.dpu_hw_setup_vsync_source.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_hw_setup_vsync_source.pp_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpu_hw_setup_vsync_source to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpu_hw_setup_vsync_source.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpu_hw_setup_vsync_source.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_mdptop_init(i32 noundef %idx, ptr noundef %addr, ptr noundef readonly %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %addr, null
  %tobool1.not = icmp eq ptr %m, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #6
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %hw = getelementptr inbounds %struct.dpu_hw_mdp, ptr %call7.i.i, i32 0, i32 1
  %tobool3.not.i = icmp eq ptr %hw, null
  br i1 %tobool3.not.i, label %if.end6.if.then9_crit_edge, label %for.cond.preheader.i

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

for.cond.preheader.i:                             ; preds = %if.end6
  %mdp_count.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 2
  %1 = ptrtoint ptr %mdp_count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mdp_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp35.not.i = icmp eq i32 %2, 0
  br i1 %cmp35.not.i, label %for.cond.preheader.i.if.then9_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.then9_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %mdp4.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 3
  %3 = ptrtoint ptr %mdp4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdp4.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.dpu_mdp_cfg, ptr %4, i32 %i.036.i, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %idx)
  %cmp5.i = icmp eq i32 %6, %idx
  br i1 %cmp5.i, label %_top_offset.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.if.then9_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.if.then9_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

_top_offset.exit:                                 ; preds = %for.body.i
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %addr, ptr %hw, align 8
  %base.i = getelementptr %struct.dpu_mdp_cfg, ptr %4, i32 %i.036.i, i32 2
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 4
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_mdp, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %blk_off.i, align 4
  %len.i = getelementptr %struct.dpu_mdp_cfg, ptr %4, i32 %i.036.i, i32 3
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %length.i = getelementptr inbounds %struct.dpu_hw_mdp, ptr %call7.i.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %length.i, align 8
  %14 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m, align 4
  %hwversion11.i = getelementptr inbounds %struct.dpu_hw_mdp, ptr %call7.i.i, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %hwversion11.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hwversion11.i, align 8
  %log_mask.i = getelementptr inbounds %struct.dpu_hw_mdp, ptr %call7.i.i, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 128, ptr %log_mask.i, align 4
  %arrayidx13.i = getelementptr %struct.dpu_mdp_cfg, ptr %4, i32 %i.036.i
  %tobool.not.i26 = icmp eq ptr %arrayidx13.i, null
  %cmp.i = icmp ugt ptr %arrayidx13.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i26, %cmp.i
  br i1 %spec.select.i, label %_top_offset.exit.if.then9_crit_edge, label %if.end11

_top_offset.exit.if.then9_crit_edge:              ; preds = %_top_offset.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

if.then9:                                         ; preds = %_top_offset.exit.if.then9_crit_edge, %for.inc.i.if.then9_crit_edge, %for.cond.preheader.i.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

if.end11:                                         ; preds = %_top_offset.exit
  call void @__sanitizer_cov_trace_pc() #5
  %idx12 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %idx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %idx, ptr %idx12, align 8
  %caps = getelementptr inbounds %struct.dpu_hw_mdp, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx13.i, ptr %caps, align 4
  %ops = getelementptr inbounds %struct.dpu_hw_mdp, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dpu_hw_setup_split_pipe, ptr %ops, align 8
  %setup_clk_force_ctrl.i = getelementptr inbounds %struct.dpu_hw_mdp, ptr %call7.i.i, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %setup_clk_force_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @dpu_hw_setup_clk_force_ctrl, ptr %setup_clk_force_ctrl.i, align 8
  %get_danger_status.i = getelementptr inbounds %struct.dpu_hw_mdp, ptr %call7.i.i, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %get_danger_status.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dpu_hw_get_danger_status, ptr %get_danger_status.i, align 4
  %setup_vsync_source.i = getelementptr inbounds %struct.dpu_hw_mdp, ptr %call7.i.i, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %setup_vsync_source.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dpu_hw_setup_vsync_source, ptr %setup_vsync_source.i, align 8
  %get_safe_status.i = getelementptr inbounds %struct.dpu_hw_mdp, ptr %call7.i.i, i32 0, i32 4, i32 5
  %24 = ptrtoint ptr %get_safe_status.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dpu_hw_get_safe_status, ptr %get_safe_status.i, align 4
  %intf_audio_select.i = getelementptr inbounds %struct.dpu_hw_mdp, ptr %call7.i.i, i32 0, i32 4, i32 6
  %25 = ptrtoint ptr %intf_audio_select.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dpu_hw_intf_audio_select, ptr %intf_audio_select.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then9 ], [ %call7.i.i, %if.end11 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_hw_mdp_destroy(ptr noundef %mdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %mdp) #3
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_setup_split_pipe(ptr noundef %mdp, ptr noundef readonly %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mdp, null
  %tobool1.not = icmp eq ptr %cfg, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.dpu_hw_mdp, ptr %mdp, i32 0, i32 1
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cfg, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end.if.end16_crit_edge, label %if.then3

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.then3:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct.split_pipe_cfg, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %intf = getelementptr inbounds %struct.split_pipe_cfg, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp5 = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  %. = select i1 %cmp5, i32 18, i32 258
  br label %if.end16

if.else9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  %.35 = select i1 %cmp5, i32 256, i32 16
  %.36 = select i1 %cmp5, i32 16, i32 256
  br label %if.end16

if.end16:                                         ; preds = %if.else9, %if.then4, %if.end.if.end16_crit_edge
  %upper_pipe.0 = phi i32 [ %., %if.then4 ], [ 0, %if.end.if.end16_crit_edge ], [ %.35, %if.else9 ]
  %lower_pipe.1 = phi i32 [ %., %if.then4 ], [ 0, %if.end.if.end16_crit_edge ], [ %.36, %if.else9 ]
  %split_flush_en = getelementptr inbounds %struct.split_pipe_cfg, ptr %cfg, i32 0, i32 3
  %6 = ptrtoint ptr %split_flush_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %split_flush_en, align 4, !range !31
  %8 = zext i8 %7 to i32
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 40, i32 noundef %8, ptr noundef nonnull @.str) #3
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 1008, i32 noundef %lower_pipe.1, ptr noundef nonnull @.str.1) #3
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 760, i32 noundef %upper_pipe.0, ptr noundef nonnull @.str.2) #3
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cfg, align 4, !range !31
  %11 = zext i8 %10 to i32
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 756, i32 noundef %11, ptr noundef nonnull @.str.3) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dpu_hw_setup_clk_force_ctrl(ptr noundef %mdp, i32 noundef %clk_ctrl, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mdp, null
  %0 = add i32 %clk_ctrl, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %0)
  %1 = icmp ult i32 %0, -15
  %or.cond = or i1 %tobool.not, %1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hw = getelementptr inbounds %struct.dpu_hw_mdp, ptr %mdp, i32 0, i32 1
  %caps = getelementptr inbounds %struct.dpu_hw_mdp, ptr %mdp, i32 0, i32 3
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %arrayidx = getelementptr %struct.dpu_mdp_cfg, ptr %3, i32 0, i32 7, i32 %clk_ctrl
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %bit_off8 = getelementptr %struct.dpu_mdp_cfg, ptr %3, i32 0, i32 7, i32 %clk_ctrl, i32 1
  %6 = ptrtoint ptr %bit_off8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bit_off8, align 4
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef %5) #3
  %shl = shl nuw i32 1, %7
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  %or = or i32 %call, %shl
  %new_val.0 = select i1 %enable, i32 %or, i32 %and
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %5, i32 noundef %new_val.0, ptr noundef nonnull @.str.4) #3
  %and14 = and i32 %call, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool15.not, %if.end3 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_get_danger_status(ptr noundef %mdp, ptr noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mdp, null
  %tobool1.not = icmp eq ptr %status, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hw = getelementptr inbounds %struct.dpu_hw_mdp, ptr %mdp, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 864) #3
  %0 = trunc i32 %call to i8
  %conv = and i8 %0, 3
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %status, align 1
  %2 = lshr i8 %0, 4
  %conv5 = and i8 %2, 3
  %arrayidx = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv5, ptr %arrayidx, align 1
  %4 = lshr i8 %0, 6
  %arrayidx10 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx10, align 1
  %shr11 = lshr i32 %call, 8
  %6 = trunc i32 %shr11 to i8
  %conv13 = and i8 %6, 3
  %arrayidx15 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv13, ptr %arrayidx15, align 1
  %shr16 = lshr i32 %call, 10
  %8 = trunc i32 %shr16 to i8
  %conv18 = and i8 %8, 3
  %arrayidx20 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv18, ptr %arrayidx20, align 1
  %shr21 = lshr i32 %call, 12
  %10 = trunc i32 %shr21 to i8
  %conv23 = and i8 %10, 3
  %arrayidx25 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv23, ptr %arrayidx25, align 1
  %shr26 = lshr i32 %call, 14
  %12 = trunc i32 %shr26 to i8
  %conv28 = and i8 %12, 3
  %arrayidx30 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 6
  %13 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv28, ptr %arrayidx30, align 1
  %shr31 = lshr i32 %call, 16
  %14 = trunc i32 %shr31 to i8
  %conv33 = and i8 %14, 3
  %arrayidx35 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 7
  %15 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv33, ptr %arrayidx35, align 1
  %shr36 = lshr i32 %call, 18
  %16 = trunc i32 %shr36 to i8
  %conv38 = and i8 %16, 3
  %arrayidx40 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 8
  %17 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv38, ptr %arrayidx40, align 1
  %shr41 = lshr i32 %call, 20
  %18 = trunc i32 %shr41 to i8
  %conv43 = and i8 %18, 3
  %arrayidx45 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 9
  %19 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv43, ptr %arrayidx45, align 1
  %shr46 = lshr i32 %call, 22
  %20 = trunc i32 %shr46 to i8
  %conv48 = and i8 %20, 3
  %arrayidx50 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 10
  %21 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv48, ptr %arrayidx50, align 1
  %shr51 = lshr i32 %call, 28
  %22 = trunc i32 %shr51 to i8
  %conv53 = and i8 %22, 3
  %arrayidx55 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 11
  %23 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv53, ptr %arrayidx55, align 1
  %shr56 = lshr i32 %call, 30
  %conv58 = trunc i32 %shr56 to i8
  %arrayidx60 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 12
  %24 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv58, ptr %arrayidx60, align 1
  %shr61 = lshr i32 %call, 24
  %25 = trunc i32 %shr61 to i8
  %conv63 = and i8 %25, 3
  %arrayidx65 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 13
  %26 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv63, ptr %arrayidx65, align 1
  %shr66 = lshr i32 %call, 26
  %27 = trunc i32 %shr66 to i8
  %conv68 = and i8 %27, 3
  %arrayidx70 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 14
  %28 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv68, ptr %arrayidx70, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_setup_vsync_source(ptr noundef %mdp, ptr noundef readonly %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mdp, null
  %tobool1.not = icmp eq ptr %cfg, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup26_crit_edge, label %lor.lhs.false2

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup26

lor.lhs.false2:                                   ; preds = %entry
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp ugt i32 %1, 8
  br i1 %cmp, label %lor.lhs.false2.cleanup26_crit_edge, label %if.end

lor.lhs.false2.cleanup26_crit_edge:               ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup26

if.end:                                           ; preds = %lor.lhs.false2
  %hw = getelementptr inbounds %struct.dpu_hw_mdp, ptr %mdp, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 1044) #3
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp459.not = icmp eq i32 %3, 0
  br i1 %cmp459.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %vsync_source = getelementptr inbounds %struct.dpu_vsync_source_cfg, ptr %cfg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %reg.060 = phi i32 [ %call, %for.body.lr.ph ], [ %reg.1, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_vsync_source_cfg, ptr %cfg, i32 0, i32 2, i32 %i.061
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub)
  %cmp5 = icmp ugt i32 %sub, 7
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %if.end7

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx8 = getelementptr [8 x i32], ptr @dpu_hw_setup_vsync_source.pp_offset, i32 0, i32 %sub
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8, align 4
  %shl = shl i32 15, %7
  %neg = xor i32 %shl, -1
  %and = and i32 %reg.060, %neg
  %8 = ptrtoint ptr %vsync_source to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsync_source, align 4
  %and9 = and i32 %9, 15
  %shl11 = shl i32 %and9, %7
  %or = or i32 %shl11, %and
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.body.cleanup_crit_edge
  %reg.1 = phi i32 [ %or, %if.end7 ], [ %reg.060, %for.body.cleanup_crit_edge ]
  %inc = add nuw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %reg.0.lcssa = phi i32 [ %call, %if.end.for.end_crit_edge ], [ %reg.1, %cleanup.for.end_crit_edge ]
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 1044, i32 noundef %reg.0.lcssa, ptr noundef nonnull @.str.5) #3
  %vsync_source12 = getelementptr inbounds %struct.dpu_vsync_source_cfg, ptr %cfg, i32 0, i32 3
  %10 = ptrtoint ptr %vsync_source12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vsync_source12, align 4
  %12 = add i32 %11, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %if.then16, label %for.end.cleanup26_crit_edge

for.end.cleanup26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup26

if.then16:                                        ; preds = %for.end
  %switch.tableidx = add i32 %11, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 4
  br i1 %14, label %switch.lookup, label %if.then16.sw.epilog_crit_edge

if.then16.sw.epilog_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_hw_setup_vsync_source, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep62 = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_hw_setup_vsync_source.10, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep62 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load63 = load i32, ptr %switch.gep62, align 4
  %switch.gep64 = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_hw_setup_vsync_source.11, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep64 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load65 = load i32, ptr %switch.gep64, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then16.sw.epilog_crit_edge
  %wd_load_value.0 = phi i32 [ %switch.load, %switch.lookup ], [ 904, %if.then16.sw.epilog_crit_edge ]
  %wd_ctl.0 = phi i32 [ %switch.load63, %switch.lookup ], [ 896, %if.then16.sw.epilog_crit_edge ]
  %wd_ctl2.0 = phi i32 [ %switch.load65, %switch.lookup ], [ 900, %if.then16.sw.epilog_crit_edge ]
  %frame_rate = getelementptr inbounds %struct.dpu_vsync_source_cfg, ptr %cfg, i32 0, i32 1
  %18 = ptrtoint ptr %frame_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_rate, align 4
  %mul = shl i32 %19, 4
  %div = udiv i32 19200000, %mul
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %wd_load_value.0, i32 noundef %div, ptr noundef nonnull @.str.6) #3
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %wd_ctl.0, i32 noundef 1, ptr noundef nonnull @.str.7) #3
  %call22 = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef %wd_ctl2.0) #3
  %or24 = or i32 %call22, 257
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %wd_ctl2.0, i32 noundef %or24, ptr noundef nonnull @.str.8) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  br label %cleanup26

cleanup26:                                        ; preds = %sw.epilog, %for.end.cleanup26_crit_edge, %lor.lhs.false2.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_get_safe_status(ptr noundef %mdp, ptr noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mdp, null
  %tobool1.not = icmp eq ptr %status, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hw = getelementptr inbounds %struct.dpu_hw_mdp, ptr %mdp, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 868) #3
  %0 = trunc i32 %call to i8
  %conv = and i8 %0, 1
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %status, align 1
  %2 = lshr i8 %0, 4
  %conv5 = and i8 %2, 1
  %arrayidx = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv5, ptr %arrayidx, align 1
  %4 = lshr i8 %0, 6
  %conv8 = and i8 %4, 1
  %arrayidx10 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv8, ptr %arrayidx10, align 1
  %shr11 = lshr i32 %call, 8
  %6 = trunc i32 %shr11 to i8
  %conv13 = and i8 %6, 1
  %arrayidx15 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv13, ptr %arrayidx15, align 1
  %shr16 = lshr i32 %call, 10
  %8 = trunc i32 %shr16 to i8
  %conv18 = and i8 %8, 1
  %arrayidx20 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv18, ptr %arrayidx20, align 1
  %shr21 = lshr i32 %call, 12
  %10 = trunc i32 %shr21 to i8
  %conv23 = and i8 %10, 1
  %arrayidx25 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv23, ptr %arrayidx25, align 1
  %shr26 = lshr i32 %call, 14
  %12 = trunc i32 %shr26 to i8
  %conv28 = and i8 %12, 1
  %arrayidx30 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 6
  %13 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv28, ptr %arrayidx30, align 1
  %shr31 = lshr i32 %call, 16
  %14 = trunc i32 %shr31 to i8
  %conv33 = and i8 %14, 1
  %arrayidx35 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 7
  %15 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv33, ptr %arrayidx35, align 1
  %shr36 = lshr i32 %call, 18
  %16 = trunc i32 %shr36 to i8
  %conv38 = and i8 %16, 1
  %arrayidx40 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 8
  %17 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv38, ptr %arrayidx40, align 1
  %shr41 = lshr i32 %call, 20
  %18 = trunc i32 %shr41 to i8
  %conv43 = and i8 %18, 1
  %arrayidx45 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 9
  %19 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv43, ptr %arrayidx45, align 1
  %shr46 = lshr i32 %call, 22
  %20 = trunc i32 %shr46 to i8
  %conv48 = and i8 %20, 1
  %arrayidx50 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 10
  %21 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv48, ptr %arrayidx50, align 1
  %shr51 = lshr i32 %call, 28
  %22 = trunc i32 %shr51 to i8
  %conv53 = and i8 %22, 1
  %arrayidx55 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 11
  %23 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv53, ptr %arrayidx55, align 1
  %shr56 = lshr i32 %call, 30
  %24 = trunc i32 %shr56 to i8
  %conv58 = and i8 %24, 1
  %arrayidx60 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 12
  %25 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv58, ptr %arrayidx60, align 1
  %shr61 = lshr i32 %call, 24
  %26 = trunc i32 %shr61 to i8
  %conv63 = and i8 %26, 1
  %arrayidx65 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 13
  %27 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv63, ptr %arrayidx65, align 1
  %shr66 = lshr i32 %call, 26
  %28 = trunc i32 %shr66 to i8
  %conv68 = and i8 %28, 1
  %arrayidx70 = getelementptr %struct.dpu_danger_safe_status, ptr %status, i32 0, i32 1, i32 14
  %29 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv68, ptr %arrayidx70, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_intf_audio_select(ptr noundef %mdp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mdp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hw = getelementptr inbounds %struct.dpu_hw_mdp, ptr %mdp, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 1032, i32 noundef 1, ptr noundef nonnull @.str.9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c", i32 85, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c", i32 86, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c", i32 87, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c", i32 88, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c", i32 117, i32 2}
!10 = !{ptr @dpu_hw_setup_vsync_source.pp_offset, !11, !"pp_offset", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c", i32 159, i32 19}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c", i32 175, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c", i32 208, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c", i32 211, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c", i32 215, i32 3}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c", i32 260, i32 2}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i8 0, i8 2}
!32 = !{i64 2157263440}
