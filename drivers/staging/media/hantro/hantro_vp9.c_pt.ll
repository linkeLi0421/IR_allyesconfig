; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_vp9.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_vp9.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hantro_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.delayed_work }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hantro_ctx = type { ptr, %struct.v4l2_fh, i8, i32, i32, ptr, %struct.v4l2_pix_format_mplane, ptr, %struct.v4l2_pix_format_mplane, %struct.v4l2_ctrl_handler, i32, ptr, %struct.hantro_postproc_ctx, %union.anon.114 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.hantro_postproc_ctx = type { [32 x %struct.hantro_aux_buf] }
%struct.hantro_aux_buf = type { ptr, i32, i32, i32 }
%union.anon.114 = type { %struct.hantro_vp9_dec_hw_ctx }
%struct.hantro_vp9_dec_hw_ctx = type { %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.v4l2_vp9_frame_symbol_counts, %struct.v4l2_vp9_frame_context, [4 x %struct.v4l2_vp9_frame_context], %struct.hantro_vp9_frame_info, %struct.hantro_vp9_frame_info, i32, i32, i32, i32, [34 x i16], [64 x i16], i32, i32, i32, i32, i32, [8 x i8], [8 x [4 x i16]] }
%struct.v4l2_vp9_frame_symbol_counts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [2 x [2 x [6 x [6 x ptr]]]]], [4 x [2 x [2 x [6 x [6 x [2 x ptr]]]]]] }
%struct.v4l2_vp9_frame_context = type { [2 x [1 x i8]], [2 x [2 x i8]], [2 x [3 x i8]], [4 x [2 x [2 x [6 x [6 x [3 x i8]]]]]], [3 x i8], [7 x [3 x i8]], [4 x [2 x i8]], [4 x i8], [5 x i8], [5 x [2 x i8]], [5 x i8], [4 x [9 x i8]], [10 x [9 x i8]], [16 x [3 x i8]], %struct.v4l2_vp9_frame_mv_context }
%struct.v4l2_vp9_frame_mv_context = type { [3 x i8], [2 x i8], [2 x [10 x i8]], [2 x i8], [2 x [10 x i8]], [2 x [2 x [3 x i8]]], [2 x [3 x i8]], [2 x i8], [2 x i8] }
%struct.hantro_vp9_frame_info = type { i16, i32, i64 }
%struct.hantro_variant = type { i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.hantro_fmt = type { ptr, i32, i32, i32, i32, i32, %struct.v4l2_frmsize_stepwise, i8 }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.symbol_counts = type { [7 x [3 x [2 x i32]]], [4 x [10 x i32]], [10 x [10 x i32]], [16 x [4 x i32]], [4 x [3 x i32]], [4 x [2 x i32]], [5 x [2 x i32]], [5 x [2 x [2 x i32]]], [5 x [2 x i32]], [2 x [4 x i32]], [2 x [3 x i32]], [2 x [2 x i32]], [3 x [2 x i32]], %struct.mv_counts, [2 x [2 x [6 x [6 x [4 x i32]]]]], [2 x [2 x [6 x [6 x [4 x i32]]]]], [2 x [2 x [6 x [6 x [4 x i32]]]]], [2 x [2 x [6 x [6 x [4 x i32]]]]], [4 x [2 x [2 x [6 x [6 x i32]]]]] }
%struct.mv_counts = type { [4 x i32], [2 x [2 x i32]], [2 x [11 x i32]], [2 x [2 x i32]], [2 x [10 x [2 x i32]]], [2 x [2 x [4 x i32]]], [2 x [4 x i32]], [2 x [2 x i32]], [2 x [2 x i32]] }

@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_vp9_dec_init(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %variant1 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1, align 8
  %4 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %segment_map3 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1
  %misc4 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2
  %num_dec_fmts = getelementptr inbounds %struct.hantro_variant, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %num_dec_fmts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_dec_fmts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dec_fmts = getelementptr inbounds %struct.hantro_variant, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %dec_fmts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dec_fmts, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %fourcc = getelementptr %struct.hantro_fmt, ptr %8, i32 %i.0141, i32 1
  %9 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1178161238, i32 %10)
  %cmp7 = icmp eq i32 %10, 1178161238
  br i1 %cmp7, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0141, i32 %6)
  %cmp11 = icmp eq i32 %i.0141, %6
  br i1 %cmp11, label %for.end.cleanup_crit_edge, label %if.end13

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end13:                                         ; preds = %for.end
  %dec_fmts15 = getelementptr inbounds %struct.hantro_variant, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %dec_fmts15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dec_fmts15, align 4
  %max_width17 = getelementptr %struct.hantro_fmt, ptr %12, i32 %i.0141, i32 6, i32 1
  %13 = ptrtoint ptr %max_width17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_width17, align 4
  %max_height22 = getelementptr %struct.hantro_fmt, ptr %12, i32 %i.0141, i32 6, i32 4
  %15 = ptrtoint ptr %max_height22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_height22, align 4
  %add.i = add i32 %16, 7
  %div13.i = and i32 %add.i, -8
  %add4.i = add i32 %div13.i, 63
  %div514.i = and i32 %add4.i, -64
  %mul8.i = mul i32 %div514.i, 1512
  %bsd_ctrl_offset = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 8
  %17 = ptrtoint ptr %bsd_ctrl_offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul8.i, ptr %bsd_ctrl_offset, align 8
  %add.i133 = shl i32 %16, 2
  %div14.i = add i32 %add.i133, 28
  %add4.i134 = and i32 %div14.i, -32
  %18 = add i32 %add4.i134, 252
  %mul8.i135 = and i32 %18, -256
  %mul9.i = mul i32 %mul8.i135, 63
  %add = add i32 %mul9.i, %mul8.i
  %dev24 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev24, align 4
  %dma = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %20, i32 noundef %add, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #2
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %4, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end13.cleanup_crit_edge, label %if.end28

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end28:                                         ; preds = %if.end13
  %size29 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %size29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %size29, align 4
  %23 = call ptr @memset(ptr %call.i, i32 0, i32 %add)
  %add.i136 = add i32 %14, 7
  %div17.i = and i32 %add.i136, -8
  %add7.i = add i32 %div17.i, 63
  %div1020.i = lshr i32 %add4.i, 6
  %24 = lshr i32 %add7.i, 1
  %mul11.i = and i32 %24, 2147483616
  %mul12.i = mul i32 %mul11.i, %div1020.i
  %segment_map_size = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 9
  %25 = ptrtoint ptr %segment_map_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul12.i, ptr %segment_map_size, align 4
  %mul = shl i32 %mul12.i, 1
  %26 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev24, align 4
  %dma33 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 1
  %call.i138 = tail call ptr @dma_alloc_attrs(ptr noundef %27, i32 noundef %mul, ptr noundef %dma33, i32 noundef 3264, i32 noundef 0) #2
  %28 = ptrtoint ptr %segment_map3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i138, ptr %segment_map3, align 4
  %tobool37.not = icmp eq ptr %call.i138, null
  br i1 %tobool37.not, label %if.end28.err_segment_map_crit_edge, label %if.end39

