; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_vbif.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_vbif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_vbif_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_qos_tbl, %struct.dpu_vbif_qos_tbl, i32, [16 x i32] }
%struct.dpu_vbif_dynamic_ot_tbl = type { i32, ptr }
%struct.dpu_vbif_qos_tbl = type { i32, ptr }
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_vbif = type { %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_vbif_ops }
%struct.dpu_hw_vbif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reg_off\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VBIF_XIN_HALT_CTRL0\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VBIF_XINL_QOS_RP_REMAP_000 + reg_high\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_lvl + reg_high\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VBIF_XIN_CLR_ERR\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VBIF_WRITE_GATHER_EN\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 103, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 141, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 181, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 182, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 52, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [47 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_vbif.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 197, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_vbif_init(i32 noundef %idx, ptr noundef %addr, ptr nocapture noundef readonly %m) local_unnamed_addr #0 align 64 {
entry:
  %cap.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %vbif_count.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 16
  %1 = ptrtoint ptr %vbif_count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vbif_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp25.not.i = icmp eq i32 %2, 0
  br i1 %cmp25.not.i, label %if.end.if.then4_crit_edge, label %for.body.lr.ph.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

for.body.lr.ph.i:                                 ; preds = %if.end
  %vbif1.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 17
  %3 = ptrtoint ptr %vbif1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vbif1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.dpu_vbif_cfg, ptr %4, i32 %i.026.i, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %idx)
  %cmp2.i = icmp eq i32 %6, %idx
  br i1 %cmp2.i, label %_top_offset.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.if.then4_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.then4_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

_top_offset.exit:                                 ; preds = %for.body.i
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %addr, ptr %call7.i.i, align 8
  %base.i = getelementptr %struct.dpu_vbif_cfg, ptr %4, i32 %i.026.i, i32 2
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 4
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %blk_off.i, align 4
  %len.i = getelementptr %struct.dpu_vbif_cfg, ptr %4, i32 %i.026.i, i32 3
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %length.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %length.i, align 8
  %14 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m, align 4
  %hwversion7.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %hwversion7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hwversion7.i, align 8
  %log_mask.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 256, ptr %log_mask.i, align 4
  %arrayidx9.i = getelementptr %struct.dpu_vbif_cfg, ptr %4, i32 %i.026.i
  %tobool.not.i = icmp eq ptr %arrayidx9.i, null
  %cmp.i = icmp ugt ptr %arrayidx9.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %_top_offset.exit.if.then4_crit_edge, label %if.end6

_top_offset.exit.if.then4_crit_edge:              ; preds = %_top_offset.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.then4:                                         ; preds = %_top_offset.exit.if.then4_crit_edge, %for.inc.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.end6:                                          ; preds = %_top_offset.exit
  %idx7 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %idx7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %idx, ptr %idx7, align 8
  %cap = getelementptr inbounds %struct.dpu_hw_vbif, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx9.i, ptr %cap, align 4
  %ops = getelementptr inbounds %struct.dpu_hw_vbif, ptr %call7.i.i, i32 0, i32 3
  %features = getelementptr %struct.dpu_vbif_cfg, ptr %4, i32 %i.026.i, i32 4
  %20 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %features, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap.addr.i)
  %22 = ptrtoint ptr %cap.addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %cap.addr.i, align 4
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dpu_hw_set_limit_conf, ptr %ops, align 8
  %get_limit_conf.i = getelementptr inbounds %struct.dpu_hw_vbif, ptr %call7.i.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %get_limit_conf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dpu_hw_get_limit_conf, ptr %get_limit_conf.i, align 4
  %set_halt_ctrl.i = getelementptr inbounds %struct.dpu_hw_vbif, ptr %call7.i.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %set_halt_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dpu_hw_set_halt_ctrl, ptr %set_halt_ctrl.i, align 8
  %get_halt_ctrl.i = getelementptr inbounds %struct.dpu_hw_vbif, ptr %call7.i.i, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %get_halt_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @dpu_hw_get_halt_ctrl, ptr %get_halt_ctrl.i, align 4
  %cap.addr.i.0.cap.addr.i.0.cap.addr.0.cap.addr.0..i = load volatile i32, ptr %cap.addr.i, align 4
  %27 = and i32 %cap.addr.i.0.cap.addr.i.0.cap.addr.0.cap.addr.0..i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i19 = icmp eq i32 %27, 0
  br i1 %tobool.not.i19, label %if.end6._setup_vbif_ops.exit_crit_edge, label %if.then.i20

