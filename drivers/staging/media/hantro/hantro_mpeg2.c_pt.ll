; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_mpeg2.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_mpeg2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ctrl_mpeg2_quantisation = type { [64 x i8], [64 x i8], [64 x i8], [64 x i8] }
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

@zigzag = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [7 x i8] c"zigzag\00", align 1
@___asan_gen_.2 = private constant [47 x i8] c"../drivers/staging/media/hantro/hantro_mpeg2.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 10, i32 17 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @zigzag], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zigzag to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_mpeg2_dec_copy_qtable(ptr noundef writeonly %qtable, ptr noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %qtable, null
  %tobool1.not = icmp eq ptr %ctrl, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x i8], ptr @zigzag, i32 0, i32 %i.031
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %arrayidx2 = getelementptr [64 x i8], ptr %ctrl, i32 0, i32 %i.031
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %qtable, i32 %conv
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr %struct.v4l2_ctrl_mpeg2_quantisation, ptr %ctrl, i32 0, i32 1, i32 %i.031
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  %add5 = add nuw nsw i32 %conv, 64
  %arrayidx6 = getelementptr i8, ptr %qtable, i32 %add5
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr %struct.v4l2_ctrl_mpeg2_quantisation, ptr %ctrl, i32 0, i32 2, i32 %i.031
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  %add8 = add nuw nsw i32 %conv, 128
  %arrayidx9 = getelementptr i8, ptr %qtable, i32 %add8
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr %struct.v4l2_ctrl_mpeg2_quantisation, ptr %ctrl, i32 0, i32 3, i32 %i.031
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx10, align 1
  %add11 = add nuw nsw i32 %conv, 192
  %arrayidx12 = getelementptr i8, ptr %qtable, i32 %add11
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx12, align 1
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_mpeg2_dec_init(ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %2 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %size = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 256, ptr %size, align 8
  %dev1 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %dma = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 256, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #3
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %2, align 8
  %tobool.not = icmp eq ptr %call.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_mpeg2_dec_exit(ptr nocapture noundef readonly %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dev1 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %size = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %dma = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 0) #3
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

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @zigzag, !1, !"zigzag", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro_mpeg2.c", i32 10, i32 17}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
