; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_g1_h264_dec.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_g1_h264_dec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hantro_ctx = type { ptr, %struct.v4l2_fh, i8, i32, i32, ptr, %struct.v4l2_pix_format_mplane, ptr, %struct.v4l2_pix_format_mplane, %struct.v4l2_ctrl_handler, i32, ptr, %struct.hantro_postproc_ctx, %union.anon.114 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hantro_postproc_ctx = type { [32 x %struct.hantro_aux_buf] }
%struct.hantro_aux_buf = type { ptr, i32, i32, i32 }
%union.anon.114 = type { %struct.hantro_vp9_dec_hw_ctx }
%struct.hantro_vp9_dec_hw_ctx = type { %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.v4l2_vp9_frame_symbol_counts, %struct.v4l2_vp9_frame_context, [4 x %struct.v4l2_vp9_frame_context], %struct.hantro_vp9_frame_info, %struct.hantro_vp9_frame_info, i32, i32, i32, i32, [34 x i16], [64 x i16], i32, i32, i32, i32, i32, [8 x i8], [8 x [4 x i16]] }
%struct.v4l2_vp9_frame_symbol_counts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [2 x [2 x [6 x [6 x ptr]]]]], [4 x [2 x [2 x [6 x [6 x [2 x ptr]]]]]] }
%struct.v4l2_vp9_frame_context = type { [2 x [1 x i8]], [2 x [2 x i8]], [2 x [3 x i8]], [4 x [2 x [2 x [6 x [6 x [3 x i8]]]]]], [3 x i8], [7 x [3 x i8]], [4 x [2 x i8]], [4 x i8], [5 x i8], [5 x [2 x i8]], [5 x i8], [4 x [9 x i8]], [10 x [9 x i8]], [16 x [3 x i8]], %struct.v4l2_vp9_frame_mv_context }
%struct.v4l2_vp9_frame_mv_context = type { [3 x i8], [2 x i8], [2 x [10 x i8]], [2 x i8], [2 x [10 x i8]], [2 x [2 x [3 x i8]]], [2 x [3 x i8]], [2 x i8], [2 x i8] }
%struct.hantro_vp9_frame_info = type { i16, i32, i64 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_h264_sps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [255 x i32], i32, i32, i16, i16, i32 }
%struct.v4l2_ctrl_h264_decode_params = type { [16 x %struct.v4l2_h264_dpb_entry], i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_h264_dpb_entry = type { i64, i32, i16, i8, [5 x i8], i32, i32, i32 }
%struct.hantro_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.delayed_work }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_h264_pps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }

@hantro_debug = external dso_local local_unnamed_addr global i32, align 4
@vdpu_write_relaxed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:%d: 0x%04x = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdpu_write_relaxed\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/hantro/hantro.h\00", [58 x i8] zeroinitializer }, align 32
@vdpu_write_relaxed._entry_ptr = internal global ptr @vdpu_write_relaxed._entry, section ".printk_index", align 4
@vdpu_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdpu_write\00", [21 x i8] zeroinitializer }, align 32
@vdpu_write._entry_ptr = internal global ptr @vdpu_write._entry, section ".printk_index", align 4
@___asan_gen_ = private constant [53 x i8] c"../drivers/staging/media/hantro/hantro_g1_h264_dec.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 392, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/hantro/hantro.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 398, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @vdpu_write._entry, ptr @vdpu_write._entry_ptr, ptr @vdpu_write_relaxed._entry, ptr @vdpu_write_relaxed._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write_relaxed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_g1_h264_dec_run(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %call = tail call i32 @hantro_h264_dec_prepare_run(ptr noundef %ctx) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %m2m_ctx.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i) #4
  %ctrls1.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %ctrls1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrls1.i, align 4
  %sps2.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1, i32 0, i32 4
  %6 = ptrtoint ptr %sps2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sps2.i, align 4
  %pps3.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1, i32 0, i32 5
  %8 = ptrtoint ptr %pps3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pps3.i, align 4
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 8
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %7, i32 0, i32 17
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 255, i32 1279
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %15)
  %cmp.i = icmp ugt i8 %15, 66
  br i1 %cmp.i, label %if.then5.i, label %if.end.if.end11.i_crit_edge

if.end.if.end11.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i

if.then5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %nal_ref_idc.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %nal_ref_idc.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nal_ref_idc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool7.not.i = icmp eq i16 %17, 0
  %spec.select248.v.i = select i1 %tobool7.not.i, i32 512, i32 4608
  %spec.select248.i = or i32 %spec.select248.v.i, %spec.select.i
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then5.i, %if.end.if.end11.i_crit_edge
  %reg.1.i = phi i32 [ %spec.select.i, %if.end.if.end11.i_crit_edge ], [ %spec.select248.i, %if.then5.i ]
  %and13.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i, label %if.end11.i.if.end23.i_crit_edge

if.end11.i.if.end23.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then21.i_crit_edge

land.lhs.true.i.if.then21.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %flags18.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %5, i32 0, i32 14
  %18 = ptrtoint ptr %flags18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags18.i, align 4
  %and19.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %lor.lhs.false.i.if.end23.i_crit_edge, label %lor.lhs.false.i.if.then21.i_crit_edge

lor.lhs.false.i.if.then21.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21.i

lor.lhs.false.i.if.end23.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i

if.then21.i:                                      ; preds = %lor.lhs.false.i.if.then21.i_crit_edge, %land.lhs.true.i.if.then21.i_crit_edge
  %or22.i = or i32 %reg.1.i, 8388608
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %lor.lhs.false.i.if.end23.i_crit_edge, %if.end11.i.if.end23.i_crit_edge
  %reg.2.i = phi i32 [ %reg.1.i, %if.end11.i.if.end23.i_crit_edge ], [ %or22.i, %if.then21.i ], [ %reg.1.i, %lor.lhs.false.i.if.end23.i_crit_edge ]
  %flags24.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %5, i32 0, i32 14
  %20 = ptrtoint ptr %flags24.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags24.i, align 4
  %and25.i = shl i32 %21, 21
  %22 = and i32 %and25.i, 4194304
  %23 = or i32 %22, %reg.2.i
  %and31.i = shl i32 %21, 17
  %24 = and i32 %and31.i, 524288
  %25 = xor i32 %24, 524288
  %26 = or i32 %23, %25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %27 = load i32, ptr @hantro_debug, align 4
  %and.i.i = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end23.i.vdpu_write_relaxed.exit.i_crit_edge, label %do.end.i.i

if.end23.i.vdpu_write_relaxed.exit.i_crit_edge:   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i

do.end.i.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 3, i32 noundef %26) #7
  br label %vdpu_write_relaxed.exit.i

vdpu_write_relaxed.exit.i:                        ; preds = %do.end.i.i, %if.end23.i.vdpu_write_relaxed.exit.i_crit_edge
  %28 = tail call i32 @llvm.bswap.i32(i32 %26) #4
  %dec_base.i.i = getelementptr inbounds %struct.hantro_dev, ptr %11, i32 0, i32 11
  %29 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %28) #4, !srcloc !19
  %src_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6
  %31 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_fmt.i, align 4
  %sub.i = shl i32 %32, 19
  %33 = add i32 %sub.i, 7864320
  %shl.i = and i32 %33, -8388608
  %height.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %34 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height.i, align 4
  %sub39.i = shl i32 %35, 7
  %36 = add i32 %sub39.i, 1920
  %shl42.i = and i32 %36, 522240
  %or43.i = or i32 %shl42.i, %shl.i
  %max_num_ref_frames.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %7, i32 0, i32 10
  %37 = ptrtoint ptr %max_num_ref_frames.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %max_num_ref_frames.i, align 2
  %39 = and i8 %38, 31
  %and45.i = zext i8 %39 to i32
  %or47.i = or i32 %or43.i, %and45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %40 = load i32, ptr @hantro_debug, align 4
  %and.i252.i = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i252.i)
  %tobool.not.i253.i = icmp eq i32 %and.i252.i, 0
  br i1 %tobool.not.i253.i, label %vdpu_write_relaxed.exit.i.vdpu_write_relaxed.exit258.i_crit_edge, label %do.end.i255.i

