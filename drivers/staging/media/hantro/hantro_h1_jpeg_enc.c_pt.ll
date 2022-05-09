; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_h1_jpeg_enc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hantro_jpeg_ctx = type { i32, i32, i32, ptr, [64 x i8], [64 x i8] }
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
%struct.hantro_fmt = type { ptr, i32, i32, i32, i32, i32, %struct.v4l2_frmsize_stepwise, i8 }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }

@hantro_debug = external dso_local local_unnamed_addr global i32, align 4
@vepu_write_relaxed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:%d: 0x%04x = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vepu_write_relaxed\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/hantro/hantro.h\00", [58 x i8] zeroinitializer }, align 32
@vepu_write_relaxed._entry_ptr = internal global ptr @vepu_write_relaxed._entry, section ".printk_index", align 4
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/staging/media/hantro/hantro_h1_jpeg_enc.c\00", [46 x i8] zeroinitializer }, align 32
@vepu_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vepu_write\00", [21 x i8] zeroinitializer }, align 32
@vepu_write._entry_ptr = internal global ptr @vepu_write._entry, section ".printk_index", align 4
@vepu_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vepu_read\00", [22 x i8] zeroinitializer }, align 32
@vepu_read._entry_ptr = internal global ptr @vepu_read._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 371, i32 2 }
@___asan_gen_.20 = private constant [53 x i8] c"../drivers/staging/media/hantro/hantro_h1_jpeg_enc.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 38, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 377, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/hantro/hantro.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 385, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 1163, i32 7 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @vepu_read._entry, ptr @vepu_read._entry_ptr, ptr @vepu_write._entry, ptr @vepu_write._entry_ptr, ptr @vepu_write_relaxed._entry, ptr @vepu_write_relaxed._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vepu_write_relaxed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vepu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vepu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_h1_jpeg_enc_run(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %jpeg_ctx = alloca %struct.hantro_jpeg_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %jpeg_ctx) #5
  %m2m_ctx.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i) #5
  %4 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i.i38 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #5
  tail call void @hantro_start_prepare_run(ptr noundef %ctx) #5
  %6 = getelementptr inbounds i8, ptr %jpeg_ctx, i32 16
  %7 = call ptr @memset(ptr %6, i32 0, i32 128)
  %call2 = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i.i38, i32 noundef 0) #5
  %buffer = getelementptr inbounds %struct.hantro_jpeg_ctx, ptr %jpeg_ctx, i32 0, i32 3
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %buffer, align 4
  %dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  %9 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_fmt, align 8
  %11 = ptrtoint ptr %jpeg_ctx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %jpeg_ctx, align 4
  %height = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.hantro_jpeg_ctx, ptr %jpeg_ctx, i32 0, i32 1
  %14 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height5, align 4
  %jpeg_quality = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 10
  %15 = ptrtoint ptr %jpeg_quality to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %jpeg_quality, align 8
  %quality = getelementptr inbounds %struct.hantro_jpeg_ctx, ptr %jpeg_ctx, i32 0, i32 2
  %17 = ptrtoint ptr %quality to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %quality, align 4
  call void @hantro_jpeg_header_assemble(ptr noundef nonnull %jpeg_ctx) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %18 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vepu_write_relaxed.exit_crit_edge, label %do.end.i

entry.vepu_write_relaxed.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 14, i32 noundef 4) #8
  br label %vepu_write_relaxed.exit

vepu_write_relaxed.exit:                          ; preds = %do.end.i, %entry.vepu_write_relaxed.exit_crit_edge
  %enc_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #5, !srcloc !28
  %src_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6
  %21 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %src_fmt.i, align 1
  %shl.i = shl i32 %22, 12
  %vpu_src_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 5
  %23 = ptrtoint ptr %vpu_src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vpu_src_fmt.i, align 8
  %enc_fmt.i = getelementptr inbounds %struct.hantro_fmt, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %enc_fmt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %enc_fmt.i, align 4
  %shl2.i = shl i32 %26, 2
  %or3.i = or i32 %shl2.i, %shl.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %27 = load i32, ptr @hantro_debug, align 4
  %and.i.i = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %vepu_write_relaxed.exit.hantro_h1_set_src_img_ctrl.exit_crit_edge, label %do.end.i.i

vepu_write_relaxed.exit.hantro_h1_set_src_img_ctrl.exit_crit_edge: ; preds = %vepu_write_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_h1_set_src_img_ctrl.exit

do.end.i.i:                                       ; preds = %vepu_write_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 15, i32 noundef %or3.i) #8
  br label %hantro_h1_set_src_img_ctrl.exit

