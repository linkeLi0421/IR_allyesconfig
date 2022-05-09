; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_vp8.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_vp8.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.v4l2_ctrl_vp8_frame = type { %struct.v4l2_vp8_segment, %struct.v4l2_vp8_loop_filter, %struct.v4l2_vp8_quantization, %struct.v4l2_vp8_entropy, %struct.v4l2_vp8_entropy_coder_state, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [8 x i32], i64, i64, i64, i64 }
%struct.v4l2_vp8_segment = type { [4 x i8], [4 x i8], [3 x i8], i8, i32 }
%struct.v4l2_vp8_loop_filter = type { [4 x i8], [4 x i8], i8, i8, i16, i32 }
%struct.v4l2_vp8_quantization = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.v4l2_vp8_entropy = type { [4 x [8 x [3 x [11 x i8]]]], [4 x i8], [3 x i8], [2 x [19 x i8]], [3 x i8] }
%struct.v4l2_vp8_entropy_coder_state = type { i8, i8, i8, i8 }
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

@hantro_vp8_dec_mc_filter = dso_local constant { [8 x [6 x i32]], [32 x i8] } { [8 x [6 x i32]] [[6 x i32] [i32 0, i32 0, i32 128, i32 0, i32 0, i32 0], [6 x i32] [i32 0, i32 -6, i32 123, i32 12, i32 -1, i32 0], [6 x i32] [i32 2, i32 -11, i32 108, i32 36, i32 -8, i32 1], [6 x i32] [i32 0, i32 -9, i32 93, i32 50, i32 -6, i32 0], [6 x i32] [i32 3, i32 -16, i32 77, i32 77, i32 -16, i32 3], [6 x i32] [i32 0, i32 -6, i32 50, i32 93, i32 -9, i32 0], [6 x i32] [i32 1, i32 -8, i32 36, i32 108, i32 -11, i32 2], [6 x i32] [i32 0, i32 -1, i32 12, i32 123, i32 -6, i32 0]], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"hantro_vp8_dec_mc_filter\00", align 1
@___asan_gen_.2 = private constant [45 x i8] c"../drivers/staging/media/hantro/hantro_vp8.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 38, i32 11 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @hantro_vp8_dec_mc_filter], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_vp8_dec_mc_filter to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_vp8_prob_update(ptr nocapture noundef readonly %ctx, ptr noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %prob_tbl = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1
  %0 = ptrtoint ptr %prob_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prob_tbl, align 8
  %prob_skip_false = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 10
  %2 = ptrtoint ptr %prob_skip_false to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prob_skip_false, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %1, align 1
  %prob_intra = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 11
  %5 = ptrtoint ptr %prob_intra to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %prob_intra, align 4
  %arrayidx2 = getelementptr i8, ptr %1, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx2, align 1
  %prob_last = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 12
  %8 = ptrtoint ptr %prob_last to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %prob_last, align 1
  %arrayidx3 = getelementptr i8, ptr %1, i32 2
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx3, align 1
  %prob_gf = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 13
  %11 = ptrtoint ptr %prob_gf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %prob_gf, align 2
  %arrayidx4 = getelementptr i8, ptr %1, i32 3
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx4, align 1
  %segment_probs = getelementptr inbounds %struct.v4l2_vp8_segment, ptr %hdr, i32 0, i32 2
  %14 = ptrtoint ptr %segment_probs to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %segment_probs, align 8
  %arrayidx6 = getelementptr i8, ptr %1, i32 4
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx6, align 1
  %arrayidx9 = getelementptr %struct.v4l2_vp8_segment, ptr %hdr, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr i8, ptr %1, i32 5
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx10, align 1
  %arrayidx13 = getelementptr %struct.v4l2_vp8_segment, ptr %hdr, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx13, align 2
  %arrayidx14 = getelementptr i8, ptr %1, i32 6
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr i8, ptr %1, i32 7
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx15, align 1
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %y_mode_probs = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %y_mode_probs to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %y_mode_probs, align 1
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %add.ptr, align 1
  %arrayidx19 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr i8, ptr %1, i32 9
  %29 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx20, align 1
  %arrayidx22 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx22, align 1
  %arrayidx23 = getelementptr i8, ptr %1, i32 10
  %32 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx23, align 1
  %arrayidx25 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 1, i32 3
  %33 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx25, align 1
  %arrayidx26 = getelementptr i8, ptr %1, i32 11
  %35 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx26, align 1
  %uv_mode_probs = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %uv_mode_probs to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %uv_mode_probs, align 1
  %arrayidx28 = getelementptr i8, ptr %1, i32 12
  %38 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx28, align 1
  %arrayidx30 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 2, i32 1
  %39 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx30, align 1
  %arrayidx31 = getelementptr i8, ptr %1, i32 13
  %41 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx31, align 1
  %arrayidx33 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 2, i32 2
  %42 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx33, align 1
  %arrayidx34 = getelementptr i8, ptr %1, i32 14
  %44 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx34, align 1
  %arrayidx35 = getelementptr i8, ptr %1, i32 15
  %45 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx35, align 1
  %add.ptr36 = getelementptr i8, ptr %1, i32 16
  %mv_probs = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %mv_probs to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mv_probs, align 1
  %48 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %add.ptr36, align 1
  %arrayidx41 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1
  %49 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx41, align 1
  %arrayidx43 = getelementptr i8, ptr %1, i32 17
  %51 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx43, align 1
  %arrayidx46 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx46, align 1
  %arrayidx47 = getelementptr i8, ptr %1, i32 18
  %54 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx47, align 1
  %arrayidx50 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 1
  %55 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx50, align 1
  %arrayidx51 = getelementptr i8, ptr %1, i32 19
  %57 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx51, align 1
  %arrayidx54 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 17
  %58 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx54, align 1
  %arrayidx55 = getelementptr i8, ptr %1, i32 20
  %60 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx55, align 1
  %arrayidx58 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 18
  %61 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx58, align 1
  %arrayidx59 = getelementptr i8, ptr %1, i32 21
  %63 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx59, align 1
  %arrayidx62 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 17
  %64 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx62, align 1
  %arrayidx63 = getelementptr i8, ptr %1, i32 22
  %66 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx63, align 1
  %arrayidx66 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 18
  %67 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx66, align 1
  %arrayidx67 = getelementptr i8, ptr %1, i32 23
  %69 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx67, align 1
  %add.ptr68 = getelementptr i8, ptr %1, i32 24
  %arrayidx75 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 9
  %70 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx75, align 1
  %72 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %add.ptr68, align 1
  %arrayidx81 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 10
  %73 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx81, align 1
  %arrayidx82 = getelementptr i8, ptr %1, i32 25
  %75 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx82, align 1
  %arrayidx87 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 11
  %76 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx87, align 1
  %arrayidx88 = getelementptr i8, ptr %1, i32 26
  %78 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx88, align 1
  %arrayidx93 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 12
  %79 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx93, align 1
  %arrayidx94 = getelementptr i8, ptr %1, i32 27
  %81 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx94, align 1
  %add.ptr95 = getelementptr i8, ptr %1, i32 28
  %arrayidx75.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 13
  %82 = ptrtoint ptr %arrayidx75.1 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx75.1, align 1
  %84 = ptrtoint ptr %add.ptr95 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %add.ptr95, align 1
  %arrayidx81.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 14
  %85 = ptrtoint ptr %arrayidx81.1 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx81.1, align 1
  %arrayidx82.1 = getelementptr i8, ptr %1, i32 29
  %87 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx82.1, align 1
  %arrayidx87.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 15
  %88 = ptrtoint ptr %arrayidx87.1 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx87.1, align 1
  %arrayidx88.1 = getelementptr i8, ptr %1, i32 30
  %90 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx88.1, align 1
  %arrayidx93.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 16
  %91 = ptrtoint ptr %arrayidx93.1 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx93.1, align 1
  %arrayidx94.1 = getelementptr i8, ptr %1, i32 31
  %93 = ptrtoint ptr %arrayidx94.1 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx94.1, align 1
  %add.ptr95.1 = getelementptr i8, ptr %1, i32 32
  %arrayidx75.1427 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 9
  %94 = ptrtoint ptr %arrayidx75.1427 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx75.1427, align 1
  %96 = ptrtoint ptr %add.ptr95.1 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %add.ptr95.1, align 1
  %arrayidx81.1428 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 10
  %97 = ptrtoint ptr %arrayidx81.1428 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx81.1428, align 1
  %arrayidx82.1429 = getelementptr i8, ptr %1, i32 33
  %99 = ptrtoint ptr %arrayidx82.1429 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx82.1429, align 1
  %arrayidx87.1430 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 11
  %100 = ptrtoint ptr %arrayidx87.1430 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx87.1430, align 1
  %arrayidx88.1431 = getelementptr i8, ptr %1, i32 34
  %102 = ptrtoint ptr %arrayidx88.1431 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx88.1431, align 1
  %arrayidx93.1432 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 12
  %103 = ptrtoint ptr %arrayidx93.1432 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx93.1432, align 1
  %arrayidx94.1433 = getelementptr i8, ptr %1, i32 35
  %105 = ptrtoint ptr %arrayidx94.1433 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %arrayidx94.1433, align 1
  %add.ptr95.1434 = getelementptr i8, ptr %1, i32 36
  %arrayidx75.1.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 13
  %106 = ptrtoint ptr %arrayidx75.1.1 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx75.1.1, align 1
  %108 = ptrtoint ptr %add.ptr95.1434 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %add.ptr95.1434, align 1
  %arrayidx81.1.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 14
  %109 = ptrtoint ptr %arrayidx81.1.1 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx81.1.1, align 1
  %arrayidx82.1.1 = getelementptr i8, ptr %1, i32 37
  %111 = ptrtoint ptr %arrayidx82.1.1 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %arrayidx82.1.1, align 1
  %arrayidx87.1.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 15
  %112 = ptrtoint ptr %arrayidx87.1.1 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx87.1.1, align 1
  %arrayidx88.1.1 = getelementptr i8, ptr %1, i32 38
  %114 = ptrtoint ptr %arrayidx88.1.1 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %arrayidx88.1.1, align 1
  %arrayidx93.1.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 16
  %115 = ptrtoint ptr %arrayidx93.1.1 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx93.1.1, align 1
  %arrayidx94.1.1 = getelementptr i8, ptr %1, i32 39
  %117 = ptrtoint ptr %arrayidx94.1.1 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %arrayidx94.1.1, align 1
  %add.ptr95.1.1 = getelementptr i8, ptr %1, i32 40
  %arrayidx104 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 2
  %118 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx104, align 1
  %120 = ptrtoint ptr %add.ptr95.1.1 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %add.ptr95.1.1, align 1
  %arrayidx108 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 3
  %121 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx108, align 1
  %arrayidx109 = getelementptr i8, ptr %1, i32 41
  %123 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %arrayidx109, align 1
  %arrayidx112 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 4
  %124 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx112, align 1
  %arrayidx113 = getelementptr i8, ptr %1, i32 42
  %126 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %arrayidx113, align 1
  %arrayidx116 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 5
  %127 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx116, align 1
  %arrayidx117 = getelementptr i8, ptr %1, i32 43
  %129 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx117, align 1
  %arrayidx120 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 6
  %130 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx120, align 1
  %arrayidx121 = getelementptr i8, ptr %1, i32 44
  %132 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %arrayidx121, align 1
  %arrayidx124 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 7
  %133 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx124, align 1
  %arrayidx125 = getelementptr i8, ptr %1, i32 45
  %135 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx125, align 1
  %arrayidx128 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 0, i32 8
  %136 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx128, align 1
  %arrayidx129 = getelementptr i8, ptr %1, i32 46
  %138 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %arrayidx129, align 1
  %arrayidx130 = getelementptr i8, ptr %1, i32 47
  %139 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %arrayidx130, align 1
  %add.ptr131 = getelementptr i8, ptr %1, i32 48
  %arrayidx104.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 2
  %140 = ptrtoint ptr %arrayidx104.1 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx104.1, align 1
  %142 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %add.ptr131, align 1
  %arrayidx108.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 3
  %143 = ptrtoint ptr %arrayidx108.1 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx108.1, align 1
  %arrayidx109.1 = getelementptr i8, ptr %1, i32 49
  %145 = ptrtoint ptr %arrayidx109.1 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %arrayidx109.1, align 1
  %arrayidx112.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 4
  %146 = ptrtoint ptr %arrayidx112.1 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx112.1, align 1
  %arrayidx113.1 = getelementptr i8, ptr %1, i32 50
  %148 = ptrtoint ptr %arrayidx113.1 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %arrayidx113.1, align 1
  %arrayidx116.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 5
  %149 = ptrtoint ptr %arrayidx116.1 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx116.1, align 1
  %arrayidx117.1 = getelementptr i8, ptr %1, i32 51
  %151 = ptrtoint ptr %arrayidx117.1 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %arrayidx117.1, align 1
  %arrayidx120.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 6
  %152 = ptrtoint ptr %arrayidx120.1 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx120.1, align 1
  %arrayidx121.1 = getelementptr i8, ptr %1, i32 52
  %154 = ptrtoint ptr %arrayidx121.1 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %arrayidx121.1, align 1
  %arrayidx124.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 7
  %155 = ptrtoint ptr %arrayidx124.1 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx124.1, align 1
  %arrayidx125.1 = getelementptr i8, ptr %1, i32 53
  %157 = ptrtoint ptr %arrayidx125.1 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %arrayidx125.1, align 1
  %arrayidx128.1 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3, i32 3, i32 1, i32 8
  %158 = ptrtoint ptr %arrayidx128.1 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx128.1, align 1
  %arrayidx129.1 = getelementptr i8, ptr %1, i32 54
  %160 = ptrtoint ptr %arrayidx129.1 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %arrayidx129.1, align 1
  %arrayidx130.1 = getelementptr i8, ptr %1, i32 55
  %161 = ptrtoint ptr %arrayidx130.1 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %arrayidx130.1, align 1
  %entropy1 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %hdr, i32 0, i32 3
  %162 = load ptr, ptr %prob_tbl, align 8
  %add.ptr137 = getelementptr i8, ptr %162, i32 56
  br label %for.cond141.preheader

for.cond141.preheader:                            ; preds = %for.inc177.for.cond141.preheader_crit_edge, %entry
  %dst.3420 = phi ptr [ %add.ptr137, %entry ], [ %add.ptr170.2, %for.inc177.for.cond141.preheader_crit_edge ]
  %i.2419 = phi i32 [ 0, %entry ], [ %inc178, %for.inc177.for.cond141.preheader_crit_edge ]
  br label %for.cond144.preheader

for.cond144.preheader:                            ; preds = %for.cond144.preheader.for.cond144.preheader_crit_edge, %for.cond141.preheader
  %dst.4418 = phi ptr [ %dst.3420, %for.cond141.preheader ], [ %add.ptr170.2, %for.cond144.preheader.for.cond144.preheader_crit_edge ]
  %j.1417 = phi i32 [ 0, %for.cond141.preheader ], [ %inc175, %for.cond144.preheader.for.cond144.preheader_crit_edge ]
  %arrayidx149 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.2419, i32 %j.1417, i32 0
  %163 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx149, align 1
  %165 = ptrtoint ptr %dst.4418 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %164, ptr %dst.4418, align 1
  %arrayidx156 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.2419, i32 %j.1417, i32 0, i32 1
  %166 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx156, align 1
  %arrayidx157 = getelementptr i8, ptr %dst.4418, i32 1
  %168 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %arrayidx157, align 1
  %arrayidx162 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.2419, i32 %j.1417, i32 0, i32 2
  %169 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx162, align 1
  %arrayidx163 = getelementptr i8, ptr %dst.4418, i32 2
  %171 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %arrayidx163, align 1
  %arrayidx168 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.2419, i32 %j.1417, i32 0, i32 3
  %172 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx168, align 1
  %arrayidx169 = getelementptr i8, ptr %dst.4418, i32 3
  %174 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %arrayidx169, align 1
  %add.ptr170 = getelementptr i8, ptr %dst.4418, i32 4
  %arrayidx149.1 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.2419, i32 %j.1417, i32 1
  %175 = ptrtoint ptr %arrayidx149.1 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx149.1, align 1
  %177 = ptrtoint ptr %add.ptr170 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %add.ptr170, align 1
  %arrayidx156.1 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.2419, i32 %j.1417, i32 1, i32 1
  %178 = ptrtoint ptr %arrayidx156.1 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx156.1, align 1
  %arrayidx157.1 = getelementptr i8, ptr %dst.4418, i32 5
  %180 = ptrtoint ptr %arrayidx157.1 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx157.1, align 1
  %arrayidx162.1 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.2419, i32 %j.1417, i32 1, i32 2
  %181 = ptrtoint ptr %arrayidx162.1 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx162.1, align 1
  %arrayidx163.1 = getelementptr i8, ptr %dst.4418, i32 6
  %183 = ptrtoint ptr %arrayidx163.1 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %arrayidx163.1, align 1
  %arrayidx168.1 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.2419, i32 %j.1417, i32 1, i32 3
  %184 = ptrtoint ptr %arrayidx168.1 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx168.1, align 1
  %arrayidx169.1 = getelementptr i8, ptr %dst.4418, i32 7
  %186 = ptrtoint ptr %arrayidx169.1 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %arrayidx169.1, align 1
  %add.ptr170.1 = getelementptr i8, ptr %dst.4418, i32 8
  %arrayidx149.2 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.2419, i32 %j.1417, i32 2
  %187 = ptrtoint ptr %arrayidx149.2 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx149.2, align 1
  %189 = ptrtoint ptr %add.ptr170.1 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %add.ptr170.1, align 1
  %arrayidx156.2 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.2419, i32 %j.1417, i32 2, i32 1
  %190 = ptrtoint ptr %arrayidx156.2 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx156.2, align 1
  %arrayidx157.2 = getelementptr i8, ptr %dst.4418, i32 9
  %192 = ptrtoint ptr %arrayidx157.2 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %arrayidx157.2, align 1
  %arrayidx162.2 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.2419, i32 %j.1417, i32 2, i32 2
  %193 = ptrtoint ptr %arrayidx162.2 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx162.2, align 1
  %arrayidx163.2 = getelementptr i8, ptr %dst.4418, i32 10
  %195 = ptrtoint ptr %arrayidx163.2 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %arrayidx163.2, align 1
  %arrayidx168.2 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.2419, i32 %j.1417, i32 2, i32 3
  %196 = ptrtoint ptr %arrayidx168.2 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx168.2, align 1
  %arrayidx169.2 = getelementptr i8, ptr %dst.4418, i32 11
  %198 = ptrtoint ptr %arrayidx169.2 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %arrayidx169.2, align 1
  %add.ptr170.2 = getelementptr i8, ptr %dst.4418, i32 12
  %inc175 = add nuw nsw i32 %j.1417, 1
  %exitcond.not = icmp eq i32 %inc175, 8
  br i1 %exitcond.not, label %for.inc177, label %for.cond144.preheader.for.cond144.preheader_crit_edge

for.cond144.preheader.for.cond144.preheader_crit_edge: ; preds = %for.cond144.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond144.preheader

for.inc177:                                       ; preds = %for.cond144.preheader
  %inc178 = add nuw nsw i32 %i.2419, 1
  %exitcond435.not = icmp eq i32 %inc178, 4
  br i1 %exitcond435.not, label %for.end179, label %for.inc177.for.cond141.preheader_crit_edge

for.inc177.for.cond141.preheader_crit_edge:       ; preds = %for.inc177
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond141.preheader

for.end179:                                       ; preds = %for.inc177
  %199 = ptrtoint ptr %prob_tbl to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %prob_tbl, align 8
  %add.ptr182 = getelementptr i8, ptr %200, i32 440
  br label %for.cond186.preheader

for.cond186.preheader:                            ; preds = %for.inc242.for.cond186.preheader_crit_edge, %for.end179
  %dst.6426 = phi ptr [ %add.ptr182, %for.end179 ], [ %add.ptr235.2, %for.inc242.for.cond186.preheader_crit_edge ]
  %i.3425 = phi i32 [ 0, %for.end179 ], [ %inc243, %for.inc242.for.cond186.preheader_crit_edge ]
  br label %for.cond189.preheader

for.cond189.preheader:                            ; preds = %for.cond189.preheader.for.cond189.preheader_crit_edge, %for.cond186.preheader
  %dst.7424 = phi ptr [ %dst.6426, %for.cond186.preheader ], [ %add.ptr235.2, %for.cond189.preheader.for.cond189.preheader_crit_edge ]
  %j.2423 = phi i32 [ 0, %for.cond186.preheader ], [ %inc240, %for.cond189.preheader.for.cond189.preheader_crit_edge ]
  %arrayidx196 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 0, i32 4
  %201 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx196, align 1
  %203 = ptrtoint ptr %dst.7424 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %dst.7424, align 1
  %arrayidx202 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 0, i32 5
  %204 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx202, align 1
  %arrayidx203 = getelementptr i8, ptr %dst.7424, i32 1
  %206 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %arrayidx203, align 1
  %arrayidx208 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 0, i32 6
  %207 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx208, align 1
  %arrayidx209 = getelementptr i8, ptr %dst.7424, i32 2
  %209 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %arrayidx209, align 1
  %arrayidx214 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 0, i32 7
  %210 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx214, align 1
  %arrayidx215 = getelementptr i8, ptr %dst.7424, i32 3
  %212 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %arrayidx215, align 1
  %arrayidx220 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 0, i32 8
  %213 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx220, align 1
  %arrayidx221 = getelementptr i8, ptr %dst.7424, i32 4
  %215 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %214, ptr %arrayidx221, align 1
  %arrayidx226 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 0, i32 9
  %216 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx226, align 1
  %arrayidx227 = getelementptr i8, ptr %dst.7424, i32 5
  %218 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %arrayidx227, align 1
  %arrayidx232 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 0, i32 10
  %219 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx232, align 1
  %arrayidx233 = getelementptr i8, ptr %dst.7424, i32 6
  %221 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %arrayidx233, align 1
  %arrayidx234 = getelementptr i8, ptr %dst.7424, i32 7
  %222 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 0, ptr %arrayidx234, align 1
  %add.ptr235 = getelementptr i8, ptr %dst.7424, i32 8
  %arrayidx196.1 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 1, i32 4
  %223 = ptrtoint ptr %arrayidx196.1 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx196.1, align 1
  %225 = ptrtoint ptr %add.ptr235 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %add.ptr235, align 1
  %arrayidx202.1 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 1, i32 5
  %226 = ptrtoint ptr %arrayidx202.1 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx202.1, align 1
  %arrayidx203.1 = getelementptr i8, ptr %dst.7424, i32 9
  %228 = ptrtoint ptr %arrayidx203.1 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %arrayidx203.1, align 1
  %arrayidx208.1 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 1, i32 6
  %229 = ptrtoint ptr %arrayidx208.1 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx208.1, align 1
  %arrayidx209.1 = getelementptr i8, ptr %dst.7424, i32 10
  %231 = ptrtoint ptr %arrayidx209.1 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %230, ptr %arrayidx209.1, align 1
  %arrayidx214.1 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 1, i32 7
  %232 = ptrtoint ptr %arrayidx214.1 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx214.1, align 1
  %arrayidx215.1 = getelementptr i8, ptr %dst.7424, i32 11
  %234 = ptrtoint ptr %arrayidx215.1 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %233, ptr %arrayidx215.1, align 1
  %arrayidx220.1 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 1, i32 8
  %235 = ptrtoint ptr %arrayidx220.1 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx220.1, align 1
  %arrayidx221.1 = getelementptr i8, ptr %dst.7424, i32 12
  %237 = ptrtoint ptr %arrayidx221.1 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %236, ptr %arrayidx221.1, align 1
  %arrayidx226.1 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 1, i32 9
  %238 = ptrtoint ptr %arrayidx226.1 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx226.1, align 1
  %arrayidx227.1 = getelementptr i8, ptr %dst.7424, i32 13
  %240 = ptrtoint ptr %arrayidx227.1 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %239, ptr %arrayidx227.1, align 1
  %arrayidx232.1 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 1, i32 10
  %241 = ptrtoint ptr %arrayidx232.1 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx232.1, align 1
  %arrayidx233.1 = getelementptr i8, ptr %dst.7424, i32 14
  %243 = ptrtoint ptr %arrayidx233.1 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %arrayidx233.1, align 1
  %arrayidx234.1 = getelementptr i8, ptr %dst.7424, i32 15
  %244 = ptrtoint ptr %arrayidx234.1 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 0, ptr %arrayidx234.1, align 1
  %add.ptr235.1 = getelementptr i8, ptr %dst.7424, i32 16
  %arrayidx196.2 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 2, i32 4
  %245 = ptrtoint ptr %arrayidx196.2 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx196.2, align 1
  %247 = ptrtoint ptr %add.ptr235.1 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %add.ptr235.1, align 1
  %arrayidx202.2 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 2, i32 5
  %248 = ptrtoint ptr %arrayidx202.2 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx202.2, align 1
  %arrayidx203.2 = getelementptr i8, ptr %dst.7424, i32 17
  %250 = ptrtoint ptr %arrayidx203.2 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %249, ptr %arrayidx203.2, align 1
  %arrayidx208.2 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 2, i32 6
  %251 = ptrtoint ptr %arrayidx208.2 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx208.2, align 1
  %arrayidx209.2 = getelementptr i8, ptr %dst.7424, i32 18
  %253 = ptrtoint ptr %arrayidx209.2 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %252, ptr %arrayidx209.2, align 1
  %arrayidx214.2 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 2, i32 7
  %254 = ptrtoint ptr %arrayidx214.2 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx214.2, align 1
  %arrayidx215.2 = getelementptr i8, ptr %dst.7424, i32 19
  %256 = ptrtoint ptr %arrayidx215.2 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %255, ptr %arrayidx215.2, align 1
  %arrayidx220.2 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 2, i32 8
  %257 = ptrtoint ptr %arrayidx220.2 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx220.2, align 1
  %arrayidx221.2 = getelementptr i8, ptr %dst.7424, i32 20
  %259 = ptrtoint ptr %arrayidx221.2 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %258, ptr %arrayidx221.2, align 1
  %arrayidx226.2 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 2, i32 9
  %260 = ptrtoint ptr %arrayidx226.2 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %arrayidx226.2, align 1
  %arrayidx227.2 = getelementptr i8, ptr %dst.7424, i32 21
  %262 = ptrtoint ptr %arrayidx227.2 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %261, ptr %arrayidx227.2, align 1
  %arrayidx232.2 = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy1, i32 0, i32 %i.3425, i32 %j.2423, i32 2, i32 10
  %263 = ptrtoint ptr %arrayidx232.2 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx232.2, align 1
  %arrayidx233.2 = getelementptr i8, ptr %dst.7424, i32 22
  %265 = ptrtoint ptr %arrayidx233.2 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %264, ptr %arrayidx233.2, align 1
  %arrayidx234.2 = getelementptr i8, ptr %dst.7424, i32 23
  %266 = ptrtoint ptr %arrayidx234.2 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 0, ptr %arrayidx234.2, align 1
  %add.ptr235.2 = getelementptr i8, ptr %dst.7424, i32 24
  %inc240 = add nuw nsw i32 %j.2423, 1
  %exitcond437.not = icmp eq i32 %inc240, 8
  br i1 %exitcond437.not, label %for.inc242, label %for.cond189.preheader.for.cond189.preheader_crit_edge

for.cond189.preheader.for.cond189.preheader_crit_edge: ; preds = %for.cond189.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond189.preheader

for.inc242:                                       ; preds = %for.cond189.preheader
  %inc243 = add nuw nsw i32 %i.3425, 1
  %exitcond438.not = icmp eq i32 %inc243, 4
  br i1 %exitcond438.not, label %for.end244, label %for.inc242.for.cond186.preheader_crit_edge

for.inc242.for.cond186.preheader_crit_edge:       ; preds = %for.inc242
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond186.preheader

for.end244:                                       ; preds = %for.inc242
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_vp8_dec_init(ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst_fmt, align 8
  %sub = add i32 %3, 15
  %div53 = lshr i32 %sub, 4
  %height = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %sub3 = add i32 %5, 15
  %div454 = lshr i32 %sub3, 4
  %mul = mul i32 %div454, %div53
  %sub6 = add i32 %mul, 3
  %div755 = lshr i32 %sub6, 2
  %sub8 = add nsw i32 %div755, -1
  %or = or i32 %sub8, 63
  %add9 = add nsw i32 %or, 1
  %6 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %size = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add9, ptr %size, align 4
  %dev10 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev10, align 4
  %dma = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef %add9, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #3
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %6, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %prob_tbl = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1
  %size13 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %size13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1208, ptr %size13, align 4
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  %dma16 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 1
  %call.i56 = tail call ptr @dma_alloc_attrs(ptr noundef %13, i32 noundef 1208, ptr noundef %dma16, i32 noundef 3264, i32 noundef 0) #3
  %14 = ptrtoint ptr %prob_tbl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i56, ptr %prob_tbl, align 4
  %tobool20.not = icmp eq ptr %call.i56, null
  br i1 %tobool20.not, label %if.then21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev10, align 4
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 8
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 8
  %21 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %16, i32 noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then21 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_vp8_dec_exit(ptr nocapture noundef readonly %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 8
  %dev1 = getelementptr inbounds %struct.hantro_dev, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %size = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %dma = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %4, i32 noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 0) #3
  %11 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1, align 4
  %prob_tbl = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1
  %size5 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size5, align 4
  %15 = ptrtoint ptr %prob_tbl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prob_tbl, align 4
  %dma9 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %dma9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma9, align 4
  tail call void @dma_free_attrs(ptr noundef %12, i32 noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef 0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @hantro_vp8_dec_mc_filter, !1, !"hantro_vp8_dec_mc_filter", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro_vp8.c", i32 38, i32 11}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