vdpu_write_relaxed.exit.i.vdpu_write_relaxed.exit258.i_crit_edge: ; preds = %vdpu_write_relaxed.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit258.i

do.end.i255.i:                                    ; preds = %vdpu_write_relaxed.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i254.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 4, i32 noundef %or47.i) #7
  br label %vdpu_write_relaxed.exit258.i

vdpu_write_relaxed.exit258.i:                     ; preds = %do.end.i255.i, %vdpu_write_relaxed.exit.i.vdpu_write_relaxed.exit258.i_crit_edge
  %41 = tail call i32 @llvm.bswap.i32(i32 %or47.i) #4
  %42 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i257.i = getelementptr i8, ptr %43, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257.i, i32 %41) #4, !srcloc !19
  %chroma_qp_index_offset.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %9, i32 0, i32 8
  %44 = ptrtoint ptr %chroma_qp_index_offset.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %chroma_qp_index_offset.i, align 2
  %46 = and i8 %45, 31
  %and49.i = zext i8 %46 to i32
  %shl50.i = shl nuw nsw i32 %and49.i, 19
  %second_chroma_qp_index_offset.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %9, i32 0, i32 9
  %47 = ptrtoint ptr %second_chroma_qp_index_offset.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %second_chroma_qp_index_offset.i, align 1
  %49 = and i8 %48, 31
  %and52.i = zext i8 %49 to i32
  %shl53.i = shl nuw nsw i32 %and52.i, 14
  %or54.i = or i32 %shl53.i, %shl50.i
  %flags55.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %9, i32 0, i32 10
  %50 = ptrtoint ptr %flags55.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %flags55.i, align 2
  %52 = and i16 %51, 128
  %53 = zext i16 %52 to i32
  %54 = shl nuw nsw i32 %53, 17
  %55 = or i32 %54, %or54.i
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i, align 4
  %and63.i = lshr i32 %57, 4
  %58 = and i32 %and63.i, 1
  %59 = or i32 %55, %58
  %60 = xor i32 %59, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %61 = load i32, ptr @hantro_debug, align 4
  %and.i259.i = and i32 %61, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i259.i)
  %tobool.not.i260.i = icmp eq i32 %and.i259.i, 0
  br i1 %tobool.not.i260.i, label %vdpu_write_relaxed.exit258.i.vdpu_write_relaxed.exit265.i_crit_edge, label %do.end.i262.i

vdpu_write_relaxed.exit258.i.vdpu_write_relaxed.exit265.i_crit_edge: ; preds = %vdpu_write_relaxed.exit258.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit265.i

do.end.i262.i:                                    ; preds = %vdpu_write_relaxed.exit258.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i261.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 5, i32 noundef %60) #7
  br label %vdpu_write_relaxed.exit265.i

vdpu_write_relaxed.exit265.i:                     ; preds = %do.end.i262.i, %vdpu_write_relaxed.exit258.i.vdpu_write_relaxed.exit265.i_crit_edge
  %62 = tail call i32 @llvm.bswap.i32(i32 %60) #4
  %63 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i264.i = getelementptr i8, ptr %64, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i264.i, i32 %62) #4, !srcloc !19
  %pic_init_qp_minus26.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %9, i32 0, i32 6
  %65 = ptrtoint ptr %pic_init_qp_minus26.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %pic_init_qp_minus26.i, align 2
  %67 = add i8 %66, 26
  %68 = and i8 %67, 63
  %and70.i = zext i8 %68 to i32
  %shl71.i = shl nuw nsw i32 %and70.i, 25
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 4
  %69 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.not.i.i = icmp eq i32 %70, 0
  br i1 %cmp.not.i.i, label %vdpu_write_relaxed.exit265.i.vb2_get_plane_payload.exit.i_crit_edge, label %if.then.i.i

vdpu_write_relaxed.exit265.i.vb2_get_plane_payload.exit.i_crit_edge: ; preds = %vdpu_write_relaxed.exit265.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_get_plane_payload.exit.i

if.then.i.i:                                      ; preds = %vdpu_write_relaxed.exit265.i
  call void @__sanitizer_cov_trace_pc() #6
  %bytesused.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 10, i32 0, i32 3
  %71 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bytesused.i.i, align 4
  %phi.bo.i = and i32 %72, 16777215
  br label %vb2_get_plane_payload.exit.i

vb2_get_plane_payload.exit.i:                     ; preds = %if.then.i.i, %vdpu_write_relaxed.exit265.i.vb2_get_plane_payload.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo.i, %if.then.i.i ], [ 0, %vdpu_write_relaxed.exit265.i.vb2_get_plane_payload.exit.i_crit_edge ]
  %or72.i = or i32 %retval.0.i.i, %shl71.i
  %or75.i = or i32 %or72.i, -2147483648
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %73 = load i32, ptr @hantro_debug, align 4
  %and.i266.i = and i32 %73, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i266.i)
  %tobool.not.i267.i = icmp eq i32 %and.i266.i, 0
  br i1 %tobool.not.i267.i, label %vb2_get_plane_payload.exit.i.vdpu_write_relaxed.exit272.i_crit_edge, label %do.end.i269.i

vb2_get_plane_payload.exit.i.vdpu_write_relaxed.exit272.i_crit_edge: ; preds = %vb2_get_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit272.i

do.end.i269.i:                                    ; preds = %vb2_get_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i268.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 6, i32 noundef %or75.i) #7
  br label %vdpu_write_relaxed.exit272.i

vdpu_write_relaxed.exit272.i:                     ; preds = %do.end.i269.i, %vb2_get_plane_payload.exit.i.vdpu_write_relaxed.exit272.i_crit_edge
  %74 = tail call i32 @llvm.bswap.i32(i32 %or75.i) #4
  %75 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i271.i = getelementptr i8, ptr %76, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i271.i, i32 %74) #4, !srcloc !19
  %log2_max_frame_num_minus4.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %7, i32 0, i32 7
  %77 = ptrtoint ptr %log2_max_frame_num_minus4.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %log2_max_frame_num_minus4.i, align 1
  %79 = add i8 %78, 4
  %80 = and i8 %79, 31
  %and78.i = zext i8 %80 to i32
  %shl79.i = shl nuw nsw i32 %and78.i, 16
  %frame_num.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %5, i32 0, i32 2
  %81 = ptrtoint ptr %frame_num.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %frame_num.i, align 2
  %conv80.i = zext i16 %82 to i32
  %or83.i = or i32 %shl79.i, %conv80.i
  %weighted_bipred_idc.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %9, i32 0, i32 5
  %83 = ptrtoint ptr %weighted_bipred_idc.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %weighted_bipred_idc.i, align 1
  %85 = and i8 %84, 3
  %and85.i = zext i8 %85 to i32
  %shl86.i = shl nuw nsw i32 %and85.i, 26
  %or87.i = or i32 %or83.i, %shl86.i
  %86 = ptrtoint ptr %flags55.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %flags55.i, align 2
  %88 = zext i16 %87 to i32
  %89 = shl i32 %88, 31
  %90 = or i32 %or87.i, %89
  %91 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i, align 4
  %and96.i = shl i32 %92, 23
  %93 = and i32 %and96.i, 536870912
  %94 = or i32 %90, %93
  %95 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %96)
  %cmp103.i = icmp ugt i8 %96, 99
  br i1 %cmp103.i, label %land.lhs.true105.i, label %vdpu_write_relaxed.exit272.i.if.end111.i_crit_edge