hantro_h1_set_src_img_ctrl.exit:                  ; preds = %do.end.i.i, %vepu_write_relaxed.exit.hantro_h1_set_src_img_ctrl.exit_crit_edge
  %28 = call i32 @llvm.bswap.i32(i32 %or3.i) #5
  %29 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %28) #5, !srcloc !28
  %num_planes.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 6
  %31 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_planes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp.i = icmp ugt i8 %32, 3
  br i1 %cmp.i, label %do.end.i40, label %hantro_h1_set_src_img_ctrl.exit.if.end.i_crit_edge, !prof !29

hantro_h1_set_src_img_ctrl.exit.if.end.i_crit_edge: ; preds = %hantro_h1_set_src_img_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i40:                                       ; preds = %hantro_h1_set_src_img_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 38, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i40, %hantro_h1_set_src_img_ctrl.exit.if.end.i_crit_edge
  %dma.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %35 = load i32, ptr @hantro_debug, align 4
  %and.i.i41 = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i41)
  %tobool.not.i.i42 = icmp eq i32 %and.i.i41, 0
  br i1 %tobool.not.i.i42, label %if.end.i.vepu_write_relaxed.exit.i_crit_edge, label %do.end.i.i44

if.end.i.vepu_write_relaxed.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit.i

do.end.i.i44:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 5, i32 noundef %34) #8
  br label %vepu_write_relaxed.exit.i

vepu_write_relaxed.exit.i:                        ; preds = %do.end.i.i44, %if.end.i.vepu_write_relaxed.exit.i_crit_edge
  %36 = call i32 @llvm.bswap.i32(i32 %34) #5
  %37 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %38, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i46, i32 %36) #5, !srcloc !28
  %size.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %39 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %41 = load i32, ptr @hantro_debug, align 4
  %and.i70.i = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70.i)
  %tobool.not.i71.i = icmp eq i32 %and.i70.i, 0
  br i1 %tobool.not.i71.i, label %vepu_write_relaxed.exit.i.vepu_write_relaxed.exit76.i_crit_edge, label %do.end.i73.i

vepu_write_relaxed.exit.i.vepu_write_relaxed.exit76.i_crit_edge: ; preds = %vepu_write_relaxed.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit76.i

do.end.i73.i:                                     ; preds = %vepu_write_relaxed.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 24, i32 noundef %40) #8
  br label %vepu_write_relaxed.exit76.i

vepu_write_relaxed.exit76.i:                      ; preds = %do.end.i73.i, %vepu_write_relaxed.exit.i.vepu_write_relaxed.exit76.i_crit_edge
  %42 = call i32 @llvm.bswap.i32(i32 %40) #5
  %43 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %44, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %42) #5, !srcloc !28
  %45 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_planes.i, align 1
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i8 %46, label %if.else38.i [
    i8 1, label %if.then25.i
    i8 2, label %if.then31.i
  ]

if.then25.i:                                      ; preds = %vepu_write_relaxed.exit76.i
  %call.i77.i = call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 0) #5
  %48 = ptrtoint ptr %call.i77.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call.i77.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %50 = load i32, ptr @hantro_debug, align 4
  %and.i78.i = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78.i)
  %tobool.not.i79.i = icmp eq i32 %and.i78.i, 0
  br i1 %tobool.not.i79.i, label %if.then25.i.vepu_write_relaxed.exit84.i_crit_edge, label %do.end.i81.i

if.then25.i.vepu_write_relaxed.exit84.i_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit84.i

do.end.i81.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 11, i32 noundef %49) #8
  br label %vepu_write_relaxed.exit84.i

vepu_write_relaxed.exit84.i:                      ; preds = %do.end.i81.i, %if.then25.i.vepu_write_relaxed.exit84.i_crit_edge
  %51 = call i32 @llvm.bswap.i32(i32 %49) #5
  %52 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %53, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 %51) #5, !srcloc !28
  br label %hantro_h1_jpeg_enc_set_buffers.exit

if.then31.i:                                      ; preds = %vepu_write_relaxed.exit76.i
  %call.i85.i = call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 0) #5
  %54 = ptrtoint ptr %call.i85.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call.i85.i, align 4
  %call.i86.i = call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 1) #5
  %56 = ptrtoint ptr %call.i86.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call.i86.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %58 = load i32, ptr @hantro_debug, align 4
  %and.i87.i = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87.i)
  %tobool.not.i88.i = icmp eq i32 %and.i87.i, 0
  br i1 %tobool.not.i88.i, label %if.then31.i.vepu_write_relaxed.exit93.i_crit_edge, label %do.end.i90.i

if.then31.i.vepu_write_relaxed.exit93.i_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit93.i

