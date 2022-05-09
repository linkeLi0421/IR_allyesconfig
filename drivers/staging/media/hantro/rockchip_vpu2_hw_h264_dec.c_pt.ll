; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/rockchip_vpu2_hw_h264_dec.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/rockchip_vpu2_hw_h264_dec.c"
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
%struct.v4l2_ctrl_h264_sps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [255 x i32], i32, i32, i16, i16, i32 }
%struct.v4l2_ctrl_h264_decode_params = type { [16 x %struct.v4l2_h264_dpb_entry], i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_h264_dpb_entry = type { i64, i32, i16, i8, [5 x i8], i32, i32, i32 }

@hantro_debug = external dso_local local_unnamed_addr global i32, align 4
@vdpu_write_relaxed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:%d: 0x%04x = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdpu_write_relaxed\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/hantro/hantro.h\00", [58 x i8] zeroinitializer }, align 32
@vdpu_write_relaxed._entry_ptr = internal global ptr @vdpu_write_relaxed._entry, section ".printk_index", align 4
@vdpu_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdpu_read\00", [22 x i8] zeroinitializer }, align 32
@vdpu_read._entry_ptr = internal global ptr @vdpu_read._entry, section ".printk_index", align 4
@vdpu_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdpu_write\00", [21 x i8] zeroinitializer }, align 32
@vdpu_write._entry_ptr = internal global ptr @vdpu_write._entry, section ".printk_index", align 4
@___asan_gen_ = private constant [60 x i8] c"../drivers/staging/media/hantro/rockchip_vpu2_hw_h264_dec.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 392, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 413, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/hantro/hantro.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 398, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @vdpu_read._entry, ptr @vdpu_read._entry_ptr, ptr @vdpu_write._entry, ptr @vdpu_write._entry_ptr, ptr @vdpu_write_relaxed._entry, ptr @vdpu_write_relaxed._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write_relaxed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rockchip_vpu2_h264_dec_run(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %12 = load i32, ptr @hantro_debug, align 4
  %and.i.i = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.vdpu_write_relaxed.exit.i_crit_edge, label %do.end.i.i

if.end.vdpu_write_relaxed.exit.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 50, i32 noundef 0) #7
  br label %vdpu_write_relaxed.exit.i

vdpu_write_relaxed.exit.i:                        ; preds = %do.end.i.i, %if.end.vdpu_write_relaxed.exit.i_crit_edge
  %dec_base.i.i = getelementptr inbounds %struct.hantro_dev, ptr %11, i32 0, i32 11
  %13 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #4, !srcloc !23
  %pic_init_qp_minus26.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %9, i32 0, i32 6
  %15 = ptrtoint ptr %pic_init_qp_minus26.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pic_init_qp_minus26.i, align 2
  %conv234.i = zext i8 %16 to i32
  %add.i = shl i32 %conv234.i, 25
  %shl.i = add i32 %add.i, 872415232
  %and.i = and i32 %shl.i, 2113929216
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i.i, label %vdpu_write_relaxed.exit.i.vb2_get_plane_payload.exit.i_crit_edge, label %if.then.i.i

vdpu_write_relaxed.exit.i.vb2_get_plane_payload.exit.i_crit_edge: ; preds = %vdpu_write_relaxed.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_get_plane_payload.exit.i

if.then.i.i:                                      ; preds = %vdpu_write_relaxed.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %bytesused.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 10, i32 0, i32 3
  %19 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bytesused.i.i, align 4
  br label %vb2_get_plane_payload.exit.i

vb2_get_plane_payload.exit.i:                     ; preds = %if.then.i.i, %vdpu_write_relaxed.exit.i.vb2_get_plane_payload.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %20, %if.then.i.i ], [ 0, %vdpu_write_relaxed.exit.i.vb2_get_plane_payload.exit.i_crit_edge ]
  %and5.i = and i32 %retval.0.i.i, 16777215
  %or.i = or i32 %and5.i, %and.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %21 = load i32, ptr @hantro_debug, align 4
  %and.i238.i = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i238.i)
  %tobool.not.i239.i = icmp eq i32 %and.i238.i, 0
  br i1 %tobool.not.i239.i, label %vb2_get_plane_payload.exit.i.vdpu_write_relaxed.exit244.i_crit_edge, label %do.end.i241.i

vb2_get_plane_payload.exit.i.vdpu_write_relaxed.exit244.i_crit_edge: ; preds = %vb2_get_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit244.i

do.end.i241.i:                                    ; preds = %vb2_get_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i240.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 51, i32 noundef %or.i) #7
  br label %vdpu_write_relaxed.exit244.i

vdpu_write_relaxed.exit244.i:                     ; preds = %do.end.i241.i, %vb2_get_plane_payload.exit.i.vdpu_write_relaxed.exit244.i_crit_edge
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %23 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i243.i = getelementptr i8, ptr %24, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243.i, i32 %22) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %25 = load i32, ptr @hantro_debug, align 4
  %and.i245.i = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i245.i)
  %tobool.not.i246.i = icmp eq i32 %and.i245.i, 0
  br i1 %tobool.not.i246.i, label %vdpu_write_relaxed.exit244.i.vdpu_write_relaxed.exit251.i_crit_edge, label %do.end.i248.i

vdpu_write_relaxed.exit244.i.vdpu_write_relaxed.exit251.i_crit_edge: ; preds = %vdpu_write_relaxed.exit244.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit251.i

do.end.i248.i:                                    ; preds = %vdpu_write_relaxed.exit244.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i247.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 52, i32 noundef 1048576) #7
  br label %vdpu_write_relaxed.exit251.i

vdpu_write_relaxed.exit251.i:                     ; preds = %do.end.i248.i, %vdpu_write_relaxed.exit244.i.vdpu_write_relaxed.exit251.i_crit_edge
  %26 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i250.i = getelementptr i8, ptr %27, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i250.i, i32 4096) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %28 = load i32, ptr @hantro_debug, align 4
  %and.i252.i = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i252.i)
  %tobool.not.i253.i = icmp eq i32 %and.i252.i, 0
  br i1 %tobool.not.i253.i, label %vdpu_write_relaxed.exit251.i.vdpu_write_relaxed.exit258.i_crit_edge, label %do.end.i255.i

vdpu_write_relaxed.exit251.i.vdpu_write_relaxed.exit258.i_crit_edge: ; preds = %vdpu_write_relaxed.exit251.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit258.i

do.end.i255.i:                                    ; preds = %vdpu_write_relaxed.exit251.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i254.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 53, i32 noundef 0) #7
  br label %vdpu_write_relaxed.exit258.i

vdpu_write_relaxed.exit258.i:                     ; preds = %do.end.i255.i, %vdpu_write_relaxed.exit251.i.vdpu_write_relaxed.exit258.i_crit_edge
  %29 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i257.i = getelementptr i8, ptr %30, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257.i, i32 0) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %31 = load i32, ptr @hantro_debug, align 4
  %and.i259.i = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i259.i)
  %tobool.not.i260.i = icmp eq i32 %and.i259.i, 0
  br i1 %tobool.not.i260.i, label %vdpu_write_relaxed.exit258.i.vdpu_write_relaxed.exit265.i_crit_edge, label %do.end.i262.i

vdpu_write_relaxed.exit258.i.vdpu_write_relaxed.exit265.i_crit_edge: ; preds = %vdpu_write_relaxed.exit258.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit265.i

do.end.i262.i:                                    ; preds = %vdpu_write_relaxed.exit258.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i261.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 54, i32 noundef 62) #7
  br label %vdpu_write_relaxed.exit265.i

vdpu_write_relaxed.exit265.i:                     ; preds = %do.end.i262.i, %vdpu_write_relaxed.exit258.i.vdpu_write_relaxed.exit265.i_crit_edge
  %32 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i264.i = getelementptr i8, ptr %33, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i264.i, i32 1040187392) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %34 = load i32, ptr @hantro_debug, align 4
  %and.i266.i = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i266.i)
  %tobool.not.i267.i = icmp eq i32 %and.i266.i, 0
  br i1 %tobool.not.i267.i, label %vdpu_write_relaxed.exit265.i.vdpu_write_relaxed.exit272.i_crit_edge, label %do.end.i269.i

vdpu_write_relaxed.exit265.i.vdpu_write_relaxed.exit272.i_crit_edge: ; preds = %vdpu_write_relaxed.exit265.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit272.i

do.end.i269.i:                                    ; preds = %vdpu_write_relaxed.exit265.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i268.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 56, i32 noundef 1048831) #7
  br label %vdpu_write_relaxed.exit272.i

vdpu_write_relaxed.exit272.i:                     ; preds = %do.end.i269.i, %vdpu_write_relaxed.exit265.i.vdpu_write_relaxed.exit272.i_crit_edge
  %35 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i271.i = getelementptr i8, ptr %36, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i271.i, i32 -16773120) #4, !srcloc !23
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %7, i32 0, i32 17
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  %and6.i = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %vdpu_write_relaxed.exit272.i.land.end.i_crit_edge

vdpu_write_relaxed.exit272.i.land.end.i_crit_edge: ; preds = %vdpu_write_relaxed.exit272.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

land.rhs.i:                                       ; preds = %vdpu_write_relaxed.exit272.i
  %and8.i = and i32 %38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %lor.rhs.i, label %land.rhs.i.land.end.i_crit_edge

land.rhs.i.land.end.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end.i

lor.rhs.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  %flags10.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %5, i32 0, i32 14
  %39 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags10.i, align 4
  %and11.i = shl i32 %40, 16
  %41 = and i32 %and11.i, 131072
  %phi.bo.i = or i32 %41, 4194304
  br label %land.end.i

land.end.i:                                       ; preds = %lor.rhs.i, %land.rhs.i.land.end.i_crit_edge, %vdpu_write_relaxed.exit272.i.land.end.i_crit_edge
  %42 = phi i32 [ 4194304, %vdpu_write_relaxed.exit272.i.land.end.i_crit_edge ], [ 4325376, %land.rhs.i.land.end.i_crit_edge ], [ %phi.bo.i, %lor.rhs.i ]
  %flags14.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %5, i32 0, i32 14
  %43 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags14.i, align 4
  %and15.i = shl i32 %44, 15
  %45 = and i32 %and15.i, 65536
  %and20.i = shl i32 %44, 11
  %46 = and i32 %and20.i, 8192
  %47 = xor i32 %46, 8192
  %48 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %49)
  %cmp.i = icmp ugt i8 %49, 66
  br i1 %cmp.i, label %land.rhs26.i, label %land.end.i.land.end29.i_crit_edge