vdpu_write_relaxed.exit272.i.if.end111.i_crit_edge: ; preds = %vdpu_write_relaxed.exit272.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111.i

land.lhs.true105.i:                               ; preds = %vdpu_write_relaxed.exit272.i
  call void @__sanitizer_cov_trace_pc() #6
  %chroma_format_idc.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %7, i32 0, i32 4
  %97 = ptrtoint ptr %chroma_format_idc.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %chroma_format_idc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp107.i = icmp eq i8 %98, 0
  %or110.i = or i32 %94, 1073741824
  %spec.select250.i = select i1 %cmp107.i, i32 %or110.i, i32 %94
  br label %if.end111.i

if.end111.i:                                      ; preds = %land.lhs.true105.i, %vdpu_write_relaxed.exit272.i.if.end111.i_crit_edge
  %reg.9.i = phi i32 [ %94, %vdpu_write_relaxed.exit272.i.if.end111.i_crit_edge ], [ %spec.select250.i, %land.lhs.true105.i ]
  %99 = and i16 %87, 4
  %100 = zext i16 %99 to i32
  %101 = shl nuw nsw i32 %100, 26
  %102 = or i32 %reg.9.i, %101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %103 = load i32, ptr @hantro_debug, align 4
  %and.i273.i = and i32 %103, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i273.i)
  %tobool.not.i274.i = icmp eq i32 %and.i273.i, 0
  br i1 %tobool.not.i274.i, label %if.end111.i.vdpu_write_relaxed.exit279.i_crit_edge, label %do.end.i276.i

if.end111.i.vdpu_write_relaxed.exit279.i_crit_edge: ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit279.i

do.end.i276.i:                                    ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i275.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 7, i32 noundef %102) #7
  br label %vdpu_write_relaxed.exit279.i

vdpu_write_relaxed.exit279.i:                     ; preds = %do.end.i276.i, %if.end111.i.vdpu_write_relaxed.exit279.i_crit_edge
  %104 = tail call i32 @llvm.bswap.i32(i32 %102) #4
  %105 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i278.i = getelementptr i8, ptr %106, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278.i, i32 %104) #4, !srcloc !19
  %dec_ref_pic_marking_bit_size.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %5, i32 0, i32 10
  %107 = ptrtoint ptr %dec_ref_pic_marking_bit_size.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dec_ref_pic_marking_bit_size.i, align 4
  %and119.i = shl i32 %108, 17
  %shl120.i = and i32 %and119.i, 268304384
  %idr_pic_id.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %5, i32 0, i32 5
  %109 = ptrtoint ptr %idr_pic_id.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %idr_pic_id.i, align 4
  %conv121.i = zext i16 %110 to i32
  %or124.i = or i32 %shl120.i, %conv121.i
  %111 = ptrtoint ptr %flags55.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %flags55.i, align 2
  %113 = and i16 %112, 16
  %114 = zext i16 %113 to i32
  %115 = shl nuw i32 %114, 27
  %116 = or i32 %115, %or124.i
  %117 = and i16 %112, 8
  %118 = zext i16 %117 to i32
  %119 = shl nuw nsw i32 %118, 27
  %120 = or i32 %116, %119
  %121 = and i16 %112, 32
  %122 = zext i16 %121 to i32
  %123 = shl nuw nsw i32 %122, 24
  %124 = or i32 %120, %123
  %125 = and i16 %112, 64
  %126 = zext i16 %125 to i32
  %127 = shl nuw nsw i32 %126, 22
  %128 = or i32 %124, %127
  %129 = ptrtoint ptr %flags24.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags24.i, align 4
  %and154.i = shl i32 %130, 16
  %131 = and i32 %and154.i, 65536
  %132 = or i32 %128, %131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %133 = load i32, ptr @hantro_debug, align 4
  %and.i280.i = and i32 %133, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i280.i)
  %tobool.not.i281.i = icmp eq i32 %and.i280.i, 0
  br i1 %tobool.not.i281.i, label %vdpu_write_relaxed.exit279.i.vdpu_write_relaxed.exit286.i_crit_edge, label %do.end.i283.i

vdpu_write_relaxed.exit279.i.vdpu_write_relaxed.exit286.i_crit_edge: ; preds = %vdpu_write_relaxed.exit279.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit286.i

do.end.i283.i:                                    ; preds = %vdpu_write_relaxed.exit279.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i282.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 8, i32 noundef %132) #7
  br label %vdpu_write_relaxed.exit286.i

vdpu_write_relaxed.exit286.i:                     ; preds = %do.end.i283.i, %vdpu_write_relaxed.exit279.i.vdpu_write_relaxed.exit286.i_crit_edge
  %134 = tail call i32 @llvm.bswap.i32(i32 %132) #4
  %135 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i285.i = getelementptr i8, ptr %136, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i285.i, i32 %134) #4, !srcloc !19
  %137 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %9, align 2
  %conv159.i = zext i8 %138 to i32
  %shl161.i = shl nuw i32 %conv159.i, 24
  %num_ref_idx_l0_default_active_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %9, i32 0, i32 3
  %139 = ptrtoint ptr %num_ref_idx_l0_default_active_minus1.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %num_ref_idx_l0_default_active_minus1.i, align 1
  %141 = add i8 %140, 1
  %142 = and i8 %141, 31
  %and164.i = zext i8 %142 to i32
  %shl165.i = shl nuw nsw i32 %and164.i, 14
  %or166.i = or i32 %shl165.i, %shl161.i
  %num_ref_idx_l1_default_active_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %9, i32 0, i32 4
  %143 = ptrtoint ptr %num_ref_idx_l1_default_active_minus1.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %num_ref_idx_l1_default_active_minus1.i, align 2
  %145 = add i8 %144, 1
  %146 = and i8 %145, 31
  %and169.i = zext i8 %146 to i32
  %shl170.i = shl nuw nsw i32 %and169.i, 19
  %or171.i = or i32 %or166.i, %shl170.i
  %pic_order_cnt_bit_size.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %5, i32 0, i32 11
  %147 = ptrtoint ptr %pic_order_cnt_bit_size.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pic_order_cnt_bit_size.i, align 8
  %and172.i = and i32 %148, 255
  %or174.i = or i32 %or171.i, %and172.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %149 = load i32, ptr @hantro_debug, align 4
  %and.i287.i = and i32 %149, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i287.i)
  %tobool.not.i288.i = icmp eq i32 %and.i287.i, 0
  br i1 %tobool.not.i288.i, label %vdpu_write_relaxed.exit286.i.vdpu_write_relaxed.exit293.i_crit_edge, label %do.end.i290.i

vdpu_write_relaxed.exit286.i.vdpu_write_relaxed.exit293.i_crit_edge: ; preds = %vdpu_write_relaxed.exit286.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit293.i

do.end.i290.i:                                    ; preds = %vdpu_write_relaxed.exit286.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i289.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 9, i32 noundef %or174.i) #7
  br label %vdpu_write_relaxed.exit293.i

