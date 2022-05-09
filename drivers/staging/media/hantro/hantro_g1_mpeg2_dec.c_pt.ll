; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c"
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
%struct.v4l2_ctrl_mpeg2_sequence = type { i16, i16, i32, i16, i8, i8 }
%struct.v4l2_ctrl_mpeg2_picture = type { i64, i64, i32, [2 x [2 x i8]], i8, i8, i8, [5 x i8] }
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
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_ = private constant [54 x i8] c"../drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 392, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/hantro/hantro.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 398, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @vdpu_write._entry, ptr @vdpu_write._entry_ptr, ptr @vdpu_write_relaxed._entry, ptr @vdpu_write_relaxed._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write_relaxed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_g1_mpeg2_dec_run(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
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
  %call.i.i157 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #4
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
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 2, i32 noundef 16254736) #7
  br label %vdpu_write_relaxed.exit

vdpu_write_relaxed.exit:                          ; preds = %do.end.i, %entry.vdpu_write_relaxed.exit_crit_edge
  %dec_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268957696) #4, !srcloc !19
  %flags = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_sequence, ptr %call2, i32 0, i32 5
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  %11 = and i8 %10, 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 23
  %picture_structure = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 5
  %14 = ptrtoint ptr %picture_structure to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %picture_structure, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp.not = icmp eq i8 %15, 3
  %cond6 = select i1 %cmp.not, i32 0, i32 4194304
  %16 = or i32 %13, %cond6
  %picture_coding_type = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %picture_coding_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %picture_coding_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp9 = icmp eq i8 %18, 3
  %cond11 = select i1 %cmp9, i32 2097152, i32 0
  %19 = or i32 %16, %cond11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp15.not = icmp eq i8 %18, 1
  %cond17 = select i1 %cmp15.not, i32 0, i32 1048576
  %20 = or i32 %19, %cond17
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp21 = icmp eq i8 %15, 1
  %cond23 = select i1 %cmp21, i32 524288, i32 0
  %21 = or i32 %20, %cond23
  %or26 = xor i32 %21, 1350582272
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %22 = load i32, ptr @hantro_debug, align 4
  %and.i158 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i158)
  %tobool.not.i159 = icmp eq i32 %and.i158, 0
  br i1 %tobool.not.i159, label %vdpu_write_relaxed.exit.vdpu_write_relaxed.exit164_crit_edge, label %do.end.i161

vdpu_write_relaxed.exit.vdpu_write_relaxed.exit164_crit_edge: ; preds = %vdpu_write_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit164

do.end.i161:                                      ; preds = %vdpu_write_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 3, i32 noundef %or26) #7
  br label %vdpu_write_relaxed.exit164

vdpu_write_relaxed.exit164:                       ; preds = %do.end.i161, %vdpu_write_relaxed.exit.vdpu_write_relaxed.exit164_crit_edge
  %23 = tail call i32 @llvm.bswap.i32(i32 %or26) #4
  %24 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i163 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %23) #4, !srcloc !19
  %dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  %26 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dst_fmt, align 8
  %sub = shl i32 %27, 19
  %28 = add i32 %sub, 7864320
  %shl = and i32 %28, -8388608
  %height = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  %sub32 = shl i32 %30, 7
  %31 = add i32 %sub32, 1920
  %and35 = and i32 %31, 522240
  %or36 = or i32 %and35, %shl
  %flags37 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 2
  %32 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags37, align 8
  %and38 = shl i32 %33, 1
  %34 = and i32 %and38, 64
  %or41 = or i32 %or36, %34
  %and43 = shl i32 %33, 5
  %35 = and i32 %and43, 32
  %or46 = or i32 %or41, %35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %36 = load i32, ptr @hantro_debug, align 4
  %and.i165 = and i32 %36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i165)
  %tobool.not.i166 = icmp eq i32 %and.i165, 0
  br i1 %tobool.not.i166, label %vdpu_write_relaxed.exit164.vdpu_write_relaxed.exit171_crit_edge, label %do.end.i168