land.end.i.land.end29.i_crit_edge:                ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end29.i

land.rhs26.i:                                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %nal_ref_idc.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %5, i32 0, i32 1
  %50 = ptrtoint ptr %nal_ref_idc.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %nal_ref_idc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool28.not.i = icmp eq i16 %51, 0
  %phi.sel.i = select i1 %tobool28.not.i, i32 0, i32 1024
  br label %land.end29.i

land.end29.i:                                     ; preds = %land.rhs26.i, %land.end.i.land.end29.i_crit_edge
  %cond41.i = phi i32 [ 64, %land.rhs26.i ], [ 0, %land.end.i.land.end29.i_crit_edge ]
  %52 = phi i32 [ %phi.sel.i, %land.rhs26.i ], [ 0, %land.end.i.land.end29.i_crit_edge ]
  %and33.i = shl i32 %38, 2
  %53 = and i32 %and33.i, 128
  %or18.i = or i32 %53, %42
  %or23.i = or i32 %or18.i, %45
  %or31.i = or i32 %or23.i, %47
  %or36.i = or i32 %or31.i, %cond41.i
  %or42.i = or i32 %or36.i, %52
  %or44.i = or i32 %or42.i, 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %54 = load i32, ptr @hantro_debug, align 4
  %and.i273.i = and i32 %54, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i273.i)
  %tobool.not.i274.i = icmp eq i32 %and.i273.i, 0
  br i1 %tobool.not.i274.i, label %land.end29.i.vdpu_write_relaxed.exit279.i_crit_edge, label %do.end.i276.i

land.end29.i.vdpu_write_relaxed.exit279.i_crit_edge: ; preds = %land.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit279.i

do.end.i276.i:                                    ; preds = %land.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i275.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 57, i32 noundef %or44.i) #7
  br label %vdpu_write_relaxed.exit279.i

vdpu_write_relaxed.exit279.i:                     ; preds = %do.end.i276.i, %land.end29.i.vdpu_write_relaxed.exit279.i_crit_edge
  %55 = tail call i32 @llvm.bswap.i32(i32 %or44.i) #4
  %56 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i278.i = getelementptr i8, ptr %57, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278.i, i32 %55) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %58 = load i32, ptr @hantro_debug, align 4
  %and.i280.i = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i280.i)
  %tobool.not.i281.i = icmp eq i32 %and.i280.i, 0
  br i1 %tobool.not.i281.i, label %vdpu_write_relaxed.exit279.i.vdpu_write_relaxed.exit286.i_crit_edge, label %do.end.i283.i

vdpu_write_relaxed.exit279.i.vdpu_write_relaxed.exit286.i_crit_edge: ; preds = %vdpu_write_relaxed.exit279.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit286.i

do.end.i283.i:                                    ; preds = %vdpu_write_relaxed.exit279.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i282.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 59, i32 noundef 8368208) #7
  br label %vdpu_write_relaxed.exit286.i

vdpu_write_relaxed.exit286.i:                     ; preds = %do.end.i283.i, %vdpu_write_relaxed.exit279.i.vdpu_write_relaxed.exit286.i_crit_edge
  %59 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i285.i = getelementptr i8, ptr %60, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i285.i, i32 1353744128) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %61 = load i32, ptr @hantro_debug, align 4
  %and.i287.i = and i32 %61, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i287.i)
  %tobool.not.i288.i = icmp eq i32 %and.i287.i, 0
  br i1 %tobool.not.i288.i, label %vdpu_write_relaxed.exit286.i.vdpu_write_relaxed.exit293.i_crit_edge, label %do.end.i290.i

vdpu_write_relaxed.exit286.i.vdpu_write_relaxed.exit293.i_crit_edge: ; preds = %vdpu_write_relaxed.exit286.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit293.i

do.end.i290.i:                                    ; preds = %vdpu_write_relaxed.exit286.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i289.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 65, i32 noundef 0) #7
  br label %vdpu_write_relaxed.exit293.i

vdpu_write_relaxed.exit293.i:                     ; preds = %do.end.i290.i, %vdpu_write_relaxed.exit286.i.vdpu_write_relaxed.exit293.i_crit_edge
  %62 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i292.i = getelementptr i8, ptr %63, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i292.i, i32 0) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %64 = load i32, ptr @hantro_debug, align 4
  %and.i294.i = and i32 %64, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i294.i)
  %tobool.not.i295.i = icmp eq i32 %and.i294.i, 0
  br i1 %tobool.not.i295.i, label %vdpu_write_relaxed.exit293.i.vdpu_write_relaxed.exit300.i_crit_edge, label %do.end.i297.i

vdpu_write_relaxed.exit293.i.vdpu_write_relaxed.exit300.i_crit_edge: ; preds = %vdpu_write_relaxed.exit293.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit300.i

do.end.i297.i:                                    ; preds = %vdpu_write_relaxed.exit293.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i296.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 109, i32 noundef 0) #7
  br label %vdpu_write_relaxed.exit300.i

vdpu_write_relaxed.exit300.i:                     ; preds = %do.end.i297.i, %vdpu_write_relaxed.exit293.i.vdpu_write_relaxed.exit300.i_crit_edge
  %65 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i299.i = getelementptr i8, ptr %66, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i299.i, i32 0) #4, !srcloc !23
  %second_chroma_qp_index_offset.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %9, i32 0, i32 9
  %67 = ptrtoint ptr %second_chroma_qp_index_offset.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %second_chroma_qp_index_offset.i, align 1
  %conv45.i = sext i8 %68 to i32
  %shl46.i = shl nsw i32 %conv45.i, 22
  %and47.i = and i32 %shl46.i, 130023424
  %chroma_qp_index_offset.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %9, i32 0, i32 8
  %69 = ptrtoint ptr %chroma_qp_index_offset.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %chroma_qp_index_offset.i, align 2
  %conv48.i = sext i8 %70 to i32
  %shl49.i = shl nsw i32 %conv48.i, 17
  %and50.i = and i32 %shl49.i, 4063232
  %or51.i = or i32 %and50.i, %and47.i
  %src_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6
  %height.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %71 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %height.i, align 4
  %sub.i = shl i32 %72, 5
  %73 = add i32 %sub.i, 480
  %and54.i = and i32 %73, 130560
  %or55.i = or i32 %or51.i, %and54.i
  %74 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %src_fmt.i, align 4
  %sub58.i = add i32 %75, 15
  %div59236.i = lshr i32 %sub58.i, 4
  %and61.i = and i32 %div59236.i, 511
  %or62.i = or i32 %or55.i, %and61.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %76 = load i32, ptr @hantro_debug, align 4
  %and.i301.i = and i32 %76, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i301.i)
  %tobool.not.i302.i = icmp eq i32 %and.i301.i, 0
  br i1 %tobool.not.i302.i, label %vdpu_write_relaxed.exit300.i.vdpu_write_relaxed.exit307.i_crit_edge, label %do.end.i304.i

vdpu_write_relaxed.exit300.i.vdpu_write_relaxed.exit307.i_crit_edge: ; preds = %vdpu_write_relaxed.exit300.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit307.i

do.end.i304.i:                                    ; preds = %vdpu_write_relaxed.exit300.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i303.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 110, i32 noundef %or62.i) #7
  br label %vdpu_write_relaxed.exit307.i

vdpu_write_relaxed.exit307.i:                     ; preds = %do.end.i304.i, %vdpu_write_relaxed.exit300.i.vdpu_write_relaxed.exit307.i_crit_edge
  %77 = tail call i32 @llvm.bswap.i32(i32 %or62.i) #4
  %78 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i306.i = getelementptr i8, ptr %79, i32 440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i306.i, i32 %77) #4, !srcloc !23
  %weighted_bipred_idc.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %9, i32 0, i32 5
  %80 = ptrtoint ptr %weighted_bipred_idc.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %weighted_bipred_idc.i, align 1
  %conv63.i = zext i8 %81 to i32
  %shl64.i = shl nuw nsw i32 %conv63.i, 16
  %and65.i = and i32 %shl64.i, 196608
  %max_num_ref_frames.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %7, i32 0, i32 10
  %82 = ptrtoint ptr %max_num_ref_frames.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %max_num_ref_frames.i, align 2
  %84 = and i8 %83, 31
  %and68.i = zext i8 %84 to i32
  %or69.i = or i32 %and65.i, %and68.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %85 = load i32, ptr @hantro_debug, align 4
  %and.i308.i = and i32 %85, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i308.i)
  %tobool.not.i309.i = icmp eq i32 %and.i308.i, 0
  br i1 %tobool.not.i309.i, label %vdpu_write_relaxed.exit307.i.vdpu_write_relaxed.exit314.i_crit_edge, label %do.end.i311.i

vdpu_write_relaxed.exit307.i.vdpu_write_relaxed.exit314.i_crit_edge: ; preds = %vdpu_write_relaxed.exit307.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit314.i

do.end.i311.i:                                    ; preds = %vdpu_write_relaxed.exit307.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i310.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 111, i32 noundef %or69.i) #7
  br label %vdpu_write_relaxed.exit314.i

vdpu_write_relaxed.exit314.i:                     ; preds = %do.end.i311.i, %vdpu_write_relaxed.exit307.i.vdpu_write_relaxed.exit314.i_crit_edge
  %86 = tail call i32 @llvm.bswap.i32(i32 %or69.i) #4
  %87 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i313.i = getelementptr i8, ptr %88, i32 444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i313.i, i32 %86) #4, !srcloc !23
  %flags70.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %9, i32 0, i32 10
  %89 = ptrtoint ptr %flags70.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %flags70.i, align 2
  %conv71.i = zext i16 %90 to i32
  %and72.i = shl i32 %conv71.i, 28
  %91 = and i32 %and72.i, -2147483648
  %and77.i = shl i32 %conv71.i, 25
  %92 = and i32 %and77.i, 1073741824
  %or80.i = or i32 %91, %92
  %log2_max_frame_num_minus4.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %7, i32 0, i32 7
  %93 = ptrtoint ptr %log2_max_frame_num_minus4.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %log2_max_frame_num_minus4.i, align 1
  %conv81.i = zext i8 %94 to i32
  %add82.i = shl nuw nsw i32 %conv81.i, 16
  %shl83.i = add nuw nsw i32 %add82.i, 262144
  %and84.i = and i32 %shl83.i, 2031616
  %frame_num.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %5, i32 0, i32 2
  %95 = ptrtoint ptr %frame_num.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %frame_num.i, align 2
  %conv86.i = zext i16 %96 to i32
  %or85.i = or i32 %or80.i, %conv86.i
  %or89.i = or i32 %or85.i, %and84.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %97 = load i32, ptr @hantro_debug, align 4
  %and.i315.i = and i32 %97, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i315.i)
  %tobool.not.i316.i = icmp eq i32 %and.i315.i, 0
  br i1 %tobool.not.i316.i, label %vdpu_write_relaxed.exit314.i.vdpu_write_relaxed.exit321.i_crit_edge, label %do.end.i318.i

