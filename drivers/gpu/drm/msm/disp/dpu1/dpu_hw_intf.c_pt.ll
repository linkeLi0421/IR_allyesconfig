; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dpu_hw_intf = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_intf_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_intf_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.intf_timing_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_format = type { %struct.msm_format, i32, [4 x i8], [4 x i8], i32, i8, i8, i8, i8, i8, i8, i32, [1 x i32], i16, i16 }
%struct.msm_format = type { i32 }
%struct.intf_prog_fetch = type { i8, i32 }
%struct.intf_status = type { i8, i8, i32, i32 }

@dpu_hw_intf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013failed to create dpu_hw_intf %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dpu_hw_intf_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c\00", [52 x i8] zeroinitializer }, align 32
@dpu_hw_intf_init._entry_ptr = internal global ptr @dpu_hw_intf_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INTF_CONFIG2\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"INTF_DISPLAY_DATA_HCTL\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTF_HSYNC_CTL\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INTF_VSYNC_PERIOD_F0\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"INTF_VSYNC_PULSE_WIDTH_F0\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INTF_DISPLAY_HCTL\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"INTF_DISPLAY_V_START_F0\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"INTF_DISPLAY_V_END_F0\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INTF_ACTIVE_HCTL\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"INTF_ACTIVE_V_START_F0\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INTF_ACTIVE_V_END_F0\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INTF_BORDER_COLOR\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INTF_UNDERFLOW_COLOR\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INTF_HSYNC_SKEW\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INTF_POLARITY_CTL\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"INTF_FRAME_LINE_COUNT_EN\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INTF_CONFIG\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INTF_PANEL_FORMAT\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"INTF_PROG_FETCH_START\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"INTF_TIMING_ENGINE_EN\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INTF_MUX\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 10]
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 316, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 186, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 187, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 190, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 191, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 192, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 194, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 195, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 196, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 197, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 198, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 199, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 200, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 201, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 202, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 203, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 204, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 205, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 206, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 233, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 215, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [47 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 258, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @dpu_hw_intf_init._entry, ptr @dpu_hw_intf_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_hw_intf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_intf_init(i32 noundef %idx, ptr noundef %addr, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.dpu_hw_intf, ptr %call7.i.i, i32 0, i32 1
  %intf_count.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 14
  %1 = ptrtoint ptr %intf_count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %intf_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp30.not.i = icmp eq i32 %2, 0
  br i1 %cmp30.not.i, label %if.end.if.then4_crit_edge, label %for.body.lr.ph.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

for.body.lr.ph.i:                                 ; preds = %if.end
  %intf1.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 15
  %3 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.dpu_intf_cfg, ptr %4, i32 %i.031.i, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %idx)
  %cmp2.i = icmp eq i32 %6, %idx
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %type.i = getelementptr %struct.dpu_intf_cfg, ptr %4, i32 %i.031.i, i32 5
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.not.i = icmp eq i32 %8, 0
  br i1 %cmp5.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %_intf_offset.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.if.then4_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.then4_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

_intf_offset.exit:                                ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %addr, ptr %hw, align 8
  %base.i = getelementptr %struct.dpu_intf_cfg, ptr %4, i32 %i.031.i, i32 2
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i, align 4
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_intf, ptr %call7.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %blk_off.i, align 4
  %len.i = getelementptr %struct.dpu_intf_cfg, ptr %4, i32 %i.031.i, i32 3
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  %length.i = getelementptr inbounds %struct.dpu_hw_intf, ptr %call7.i.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %length.i, align 8
  %16 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m, align 4
  %hwversion10.i = getelementptr inbounds %struct.dpu_hw_intf, ptr %call7.i.i, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %hwversion10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %hwversion10.i, align 8
  %log_mask.i = getelementptr inbounds %struct.dpu_hw_intf, ptr %call7.i.i, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %log_mask.i, align 4
  %arrayidx12.i = getelementptr %struct.dpu_intf_cfg, ptr %4, i32 %i.031.i
  %tobool.not.i = icmp eq ptr %arrayidx12.i, null
  %cmp.i = icmp ugt ptr %arrayidx12.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %_intf_offset.exit.if.then4_crit_edge, label %if.end7

_intf_offset.exit.if.then4_crit_edge:             ; preds = %_intf_offset.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.then4:                                         ; preds = %_intf_offset.exit.if.then4_crit_edge, %for.inc.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %idx) #8
  br label %cleanup