vdpu_write_relaxed.exit164.vdpu_write_relaxed.exit171_crit_edge: ; preds = %vdpu_write_relaxed.exit164
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit171

do.end.i168:                                      ; preds = %vdpu_write_relaxed.exit164
  call void @__sanitizer_cov_trace_pc() #6
  %call.i167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 4, i32 noundef %or46) #7
  br label %vdpu_write_relaxed.exit171

vdpu_write_relaxed.exit171:                       ; preds = %do.end.i168, %vdpu_write_relaxed.exit164.vdpu_write_relaxed.exit171_crit_edge
  %37 = tail call i32 @llvm.bswap.i32(i32 %or46) #4
  %38 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i170 = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %37) #4, !srcloc !19
  %40 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags37, align 8
  %and48 = shl i32 %41, 21
  %42 = and i32 %and48, 16777216
  %and53 = shl i32 %41, 2
  %43 = and i32 %and53, 16
  %or56 = or i32 %42, %43
  %intra_dc_precision = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 6
  %44 = ptrtoint ptr %intra_dc_precision to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %intra_dc_precision, align 2
  %conv57 = zext i8 %45 to i32
  %shl58 = shl nuw nsw i32 %conv57, 2
  %and59 = and i32 %shl58, 12
  %and62 = lshr i32 %41, 3
  %46 = and i32 %and62, 2
  %and67 = lshr i32 %41, 1
  %and67.lobit = and i32 %and67, 1
  %or60 = or i32 %or56, %46
  %or65 = or i32 %or60, %and67.lobit
  %or70 = or i32 %or65, %and59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %47 = load i32, ptr @hantro_debug, align 4
  %and.i172 = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i172)
  %tobool.not.i173 = icmp eq i32 %and.i172, 0
  br i1 %tobool.not.i173, label %vdpu_write_relaxed.exit171.vdpu_write_relaxed.exit178_crit_edge, label %do.end.i175

vdpu_write_relaxed.exit171.vdpu_write_relaxed.exit178_crit_edge: ; preds = %vdpu_write_relaxed.exit171
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit178

do.end.i175:                                      ; preds = %vdpu_write_relaxed.exit171
  call void @__sanitizer_cov_trace_pc() #6
  %call.i174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 5, i32 noundef %or70) #7
  br label %vdpu_write_relaxed.exit178

vdpu_write_relaxed.exit178:                       ; preds = %do.end.i175, %vdpu_write_relaxed.exit171.vdpu_write_relaxed.exit178_crit_edge
  %48 = tail call i32 @llvm.bswap.i32(i32 %or70) #4
  %49 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i177 = getelementptr i8, ptr %50, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 %48) #4, !srcloc !19
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 4
  %51 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.not.i = icmp eq i32 %52, 0
  br i1 %cmp.not.i, label %vdpu_write_relaxed.exit178.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

vdpu_write_relaxed.exit178.vb2_get_plane_payload.exit_crit_edge: ; preds = %vdpu_write_relaxed.exit178
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %vdpu_write_relaxed.exit178
  call void @__sanitizer_cov_trace_pc() #6
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i, i32 0, i32 10, i32 0, i32 3
  %53 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %vdpu_write_relaxed.exit178.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %54, %if.then.i ], [ 0, %vdpu_write_relaxed.exit178.vb2_get_plane_payload.exit_crit_edge ]
  %and73 = and i32 %retval.0.i, 16777215
  %or74 = or i32 %and73, 33554432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %55 = load i32, ptr @hantro_debug, align 4
  %and.i179 = and i32 %55, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i179)
  %tobool.not.i180 = icmp eq i32 %and.i179, 0
  br i1 %tobool.not.i180, label %vb2_get_plane_payload.exit.vdpu_write_relaxed.exit185_crit_edge, label %do.end.i182

vb2_get_plane_payload.exit.vdpu_write_relaxed.exit185_crit_edge: ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit185

