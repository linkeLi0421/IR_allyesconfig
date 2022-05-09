; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/rockchip_vpu2_hw_mpeg2_dec.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/rockchip_vpu2_hw_mpeg2_dec.c"
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
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.v4l2_ctrl_mpeg2_sequence = type { i16, i16, i32, i16, i8, i8 }
%struct.v4l2_ctrl_mpeg2_picture = type { i64, i64, i32, [2 x [2 x i8]], i8, i8, i8, [5 x i8] }

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
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_ = private constant [61 x i8] c"../drivers/staging/media/hantro/rockchip_vpu2_hw_mpeg2_dec.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 392, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 413, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/hantro/hantro.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 398, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @vdpu_read._entry, ptr @vdpu_read._entry_ptr, ptr @vdpu_write._entry, ptr @vdpu_write._entry_ptr, ptr @vdpu_write_relaxed._entry, ptr @vdpu_write_relaxed._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write_relaxed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rockchip_vpu2_mpeg2_dec_run(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %m2m_ctx.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i) #4
  %4 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i.i165 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #4
  tail call void @hantro_start_prepare_run(ptr noundef %ctx) #4
  %call2 = tail call ptr @hantro_get_ctrl(ptr noundef %ctx, i32 noundef 10750428) #4
  %call3 = tail call ptr @hantro_get_ctrl(ptr noundef %ctx, i32 noundef 10750429) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %6 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vdpu_write_relaxed.exit_crit_edge, label %do.end.i

entry.vdpu_write_relaxed.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 50, i32 noundef 256) #7
  br label %vdpu_write_relaxed.exit

vdpu_write_relaxed.exit:                          ; preds = %do.end.i, %entry.vdpu_write_relaxed.exit_crit_edge
  %dec_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65536) #4, !srcloc !23
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %vdpu_write_relaxed.exit.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

vdpu_write_relaxed.exit.vb2_get_plane_payload.exit_crit_edge: ; preds = %vdpu_write_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %vdpu_write_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #6
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 10, i32 0, i32 3
  %11 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %vdpu_write_relaxed.exit.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %if.then.i ], [ 0, %vdpu_write_relaxed.exit.vb2_get_plane_payload.exit_crit_edge ]
  %and = and i32 %retval.0.i, 16777215
  %or = or i32 %and, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %13 = load i32, ptr @hantro_debug, align 4
  %and.i166 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166)
  %tobool.not.i167 = icmp eq i32 %and.i166, 0
  br i1 %tobool.not.i167, label %vb2_get_plane_payload.exit.vdpu_write_relaxed.exit172_crit_edge, label %do.end.i169

vb2_get_plane_payload.exit.vdpu_write_relaxed.exit172_crit_edge: ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit172

do.end.i169:                                      ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 51, i32 noundef %or) #7
  br label %vdpu_write_relaxed.exit172

vdpu_write_relaxed.exit172:                       ; preds = %do.end.i169, %vb2_get_plane_payload.exit.vdpu_write_relaxed.exit172_crit_edge
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %15 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i171 = getelementptr i8, ptr %16, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 %14) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %17 = load i32, ptr @hantro_debug, align 4
  %and.i173 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i173)
  %tobool.not.i174 = icmp eq i32 %and.i173, 0
  br i1 %tobool.not.i174, label %vdpu_write_relaxed.exit172.vdpu_write_relaxed.exit179_crit_edge, label %do.end.i176

vdpu_write_relaxed.exit172.vdpu_write_relaxed.exit179_crit_edge: ; preds = %vdpu_write_relaxed.exit172
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit179

do.end.i176:                                      ; preds = %vdpu_write_relaxed.exit172
  call void @__sanitizer_cov_trace_pc() #6
  %call.i175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 52, i32 noundef 1048576) #7
  br label %vdpu_write_relaxed.exit179

vdpu_write_relaxed.exit179:                       ; preds = %do.end.i176, %vdpu_write_relaxed.exit172.vdpu_write_relaxed.exit179_crit_edge
  %18 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i178 = getelementptr i8, ptr %19, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 4096) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %20 = load i32, ptr @hantro_debug, align 4
  %and.i180 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180)
  %tobool.not.i181 = icmp eq i32 %and.i180, 0
  br i1 %tobool.not.i181, label %vdpu_write_relaxed.exit179.vdpu_write_relaxed.exit186_crit_edge, label %do.end.i183