do.end.i90.i:                                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i89.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 11, i32 noundef %55) #8
  br label %vepu_write_relaxed.exit93.i

vepu_write_relaxed.exit93.i:                      ; preds = %do.end.i90.i, %if.then31.i.vepu_write_relaxed.exit93.i_crit_edge
  %59 = call i32 @llvm.bswap.i32(i32 %55) #5
  %60 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %61, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 %59) #5, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %62 = load i32, ptr @hantro_debug, align 4
  %and.i94.i = and i32 %62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94.i)
  %tobool.not.i95.i = icmp eq i32 %and.i94.i, 0
  br i1 %tobool.not.i95.i, label %vepu_write_relaxed.exit93.i.vepu_write_relaxed.exit100.i_crit_edge, label %do.end.i97.i

vepu_write_relaxed.exit93.i.vepu_write_relaxed.exit100.i_crit_edge: ; preds = %vepu_write_relaxed.exit93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit100.i

do.end.i97.i:                                     ; preds = %vepu_write_relaxed.exit93.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i96.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 12, i32 noundef %57) #8
  br label %vepu_write_relaxed.exit100.i

vepu_write_relaxed.exit100.i:                     ; preds = %do.end.i97.i, %vepu_write_relaxed.exit93.i.vepu_write_relaxed.exit100.i_crit_edge
  %63 = call i32 @llvm.bswap.i32(i32 %57) #5
  %64 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %65, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 %63) #5, !srcloc !28
  br label %hantro_h1_jpeg_enc_set_buffers.exit

if.else38.i:                                      ; preds = %vepu_write_relaxed.exit76.i
  %call.i101.i = call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 0) #5
  %66 = ptrtoint ptr %call.i101.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %call.i101.i, align 4
  %call.i102.i = call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 1) #5
  %68 = ptrtoint ptr %call.i102.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call.i102.i, align 4
  %call.i103.i = call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 2) #5
  %70 = ptrtoint ptr %call.i103.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %call.i103.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %72 = load i32, ptr @hantro_debug, align 4
  %and.i104.i = and i32 %72, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104.i)
  %tobool.not.i105.i = icmp eq i32 %and.i104.i, 0
  br i1 %tobool.not.i105.i, label %if.else38.i.vepu_write_relaxed.exit110.i_crit_edge, label %do.end.i107.i

if.else38.i.vepu_write_relaxed.exit110.i_crit_edge: ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit110.i

do.end.i107.i:                                    ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i106.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 11, i32 noundef %67) #8
  br label %vepu_write_relaxed.exit110.i

vepu_write_relaxed.exit110.i:                     ; preds = %do.end.i107.i, %if.else38.i.vepu_write_relaxed.exit110.i_crit_edge
  %73 = call i32 @llvm.bswap.i32(i32 %67) #5
  %74 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %75, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 %73) #5, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %76 = load i32, ptr @hantro_debug, align 4
  %and.i111.i = and i32 %76, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111.i)
  %tobool.not.i112.i = icmp eq i32 %and.i111.i, 0
  br i1 %tobool.not.i112.i, label %vepu_write_relaxed.exit110.i.vepu_write_relaxed.exit117.i_crit_edge, label %do.end.i114.i

vepu_write_relaxed.exit110.i.vepu_write_relaxed.exit117.i_crit_edge: ; preds = %vepu_write_relaxed.exit110.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit117.i

do.end.i114.i:                                    ; preds = %vepu_write_relaxed.exit110.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 12, i32 noundef %69) #8
  br label %vepu_write_relaxed.exit117.i

vepu_write_relaxed.exit117.i:                     ; preds = %do.end.i114.i, %vepu_write_relaxed.exit110.i.vepu_write_relaxed.exit117.i_crit_edge
  %77 = call i32 @llvm.bswap.i32(i32 %69) #5
  %78 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i116.i = getelementptr i8, ptr %79, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116.i, i32 %77) #5, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %80 = load i32, ptr @hantro_debug, align 4
  %and.i118.i = and i32 %80, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118.i)
  %tobool.not.i119.i = icmp eq i32 %and.i118.i, 0
  br i1 %tobool.not.i119.i, label %vepu_write_relaxed.exit117.i.vepu_write_relaxed.exit124.i_crit_edge, label %do.end.i121.i

vepu_write_relaxed.exit117.i.vepu_write_relaxed.exit124.i_crit_edge: ; preds = %vepu_write_relaxed.exit117.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit124.i

do.end.i121.i:                                    ; preds = %vepu_write_relaxed.exit117.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i120.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 13, i32 noundef %71) #8
  br label %vepu_write_relaxed.exit124.i