vdpu_write_relaxed.exit293.i:                     ; preds = %do.end.i290.i, %vdpu_write_relaxed.exit286.i.vdpu_write_relaxed.exit293.i_crit_edge
  %150 = tail call i32 @llvm.bswap.i32(i32 %or174.i) #4
  %151 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i292.i = getelementptr i8, ptr %152, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i292.i, i32 %150) #4, !srcloc !19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %153 = load i32, ptr @hantro_debug, align 4
  %and.i294.i = and i32 %153, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i294.i)
  %tobool.not.i295.i = icmp eq i32 %and.i294.i, 0
  br i1 %tobool.not.i295.i, label %vdpu_write_relaxed.exit293.i.vdpu_write_relaxed.exit300.i_crit_edge, label %do.end.i297.i

vdpu_write_relaxed.exit293.i.vdpu_write_relaxed.exit300.i_crit_edge: ; preds = %vdpu_write_relaxed.exit293.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit300.i

do.end.i297.i:                                    ; preds = %vdpu_write_relaxed.exit293.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i296.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 48, i32 noundef 0) #7
  br label %vdpu_write_relaxed.exit300.i

vdpu_write_relaxed.exit300.i:                     ; preds = %do.end.i297.i, %vdpu_write_relaxed.exit293.i.vdpu_write_relaxed.exit300.i_crit_edge
  %154 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i299.i = getelementptr i8, ptr %155, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i299.i, i32 0) #4, !srcloc !19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %156 = load i32, ptr @hantro_debug, align 4
  %and.i301.i = and i32 %156, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i301.i)
  %tobool.not.i302.i = icmp eq i32 %and.i301.i, 0
  br i1 %tobool.not.i302.i, label %vdpu_write_relaxed.exit300.i.vdpu_write_relaxed.exit307.i_crit_edge, label %do.end.i304.i

vdpu_write_relaxed.exit300.i.vdpu_write_relaxed.exit307.i_crit_edge: ; preds = %vdpu_write_relaxed.exit300.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit307.i

do.end.i304.i:                                    ; preds = %vdpu_write_relaxed.exit300.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i303.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 49, i32 noundef 8368208) #7
  br label %vdpu_write_relaxed.exit307.i

vdpu_write_relaxed.exit307.i:                     ; preds = %do.end.i304.i, %vdpu_write_relaxed.exit300.i.vdpu_write_relaxed.exit307.i_crit_edge
  %157 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i306.i = getelementptr i8, ptr %158, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i306.i, i32 1353744128) #4, !srcloc !19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %159 = load i32, ptr @hantro_debug, align 4
  %and.i308.i = and i32 %159, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i308.i)
  %tobool.not.i309.i = icmp eq i32 %and.i308.i, 0
  br i1 %tobool.not.i309.i, label %vdpu_write_relaxed.exit307.i.vdpu_write_relaxed.exit314.i_crit_edge, label %do.end.i311.i

vdpu_write_relaxed.exit307.i.vdpu_write_relaxed.exit314.i_crit_edge: ; preds = %vdpu_write_relaxed.exit307.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit314.i

do.end.i311.i:                                    ; preds = %vdpu_write_relaxed.exit307.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i310.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 51, i32 noundef 0) #7
  br label %vdpu_write_relaxed.exit314.i

vdpu_write_relaxed.exit314.i:                     ; preds = %do.end.i311.i, %vdpu_write_relaxed.exit307.i.vdpu_write_relaxed.exit314.i_crit_edge
  %160 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i313.i = getelementptr i8, ptr %161, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i313.i, i32 0) #4, !srcloc !19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %162 = load i32, ptr @hantro_debug, align 4
  %and.i315.i = and i32 %162, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i315.i)
  %tobool.not.i316.i = icmp eq i32 %and.i315.i, 0
  br i1 %tobool.not.i316.i, label %vdpu_write_relaxed.exit314.i.set_params.exit_crit_edge, label %do.end.i318.i

vdpu_write_relaxed.exit314.i.set_params.exit_crit_edge: ; preds = %vdpu_write_relaxed.exit314.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_params.exit

do.end.i318.i:                                    ; preds = %vdpu_write_relaxed.exit314.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i317.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 55, i32 noundef 8) #7
  br label %set_params.exit

set_params.exit:                                  ; preds = %do.end.i318.i, %vdpu_write_relaxed.exit314.i.set_params.exit_crit_edge
  %163 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i320.i = getelementptr i8, ptr %164, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i320.i, i32 134217728) #4, !srcloc !19
  %165 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ctx, align 8
  %dpb_valid.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1, i32 1, i32 1
  %167 = ptrtoint ptr %dpb_valid.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dpb_valid.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %169 = load i32, ptr @hantro_debug, align 4
  %and.i.i14 = and i32 %169, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i14)
  %tobool.not.i.i15 = icmp eq i32 %and.i.i14, 0
  br i1 %tobool.not.i.i15, label %set_params.exit.vdpu_write_relaxed.exit.i20_crit_edge, label %do.end.i.i17

set_params.exit.vdpu_write_relaxed.exit.i20_crit_edge: ; preds = %set_params.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i20

do.end.i.i17:                                     ; preds = %set_params.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 39, i32 noundef %168) #7
  br label %vdpu_write_relaxed.exit.i20

vdpu_write_relaxed.exit.i20:                      ; preds = %do.end.i.i17, %set_params.exit.vdpu_write_relaxed.exit.i20_crit_edge
  %170 = tail call i32 @llvm.bswap.i32(i32 %168) #4
  %dec_base.i.i18 = getelementptr inbounds %struct.hantro_dev, ptr %166, i32 0, i32 11
  %171 = ptrtoint ptr %dec_base.i.i18 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dec_base.i.i18, align 8
  %add.ptr.i.i19 = getelementptr i8, ptr %172, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19, i32 %170) #4, !srcloc !19
  %dpb_longterm.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1, i32 1
  %173 = ptrtoint ptr %dpb_longterm.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %dpb_longterm.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %175 = load i32, ptr @hantro_debug, align 4
  %and.i192.i = and i32 %175, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i192.i)
  %tobool.not.i193.i = icmp eq i32 %and.i192.i, 0
  br i1 %tobool.not.i193.i, label %vdpu_write_relaxed.exit.i20.vdpu_write_relaxed.exit198.i_crit_edge, label %do.end.i195.i

vdpu_write_relaxed.exit.i20.vdpu_write_relaxed.exit198.i_crit_edge: ; preds = %vdpu_write_relaxed.exit.i20
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit198.i

do.end.i195.i:                                    ; preds = %vdpu_write_relaxed.exit.i20
  call void @__sanitizer_cov_trace_pc() #6
  %call.i194.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 38, i32 noundef %174) #7
  br label %vdpu_write_relaxed.exit198.i

vdpu_write_relaxed.exit198.i:                     ; preds = %do.end.i195.i, %vdpu_write_relaxed.exit.i20.vdpu_write_relaxed.exit198.i_crit_edge
  %176 = tail call i32 @llvm.bswap.i32(i32 %174) #4
  %177 = ptrtoint ptr %dec_base.i.i18 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dec_base.i.i18, align 8
  %add.ptr.i197.i = getelementptr i8, ptr %178, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i197.i, i32 %176) #4, !srcloc !19
  br label %for.body.i