do.end.i182:                                      ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 6, i32 noundef %or74) #7
  br label %vdpu_write_relaxed.exit185

vdpu_write_relaxed.exit185:                       ; preds = %do.end.i182, %vb2_get_plane_payload.exit.vdpu_write_relaxed.exit185_crit_edge
  %56 = tail call i32 @llvm.bswap.i32(i32 %or74) #4
  %57 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i184 = getelementptr i8, ptr %58, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 %56) #4, !srcloc !19
  %59 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags37, align 8
  %and76 = shl i32 %60, 14
  %61 = and i32 %and76, 524288
  %f_code = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 3
  %62 = ptrtoint ptr %f_code to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %f_code, align 4
  %conv80 = zext i8 %63 to i32
  %shl81 = shl nuw nsw i32 %conv80, 15
  %and82 = and i32 %shl81, 491520
  %arrayidx86 = getelementptr %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 3, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %65 to i32
  %shl88 = shl nuw nsw i32 %conv87, 11
  %and89 = and i32 %shl88, 30720
  %arrayidx92 = getelementptr %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx92, align 2
  %conv94 = zext i8 %67 to i32
  %shl95 = shl nuw nsw i32 %conv94, 7
  %and96 = and i32 %shl95, 1920
  %arrayidx100 = getelementptr %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 3, i32 1, i32 1
  %68 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %69 to i32
  %shl102 = shl nuw nsw i32 %conv101, 3
  %and103 = and i32 %shl102, 120
  %or83 = or i32 %61, %and82
  %or90 = or i32 %or83, %and89
  %or97 = or i32 %or90, %and96
  %or104 = or i32 %or97, %and103
  %or106 = or i32 %or104, 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %70 = load i32, ptr @hantro_debug, align 4
  %and.i186 = and i32 %70, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i186)
  %tobool.not.i187 = icmp eq i32 %and.i186, 0
  br i1 %tobool.not.i187, label %vdpu_write_relaxed.exit185.vdpu_write_relaxed.exit192_crit_edge, label %do.end.i189

vdpu_write_relaxed.exit185.vdpu_write_relaxed.exit192_crit_edge: ; preds = %vdpu_write_relaxed.exit185
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit192

do.end.i189:                                      ; preds = %vdpu_write_relaxed.exit185
  call void @__sanitizer_cov_trace_pc() #6
  %call.i188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 18, i32 noundef %or106) #7
  br label %vdpu_write_relaxed.exit192

vdpu_write_relaxed.exit192:                       ; preds = %do.end.i189, %vdpu_write_relaxed.exit185.vdpu_write_relaxed.exit192_crit_edge
  %71 = tail call i32 @llvm.bswap.i32(i32 %or106) #4
  %72 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i191 = getelementptr i8, ptr %73, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 %71) #4, !srcloc !19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %74 = load i32, ptr @hantro_debug, align 4
  %and.i193 = and i32 %74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i193)
  %tobool.not.i194 = icmp eq i32 %and.i193, 0
  br i1 %tobool.not.i194, label %vdpu_write_relaxed.exit192.vdpu_write_relaxed.exit199_crit_edge, label %do.end.i196

vdpu_write_relaxed.exit192.vdpu_write_relaxed.exit199_crit_edge: ; preds = %vdpu_write_relaxed.exit192
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit199

do.end.i196:                                      ; preds = %vdpu_write_relaxed.exit192
  call void @__sanitizer_cov_trace_pc() #6
  %call.i195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 48, i32 noundef 0) #7
  br label %vdpu_write_relaxed.exit199

vdpu_write_relaxed.exit199:                       ; preds = %do.end.i196, %vdpu_write_relaxed.exit192.vdpu_write_relaxed.exit199_crit_edge
  %75 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i198 = getelementptr i8, ptr %76, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 0) #4, !srcloc !19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %77 = load i32, ptr @hantro_debug, align 4
  %and.i200 = and i32 %77, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i200)
  %tobool.not.i201 = icmp eq i32 %and.i200, 0
  br i1 %tobool.not.i201, label %vdpu_write_relaxed.exit199.vdpu_write_relaxed.exit206_crit_edge, label %do.end.i203