vepu_write_relaxed.exit124.i:                     ; preds = %do.end.i121.i, %vepu_write_relaxed.exit117.i.vepu_write_relaxed.exit124.i_crit_edge
  %81 = call i32 @llvm.bswap.i32(i32 %71) #5
  %82 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %83, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i, i32 %81) #5, !srcloc !28
  br label %hantro_h1_jpeg_enc_set_buffers.exit

hantro_h1_jpeg_enc_set_buffers.exit:              ; preds = %vepu_write_relaxed.exit124.i, %vepu_write_relaxed.exit100.i, %vepu_write_relaxed.exit84.i
  %hw_luma_qtable = getelementptr inbounds %struct.hantro_jpeg_ctx, ptr %jpeg_ctx, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %vepu_write_relaxed.exit.i53.for.body.i_crit_edge, %hantro_h1_jpeg_enc_set_buffers.exit
  %i.028.i = phi i32 [ 0, %hantro_h1_jpeg_enc_set_buffers.exit ], [ %inc.i, %vepu_write_relaxed.exit.i53.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %hw_luma_qtable, i32 %i.028.i
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl nuw nsw i32 %i.028.i, 2
  %add.i = add nuw nsw i32 %mul.i, 256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %86 = load i32, ptr @hantro_debug, align 4
  %and.i.i48 = and i32 %86, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i48)
  %tobool.not.i.i49 = icmp eq i32 %and.i.i48, 0
  br i1 %tobool.not.i.i49, label %for.body.i.vepu_write_relaxed.exit.i53_crit_edge, label %do.end.i.i51

for.body.i.vepu_write_relaxed.exit.i53_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit.i53

do.end.i.i51:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i = lshr exact i32 %add.i, 2
  %call.i.i50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef %div5.i.i, i32 noundef %85) #8
  br label %vepu_write_relaxed.exit.i53

vepu_write_relaxed.exit.i53:                      ; preds = %do.end.i.i51, %for.body.i.vepu_write_relaxed.exit.i53_crit_edge
  %87 = call i32 @llvm.bswap.i32(i32 %85) #5
  %88 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %89, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 %87) #5, !srcloc !28
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.body3.i.preheader, label %vepu_write_relaxed.exit.i53.for.body.i_crit_edge

vepu_write_relaxed.exit.i53.for.body.i_crit_edge: ; preds = %vepu_write_relaxed.exit.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body3.i.preheader:                            ; preds = %vepu_write_relaxed.exit.i53
  %hw_chroma_qtable = getelementptr inbounds %struct.hantro_jpeg_ctx, ptr %jpeg_ctx, i32 0, i32 5
  br label %for.body3.i

for.body3.i:                                      ; preds = %vepu_write_relaxed.exit27.i.for.body3.i_crit_edge, %for.body3.i.preheader
  %i.129.i = phi i32 [ %inc9.i, %vepu_write_relaxed.exit27.i.for.body3.i_crit_edge ], [ 0, %for.body3.i.preheader ]
  %arrayidx4.i = getelementptr i32, ptr %hw_chroma_qtable, i32 %i.129.i
  %90 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx4.i, align 4
  %mul6.i = shl nuw nsw i32 %i.129.i, 2
  %add7.i = add nuw nsw i32 %mul6.i, 320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %92 = load i32, ptr @hantro_debug, align 4
  %and.i20.i = and i32 %92, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool.not.i21.i = icmp eq i32 %and.i20.i, 0
  br i1 %tobool.not.i21.i, label %for.body3.i.vepu_write_relaxed.exit27.i_crit_edge, label %do.end.i24.i

for.body3.i.vepu_write_relaxed.exit27.i_crit_edge: ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit27.i

do.end.i24.i:                                     ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i22.i = lshr exact i32 %add7.i, 2
  %call.i23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef %div5.i22.i, i32 noundef %91) #8
  br label %vepu_write_relaxed.exit27.i

vepu_write_relaxed.exit27.i:                      ; preds = %do.end.i24.i, %for.body3.i.vepu_write_relaxed.exit27.i_crit_edge
  %93 = call i32 @llvm.bswap.i32(i32 %91) #5
  %94 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %95, i32 %add7.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %93) #5, !srcloc !28
  %inc9.i = add nuw nsw i32 %i.129.i, 1
  %exitcond30.not.i = icmp eq i32 %inc9.i, 16
  br i1 %exitcond30.not.i, label %hantro_h1_jpeg_enc_set_qtable.exit, label %vepu_write_relaxed.exit27.i.for.body3.i_crit_edge

