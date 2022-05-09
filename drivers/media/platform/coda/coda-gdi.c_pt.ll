; ModuleID = '/llk/IR_all_yes/drivers/media/platform/coda/coda-gdi.c_pt.bc'
source_filename = "../drivers/media/platform/coda/coda-gdi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.coda_ctx = type { ptr, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.completion, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.coda_q_data], i32, ptr, i32, i32, i32, i32, %struct.coda_params, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_fh, i32, i32, i32, [3 x [64 x i8]], [3 x i32], %struct.kfifo, %struct.mutex, %struct.coda_aux_buf, i8, %struct.coda_aux_buf, %struct.coda_aux_buf, %struct.coda_aux_buf, [19 x %struct.coda_internal_frame], %struct.list_head, %struct.spinlock, i32, i32, %struct.coda_aux_buf, i32, i32, i32, %struct.coda_iram_info, i32, i32, i32, i32, i32, i32, ptr, i8, i8, ptr, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.coda_q_data = type { i32, i32, i32, i32, i32, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.coda_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, [3 x ptr], [3 x i32], [3 x i32], [3 x i32], ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kfifo = type { %union.anon.95, [0 x i8] }
%union.anon.95 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.coda_internal_frame = type { %struct.coda_aux_buf, %struct.coda_buffer_meta, i32, i32 }
%struct.coda_buffer_meta = type { %struct.list_head, i32, %struct.v4l2_timecode, i64, i32, i32, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.coda_aux_buf = type { ptr, i32, i32, %struct.debugfs_blob_wrapper, ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.coda_iram_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@rbc2axi_tiled_map = internal constant { [32 x i16], [32 x i8] } { [32 x i16] [i16 3120, i16 3120, i16 3120, i16 0, i16 65, i16 130, i16 195, i16 264, i16 521, i16 586, i16 651, i16 716, i16 781, i16 846, i16 911, i16 992, i16 2081, i16 2146, i16 2211, i16 2276, i16 2341, i16 2406, i16 2471, i16 2536, i16 2601, i16 2666, i16 2731, i16 2796, i16 2861, i16 2926, i16 2991, i16 3056], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"rbc2axi_tiled_map\00", align 1
@___asan_gen_.2 = private constant [42 x i8] c"../drivers/media/platform/coda/coda-gdi.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 75, i32 18 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @rbc2axi_tiled_map], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbc2axi_tiled_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coda_set_gdi_regs(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %tiled_map_type = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 54
  %2 = ptrtoint ptr %tiled_map_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tiled_map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cond = icmp eq i32 %3, 1
  %conv = select i1 %cond, i32 4112, i32 16448
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv, i32 noundef 6144) #2
  %conv.1 = select i1 %cond, i32 4369, i32 16448
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv.1, i32 noundef 6148) #2
  %conv.2 = select i1 %cond, i32 4626, i32 16448
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv.2, i32 noundef 6152) #2
  %conv.3 = select i1 %cond, i32 4867, i32 16448
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv.3, i32 noundef 6156) #2
  %conv.4 = select i1 %cond, i32 832, i32 16448
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv.4, i32 noundef 6160) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6164) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6168) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6172) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6176) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6180) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6184) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6188) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6192) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6196) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6200) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6204) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6208) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6212) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6216) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6220) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6224) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6228) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6232) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6236) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6240) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6244) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6248) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6252) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6256) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6260) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6264) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6268) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6272) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6276) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6280) #2
  tail call void @coda_write(ptr noundef %1, i32 noundef 16448, i32 noundef 6284) #2
  %. = select i1 %cond, i32 258160, i32 0
  tail call void @coda_write(ptr noundef %1, i32 noundef %., i32 noundef 6288) #2
  br i1 %cond, label %entry.for.body24_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

entry.for.body24_crit_edge:                       ; preds = %entry
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %entry.for.body24_crit_edge
  %i.354 = phi i32 [ %inc30, %for.body24.for.body24_crit_edge ], [ 0, %entry.for.body24_crit_edge ]
  %arrayidx25 = getelementptr [32 x i16], ptr @rbc2axi_tiled_map, i32 0, i32 %i.354
  %4 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx25, align 2
  %conv26 = zext i16 %5 to i32
  %mul27 = shl i32 %i.354, 2
  %add28 = add nuw nsw i32 %mul27, 6304
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv26, i32 noundef %add28) #2
  %inc30 = add nuw nsw i32 %i.354, 1
  %exitcond.not = icmp eq i32 %inc30, 32
  br i1 %exitcond.not, label %for.body24.if.end_crit_edge, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body24

for.body24.if.end_crit_edge:                      ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end:                                           ; preds = %for.body24.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !{null, !1, !"xy2ca_zero_map", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/coda/coda-gdi.c", i32 22, i32 18}
!2 = distinct !{null, !3, !"xy2ca_tiled_map", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/coda/coda-gdi.c", i32 41, i32 18}
!4 = !{ptr @rbc2axi_tiled_map, !5, !"rbc2axi_tiled_map", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/coda/coda-gdi.c", i32 75, i32 18}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