if.end28.err_segment_map_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #4
  br label %err_segment_map

if.end39:                                         ; preds = %if.end28
  %size40 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %size40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul, ptr %size40, align 4
  %30 = call ptr @memset(ptr %call.i138, i32 0, i32 %mul)
  %ctx_counters_offset = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 10
  %31 = ptrtoint ptr %ctx_counters_offset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3744, ptr %ctx_counters_offset, align 8
  %tile_info_offset = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 11
  %32 = ptrtoint ptr %tile_info_offset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 17008, ptr %tile_info_offset, align 4
  %33 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev24, align 4
  %dma48 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 1
  %call.i139 = tail call ptr @dma_alloc_attrs(ptr noundef %34, i32 noundef 20544, ptr noundef %dma48, i32 noundef 3264, i32 noundef 0) #2
  %35 = ptrtoint ptr %misc4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i139, ptr %misc4, align 4
  %tobool52.not = icmp eq ptr %call.i139, null
  br i1 %tobool52.not, label %err_misc, label %if.end54

if.end54:                                         ; preds = %if.end39
  %size55 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %size55 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 20544, ptr %size55, align 4
  %37 = call ptr @memset(ptr %call.i139, i32 0, i32 20544)
  %38 = ptrtoint ptr %misc4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %misc4, align 8
  %40 = ptrtoint ptr %ctx_counters_offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctx_counters_offset, align 8
  %add.ptr.i = getelementptr i8, ptr %39, i32 %41
  %partition_counts.i = getelementptr inbounds %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 3
  %cnts1.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3
  %42 = ptrtoint ptr %cnts1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %partition_counts.i, ptr %cnts1.i, align 8
  %mbskip_count.i = getelementptr inbounds %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 12
  %skip.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %skip.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %mbskip_count.i, ptr %skip.i, align 4
  %intra_inter_count.i = getelementptr inbounds %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 5
  %intra_inter.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %intra_inter.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %intra_inter_count.i, ptr %intra_inter.i, align 8
  %tx32x32_count.i = getelementptr inbounds %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 9
  %tx32p.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %tx32p.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %tx32x32_count.i, ptr %tx32p.i, align 4
  %tx8x8_count.i = getelementptr inbounds %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 11
  %tx8p.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 5
  %46 = ptrtoint ptr %tx8p.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %tx8x8_count.i, ptr %tx8p.i, align 4
  %sb_ymode_counts.i = getelementptr inbounds %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 1
  %y_mode.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 6
  %47 = ptrtoint ptr %y_mode.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %sb_ymode_counts.i, ptr %y_mode.i, align 8
  %uv_mode_counts.i = getelementptr inbounds %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 2
  %uv_mode.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 7
  %48 = ptrtoint ptr %uv_mode.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %uv_mode_counts.i, ptr %uv_mode.i, align 4
  %comp_inter_count.i = getelementptr inbounds %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 6
  %comp.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %comp_inter_count.i, ptr %comp.i, align 8
  %comp_ref_count.i = getelementptr inbounds %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 8
  %comp_ref.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 9
  %50 = ptrtoint ptr %comp_ref.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %comp_ref_count.i, ptr %comp_ref.i, align 4
  %single_ref_count.i = getelementptr inbounds %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 7
  %single_ref.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 10
  %51 = ptrtoint ptr %single_ref.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %single_ref_count.i, ptr %single_ref.i, align 8
  %switchable_interp_counts.i = getelementptr inbounds %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 4
  %filter.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 12
  %52 = ptrtoint ptr %filter.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %switchable_interp_counts.i, ptr %filter.i, align 8
  %mv_counts.i = getelementptr inbounds %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 13
  %mv_joint.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 13
  %53 = ptrtoint ptr %mv_joint.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %mv_counts.i, ptr %mv_joint.i, align 4
  %sign.i = getelementptr inbounds %struct.mv_counts, ptr %mv_counts.i, i32 0, i32 1
  %sign15.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 14
  %54 = ptrtoint ptr %sign15.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %sign.i, ptr %sign15.i, align 8
  %classes.i = getelementptr inbounds %struct.mv_counts, ptr %mv_counts.i, i32 0, i32 2
  %classes18.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 15
  %55 = ptrtoint ptr %classes18.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %classes.i, ptr %classes18.i, align 4
  %class0.i = getelementptr inbounds %struct.mv_counts, ptr %mv_counts.i, i32 0, i32 3
  %class021.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 16
  %56 = ptrtoint ptr %class021.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %class0.i, ptr %class021.i, align 8
  %bits.i = getelementptr inbounds %struct.mv_counts, ptr %mv_counts.i, i32 0, i32 4
  %bits24.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 17
  %57 = ptrtoint ptr %bits24.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %bits.i, ptr %bits24.i, align 4
  %class0_fp.i = getelementptr inbounds %struct.mv_counts, ptr %mv_counts.i, i32 0, i32 5
  %class0_fp27.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 18
  %58 = ptrtoint ptr %class0_fp27.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %class0_fp.i, ptr %class0_fp27.i, align 8
  %fp.i = getelementptr inbounds %struct.mv_counts, ptr %mv_counts.i, i32 0, i32 6
  %fp30.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 19
  %59 = ptrtoint ptr %fp30.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %fp.i, ptr %fp30.i, align 4
  %class0_hp.i = getelementptr inbounds %struct.mv_counts, ptr %mv_counts.i, i32 0, i32 7
  %class0_hp33.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 20
  %60 = ptrtoint ptr %class0_hp33.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %class0_hp.i, ptr %class0_hp33.i, align 8
  %hp.i = getelementptr inbounds %struct.mv_counts, ptr %mv_counts.i, i32 0, i32 8
  %hp36.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 21
  %61 = ptrtoint ptr %hp36.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %hp.i, ptr %hp36.i, align 4
  %count_eobs184.i = getelementptr inbounds %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 18
  br label %for.cond37.preheader.i

