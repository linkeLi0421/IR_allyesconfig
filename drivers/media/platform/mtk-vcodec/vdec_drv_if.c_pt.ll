; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/vdec_drv_if.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/vdec_drv_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vdec_common_if = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_vcodec_ctx = type { i32, ptr, %struct.list_head, %struct.v4l2_fh, ptr, [2 x %struct.mtk_q_data], i32, i32, i32, %struct.mtk_enc_params, ptr, ptr, ptr, %struct.vdec_pic_info, i32, i32, i32, %struct.wait_queue_head, i32, %struct.v4l2_ctrl_handler, %struct.work_struct, %struct.work_struct, %struct.vdec_pic_info, %struct.v4l2_m2m_buffer, i8, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.mtk_q_data = type { i32, i32, i32, i32, i32, [3 x i32], [3 x i32], ptr }
%struct.mtk_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vdec_pic_info = type { i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mtk_vcodec_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, [14 x ptr], ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, %struct.mutex, %struct.mutex, %struct.mtk_vcodec_pm, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mtk_vcodec_pm = type { %struct.mtk_vcodec_clk, ptr, %struct.mtk_vcodec_clk, ptr, ptr, ptr }
%struct.mtk_vcodec_clk = type { ptr, i32 }
%struct.mtk_vcodec_mem = type { i32, ptr, i32 }
%struct.vdec_fb = type { %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem, i32 }

@vdec_h264_slice_if = external dso_local constant %struct.vdec_common_if, align 4
@vdec_h264_if = external dso_local constant %struct.vdec_common_if, align 4
@vdec_vp8_if = external dso_local constant %struct.vdec_common_if, align 4
@vdec_vp9_if = external dso_local constant %struct.vdec_common_if, align 4
@vdec_if_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] bs dma_addr should 64 byte align\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdec_if_decode\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/platform/mtk-vcodec/vdec_drv_if.c\00", [48 x i8] zeroinitializer }, align 32
@vdec_if_decode._entry_ptr = internal global ptr @vdec_if_decode._entry, section ".printk_index", align 4
@vdec_if_decode._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] frame buffer dma_addr should 512 byte align\0A\00", [54 x i8] zeroinitializer }, align 32
@vdec_if_decode._entry_ptr.5 = internal global ptr @vdec_if_decode._entry.3, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 808996950, i64 809062486, i64 875967048, i64 875967059]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 54, i32 4 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [51 x i8] c"../drivers/media/platform/mtk-vcodec/vdec_drv_if.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 62, i32 4 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @vdec_if_decode._entry, ptr @vdec_if_decode._entry.3, ptr @vdec_if_decode._entry_ptr, ptr @vdec_if_decode._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_if_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_if_decode._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vdec_if_init(ptr noundef %ctx, i32 noundef %fourcc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fourcc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fourcc, label %entry.cleanup_crit_edge [
    i32 875967059, label %entry.sw.epilog_crit_edge
    i32 875967048, label %sw.bb1
    i32 808996950, label %sw.bb3
    i32 809062486, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %sw.bb1, %entry.sw.epilog_crit_edge
  %vdec_vp9_if.sink = phi ptr [ @vdec_vp9_if, %sw.bb5 ], [ @vdec_vp8_if, %sw.bb3 ], [ @vdec_h264_if, %sw.bb1 ], [ @vdec_h264_slice_if, %entry.sw.epilog_crit_edge ]
  %dec_if6 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 10
  %1 = ptrtoint ptr %dec_if6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vdec_vp9_if.sink, ptr %dec_if6, align 4
  tail call void @mtk_vdec_lock(ptr noundef %ctx) #3
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %pm = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %3, i32 0, i32 25
  tail call void @mtk_vcodec_dec_clock_on(ptr noundef %pm) #3
  %dec_if7 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 10
  %4 = ptrtoint ptr %dec_if7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dec_if7, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 %7(ptr noundef %ctx) #3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %pm9 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %9, i32 0, i32 25
  tail call void @mtk_vcodec_dec_clock_off(ptr noundef %pm9) #3
  tail call void @mtk_vdec_unlock(ptr noundef %ctx) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vdec_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_dec_clock_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_dec_clock_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vdec_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vdec_if_decode(ptr noundef %ctx, ptr noundef %bs, ptr noundef %fb, ptr noundef %res_chg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bs, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2

if.then:                                          ; preds = %entry
  %dma_addr = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %bs, i32 0, i32 2
  %0 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_addr, align 4
  %and = and i32 %1, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.then.if.end2_crit_edge, label %do.end

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 54) #6
  br label %cleanup

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %tobool3.not = icmp eq ptr %fb, null
  br i1 %tobool3.not, label %if.end2.if.end18_crit_edge, label %if.then4