vdpu_write_relaxed.exit314.i.vdpu_write_relaxed.exit321.i_crit_edge: ; preds = %vdpu_write_relaxed.exit314.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit321.i

do.end.i318.i:                                    ; preds = %vdpu_write_relaxed.exit314.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i317.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 112, i32 noundef %or89.i) #7
  br label %vdpu_write_relaxed.exit321.i

vdpu_write_relaxed.exit321.i:                     ; preds = %do.end.i318.i, %vdpu_write_relaxed.exit314.i.vdpu_write_relaxed.exit321.i_crit_edge
  %98 = tail call i32 @llvm.bswap.i32(i32 %or89.i) #4
  %99 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i320.i = getelementptr i8, ptr %100, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i320.i, i32 %98) #4, !srcloc !23
  %dec_ref_pic_marking_bit_size.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %5, i32 0, i32 10
  %101 = ptrtoint ptr %dec_ref_pic_marking_bit_size.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dec_ref_pic_marking_bit_size.i, align 4
  %shl90.i = shl i32 %102, 16
  %and91.i = and i32 %shl90.i, 134152192
  %idr_pic_id.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %5, i32 0, i32 5
  %103 = ptrtoint ptr %idr_pic_id.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %idr_pic_id.i, align 4
  %conv92.i = zext i16 %104 to i32
  %or95.i = or i32 %and91.i, %conv92.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %105 = load i32, ptr @hantro_debug, align 4
  %and.i322.i = and i32 %105, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i322.i)
  %tobool.not.i323.i = icmp eq i32 %and.i322.i, 0
  br i1 %tobool.not.i323.i, label %vdpu_write_relaxed.exit321.i.vdpu_write_relaxed.exit328.i_crit_edge, label %do.end.i325.i

vdpu_write_relaxed.exit321.i.vdpu_write_relaxed.exit328.i_crit_edge: ; preds = %vdpu_write_relaxed.exit321.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit328.i

do.end.i325.i:                                    ; preds = %vdpu_write_relaxed.exit321.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i324.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 113, i32 noundef %or95.i) #7
  br label %vdpu_write_relaxed.exit328.i

vdpu_write_relaxed.exit328.i:                     ; preds = %do.end.i325.i, %vdpu_write_relaxed.exit321.i.vdpu_write_relaxed.exit328.i_crit_edge
  %106 = tail call i32 @llvm.bswap.i32(i32 %or95.i) #4
  %107 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i327.i = getelementptr i8, ptr %108, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i327.i, i32 %106) #4, !srcloc !23
  %109 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %9, align 2
  %conv96.i = zext i8 %110 to i32
  %shl97.i = shl nuw i32 %conv96.i, 24
  %num_ref_idx_l1_default_active_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %9, i32 0, i32 4
  %111 = ptrtoint ptr %num_ref_idx_l1_default_active_minus1.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %num_ref_idx_l1_default_active_minus1.i, align 2
  %conv99.i = zext i8 %112 to i32
  %add100.i = shl nuw nsw i32 %conv99.i, 19
  %shl101.i = add nuw nsw i32 %add100.i, 524288
  %and102.i = and i32 %shl101.i, 16252928
  %or103.i = or i32 %and102.i, %shl97.i
  %num_ref_idx_l0_default_active_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %9, i32 0, i32 3
  %113 = ptrtoint ptr %num_ref_idx_l0_default_active_minus1.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %num_ref_idx_l0_default_active_minus1.i, align 1
  %conv104.i = zext i8 %114 to i32
  %add105.i = shl nuw nsw i32 %conv104.i, 14
  %shl106.i = add nuw nsw i32 %add105.i, 16384
  %and107.i = and i32 %shl106.i, 507904
  %or108.i = or i32 %or103.i, %and107.i
  %pic_order_cnt_bit_size.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %5, i32 0, i32 11
  %115 = ptrtoint ptr %pic_order_cnt_bit_size.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pic_order_cnt_bit_size.i, align 8
  %and110.i = and i32 %116, 255
  %or111.i = or i32 %or108.i, %and110.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %117 = load i32, ptr @hantro_debug, align 4
  %and.i329.i = and i32 %117, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i329.i)
  %tobool.not.i330.i = icmp eq i32 %and.i329.i, 0
  br i1 %tobool.not.i330.i, label %vdpu_write_relaxed.exit328.i.vdpu_write_relaxed.exit335.i_crit_edge, label %do.end.i332.i

vdpu_write_relaxed.exit328.i.vdpu_write_relaxed.exit335.i_crit_edge: ; preds = %vdpu_write_relaxed.exit328.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit335.i

do.end.i332.i:                                    ; preds = %vdpu_write_relaxed.exit328.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i331.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 114, i32 noundef %or111.i) #7
  br label %vdpu_write_relaxed.exit335.i

vdpu_write_relaxed.exit335.i:                     ; preds = %do.end.i332.i, %vdpu_write_relaxed.exit328.i.vdpu_write_relaxed.exit335.i_crit_edge
  %118 = tail call i32 @llvm.bswap.i32(i32 %or111.i) #4
  %119 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i334.i = getelementptr i8, ptr %120, i32 456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i334.i, i32 %118) #4, !srcloc !23
  %121 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags14.i, align 4
  %123 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags.i, align 4
  %125 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %126)
  %cmp123.i = icmp ugt i8 %126, 99
  br i1 %cmp123.i, label %land.rhs125.i, label %vdpu_write_relaxed.exit335.i.land.end129.i_crit_edge

vdpu_write_relaxed.exit335.i.land.end129.i_crit_edge: ; preds = %vdpu_write_relaxed.exit335.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end129.i

land.rhs125.i:                                    ; preds = %vdpu_write_relaxed.exit335.i
  call void @__sanitizer_cov_trace_pc() #6
  %chroma_format_idc.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %7, i32 0, i32 4
  %127 = ptrtoint ptr %chroma_format_idc.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %chroma_format_idc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp127.i = icmp eq i8 %128, 0
  %phi.sel237.i = select i1 %cmp127.i, i32 64, i32 0
  br label %land.end129.i

land.end129.i:                                    ; preds = %land.rhs125.i, %vdpu_write_relaxed.exit335.i.land.end129.i_crit_edge
  %129 = phi i32 [ 0, %vdpu_write_relaxed.exit335.i.land.end129.i_crit_edge ], [ %phi.sel237.i, %land.rhs125.i ]
  %and113.i = shl i32 %122, 8
  %130 = and i32 %and113.i, 256
  %and117.i = shl i32 %124, 1
  %131 = and i32 %and117.i, 128
  %or120.i = or i32 %131, %130
  %132 = ptrtoint ptr %flags70.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %flags70.i, align 2
  %conv133.i = zext i16 %133 to i32
  %and134.i = shl nuw nsw i32 %conv133.i, 5
  %134 = and i32 %and134.i, 32
  %and140.i = shl nuw nsw i32 %conv133.i, 2
  %135 = and i32 %and140.i, 16
  %and146.i = lshr i32 %conv133.i, 1
  %136 = and i32 %and146.i, 8
  %and152.i = lshr i32 %conv133.i, 4
  %137 = and i32 %and152.i, 4
  %and158.i = lshr i32 %conv133.i, 6
  %138 = and i32 %and158.i, 2
  %and163.i = lshr i32 %124, 4
  %and163.lobit.i = and i32 %and163.i, 1
  %139 = or i32 %or120.i, %and163.lobit.i
  %140 = or i32 %139, %129
  %141 = or i32 %140, %134
  %142 = or i32 %141, %135
  %143 = or i32 %142, %136
  %144 = or i32 %143, %137
  %145 = or i32 %144, %138
  %or167.i = xor i32 %145, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %146 = load i32, ptr @hantro_debug, align 4
  %and.i336.i = and i32 %146, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i336.i)
  %tobool.not.i337.i = icmp eq i32 %and.i336.i, 0
  br i1 %tobool.not.i337.i, label %land.end129.i.set_params.exit_crit_edge, label %do.end.i339.i

land.end129.i.set_params.exit_crit_edge:          ; preds = %land.end129.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_params.exit

do.end.i339.i:                                    ; preds = %land.end129.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i338.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 115, i32 noundef %or167.i) #7
  br label %set_params.exit

set_params.exit:                                  ; preds = %do.end.i339.i, %land.end129.i.set_params.exit_crit_edge
  %147 = tail call i32 @llvm.bswap.i32(i32 %or167.i) #4
  %148 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i341.i = getelementptr i8, ptr %149, i32 460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i341.i, i32 %147) #4, !srcloc !23
  %150 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ctx, align 8
  %reflists.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 4, i32 2
  %b0.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 5
  %b1.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 5, i32 4
  %arrayidx.i = getelementptr i8, ptr %reflists.i, i32 9
  %152 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %153 to i32
  %shl.i16 = shl i32 %conv.i, 25
  %and.i17 = and i32 %shl.i16, 1040187392
  %arrayidx5.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 4, i32 4
  %154 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %155 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 20
  %and8.i18 = and i32 %shl7.i, 32505856
  %or.i19 = or i32 %and8.i18, %and.i17
  %arrayidx9.i = getelementptr i8, ptr %reflists.i, i32 7
  %156 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %157 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 15
  %and12.i = and i32 %shl11.i, 1015808
  %or13.i = or i32 %or.i19, %and12.i
  %arrayidx14.i = getelementptr i8, ptr %reflists.i, i32 6
  %158 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %159 to i32
  %shl16.i = shl nuw nsw i32 %conv15.i, 10
  %and17.i = and i32 %shl16.i, 31744
  %or18.i20 = or i32 %or13.i, %and17.i
  %arrayidx19.i = getelementptr i8, ptr %reflists.i, i32 5
  %160 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %161 to i32
  %shl21.i = shl nuw nsw i32 %conv20.i, 5
  %and22.i = and i32 %shl21.i, 992
  %or23.i21 = or i32 %or18.i20, %and22.i
  %arrayidx24.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 4, i32 3
  %162 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx24.i, align 1
  %164 = and i8 %163, 31
  %and27.i = zext i8 %164 to i32
  %or28.i = or i32 %or23.i21, %and27.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %165 = load i32, ptr @hantro_debug, align 4
  %and.i.i22 = and i32 %165, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i22)
  %tobool.not.i.i23 = icmp eq i32 %and.i.i22, 0
  br i1 %tobool.not.i.i23, label %set_params.exit.vdpu_write_relaxed.exit.i29_crit_edge, label %do.end.i.i25

