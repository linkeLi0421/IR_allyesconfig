; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_hw_dspp = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_dspp_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_dspp_ops = type { ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_dspp_cfg = type { [16 x i8], i32, i32, i32, i32, ptr }
%struct.dpu_dspp_sub_blks = type { %struct.dpu_pp_blk, %struct.dpu_pp_blk }
%struct.dpu_pp_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_hw_pcc_coeff = type { i32, i32, i32 }
%struct.dpu_hw_pcc_cfg = type { %struct.dpu_hw_pcc_coeff, %struct.dpu_hw_pcc_coeff, %struct.dpu_hw_pcc_coeff }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid ctx %pK\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid ctx %pK pcc base 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disable pcc feature\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"base\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"base + PCC_RED_R_OFF\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"base + PCC_RED_G_OFF\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"base + PCC_RED_B_OFF\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"base + PCC_GREEN_R_OFF\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"base + PCC_GREEN_G_OFF\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"base + PCC_GREEN_B_OFF\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"base + PCC_BLUE_R_OFF\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"base + PCC_BLUE_G_OFF\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"base + PCC_BLUE_B_OFF\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 32, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 39, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 44, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 45, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 49, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 50, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 51, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 53, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 54, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 55, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 57, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 58, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [47 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 59, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_dspp_init(i32 noundef %idx, ptr noundef %addr, ptr noundef readonly %m) local_unnamed_addr #0 align 64 {
entry:
  %features.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %addr, null
  %tobool1.not = icmp eq ptr %m, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #7
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %hw = getelementptr inbounds %struct.dpu_hw_dspp, ptr %call7.i.i, i32 0, i32 1
  %tobool3.not.i = icmp eq ptr %hw, null
  br i1 %tobool3.not.i, label %if.end6.if.then9_crit_edge, label %for.cond.preheader.i

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

for.cond.preheader.i:                             ; preds = %if.end6
  %dspp_count.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 21
  %1 = ptrtoint ptr %dspp_count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dspp_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp35.not.i = icmp eq i32 %2, 0
  br i1 %cmp35.not.i, label %for.cond.preheader.i.if.then9_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.then9_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %dspp4.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 22
  %3 = ptrtoint ptr %dspp4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dspp4.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.dpu_dspp_cfg, ptr %4, i32 %i.036.i, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %idx)
  %cmp5.i = icmp eq i32 %6, %idx
  br i1 %cmp5.i, label %_dspp_offset.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.if.then9_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.then9_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

_dspp_offset.exit:                                ; preds = %for.body.i
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %addr, ptr %hw, align 8
  %base.i = getelementptr %struct.dpu_dspp_cfg, ptr %4, i32 %i.036.i, i32 2
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 4
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_dspp, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %blk_off.i, align 4
  %len.i = getelementptr %struct.dpu_dspp_cfg, ptr %4, i32 %i.036.i, i32 3
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %length.i = getelementptr inbounds %struct.dpu_hw_dspp, ptr %call7.i.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %length.i, align 8
  %14 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m, align 4
  %hwversion11.i = getelementptr inbounds %struct.dpu_hw_dspp, ptr %call7.i.i, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %hwversion11.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hwversion11.i, align 8
  %log_mask.i = getelementptr inbounds %struct.dpu_hw_dspp, ptr %call7.i.i, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1024, ptr %log_mask.i, align 4
  %arrayidx13.i = getelementptr %struct.dpu_dspp_cfg, ptr %4, i32 %i.036.i
  %tobool.not.i26 = icmp eq ptr %arrayidx13.i, null
  %cmp.i = icmp ugt ptr %arrayidx13.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i26, %cmp.i
  br i1 %spec.select.i, label %_dspp_offset.exit.if.then9_crit_edge, label %if.end11

_dspp_offset.exit.if.then9_crit_edge:             ; preds = %_dspp_offset.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.then9:                                         ; preds = %_dspp_offset.exit.if.then9_crit_edge, %for.inc.i.if.then9_crit_edge, %for.cond.preheader.i.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.end11:                                         ; preds = %_dspp_offset.exit
  %idx12 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %idx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %idx, ptr %idx12, align 8
  %cap = getelementptr inbounds %struct.dpu_hw_dspp, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx13.i, ptr %cap, align 4
  %features = getelementptr %struct.dpu_dspp_cfg, ptr %4, i32 %i.036.i, i32 4
  %20 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %features, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %features.addr.i)
  %22 = ptrtoint ptr %features.addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %features.addr.i, align 4
  %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0..i = load volatile i32, ptr %features.addr.i, align 4
  %23 = and i32 %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0..i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i27 = icmp eq i32 %23, 0
  br i1 %tobool.not.i27, label %if.end11._setup_dspp_ops.exit_crit_edge, label %if.then.i