if.end2.if.end18_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then4:                                         ; preds = %if.end2
  %dma_addr5 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %fb, i32 0, i32 2
  %2 = ptrtoint ptr %dma_addr5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_addr5, align 4
  %and6 = and i32 %3, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 0
  br i1 %cmp7.not, label %lor.lhs.false, label %if.then4.do.end14_crit_edge

if.then4.do.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end14

lor.lhs.false:                                    ; preds = %if.then4
  %dma_addr8 = getelementptr inbounds %struct.vdec_fb, ptr %fb, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %dma_addr8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_addr8, align 4
  %and9 = and i32 %5, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10.not = icmp eq i32 %and9, 0
  br i1 %cmp10.not, label %lor.lhs.false.if.end18_crit_edge, label %lor.lhs.false.do.end14_crit_edge

lor.lhs.false.do.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end14

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

do.end14:                                         ; preds = %lor.lhs.false.do.end14_crit_edge, %if.then4.do.end14_crit_edge
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 62) #6
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false.if.end18_crit_edge, %if.end2.if.end18_crit_edge
  %drv_handle = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 12
  %6 = ptrtoint ptr %drv_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_handle, align 4
  %tobool19.not = icmp eq ptr %7, null
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mtk_vdec_lock(ptr noundef %ctx) #3
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void @mtk_vcodec_set_curr_ctx(ptr noundef %9, ptr noundef %ctx) #3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %pm = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %11, i32 0, i32 25
  tail call void @mtk_vcodec_dec_clock_on(ptr noundef %pm) #3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dec_irq = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %dec_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dec_irq, align 8
  tail call void @enable_irq(i32 noundef %15) #3
  %dec_if = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 10
  %16 = ptrtoint ptr %dec_if to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dec_if, align 4
  %decode = getelementptr inbounds %struct.vdec_common_if, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %decode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %decode, align 4
  %20 = ptrtoint ptr %drv_handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drv_handle, align 4
  %call25 = tail call i32 %19(ptr noundef %21, ptr noundef %bs, ptr noundef %fb, ptr noundef %res_chg) #3
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %dec_irq27 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %23, i32 0, i32 21
  %24 = ptrtoint ptr %dec_irq27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dec_irq27, align 8
  tail call void @disable_irq(i32 noundef %25) #3
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %pm29 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %27, i32 0, i32 25
  tail call void @mtk_vcodec_dec_clock_off(ptr noundef %pm29) #3
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void @mtk_vcodec_set_curr_ctx(ptr noundef %29, ptr noundef null) #3
  tail call void @mtk_vdec_unlock(ptr noundef %ctx) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end18.cleanup_crit_edge, %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end14 ], [ %call25, %if.end21 ], [ -5, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_set_curr_ctx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vdec_if_get_param(ptr noundef %ctx, i32 noundef %type, ptr noundef %out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_handle = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 12
  %0 = ptrtoint ptr %drv_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_handle, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mtk_vdec_lock(ptr noundef %ctx) #3
  %dec_if = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 10
  %2 = ptrtoint ptr %dec_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dec_if, align 4
  %get_param = getelementptr inbounds %struct.vdec_common_if, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %get_param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_param, align 4
  %6 = ptrtoint ptr %drv_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_handle, align 4
  %call = tail call i32 %5(ptr noundef %7, i32 noundef %type, ptr noundef %out) #3
  tail call void @mtk_vdec_unlock(ptr noundef %ctx) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vdec_if_deinit(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_handle = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 12
  %0 = ptrtoint ptr %drv_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_handle, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mtk_vdec_lock(ptr noundef %ctx) #3
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %pm = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %3, i32 0, i32 25
  tail call void @mtk_vcodec_dec_clock_on(ptr noundef %pm) #3
  %dec_if = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 10
  %4 = ptrtoint ptr %dec_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dec_if, align 4
  %deinit = getelementptr inbounds %struct.vdec_common_if, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %deinit, align 4
  %8 = ptrtoint ptr %drv_handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drv_handle, align 4
  tail call void %7(ptr noundef %9) #3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %pm3 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %11, i32 0, i32 25
  tail call void @mtk_vcodec_dec_clock_off(ptr noundef %pm3) #3
  tail call void @mtk_vdec_unlock(ptr noundef %ctx) #3
  %12 = ptrtoint ptr %drv_handle to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %drv_handle, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/vdec_drv_if.c", i32 54, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vdec_if_decode._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vdec_if_decode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/mtk-vcodec/vdec_drv_if.c", i32 62, i32 4}
!8 = !{ptr @vdec_if_decode._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @vdec_if_decode._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