set_params.exit.vdpu_write_relaxed.exit.i29_crit_edge: ; preds = %set_params.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i29

do.end.i.i25:                                     ; preds = %set_params.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 74, i32 noundef %or28.i) #7
  br label %vdpu_write_relaxed.exit.i29

vdpu_write_relaxed.exit.i29:                      ; preds = %do.end.i.i25, %set_params.exit.vdpu_write_relaxed.exit.i29_crit_edge
  %166 = tail call i32 @llvm.bswap.i32(i32 %or28.i) #4
  %dec_base.i.i26 = getelementptr inbounds %struct.hantro_dev, ptr %151, i32 0, i32 11
  %167 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i.i27 = getelementptr i8, ptr %168, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i27, i32 %166) #4, !srcloc !23
  %arrayidx29.i = getelementptr i8, ptr %reflists.i, i32 15
  %169 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = zext i8 %170 to i32
  %shl31.i = shl i32 %conv30.i, 25
  %and32.i = and i32 %shl31.i, 1040187392
  %arrayidx33.i = getelementptr i8, ptr %reflists.i, i32 14
  %171 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %172 to i32
  %shl35.i = shl nuw nsw i32 %conv34.i, 20
  %and36.i = and i32 %shl35.i, 32505856
  %or37.i = or i32 %and36.i, %and32.i
  %arrayidx38.i = getelementptr i8, ptr %reflists.i, i32 13
  %173 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %174 to i32
  %shl40.i = shl nuw nsw i32 %conv39.i, 15
  %and41.i = and i32 %shl40.i, 1015808
  %or42.i28 = or i32 %or37.i, %and41.i
  %arrayidx43.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 4, i32 5
  %175 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx43.i, align 1
  %conv44.i = zext i8 %176 to i32
  %shl45.i = shl nuw nsw i32 %conv44.i, 10
  %and46.i = and i32 %shl45.i, 31744
  %or47.i = or i32 %or42.i28, %and46.i
  %arrayidx48.i = getelementptr i8, ptr %reflists.i, i32 11
  %177 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %178 to i32
  %shl50.i = shl nuw nsw i32 %conv49.i, 5
  %and51.i = and i32 %shl50.i, 992
  %or52.i = or i32 %or47.i, %and51.i
  %arrayidx53.i = getelementptr i8, ptr %reflists.i, i32 10
  %179 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx53.i, align 1
  %181 = and i8 %180, 31
  %and56.i = zext i8 %181 to i32
  %or57.i = or i32 %or52.i, %and56.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %182 = load i32, ptr @hantro_debug, align 4
  %and.i415.i = and i32 %182, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i415.i)
  %tobool.not.i416.i = icmp eq i32 %and.i415.i, 0
  br i1 %tobool.not.i416.i, label %vdpu_write_relaxed.exit.i29.vdpu_write_relaxed.exit421.i_crit_edge, label %do.end.i418.i

vdpu_write_relaxed.exit.i29.vdpu_write_relaxed.exit421.i_crit_edge: ; preds = %vdpu_write_relaxed.exit.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit421.i

do.end.i418.i:                                    ; preds = %vdpu_write_relaxed.exit.i29
  call void @__sanitizer_cov_trace_pc() #6
  %call.i417.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 75, i32 noundef %or57.i) #7
  br label %vdpu_write_relaxed.exit421.i

vdpu_write_relaxed.exit421.i:                     ; preds = %do.end.i418.i, %vdpu_write_relaxed.exit.i29.vdpu_write_relaxed.exit421.i_crit_edge
  %183 = tail call i32 @llvm.bswap.i32(i32 %or57.i) #4
  %184 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i420.i = getelementptr i8, ptr %185, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i420.i, i32 %183) #4, !srcloc !23
  %call.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 1) #4
  %conv58.i = zext i16 %call.i to i32
  %shl59.i = shl nuw i32 %conv58.i, 16
  %call61.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 0) #4
  %conv62.i = zext i16 %call61.i to i32
  %or65.i = or i32 %shl59.i, %conv62.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %186 = load i32, ptr @hantro_debug, align 4
  %and.i422.i = and i32 %186, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i422.i)
  %tobool.not.i423.i = icmp eq i32 %and.i422.i, 0
  br i1 %tobool.not.i423.i, label %vdpu_write_relaxed.exit421.i.vdpu_write_relaxed.exit428.i_crit_edge, label %do.end.i425.i

vdpu_write_relaxed.exit421.i.vdpu_write_relaxed.exit428.i_crit_edge: ; preds = %vdpu_write_relaxed.exit421.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit428.i

do.end.i425.i:                                    ; preds = %vdpu_write_relaxed.exit421.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i424.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 76, i32 noundef %or65.i) #7
  br label %vdpu_write_relaxed.exit428.i

vdpu_write_relaxed.exit428.i:                     ; preds = %do.end.i425.i, %vdpu_write_relaxed.exit421.i.vdpu_write_relaxed.exit428.i_crit_edge
  %187 = tail call i32 @llvm.bswap.i32(i32 %or65.i) #4
  %188 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i427.i = getelementptr i8, ptr %189, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i427.i, i32 %187) #4, !srcloc !23
  %call66.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 3) #4
  %conv67.i = zext i16 %call66.i to i32
  %shl68.i = shl nuw i32 %conv67.i, 16
  %call70.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 2) #4
  %conv71.i30 = zext i16 %call70.i to i32
  %or74.i = or i32 %shl68.i, %conv71.i30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %190 = load i32, ptr @hantro_debug, align 4
  %and.i429.i = and i32 %190, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i429.i)
  %tobool.not.i430.i = icmp eq i32 %and.i429.i, 0
  br i1 %tobool.not.i430.i, label %vdpu_write_relaxed.exit428.i.vdpu_write_relaxed.exit435.i_crit_edge, label %do.end.i432.i

vdpu_write_relaxed.exit428.i.vdpu_write_relaxed.exit435.i_crit_edge: ; preds = %vdpu_write_relaxed.exit428.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit435.i

do.end.i432.i:                                    ; preds = %vdpu_write_relaxed.exit428.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i431.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 77, i32 noundef %or74.i) #7
  br label %vdpu_write_relaxed.exit435.i

vdpu_write_relaxed.exit435.i:                     ; preds = %do.end.i432.i, %vdpu_write_relaxed.exit428.i.vdpu_write_relaxed.exit435.i_crit_edge
  %191 = tail call i32 @llvm.bswap.i32(i32 %or74.i) #4
  %192 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i434.i = getelementptr i8, ptr %193, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i434.i, i32 %191) #4, !srcloc !23
  %call75.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 5) #4
  %conv76.i = zext i16 %call75.i to i32
  %shl77.i = shl nuw i32 %conv76.i, 16
  %call79.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 4) #4
  %conv80.i = zext i16 %call79.i to i32
  %or83.i = or i32 %shl77.i, %conv80.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %194 = load i32, ptr @hantro_debug, align 4
  %and.i436.i = and i32 %194, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i436.i)
  %tobool.not.i437.i = icmp eq i32 %and.i436.i, 0
  br i1 %tobool.not.i437.i, label %vdpu_write_relaxed.exit435.i.vdpu_write_relaxed.exit442.i_crit_edge, label %do.end.i439.i

vdpu_write_relaxed.exit435.i.vdpu_write_relaxed.exit442.i_crit_edge: ; preds = %vdpu_write_relaxed.exit435.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit442.i

do.end.i439.i:                                    ; preds = %vdpu_write_relaxed.exit435.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i438.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 78, i32 noundef %or83.i) #7
  br label %vdpu_write_relaxed.exit442.i

vdpu_write_relaxed.exit442.i:                     ; preds = %do.end.i439.i, %vdpu_write_relaxed.exit435.i.vdpu_write_relaxed.exit442.i_crit_edge
  %195 = tail call i32 @llvm.bswap.i32(i32 %or83.i) #4
  %196 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i441.i = getelementptr i8, ptr %197, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i441.i, i32 %195) #4, !srcloc !23
  %call84.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 7) #4
  %conv85.i = zext i16 %call84.i to i32
  %shl86.i = shl nuw i32 %conv85.i, 16
  %call88.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 6) #4
  %conv89.i = zext i16 %call88.i to i32
  %or92.i = or i32 %shl86.i, %conv89.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %198 = load i32, ptr @hantro_debug, align 4
  %and.i443.i = and i32 %198, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i443.i)
  %tobool.not.i444.i = icmp eq i32 %and.i443.i, 0
  br i1 %tobool.not.i444.i, label %vdpu_write_relaxed.exit442.i.vdpu_write_relaxed.exit449.i_crit_edge, label %do.end.i446.i

vdpu_write_relaxed.exit442.i.vdpu_write_relaxed.exit449.i_crit_edge: ; preds = %vdpu_write_relaxed.exit442.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit449.i

do.end.i446.i:                                    ; preds = %vdpu_write_relaxed.exit442.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i445.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 79, i32 noundef %or92.i) #7
  br label %vdpu_write_relaxed.exit449.i

vdpu_write_relaxed.exit449.i:                     ; preds = %do.end.i446.i, %vdpu_write_relaxed.exit442.i.vdpu_write_relaxed.exit449.i_crit_edge
  %199 = tail call i32 @llvm.bswap.i32(i32 %or92.i) #4
  %200 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i448.i = getelementptr i8, ptr %201, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i448.i, i32 %199) #4, !srcloc !23
  %call93.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 9) #4
  %conv94.i = zext i16 %call93.i to i32
  %shl95.i = shl nuw i32 %conv94.i, 16
  %call97.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 8) #4
  %conv98.i = zext i16 %call97.i to i32
  %or101.i = or i32 %shl95.i, %conv98.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %202 = load i32, ptr @hantro_debug, align 4
  %and.i450.i = and i32 %202, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i450.i)
  %tobool.not.i451.i = icmp eq i32 %and.i450.i, 0
  br i1 %tobool.not.i451.i, label %vdpu_write_relaxed.exit449.i.vdpu_write_relaxed.exit456.i_crit_edge, label %do.end.i453.i

