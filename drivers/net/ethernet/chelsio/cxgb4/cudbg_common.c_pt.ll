; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/cudbg_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/cudbg_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cudbg_buffer = type { i32, i32, ptr }
%struct.cudbg_init = type { ptr, ptr, i32, i8, ptr, i32, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cudbg_get_buff(ptr nocapture noundef readonly %pdbg_init, ptr nocapture noundef readonly %pdbg_buff, i32 noundef %size, ptr nocapture noundef writeonly %pin_buff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1 = getelementptr inbounds %struct.cudbg_buffer, ptr %pdbg_buff, i32 0, i32 1
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  %add = add i32 %1, %size
  %2 = ptrtoint ptr %pdbg_buff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pdbg_buff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %compress_type = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %4 = ptrtoint ptr %compress_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %compress_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp3.not = icmp eq i8 %5, 1
  br i1 %cmp3.not, label %if.end12, label %if.then5

if.then5:                                         ; preds = %if.end
  %compress_buff_size = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 5
  %6 = ptrtoint ptr %compress_buff_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %compress_buff_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %size)
  %cmp6 = icmp ult i32 %7, %size
  br i1 %cmp6, label %if.then5.cleanup_crit_edge, label %if.end9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  %compress_buff = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 4
  %8 = ptrtoint ptr %compress_buff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %compress_buff, align 4
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %data13 = getelementptr inbounds %struct.cudbg_buffer, ptr %pdbg_buff, i32 0, i32 2
  %10 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data13, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end12, %if.end9
  %add.ptr.sink = phi ptr [ %add.ptr, %if.end12 ], [ %9, %if.end9 ]
  %.sink = phi i32 [ %1, %if.end12 ], [ 0, %if.end9 ]
  %data14 = getelementptr inbounds %struct.cudbg_buffer, ptr %pin_buff, i32 0, i32 2
  %12 = ptrtoint ptr %data14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.sink, ptr %data14, align 4
  %offset15 = getelementptr inbounds %struct.cudbg_buffer, ptr %pin_buff, i32 0, i32 1
  %13 = ptrtoint ptr %offset15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %offset15, align 4
  %14 = ptrtoint ptr %pin_buff to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %size, ptr %pin_buff, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then5.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cudbg_put_buff(ptr nocapture noundef readonly %pdbg_init, ptr nocapture noundef writeonly %pin_buff) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %compress_type = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %0 = ptrtoint ptr %compress_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %compress_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %compress_buff = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 4
  %2 = ptrtoint ptr %compress_buff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compress_buff, align 4
  %compress_buff_size = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 5
  %4 = ptrtoint ptr %compress_buff_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %compress_buff_size, align 4
  %6 = call ptr @memset(ptr %3, i32 0, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %pin_buff, i32 0, i32 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %data, align 4
  %offset = getelementptr inbounds %struct.cudbg_buffer, ptr %pin_buff, i32 0, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %offset, align 4
  %9 = ptrtoint ptr %pin_buff to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pin_buff, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cudbg_update_buff(ptr nocapture noundef readonly %pin_buff, ptr nocapture noundef %pout_buff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pin_buff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pin_buff, align 4
  %offset = getelementptr inbounds %struct.cudbg_buffer, ptr %pout_buff, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, %1
  store i32 %add, ptr %offset, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
