; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c"
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
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c\00", [39 x i8] zeroinitializer }, align 32
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
@___asan_gen_.20 = private constant [60 x i8] c"../drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 69, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 377, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/hantro/hantro.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 385, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 1163, i32 7 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @vepu_read._entry, ptr @vepu_read._entry_ptr, ptr @vepu_write._entry, ptr @vepu_write._entry_ptr, ptr @vepu_write_relaxed._entry, ptr @vepu_write_relaxed._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vepu_write_relaxed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vepu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vepu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rockchip_vpu2_jpeg_enc_run(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
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
  %call.i.i41 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #5
  tail call void @hantro_start_prepare_run(ptr noundef %ctx) #5
  %6 = getelementptr inbounds i8, ptr %jpeg_ctx, i32 16
  %7 = call ptr @memset(ptr %6, i32 0, i32 128)
  %call2 = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i.i41, i32 noundef 0) #5
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
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 103, i32 noundef 32) #8
  br label %vepu_write_relaxed.exit

vepu_write_relaxed.exit:                          ; preds = %do.end.i, %entry.vepu_write_relaxed.exit_crit_edge
  %enc_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 412
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 536870912) #5, !srcloc !28
  %src_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6
  %21 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %src_fmt.i, align 1
  %and.i42 = and i32 %22, 16383
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %23 = load i32, ptr @hantro_debug, align 4
  %and.i.i = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %vepu_write_relaxed.exit.vepu_write_relaxed.exit.i_crit_edge, label %do.end.i.i

vepu_write_relaxed.exit.vepu_write_relaxed.exit.i_crit_edge: ; preds = %vepu_write_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit.i

do.end.i.i:                                       ; preds = %vepu_write_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 61, i32 noundef %and.i42) #8
  br label %vepu_write_relaxed.exit.i

vepu_write_relaxed.exit.i:                        ; preds = %do.end.i.i, %vepu_write_relaxed.exit.vepu_write_relaxed.exit.i_crit_edge
  %24 = call i32 @llvm.bswap.i32(i32 %and.i42) #5
  %25 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %24) #5, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %27 = load i32, ptr @hantro_debug, align 4
  %and.i8.i = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.not.i9.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.not.i9.i, label %vepu_write_relaxed.exit.i.vepu_write_relaxed.exit14.i_crit_edge, label %do.end.i11.i

vepu_write_relaxed.exit.i.vepu_write_relaxed.exit14.i_crit_edge: ; preds = %vepu_write_relaxed.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit14.i

do.end.i11.i:                                     ; preds = %vepu_write_relaxed.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 60, i32 noundef 0) #8
  br label %vepu_write_relaxed.exit14.i

vepu_write_relaxed.exit14.i:                      ; preds = %do.end.i11.i, %vepu_write_relaxed.exit.i.vepu_write_relaxed.exit14.i_crit_edge
  %28 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %29, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 0) #5, !srcloc !28
  %vpu_src_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 5
  %30 = ptrtoint ptr %vpu_src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vpu_src_fmt.i, align 8
  %enc_fmt.i = getelementptr inbounds %struct.hantro_fmt, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %enc_fmt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %enc_fmt.i, align 4
  %and1.i = shl i32 %33, 4
  %shl2.i = and i32 %and1.i, 240
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %34 = load i32, ptr @hantro_debug, align 4
  %and.i15.i = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i)
  %tobool.not.i16.i = icmp eq i32 %and.i15.i, 0
  br i1 %tobool.not.i16.i, label %vepu_write_relaxed.exit14.i.rockchip_vpu2_set_src_img_ctrl.exit_crit_edge, label %do.end.i18.i

vepu_write_relaxed.exit14.i.rockchip_vpu2_set_src_img_ctrl.exit_crit_edge: ; preds = %vepu_write_relaxed.exit14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_vpu2_set_src_img_ctrl.exit

do.end.i18.i:                                     ; preds = %vepu_write_relaxed.exit14.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 74, i32 noundef %shl2.i) #8
  br label %rockchip_vpu2_set_src_img_ctrl.exit

rockchip_vpu2_set_src_img_ctrl.exit:              ; preds = %do.end.i18.i, %vepu_write_relaxed.exit14.i.rockchip_vpu2_set_src_img_ctrl.exit_crit_edge
  %35 = shl nuw i32 %shl2.i, 24
  %36 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %37, i32 296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %35) #5, !srcloc !28
  %num_planes.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 6
  %38 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_planes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp.i = icmp ugt i8 %39, 3
  br i1 %cmp.i, label %do.end.i44, label %rockchip_vpu2_set_src_img_ctrl.exit.if.end.i_crit_edge, !prof !29