vdpu_write_relaxed.exit449.i.vdpu_write_relaxed.exit456.i_crit_edge: ; preds = %vdpu_write_relaxed.exit449.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit456.i

do.end.i453.i:                                    ; preds = %vdpu_write_relaxed.exit449.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i452.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 80, i32 noundef %or101.i) #7
  br label %vdpu_write_relaxed.exit456.i

vdpu_write_relaxed.exit456.i:                     ; preds = %do.end.i453.i, %vdpu_write_relaxed.exit449.i.vdpu_write_relaxed.exit456.i_crit_edge
  %203 = tail call i32 @llvm.bswap.i32(i32 %or101.i) #4
  %204 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i455.i = getelementptr i8, ptr %205, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i455.i, i32 %203) #4, !srcloc !23
  %call102.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 11) #4
  %conv103.i = zext i16 %call102.i to i32
  %shl104.i = shl nuw i32 %conv103.i, 16
  %call106.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 10) #4
  %conv107.i = zext i16 %call106.i to i32
  %or110.i = or i32 %shl104.i, %conv107.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %206 = load i32, ptr @hantro_debug, align 4
  %and.i457.i = and i32 %206, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i457.i)
  %tobool.not.i458.i = icmp eq i32 %and.i457.i, 0
  br i1 %tobool.not.i458.i, label %vdpu_write_relaxed.exit456.i.vdpu_write_relaxed.exit463.i_crit_edge, label %do.end.i460.i

vdpu_write_relaxed.exit456.i.vdpu_write_relaxed.exit463.i_crit_edge: ; preds = %vdpu_write_relaxed.exit456.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit463.i

do.end.i460.i:                                    ; preds = %vdpu_write_relaxed.exit456.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i459.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 81, i32 noundef %or110.i) #7
  br label %vdpu_write_relaxed.exit463.i

vdpu_write_relaxed.exit463.i:                     ; preds = %do.end.i460.i, %vdpu_write_relaxed.exit456.i.vdpu_write_relaxed.exit463.i_crit_edge
  %207 = tail call i32 @llvm.bswap.i32(i32 %or110.i) #4
  %208 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i462.i = getelementptr i8, ptr %209, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i462.i, i32 %207) #4, !srcloc !23
  %call111.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 13) #4
  %conv112.i = zext i16 %call111.i to i32
  %shl113.i = shl nuw i32 %conv112.i, 16
  %call115.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 12) #4
  %conv116.i = zext i16 %call115.i to i32
  %or119.i = or i32 %shl113.i, %conv116.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %210 = load i32, ptr @hantro_debug, align 4
  %and.i464.i = and i32 %210, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i464.i)
  %tobool.not.i465.i = icmp eq i32 %and.i464.i, 0
  br i1 %tobool.not.i465.i, label %vdpu_write_relaxed.exit463.i.vdpu_write_relaxed.exit470.i_crit_edge, label %do.end.i467.i

vdpu_write_relaxed.exit463.i.vdpu_write_relaxed.exit470.i_crit_edge: ; preds = %vdpu_write_relaxed.exit463.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit470.i

do.end.i467.i:                                    ; preds = %vdpu_write_relaxed.exit463.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i466.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 82, i32 noundef %or119.i) #7
  br label %vdpu_write_relaxed.exit470.i

vdpu_write_relaxed.exit470.i:                     ; preds = %do.end.i467.i, %vdpu_write_relaxed.exit463.i.vdpu_write_relaxed.exit470.i_crit_edge
  %211 = tail call i32 @llvm.bswap.i32(i32 %or119.i) #4
  %212 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i469.i = getelementptr i8, ptr %213, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i469.i, i32 %211) #4, !srcloc !23
  %call120.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 15) #4
  %conv121.i = zext i16 %call120.i to i32
  %shl122.i = shl nuw i32 %conv121.i, 16
  %call124.i = tail call zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef %ctx, i32 noundef 14) #4
  %conv125.i = zext i16 %call124.i to i32
  %or128.i = or i32 %shl122.i, %conv125.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %214 = load i32, ptr @hantro_debug, align 4
  %and.i471.i = and i32 %214, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i471.i)
  %tobool.not.i472.i = icmp eq i32 %and.i471.i, 0
  br i1 %tobool.not.i472.i, label %vdpu_write_relaxed.exit470.i.vdpu_write_relaxed.exit477.i_crit_edge, label %do.end.i474.i

vdpu_write_relaxed.exit470.i.vdpu_write_relaxed.exit477.i_crit_edge: ; preds = %vdpu_write_relaxed.exit470.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit477.i

do.end.i474.i:                                    ; preds = %vdpu_write_relaxed.exit470.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i473.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 83, i32 noundef %or128.i) #7
  br label %vdpu_write_relaxed.exit477.i

vdpu_write_relaxed.exit477.i:                     ; preds = %do.end.i474.i, %vdpu_write_relaxed.exit470.i.vdpu_write_relaxed.exit477.i_crit_edge
  %215 = tail call i32 @llvm.bswap.i32(i32 %or128.i) #4
  %216 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i476.i = getelementptr i8, ptr %217, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i476.i, i32 %215) #4, !srcloc !23
  %arrayidx129.i = getelementptr i8, ptr %b0.i, i32 5
  %218 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx129.i, align 1
  %conv130.i = zext i8 %219 to i32
  %shl131.i = shl i32 %conv130.i, 25
  %and132.i = and i32 %shl131.i, 1040187392
  %arrayidx133.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 5, i32 1
  %220 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx133.i, align 1
  %conv134.i = zext i8 %221 to i32
  %shl135.i = shl nuw nsw i32 %conv134.i, 20
  %and136.i = and i32 %shl135.i, 32505856
  %or137.i = or i32 %and136.i, %and132.i
  %arrayidx138.i = getelementptr i8, ptr %b0.i, i32 3
  %222 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx138.i, align 1
  %conv139.i = zext i8 %223 to i32
  %shl140.i = shl nuw nsw i32 %conv139.i, 15
  %and141.i = and i32 %shl140.i, 1015808
  %or142.i = or i32 %or137.i, %and141.i
  %arrayidx143.i = getelementptr i8, ptr %b0.i, i32 2
  %224 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx143.i, align 1
  %conv144.i = zext i8 %225 to i32
  %shl145.i = shl nuw nsw i32 %conv144.i, 10
  %and146.i31 = and i32 %shl145.i, 31744
  %or147.i = or i32 %or142.i, %and146.i31
  %arrayidx148.i = getelementptr i8, ptr %b0.i, i32 1
  %226 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx148.i, align 1
  %conv149.i = zext i8 %227 to i32
  %shl150.i = shl nuw nsw i32 %conv149.i, 5
  %and151.i = and i32 %shl150.i, 992
  %or152.i = or i32 %or147.i, %and151.i
  %228 = ptrtoint ptr %b0.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %b0.i, align 1
  %230 = and i8 %229, 31
  %and156.i = zext i8 %230 to i32
  %or157.i = or i32 %or152.i, %and156.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %231 = load i32, ptr @hantro_debug, align 4
  %and.i478.i = and i32 %231, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i478.i)
  %tobool.not.i479.i = icmp eq i32 %and.i478.i, 0
  br i1 %tobool.not.i479.i, label %vdpu_write_relaxed.exit477.i.vdpu_write_relaxed.exit484.i_crit_edge, label %do.end.i481.i

vdpu_write_relaxed.exit477.i.vdpu_write_relaxed.exit484.i_crit_edge: ; preds = %vdpu_write_relaxed.exit477.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit484.i

do.end.i481.i:                                    ; preds = %vdpu_write_relaxed.exit477.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i480.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 100, i32 noundef %or157.i) #7
  br label %vdpu_write_relaxed.exit484.i

vdpu_write_relaxed.exit484.i:                     ; preds = %do.end.i481.i, %vdpu_write_relaxed.exit477.i.vdpu_write_relaxed.exit484.i_crit_edge
  %232 = tail call i32 @llvm.bswap.i32(i32 %or157.i) #4
  %233 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i483.i = getelementptr i8, ptr %234, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i483.i, i32 %232) #4, !srcloc !23
  %arrayidx158.i = getelementptr i8, ptr %b0.i, i32 11
  %235 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx158.i, align 1
  %conv159.i = zext i8 %236 to i32
  %shl160.i = shl i32 %conv159.i, 25
  %and161.i = and i32 %shl160.i, 1040187392
  %arrayidx162.i = getelementptr i8, ptr %b0.i, i32 10
  %237 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx162.i, align 1
  %conv163.i = zext i8 %238 to i32
  %shl164.i = shl nuw nsw i32 %conv163.i, 20
  %and165.i = and i32 %shl164.i, 32505856
  %or166.i = or i32 %and165.i, %and161.i
  %arrayidx167.i = getelementptr i8, ptr %b0.i, i32 9
  %239 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx167.i, align 1
  %conv168.i = zext i8 %240 to i32
  %shl169.i = shl nuw nsw i32 %conv168.i, 15
  %and170.i = and i32 %shl169.i, 1015808
  %or171.i = or i32 %or166.i, %and170.i
  %arrayidx172.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 5, i32 2
  %241 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx172.i, align 1
  %conv173.i = zext i8 %242 to i32
  %shl174.i = shl nuw nsw i32 %conv173.i, 10
  %and175.i = and i32 %shl174.i, 31744
  %or176.i = or i32 %or171.i, %and175.i
  %arrayidx177.i = getelementptr i8, ptr %b0.i, i32 7
  %243 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx177.i, align 1
  %conv178.i = zext i8 %244 to i32
  %shl179.i = shl nuw nsw i32 %conv178.i, 5
  %and180.i = and i32 %shl179.i, 992
  %or181.i = or i32 %or176.i, %and180.i
  %arrayidx182.i = getelementptr i8, ptr %b0.i, i32 6
  %245 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx182.i, align 1
  %247 = and i8 %246, 31
  %and185.i = zext i8 %247 to i32
  %or186.i = or i32 %or181.i, %and185.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %248 = load i32, ptr @hantro_debug, align 4
  %and.i485.i = and i32 %248, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i485.i)
  %tobool.not.i486.i = icmp eq i32 %and.i485.i, 0
  br i1 %tobool.not.i486.i, label %vdpu_write_relaxed.exit484.i.vdpu_write_relaxed.exit491.i_crit_edge, label %do.end.i488.i

