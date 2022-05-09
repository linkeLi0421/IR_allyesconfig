; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_hw_pingpong = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_pingpong_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_pingpong_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_pingpong_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dpu_hw_tear_check = type { i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dpu_hw_pp_vsync_info = type { i32, i32, i32, i32 }
%struct.dpu_pingpong_sub_blks = type { %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk }
%struct.dpu_pp_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_hw_dither_cfg = type { i64, i32, i32, i32, i32, i32, [16 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PP_SYNC_CONFIG_VSYNC\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PP_SYNC_CONFIG_HEIGHT\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PP_VSYNC_INIT_VAL\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PP_RD_PTR_IRQ\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PP_START_POS\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PP_SYNC_THRESH\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PP_SYNC_WRCOUNT\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PP_TEAR_CHECK_EN\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_pp_connect_ext_te = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", [54 x i8] zeroinitializer }, align 32
@trace_dpu_pp_connect_ext_te.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PP_AUTOREFRESH_CONFIG\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"base + PP_DITHER_EN\00", [44 x i8] zeroinitializer }, align 32
@dither_depth_map = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2], [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"base + PP_DITHER_BITDEPTH\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"base + PP_DITHER_MATRIX + i\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 110, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 111, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 112, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 113, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 114, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 115, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 118, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 172, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [45 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 860, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 108, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 127, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 158, i32 7 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 72, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"dither_depth_map\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 38, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 82, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [51 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 89, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @dither_depth_map, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dither_depth_map to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_pingpong_init(i32 noundef %idx, ptr noundef %addr, ptr nocapture noundef readonly %m) local_unnamed_addr #0 align 64 {
entry:
  %features.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 1
  %pingpong_count.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 10
  %1 = ptrtoint ptr %pingpong_count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pingpong_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp24.not.i = icmp eq i32 %2, 0
  br i1 %cmp24.not.i, label %if.end.if.then4_crit_edge, label %for.body.lr.ph.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

for.body.lr.ph.i:                                 ; preds = %if.end
  %pingpong.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 11
  %3 = ptrtoint ptr %pingpong.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pingpong.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.dpu_pingpong_cfg, ptr %4, i32 %i.025.i, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %idx)
  %cmp1.i = icmp eq i32 %6, %idx
  br i1 %cmp1.i, label %_pingpong_offset.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.if.then4_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then4_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

_pingpong_offset.exit:                            ; preds = %for.body.i
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %addr, ptr %hw, align 8
  %base.i = getelementptr %struct.dpu_pingpong_cfg, ptr %4, i32 %i.025.i, i32 2
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 4
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %blk_off.i, align 4
  %len.i = getelementptr %struct.dpu_pingpong_cfg, ptr %4, i32 %i.025.i, i32 3
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %length.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %length.i, align 8
  %14 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m, align 4
  %hwversion6.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %hwversion6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hwversion6.i, align 8
  %log_mask.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %log_mask.i, align 4
  %arrayidx8.i = getelementptr %struct.dpu_pingpong_cfg, ptr %4, i32 %i.025.i
  %tobool.not.i = icmp eq ptr %arrayidx8.i, null
  %cmp.i = icmp ugt ptr %arrayidx8.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %_pingpong_offset.exit.if.then4_crit_edge, label %if.end6

_pingpong_offset.exit.if.then4_crit_edge:         ; preds = %_pingpong_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %_pingpong_offset.exit.if.then4_crit_edge, %for.inc.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end6:                                          ; preds = %_pingpong_offset.exit
  %idx7 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %idx7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %idx, ptr %idx7, align 8
  %caps = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx8.i, ptr %caps, align 4
  %features = getelementptr %struct.dpu_pingpong_cfg, ptr %4, i32 %i.025.i, i32 4
  %20 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %features, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %features.addr.i)
  %22 = ptrtoint ptr %features.addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %features.addr.i, align 4
  %ops.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dpu_hw_pp_setup_te_config, ptr %ops.i, align 4
  %enable_tearcheck.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %enable_tearcheck.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dpu_hw_pp_enable_te, ptr %enable_tearcheck.i, align 8
  %connect_external_te.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 5, i32 2
  %25 = ptrtoint ptr %connect_external_te.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dpu_hw_pp_connect_external_te, ptr %connect_external_te.i, align 4
  %get_vsync_info.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 5, i32 3
  %26 = ptrtoint ptr %get_vsync_info.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @dpu_hw_pp_get_vsync_info, ptr %get_vsync_info.i, align 8
  %setup_autorefresh.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 5, i32 4
  %27 = ptrtoint ptr %setup_autorefresh.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dpu_hw_pp_setup_autorefresh_config, ptr %setup_autorefresh.i, align 4
  %get_autorefresh.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 5, i32 5
  %28 = ptrtoint ptr %get_autorefresh.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dpu_hw_pp_get_autorefresh_config, ptr %get_autorefresh.i, align 8
  %poll_timeout_wr_ptr.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 5, i32 6
  %29 = ptrtoint ptr %poll_timeout_wr_ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dpu_hw_pp_poll_timeout_wr_ptr, ptr %poll_timeout_wr_ptr.i, align 4
  %get_line_count.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 5, i32 7
  %30 = ptrtoint ptr %get_line_count.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dpu_hw_pp_get_line_count, ptr %get_line_count.i, align 8
  %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0..i = load volatile i32, ptr %features.addr.i, align 4
  %31 = and i32 %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0..i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i19 = icmp eq i32 %31, 0
  br i1 %tobool.not.i19, label %if.end6._setup_pingpong_ops.exit_crit_edge, label %if.then.i20

if.end6._setup_pingpong_ops.exit_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %_setup_pingpong_ops.exit

if.then.i20:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %setup_dither.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %call7.i.i, i32 0, i32 5, i32 8
  %32 = ptrtoint ptr %setup_dither.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @dpu_hw_pp_setup_dither, ptr %setup_dither.i, align 4
  br label %_setup_pingpong_ops.exit

_setup_pingpong_ops.exit:                         ; preds = %if.then.i20, %if.end6._setup_pingpong_ops.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %features.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %_setup_pingpong_ops.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then4 ], [ %call7.i.i, %_setup_pingpong_ops.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_hw_pingpong_destroy(ptr noundef %pp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %pp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_hw_pp_setup_te_config(ptr noundef %pp, ptr noundef readonly %te) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pp, null
  %tobool1.not = icmp eq ptr %te, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %pp, i32 0, i32 1
  %hw_vsync_mode = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %te, i32 0, i32 7
  %0 = ptrtoint ptr %hw_vsync_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_vsync_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool2.not, i32 524288, i32 1572864
  %2 = ptrtoint ptr %te to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %te, align 4
  %or5 = or i32 %spec.select, %3
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 4, i32 noundef %or5, ptr noundef nonnull @.str) #7
  %sync_cfg_height = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %te, i32 0, i32 1
  %4 = ptrtoint ptr %sync_cfg_height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sync_cfg_height, align 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 8, i32 noundef %5, ptr noundef nonnull @.str.1) #7
  %vsync_init_val = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %te, i32 0, i32 2
  %6 = ptrtoint ptr %vsync_init_val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsync_init_val, align 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 16, i32 noundef %7, ptr noundef nonnull @.str.2) #7
  %rd_ptr_irq = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %te, i32 0, i32 6
  %8 = ptrtoint ptr %rd_ptr_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rd_ptr_irq, align 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 32, i32 noundef %9, ptr noundef nonnull @.str.3) #7
  %start_pos = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %te, i32 0, i32 5
  %10 = ptrtoint ptr %start_pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start_pos, align 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 28, i32 noundef %11, ptr noundef nonnull @.str.4) #7
  %sync_threshold_continue = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %te, i32 0, i32 4
  %12 = ptrtoint ptr %sync_threshold_continue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sync_threshold_continue, align 4
  %shl = shl i32 %13, 16
  %sync_threshold_start = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %te, i32 0, i32 3
  %14 = ptrtoint ptr %sync_threshold_start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sync_threshold_start, align 4
  %or6 = or i32 %shl, %15
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 24, i32 noundef %or6, ptr noundef nonnull @.str.5) #7
  %16 = ptrtoint ptr %start_pos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %start_pos, align 4
  %18 = ptrtoint ptr %sync_threshold_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sync_threshold_start, align 4
  %add = add i32 %17, 1
  %add9 = add i32 %add, %19
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 12, i32 noundef %add9, ptr noundef nonnull @.str.6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_hw_pp_enable_te(ptr noundef %pp, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %pp, i32 0, i32 1
  %conv = zext i1 %enable to i32
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 0, i32 noundef %conv, ptr noundef nonnull @.str.7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_hw_pp_connect_external_te(ptr noundef %pp, i1 noundef zeroext %enable_external_te) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hw1 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %pp, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw1, i32 noundef 4) #7
  %and = lshr i32 %call, 20
  %and.lobit = and i32 %and, 1
  %and5 = and i32 %call, -1048577
  %masksel = select i1 %enable_external_te, i32 1048576, i32 0
  %cfg.0 = or i32 %and5, %masksel
  tail call void @dpu_reg_write(ptr noundef %hw1, i32 noundef 4, i32 noundef %cfg.0, ptr noundef nonnull @.str) #7
  %idx = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  %sub = add i32 %1, -1
  tail call fastcc void @trace_dpu_pp_connect_ext_te(i32 noundef %sub, i32 noundef %cfg.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.lobit, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_hw_pp_get_vsync_info(ptr noundef %pp, ptr noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pp, null
  %tobool1.not = icmp eq ptr %info, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %pp, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 16) #7
  %and = and i32 %call, 65535
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %and, ptr %info, align 4
  %call2 = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 20) #7
  %shr = lshr i32 %call2, 16
  %rd_ptr_frame_count = getelementptr inbounds %struct.dpu_hw_pp_vsync_info, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %rd_ptr_frame_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shr, ptr %rd_ptr_frame_count, align 4
  %and4 = and i32 %call2, 65535
  %rd_ptr_line_count = getelementptr inbounds %struct.dpu_hw_pp_vsync_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %rd_ptr_line_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and4, ptr %rd_ptr_line_count, align 4
  %call5 = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 44) #7
  %and6 = and i32 %call5, 65535
  %wr_ptr_line_count = getelementptr inbounds %struct.dpu_hw_pp_vsync_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %wr_ptr_line_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and6, ptr %wr_ptr_line_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_pp_setup_autorefresh_config(ptr noundef %pp, i32 noundef %frame_count, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %frame_count, -2147483648
  %spec.select = select i1 %enable, i32 %or, i32 0
  %hw = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %pp, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 48, i32 noundef %spec.select, ptr noundef nonnull @.str.11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dpu_hw_pp_get_autorefresh_config(ptr noundef %pp, ptr noundef writeonly %frame_count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %pp, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 48) #7
  %cmp.not = icmp eq ptr %frame_count, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call, 65535
  %0 = ptrtoint ptr %frame_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %and, ptr %frame_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp slt i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_hw_pp_poll_timeout_wr_ptr(ptr noundef readonly %pp, i32 noundef %timeout_us) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %pp, i32 0, i32 1
  %conv = zext i32 %timeout_us to i64
  %call = tail call i64 @ktime_get() #7
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %call, %mul.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 159) #7
  %blk_off = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %pp, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %blk_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blk_off, align 4
  %add.ptr54 = getelementptr i8, ptr %1, i32 %3
  %add.ptr1155 = getelementptr i8, ptr %add.ptr54, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1155) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %5 = and i32 %4, -65536
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp14.not57 = icmp eq i32 %5, 0
  br i1 %cmp14.not57, label %if.end17.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end17.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout_us)
  %tobool18.not = icmp eq i32 %timeout_us, 0
  br label %if.end17