vdpu_write_relaxed.exit199.vdpu_write_relaxed.exit206_crit_edge: ; preds = %vdpu_write_relaxed.exit199
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit206

do.end.i203:                                      ; preds = %vdpu_write_relaxed.exit199
  call void @__sanitizer_cov_trace_pc() #6
  %call.i202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 55, i32 noundef 8) #7
  br label %vdpu_write_relaxed.exit206

vdpu_write_relaxed.exit206:                       ; preds = %do.end.i203, %vdpu_write_relaxed.exit199.vdpu_write_relaxed.exit206_crit_edge
  %78 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i205 = getelementptr i8, ptr %79, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205, i32 134217728) #4, !srcloc !19
  %call.i207 = tail call ptr @hantro_get_ctrl(ptr noundef %ctx, i32 noundef 10750430) #4
  %80 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 8
  tail call void @hantro_mpeg2_dec_copy_qtable(ptr noundef %82, ptr noundef %call.i207) #4
  %dma.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %83 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dma.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %85 = load i32, ptr @hantro_debug, align 4
  %and.i.i = and i32 %85, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %vdpu_write_relaxed.exit206.hantro_g1_mpeg2_dec_set_quantisation.exit_crit_edge, label %do.end.i.i

vdpu_write_relaxed.exit206.hantro_g1_mpeg2_dec_set_quantisation.exit_crit_edge: ; preds = %vdpu_write_relaxed.exit206
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_g1_mpeg2_dec_set_quantisation.exit

do.end.i.i:                                       ; preds = %vdpu_write_relaxed.exit206
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 40, i32 noundef %84) #7
  br label %hantro_g1_mpeg2_dec_set_quantisation.exit

hantro_g1_mpeg2_dec_set_quantisation.exit:        ; preds = %do.end.i.i, %vdpu_write_relaxed.exit206.hantro_g1_mpeg2_dec_set_quantisation.exit_crit_edge
  %86 = tail call i32 @llvm.bswap.i32(i32 %84) #4
  %87 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %86) #4, !srcloc !19
  %89 = ptrtoint ptr %picture_coding_type to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %picture_coding_type, align 8
  %91 = zext i8 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values)
  switch i8 %90, label %hantro_g1_mpeg2_dec_set_quantisation.exit.sw.epilog.i_crit_edge [
    i8 3, label %sw.bb.i
    i8 2, label %hantro_g1_mpeg2_dec_set_quantisation.exit.sw.bb1.i_crit_edge
  ]

hantro_g1_mpeg2_dec_set_quantisation.exit.sw.bb1.i_crit_edge: ; preds = %hantro_g1_mpeg2_dec_set_quantisation.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i