rockchip_vpu2_set_src_img_ctrl.exit.if.end.i_crit_edge: ; preds = %rockchip_vpu2_set_src_img_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i44:                                       ; preds = %rockchip_vpu2_set_src_img_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 69, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i44, %rockchip_vpu2_set_src_img_ctrl.exit.if.end.i_crit_edge
  %dma.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %42 = load i32, ptr @hantro_debug, align 4
  %and.i.i45 = and i32 %42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i45)
  %tobool.not.i.i46 = icmp eq i32 %and.i.i45, 0
  br i1 %tobool.not.i.i46, label %if.end.i.vepu_write_relaxed.exit.i51_crit_edge, label %do.end.i.i48

if.end.i.vepu_write_relaxed.exit.i51_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit.i51

do.end.i.i48:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 77, i32 noundef %41) #8
  br label %vepu_write_relaxed.exit.i51

vepu_write_relaxed.exit.i51:                      ; preds = %do.end.i.i48, %if.end.i.vepu_write_relaxed.exit.i51_crit_edge
  %43 = call i32 @llvm.bswap.i32(i32 %41) #5
  %44 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %45, i32 308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i50, i32 %43) #5, !srcloc !28
  %size.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %46 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %48 = load i32, ptr @hantro_debug, align 4
  %and.i70.i = and i32 %48, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70.i)
  %tobool.not.i71.i = icmp eq i32 %and.i70.i, 0
  br i1 %tobool.not.i71.i, label %vepu_write_relaxed.exit.i51.vepu_write_relaxed.exit76.i_crit_edge, label %do.end.i73.i

vepu_write_relaxed.exit.i51.vepu_write_relaxed.exit76.i_crit_edge: ; preds = %vepu_write_relaxed.exit.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit76.i

do.end.i73.i:                                     ; preds = %vepu_write_relaxed.exit.i51
  call void @__sanitizer_cov_trace_pc() #7
  %call.i72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 53, i32 noundef %47) #8
  br label %vepu_write_relaxed.exit76.i

vepu_write_relaxed.exit76.i:                      ; preds = %do.end.i73.i, %vepu_write_relaxed.exit.i51.vepu_write_relaxed.exit76.i_crit_edge
  %49 = call i32 @llvm.bswap.i32(i32 %47) #5
  %50 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %51, i32 212
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %49) #5, !srcloc !28
  %52 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %num_planes.i, align 1
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i8 %53, label %if.else38.i [
    i8 1, label %if.then25.i
    i8 2, label %if.then31.i
  ]

if.then25.i:                                      ; preds = %vepu_write_relaxed.exit76.i
  %call.i77.i = call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 0) #5
  %55 = ptrtoint ptr %call.i77.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call.i77.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %57 = load i32, ptr @hantro_debug, align 4
  %and.i78.i = and i32 %57, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78.i)
  %tobool.not.i79.i = icmp eq i32 %and.i78.i, 0
  br i1 %tobool.not.i79.i, label %if.then25.i.vepu_write_relaxed.exit84.i_crit_edge, label %do.end.i81.i

if.then25.i.vepu_write_relaxed.exit84.i_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit84.i

do.end.i81.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 48, i32 noundef %56) #8
  br label %vepu_write_relaxed.exit84.i

vepu_write_relaxed.exit84.i:                      ; preds = %do.end.i81.i, %if.then25.i.vepu_write_relaxed.exit84.i_crit_edge
  %58 = call i32 @llvm.bswap.i32(i32 %56) #5
  %59 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %60, i32 192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 %58) #5, !srcloc !28
  br label %rockchip_vpu2_jpeg_enc_set_buffers.exit

if.then31.i:                                      ; preds = %vepu_write_relaxed.exit76.i
  %call.i85.i = call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 0) #5
  %61 = ptrtoint ptr %call.i85.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call.i85.i, align 4
  %call.i86.i = call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 1) #5
  %63 = ptrtoint ptr %call.i86.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call.i86.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %65 = load i32, ptr @hantro_debug, align 4
  %and.i87.i = and i32 %65, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87.i)
  %tobool.not.i88.i = icmp eq i32 %and.i87.i, 0
  br i1 %tobool.not.i88.i, label %if.then31.i.vepu_write_relaxed.exit93.i_crit_edge, label %do.end.i90.i