for.body.i:                                       ; preds = %vdpu_write_relaxed.exit205.i.for.body.i_crit_edge, %vdpu_write_relaxed.exit198.i
  %i.0238.i = phi i32 [ 0, %vdpu_write_relaxed.exit198.i ], [ %add6.i, %vdpu_write_relaxed.exit205.i.for.body.i_crit_edge ]
  %call.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef %i.0238.i) #4
  %conv.i = zext i16 %call.i to i32
  %add.i = or i32 %i.0238.i, 1
  %call1.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef %add.i) #4
  %conv2.i = zext i16 %call1.i to i32
  %shl4.i = shl nuw i32 %conv2.i, 16
  %or.i = or i32 %shl4.i, %conv.i
  %mul.i = shl nuw nsw i32 %i.0238.i, 1
  %add5.i = add nuw nsw i32 %mul.i, 120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %179 = load i32, ptr @hantro_debug, align 4
  %and.i199.i = and i32 %179, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i199.i)
  %tobool.not.i200.i = icmp eq i32 %and.i199.i, 0
  br i1 %tobool.not.i200.i, label %for.body.i.vdpu_write_relaxed.exit205.i_crit_edge, label %do.end.i202.i

for.body.i.vdpu_write_relaxed.exit205.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit205.i

do.end.i202.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i = lshr exact i32 %add5.i, 2
  %call.i201.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef %div5.i.i, i32 noundef %or.i) #7
  br label %vdpu_write_relaxed.exit205.i

vdpu_write_relaxed.exit205.i:                     ; preds = %do.end.i202.i, %for.body.i.vdpu_write_relaxed.exit205.i_crit_edge
  %180 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %181 = ptrtoint ptr %dec_base.i.i18 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dec_base.i.i18, align 8
  %add.ptr.i204.i = getelementptr i8, ptr %182, i32 %add5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204.i, i32 %180) #4, !srcloc !19
  %add6.i = add nuw nsw i32 %i.0238.i, 2
  %cmp.i21 = icmp ult i32 %i.0238.i, 14
  br i1 %cmp.i21, label %vdpu_write_relaxed.exit205.i.for.body.i_crit_edge, label %for.end.i

vdpu_write_relaxed.exit205.i.for.body.i_crit_edge: ; preds = %vdpu_write_relaxed.exit205.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %vdpu_write_relaxed.exit205.i
  %b0.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 5
  %b1.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 5, i32 4
  br label %for.body14.i

for.body14.i:                                     ; preds = %vdpu_write_relaxed.exit213.i.for.body14.i_crit_edge, %for.end.i
  %i.1240.i = phi i32 [ 0, %for.end.i ], [ %add50.i, %vdpu_write_relaxed.exit213.i.for.body14.i_crit_edge ]
  %reg_num.0239.i = phi i32 [ 0, %for.end.i ], [ %inc.i, %vdpu_write_relaxed.exit213.i.for.body14.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %b0.i, i32 %i.1240.i
  %183 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx.i, align 1
  %185 = and i8 %184, 31
  %and16.i = zext i8 %185 to i32
  %add18.i = add nuw nsw i32 %i.1240.i, 1
  %arrayidx19.i = getelementptr i8, ptr %b0.i, i32 %add18.i
  %186 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx19.i, align 1
  %188 = and i8 %187, 31
  %and21.i = zext i8 %188 to i32
  %shl22.i = shl nuw nsw i32 %and21.i, 10
  %or23.i = or i32 %shl22.i, %and16.i
  %add24.i = add nuw nsw i32 %i.1240.i, 2
  %arrayidx25.i = getelementptr i8, ptr %b0.i, i32 %add24.i
  %189 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx25.i, align 1
  %191 = and i8 %190, 31
  %and27.i = zext i8 %191 to i32
  %shl28.i = shl nuw nsw i32 %and27.i, 20
  %or29.i = or i32 %or23.i, %shl28.i
  %arrayidx30.i = getelementptr i8, ptr %b1.i, i32 %i.1240.i
  %192 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx30.i, align 1
  %194 = and i8 %193, 31
  %and32.i = zext i8 %194 to i32
  %shl33.i = shl nuw nsw i32 %and32.i, 5
  %or34.i = or i32 %or29.i, %shl33.i
  %arrayidx36.i = getelementptr i8, ptr %b1.i, i32 %add18.i
  %195 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx36.i, align 1
  %197 = and i8 %196, 31
  %and38.i = zext i8 %197 to i32
  %shl39.i = shl nuw nsw i32 %and38.i, 15
  %or40.i = or i32 %or34.i, %shl39.i
  %arrayidx42.i = getelementptr i8, ptr %b1.i, i32 %add24.i
  %198 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx42.i, align 1
  %200 = and i8 %199, 31
  %and44.i = zext i8 %200 to i32
  %shl45.i = shl nuw nsw i32 %and44.i, 25
  %or46.i = or i32 %or40.i, %shl45.i
  %inc.i = add nuw nsw i32 %reg_num.0239.i, 1
  %mul47.i = shl i32 %reg_num.0239.i, 2
  %add48.i = add nuw nsw i32 %mul47.i, 168
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %201 = load i32, ptr @hantro_debug, align 4
  %and.i206.i = and i32 %201, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i206.i)
  %tobool.not.i207.i = icmp eq i32 %and.i206.i, 0
  br i1 %tobool.not.i207.i, label %for.body14.i.vdpu_write_relaxed.exit213.i_crit_edge, label %do.end.i210.i

for.body14.i.vdpu_write_relaxed.exit213.i_crit_edge: ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit213.i

do.end.i210.i:                                    ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i208.i = lshr exact i32 %add48.i, 2
  %call.i209.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef %div5.i208.i, i32 noundef %or46.i) #7
  br label %vdpu_write_relaxed.exit213.i

vdpu_write_relaxed.exit213.i:                     ; preds = %do.end.i210.i, %for.body14.i.vdpu_write_relaxed.exit213.i_crit_edge
  %202 = tail call i32 @llvm.bswap.i32(i32 %or46.i) #4
  %203 = ptrtoint ptr %dec_base.i.i18 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dec_base.i.i18, align 8
  %add.ptr.i212.i = getelementptr i8, ptr %204, i32 %add48.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212.i, i32 %202) #4, !srcloc !19
  %add50.i = add nuw nsw i32 %i.1240.i, 3
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %for.end51.i, label %vdpu_write_relaxed.exit213.i.for.body14.i_crit_edge

vdpu_write_relaxed.exit213.i.for.body14.i_crit_edge: ; preds = %vdpu_write_relaxed.exit213.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body14.i

for.end51.i:                                      ; preds = %vdpu_write_relaxed.exit213.i
  %reflists.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 4, i32 2
  %arrayidx52.i = getelementptr i8, ptr %b0.i, i32 15
  %205 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx52.i, align 1
  %207 = and i8 %206, 31
  %and54.i = zext i8 %207 to i32
  %arrayidx56.i = getelementptr i8, ptr %b1.i, i32 15
  %208 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx56.i, align 1
  %210 = and i8 %209, 31
  %and58.i = zext i8 %210 to i32
  %shl59.i = shl nuw nsw i32 %and58.i, 5
  %or60.i = or i32 %shl59.i, %and54.i
  %211 = ptrtoint ptr %reflists.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %reflists.i, align 1
  %213 = and i8 %212, 31
  %and63.i22 = zext i8 %213 to i32
  %shl64.i = shl nuw nsw i32 %and63.i22, 10
  %or65.i = or i32 %or60.i, %shl64.i
  %arrayidx66.i = getelementptr i8, ptr %reflists.i, i32 1
  %214 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx66.i, align 1
  %216 = and i8 %215, 31
  %and68.i = zext i8 %216 to i32
  %shl69.i = shl nuw nsw i32 %and68.i, 15
  %or70.i = or i32 %or65.i, %shl69.i
  %arrayidx71.i = getelementptr i8, ptr %reflists.i, i32 2
  %217 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx71.i, align 1
  %219 = and i8 %218, 31
  %and73.i = zext i8 %219 to i32
  %shl74.i = shl nuw nsw i32 %and73.i, 20
  %or75.i23 = or i32 %or70.i, %shl74.i
  %arrayidx76.i = getelementptr i8, ptr %reflists.i, i32 3
  %220 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx76.i, align 1
  %222 = and i8 %221, 31
  %and78.i24 = zext i8 %222 to i32
  %shl79.i25 = shl nuw nsw i32 %and78.i24, 25
  %or80.i = or i32 %or75.i23, %shl79.i25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %223 = load i32, ptr @hantro_debug, align 4
  %and.i214.i = and i32 %223, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i214.i)
  %tobool.not.i215.i = icmp eq i32 %and.i214.i, 0
  br i1 %tobool.not.i215.i, label %for.end51.i.vdpu_write_relaxed.exit220.i_crit_edge, label %do.end.i217.i