vepu_write_relaxed.exit27.i.for.body3.i_crit_edge: ; preds = %vepu_write_relaxed.exit27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i

hantro_h1_jpeg_enc_set_qtable.exit:               ; preds = %vepu_write_relaxed.exit27.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %96 = load i32, ptr @hantro_debug, align 4
  %and.i54 = and i32 %96, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %tobool.not.i55 = icmp eq i32 %and.i54, 0
  br i1 %tobool.not.i55, label %hantro_h1_jpeg_enc_set_qtable.exit.vepu_write.exit_crit_edge, label %do.end.i57

hantro_h1_jpeg_enc_set_qtable.exit.vepu_write.exit_crit_edge: ; preds = %hantro_h1_jpeg_enc_set_qtable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write.exit

do.end.i57:                                       ; preds = %hantro_h1_jpeg_enc_set_qtable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef 2, i32 noundef 53263) #8
  br label %vepu_write.exit

vepu_write.exit:                                  ; preds = %do.end.i57, %hantro_h1_jpeg_enc_set_qtable.exit.vepu_write.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @arm_heavy_mb() #5
  %97 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %98, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 265289728) #5, !srcloc !28
  %99 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %src_fmt.i, align 4
  %sub = shl i32 %100, 15
  %101 = add i32 %sub, 491520
  %shl = and i32 %101, -524288
  %height10 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %102 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %height10, align 4
  %sub12 = shl i32 %103, 6
  %104 = add i32 %sub12, 960
  %shl14 = and i32 %104, -1024
  %or = or i32 %shl, %shl14
  %or17 = or i32 %or, 13
  call void @hantro_end_prepare_run(ptr noundef %ctx) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %105 = load i32, ptr @hantro_debug, align 4
  %and.i60 = and i32 %105, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.not.i61 = icmp eq i32 %and.i60, 0
  br i1 %tobool.not.i61, label %vepu_write.exit.vepu_write.exit66_crit_edge, label %do.end.i63

vepu_write.exit.vepu_write.exit66_crit_edge:      ; preds = %vepu_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write.exit66

do.end.i63:                                       ; preds = %vepu_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef 14, i32 noundef %or17) #8
  br label %vepu_write.exit66

vepu_write.exit66:                                ; preds = %do.end.i63, %vepu_write.exit.vepu_write.exit66_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @arm_heavy_mb() #5
  %106 = call i32 @llvm.bswap.i32(i32 %or17) #5
  %107 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %108, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %106) #5, !srcloc !28
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %jpeg_ctx) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_start_prepare_run(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_jpeg_header_assemble(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_end_prepare_run(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_h1_jpeg_enc_done(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %enc_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !31
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %6 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vepu_read.exit_crit_edge, label %do.end.i

entry.vepu_read.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 385, i32 noundef 24, i32 noundef %5) #8
  br label %vepu_read.exit

vepu_read.exit:                                   ; preds = %do.end.i, %entry.vepu_read.exit_crit_edge
  %div12 = lshr i32 %5, 3
  %m2m_ctx.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %7 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 7
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #5
  %call2 = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i.i, i32 noundef 0) #5
  %vpu_dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %9 = ptrtoint ptr %vpu_dst_fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vpu_dst_fmt, align 4
  %header_size = getelementptr inbounds %struct.hantro_fmt, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %header_size, align 4
  %add.ptr = getelementptr i8, ptr %call2, i32 %12
  %13 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %16 = call ptr @memcpy(ptr %add.ptr, ptr %15, i32 %div12)
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i, label %vepu_read.exit.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

vepu_read.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vepu_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %vepu_read.exit
  %19 = ptrtoint ptr %vpu_dst_fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vpu_dst_fmt, align 4
  %header_size5 = getelementptr inbounds %struct.hantro_fmt, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %header_size5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %header_size5, align 4
  %add = add i32 %22, %div12
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 10, i32 0, i32 4
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add)
  %cmp1.i = icmp ult i32 %24, %add
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !33

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %26, %if.then38.i ], [ %add, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 10, i32 0, i32 3
  %27 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vepu_read.exit.vb2_set_plane_payload.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro.h", i32 371, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vepu_write_relaxed._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vepu_write_relaxed._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/hantro/hantro_h1_jpeg_enc.c", i32 38, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/hantro/hantro.h", i32 377, i32 2}
!10 = !{ptr @vepu_write._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @vepu_write._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/hantro/hantro.h", i32 385, i32 2}
!14 = !{ptr @vepu_read._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @vepu_read._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 5410863}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2156543279}
!31 = !{i64 5411281}
!32 = !{i64 2156544119}
!33 = !{!"branch_weights", i32 2000, i32 1}