if.end11._setup_dspp_ops.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %_setup_dspp_ops.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %ops.i = getelementptr inbounds %struct.dpu_hw_dspp, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dpu_setup_dspp_pcc, ptr %ops.i, align 8
  br label %_setup_dspp_ops.exit

_setup_dspp_ops.exit:                             ; preds = %if.then.i, %if.end11._setup_dspp_ops.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %features.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %_setup_dspp_ops.exit, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then9 ], [ %call7.i.i, %_setup_dspp_ops.exit ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_hw_dspp_destroy(ptr noundef %dspp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dspp) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_setup_dspp_pcc(ptr noundef %ctx, ptr noundef readonly %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cap = getelementptr inbounds %struct.dpu_hw_dspp, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap, align 4
  %sblk = getelementptr inbounds %struct.dpu_dspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk, align 4
  %base1 = getelementptr inbounds %struct.dpu_dspp_sub_blks, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, ptr noundef nonnull %ctx, i32 noundef 0) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %cfg, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2) #4
  %hw = getelementptr inbounds %struct.dpu_hw_dspp, ptr %ctx, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %5, i32 noundef 0, ptr noundef nonnull @.str.3) #4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %hw8 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %ctx, i32 0, i32 1
  %add = add i32 %5, 16
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cfg, align 4
  tail call void @dpu_reg_write(ptr noundef %hw8, i32 noundef %add, i32 noundef %7, ptr noundef nonnull @.str.4) #4
  %add11 = add i32 %5, 28
  %g = getelementptr inbounds %struct.dpu_hw_pcc_coeff, ptr %cfg, i32 0, i32 1
  %8 = ptrtoint ptr %g to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %g, align 4
  tail call void @dpu_reg_write(ptr noundef %hw8, i32 noundef %add11, i32 noundef %9, ptr noundef nonnull @.str.5) #4
  %add14 = add i32 %5, 40
  %b = getelementptr inbounds %struct.dpu_hw_pcc_coeff, ptr %cfg, i32 0, i32 2
  %10 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b, align 4
  tail call void @dpu_reg_write(ptr noundef %hw8, i32 noundef %add14, i32 noundef %11, ptr noundef nonnull @.str.6) #4
  %add17 = add i32 %5, 20
  %g18 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %cfg, i32 0, i32 1
  %12 = ptrtoint ptr %g18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %g18, align 4
  tail call void @dpu_reg_write(ptr noundef %hw8, i32 noundef %add17, i32 noundef %13, ptr noundef nonnull @.str.7) #4
  %add21 = add i32 %5, 32
  %g23 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %g23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %g23, align 4
  tail call void @dpu_reg_write(ptr noundef %hw8, i32 noundef %add21, i32 noundef %15, ptr noundef nonnull @.str.8) #4
  %add25 = add i32 %5, 44
  %b27 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %cfg, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %b27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %b27, align 4
  tail call void @dpu_reg_write(ptr noundef %hw8, i32 noundef %add25, i32 noundef %17, ptr noundef nonnull @.str.9) #4
  %add29 = add i32 %5, 24
  %b30 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %cfg, i32 0, i32 2
  %18 = ptrtoint ptr %b30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %b30, align 4
  tail call void @dpu_reg_write(ptr noundef %hw8, i32 noundef %add29, i32 noundef %19, ptr noundef nonnull @.str.10) #4
  %add33 = add i32 %5, 36
  %g35 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %cfg, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %g35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %g35, align 4
  tail call void @dpu_reg_write(ptr noundef %hw8, i32 noundef %add33, i32 noundef %21, ptr noundef nonnull @.str.11) #4
  %add37 = add i32 %5, 48
  %b39 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %cfg, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %b39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b39, align 4
  tail call void @dpu_reg_write(ptr noundef %hw8, i32 noundef %add37, i32 noundef %23, ptr noundef nonnull @.str.12) #4
  tail call void @dpu_reg_write(ptr noundef %hw8, i32 noundef %5, i32 noundef 1, ptr noundef nonnull @.str.3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c", i32 32, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c", i32 39, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c", i32 44, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c", i32 45, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c", i32 49, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c", i32 50, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c", i32 51, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c", i32 53, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c", i32 54, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c", i32 55, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c", i32 57, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c", i32 58, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c", i32 59, i32 2}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