hantro_g1_mpeg2_dec_set_quantisation.exit.sw.epilog.i_crit_edge: ; preds = %hantro_g1_mpeg2_dec_set_quantisation.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %hantro_g1_mpeg2_dec_set_quantisation.exit
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %call3 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %call3, align 8
  %call.i209 = tail call i32 @hantro_get_ref(ptr noundef %ctx, i64 noundef %93) #4
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.bb.i, %hantro_g1_mpeg2_dec_set_quantisation.exit.sw.bb1.i_crit_edge
  %backward_addr.0.i = phi i32 [ 0, %hantro_g1_mpeg2_dec_set_quantisation.exit.sw.bb1.i_crit_edge ], [ %call.i209, %sw.bb.i ]
  %forward_ref_ts.i = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %call3, i32 0, i32 1
  %94 = ptrtoint ptr %forward_ref_ts.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %forward_ref_ts.i, align 8
  %call2.i = tail call i32 @hantro_get_ref(ptr noundef %ctx, i64 noundef %95) #4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %hantro_g1_mpeg2_dec_set_quantisation.exit.sw.epilog.i_crit_edge
  %forward_addr.0.i = phi i32 [ 0, %hantro_g1_mpeg2_dec_set_quantisation.exit.sw.epilog.i_crit_edge ], [ %call2.i, %sw.bb1.i ]
  %backward_addr.1.i = phi i32 [ 0, %hantro_g1_mpeg2_dec_set_quantisation.exit.sw.epilog.i_crit_edge ], [ %backward_addr.0.i, %sw.bb1.i ]
  %call.i.i210 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 0) #4
  %96 = ptrtoint ptr %call.i.i210 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %call.i.i210, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %98 = load i32, ptr @hantro_debug, align 4
  %and.i.i211 = and i32 %98, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i211)
  %tobool.not.i.i212 = icmp eq i32 %and.i.i211, 0
  br i1 %tobool.not.i.i212, label %sw.epilog.i.vdpu_write_relaxed.exit.i_crit_edge, label %do.end.i.i213

sw.epilog.i.vdpu_write_relaxed.exit.i_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i

do.end.i.i213:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 12, i32 noundef %97) #7
  br label %vdpu_write_relaxed.exit.i

vdpu_write_relaxed.exit.i:                        ; preds = %do.end.i.i213, %sw.epilog.i.vdpu_write_relaxed.exit.i_crit_edge
  %99 = tail call i32 @llvm.bswap.i32(i32 %97) #4
  %100 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i.i215 = getelementptr i8, ptr %101, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i215, i32 %99) #4, !srcloc !19
  %vpu_dst_fmt.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %102 = ptrtoint ptr %vpu_dst_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vpu_dst_fmt.i.i, align 4
  %call.i2.i = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %103) #4
  br i1 %call.i2.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %vdpu_write_relaxed.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %postproc.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 12
  %index.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i157, i32 0, i32 1
  %104 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %index.i.i, align 4
  %dma.i.i = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc.i.i, i32 0, i32 %105, i32 1
  br label %hantro_get_dec_buf_addr.exit.i

if.end.i.i:                                       ; preds = %vdpu_write_relaxed.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i157, i32 noundef 0) #4
  br label %hantro_get_dec_buf_addr.exit.i

hantro_get_dec_buf_addr.exit.i:                   ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.in.i.i = phi ptr [ %dma.i.i, %if.then.i.i ], [ %call.i.i.i, %if.end.i.i ]
  %106 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %107 = ptrtoint ptr %picture_structure to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %picture_structure, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %108)
  %cmp.i = icmp eq i8 %108, 2
  br i1 %cmp.i, label %if.then.i217, label %hantro_get_dec_buf_addr.exit.i.if.end.i_crit_edge

hantro_get_dec_buf_addr.exit.i.if.end.i_crit_edge: ; preds = %hantro_get_dec_buf_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i217:                                     ; preds = %hantro_get_dec_buf_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %109 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dst_fmt, align 8
  %add.i = add i32 %110, 15
  %and.i216 = and i32 %add.i, -16
  %add7.i = add i32 %and.i216, %retval.0.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i217, %hantro_get_dec_buf_addr.exit.i.if.end.i_crit_edge
  %addr.0.i = phi i32 [ %add7.i, %if.then.i217 ], [ %retval.0.i.i, %hantro_get_dec_buf_addr.exit.i.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %111 = load i32, ptr @hantro_debug, align 4
  %and.i3.i = and i32 %111, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i4.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i4.i, label %if.end.i.vdpu_write_relaxed.exit9.i_crit_edge, label %do.end.i6.i

if.end.i.vdpu_write_relaxed.exit9.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit9.i

do.end.i6.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 13, i32 noundef %addr.0.i) #7
  br label %vdpu_write_relaxed.exit9.i