vdpu_write_relaxed.exit179.vdpu_write_relaxed.exit186_crit_edge: ; preds = %vdpu_write_relaxed.exit179
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit186

do.end.i183:                                      ; preds = %vdpu_write_relaxed.exit179
  call void @__sanitizer_cov_trace_pc() #6
  %call.i182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 53, i32 noundef 5) #7
  br label %vdpu_write_relaxed.exit186

vdpu_write_relaxed.exit186:                       ; preds = %do.end.i183, %vdpu_write_relaxed.exit179.vdpu_write_relaxed.exit186_crit_edge
  %21 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i185 = getelementptr i8, ptr %22, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 83886080) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %23 = load i32, ptr @hantro_debug, align 4
  %and.i187 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187)
  %tobool.not.i188 = icmp eq i32 %and.i187, 0
  br i1 %tobool.not.i188, label %vdpu_write_relaxed.exit186.vdpu_write_relaxed.exit193_crit_edge, label %do.end.i190

vdpu_write_relaxed.exit186.vdpu_write_relaxed.exit193_crit_edge: ; preds = %vdpu_write_relaxed.exit186
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit193

do.end.i190:                                      ; preds = %vdpu_write_relaxed.exit186
  call void @__sanitizer_cov_trace_pc() #6
  %call.i189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 54, i32 noundef 63) #7
  br label %vdpu_write_relaxed.exit193

vdpu_write_relaxed.exit193:                       ; preds = %do.end.i190, %vdpu_write_relaxed.exit186.vdpu_write_relaxed.exit193_crit_edge
  %24 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i192 = getelementptr i8, ptr %25, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192, i32 1056964608) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %26 = load i32, ptr @hantro_debug, align 4
  %and.i194 = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194)
  %tobool.not.i195 = icmp eq i32 %and.i194, 0
  br i1 %tobool.not.i195, label %vdpu_write_relaxed.exit193.vdpu_write_relaxed.exit200_crit_edge, label %do.end.i197

vdpu_write_relaxed.exit193.vdpu_write_relaxed.exit200_crit_edge: ; preds = %vdpu_write_relaxed.exit193
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit200

do.end.i197:                                      ; preds = %vdpu_write_relaxed.exit193
  call void @__sanitizer_cov_trace_pc() #6
  %call.i196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 56, i32 noundef 1048576) #7
  br label %vdpu_write_relaxed.exit200

vdpu_write_relaxed.exit200:                       ; preds = %do.end.i197, %vdpu_write_relaxed.exit193.vdpu_write_relaxed.exit200_crit_edge
  %27 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i199 = getelementptr i8, ptr %28, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 4096) #4, !srcloc !23
  %flags = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_sequence, ptr %call2, i32 0, i32 5
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags, align 1
  %31 = and i8 %30, 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 17
  %picture_structure = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 5
  %34 = ptrtoint ptr %picture_structure to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %picture_structure, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp.not = icmp eq i8 %35, 3
  %cond9 = select i1 %cmp.not, i32 0, i32 65536
  %36 = or i32 %33, %cond9
  %picture_coding_type = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 4
  %37 = ptrtoint ptr %picture_coding_type to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %picture_coding_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp12 = icmp eq i8 %38, 3
  %cond14 = select i1 %cmp12, i32 32768, i32 0
  %39 = or i32 %36, %cond14
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp18.not = icmp eq i8 %38, 1
  %cond20 = select i1 %cmp18.not, i32 0, i32 16384
  %40 = or i32 %39, %cond20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp24 = icmp eq i8 %35, 1
  %cond26 = select i1 %cmp24, i32 8192, i32 0
  %41 = or i32 %40, %cond26
  %or31 = xor i32 %41, 131120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %42 = load i32, ptr @hantro_debug, align 4
  %and.i201 = and i32 %42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i201)
  %tobool.not.i202 = icmp eq i32 %and.i201, 0
  br i1 %tobool.not.i202, label %vdpu_write_relaxed.exit200.vdpu_write_relaxed.exit207_crit_edge, label %do.end.i204

vdpu_write_relaxed.exit200.vdpu_write_relaxed.exit207_crit_edge: ; preds = %vdpu_write_relaxed.exit200
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit207