vdpu_write_relaxed.exit484.i.vdpu_write_relaxed.exit491.i_crit_edge: ; preds = %vdpu_write_relaxed.exit484.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit491.i

do.end.i488.i:                                    ; preds = %vdpu_write_relaxed.exit484.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i487.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 101, i32 noundef %or186.i) #7
  br label %vdpu_write_relaxed.exit491.i

vdpu_write_relaxed.exit491.i:                     ; preds = %do.end.i488.i, %vdpu_write_relaxed.exit484.i.vdpu_write_relaxed.exit491.i_crit_edge
  %249 = tail call i32 @llvm.bswap.i32(i32 %or186.i) #4
  %250 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i490.i = getelementptr i8, ptr %251, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i490.i, i32 %249) #4, !srcloc !23
  %arrayidx187.i = getelementptr i8, ptr %b0.i, i32 15
  %252 = ptrtoint ptr %arrayidx187.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx187.i, align 1
  %conv188.i = zext i8 %253 to i32
  %shl189.i = shl nuw nsw i32 %conv188.i, 15
  %and190.i = and i32 %shl189.i, 1015808
  %arrayidx191.i = getelementptr i8, ptr %b0.i, i32 14
  %254 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx191.i, align 1
  %conv192.i = zext i8 %255 to i32
  %shl193.i = shl nuw nsw i32 %conv192.i, 10
  %and194.i = and i32 %shl193.i, 31744
  %or195.i = or i32 %and194.i, %and190.i
  %arrayidx196.i = getelementptr i8, ptr %b0.i, i32 13
  %256 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx196.i, align 1
  %conv197.i = zext i8 %257 to i32
  %shl198.i = shl nuw nsw i32 %conv197.i, 5
  %and199.i = and i32 %shl198.i, 992
  %or200.i = or i32 %or195.i, %and199.i
  %arrayidx201.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 5, i32 3
  %258 = ptrtoint ptr %arrayidx201.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx201.i, align 1
  %260 = and i8 %259, 31
  %and204.i = zext i8 %260 to i32
  %or205.i = or i32 %or200.i, %and204.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %261 = load i32, ptr @hantro_debug, align 4
  %and.i492.i = and i32 %261, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i492.i)
  %tobool.not.i493.i = icmp eq i32 %and.i492.i, 0
  br i1 %tobool.not.i493.i, label %vdpu_write_relaxed.exit491.i.vdpu_write_relaxed.exit498.i_crit_edge, label %do.end.i495.i

vdpu_write_relaxed.exit491.i.vdpu_write_relaxed.exit498.i_crit_edge: ; preds = %vdpu_write_relaxed.exit491.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit498.i

do.end.i495.i:                                    ; preds = %vdpu_write_relaxed.exit491.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i494.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 102, i32 noundef %or205.i) #7
  br label %vdpu_write_relaxed.exit498.i

vdpu_write_relaxed.exit498.i:                     ; preds = %do.end.i495.i, %vdpu_write_relaxed.exit491.i.vdpu_write_relaxed.exit498.i_crit_edge
  %262 = tail call i32 @llvm.bswap.i32(i32 %or205.i) #4
  %263 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i497.i = getelementptr i8, ptr %264, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i497.i, i32 %262) #4, !srcloc !23
  %arrayidx206.i = getelementptr i8, ptr %b1.i, i32 5
  %265 = ptrtoint ptr %arrayidx206.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx206.i, align 1
  %conv207.i = zext i8 %266 to i32
  %shl208.i = shl i32 %conv207.i, 25
  %and209.i = and i32 %shl208.i, 1040187392
  %arrayidx210.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 5, i32 5
  %267 = ptrtoint ptr %arrayidx210.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx210.i, align 1
  %conv211.i = zext i8 %268 to i32
  %shl212.i = shl nuw nsw i32 %conv211.i, 20
  %and213.i = and i32 %shl212.i, 32505856
  %or214.i = or i32 %and213.i, %and209.i
  %arrayidx215.i = getelementptr i8, ptr %b1.i, i32 3
  %269 = ptrtoint ptr %arrayidx215.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx215.i, align 1
  %conv216.i = zext i8 %270 to i32
  %shl217.i = shl nuw nsw i32 %conv216.i, 15
  %and218.i = and i32 %shl217.i, 1015808
  %or219.i = or i32 %or214.i, %and218.i
  %arrayidx220.i = getelementptr i8, ptr %b1.i, i32 2
  %271 = ptrtoint ptr %arrayidx220.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx220.i, align 1
  %conv221.i = zext i8 %272 to i32
  %shl222.i = shl nuw nsw i32 %conv221.i, 10
  %and223.i = and i32 %shl222.i, 31744
  %or224.i = or i32 %or219.i, %and223.i
  %arrayidx225.i = getelementptr i8, ptr %b1.i, i32 1
  %273 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx225.i, align 1
  %conv226.i = zext i8 %274 to i32
  %shl227.i = shl nuw nsw i32 %conv226.i, 5
  %and228.i = and i32 %shl227.i, 992
  %or229.i = or i32 %or224.i, %and228.i
  %275 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %b1.i, align 1
  %277 = and i8 %276, 31
  %and233.i = zext i8 %277 to i32
  %or234.i = or i32 %or229.i, %and233.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %278 = load i32, ptr @hantro_debug, align 4
  %and.i499.i = and i32 %278, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i499.i)
  %tobool.not.i500.i = icmp eq i32 %and.i499.i, 0
  br i1 %tobool.not.i500.i, label %vdpu_write_relaxed.exit498.i.vdpu_write_relaxed.exit505.i_crit_edge, label %do.end.i502.i

vdpu_write_relaxed.exit498.i.vdpu_write_relaxed.exit505.i_crit_edge: ; preds = %vdpu_write_relaxed.exit498.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit505.i

do.end.i502.i:                                    ; preds = %vdpu_write_relaxed.exit498.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i501.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 103, i32 noundef %or234.i) #7
  br label %vdpu_write_relaxed.exit505.i

vdpu_write_relaxed.exit505.i:                     ; preds = %do.end.i502.i, %vdpu_write_relaxed.exit498.i.vdpu_write_relaxed.exit505.i_crit_edge
  %279 = tail call i32 @llvm.bswap.i32(i32 %or234.i) #4
  %280 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i504.i = getelementptr i8, ptr %281, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i504.i, i32 %279) #4, !srcloc !23
  %arrayidx235.i = getelementptr i8, ptr %b1.i, i32 11
  %282 = ptrtoint ptr %arrayidx235.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx235.i, align 1
  %conv236.i = zext i8 %283 to i32
  %shl237.i = shl i32 %conv236.i, 25
  %and238.i = and i32 %shl237.i, 1040187392
  %arrayidx239.i = getelementptr i8, ptr %b1.i, i32 10
  %284 = ptrtoint ptr %arrayidx239.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx239.i, align 1
  %conv240.i = zext i8 %285 to i32
  %shl241.i = shl nuw nsw i32 %conv240.i, 20
  %and242.i = and i32 %shl241.i, 32505856
  %or243.i = or i32 %and242.i, %and238.i
  %arrayidx244.i = getelementptr i8, ptr %b1.i, i32 9
  %286 = ptrtoint ptr %arrayidx244.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx244.i, align 1
  %conv245.i = zext i8 %287 to i32
  %shl246.i = shl nuw nsw i32 %conv245.i, 15
  %and247.i = and i32 %shl246.i, 1015808
  %or248.i = or i32 %or243.i, %and247.i
  %arrayidx249.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1
  %288 = ptrtoint ptr %arrayidx249.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %arrayidx249.i, align 1
  %conv250.i = zext i8 %289 to i32
  %shl251.i = shl nuw nsw i32 %conv250.i, 10
  %and252.i = and i32 %shl251.i, 31744
  %or253.i = or i32 %or248.i, %and252.i
  %arrayidx254.i = getelementptr i8, ptr %b1.i, i32 7
  %290 = ptrtoint ptr %arrayidx254.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx254.i, align 1
  %conv255.i = zext i8 %291 to i32
  %shl256.i = shl nuw nsw i32 %conv255.i, 5
  %and257.i = and i32 %shl256.i, 992
  %or258.i = or i32 %or253.i, %and257.i
  %arrayidx259.i = getelementptr i8, ptr %b1.i, i32 6
  %292 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx259.i, align 1
  %294 = and i8 %293, 31
  %and262.i = zext i8 %294 to i32
  %or263.i = or i32 %or258.i, %and262.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %295 = load i32, ptr @hantro_debug, align 4
  %and.i506.i = and i32 %295, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i506.i)
  %tobool.not.i507.i = icmp eq i32 %and.i506.i, 0
  br i1 %tobool.not.i507.i, label %vdpu_write_relaxed.exit505.i.vdpu_write_relaxed.exit512.i_crit_edge, label %do.end.i509.i

vdpu_write_relaxed.exit505.i.vdpu_write_relaxed.exit512.i_crit_edge: ; preds = %vdpu_write_relaxed.exit505.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit512.i

do.end.i509.i:                                    ; preds = %vdpu_write_relaxed.exit505.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i508.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 104, i32 noundef %or263.i) #7
  br label %vdpu_write_relaxed.exit512.i

vdpu_write_relaxed.exit512.i:                     ; preds = %do.end.i509.i, %vdpu_write_relaxed.exit505.i.vdpu_write_relaxed.exit512.i_crit_edge
  %296 = tail call i32 @llvm.bswap.i32(i32 %or263.i) #4
  %297 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i511.i = getelementptr i8, ptr %298, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i511.i, i32 %296) #4, !srcloc !23
  %arrayidx264.i = getelementptr i8, ptr %b1.i, i32 15
  %299 = ptrtoint ptr %arrayidx264.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %arrayidx264.i, align 1
  %conv265.i = zext i8 %300 to i32
  %shl266.i = shl nuw nsw i32 %conv265.i, 15
  %and267.i = and i32 %shl266.i, 1015808
  %arrayidx268.i = getelementptr i8, ptr %b1.i, i32 14
  %301 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx268.i, align 1
  %conv269.i = zext i8 %302 to i32
  %shl270.i = shl nuw nsw i32 %conv269.i, 10
  %and271.i = and i32 %shl270.i, 31744
  %or272.i = or i32 %and271.i, %and267.i
  %arrayidx273.i = getelementptr i8, ptr %b1.i, i32 13
  %303 = ptrtoint ptr %arrayidx273.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %arrayidx273.i, align 1
  %conv274.i = zext i8 %304 to i32
  %shl275.i = shl nuw nsw i32 %conv274.i, 5
  %and276.i = and i32 %shl275.i, 992
  %or277.i = or i32 %or272.i, %and276.i
  %arrayidx278.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1, i32 0, i32 1
  %305 = ptrtoint ptr %arrayidx278.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx278.i, align 1
  %307 = and i8 %306, 31
  %and281.i = zext i8 %307 to i32
  %or282.i = or i32 %or277.i, %and281.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %308 = load i32, ptr @hantro_debug, align 4
  %and.i513.i = and i32 %308, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i513.i)
  %tobool.not.i514.i = icmp eq i32 %and.i513.i, 0
  br i1 %tobool.not.i514.i, label %vdpu_write_relaxed.exit512.i.vdpu_write_relaxed.exit519.i_crit_edge, label %do.end.i516.i