vdpu_write_relaxed.exit9.i:                       ; preds = %do.end.i6.i, %if.end.i.vdpu_write_relaxed.exit9.i_crit_edge
  %112 = tail call i32 @llvm.bswap.i32(i32 %addr.0.i) #4
  %113 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %114, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %112) #4, !srcloc !19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %forward_addr.0.i)
  %tobool.not.i218 = icmp eq i32 %forward_addr.0.i, 0
  %spec.select.i = select i1 %tobool.not.i218, i32 %retval.0.i.i, i32 %forward_addr.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %backward_addr.1.i)
  %tobool10.not.i = icmp eq i32 %backward_addr.1.i, 0
  %backward_addr.2.i = select i1 %tobool10.not.i, i32 %retval.0.i.i, i32 %backward_addr.1.i
  %115 = ptrtoint ptr %picture_structure to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %picture_structure, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %116)
  %cmp15.i = icmp eq i8 %116, 3
  br i1 %cmp15.i, label %vdpu_write_relaxed.exit9.i.if.then37.i_crit_edge, label %lor.lhs.false.i

vdpu_write_relaxed.exit9.i.if.then37.i_crit_edge: ; preds = %vdpu_write_relaxed.exit9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37.i

lor.lhs.false.i:                                  ; preds = %vdpu_write_relaxed.exit9.i
  %117 = ptrtoint ptr %picture_coding_type to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %picture_coding_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %118)
  %cmp19.i = icmp eq i8 %118, 3
  br i1 %cmp19.i, label %lor.lhs.false.i.if.then37.i_crit_edge, label %lor.lhs.false21.i

lor.lhs.false.i.if.then37.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false.i
  %119 = zext i8 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %116, label %lor.lhs.false21.i.if.end51.i_crit_edge [
    i8 1, label %land.lhs.true.i
    i8 2, label %land.lhs.true33.i
  ]

lor.lhs.false21.i.if.end51.i_crit_edge:           ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false21.i
  %120 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags37, align 8
  %and26.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.then42.i, label %land.lhs.true.i.if.then37.i_crit_edge

land.lhs.true.i.if.then37.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37.i

land.lhs.true33.i:                                ; preds = %lor.lhs.false21.i
  %122 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags37, align 8
  %and35.i = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true33.i.if.then37.i_crit_edge, label %if.then48.i

land.lhs.true33.i.if.then37.i_crit_edge:          ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37.i

if.then37.i:                                      ; preds = %land.lhs.true33.i.if.then37.i_crit_edge, %land.lhs.true.i.if.then37.i_crit_edge, %lor.lhs.false.i.if.then37.i_crit_edge, %vdpu_write_relaxed.exit9.i.if.then37.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %124 = load i32, ptr @hantro_debug, align 4
  %and.i10.i = and i32 %124, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i)
  %tobool.not.i11.i = icmp eq i32 %and.i10.i, 0
  br i1 %tobool.not.i11.i, label %if.then37.i.vdpu_write_relaxed.exit16.i_crit_edge, label %do.end.i13.i

if.then37.i.vdpu_write_relaxed.exit16.i_crit_edge: ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit16.i

do.end.i13.i:                                     ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 14, i32 noundef %spec.select.i) #7
  br label %vdpu_write_relaxed.exit16.i

vdpu_write_relaxed.exit16.i:                      ; preds = %do.end.i13.i, %if.then37.i.vdpu_write_relaxed.exit16.i_crit_edge
  %125 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #4
  %126 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %127, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %125) #4, !srcloc !19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %128 = load i32, ptr @hantro_debug, align 4
  %and.i17.i = and i32 %128, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %tobool.not.i18.i = icmp eq i32 %and.i17.i, 0
  br i1 %tobool.not.i18.i, label %vdpu_write_relaxed.exit16.i.vdpu_write_relaxed.exit23.i_crit_edge, label %do.end.i20.i

vdpu_write_relaxed.exit16.i.vdpu_write_relaxed.exit23.i_crit_edge: ; preds = %vdpu_write_relaxed.exit16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit23.i

