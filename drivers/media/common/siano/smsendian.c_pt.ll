; ModuleID = '/llk/IR_all_yes/drivers/media/common/siano/smsendian.c_pt.bc'
source_filename = "../drivers/media/common/siano/smsendian.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+smsendian_handle_tx_message\22, \22a\22\09"
module asm "\09.weak\09__crc_smsendian_handle_tx_message\09\09\09\09"
module asm "\09.long\09__crc_smsendian_handle_tx_message\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smsendian_handle_tx_message:\09\09\09\09\09"
module asm "\09.asciz \09\22smsendian_handle_tx_message\22\09\09\09\09\09"
module asm "__kstrtabns_smsendian_handle_tx_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+smsendian_handle_rx_message\22, \22a\22\09"
module asm "\09.weak\09__crc_smsendian_handle_rx_message\09\09\09\09"
module asm "\09.long\09__crc_smsendian_handle_rx_message\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smsendian_handle_rx_message:\09\09\09\09\09"
module asm "\09.asciz \09\22smsendian_handle_rx_message\22\09\09\09\09\09"
module asm "__kstrtabns_smsendian_handle_rx_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+smsendian_handle_message_header\22, \22a\22\09"
module asm "\09.weak\09__crc_smsendian_handle_message_header\09\09\09\09"
module asm "\09.long\09__crc_smsendian_handle_message_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smsendian_handle_message_header:\09\09\09\09\09"
module asm "\09.asciz \09\22smsendian_handle_message_header\22\09\09\09\09\09"
module asm "__kstrtabns_smsendian_handle_message_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sms_msg_data = type { %struct.sms_msg_hdr, [1 x i32] }
%struct.sms_msg_hdr = type { i16, i8, i8, i16, i16 }
%struct.sms_version_res = type { %struct.sms_msg_hdr, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [34 x i8] }

@__kstrtab_smsendian_handle_tx_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_smsendian_handle_tx_message = external dso_local constant [0 x i8], align 1
@__ksymtab_smsendian_handle_tx_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smsendian_handle_tx_message to i32), ptr @__kstrtab_smsendian_handle_tx_message, ptr @__kstrtabns_smsendian_handle_tx_message }, section "___ksymtab_gpl+smsendian_handle_tx_message", align 4
@__kstrtab_smsendian_handle_rx_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_smsendian_handle_rx_message = external dso_local constant [0 x i8], align 1
@__ksymtab_smsendian_handle_rx_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smsendian_handle_rx_message to i32), ptr @__kstrtab_smsendian_handle_rx_message, ptr @__kstrtabns_smsendian_handle_rx_message }, section "___ksymtab_gpl+smsendian_handle_rx_message", align 4
@__kstrtab_smsendian_handle_message_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_smsendian_handle_message_header = external dso_local constant [0 x i8], align 1
@__ksymtab_smsendian_handle_message_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smsendian_handle_message_header to i32), ptr @__kstrtab_smsendian_handle_message_header, ptr @__kstrtabns_smsendian_handle_message_header }, section "___ksymtab_gpl+smsendian_handle_message_header", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 607, i64 669, i64 693, i64 699]
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_smsendian_handle_message_header, ptr @__ksymtab_smsendian_handle_rx_message, ptr @__ksymtab_smsendian_handle_tx_message], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smsendian_handle_tx_message(ptr nocapture noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 660, i16 %1)
  %cond = icmp eq i16 %1, 660
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %msg_data = getelementptr inbounds %struct.sms_msg_data, ptr %buffer, i32 0, i32 1
  %2 = ptrtoint ptr %msg_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_data, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %msg_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %msg_data, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %msg_length = getelementptr inbounds %struct.sms_msg_hdr, ptr %buffer, i32 0, i32 3
  %6 = ptrtoint ptr %msg_length to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %msg_length, align 4
  %conv4 = zext i16 %7 to i32
  %sub = add nsw i32 %conv4, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp19.not = icmp ult i32 %sub, 4
  br i1 %cmp19.not, label %sw.default.sw.epilog_crit_edge, label %for.body.preheader

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body.preheader:                               ; preds = %sw.default
  %div18 = lshr i32 %sub, 2
  %umax = call i32 @llvm.umax.i32(i32 %div18, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx7 = getelementptr %struct.sms_msg_data, ptr %buffer, i32 0, i32 1, i32 %i.020
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx7, align 4
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %sw.bb
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smsendian_handle_rx_message(ptr nocapture noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %buffer, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %sw.default [
    i16 669, label %sw.bb
    i16 693, label %entry.sw.epilog_crit_edge
    i16 607, label %entry.sw.epilog_crit_edge19
    i16 699, label %entry.sw.epilog_crit_edge20
  ]

entry.sw.epilog_crit_edge20:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge19:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %chip_model = getelementptr inbounds %struct.sms_version_res, ptr %buffer, i32 0, i32 1
  %3 = ptrtoint ptr %chip_model to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %chip_model, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = ptrtoint ptr %chip_model to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %chip_model, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %msg_length = getelementptr inbounds %struct.sms_msg_hdr, ptr %buffer, i32 0, i32 3
  %7 = ptrtoint ptr %msg_length to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %msg_length, align 4
  %conv4 = zext i16 %8 to i32
  %sub = add nsw i32 %conv4, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp17.not = icmp ult i32 %sub, 4
  br i1 %cmp17.not, label %sw.default.sw.epilog_crit_edge, label %for.body.preheader

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body.preheader:                               ; preds = %sw.default
  %div16 = lshr i32 %sub, 2
  %umax = call i32 @llvm.umax.i32(i32 %div16, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.sms_msg_data, ptr %buffer, i32 0, i32 1, i32 %i.018
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge19, %entry.sw.epilog_crit_edge20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @smsendian_handle_message_header(ptr nocapture noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %msg, align 2
  %msg_length = getelementptr inbounds %struct.sms_msg_hdr, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %msg_length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %msg_length, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %msg_length to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msg_length, align 2
  %msg_flags = getelementptr inbounds %struct.sms_msg_hdr, ptr %msg, i32 0, i32 4
  %8 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %msg_flags, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msg_flags, align 2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_smsendian_handle_tx_message, !1, !"__ksymtab_smsendian_handle_tx_message", i1 false, i1 false}
!1 = !{!"../drivers/media/common/siano/smsendian.c", i32 42, i32 1}
!2 = !{ptr @__ksymtab_smsendian_handle_rx_message, !3, !"__ksymtab_smsendian_handle_rx_message", i1 false, i1 false}
!3 = !{!"../drivers/media/common/siano/smsendian.c", i32 80, i32 1}
!4 = !{ptr @__ksymtab_smsendian_handle_message_header, !5, !"__ksymtab_smsendian_handle_message_header", i1 false, i1 false}
!5 = !{!"../drivers/media/common/siano/smsendian.c", i32 92, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