if.end7:                                          ; preds = %_intf_offset.exit
  %idx8 = getelementptr inbounds %struct.dpu_hw_intf, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %idx8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %idx, ptr %idx8, align 8
  %cap = getelementptr inbounds %struct.dpu_hw_intf, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx12.i, ptr %cap, align 4
  %mdss = getelementptr inbounds %struct.dpu_hw_intf, ptr %call7.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %mdss to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %m, ptr %mdss, align 8
  %ops = getelementptr inbounds %struct.dpu_hw_intf, ptr %call7.i.i, i32 0, i32 5
  %features = getelementptr %struct.dpu_intf_cfg, ptr %4, i32 %i.031.i, i32 4
  %23 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %features, align 4
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dpu_hw_intf_setup_timing_engine, ptr %ops, align 4
  %setup_prg_fetch.i = getelementptr inbounds %struct.dpu_hw_intf, ptr %call7.i.i, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %setup_prg_fetch.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @dpu_hw_intf_setup_prg_fetch, ptr %setup_prg_fetch.i, align 8
  %get_status.i = getelementptr inbounds %struct.dpu_hw_intf, ptr %call7.i.i, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %get_status.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dpu_hw_intf_get_status, ptr %get_status.i, align 8
  %enable_timing.i = getelementptr inbounds %struct.dpu_hw_intf, ptr %call7.i.i, i32 0, i32 5, i32 2
  %28 = ptrtoint ptr %enable_timing.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dpu_hw_intf_enable_timing_engine, ptr %enable_timing.i, align 4
  %get_line_count.i = getelementptr inbounds %struct.dpu_hw_intf, ptr %call7.i.i, i32 0, i32 5, i32 4
  %29 = ptrtoint ptr %get_line_count.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dpu_hw_intf_get_line_count, ptr %get_line_count.i, align 4
  %and.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i23 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i23, label %if.end7.cleanup_crit_edge, label %if.then.i24

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i24:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %bind_pingpong_blk.i = getelementptr inbounds %struct.dpu_hw_intf, ptr %call7.i.i, i32 0, i32 5, i32 5
  %30 = ptrtoint ptr %bind_pingpong_blk.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dpu_hw_intf_bind_pingpong_blk, ptr %bind_pingpong_blk.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i24, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then4 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end7.cleanup_crit_edge ], [ %call7.i.i, %if.then.i24 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_hw_intf_destroy(ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %intf) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_intf_setup_timing_engine(ptr noundef %ctx, ptr nocapture noundef readonly %p, ptr noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_intf, ptr %ctx, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 4) #4
  %hsync_pulse_width = getelementptr inbounds %struct.intf_timing_params, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %hsync_pulse_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hsync_pulse_width, align 4
  %h_back_porch = getelementptr inbounds %struct.intf_timing_params, ptr %p, i32 0, i32 4
  %2 = ptrtoint ptr %h_back_porch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_back_porch, align 4
  %add = add i32 %3, %1
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p, align 4
  %add1 = add i32 %add, %5
  %h_front_porch = getelementptr inbounds %struct.intf_timing_params, ptr %p, i32 0, i32 5
  %6 = ptrtoint ptr %h_front_porch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %h_front_porch, align 4
  %add2 = add i32 %add1, %7
  %vsync_pulse_width = getelementptr inbounds %struct.intf_timing_params, ptr %p, i32 0, i32 9
  %8 = ptrtoint ptr %vsync_pulse_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsync_pulse_width, align 4
  %v_back_porch = getelementptr inbounds %struct.intf_timing_params, ptr %p, i32 0, i32 6
  %10 = ptrtoint ptr %v_back_porch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v_back_porch, align 4
  %add3 = add i32 %11, %9
  %height = getelementptr inbounds %struct.intf_timing_params, ptr %p, i32 0, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %v_front_porch = getelementptr inbounds %struct.intf_timing_params, ptr %p, i32 0, i32 7
  %14 = ptrtoint ptr %v_front_porch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %v_front_porch, align 4
  %mul = mul i32 %add3, %add2
  %hsync_skew = getelementptr inbounds %struct.intf_timing_params, ptr %p, i32 0, i32 14
  %16 = ptrtoint ptr %hsync_skew to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hsync_skew, align 4
  %add9 = add i32 %17, %mul
  %xres = getelementptr inbounds %struct.intf_timing_params, ptr %p, i32 0, i32 2
  %18 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %19)
  %cmp.not = icmp eq i32 %5, %19
  %add23 = add i32 %19, %add
  %sub24 = add i32 %add23, -1
  %active_h_end.0 = select i1 %cmp.not, i32 0, i32 %sub24
  %yres = getelementptr inbounds %struct.intf_timing_params, ptr %p, i32 0, i32 3
  %20 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %21)
  %cmp26.not = icmp eq i32 %13, %21
  %mul29 = mul i32 %21, %add2
  %add30 = add i32 %add9, -1
  %sub31 = add i32 %add30, %mul29
  %active_v_end.0 = select i1 %cmp26.not, i32 0, i32 %sub31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active_h_end.0)
  %tobool.not = icmp eq i32 %active_h_end.0, 0
  %cap = getelementptr inbounds %struct.dpu_hw_intf, ptr %ctx, i32 0, i32 3
  %22 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cap, align 4
  %type = getelementptr inbounds %struct.dpu_intf_cfg, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %25)
  %cmp47 = icmp eq i32 %25, 9
  br i1 %cmp47, label %entry.if.then51_crit_edge, label %lor.lhs.false