for.end51.i.vdpu_write_relaxed.exit220.i_crit_edge: ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit220.i

do.end.i217.i:                                    ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i216.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 47, i32 noundef %or80.i) #7
  br label %vdpu_write_relaxed.exit220.i

vdpu_write_relaxed.exit220.i:                     ; preds = %do.end.i217.i, %for.end51.i.vdpu_write_relaxed.exit220.i_crit_edge
  %224 = tail call i32 @llvm.bswap.i32(i32 %or80.i) #4
  %225 = ptrtoint ptr %dec_base.i.i18 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dec_base.i.i18, align 8
  %add.ptr.i219.i = getelementptr i8, ptr %226, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219.i, i32 %224) #4, !srcloc !19
  %arrayidx85.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 4, i32 3
  %227 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx85.i, align 1
  %229 = and i8 %228, 31
  %and87.i = zext i8 %229 to i32
  %arrayidx90.i = getelementptr i8, ptr %reflists.i, i32 5
  %230 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx90.i, align 1
  %232 = and i8 %231, 31
  %and92.i = zext i8 %232 to i32
  %shl93.i = shl nuw nsw i32 %and92.i, 5
  %or94.i = or i32 %shl93.i, %and87.i
  %arrayidx96.i = getelementptr i8, ptr %reflists.i, i32 6
  %233 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx96.i, align 1
  %235 = and i8 %234, 31
  %and98.i = zext i8 %235 to i32
  %shl99.i = shl nuw nsw i32 %and98.i, 10
  %or100.i = or i32 %or94.i, %shl99.i
  %arrayidx102.i = getelementptr i8, ptr %reflists.i, i32 7
  %236 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx102.i, align 1
  %238 = and i8 %237, 31
  %and104.i = zext i8 %238 to i32
  %shl105.i = shl nuw nsw i32 %and104.i, 15
  %or106.i = or i32 %or100.i, %shl105.i
  %arrayidx108.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 4, i32 4
  %239 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx108.i, align 1
  %241 = and i8 %240, 31
  %and110.i = zext i8 %241 to i32
  %shl111.i = shl nuw nsw i32 %and110.i, 20
  %or112.i = or i32 %or106.i, %shl111.i
  %arrayidx114.i = getelementptr i8, ptr %reflists.i, i32 9
  %242 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx114.i, align 1
  %244 = and i8 %243, 31
  %and116.i = zext i8 %244 to i32
  %shl117.i = shl nuw nsw i32 %and116.i, 25
  %or118.i = or i32 %or112.i, %shl117.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %245 = load i32, ptr @hantro_debug, align 4
  %and.i221.i = and i32 %245, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i221.i)
  %tobool.not.i222.i = icmp eq i32 %and.i221.i, 0
  br i1 %tobool.not.i222.i, label %vdpu_write_relaxed.exit220.i.vdpu_write_relaxed.exit228.i_crit_edge, label %do.end.i225.i

vdpu_write_relaxed.exit220.i.vdpu_write_relaxed.exit228.i_crit_edge: ; preds = %vdpu_write_relaxed.exit220.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit228.i

do.end.i225.i:                                    ; preds = %vdpu_write_relaxed.exit220.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i224.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 10, i32 noundef %or118.i) #7
  br label %vdpu_write_relaxed.exit228.i

vdpu_write_relaxed.exit228.i:                     ; preds = %do.end.i225.i, %vdpu_write_relaxed.exit220.i.vdpu_write_relaxed.exit228.i_crit_edge
  %246 = tail call i32 @llvm.bswap.i32(i32 %or118.i) #4
  %247 = ptrtoint ptr %dec_base.i.i18 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dec_base.i.i18, align 8
  %add.ptr.i227.i = getelementptr i8, ptr %248, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i227.i, i32 %246) #4, !srcloc !19
  %arrayidx85.1.i = getelementptr i8, ptr %reflists.i, i32 10
  %249 = ptrtoint ptr %arrayidx85.1.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx85.1.i, align 1
  %251 = and i8 %250, 31
  %and87.1.i = zext i8 %251 to i32
  %arrayidx90.1.i = getelementptr i8, ptr %reflists.i, i32 11
  %252 = ptrtoint ptr %arrayidx90.1.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx90.1.i, align 1
  %254 = and i8 %253, 31
  %and92.1.i = zext i8 %254 to i32
  %shl93.1.i = shl nuw nsw i32 %and92.1.i, 5
  %or94.1.i = or i32 %shl93.1.i, %and87.1.i
  %arrayidx96.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 4, i32 5
  %255 = ptrtoint ptr %arrayidx96.1.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx96.1.i, align 1
  %257 = and i8 %256, 31
  %and98.1.i = zext i8 %257 to i32
  %shl99.1.i = shl nuw nsw i32 %and98.1.i, 10
  %or100.1.i = or i32 %or94.1.i, %shl99.1.i
  %arrayidx102.1.i = getelementptr i8, ptr %reflists.i, i32 13
  %258 = ptrtoint ptr %arrayidx102.1.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx102.1.i, align 1
  %260 = and i8 %259, 31
  %and104.1.i = zext i8 %260 to i32
  %shl105.1.i = shl nuw nsw i32 %and104.1.i, 15
  %or106.1.i = or i32 %or100.1.i, %shl105.1.i
  %arrayidx108.1.i = getelementptr i8, ptr %reflists.i, i32 14
  %261 = ptrtoint ptr %arrayidx108.1.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx108.1.i, align 1
  %263 = and i8 %262, 31
  %and110.1.i = zext i8 %263 to i32
  %shl111.1.i = shl nuw nsw i32 %and110.1.i, 20
  %or112.1.i = or i32 %or106.1.i, %shl111.1.i
  %arrayidx114.1.i = getelementptr i8, ptr %reflists.i, i32 15
  %264 = ptrtoint ptr %arrayidx114.1.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx114.1.i, align 1
  %266 = and i8 %265, 31
  %and116.1.i = zext i8 %266 to i32
  %shl117.1.i = shl nuw nsw i32 %and116.1.i, 25
  %or118.1.i = or i32 %or112.1.i, %shl117.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %267 = load i32, ptr @hantro_debug, align 4
  %and.i221.1.i = and i32 %267, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i221.1.i)
  %tobool.not.i222.1.i = icmp eq i32 %and.i221.1.i, 0
  br i1 %tobool.not.i222.1.i, label %vdpu_write_relaxed.exit228.i.vdpu_write_relaxed.exit228.1.i_crit_edge, label %do.end.i225.1.i

vdpu_write_relaxed.exit228.i.vdpu_write_relaxed.exit228.1.i_crit_edge: ; preds = %vdpu_write_relaxed.exit228.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit228.1.i