for.cond37.preheader.i:                           ; preds = %for.inc84.i.for.cond37.preheader.i_crit_edge, %if.end54
  %i.0192.i = phi i32 [ 0, %if.end54 ], [ %inc85.i, %for.inc84.i.for.cond37.preheader.i_crit_edge ]
  br label %for.cond40.preheader.i

for.cond40.preheader.i:                           ; preds = %for.inc78.1.i.for.cond40.preheader.i_crit_edge, %for.cond37.preheader.i
  %j.0191.i = phi i32 [ 0, %for.cond37.preheader.i ], [ %inc82.i, %for.inc78.1.i.for.cond40.preheader.i_crit_edge ]
  br label %for.cond46.preheader.i

for.cond46.preheader.i:                           ; preds = %for.inc75.i.for.cond46.preheader.i_crit_edge, %for.cond40.preheader.i
  %l.0189.i = phi i32 [ 0, %for.cond40.preheader.i ], [ %inc76.i, %for.inc75.i.for.cond46.preheader.i_crit_edge ]
  br label %for.body48.i

for.body48.i:                                     ; preds = %get_eobs1.exit.i.for.body48.i_crit_edge, %for.cond46.preheader.i
  %m.0187.i = phi i32 [ 0, %for.cond46.preheader.i ], [ %inc.i, %get_eobs1.exit.i.for.body48.i_crit_edge ]
  %62 = zext i32 %i.0192.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0192.i, label %get_coeffs_arr.exit.i [
    i32 0, label %get_coeffs_arr.exit.thread.i
    i32 1, label %get_coeffs_arr.exit.thread175.i
    i32 2, label %get_coeffs_arr.exit.thread181.i
  ]