entry.if.then51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

lor.lhs.false:                                    ; preds = %entry
  %shl = shl i32 %active_h_end.0, 16
  %active_h_start.0 = select i1 %cmp.not, i32 0, i32 %add
  %or = or i32 %shl, %active_h_start.0
  %active_hctl.0 = select i1 %tobool.not, i32 0, i32 %or
  %active_v_start.0 = select i1 %cmp26.not, i32 0, i32 %add9
  %sub20 = shl i32 %add1, 16
  %shl45 = add i32 %sub20, -65536
  %or46 = or i32 %shl45, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %25)
  %cmp50 = icmp eq i32 %25, 10
  br i1 %cmp50, label %lor.lhs.false.if.then51_crit_edge, label %lor.lhs.false.if.end65_crit_edge

lor.lhs.false.if.end65_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

lor.lhs.false.if.then51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

if.then51:                                        ; preds = %lor.lhs.false.if.then51_crit_edge, %entry.if.then51_crit_edge
  %add62 = add i32 %add9, %add
  %sub54 = shl i32 %add23, 16
  %shl63 = add i32 %sub54, -65536
  %or64 = or i32 %shl63, %add
  br label %if.end65

if.end65:                                         ; preds = %if.then51, %lor.lhs.false.if.end65_crit_edge
  %display_v_start.0 = phi i32 [ %add62, %if.then51 ], [ %add9, %lor.lhs.false.if.end65_crit_edge ]
  %active_v_start.1 = phi i32 [ %add9, %if.then51 ], [ %active_v_start.0, %lor.lhs.false.if.end65_crit_edge ]
  %active_v_end.1 = phi i32 [ %sub31, %if.then51 ], [ %active_v_end.0, %lor.lhs.false.if.end65_crit_edge ]
  %active_hctl.1 = phi i32 [ %or64, %if.then51 ], [ %active_hctl.0, %lor.lhs.false.if.end65_crit_edge ]
  %display_hctl.0 = phi i32 [ %or64, %if.then51 ], [ %or46, %lor.lhs.false.if.end65_crit_edge ]
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.end65.if.end84_crit_edge [
    i32 3, label %if.then69
    i32 10, label %if.then79
  ]

if.end65.if.end84_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %21)
  %cmp71 = icmp ult i32 %21, 720
  %cond = zext i1 %cmp71 to i32
  br label %if.end84