if.then31.i.vepu_write_relaxed.exit93.i_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit93.i

do.end.i90.i:                                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i89.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 48, i32 noundef %62) #8
  br label %vepu_write_relaxed.exit93.i

vepu_write_relaxed.exit93.i:                      ; preds = %do.end.i90.i, %if.then31.i.vepu_write_relaxed.exit93.i_crit_edge
  %66 = call i32 @llvm.bswap.i32(i32 %62) #5
  %67 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %68, i32 192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 %66) #5, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %69 = load i32, ptr @hantro_debug, align 4
  %and.i94.i = and i32 %69, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94.i)
  %tobool.not.i95.i = icmp eq i32 %and.i94.i, 0
  br i1 %tobool.not.i95.i, label %vepu_write_relaxed.exit93.i.vepu_write_relaxed.exit100.i_crit_edge, label %do.end.i97.i

vepu_write_relaxed.exit93.i.vepu_write_relaxed.exit100.i_crit_edge: ; preds = %vepu_write_relaxed.exit93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit100.i

do.end.i97.i:                                     ; preds = %vepu_write_relaxed.exit93.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i96.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 49, i32 noundef %64) #8
  br label %vepu_write_relaxed.exit100.i

vepu_write_relaxed.exit100.i:                     ; preds = %do.end.i97.i, %vepu_write_relaxed.exit93.i.vepu_write_relaxed.exit100.i_crit_edge
  %70 = call i32 @llvm.bswap.i32(i32 %64) #5
  %71 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %72, i32 196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 %70) #5, !srcloc !28
  br label %rockchip_vpu2_jpeg_enc_set_buffers.exit

if.else38.i:                                      ; preds = %vepu_write_relaxed.exit76.i
  %call.i101.i = call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 0) #5
  %73 = ptrtoint ptr %call.i101.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %call.i101.i, align 4
  %call.i102.i = call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 1) #5
  %75 = ptrtoint ptr %call.i102.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %call.i102.i, align 4
  %call.i103.i = call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 2) #5
  %77 = ptrtoint ptr %call.i103.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %call.i103.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %79 = load i32, ptr @hantro_debug, align 4
  %and.i104.i = and i32 %79, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104.i)
  %tobool.not.i105.i = icmp eq i32 %and.i104.i, 0
  br i1 %tobool.not.i105.i, label %if.else38.i.vepu_write_relaxed.exit110.i_crit_edge, label %do.end.i107.i

if.else38.i.vepu_write_relaxed.exit110.i_crit_edge: ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit110.i

do.end.i107.i:                                    ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i106.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 48, i32 noundef %74) #8
  br label %vepu_write_relaxed.exit110.i

vepu_write_relaxed.exit110.i:                     ; preds = %do.end.i107.i, %if.else38.i.vepu_write_relaxed.exit110.i_crit_edge
  %80 = call i32 @llvm.bswap.i32(i32 %74) #5
  %81 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %82, i32 192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 %80) #5, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %83 = load i32, ptr @hantro_debug, align 4
  %and.i111.i = and i32 %83, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111.i)
  %tobool.not.i112.i = icmp eq i32 %and.i111.i, 0
  br i1 %tobool.not.i112.i, label %vepu_write_relaxed.exit110.i.vepu_write_relaxed.exit117.i_crit_edge, label %do.end.i114.i

vepu_write_relaxed.exit110.i.vepu_write_relaxed.exit117.i_crit_edge: ; preds = %vepu_write_relaxed.exit110.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit117.i

do.end.i114.i:                                    ; preds = %vepu_write_relaxed.exit110.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 49, i32 noundef %76) #8
  br label %vepu_write_relaxed.exit117.i

vepu_write_relaxed.exit117.i:                     ; preds = %do.end.i114.i, %vepu_write_relaxed.exit110.i.vepu_write_relaxed.exit117.i_crit_edge
  %84 = call i32 @llvm.bswap.i32(i32 %76) #5
  %85 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i116.i = getelementptr i8, ptr %86, i32 196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116.i, i32 %84) #5, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %87 = load i32, ptr @hantro_debug, align 4
  %and.i118.i = and i32 %87, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118.i)
  %tobool.not.i119.i = icmp eq i32 %and.i118.i, 0
  br i1 %tobool.not.i119.i, label %vepu_write_relaxed.exit117.i.vepu_write_relaxed.exit124.i_crit_edge, label %do.end.i121.i