do.end.i204:                                      ; preds = %vdpu_write_relaxed.exit200
  call void @__sanitizer_cov_trace_pc() #6
  %call.i203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 57, i32 noundef %or31) #7
  br label %vdpu_write_relaxed.exit207

vdpu_write_relaxed.exit207:                       ; preds = %do.end.i204, %vdpu_write_relaxed.exit200.vdpu_write_relaxed.exit207_crit_edge
  %43 = tail call i32 @llvm.bswap.i32(i32 %or31) #4
  %44 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i206 = getelementptr i8, ptr %45, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 %43) #4, !srcloc !23
  %dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  %46 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dst_fmt, align 8
  %sub = shl i32 %47, 19
  %48 = add i32 %sub, 7864320
  %shl32 = and i32 %48, -8388608
  %height = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height, align 4
  %sub36 = shl i32 %50, 7
  %51 = add i32 %sub36, 1920
  %and39 = and i32 %51, 522240
  %or40 = or i32 %and39, %shl32
  %flags41 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 2
  %52 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags41, align 8
  %and42 = shl i32 %53, 1
  %54 = and i32 %and42, 64
  %or45 = or i32 %or40, %54
  %and47 = shl i32 %53, 5
  %55 = and i32 %and47, 32
  %or50 = or i32 %or45, %55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %56 = load i32, ptr @hantro_debug, align 4
  %and.i208 = and i32 %56, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i208)
  %tobool.not.i209 = icmp eq i32 %and.i208, 0
  br i1 %tobool.not.i209, label %vdpu_write_relaxed.exit207.vdpu_write_relaxed.exit214_crit_edge, label %do.end.i211

vdpu_write_relaxed.exit207.vdpu_write_relaxed.exit214_crit_edge: ; preds = %vdpu_write_relaxed.exit207
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit214

do.end.i211:                                      ; preds = %vdpu_write_relaxed.exit207
  call void @__sanitizer_cov_trace_pc() #6
  %call.i210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 120, i32 noundef %or50) #7
  br label %vdpu_write_relaxed.exit214

vdpu_write_relaxed.exit214:                       ; preds = %do.end.i211, %vdpu_write_relaxed.exit207.vdpu_write_relaxed.exit214_crit_edge
  %57 = tail call i32 @llvm.bswap.i32(i32 %or50) #4
  %58 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i213 = getelementptr i8, ptr %59, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %57) #4, !srcloc !23
  %60 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags41, align 8
  %and52 = shl i32 %61, 21
  %62 = and i32 %and52, 16777216
  %and57 = shl i32 %61, 2
  %63 = and i32 %and57, 16
  %or60 = or i32 %62, %63
  %intra_dc_precision = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 6
  %64 = ptrtoint ptr %intra_dc_precision to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %intra_dc_precision, align 2
  %conv61 = zext i8 %65 to i32
  %shl62 = shl nuw nsw i32 %conv61, 2
  %and63 = and i32 %shl62, 12
  %and66 = lshr i32 %61, 3
  %66 = and i32 %and66, 2
  %and71 = lshr i32 %61, 1
  %and71.lobit = and i32 %and71, 1
  %or64 = or i32 %or60, %66
  %or69 = or i32 %or64, %and71.lobit
  %or74 = or i32 %or69, %and63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %67 = load i32, ptr @hantro_debug, align 4
  %and.i215 = and i32 %67, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i215)
  %tobool.not.i216 = icmp eq i32 %and.i215, 0
  br i1 %tobool.not.i216, label %vdpu_write_relaxed.exit214.vdpu_write_relaxed.exit221_crit_edge, label %do.end.i218

vdpu_write_relaxed.exit214.vdpu_write_relaxed.exit221_crit_edge: ; preds = %vdpu_write_relaxed.exit214
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit221

do.end.i218:                                      ; preds = %vdpu_write_relaxed.exit214
  call void @__sanitizer_cov_trace_pc() #6
  %call.i217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 122, i32 noundef %or74) #7
  br label %vdpu_write_relaxed.exit221