do.end.i225.1.i:                                  ; preds = %vdpu_write_relaxed.exit228.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i224.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 11, i32 noundef %or118.1.i) #7
  br label %vdpu_write_relaxed.exit228.1.i

vdpu_write_relaxed.exit228.1.i:                   ; preds = %do.end.i225.1.i, %vdpu_write_relaxed.exit228.i.vdpu_write_relaxed.exit228.1.i_crit_edge
  %268 = tail call i32 @llvm.bswap.i32(i32 %or118.1.i) #4
  %269 = ptrtoint ptr %dec_base.i.i18 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dec_base.i.i18, align 8
  %add.ptr.i227.1.i = getelementptr i8, ptr %270, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i227.1.i, i32 %268) #4, !srcloc !19
  br label %for.body128.i

for.body128.i:                                    ; preds = %vdpu_write_relaxed.exit236.i.for.body128.i_crit_edge, %vdpu_write_relaxed.exit228.1.i
  %i.3243.i = phi i32 [ %inc133.i, %vdpu_write_relaxed.exit236.i.for.body128.i_crit_edge ], [ 0, %vdpu_write_relaxed.exit228.1.i ]
  %call129.i = tail call i32 @hantro_h264_get_ref_buf(ptr noundef %ctx, i32 noundef %i.3243.i) #4
  %mul130.i = shl i32 %i.3243.i, 2
  %add131.i = add nuw nsw i32 %mul130.i, 56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %271 = load i32, ptr @hantro_debug, align 4
  %and.i229.i = and i32 %271, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i229.i)
  %tobool.not.i230.i = icmp eq i32 %and.i229.i, 0
  br i1 %tobool.not.i230.i, label %for.body128.i.vdpu_write_relaxed.exit236.i_crit_edge, label %do.end.i233.i

for.body128.i.vdpu_write_relaxed.exit236.i_crit_edge: ; preds = %for.body128.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit236.i

do.end.i233.i:                                    ; preds = %for.body128.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i231.i = lshr exact i32 %add131.i, 2
  %call.i232.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef %div5.i231.i, i32 noundef %call129.i) #7
  br label %vdpu_write_relaxed.exit236.i

vdpu_write_relaxed.exit236.i:                     ; preds = %do.end.i233.i, %for.body128.i.vdpu_write_relaxed.exit236.i_crit_edge
  %272 = tail call i32 @llvm.bswap.i32(i32 %call129.i) #4
  %273 = ptrtoint ptr %dec_base.i.i18 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dec_base.i.i18, align 8
  %add.ptr.i235.i = getelementptr i8, ptr %274, i32 %add131.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i235.i, i32 %272) #4, !srcloc !19
  %inc133.i = add nuw nsw i32 %i.3243.i, 1
  %exitcond245.not.i = icmp eq i32 %inc133.i, 16
  br i1 %exitcond245.not.i, label %set_ref.exit, label %vdpu_write_relaxed.exit236.i.for.body128.i_crit_edge

vdpu_write_relaxed.exit236.i.for.body128.i_crit_edge: ; preds = %vdpu_write_relaxed.exit236.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body128.i

set_ref.exit:                                     ; preds = %vdpu_write_relaxed.exit236.i
  %275 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %ctx, align 8
  %call.i.i27 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 0) #4
  %277 = ptrtoint ptr %call.i.i27 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %call.i.i27, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %279 = load i32, ptr @hantro_debug, align 4
  %and.i.i28 = and i32 %279, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i28)
  %tobool.not.i.i29 = icmp eq i32 %and.i.i28, 0
  br i1 %tobool.not.i.i29, label %set_ref.exit.vdpu_write_relaxed.exit.i33_crit_edge, label %do.end.i.i30

set_ref.exit.vdpu_write_relaxed.exit.i33_crit_edge: ; preds = %set_ref.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i33

do.end.i.i30:                                     ; preds = %set_ref.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 12, i32 noundef %278) #7
  br label %vdpu_write_relaxed.exit.i33

vdpu_write_relaxed.exit.i33:                      ; preds = %do.end.i.i30, %set_ref.exit.vdpu_write_relaxed.exit.i33_crit_edge
  %280 = tail call i32 @llvm.bswap.i32(i32 %278) #4
  %dec_base.i.i31 = getelementptr inbounds %struct.hantro_dev, ptr %276, i32 0, i32 11
  %281 = ptrtoint ptr %dec_base.i.i31 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %dec_base.i.i31, align 8
  %add.ptr.i.i32 = getelementptr i8, ptr %282, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32, i32 %280) #4, !srcloc !19
  %283 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %284, i32 0, i32 7
  %call.i.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i.i) #4
  %vpu_dst_fmt.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %285 = ptrtoint ptr %vpu_dst_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %vpu_dst_fmt.i.i, align 4
  %call.i76.i = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %286) #4
  br i1 %call.i76.i, label %if.then.i.i34, label %if.end.i.i

if.then.i.i34:                                    ; preds = %vdpu_write_relaxed.exit.i33
  call void @__sanitizer_cov_trace_pc() #6
  %postproc.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 12
  %index.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i.i, i32 0, i32 1
  %287 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %index.i.i, align 4
  %dma.i.i = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc.i.i, i32 0, i32 %288, i32 1
  br label %hantro_get_dec_buf_addr.exit.i

if.end.i.i:                                       ; preds = %vdpu_write_relaxed.exit.i33
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i77.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i.i, i32 noundef 0) #4
  br label %hantro_get_dec_buf_addr.exit.i

hantro_get_dec_buf_addr.exit.i:                   ; preds = %if.end.i.i, %if.then.i.i34
  %retval.0.in.i.i = phi ptr [ %dma.i.i, %if.then.i.i34 ], [ %call.i.i77.i, %if.end.i.i ]
  %289 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %retval.0.i.i35 = load i32, ptr %retval.0.in.i.i, align 4
  %290 = ptrtoint ptr %ctrls1.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %ctrls1.i, align 4
  %flags.i36 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %291, i32 0, i32 14
  %292 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %flags.i36, align 4
  %and.i37 = and i32 %293, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i38 = icmp eq i32 %and.i37, 0
  br i1 %tobool.not.i38, label %hantro_get_dec_buf_addr.exit.i.if.end.i_crit_edge, label %if.then.i

hantro_get_dec_buf_addr.exit.i.if.end.i_crit_edge: ; preds = %hantro_get_dec_buf_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %hantro_get_dec_buf_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %294 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %src_fmt.i, align 4
  %add.i40 = add i32 %295, 15
  %and5.i = and i32 %add.i40, -16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %hantro_get_dec_buf_addr.exit.i.if.end.i_crit_edge
  %offset.0.i = phi i32 [ %and5.i, %if.then.i ], [ 0, %hantro_get_dec_buf_addr.exit.i.if.end.i_crit_edge ]
  %add6.i41 = add i32 %offset.0.i, %retval.0.i.i35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %296 = load i32, ptr @hantro_debug, align 4
  %and.i78.i = and i32 %296, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78.i)
  %tobool.not.i79.i = icmp eq i32 %and.i78.i, 0
  br i1 %tobool.not.i79.i, label %if.end.i.vdpu_write_relaxed.exit84.i_crit_edge, label %do.end.i81.i

if.end.i.vdpu_write_relaxed.exit84.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit84.i

do.end.i81.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 13, i32 noundef %add6.i41) #7
  br label %vdpu_write_relaxed.exit84.i