do.end.i20.i:                                     ; preds = %vdpu_write_relaxed.exit16.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 15, i32 noundef %spec.select.i) #7
  br label %vdpu_write_relaxed.exit23.i

vdpu_write_relaxed.exit23.i:                      ; preds = %do.end.i20.i, %vdpu_write_relaxed.exit16.i.vdpu_write_relaxed.exit23.i_crit_edge
  %129 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %130, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %125) #4, !srcloc !19
  br label %if.end51.i

if.then42.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %131 = load i32, ptr @hantro_debug, align 4
  %and.i24.i = and i32 %131, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i)
  %tobool.not.i25.i = icmp eq i32 %and.i24.i, 0
  br i1 %tobool.not.i25.i, label %if.then42.i.vdpu_write_relaxed.exit30.i_crit_edge, label %do.end.i27.i

if.then42.i.vdpu_write_relaxed.exit30.i_crit_edge: ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit30.i

do.end.i27.i:                                     ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 14, i32 noundef %spec.select.i) #7
  br label %vdpu_write_relaxed.exit30.i

vdpu_write_relaxed.exit30.i:                      ; preds = %do.end.i27.i, %if.then42.i.vdpu_write_relaxed.exit30.i_crit_edge
  %132 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #4
  %133 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %134, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %132) #4, !srcloc !19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %135 = load i32, ptr @hantro_debug, align 4
  %and.i31.i = and i32 %135, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i32.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i32.i, label %vdpu_write_relaxed.exit30.i.vdpu_write_relaxed.exit37.i_crit_edge, label %do.end.i34.i

vdpu_write_relaxed.exit30.i.vdpu_write_relaxed.exit37.i_crit_edge: ; preds = %vdpu_write_relaxed.exit30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit37.i

do.end.i34.i:                                     ; preds = %vdpu_write_relaxed.exit30.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 15, i32 noundef %retval.0.i.i) #7
  br label %vdpu_write_relaxed.exit37.i

vdpu_write_relaxed.exit37.i:                      ; preds = %do.end.i34.i, %vdpu_write_relaxed.exit30.i.vdpu_write_relaxed.exit37.i_crit_edge
  %136 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #4
  %137 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i36.i = getelementptr i8, ptr %138, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %136) #4, !srcloc !19
  br label %if.end51.i

if.then48.i:                                      ; preds = %land.lhs.true33.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %139 = load i32, ptr @hantro_debug, align 4
  %and.i38.i = and i32 %139, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38.i)
  %tobool.not.i39.i = icmp eq i32 %and.i38.i, 0
  br i1 %tobool.not.i39.i, label %if.then48.i.vdpu_write_relaxed.exit44.i_crit_edge, label %do.end.i41.i

if.then48.i.vdpu_write_relaxed.exit44.i_crit_edge: ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit44.i

do.end.i41.i:                                     ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 14, i32 noundef %retval.0.i.i) #7
  br label %vdpu_write_relaxed.exit44.i

vdpu_write_relaxed.exit44.i:                      ; preds = %do.end.i41.i, %if.then48.i.vdpu_write_relaxed.exit44.i_crit_edge
  %140 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #4
  %141 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i43.i = getelementptr i8, ptr %142, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 %140) #4, !srcloc !19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %143 = load i32, ptr @hantro_debug, align 4
  %and.i45.i = and i32 %143, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.not.i46.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool.not.i46.i, label %vdpu_write_relaxed.exit44.i.vdpu_write_relaxed.exit51.i_crit_edge, label %do.end.i48.i

vdpu_write_relaxed.exit44.i.vdpu_write_relaxed.exit51.i_crit_edge: ; preds = %vdpu_write_relaxed.exit44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit51.i

do.end.i48.i:                                     ; preds = %vdpu_write_relaxed.exit44.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 15, i32 noundef %spec.select.i) #7
  br label %vdpu_write_relaxed.exit51.i