if.end6._setup_vbif_ops.exit_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %_setup_vbif_ops.exit

if.then.i20:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %set_qos_remap.i = getelementptr inbounds %struct.dpu_hw_vbif, ptr %call7.i.i, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %set_qos_remap.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dpu_hw_set_qos_remap, ptr %set_qos_remap.i, align 8
  br label %_setup_vbif_ops.exit

_setup_vbif_ops.exit:                             ; preds = %if.then.i20, %if.end6._setup_vbif_ops.exit_crit_edge
  %set_mem_type.i = getelementptr inbounds %struct.dpu_hw_vbif, ptr %call7.i.i, i32 0, i32 3, i32 5
  %29 = ptrtoint ptr %set_mem_type.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dpu_hw_set_mem_type, ptr %set_mem_type.i, align 4
  %clear_errors.i = getelementptr inbounds %struct.dpu_hw_vbif, ptr %call7.i.i, i32 0, i32 3, i32 6
  %30 = ptrtoint ptr %clear_errors.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dpu_hw_clear_errors, ptr %clear_errors.i, align 8
  %set_write_gather_en.i = getelementptr inbounds %struct.dpu_hw_vbif, ptr %call7.i.i, i32 0, i32 3, i32 7
  %31 = ptrtoint ptr %set_write_gather_en.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @dpu_hw_set_write_gather_en, ptr %set_write_gather_en.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %_setup_vbif_ops.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then4 ], [ %call7.i.i, %_setup_vbif_ops.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_hw_vbif_destroy(ptr noundef %vbif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vbif) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_set_limit_conf(ptr noundef %vbif, i32 noundef %xin_id, i1 noundef zeroext %rd, i32 noundef %limit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %. = select i1 %rd, i32 176, i32 192
  %div10 = and i32 %xin_id, -4
  %add = add i32 %., %div10
  %rem = shl i32 %xin_id, 3
  %mul1 = and i32 %rem, 24
  %call = tail call i32 @dpu_reg_read(ptr noundef %vbif, i32 noundef %add) #4
  %shl = shl nuw i32 255, %mul1
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  %shl2 = shl i32 %limit, %mul1
  %or = or i32 %and, %shl2
  tail call void @dpu_reg_write(ptr noundef %vbif, i32 noundef %add, i32 noundef %or, ptr noundef nonnull @.str) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_hw_get_limit_conf(ptr noundef %vbif, i32 noundef %xin_id, i1 noundef zeroext %rd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %. = select i1 %rd, i32 176, i32 192
  %div4 = and i32 %xin_id, -4
  %add = add i32 %., %div4
  %rem = shl i32 %xin_id, 3
  %mul1 = and i32 %rem, 24
  %call = tail call i32 @dpu_reg_read(ptr noundef %vbif, i32 noundef %add) #4
  %shr = lshr i32 %call, %mul1
  %and = and i32 %shr, 255
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_set_halt_ctrl(ptr noundef %vbif, i32 noundef %xin_id, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dpu_reg_read(ptr noundef %vbif, i32 noundef 512) #4
  %shl = shl nuw i32 1, %xin_id
  %or = or i32 %call, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  %reg_val.0 = select i1 %enable, i32 %or, i32 %and
  tail call void @dpu_reg_write(ptr noundef %vbif, i32 noundef 512, i32 noundef %reg_val.0, ptr noundef nonnull @.str.1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dpu_hw_get_halt_ctrl(ptr noundef %vbif, i32 noundef %xin_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dpu_reg_read(ptr noundef %vbif, i32 noundef 516) #4
  %shl = shl nuw i32 1, %xin_id
  %and = and i32 %call, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_set_qos_remap(ptr noundef %vbif, i32 noundef %xin_id, i32 noundef %level, i32 noundef %remap_level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vbif, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hwversion = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %vbif, i32 0, i32 4
  %0 = ptrtoint ptr %hwversion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %1)
  %cmp = icmp ult i32 %1, 1073741824
  %cond = select i1 %cmp, i32 1392, i32 1424
  %2 = lshr i32 %xin_id, 1
  %mul = and i32 %2, 4
  %mul1 = shl i32 %level, 3
  %add = or i32 %mul, %mul1
  %and2 = shl i32 %xin_id, 2
  %mul3 = and i32 %and2, 28
  %add4 = add i32 %add, 1360
  %call = tail call i32 @dpu_reg_read(ptr noundef nonnull %vbif, i32 noundef %add4) #4
  %add5 = add i32 %cond, %add
  %call6 = tail call i32 @dpu_reg_read(ptr noundef nonnull %vbif, i32 noundef %add5) #4
  %shl = shl nuw nsw i32 7, %mul3
  %neg = xor i32 %shl, -1
  %and7 = and i32 %call, %neg
  %shl8 = shl i32 %remap_level, %mul3
  %and9 = and i32 %shl8, %shl
  %or = or i32 %and7, %and9
  %and11 = and i32 %call6, %neg
  %or14 = or i32 %and11, %and9
  tail call void @dpu_reg_write(ptr noundef nonnull %vbif, i32 noundef %add4, i32 noundef %or, ptr noundef nonnull @.str.2) #4
  tail call void @dpu_reg_write(ptr noundef nonnull %vbif, i32 noundef %add5, i32 noundef %or14, ptr noundef nonnull @.str.3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_set_mem_type(ptr noundef %vbif, i32 noundef %xin_id, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vbif, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %xin_id)
  %cmp = icmp ugt i32 %xin_id, 15
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %xin_id)
  %cmp3 = icmp ugt i32 %xin_id, 7
  %reg_off.0 = select i1 %cmp3, i32 356, i32 352
  %0 = shl nuw nsw i32 %xin_id, 2
  %mul = and i32 %0, 28
  %call = tail call i32 @dpu_reg_read(ptr noundef nonnull %vbif, i32 noundef %reg_off.0) #4
  %shl = shl nuw nsw i32 7, %mul
  %neg = xor i32 %shl, -1
  %and6 = and i32 %call, %neg
  %and7 = and i32 %value, 7
  %shl8 = shl nuw nsw i32 %and7, %mul
  %or = or i32 %and6, %shl8
  tail call void @dpu_reg_write(ptr noundef nonnull %vbif, i32 noundef %reg_off.0, i32 noundef %or, ptr noundef nonnull @.str) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_clear_errors(ptr noundef %vbif, ptr noundef writeonly %pnd_errors, ptr noundef writeonly %src_errors) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vbif, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @dpu_reg_read(ptr noundef nonnull %vbif, i32 noundef 400) #4
  %call1 = tail call i32 @dpu_reg_read(ptr noundef nonnull %vbif, i32 noundef 404) #4
  %tobool2.not = icmp eq ptr %pnd_errors, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %pnd_errors to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %pnd_errors, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %src_errors, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %src_errors to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %src_errors, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %or = or i32 %call1, %call
  tail call void @dpu_reg_write(ptr noundef nonnull %vbif, i32 noundef 412, i32 noundef %or, ptr noundef nonnull @.str.4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_set_write_gather_en(ptr noundef %vbif, i32 noundef %xin_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vbif, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %xin_id)
  %cmp = icmp ugt i32 %xin_id, 15
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @dpu_reg_read(ptr noundef nonnull %vbif, i32 noundef 172) #4
  %shl = shl nuw nsw i32 1, %xin_id
  %or = or i32 %call, %shl
  tail call void @dpu_reg_write(ptr noundef nonnull %vbif, i32 noundef 172, i32 noundef %or, ptr noundef nonnull @.str.5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_vbif.c", i32 103, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_vbif.c", i32 141, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_vbif.c", i32 181, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_vbif.c", i32 182, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_vbif.c", i32 52, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_vbif.c", i32 197, i32 2}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