get_coeffs_arr.exit.thread.i:                     ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx3.i.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 14, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %arrayidx53171.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %63 = ptrtoint ptr %arrayidx53171.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx3.i.i, ptr %arrayidx53171.i, align 4
  %arrayidx58173.i = getelementptr [4 x [2 x [2 x [6 x [6 x i32]]]]], ptr %count_eobs184.i, i32 0, i32 0, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %arrayidx64174.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 23, i32 0, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %64 = ptrtoint ptr %arrayidx64174.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %arrayidx58173.i, ptr %arrayidx64174.i, align 8
  %arrayidx4.i.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 14, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i, i32 3
  br label %get_eobs1.exit.i

get_coeffs_arr.exit.thread175.i:                  ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx9.i.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 15, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %arrayidx53177.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 1, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %65 = ptrtoint ptr %arrayidx53177.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %arrayidx9.i.i, ptr %arrayidx53177.i, align 4
  %arrayidx58179.i = getelementptr [4 x [2 x [2 x [6 x [6 x i32]]]]], ptr %count_eobs184.i, i32 0, i32 1, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %arrayidx64180.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 23, i32 1, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %66 = ptrtoint ptr %arrayidx64180.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %arrayidx58179.i, ptr %arrayidx64180.i, align 8
  %arrayidx11.i.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 15, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i, i32 3
  br label %get_eobs1.exit.i