vdpu_write_relaxed.exit51.i:                      ; preds = %do.end.i48.i, %vdpu_write_relaxed.exit44.i.vdpu_write_relaxed.exit51.i_crit_edge
  %144 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #4
  %145 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i50.i = getelementptr i8, ptr %146, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %144) #4, !srcloc !19
  br label %if.end51.i

if.end51.i:                                       ; preds = %vdpu_write_relaxed.exit51.i, %vdpu_write_relaxed.exit37.i, %vdpu_write_relaxed.exit23.i, %lor.lhs.false21.i.if.end51.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %147 = load i32, ptr @hantro_debug, align 4
  %and.i52.i = and i32 %147, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52.i)
  %tobool.not.i53.i = icmp eq i32 %and.i52.i, 0
  br i1 %tobool.not.i53.i, label %if.end51.i.vdpu_write_relaxed.exit58.i_crit_edge, label %do.end.i55.i

if.end51.i.vdpu_write_relaxed.exit58.i_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit58.i

do.end.i55.i:                                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 16, i32 noundef %backward_addr.2.i) #7
  br label %vdpu_write_relaxed.exit58.i

vdpu_write_relaxed.exit58.i:                      ; preds = %do.end.i55.i, %if.end51.i.vdpu_write_relaxed.exit58.i_crit_edge
  %148 = tail call i32 @llvm.bswap.i32(i32 %backward_addr.2.i) #4
  %149 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i57.i = getelementptr i8, ptr %150, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 %148) #4, !srcloc !19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %151 = load i32, ptr @hantro_debug, align 4
  %and.i59.i = and i32 %151, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59.i)
  %tobool.not.i60.i = icmp eq i32 %and.i59.i, 0
  br i1 %tobool.not.i60.i, label %vdpu_write_relaxed.exit58.i.hantro_g1_mpeg2_dec_set_buffers.exit_crit_edge, label %do.end.i62.i

vdpu_write_relaxed.exit58.i.hantro_g1_mpeg2_dec_set_buffers.exit_crit_edge: ; preds = %vdpu_write_relaxed.exit58.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_g1_mpeg2_dec_set_buffers.exit

do.end.i62.i:                                     ; preds = %vdpu_write_relaxed.exit58.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 17, i32 noundef %backward_addr.2.i) #7
  br label %hantro_g1_mpeg2_dec_set_buffers.exit

hantro_g1_mpeg2_dec_set_buffers.exit:             ; preds = %do.end.i62.i, %vdpu_write_relaxed.exit58.i.hantro_g1_mpeg2_dec_set_buffers.exit_crit_edge
  %152 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i64.i = getelementptr i8, ptr %153, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 %148) #4, !srcloc !19
  tail call void @hantro_end_prepare_run(ptr noundef %ctx) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %154 = load i32, ptr @hantro_debug, align 4
  %and.i219 = and i32 %154, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i219)
  %tobool.not.i220 = icmp eq i32 %and.i219, 0
  br i1 %tobool.not.i220, label %hantro_g1_mpeg2_dec_set_buffers.exit.vdpu_write.exit_crit_edge, label %do.end.i222

hantro_g1_mpeg2_dec_set_buffers.exit.vdpu_write.exit_crit_edge: ; preds = %hantro_g1_mpeg2_dec_set_buffers.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit

do.end.i222:                                      ; preds = %hantro_g1_mpeg2_dec_set_buffers.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 398, i32 noundef 1, i32 noundef 1) #7
  br label %vdpu_write.exit

vdpu_write.exit:                                  ; preds = %do.end.i222, %hantro_g1_mpeg2_dec_set_buffers.exit.vdpu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %155 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i224 = getelementptr i8, ptr %156, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224, i32 16777216) #4, !srcloc !19
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
declare dso_local zeroext i1 @hantro_needs_postproc(ptr noundef, ptr noundef) local_unnamed_addr #1

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
!19 = !{i64 5446595}
!20 = !{i64 2156581874}