if.end17:                                         ; preds = %if.then35.if.end17_crit_edge, %if.end17.lr.ph
  br i1 %tobool18.not, label %if.end17.if.then35_crit_edge, label %land.lhs.true

if.end17.if.then35_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

land.lhs.true:                                    ; preds = %if.end17
  %call19 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call19, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call19, %add.i
  br i1 %cmp3.i, label %if.then23, label %land.lhs.true.if.then35_crit_edge

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %9 = ptrtoint ptr %blk_off to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blk_off, align 4
  %add.ptr28 = getelementptr i8, ptr %8, i32 %10
  %add.ptr29 = getelementptr i8, ptr %add.ptr28, i32 44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %12 = and i32 %11, -65536
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  br label %for.end

if.then35:                                        ; preds = %land.lhs.true.if.then35_crit_edge, %if.end17.if.then35_crit_edge
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %16 = ptrtoint ptr %blk_off to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blk_off, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 44
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %cmp14.not = icmp ult i32 %18, 65536
  br i1 %cmp14.not, label %if.then35.if.end17_crit_edge, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35.if.end17_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

for.end:                                          ; preds = %if.then23, %if.end.for.end_crit_edge
  %and38.pre-phi = phi i32 [ %6, %if.end.for.end_crit_edge ], [ %13, %if.then23 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.pre-phi)
  %cmp39.not = icmp eq i32 %and38.pre-phi, 0
  %spec.select = select i1 %cmp39.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then35.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %for.end ], [ 0, %if.then35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_hw_pp_get_line_count(ptr noundef %pp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw1 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %pp, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw1, i32 noundef 16) #7
  %and = and i32 %call, 65535
  %call2 = tail call i32 @dpu_reg_read(ptr noundef %hw1, i32 noundef 8) #7
  %and3 = and i32 %call2, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %and)
  %cmp = icmp ult i32 %and3, %and
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @dpu_reg_read(ptr noundef %hw1, i32 noundef 20) #7
  %and7 = and i32 %call6, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and7, i32 %and)
  %cmp8 = icmp ult i32 %and7, %and
  %sub = xor i32 %and, 65535
  %0 = sub nsw i32 0, %and
  %line.0.p = select i1 %cmp8, i32 %sub, i32 %0
  %line.0 = add nsw i32 %line.0.p, %and7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %line.0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ 65535, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_pp_setup_dither(ptr noundef %pp, ptr noundef readonly %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %pp, i32 0, i32 1
  %caps = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %pp, i32 0, i32 3
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 4
  %sblk = getelementptr inbounds %struct.dpu_pingpong_cfg, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %sblk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk, align 4
  %base1 = getelementptr inbounds %struct.dpu_pingpong_sub_blks, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base1, align 4
  %tobool.not = icmp eq ptr %cfg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %c0_bitdepth = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 2
  %6 = ptrtoint ptr %c0_bitdepth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c0_bitdepth, align 4
  %arrayidx = getelementptr [9 x i32], ptr @dither_depth_map, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %and = and i32 %9, 3
  %c1_bitdepth = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 3
  %10 = ptrtoint ptr %c1_bitdepth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c1_bitdepth, align 8
  %arrayidx2 = getelementptr [9 x i32], ptr @dither_depth_map, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2, align 4
  %and3 = shl i32 %13, 2
  %shl = and i32 %and3, 12
  %or = or i32 %shl, %and
  %c2_bitdepth = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 4
  %14 = ptrtoint ptr %c2_bitdepth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c2_bitdepth, align 4
  %arrayidx4 = getelementptr [9 x i32], ptr @dither_depth_map, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4, align 4
  %and5 = shl i32 %17, 4
  %shl6 = and i32 %and5, 48
  %or7 = or i32 %or, %shl6
  %c3_bitdepth = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 5
  %18 = ptrtoint ptr %c3_bitdepth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c3_bitdepth, align 8
  %arrayidx8 = getelementptr [9 x i32], ptr @dither_depth_map, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8, align 4
  %and9 = shl i32 %21, 6
  %shl10 = and i32 %and9, 192
  %or11 = or i32 %or7, %shl10
  %temporal_en = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 1
  %22 = ptrtoint ptr %temporal_en to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %temporal_en, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.not = icmp eq i32 %23, 0
  %cond = select i1 %tobool12.not, i32 0, i32 256
  %or13 = or i32 %or11, %cond
  %add14 = add i32 %5, 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add14, i32 noundef %or13, ptr noundef nonnull @.str.14) #7
  %add35 = add i32 %5, 8
  %arrayidx15 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 0
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx15, align 4
  %and16 = and i32 %25, 15
  %arrayidx19 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx19, align 4
  %and20 = shl i32 %27, 4
  %shl21 = and i32 %and20, 240
  %or22 = or i32 %shl21, %and16
  %arrayidx25 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx25, align 4
  %and26 = shl i32 %29, 8
  %shl27 = and i32 %and26, 3840
  %or28 = or i32 %or22, %shl27
  %arrayidx31 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 3
  %30 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx31, align 4
  %and32 = shl i32 %31, 12
  %shl33 = and i32 %and32, 61440
  %or34 = or i32 %or28, %shl33
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add35, i32 noundef %or34, ptr noundef nonnull @.str.15) #7
  %arrayidx15.1 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 4
  %32 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx15.1, align 4
  %and16.1 = and i32 %33, 15
  %arrayidx19.1 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 5
  %34 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx19.1, align 4
  %and20.1 = shl i32 %35, 4
  %shl21.1 = and i32 %and20.1, 240
  %or22.1 = or i32 %shl21.1, %and16.1
  %arrayidx25.1 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 6
  %36 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx25.1, align 4
  %and26.1 = shl i32 %37, 8
  %shl27.1 = and i32 %and26.1, 3840
  %or28.1 = or i32 %or22.1, %shl27.1
  %arrayidx31.1 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 7
  %38 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx31.1, align 4
  %and32.1 = shl i32 %39, 12
  %shl33.1 = and i32 %and32.1, 61440
  %or34.1 = or i32 %or28.1, %shl33.1
  %add36.1 = add i32 %5, 12
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add36.1, i32 noundef %or34.1, ptr noundef nonnull @.str.15) #7
  %arrayidx15.2 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 8
  %40 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx15.2, align 4
  %and16.2 = and i32 %41, 15
  %arrayidx19.2 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 9
  %42 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx19.2, align 4
  %and20.2 = shl i32 %43, 4
  %shl21.2 = and i32 %and20.2, 240
  %or22.2 = or i32 %shl21.2, %and16.2
  %arrayidx25.2 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 10
  %44 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx25.2, align 4
  %and26.2 = shl i32 %45, 8
  %shl27.2 = and i32 %and26.2, 3840
  %or28.2 = or i32 %or22.2, %shl27.2
  %arrayidx31.2 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 11
  %46 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx31.2, align 4
  %and32.2 = shl i32 %47, 12
  %shl33.2 = and i32 %and32.2, 61440
  %or34.2 = or i32 %or28.2, %shl33.2
  %add36.2 = add i32 %5, 16
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add36.2, i32 noundef %or34.2, ptr noundef nonnull @.str.15) #7
  %arrayidx15.3 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 12
  %48 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx15.3, align 4
  %and16.3 = and i32 %49, 15
  %arrayidx19.3 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 13
  %50 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx19.3, align 4
  %and20.3 = shl i32 %51, 4
  %shl21.3 = and i32 %and20.3, 240
  %or22.3 = or i32 %shl21.3, %and16.3
  %arrayidx25.3 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 14
  %52 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx25.3, align 4
  %and26.3 = shl i32 %53, 8
  %shl27.3 = and i32 %and26.3, 3840
  %or28.3 = or i32 %or22.3, %shl27.3
  %arrayidx31.3 = getelementptr %struct.dpu_hw_dither_cfg, ptr %cfg, i32 0, i32 6, i32 15
  %54 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx31.3, align 4
  %and32.3 = shl i32 %55, 12
  %shl33.3 = and i32 %and32.3, 61440
  %or34.3 = or i32 %or28.3, %shl33.3
  %add36.3 = add i32 %5, 20
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add36.3, i32 noundef %or34.3, ptr noundef nonnull @.str.15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %.sink = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %5, i32 noundef %.sink, ptr noundef nonnull @.str.13) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_pp_connect_ext_te(i32 noundef %pp, i32 noundef %cfg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_pp_connect_ext_te, i32 0, i32 1), ptr blockaddress(@trace_dpu_pp_connect_ext_te, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !49

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !50

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %call42 = tail call i32 @__traceiter_dpu_pp_connect_ext_te(ptr noundef null, i32 noundef %pp, i32 noundef %cfg) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %13 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !50

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_pp_connect_ext_te, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_pp_connect_ext_te, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_pp_connect_ext_te.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_dpu_pp_connect_ext_te.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 872, ptr noundef nonnull @.str.9) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  %31 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_pp_connect_ext_te(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !26, !28, !30, !32, !34}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c", i32 110, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c", i32 111, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c", i32 112, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c", i32 113, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c", i32 114, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c", i32 115, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c", i32 118, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c", i32 172, i32 2}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 860, i32 1}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c", i32 127, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c", i32 158, i32 7}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c", i32 72, i32 3}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c", i32 82, i32 2}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c", i32 89, i32 3}
!34 = !{ptr @dither_depth_map, !35, !"dither_depth_map", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c", i32 38, i32 12}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2989504}
!47 = !{i64 2158664811}
!48 = !{i64 2158665357}
!49 = !{i64 2148704696, i64 2148704701, i64 2148704714, i64 2148704758, i64 2148704792, i64 2148704813}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2158491247}
!52 = !{i64 2158491466}
!53 = !{i64 2149344450}
!54 = !{i64 2149345486}