get_coeffs_arr.exit.thread181.i:                  ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx16.i.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 16, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %arrayidx53183.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 2, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %67 = ptrtoint ptr %arrayidx53183.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx16.i.i, ptr %arrayidx53183.i, align 4
  %arrayidx58185.i = getelementptr [4 x [2 x [2 x [6 x [6 x i32]]]]], ptr %count_eobs184.i, i32 0, i32 2, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %arrayidx64186.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 23, i32 2, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %68 = ptrtoint ptr %arrayidx64186.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx58185.i, ptr %arrayidx64186.i, align 8
  %arrayidx19.i.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 16, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i, i32 3
  br label %get_eobs1.exit.i

get_coeffs_arr.exit.i:                            ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx23.i.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 17, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %arrayidx53.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 %i.0192.i, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %69 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx23.i.i, ptr %arrayidx53.i, align 4
  %arrayidx58.i = getelementptr [4 x [2 x [2 x [6 x [6 x i32]]]]], ptr %count_eobs184.i, i32 0, i32 %i.0192.i, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %arrayidx64.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 23, i32 %i.0192.i, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i
  %70 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %arrayidx58.i, ptr %arrayidx64.i, align 8
  %arrayidx27.i.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 17, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i, i32 3
  br label %get_eobs1.exit.i

get_eobs1.exit.i:                                 ; preds = %get_coeffs_arr.exit.i, %get_coeffs_arr.exit.thread181.i, %get_coeffs_arr.exit.thread175.i, %get_coeffs_arr.exit.thread.i
  %retval.0.i169.i = phi ptr [ %arrayidx4.i.i, %get_coeffs_arr.exit.thread.i ], [ %arrayidx11.i.i, %get_coeffs_arr.exit.thread175.i ], [ %arrayidx19.i.i, %get_coeffs_arr.exit.thread181.i ], [ %arrayidx27.i.i, %get_coeffs_arr.exit.i ]
  %arrayidx74.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 23, i32 %i.0192.i, i32 %j.0191.i, i32 0, i32 %l.0189.i, i32 %m.0187.i, i32 1
  %71 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %retval.0.i169.i, ptr %arrayidx74.i, align 4
  %inc.i = add nuw nsw i32 %m.0187.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %for.inc75.i, label %get_eobs1.exit.i.for.body48.i_crit_edge

get_eobs1.exit.i.for.body48.i_crit_edge:          ; preds = %get_eobs1.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body48.i

for.inc75.i:                                      ; preds = %get_eobs1.exit.i
  %inc76.i = add nuw nsw i32 %l.0189.i, 1
  %exitcond193.not.i = icmp eq i32 %inc76.i, 6
  br i1 %exitcond193.not.i, label %for.inc75.i.for.cond46.preheader.1.i_crit_edge, label %for.inc75.i.for.cond46.preheader.i_crit_edge

for.inc75.i.for.cond46.preheader.i_crit_edge:     ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond46.preheader.i

for.inc75.i.for.cond46.preheader.1.i_crit_edge:   ; preds = %for.inc75.i
  br label %for.cond46.preheader.1.i

for.cond46.preheader.1.i:                         ; preds = %for.inc75.1.i.for.cond46.preheader.1.i_crit_edge, %for.inc75.i.for.cond46.preheader.1.i_crit_edge
  %l.0189.1.i = phi i32 [ %inc76.1.i, %for.inc75.1.i.for.cond46.preheader.1.i_crit_edge ], [ 0, %for.inc75.i.for.cond46.preheader.1.i_crit_edge ]
  br label %for.body48.1.i

for.body48.1.i:                                   ; preds = %get_eobs1.exit.1.i.for.body48.1.i_crit_edge, %for.cond46.preheader.1.i
  %m.0187.1.i = phi i32 [ 0, %for.cond46.preheader.1.i ], [ %inc.1.i, %get_eobs1.exit.1.i.for.body48.1.i_crit_edge ]
  %72 = zext i32 %i.0192.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %i.0192.i, label %get_coeffs_arr.exit.1.i [
    i32 0, label %get_coeffs_arr.exit.thread.1.i
    i32 1, label %get_coeffs_arr.exit.thread175.1.i
    i32 2, label %get_coeffs_arr.exit.thread181.1.i
  ]