vdpu_write_relaxed.exit221:                       ; preds = %do.end.i218, %vdpu_write_relaxed.exit214.vdpu_write_relaxed.exit221_crit_edge
  %68 = tail call i32 @llvm.bswap.i32(i32 %or74) #4
  %69 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i220 = getelementptr i8, ptr %70, i32 488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i220, i32 %68) #4, !srcloc !23
  %71 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags41, align 8
  %and76 = shl i32 %72, 14
  %73 = and i32 %and76, 524288
  %f_code = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 3
  %74 = ptrtoint ptr %f_code to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %f_code, align 4
  %conv80 = zext i8 %75 to i32
  %shl81 = shl nuw nsw i32 %conv80, 15
  %and82 = and i32 %shl81, 491520
  %arrayidx86 = getelementptr %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 3, i32 0, i32 1
  %76 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %77 to i32
  %shl88 = shl nuw nsw i32 %conv87, 11
  %and89 = and i32 %shl88, 30720
  %arrayidx92 = getelementptr %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 3, i32 1
  %78 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx92, align 2
  %conv94 = zext i8 %79 to i32
  %shl95 = shl nuw nsw i32 %conv94, 7
  %and96 = and i32 %shl95, 1920
  %arrayidx100 = getelementptr %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 3, i32 1, i32 1
  %80 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %81 to i32
  %shl102 = shl nuw nsw i32 %conv101, 3
  %and103 = and i32 %shl102, 120
  %or83 = or i32 %73, %and82
  %or90 = or i32 %or83, %and89
  %or97 = or i32 %or90, %and96
  %or104 = or i32 %or97, %and103
  %or106 = or i32 %or104, 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %82 = load i32, ptr @hantro_debug, align 4
  %and.i222 = and i32 %82, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i222)
  %tobool.not.i223 = icmp eq i32 %and.i222, 0
  br i1 %tobool.not.i223, label %vdpu_write_relaxed.exit221.vdpu_write_relaxed.exit228_crit_edge, label %do.end.i225

vdpu_write_relaxed.exit221.vdpu_write_relaxed.exit228_crit_edge: ; preds = %vdpu_write_relaxed.exit221
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit228

do.end.i225:                                      ; preds = %vdpu_write_relaxed.exit221
  call void @__sanitizer_cov_trace_pc() #6
  %call.i224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 136, i32 noundef %or106) #7
  br label %vdpu_write_relaxed.exit228

vdpu_write_relaxed.exit228:                       ; preds = %do.end.i225, %vdpu_write_relaxed.exit221.vdpu_write_relaxed.exit228_crit_edge
  %83 = tail call i32 @llvm.bswap.i32(i32 %or106) #4
  %84 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i227 = getelementptr i8, ptr %85, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i227, i32 %83) #4, !srcloc !23
  %call.i229 = tail call ptr @hantro_get_ctrl(ptr noundef %ctx, i32 noundef 10750430) #4
  %86 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 8
  tail call void @hantro_mpeg2_dec_copy_qtable(ptr noundef %88, ptr noundef %call.i229) #4
  %dma.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %89 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dma.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %91 = load i32, ptr @hantro_debug, align 4
  %and.i.i = and i32 %91, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %vdpu_write_relaxed.exit228.rockchip_vpu2_mpeg2_dec_set_quantisation.exit_crit_edge, label %do.end.i.i

vdpu_write_relaxed.exit228.rockchip_vpu2_mpeg2_dec_set_quantisation.exit_crit_edge: ; preds = %vdpu_write_relaxed.exit228
  call void @__sanitizer_cov_trace_pc() #6
  br label %rockchip_vpu2_mpeg2_dec_set_quantisation.exit

do.end.i.i:                                       ; preds = %vdpu_write_relaxed.exit228
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 61, i32 noundef %90) #7
  br label %rockchip_vpu2_mpeg2_dec_set_quantisation.exit

rockchip_vpu2_mpeg2_dec_set_quantisation.exit:    ; preds = %do.end.i.i, %vdpu_write_relaxed.exit228.rockchip_vpu2_mpeg2_dec_set_quantisation.exit_crit_edge
  %92 = tail call i32 @llvm.bswap.i32(i32 %90) #4
  %93 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %94, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %92) #4, !srcloc !23
  %95 = ptrtoint ptr %picture_coding_type to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %picture_coding_type, align 8
  %97 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values)
  switch i8 %96, label %rockchip_vpu2_mpeg2_dec_set_quantisation.exit.sw.epilog.i_crit_edge [
    i8 3, label %sw.bb.i
    i8 2, label %rockchip_vpu2_mpeg2_dec_set_quantisation.exit.sw.bb1.i_crit_edge
  ]