vepu_write_relaxed.exit117.i.vepu_write_relaxed.exit124.i_crit_edge: ; preds = %vepu_write_relaxed.exit117.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit124.i

do.end.i121.i:                                    ; preds = %vepu_write_relaxed.exit117.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i120.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 50, i32 noundef %78) #8
  br label %vepu_write_relaxed.exit124.i

vepu_write_relaxed.exit124.i:                     ; preds = %do.end.i121.i, %vepu_write_relaxed.exit117.i.vepu_write_relaxed.exit124.i_crit_edge
  %88 = call i32 @llvm.bswap.i32(i32 %78) #5
  %89 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %90, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i, i32 %88) #5, !srcloc !28
  br label %rockchip_vpu2_jpeg_enc_set_buffers.exit

rockchip_vpu2_jpeg_enc_set_buffers.exit:          ; preds = %vepu_write_relaxed.exit124.i, %vepu_write_relaxed.exit100.i, %vepu_write_relaxed.exit84.i
  %hw_luma_qtable = getelementptr inbounds %struct.hantro_jpeg_ctx, ptr %jpeg_ctx, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %vepu_write_relaxed.exit.i58.for.body.i_crit_edge, %rockchip_vpu2_jpeg_enc_set_buffers.exit
  %i.028.i = phi i32 [ 0, %rockchip_vpu2_jpeg_enc_set_buffers.exit ], [ %inc.i, %vepu_write_relaxed.exit.i58.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %hw_luma_qtable, i32 %i.028.i
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl nuw nsw i32 %i.028.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %93 = load i32, ptr @hantro_debug, align 4
  %and.i.i53 = and i32 %93, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i53)
  %tobool.not.i.i54 = icmp eq i32 %and.i.i53, 0
  br i1 %tobool.not.i.i54, label %for.body.i.vepu_write_relaxed.exit.i58_crit_edge, label %do.end.i.i56

for.body.i.vepu_write_relaxed.exit.i58_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit.i58

do.end.i.i56:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef %i.028.i, i32 noundef %92) #8
  br label %vepu_write_relaxed.exit.i58

vepu_write_relaxed.exit.i58:                      ; preds = %do.end.i.i56, %for.body.i.vepu_write_relaxed.exit.i58_crit_edge
  %94 = call i32 @llvm.bswap.i32(i32 %92) #5
  %95 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %96, i32 %mul.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 %94) #5, !srcloc !28
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.body3.i.preheader, label %vepu_write_relaxed.exit.i58.for.body.i_crit_edge

vepu_write_relaxed.exit.i58.for.body.i_crit_edge: ; preds = %vepu_write_relaxed.exit.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body3.i.preheader:                            ; preds = %vepu_write_relaxed.exit.i58
  %hw_chroma_qtable = getelementptr inbounds %struct.hantro_jpeg_ctx, ptr %jpeg_ctx, i32 0, i32 5
  br label %for.body3.i

for.body3.i:                                      ; preds = %vepu_write_relaxed.exit27.i.for.body3.i_crit_edge, %for.body3.i.preheader
  %i.130.i = phi i32 [ %inc9.i, %vepu_write_relaxed.exit27.i.for.body3.i_crit_edge ], [ 0, %for.body3.i.preheader ]
  %arrayidx4.i = getelementptr i32, ptr %hw_chroma_qtable, i32 %i.130.i
  %97 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx4.i, align 4
  %mul6.i = shl nuw nsw i32 %i.130.i, 2
  %add7.i = add nuw nsw i32 %mul6.i, 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %99 = load i32, ptr @hantro_debug, align 4
  %and.i20.i = and i32 %99, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool.not.i21.i = icmp eq i32 %and.i20.i, 0
  br i1 %tobool.not.i21.i, label %for.body3.i.vepu_write_relaxed.exit27.i_crit_edge, label %do.end.i24.i

for.body3.i.vepu_write_relaxed.exit27.i_crit_edge: ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit27.i

do.end.i24.i:                                     ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i22.i = lshr exact i32 %add7.i, 2
  %call.i23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef %div5.i22.i, i32 noundef %98) #8
  br label %vepu_write_relaxed.exit27.i