get_coeffs_arr.exit.thread181.1.i:                ; preds = %for.body48.1.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx16.i.1.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 16, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %arrayidx53183.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 2, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %73 = ptrtoint ptr %arrayidx53183.1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx16.i.1.i, ptr %arrayidx53183.1.i, align 4
  %arrayidx58185.1.i = getelementptr [4 x [2 x [2 x [6 x [6 x i32]]]]], ptr %count_eobs184.i, i32 0, i32 2, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %arrayidx64186.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 23, i32 2, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %74 = ptrtoint ptr %arrayidx64186.1.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx58185.1.i, ptr %arrayidx64186.1.i, align 8
  %arrayidx19.i.1.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 16, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i, i32 3
  br label %get_eobs1.exit.1.i

get_coeffs_arr.exit.thread175.1.i:                ; preds = %for.body48.1.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx9.i.1.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 15, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %arrayidx53177.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 1, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %75 = ptrtoint ptr %arrayidx53177.1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx9.i.1.i, ptr %arrayidx53177.1.i, align 4
  %arrayidx58179.1.i = getelementptr [4 x [2 x [2 x [6 x [6 x i32]]]]], ptr %count_eobs184.i, i32 0, i32 1, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %arrayidx64180.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 23, i32 1, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %76 = ptrtoint ptr %arrayidx64180.1.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %arrayidx58179.1.i, ptr %arrayidx64180.1.i, align 8
  %arrayidx11.i.1.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 15, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i, i32 3
  br label %get_eobs1.exit.1.i

get_coeffs_arr.exit.thread.1.i:                   ; preds = %for.body48.1.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx3.i.1.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 14, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %arrayidx53171.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %77 = ptrtoint ptr %arrayidx53171.1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx3.i.1.i, ptr %arrayidx53171.1.i, align 4
  %arrayidx58173.1.i = getelementptr [4 x [2 x [2 x [6 x [6 x i32]]]]], ptr %count_eobs184.i, i32 0, i32 0, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %arrayidx64174.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 23, i32 0, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %78 = ptrtoint ptr %arrayidx64174.1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %arrayidx58173.1.i, ptr %arrayidx64174.1.i, align 8
  %arrayidx4.i.1.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 14, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i, i32 3
  br label %get_eobs1.exit.1.i

get_coeffs_arr.exit.1.i:                          ; preds = %for.body48.1.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx23.i.1.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 17, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %arrayidx53.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 %i.0192.i, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %79 = ptrtoint ptr %arrayidx53.1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrayidx23.i.1.i, ptr %arrayidx53.1.i, align 4
  %arrayidx58.1.i = getelementptr [4 x [2 x [2 x [6 x [6 x i32]]]]], ptr %count_eobs184.i, i32 0, i32 %i.0192.i, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %arrayidx64.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 23, i32 %i.0192.i, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i
  %80 = ptrtoint ptr %arrayidx64.1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %arrayidx58.1.i, ptr %arrayidx64.1.i, align 8
  %arrayidx27.i.1.i = getelementptr %struct.symbol_counts, ptr %add.ptr.i, i32 0, i32 17, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i, i32 3
  br label %get_eobs1.exit.1.i

get_eobs1.exit.1.i:                               ; preds = %get_coeffs_arr.exit.1.i, %get_coeffs_arr.exit.thread.1.i, %get_coeffs_arr.exit.thread175.1.i, %get_coeffs_arr.exit.thread181.1.i
  %retval.0.i169.1.i = phi ptr [ %arrayidx4.i.1.i, %get_coeffs_arr.exit.thread.1.i ], [ %arrayidx11.i.1.i, %get_coeffs_arr.exit.thread175.1.i ], [ %arrayidx19.i.1.i, %get_coeffs_arr.exit.thread181.1.i ], [ %arrayidx27.i.1.i, %get_coeffs_arr.exit.1.i ]
  %arrayidx74.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 23, i32 %i.0192.i, i32 %j.0191.i, i32 1, i32 %l.0189.1.i, i32 %m.0187.1.i, i32 1
  %81 = ptrtoint ptr %arrayidx74.1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %retval.0.i169.1.i, ptr %arrayidx74.1.i, align 4
  %inc.1.i = add nuw nsw i32 %m.0187.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, 6
  br i1 %exitcond.1.not.i, label %for.inc75.1.i, label %get_eobs1.exit.1.i.for.body48.1.i_crit_edge