rockchip_vpu2_mpeg2_dec_set_quantisation.exit.sw.bb1.i_crit_edge: ; preds = %rockchip_vpu2_mpeg2_dec_set_quantisation.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i

rockchip_vpu2_mpeg2_dec_set_quantisation.exit.sw.epilog.i_crit_edge: ; preds = %rockchip_vpu2_mpeg2_dec_set_quantisation.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %rockchip_vpu2_mpeg2_dec_set_quantisation.exit
  call void @__sanitizer_cov_trace_pc() #6
  %98 = ptrtoint ptr %call3 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %call3, align 8
  %call.i231 = tail call i32 @hantro_get_ref(ptr noundef %ctx, i64 noundef %99) #4
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.bb.i, %rockchip_vpu2_mpeg2_dec_set_quantisation.exit.sw.bb1.i_crit_edge
  %backward_addr.0.i = phi i32 [ 0, %rockchip_vpu2_mpeg2_dec_set_quantisation.exit.sw.bb1.i_crit_edge ], [ %call.i231, %sw.bb.i ]
  %forward_ref_ts.i = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 1
  %100 = ptrtoint ptr %forward_ref_ts.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %forward_ref_ts.i, align 8
  %call2.i = tail call i32 @hantro_get_ref(ptr noundef %ctx, i64 noundef %101) #4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %rockchip_vpu2_mpeg2_dec_set_quantisation.exit.sw.epilog.i_crit_edge
  %forward_addr.0.i = phi i32 [ 0, %rockchip_vpu2_mpeg2_dec_set_quantisation.exit.sw.epilog.i_crit_edge ], [ %call2.i, %sw.bb1.i ]
  %backward_addr.1.i = phi i32 [ 0, %rockchip_vpu2_mpeg2_dec_set_quantisation.exit.sw.epilog.i_crit_edge ], [ %backward_addr.0.i, %sw.bb1.i ]
  %call.i.i232 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 0) #4
  %102 = ptrtoint ptr %call.i.i232 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %call.i.i232, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %104 = load i32, ptr @hantro_debug, align 4
  %and.i.i233 = and i32 %104, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i233)
  %tobool.not.i.i234 = icmp eq i32 %and.i.i233, 0
  br i1 %tobool.not.i.i234, label %sw.epilog.i.vdpu_write_relaxed.exit.i_crit_edge, label %do.end.i.i235

sw.epilog.i.vdpu_write_relaxed.exit.i_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i

do.end.i.i235:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 64, i32 noundef %103) #7
  br label %vdpu_write_relaxed.exit.i

vdpu_write_relaxed.exit.i:                        ; preds = %do.end.i.i235, %sw.epilog.i.vdpu_write_relaxed.exit.i_crit_edge
  %105 = tail call i32 @llvm.bswap.i32(i32 %103) #4
  %106 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i237 = getelementptr i8, ptr %107, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i237, i32 %105) #4, !srcloc !23
  %call.i2.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i165, i32 noundef 0) #4
  %108 = ptrtoint ptr %call.i2.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %call.i2.i, align 4
  %110 = ptrtoint ptr %picture_structure to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %picture_structure, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %111)
  %cmp.i = icmp eq i8 %111, 2
  br i1 %cmp.i, label %if.then.i239, label %vdpu_write_relaxed.exit.i.if.end.i_crit_edge

vdpu_write_relaxed.exit.i.if.end.i_crit_edge:     ; preds = %vdpu_write_relaxed.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i239:                                     ; preds = %vdpu_write_relaxed.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %112 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dst_fmt, align 8
  %add.i = add i32 %113, 15
  %and.i238 = and i32 %add.i, -16
  %add7.i = add i32 %and.i238, %109
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i239, %vdpu_write_relaxed.exit.i.if.end.i_crit_edge
  %addr.0.i = phi i32 [ %add7.i, %if.then.i239 ], [ %109, %vdpu_write_relaxed.exit.i.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %114 = load i32, ptr @hantro_debug, align 4
  %and.i3.i = and i32 %114, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i4.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i4.i, label %if.end.i.vdpu_write_relaxed.exit9.i_crit_edge, label %do.end.i6.i

if.end.i.vdpu_write_relaxed.exit9.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit9.i

do.end.i6.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 63, i32 noundef %addr.0.i) #7
  br label %vdpu_write_relaxed.exit9.i