vepu_write_relaxed.exit27.i:                      ; preds = %do.end.i24.i, %for.body3.i.vepu_write_relaxed.exit27.i_crit_edge
  %100 = call i32 @llvm.bswap.i32(i32 %98) #5
  %101 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %102, i32 %add7.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %100) #5, !srcloc !28
  %inc9.i = add nuw nsw i32 %i.130.i, 1
  %exitcond31.not.i = icmp eq i32 %inc9.i, 16
  br i1 %exitcond31.not.i, label %rockchip_vpu2_jpeg_enc_set_qtable.exit, label %vepu_write_relaxed.exit27.i.for.body3.i_crit_edge

vepu_write_relaxed.exit27.i.for.body3.i_crit_edge: ; preds = %vepu_write_relaxed.exit27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i

rockchip_vpu2_jpeg_enc_set_qtable.exit:           ; preds = %vepu_write_relaxed.exit27.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %103 = load i32, ptr @hantro_debug, align 4
  %and.i59 = and i32 %103, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool.not.i60 = icmp eq i32 %and.i59, 0
  br i1 %tobool.not.i60, label %rockchip_vpu2_jpeg_enc_set_qtable.exit.vepu_write.exit_crit_edge, label %do.end.i62

rockchip_vpu2_jpeg_enc_set_qtable.exit.vepu_write.exit_crit_edge: ; preds = %rockchip_vpu2_jpeg_enc_set_qtable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write.exit

do.end.i62:                                       ; preds = %rockchip_vpu2_jpeg_enc_set_qtable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef 105, i32 noundef -67108864) #8
  br label %vepu_write.exit

vepu_write.exit:                                  ; preds = %do.end.i62, %rockchip_vpu2_jpeg_enc_set_qtable.exit.vepu_write.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %105, i32 420
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 252) #5, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %106 = load i32, ptr @hantro_debug, align 4
  %and.i65 = and i32 %106, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool.not.i66 = icmp eq i32 %and.i65, 0
  br i1 %tobool.not.i66, label %vepu_write.exit.vepu_write_relaxed.exit71_crit_edge, label %do.end.i68

vepu_write.exit.vepu_write_relaxed.exit71_crit_edge: ; preds = %vepu_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write_relaxed.exit71

do.end.i68:                                       ; preds = %vepu_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 54, i32 noundef 4096) #8
  br label %vepu_write_relaxed.exit71

vepu_write_relaxed.exit71:                        ; preds = %do.end.i68, %vepu_write.exit.vepu_write_relaxed.exit71_crit_edge
  %107 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %108, i32 216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 1048576) #5, !srcloc !28
  %109 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %src_fmt.i, align 4
  %sub = shl i32 %110, 4
  %111 = add i32 %sub, 240
  %shl = and i32 %111, 130816
  %height10 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %112 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %height10, align 4
  %sub12 = shl i32 %113, 16
  %114 = add i32 %sub12, 983040
  %shl15 = and i32 %114, 535822336
  %or = or i32 %shl, %shl15
  %or18 = or i32 %or, 97
  call void @hantro_end_prepare_run(ptr noundef %ctx) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %115 = load i32, ptr @hantro_debug, align 4
  %and.i72 = and i32 %115, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %tobool.not.i73 = icmp eq i32 %and.i72, 0
  br i1 %tobool.not.i73, label %vepu_write_relaxed.exit71.vepu_write.exit78_crit_edge, label %do.end.i75

vepu_write_relaxed.exit71.vepu_write.exit78_crit_edge: ; preds = %vepu_write_relaxed.exit71
  call void @__sanitizer_cov_trace_pc() #7
  br label %vepu_write.exit78

do.end.i75:                                       ; preds = %vepu_write_relaxed.exit71
  call void @__sanitizer_cov_trace_pc() #7
  %call.i74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef 103, i32 noundef %or18) #8
  br label %vepu_write.exit78

vepu_write.exit78:                                ; preds = %do.end.i75, %vepu_write_relaxed.exit71.vepu_write.exit78_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  call void @arm_heavy_mb() #5
  %116 = call i32 @llvm.bswap.i32(i32 %or18) #5
  %117 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %118, i32 412
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %116) #5, !srcloc !28
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
define dso_local void @rockchip_vpu2_jpeg_enc_done(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
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
  %add.ptr.i = getelementptr i8, ptr %3, i32 212
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
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 385, i32 noundef 53, i32 noundef %5) #8
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
!7 = !{!"../drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c", i32 69, i32 2}
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
!28 = !{i64 5412124}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2156544540}
!31 = !{i64 5412542}
!32 = !{i64 2156545380}
!33 = !{!"branch_weights", i32 2000, i32 1}