get_eobs1.exit.1.i.for.body48.1.i_crit_edge:      ; preds = %get_eobs1.exit.1.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body48.1.i

for.inc75.1.i:                                    ; preds = %get_eobs1.exit.1.i
  %inc76.1.i = add nuw nsw i32 %l.0189.1.i, 1
  %exitcond193.1.not.i = icmp eq i32 %inc76.1.i, 6
  br i1 %exitcond193.1.not.i, label %for.inc78.1.i, label %for.inc75.1.i.for.cond46.preheader.1.i_crit_edge

for.inc75.1.i.for.cond46.preheader.1.i_crit_edge: ; preds = %for.inc75.1.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond46.preheader.1.i

for.inc78.1.i:                                    ; preds = %for.inc75.1.i
  %inc82.i = add nuw nsw i32 %j.0191.i, 1
  %exitcond195.not.i = icmp eq i32 %inc82.i, 2
  br i1 %exitcond195.not.i, label %for.inc84.i, label %for.inc78.1.i.for.cond40.preheader.i_crit_edge

for.inc78.1.i.for.cond40.preheader.i_crit_edge:   ; preds = %for.inc78.1.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond40.preheader.i

for.inc84.i:                                      ; preds = %for.inc78.1.i
  %inc85.i = add nuw nsw i32 %i.0192.i, 1
  %exitcond196.not.i = icmp eq i32 %inc85.i, 4
  br i1 %exitcond196.not.i, label %for.inc84.i.cleanup_crit_edge, label %for.inc84.i.for.cond37.preheader.i_crit_edge

for.inc84.i.for.cond37.preheader.i_crit_edge:     ; preds = %for.inc84.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond37.preheader.i

for.inc84.i.cleanup_crit_edge:                    ; preds = %for.inc84.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

err_misc:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #4
  %82 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev24, align 4
  %84 = ptrtoint ptr %size40 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %size40, align 4
  %86 = ptrtoint ptr %segment_map3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %segment_map3, align 4
  %88 = ptrtoint ptr %dma33 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma33, align 4
  tail call void @dma_free_attrs(ptr noundef %83, i32 noundef %85, ptr noundef %87, i32 noundef %89, i32 noundef 0) #2
  br label %err_segment_map

err_segment_map:                                  ; preds = %err_misc, %if.end28.err_segment_map_crit_edge
  %90 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev24, align 4
  %92 = ptrtoint ptr %size29 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size29, align 4
  %94 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %4, align 4
  %96 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %91, i32 noundef %93, ptr noundef %95, i32 noundef %97, i32 noundef 0) #2
  br label %cleanup

cleanup:                                          ; preds = %err_segment_map, %for.inc84.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_segment_map ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ 0, %for.inc84.i.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_vp9_dec_exit(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %2 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %segment_map2 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1
  %misc3 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2
  %dev4 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev4, align 4
  %size = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %7 = ptrtoint ptr %misc3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %misc3, align 4
  %dma = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %4, i32 noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 0) #2
  %11 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev4, align 4
  %size6 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size6, align 4
  %15 = ptrtoint ptr %segment_map2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %segment_map2, align 4
  %dma8 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %dma8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma8, align 4
  tail call void @dma_free_attrs(ptr noundef %12, i32 noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef 0) #2
  %19 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev4, align 4
  %size10 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size10, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %2, align 4
  %dma12 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %dma12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma12, align 4
  tail call void @dma_free_attrs(ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %26, i32 noundef 0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