if.then79:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  %hsync_polarity80 = getelementptr inbounds %struct.intf_timing_params, ptr %p, i32 0, i32 10
  %27 = ptrtoint ptr %hsync_polarity80 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hsync_polarity80, align 4
  %vsync_polarity81 = getelementptr inbounds %struct.intf_timing_params, ptr %p, i32 0, i32 11
  %29 = ptrtoint ptr %vsync_polarity81 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vsync_polarity81, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %if.then69, %if.end65.if.end84_crit_edge
  %hsync_polarity.0 = phi i32 [ %cond, %if.then69 ], [ %28, %if.then79 ], [ 0, %if.end65.if.end84_crit_edge ]
  %vsync_polarity.0 = phi i32 [ %cond, %if.then69 ], [ %30, %if.then79 ], [ 0, %if.end65.if.end84_crit_edge ]
  %flag = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 12
  %31 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flag, align 4
  %and1.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool91.not = icmp eq i32 %and1.i, 0
  br i1 %tobool91.not, label %if.then92, label %if.end84.if.end105_crit_edge

if.end84.if.end105_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end105

if.then92:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  %bits = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 3
  %33 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bits, align 4
  %conv = zext i8 %34 to i32
  %arrayidx94 = getelementptr %struct.dpu_format, ptr %fmt, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %36 to i32
  %shl96 = shl nuw nsw i32 %conv95, 2
  %arrayidx99 = getelementptr %struct.dpu_format, ptr %fmt, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx99, align 2
  %conv100 = zext i8 %38 to i32
  %shl101 = shl nuw nsw i32 %conv100, 4
  %or97 = or i32 %shl96, %conv
  %or102 = or i32 %or97, %shl101
  %or103 = or i32 %or102, 8448
  br label %if.end105

if.end105:                                        ; preds = %if.then92, %if.end84.if.end105_crit_edge
  %panel_format.0 = phi i32 [ %or103, %if.then92 ], [ 8511, %if.end84.if.end105_crit_edge ]
  %features = getelementptr inbounds %struct.dpu_intf_cfg, ptr %23, i32 0, i32 4
  %39 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %features, align 4
  %and = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool107.not = icmp eq i32 %and, 0
  br i1 %tobool107.not, label %if.end105.if.end110_crit_edge, label %if.then108