vdpu_write_relaxed.exit9.i:                       ; preds = %do.end.i6.i, %if.end.i.vdpu_write_relaxed.exit9.i_crit_edge
  %115 = tail call i32 @llvm.bswap.i32(i32 %addr.0.i) #4
  %116 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %117, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %115) #4, !srcloc !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %forward_addr.0.i)
  %tobool.not.i240 = icmp eq i32 %forward_addr.0.i, 0
  %spec.select.i = select i1 %tobool.not.i240, i32 %109, i32 %forward_addr.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %backward_addr.1.i)
  %tobool10.not.i = icmp eq i32 %backward_addr.1.i, 0
  %backward_addr.2.i = select i1 %tobool10.not.i, i32 %109, i32 %backward_addr.1.i
  %118 = ptrtoint ptr %picture_structure to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %picture_structure, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %119)
  %cmp15.i = icmp eq i8 %119, 3
  br i1 %cmp15.i, label %vdpu_write_relaxed.exit9.i.if.then37.i_crit_edge, label %lor.lhs.false.i

vdpu_write_relaxed.exit9.i.if.then37.i_crit_edge: ; preds = %vdpu_write_relaxed.exit9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37.i

lor.lhs.false.i:                                  ; preds = %vdpu_write_relaxed.exit9.i
  %120 = ptrtoint ptr %picture_coding_type to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %picture_coding_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %121)
  %cmp19.i = icmp eq i8 %121, 3
  br i1 %cmp19.i, label %lor.lhs.false.i.if.then37.i_crit_edge, label %lor.lhs.false21.i

lor.lhs.false.i.if.then37.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false.i
  %122 = zext i8 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %119, label %lor.lhs.false21.i.if.end51.i_crit_edge [
    i8 1, label %land.lhs.true.i
    i8 2, label %land.lhs.true33.i
  ]

lor.lhs.false21.i.if.end51.i_crit_edge:           ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false21.i
  %123 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags41, align 8
  %and26.i = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.then42.i, label %land.lhs.true.i.if.then37.i_crit_edge

land.lhs.true.i.if.then37.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37.i

land.lhs.true33.i:                                ; preds = %lor.lhs.false21.i
  %125 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %flags41, align 8
  %and35.i = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true33.i.if.then37.i_crit_edge, label %if.then48.i

land.lhs.true33.i.if.then37.i_crit_edge:          ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37.i

if.then37.i:                                      ; preds = %land.lhs.true33.i.if.then37.i_crit_edge, %land.lhs.true.i.if.then37.i_crit_edge, %lor.lhs.false.i.if.then37.i_crit_edge, %vdpu_write_relaxed.exit9.i.if.then37.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %127 = load i32, ptr @hantro_debug, align 4
  %and.i10.i = and i32 %127, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i)
  %tobool.not.i11.i = icmp eq i32 %and.i10.i, 0
  br i1 %tobool.not.i11.i, label %if.then37.i.vdpu_write_relaxed.exit16.i_crit_edge, label %do.end.i13.i

if.then37.i.vdpu_write_relaxed.exit16.i_crit_edge: ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit16.i

do.end.i13.i:                                     ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 131, i32 noundef %spec.select.i) #7
  br label %vdpu_write_relaxed.exit16.i

vdpu_write_relaxed.exit16.i:                      ; preds = %do.end.i13.i, %if.then37.i.vdpu_write_relaxed.exit16.i_crit_edge
  %128 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #4
  %129 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %130, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %128) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %131 = load i32, ptr @hantro_debug, align 4
  %and.i17.i = and i32 %131, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %tobool.not.i18.i = icmp eq i32 %and.i17.i, 0
  br i1 %tobool.not.i18.i, label %vdpu_write_relaxed.exit16.i.vdpu_write_relaxed.exit23.i_crit_edge, label %do.end.i20.i

vdpu_write_relaxed.exit16.i.vdpu_write_relaxed.exit23.i_crit_edge: ; preds = %vdpu_write_relaxed.exit16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit23.i

do.end.i20.i:                                     ; preds = %vdpu_write_relaxed.exit16.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 148, i32 noundef %spec.select.i) #7
  br label %vdpu_write_relaxed.exit23.i