vdpu_write_relaxed.exit84.i:                      ; preds = %do.end.i81.i, %if.end.i.vdpu_write_relaxed.exit84.i_crit_edge
  %297 = tail call i32 @llvm.bswap.i32(i32 %add6.i41) #4
  %298 = ptrtoint ptr %dec_base.i.i31 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dec_base.i.i31, align 8
  %add.ptr.i83.i = getelementptr i8, ptr %299, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 %297) #4, !srcloc !19
  %300 = ptrtoint ptr %sps2.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %sps2.i, align 4
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %301, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %303)
  %cmp.i42 = icmp ugt i8 %303, 66
  br i1 %cmp.i42, label %land.lhs.true.i44, label %vdpu_write_relaxed.exit84.i.if.end52.i_crit_edge

vdpu_write_relaxed.exit84.i.if.end52.i_crit_edge: ; preds = %vdpu_write_relaxed.exit84.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52.i

land.lhs.true.i44:                                ; preds = %vdpu_write_relaxed.exit84.i
  %304 = ptrtoint ptr %ctrls1.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %ctrls1.i, align 4
  %nal_ref_idc.i43 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %305, i32 0, i32 1
  %306 = ptrtoint ptr %nal_ref_idc.i43 to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %nal_ref_idc.i43, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %307)
  %tobool10.not.i = icmp eq i16 %307, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i44.if.end52.i_crit_edge, label %if.then11.i

land.lhs.true.i44.if.end52.i_crit_edge:           ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52.i

if.then11.i:                                      ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %303)
  %cmp15.i = icmp ugt i8 %303, 99
  br i1 %cmp15.i, label %land.lhs.true17.i, label %if.then11.i.if.end23.i50_crit_edge

if.then11.i.if.end23.i50_crit_edge:               ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i50

land.lhs.true17.i:                                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  %chroma_format_idc.i45 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %301, i32 0, i32 4
  %308 = ptrtoint ptr %chroma_format_idc.i45 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %chroma_format_idc.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %309)
  %cmp20.i = icmp eq i8 %309, 0
  %spec.select.i46 = select i1 %cmp20.i, i32 256, i32 384
  br label %if.end23.i50

if.end23.i50:                                     ; preds = %land.lhs.true17.i, %if.then11.i.if.end23.i50_crit_edge
  %bytes_per_mb.0.i = phi i32 [ 384, %if.then11.i.if.end23.i50_crit_edge ], [ %spec.select.i46, %land.lhs.true17.i ]
  %310 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %src_fmt.i, align 4
  %sub.i47 = add i32 %311, 15
  %div73.i = lshr i32 %sub.i47, 4
  %mul.i48 = mul i32 %div73.i, %bytes_per_mb.0.i
  %312 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %height.i, align 4
  %sub29.i = add i32 %313, 15
  %div3074.i = lshr i32 %sub29.i, 4
  %mul31.i = mul i32 %mul.i48, %div3074.i
  %flags33.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %305, i32 0, i32 14
  %314 = ptrtoint ptr %flags33.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %flags33.i, align 4
  %and34.i = and i32 %315, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  %mul42.i = shl i32 %div73.i, 5
  %mul48.i = mul i32 %mul42.i, %div3074.i
  %add49.i = select i1 %tobool35.not.i, i32 0, i32 %mul48.i
  %offset.1.i = add i32 %mul31.i, %retval.0.i.i35
  %add51.i = add i32 %offset.1.i, %add49.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %316 = load i32, ptr @hantro_debug, align 4
  %and.i85.i = and i32 %316, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85.i)
  %tobool.not.i86.i = icmp eq i32 %and.i85.i, 0
  br i1 %tobool.not.i86.i, label %if.end23.i50.vdpu_write_relaxed.exit91.i_crit_edge, label %do.end.i88.i

if.end23.i50.vdpu_write_relaxed.exit91.i_crit_edge: ; preds = %if.end23.i50
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit91.i

do.end.i88.i:                                     ; preds = %if.end23.i50
  call void @__sanitizer_cov_trace_pc() #6
  %call.i87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 41, i32 noundef %add51.i) #7
  br label %vdpu_write_relaxed.exit91.i

vdpu_write_relaxed.exit91.i:                      ; preds = %do.end.i88.i, %if.end23.i50.vdpu_write_relaxed.exit91.i_crit_edge
  %317 = tail call i32 @llvm.bswap.i32(i32 %add51.i) #4
  %318 = ptrtoint ptr %dec_base.i.i31 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %dec_base.i.i31, align 8
  %add.ptr.i90.i = getelementptr i8, ptr %319, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %317) #4, !srcloc !19
  br label %if.end52.i

if.end52.i:                                       ; preds = %vdpu_write_relaxed.exit91.i, %land.lhs.true.i44.if.end52.i_crit_edge, %vdpu_write_relaxed.exit84.i.if.end52.i_crit_edge
  %dma.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %320 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %dma.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %322 = load i32, ptr @hantro_debug, align 4
  %and.i92.i = and i32 %322, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92.i)
  %tobool.not.i93.i = icmp eq i32 %and.i92.i, 0
  br i1 %tobool.not.i93.i, label %if.end52.i.set_buffers.exit_crit_edge, label %do.end.i95.i

if.end52.i.set_buffers.exit_crit_edge:            ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_buffers.exit

do.end.i95.i:                                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 40, i32 noundef %321) #7
  br label %set_buffers.exit

set_buffers.exit:                                 ; preds = %do.end.i95.i, %if.end52.i.set_buffers.exit_crit_edge
  %323 = tail call i32 @llvm.bswap.i32(i32 %321) #4
  %324 = ptrtoint ptr %dec_base.i.i31 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %dec_base.i.i31, align 8
  %add.ptr.i97.i = getelementptr i8, ptr %325, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97.i, i32 %323) #4, !srcloc !19
  tail call void @hantro_end_prepare_run(ptr noundef %ctx) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %326 = load i32, ptr @hantro_debug, align 4
  %and.i51 = and i32 %326, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52, label %set_buffers.exit.vdpu_write_relaxed.exit_crit_edge, label %do.end.i

set_buffers.exit.vdpu_write_relaxed.exit_crit_edge: ; preds = %set_buffers.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit

do.end.i:                                         ; preds = %set_buffers.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 2, i32 noundef -522992) #7
  br label %vdpu_write_relaxed.exit

vdpu_write_relaxed.exit:                          ; preds = %do.end.i, %set_buffers.exit.vdpu_write_relaxed.exit_crit_edge
  %dec_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 11
  %327 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %328, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268826879) #4, !srcloc !19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %329 = load i32, ptr @hantro_debug, align 4
  %and.i54 = and i32 %329, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %tobool.not.i55 = icmp eq i32 %and.i54, 0
  br i1 %tobool.not.i55, label %vdpu_write_relaxed.exit.vdpu_write.exit_crit_edge, label %do.end.i57

vdpu_write_relaxed.exit.vdpu_write.exit_crit_edge: ; preds = %vdpu_write_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit

do.end.i57:                                       ; preds = %vdpu_write_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 398, i32 noundef 1, i32 noundef 1) #7
  br label %vdpu_write.exit

vdpu_write.exit:                                  ; preds = %do.end.i57, %vdpu_write_relaxed.exit.vdpu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %330 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i59 = getelementptr i8, ptr %331, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 16777216) #4, !srcloc !19
  br label %cleanup

cleanup:                                          ; preds = %vdpu_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vdpu_write.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_h264_dec_prepare_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_end_prepare_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_h264_get_ref_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hantro_needs_postproc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro.h", i32 392, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vdpu_write_relaxed._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vdpu_write_relaxed._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/hantro/hantro.h", i32 398, i32 2}
!8 = !{ptr @vdpu_write._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @vdpu_write._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 5416787}
!20 = !{i64 2156576320}
