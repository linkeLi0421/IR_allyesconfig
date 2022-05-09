; ModuleID = '/llk/IR_all_yes/drivers/scsi/qedf/drv_scsi_fw_funcs.c_pt.bc'
source_filename = "../drivers/scsi/qedf/drv_scsi_fw_funcs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scsi_sgl_task_params = type { ptr, %struct.regpair, i32, i16, i8 }
%struct.regpair = type { i32, i32 }
%struct.scsi_sgl_params = type { %struct.regpair, i32, i32, i16, i8, i8 }
%struct.scsi_sge = type { %struct.regpair, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @scsi_is_slow_sgl(i16 noundef zeroext %num_sges, i1 noundef zeroext %small_mid_sge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %num_sges)
  %cmp = icmp ugt i16 %num_sges, 8
  %spec.select = and i1 %cmp, %small_mid_sge
  ret i1 %spec.select
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_scsi_sgl_context(ptr nocapture noundef writeonly %ctx_sgl_params, ptr nocapture noundef writeonly %ctx_data_desc, ptr nocapture noundef readonly %sgl_task_params) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %num_sges = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 3
  %0 = ptrtoint ptr %num_sges to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_sges, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %cmp = icmp ugt i16 %1, 4
  %2 = and i16 %1, 255
  %narrow = select i1 %cmp, i16 4, i16 %2
  %sgl_phys_addr = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 1
  %3 = ptrtoint ptr %sgl_phys_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sgl_phys_addr, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %ctx_sgl_params to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ctx_sgl_params, align 4
  %hi = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hi, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %hi8 = getelementptr inbounds %struct.regpair, ptr %ctx_sgl_params, i32 0, i32 1
  %10 = ptrtoint ptr %hi8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %hi8, align 4
  %total_buffer_size = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 2
  %11 = ptrtoint ptr %total_buffer_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_buffer_size, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %sgl_total_length = getelementptr inbounds %struct.scsi_sgl_params, ptr %ctx_sgl_params, i32 0, i32 1
  %14 = ptrtoint ptr %sgl_total_length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sgl_total_length, align 4
  %15 = ptrtoint ptr %num_sges to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_sges, align 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %sgl_num_sges = getelementptr inbounds %struct.scsi_sgl_params, ptr %ctx_sgl_params, i32 0, i32 3
  %18 = ptrtoint ptr %sgl_num_sges to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %sgl_num_sges, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %narrow)
  %cmp1262.not = icmp eq i16 %narrow, 0
  br i1 %cmp1262.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i16 %narrow to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %19 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sgl_task_params, align 4
  %arrayidx = getelementptr %struct.scsi_sge, ptr %20, i32 %indvars.iv
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %arrayidx16 = getelementptr [4 x %struct.scsi_sge], ptr %ctx_data_desc, i32 0, i32 %indvars.iv
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx16, align 4
  %25 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sgl_task_params, align 4
  %hi23 = getelementptr %struct.scsi_sge, ptr %26, i32 %indvars.iv, i32 0, i32 1
  %27 = ptrtoint ptr %hi23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hi23, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %hi28 = getelementptr inbounds %struct.regpair, ptr %arrayidx16, i32 0, i32 1
  %30 = ptrtoint ptr %hi28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %hi28, align 4
  %31 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sgl_task_params, align 4
  %sge_len = getelementptr %struct.scsi_sge, ptr %32, i32 %indvars.iv, i32 1
  %33 = ptrtoint ptr %sge_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sge_len, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %sge_len35 = getelementptr [4 x %struct.scsi_sge], ptr %ctx_data_desc, i32 0, i32 %indvars.iv, i32 1
  %36 = ptrtoint ptr %sge_len35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sge_len35, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