vdpu_write_relaxed.exit23.i:                      ; preds = %do.end.i20.i, %vdpu_write_relaxed.exit16.i.vdpu_write_relaxed.exit23.i_crit_edge
  %132 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %133, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %128) #4, !srcloc !23
  br label %if.end51.i

if.then42.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %134 = load i32, ptr @hantro_debug, align 4
  %and.i24.i = and i32 %134, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i)
  %tobool.not.i25.i = icmp eq i32 %and.i24.i, 0
  br i1 %tobool.not.i25.i, label %if.then42.i.vdpu_write_relaxed.exit30.i_crit_edge, label %do.end.i27.i

if.then42.i.vdpu_write_relaxed.exit30.i_crit_edge: ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit30.i

do.end.i27.i:                                     ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 131, i32 noundef %spec.select.i) #7
  br label %vdpu_write_relaxed.exit30.i

vdpu_write_relaxed.exit30.i:                      ; preds = %do.end.i27.i, %if.then42.i.vdpu_write_relaxed.exit30.i_crit_edge
  %135 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #4
  %136 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %137, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %135) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %138 = load i32, ptr @hantro_debug, align 4
  %and.i31.i = and i32 %138, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i32.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i32.i, label %vdpu_write_relaxed.exit30.i.vdpu_write_relaxed.exit37.i_crit_edge, label %do.end.i34.i

vdpu_write_relaxed.exit30.i.vdpu_write_relaxed.exit37.i_crit_edge: ; preds = %vdpu_write_relaxed.exit30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit37.i

do.end.i34.i:                                     ; preds = %vdpu_write_relaxed.exit30.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 148, i32 noundef %109) #7
  br label %vdpu_write_relaxed.exit37.i

vdpu_write_relaxed.exit37.i:                      ; preds = %do.end.i34.i, %vdpu_write_relaxed.exit30.i.vdpu_write_relaxed.exit37.i_crit_edge
  %139 = tail call i32 @llvm.bswap.i32(i32 %109) #4
  %140 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i36.i = getelementptr i8, ptr %141, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %139) #4, !srcloc !23
  br label %if.end51.i

if.then48.i:                                      ; preds = %land.lhs.true33.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %142 = load i32, ptr @hantro_debug, align 4
  %and.i38.i = and i32 %142, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38.i)
  %tobool.not.i39.i = icmp eq i32 %and.i38.i, 0
  br i1 %tobool.not.i39.i, label %if.then48.i.vdpu_write_relaxed.exit44.i_crit_edge, label %do.end.i41.i

if.then48.i.vdpu_write_relaxed.exit44.i_crit_edge: ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit44.i

do.end.i41.i:                                     ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 131, i32 noundef %109) #7
  br label %vdpu_write_relaxed.exit44.i

vdpu_write_relaxed.exit44.i:                      ; preds = %do.end.i41.i, %if.then48.i.vdpu_write_relaxed.exit44.i_crit_edge
  %143 = tail call i32 @llvm.bswap.i32(i32 %109) #4
  %144 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i43.i = getelementptr i8, ptr %145, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 %143) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %146 = load i32, ptr @hantro_debug, align 4
  %and.i45.i = and i32 %146, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.not.i46.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool.not.i46.i, label %vdpu_write_relaxed.exit44.i.vdpu_write_relaxed.exit51.i_crit_edge, label %do.end.i48.i

vdpu_write_relaxed.exit44.i.vdpu_write_relaxed.exit51.i_crit_edge: ; preds = %vdpu_write_relaxed.exit44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit51.i

do.end.i48.i:                                     ; preds = %vdpu_write_relaxed.exit44.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 148, i32 noundef %spec.select.i) #7
  br label %vdpu_write_relaxed.exit51.i

vdpu_write_relaxed.exit51.i:                      ; preds = %do.end.i48.i, %vdpu_write_relaxed.exit44.i.vdpu_write_relaxed.exit51.i_crit_edge
  %147 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #4
  %148 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i50.i = getelementptr i8, ptr %149, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %147) #4, !srcloc !23
  br label %if.end51.i

if.end51.i:                                       ; preds = %vdpu_write_relaxed.exit51.i, %vdpu_write_relaxed.exit37.i, %vdpu_write_relaxed.exit23.i, %lor.lhs.false21.i.if.end51.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %150 = load i32, ptr @hantro_debug, align 4
  %and.i52.i = and i32 %150, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52.i)
  %tobool.not.i53.i = icmp eq i32 %and.i52.i, 0
  br i1 %tobool.not.i53.i, label %if.end51.i.vdpu_write_relaxed.exit58.i_crit_edge, label %do.end.i55.i