vdpu_write_relaxed.exit512.i.vdpu_write_relaxed.exit519.i_crit_edge: ; preds = %vdpu_write_relaxed.exit512.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit519.i

do.end.i516.i:                                    ; preds = %vdpu_write_relaxed.exit512.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i515.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 105, i32 noundef %or282.i) #7
  br label %vdpu_write_relaxed.exit519.i

vdpu_write_relaxed.exit519.i:                     ; preds = %do.end.i516.i, %vdpu_write_relaxed.exit512.i.vdpu_write_relaxed.exit519.i_crit_edge
  %309 = tail call i32 @llvm.bswap.i32(i32 %or282.i) #4
  %310 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i518.i = getelementptr i8, ptr %311, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i518.i, i32 %309) #4, !srcloc !23
  %arrayidx283.i = getelementptr i8, ptr %reflists.i, i32 3
  %312 = ptrtoint ptr %arrayidx283.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx283.i, align 1
  %conv284.i = zext i8 %313 to i32
  %shl285.i = shl nuw nsw i32 %conv284.i, 15
  %and286.i = and i32 %shl285.i, 1015808
  %arrayidx287.i = getelementptr i8, ptr %reflists.i, i32 2
  %314 = ptrtoint ptr %arrayidx287.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx287.i, align 1
  %conv288.i = zext i8 %315 to i32
  %shl289.i = shl nuw nsw i32 %conv288.i, 10
  %and290.i = and i32 %shl289.i, 31744
  %or291.i = or i32 %and290.i, %and286.i
  %arrayidx292.i = getelementptr i8, ptr %reflists.i, i32 1
  %316 = ptrtoint ptr %arrayidx292.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx292.i, align 1
  %conv293.i = zext i8 %317 to i32
  %shl294.i = shl nuw nsw i32 %conv293.i, 5
  %and295.i = and i32 %shl294.i, 992
  %or296.i = or i32 %or291.i, %and295.i
  %318 = ptrtoint ptr %reflists.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %reflists.i, align 1
  %320 = and i8 %319, 31
  %and300.i = zext i8 %320 to i32
  %or301.i = or i32 %or296.i, %and300.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %321 = load i32, ptr @hantro_debug, align 4
  %and.i520.i = and i32 %321, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i520.i)
  %tobool.not.i521.i = icmp eq i32 %and.i520.i, 0
  br i1 %tobool.not.i521.i, label %vdpu_write_relaxed.exit519.i.vdpu_write_relaxed.exit526.i_crit_edge, label %do.end.i523.i

vdpu_write_relaxed.exit519.i.vdpu_write_relaxed.exit526.i_crit_edge: ; preds = %vdpu_write_relaxed.exit519.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit526.i

do.end.i523.i:                                    ; preds = %vdpu_write_relaxed.exit519.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i522.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 106, i32 noundef %or301.i) #7
  br label %vdpu_write_relaxed.exit526.i

vdpu_write_relaxed.exit526.i:                     ; preds = %do.end.i523.i, %vdpu_write_relaxed.exit519.i.vdpu_write_relaxed.exit526.i_crit_edge
  %322 = tail call i32 @llvm.bswap.i32(i32 %or301.i) #4
  %323 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i525.i = getelementptr i8, ptr %324, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i525.i, i32 %322) #4, !srcloc !23
  %dpb_longterm.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1, i32 1
  %325 = ptrtoint ptr %dpb_longterm.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %dpb_longterm.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %327 = load i32, ptr @hantro_debug, align 4
  %and.i527.i = and i32 %327, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i527.i)
  %tobool.not.i528.i = icmp eq i32 %and.i527.i, 0
  br i1 %tobool.not.i528.i, label %vdpu_write_relaxed.exit526.i.vdpu_write_relaxed.exit533.i_crit_edge, label %do.end.i530.i

vdpu_write_relaxed.exit526.i.vdpu_write_relaxed.exit533.i_crit_edge: ; preds = %vdpu_write_relaxed.exit526.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit533.i

do.end.i530.i:                                    ; preds = %vdpu_write_relaxed.exit526.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i529.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 107, i32 noundef %326) #7
  br label %vdpu_write_relaxed.exit533.i

vdpu_write_relaxed.exit533.i:                     ; preds = %do.end.i530.i, %vdpu_write_relaxed.exit526.i.vdpu_write_relaxed.exit533.i_crit_edge
  %328 = tail call i32 @llvm.bswap.i32(i32 %326) #4
  %329 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i532.i = getelementptr i8, ptr %330, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i532.i, i32 %328) #4, !srcloc !23
  %dpb_valid.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 1, i32 1, i32 1
  %331 = ptrtoint ptr %dpb_valid.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %dpb_valid.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %333 = load i32, ptr @hantro_debug, align 4
  %and.i534.i = and i32 %333, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i534.i)
  %tobool.not.i535.i = icmp eq i32 %and.i534.i, 0
  br i1 %tobool.not.i535.i, label %vdpu_write_relaxed.exit533.i.vdpu_write_relaxed.exit540.i_crit_edge, label %do.end.i537.i

vdpu_write_relaxed.exit533.i.vdpu_write_relaxed.exit540.i_crit_edge: ; preds = %vdpu_write_relaxed.exit533.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit540.i

do.end.i537.i:                                    ; preds = %vdpu_write_relaxed.exit533.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i536.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 108, i32 noundef %332) #7
  br label %vdpu_write_relaxed.exit540.i

vdpu_write_relaxed.exit540.i:                     ; preds = %do.end.i537.i, %vdpu_write_relaxed.exit533.i.vdpu_write_relaxed.exit540.i_crit_edge
  %334 = tail call i32 @llvm.bswap.i32(i32 %332) #4
  %335 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i539.i = getelementptr i8, ptr %336, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i539.i, i32 %334) #4, !srcloc !23
  br label %for.body.i

for.body.i:                                       ; preds = %vdpu_write_relaxed.exit547.i.for.body.i_crit_edge, %vdpu_write_relaxed.exit540.i
  %i.0548.i = phi i32 [ 0, %vdpu_write_relaxed.exit540.i ], [ %inc.i, %vdpu_write_relaxed.exit547.i.for.body.i_crit_edge ]
  %call307.i = tail call i32 @hantro_h264_get_ref_buf(ptr noundef %ctx, i32 noundef %i.0548.i) #4
  %add.i32 = shl i32 %i.0548.i, 2
  %mul.i = add nuw nsw i32 %add.i32, 336
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %337 = load i32, ptr @hantro_debug, align 4
  %and.i541.i = and i32 %337, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i541.i)
  %tobool.not.i542.i = icmp eq i32 %and.i541.i, 0
  br i1 %tobool.not.i542.i, label %for.body.i.vdpu_write_relaxed.exit547.i_crit_edge, label %do.end.i544.i

for.body.i.vdpu_write_relaxed.exit547.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit547.i

do.end.i544.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i = lshr exact i32 %mul.i, 2
  %call.i543.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef %div5.i.i, i32 noundef %call307.i) #7
  br label %vdpu_write_relaxed.exit547.i

vdpu_write_relaxed.exit547.i:                     ; preds = %do.end.i544.i, %for.body.i.vdpu_write_relaxed.exit547.i_crit_edge
  %338 = tail call i32 @llvm.bswap.i32(i32 %call307.i) #4
  %339 = ptrtoint ptr %dec_base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %dec_base.i.i26, align 8
  %add.ptr.i546.i = getelementptr i8, ptr %340, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i546.i, i32 %338) #4, !srcloc !23
  %inc.i = add nuw nsw i32 %i.0548.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %set_ref.exit, label %vdpu_write_relaxed.exit547.i.for.body.i_crit_edge

vdpu_write_relaxed.exit547.i.for.body.i_crit_edge: ; preds = %vdpu_write_relaxed.exit547.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

set_ref.exit:                                     ; preds = %vdpu_write_relaxed.exit547.i
  %341 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %ctx, align 8
  %call.i.i34 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 0) #4
  %343 = ptrtoint ptr %call.i.i34 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %call.i.i34, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %345 = load i32, ptr @hantro_debug, align 4
  %and.i.i35 = and i32 %345, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i35)
  %tobool.not.i.i36 = icmp eq i32 %and.i.i35, 0
  br i1 %tobool.not.i.i36, label %set_ref.exit.vdpu_write_relaxed.exit.i40_crit_edge, label %do.end.i.i37

set_ref.exit.vdpu_write_relaxed.exit.i40_crit_edge: ; preds = %set_ref.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i40

do.end.i.i37:                                     ; preds = %set_ref.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 64, i32 noundef %344) #7
  br label %vdpu_write_relaxed.exit.i40

vdpu_write_relaxed.exit.i40:                      ; preds = %do.end.i.i37, %set_ref.exit.vdpu_write_relaxed.exit.i40_crit_edge
  %346 = tail call i32 @llvm.bswap.i32(i32 %344) #4
  %dec_base.i.i38 = getelementptr inbounds %struct.hantro_dev, ptr %342, i32 0, i32 11
  %347 = ptrtoint ptr %dec_base.i.i38 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %dec_base.i.i38, align 8
  %add.ptr.i.i39 = getelementptr i8, ptr %348, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39, i32 %346) #4, !srcloc !23
  %349 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %350, i32 0, i32 7
  %call.i.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i.i) #4
  %vpu_dst_fmt.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %351 = ptrtoint ptr %vpu_dst_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %vpu_dst_fmt.i.i, align 4
  %call.i76.i = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %352) #4
  br i1 %call.i76.i, label %if.then.i.i41, label %if.end.i.i

