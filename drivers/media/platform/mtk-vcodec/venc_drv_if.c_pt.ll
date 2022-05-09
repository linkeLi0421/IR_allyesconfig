; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/venc_drv_if.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/venc_drv_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.venc_common_if = type { ptr, ptr, ptr, ptr }
%struct.mtk_vcodec_ctx = type { i32, ptr, %struct.list_head, %struct.v4l2_fh, ptr, [2 x %struct.mtk_q_data], i32, i32, i32, %struct.mtk_enc_params, ptr, ptr, ptr, %struct.vdec_pic_info, i32, i32, i32, %struct.wait_queue_head, i32, %struct.v4l2_ctrl_handler, %struct.work_struct, %struct.work_struct, %struct.vdec_pic_info, %struct.v4l2_m2m_buffer, i8, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.mtk_q_data = type { i32, i32, i32, i32, i32, [3 x i32], [3 x i32], ptr }
%struct.mtk_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vdec_pic_info = type { i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mtk_vcodec_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, [14 x ptr], ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, %struct.mutex, %struct.mutex, %struct.mtk_vcodec_pm, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mtk_vcodec_pm = type { %struct.mtk_vcodec_clk, ptr, %struct.mtk_vcodec_clk, ptr, ptr, ptr }
%struct.mtk_vcodec_clk = type { ptr, i32 }

@venc_vp8_if = external dso_local constant %struct.venc_common_if, align 4
@venc_h264_if = external dso_local constant %struct.venc_common_if, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 808996950, i64 875967048]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venc_if_init(ptr noundef %ctx, i32 noundef %fourcc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fourcc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fourcc, label %entry.cleanup_crit_edge [
    i32 808996950, label %entry.sw.epilog_crit_edge
    i32 875967048, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %venc_h264_if.sink = phi ptr [ @venc_h264_if, %sw.bb1 ], [ @venc_vp8_if, %entry.sw.epilog_crit_edge ]
  %enc_if2 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 11
  %1 = ptrtoint ptr %enc_if2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %venc_h264_if.sink, ptr %enc_if2, align 8
  %call = tail call i32 @mtk_venc_lock(ptr noundef %ctx) #2
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %pm = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %3, i32 0, i32 25
  tail call void @mtk_vcodec_enc_clock_on(ptr noundef %pm) #2
  %enc_if3 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 11
  %4 = ptrtoint ptr %enc_if3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_if3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call4 = tail call i32 %7(ptr noundef %ctx) #2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %pm6 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %9, i32 0, i32 25
  tail call void @mtk_vcodec_enc_clock_off(ptr noundef %pm6) #2
  %call7 = tail call i32 @mtk_venc_unlock(ptr noundef %ctx) #2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_venc_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_enc_clock_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_vcodec_enc_clock_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_venc_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venc_if_set_param(ptr noundef %ctx, i32 noundef %type, ptr noundef %in) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtk_venc_lock(ptr noundef %ctx) #2
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %pm = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 25
  tail call void @mtk_vcodec_enc_clock_on(ptr noundef %pm) #2
  %enc_if = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 11
  %2 = ptrtoint ptr %enc_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc_if, align 8
  %set_param = getelementptr inbounds %struct.venc_common_if, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %set_param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_param, align 4
  %drv_handle = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 12
  %6 = ptrtoint ptr %drv_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_handle, align 4
  %call1 = tail call i32 %5(ptr noundef %7, i32 noundef %type, ptr noundef %in) #2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %pm3 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %9, i32 0, i32 25
  tail call void @mtk_vcodec_enc_clock_off(ptr noundef %pm3) #2
  %call4 = tail call i32 @mtk_venc_unlock(ptr noundef %ctx) #2
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venc_if_encode(ptr noundef %ctx, i32 noundef %opt, ptr noundef %frm_buf, ptr noundef %bs_buf, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtk_venc_lock(ptr noundef %ctx) #2
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %irqlock = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %curr_ctx = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ctx, ptr %curr_ctx, align 4
  %5 = load ptr, ptr %dev, align 4
  %irqlock8 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %5, i32 0, i32 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock8, i32 noundef %call3) #2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %pm = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %7, i32 0, i32 25
  tail call void @mtk_vcodec_enc_clock_on(ptr noundef %pm) #2
  %enc_if = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 11
  %8 = ptrtoint ptr %enc_if to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enc_if, align 8
  %encode = getelementptr inbounds %struct.venc_common_if, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %encode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %encode, align 4
  %drv_handle = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 12
  %12 = ptrtoint ptr %drv_handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv_handle, align 4
  %call10 = tail call i32 %11(ptr noundef %13, i32 noundef %opt, ptr noundef %frm_buf, ptr noundef %bs_buf, ptr noundef %result) #2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %pm12 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %15, i32 0, i32 25
  tail call void @mtk_vcodec_enc_clock_off(ptr noundef %pm12) #2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %irqlock21 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %17, i32 0, i32 8
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock21) #2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %curr_ctx29 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %curr_ctx29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %curr_ctx29, align 4
  %21 = load ptr, ptr %dev, align 4
  %irqlock31 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %21, i32 0, i32 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock31, i32 noundef %call23) #2
  %call32 = tail call i32 @mtk_venc_unlock(ptr noundef %ctx) #2
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venc_if_deinit(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_handle = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 12
  %0 = ptrtoint ptr %drv_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_handle, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 @mtk_venc_lock(ptr noundef %ctx) #2
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %pm = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %3, i32 0, i32 25
  tail call void @mtk_vcodec_enc_clock_on(ptr noundef %pm) #2
  %enc_if = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 11
  %4 = ptrtoint ptr %enc_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_if, align 8
  %deinit = getelementptr inbounds %struct.venc_common_if, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %deinit, align 4
  %8 = ptrtoint ptr %drv_handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drv_handle, align 4
  %call2 = tail call i32 %7(ptr noundef %9) #2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %pm4 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %11, i32 0, i32 25
  tail call void @mtk_vcodec_enc_clock_off(ptr noundef %pm4) #2
  %call5 = tail call i32 @mtk_venc_unlock(ptr noundef %ctx) #2
  %12 = ptrtoint ptr %drv_handle to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %drv_handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