if.end51.i.vdpu_write_relaxed.exit58.i_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit58.i

do.end.i55.i:                                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 134, i32 noundef %backward_addr.2.i) #7
  br label %vdpu_write_relaxed.exit58.i

vdpu_write_relaxed.exit58.i:                      ; preds = %do.end.i55.i, %if.end51.i.vdpu_write_relaxed.exit58.i_crit_edge
  %151 = tail call i32 @llvm.bswap.i32(i32 %backward_addr.2.i) #4
  %152 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i57.i = getelementptr i8, ptr %153, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 %151) #4, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %154 = load i32, ptr @hantro_debug, align 4
  %and.i59.i = and i32 %154, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59.i)
  %tobool.not.i60.i = icmp eq i32 %and.i59.i, 0
  br i1 %tobool.not.i60.i, label %vdpu_write_relaxed.exit58.i.rockchip_vpu2_mpeg2_dec_set_buffers.exit_crit_edge, label %do.end.i62.i

vdpu_write_relaxed.exit58.i.rockchip_vpu2_mpeg2_dec_set_buffers.exit_crit_edge: ; preds = %vdpu_write_relaxed.exit58.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rockchip_vpu2_mpeg2_dec_set_buffers.exit

do.end.i62.i:                                     ; preds = %vdpu_write_relaxed.exit58.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 135, i32 noundef %backward_addr.2.i) #7
  br label %rockchip_vpu2_mpeg2_dec_set_buffers.exit

rockchip_vpu2_mpeg2_dec_set_buffers.exit:         ; preds = %do.end.i62.i, %vdpu_write_relaxed.exit58.i.rockchip_vpu2_mpeg2_dec_set_buffers.exit_crit_edge
  %155 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i64.i = getelementptr i8, ptr %156, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 %151) #4, !srcloc !23
  tail call void @hantro_end_prepare_run(ptr noundef %ctx) #4
  %157 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i242 = getelementptr i8, ptr %158, i32 228
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i242) #4, !srcloc !24
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %161 = load i32, ptr @hantro_debug, align 4
  %and.i243 = and i32 %161, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i243)
  %tobool.not.i244 = icmp eq i32 %and.i243, 0
  br i1 %tobool.not.i244, label %rockchip_vpu2_mpeg2_dec_set_buffers.exit.vdpu_read.exit_crit_edge, label %do.end.i245

rockchip_vpu2_mpeg2_dec_set_buffers.exit.vdpu_read.exit_crit_edge: ; preds = %rockchip_vpu2_mpeg2_dec_set_buffers.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read.exit

do.end.i245:                                      ; preds = %rockchip_vpu2_mpeg2_dec_set_buffers.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 413, i32 noundef 57, i32 noundef %160) #7
  br label %vdpu_read.exit

vdpu_read.exit:                                   ; preds = %do.end.i245, %rockchip_vpu2_mpeg2_dec_set_buffers.exit.vdpu_read.exit_crit_edge
  %or110 = or i32 %160, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %162 = load i32, ptr @hantro_debug, align 4
  %and.i246 = and i32 %162, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i246)
  %tobool.not.i247 = icmp eq i32 %and.i246, 0
  br i1 %tobool.not.i247, label %vdpu_read.exit.vdpu_write.exit_crit_edge, label %do.end.i249

vdpu_read.exit.vdpu_write.exit_crit_edge:         ; preds = %vdpu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit

do.end.i249:                                      ; preds = %vdpu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 398, i32 noundef 57, i32 noundef %or110) #7
  br label %vdpu_write.exit

vdpu_write.exit:                                  ; preds = %do.end.i249, %vdpu_read.exit.vdpu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %163 = tail call i32 @llvm.bswap.i32(i32 %or110) #4
  %164 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i251 = getelementptr i8, ptr %165, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251, i32 %163) #4, !srcloc !23
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_start_prepare_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hantro_get_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_end_prepare_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_mpeg2_dec_copy_qtable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_get_ref(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
!23 = !{i64 5447024}
!24 = !{i64 5447442}
!25 = !{i64 2156583312}
!26 = !{i64 2156582303}