if.then.i.i41:                                    ; preds = %vdpu_write_relaxed.exit.i40
  call void @__sanitizer_cov_trace_pc() #6
  %postproc.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 12
  %index.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i.i, i32 0, i32 1
  %353 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %index.i.i, align 4
  %dma.i.i = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc.i.i, i32 0, i32 %354, i32 1
  br label %hantro_get_dec_buf_addr.exit.i

if.end.i.i:                                       ; preds = %vdpu_write_relaxed.exit.i40
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i77.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i.i, i32 noundef 0) #4
  br label %hantro_get_dec_buf_addr.exit.i

hantro_get_dec_buf_addr.exit.i:                   ; preds = %if.end.i.i, %if.then.i.i41
  %retval.0.in.i.i = phi ptr [ %dma.i.i, %if.then.i.i41 ], [ %call.i.i77.i, %if.end.i.i ]
  %355 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %retval.0.i.i42 = load i32, ptr %retval.0.in.i.i, align 4
  %356 = ptrtoint ptr %ctrls1.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ctrls1.i, align 4
  %flags.i43 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %357, i32 0, i32 14
  %358 = ptrtoint ptr %flags.i43 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %flags.i43, align 4
  %and.i44 = and i32 %359, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i45 = icmp eq i32 %and.i44, 0
  br i1 %tobool.not.i45, label %hantro_get_dec_buf_addr.exit.i.if.end.i_crit_edge, label %if.then.i

hantro_get_dec_buf_addr.exit.i.if.end.i_crit_edge: ; preds = %hantro_get_dec_buf_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %hantro_get_dec_buf_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %360 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %src_fmt.i, align 4
  %add.i47 = add i32 %361, 15
  %and5.i48 = and i32 %add.i47, -16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %hantro_get_dec_buf_addr.exit.i.if.end.i_crit_edge
  %offset.0.i = phi i32 [ %and5.i48, %if.then.i ], [ 0, %hantro_get_dec_buf_addr.exit.i.if.end.i_crit_edge ]
  %add6.i = add i32 %offset.0.i, %retval.0.i.i42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %362 = load i32, ptr @hantro_debug, align 4
  %and.i78.i = and i32 %362, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78.i)
  %tobool.not.i79.i = icmp eq i32 %and.i78.i, 0
  br i1 %tobool.not.i79.i, label %if.end.i.vdpu_write_relaxed.exit84.i_crit_edge, label %do.end.i81.i

if.end.i.vdpu_write_relaxed.exit84.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit84.i

do.end.i81.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 63, i32 noundef %add6.i) #7
  br label %vdpu_write_relaxed.exit84.i

vdpu_write_relaxed.exit84.i:                      ; preds = %do.end.i81.i, %if.end.i.vdpu_write_relaxed.exit84.i_crit_edge
  %363 = tail call i32 @llvm.bswap.i32(i32 %add6.i) #4
  %364 = ptrtoint ptr %dec_base.i.i38 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %dec_base.i.i38, align 8
  %add.ptr.i83.i = getelementptr i8, ptr %365, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 %363) #4, !srcloc !23
  %366 = ptrtoint ptr %sps2.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %sps2.i, align 4
  %368 = ptrtoint ptr %367 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %367, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %369)
  %cmp.i49 = icmp ugt i8 %369, 66
  br i1 %cmp.i49, label %land.lhs.true.i, label %vdpu_write_relaxed.exit84.i.if.end52.i_crit_edge

vdpu_write_relaxed.exit84.i.if.end52.i_crit_edge: ; preds = %vdpu_write_relaxed.exit84.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52.i

land.lhs.true.i:                                  ; preds = %vdpu_write_relaxed.exit84.i
  %370 = ptrtoint ptr %ctrls1.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %ctrls1.i, align 4
  %nal_ref_idc.i50 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %371, i32 0, i32 1
  %372 = ptrtoint ptr %nal_ref_idc.i50 to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %nal_ref_idc.i50, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %373)
  %tobool10.not.i = icmp eq i16 %373, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.if.end52.i_crit_edge, label %if.then11.i

land.lhs.true.i.if.end52.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %369)
  %cmp15.i = icmp ugt i8 %369, 99
  br i1 %cmp15.i, label %land.lhs.true17.i, label %if.then11.i.if.end23.i_crit_edge

if.then11.i.if.end23.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i

land.lhs.true17.i:                                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  %chroma_format_idc.i51 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %367, i32 0, i32 4
  %374 = ptrtoint ptr %chroma_format_idc.i51 to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %chroma_format_idc.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %375)
  %cmp20.i = icmp eq i8 %375, 0
  %spec.select.i = select i1 %cmp20.i, i32 256, i32 384
  br label %if.end23.i

if.end23.i:                                       ; preds = %land.lhs.true17.i, %if.then11.i.if.end23.i_crit_edge
  %bytes_per_mb.0.i = phi i32 [ 384, %if.then11.i.if.end23.i_crit_edge ], [ %spec.select.i, %land.lhs.true17.i ]
  %376 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %src_fmt.i, align 4
  %sub.i52 = add i32 %377, 15
  %div73.i = lshr i32 %sub.i52, 4
  %mul.i53 = mul i32 %div73.i, %bytes_per_mb.0.i
  %378 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %height.i, align 4
  %sub29.i = add i32 %379, 15
  %div3074.i = lshr i32 %sub29.i, 4
  %mul31.i = mul i32 %mul.i53, %div3074.i
  %flags33.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %371, i32 0, i32 14
  %380 = ptrtoint ptr %flags33.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %flags33.i, align 4
  %and34.i = and i32 %381, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  %mul42.i = shl i32 %div73.i, 5
  %mul48.i = mul i32 %mul42.i, %div3074.i
  %add49.i = select i1 %tobool35.not.i, i32 0, i32 %mul48.i
  %offset.1.i = add i32 %mul31.i, %retval.0.i.i42
  %add51.i = add i32 %offset.1.i, %add49.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %382 = load i32, ptr @hantro_debug, align 4
  %and.i85.i = and i32 %382, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85.i)
  %tobool.not.i86.i = icmp eq i32 %and.i85.i, 0
  br i1 %tobool.not.i86.i, label %if.end23.i.vdpu_write_relaxed.exit91.i_crit_edge, label %do.end.i88.i

if.end23.i.vdpu_write_relaxed.exit91.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit91.i

do.end.i88.i:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 62, i32 noundef %add51.i) #7
  br label %vdpu_write_relaxed.exit91.i

vdpu_write_relaxed.exit91.i:                      ; preds = %do.end.i88.i, %if.end23.i.vdpu_write_relaxed.exit91.i_crit_edge
  %383 = tail call i32 @llvm.bswap.i32(i32 %add51.i) #4
  %384 = ptrtoint ptr %dec_base.i.i38 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %dec_base.i.i38, align 8
  %add.ptr.i90.i = getelementptr i8, ptr %385, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %383) #4, !srcloc !23
  br label %if.end52.i

if.end52.i:                                       ; preds = %vdpu_write_relaxed.exit91.i, %land.lhs.true.i.if.end52.i_crit_edge, %vdpu_write_relaxed.exit84.i.if.end52.i_crit_edge
  %dma.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %386 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %dma.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %388 = load i32, ptr @hantro_debug, align 4
  %and.i92.i = and i32 %388, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92.i)
  %tobool.not.i93.i = icmp eq i32 %and.i92.i, 0
  br i1 %tobool.not.i93.i, label %if.end52.i.set_buffers.exit_crit_edge, label %do.end.i95.i

if.end52.i.set_buffers.exit_crit_edge:            ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_buffers.exit

do.end.i95.i:                                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 61, i32 noundef %387) #7
  br label %set_buffers.exit

set_buffers.exit:                                 ; preds = %do.end.i95.i, %if.end52.i.set_buffers.exit_crit_edge
  %389 = tail call i32 @llvm.bswap.i32(i32 %387) #4
  %390 = ptrtoint ptr %dec_base.i.i38 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %dec_base.i.i38, align 8
  %add.ptr.i97.i = getelementptr i8, ptr %391, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97.i, i32 %389) #4, !srcloc !23
  tail call void @hantro_end_prepare_run(ptr noundef %ctx) #4
  %dec_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 11
  %392 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %393, i32 228
  %394 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !24
  %395 = tail call i32 @llvm.bswap.i32(i32 %394) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %396 = load i32, ptr @hantro_debug, align 4
  %and.i55 = and i32 %396, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i56 = icmp eq i32 %and.i55, 0
  br i1 %tobool.not.i56, label %set_buffers.exit.vdpu_read.exit_crit_edge, label %do.end.i

set_buffers.exit.vdpu_read.exit_crit_edge:        ; preds = %set_buffers.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read.exit

do.end.i:                                         ; preds = %set_buffers.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 413, i32 noundef 57, i32 noundef %395) #7
  br label %vdpu_read.exit

vdpu_read.exit:                                   ; preds = %do.end.i, %set_buffers.exit.vdpu_read.exit_crit_edge
  %or = or i32 %395, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %397 = load i32, ptr @hantro_debug, align 4
  %and.i57 = and i32 %397, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool.not.i58 = icmp eq i32 %and.i57, 0
  br i1 %tobool.not.i58, label %vdpu_read.exit.vdpu_write.exit_crit_edge, label %do.end.i60

vdpu_read.exit.vdpu_write.exit_crit_edge:         ; preds = %vdpu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit

do.end.i60:                                       ; preds = %vdpu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 398, i32 noundef 57, i32 noundef %or) #7
  br label %vdpu_write.exit

vdpu_write.exit:                                  ; preds = %do.end.i60, %vdpu_read.exit.vdpu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %398 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %399 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i62 = getelementptr i8, ptr %400, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %398) #4, !srcloc !23
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hantro_h264_get_ref_nbr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_h264_get_ref_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hantro_needs_postproc(ptr noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro.h", i32 392, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vdpu_write_relaxed._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vdpu_write_relaxed._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/hantro/hantro.h", i32 413, i32 2}
!8 = !{ptr @vdpu_read._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @vdpu_read._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/hantro/hantro.h", i32 398, i32 2}
!12 = !{ptr @vdpu_write._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @vdpu_write._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 5426923}
!24 = !{i64 5427341}
!25 = !{i64 2156567914}
!26 = !{i64 2156566905}