if.end105.if.end110_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end110

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 96, i32 noundef 16, ptr noundef nonnull @.str.3) #4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 100, i32 noundef %display_hctl.0, ptr noundef nonnull @.str.4) #4
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end105.if.end110_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active_v_end.0)
  %tobool38.not = icmp eq i32 %active_v_end.0, 0
  %or35 = or i32 %call, 536870912
  %intf_cfg.0 = select i1 %tobool.not, i32 %call, i32 %or35
  %or40 = or i32 %intf_cfg.0, 1073741824
  %intf_cfg.1 = select i1 %tobool38.not, i32 %intf_cfg.0, i32 %or40
  %shl86 = shl i32 %vsync_polarity.0, 1
  %or89 = or i32 %shl86, %hsync_polarity.0
  %shl42 = shl i32 %add2, 16
  %or44 = or i32 %shl42, %1
  %add4 = add i32 %add3, %13
  %mul11 = mul i32 %add4, %add2
  %add13 = add i32 %17, -1
  %sub14 = add i32 %add13, %mul11
  %add5 = add i32 %add4, %15
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 8, i32 noundef %or44, ptr noundef nonnull @.str.5) #4
  %mul111 = mul i32 %add5, %add2
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 12, i32 noundef %mul111, ptr noundef nonnull @.str.6) #4
  %41 = ptrtoint ptr %vsync_pulse_width to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vsync_pulse_width, align 4
  %mul113 = mul i32 %42, %add2
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 20, i32 noundef %mul113, ptr noundef nonnull @.str.7) #4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 60, i32 noundef %display_hctl.0, ptr noundef nonnull @.str.8) #4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 28, i32 noundef %display_v_start.0, ptr noundef nonnull @.str.9) #4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 36, i32 noundef %sub14, ptr noundef nonnull @.str.10) #4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 64, i32 noundef %active_hctl.1, ptr noundef nonnull @.str.11) #4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 44, i32 noundef %active_v_start.1, ptr noundef nonnull @.str.12) #4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 52, i32 noundef %active_v_end.1, ptr noundef nonnull @.str.13) #4
  %border_clr = getelementptr inbounds %struct.intf_timing_params, ptr %p, i32 0, i32 12
  %43 = ptrtoint ptr %border_clr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %border_clr, align 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 68, i32 noundef %44, ptr noundef nonnull @.str.14) #4
  %underflow_clr = getelementptr inbounds %struct.intf_timing_params, ptr %p, i32 0, i32 13
  %45 = ptrtoint ptr %underflow_clr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %underflow_clr, align 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 72, i32 noundef %46, ptr noundef nonnull @.str.15) #4
  %47 = ptrtoint ptr %hsync_skew to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hsync_skew, align 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 76, i32 noundef %48, ptr noundef nonnull @.str.16) #4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 80, i32 noundef %or89, ptr noundef nonnull @.str.17) #4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 168, i32 noundef 3, ptr noundef nonnull @.str.18) #4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 4, i32 noundef %intf_cfg.1, ptr noundef nonnull @.str.19) #4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 144, i32 noundef %panel_format.0, ptr noundef nonnull @.str.20) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_intf_setup_prg_fetch(ptr noundef %intf, ptr nocapture noundef readonly %fetch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_intf, ptr %intf, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 4) #4
  %0 = ptrtoint ptr %fetch to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fetch, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %call, -2147483648
  %fetch_start = getelementptr inbounds %struct.intf_prog_fetch, ptr %fetch, i32 0, i32 1
  %2 = ptrtoint ptr %fetch_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fetch_start, align 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 368, i32 noundef %3, ptr noundef nonnull @.str.21) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %call, 2147483647
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %fetch_enable.0 = phi i32 [ %or, %if.then ], [ %and, %if.else ]
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 4, i32 noundef %fetch_enable.0, ptr noundef nonnull @.str.19) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_intf_get_status(ptr noundef %intf, ptr nocapture noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_intf, ptr %intf, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 0) #4
  %conv = trunc i32 %call to i8
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %s, align 4
  %call1 = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 4) #4
  %call1.lobit = lshr i32 %call1, 31
  %1 = trunc i32 %call1.lobit to i8
  %is_prog_fetch_en = getelementptr inbounds %struct.intf_status, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %is_prog_fetch_en to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %is_prog_fetch_en, align 1
  %3 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 172) #4
  %frame_count = getelementptr inbounds %struct.intf_status, ptr %s, i32 0, i32 2
  %5 = ptrtoint ptr %frame_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call6, ptr %frame_count, align 4
  %call7 = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 176) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %frame_count9 = getelementptr inbounds %struct.intf_status, ptr %s, i32 0, i32 2
  %6 = ptrtoint ptr %frame_count9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %frame_count9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call7.sink = phi i32 [ 0, %if.else ], [ %call7, %if.then ]
  %7 = getelementptr inbounds %struct.intf_status, ptr %s, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call7.sink, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_intf_enable_timing_engine(ptr noundef %intf, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_intf, ptr %intf, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %cmp = icmp ne i8 %enable, 0
  %conv1 = zext i1 %cmp to i32
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 0, i32 noundef %conv1, ptr noundef nonnull @.str.22) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_hw_intf_get_line_count(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %intf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hw = getelementptr inbounds %struct.dpu_hw_intf, ptr %intf, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 176) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_intf_bind_pingpong_blk(ptr noundef %intf, i1 noundef zeroext %enable, i32 noundef %pp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_intf, ptr %intf, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 604) #4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %call, -16
  %sub = add i32 %pp, 7
  %and1 = and i32 %sub, 7
  %or = or i32 %and, %and1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or2 = or i32 %call, 15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mux_cfg.0 = phi i32 [ %or, %if.then ], [ %or2, %if.else ]
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 604, i32 noundef %mux_cfg.0, ptr noundef nonnull @.str.23) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 316, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dpu_hw_intf_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dpu_hw_intf_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 186, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 187, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 190, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 191, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 192, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 194, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 195, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 196, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 197, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 198, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 199, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 200, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 201, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 202, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 203, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 204, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 205, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 206, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 233, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 215, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c", i32 258, i32 2}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
