; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/msg.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/msg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_xfer = type { i32, %struct.scmi_msg_hdr, %struct.scmi_msg, %struct.scmi_msg, %struct.completion, ptr, i8, %struct.hlist_node, %struct.refcount_struct, %struct.atomic_t, i32, %struct.spinlock, ptr }
%struct.scmi_msg_hdr = type { i8, i8, i8, i16, i32, i8 }
%struct.scmi_msg = type { ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.scmi_msg_payld = type { i32, [0 x i32] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @msg_command_size(ptr nocapture noundef readonly %xfer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %add = add i32 %1, 4
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @msg_response_size(ptr nocapture noundef readonly %xfer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %add = add i32 %1, 8
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msg_tx_prepare(ptr nocapture noundef writeonly %msg, ptr nocapture noundef readonly %xfer) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr, align 4
  %type.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type.i, align 2
  %seq.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %seq.i, align 4
  %protocol_id.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %protocol_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol_id.i, align 1
  %conv33.i = zext i8 %3 to i32
  %shl34.i = shl nuw nsw i32 %conv33.i, 8
  %and35.i = and i32 %shl34.i, 768
  %conv11.i = zext i8 %1 to i32
  %or.i = or i32 %and35.i, %conv11.i
  %conv56.i = zext i16 %5 to i32
  %shl57.i = shl i32 %conv56.i, 18
  %and58.i = and i32 %shl57.i, 268173312
  %or59.i = or i32 %or.i, %and58.i
  %conv80.i = zext i8 %7 to i32
  %shl81.i = shl nuw nsw i32 %conv80.i, 10
  %or83.i = or i32 %or59.i, %shl81.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %or83.i)
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %msg, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 2
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %msg_payload = getelementptr inbounds %struct.scmi_msg_payld, ptr %msg, i32 0, i32 1
  %len = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %14 = call ptr @memcpy(ptr %msg_payload, ptr %11, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @msg_read_header(ptr nocapture noundef readonly %msg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @msg_fetch_response(ptr nocapture noundef readonly %msg, i32 noundef %len, ptr nocapture noundef %xfer) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_payload = getelementptr inbounds %struct.scmi_msg_payld, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %msg_payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_payload, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %status = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %status, align 4
  %len1 = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len)
  %cmp = icmp ugt i32 %len, 7
  %sub = add i32 %len, -8
  %spec.select = select i1 %cmp, i32 %sub, i32 0
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %spec.select)
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 3
  %7 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %len1, align 4
  %8 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx, align 4
  %arrayidx11 = getelementptr %struct.scmi_msg_payld, ptr %msg, i32 2
  %10 = call ptr @memcpy(ptr %9, ptr %arrayidx11, i32 %6)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @msg_fetch_notification(ptr nocapture noundef readonly %msg, i32 noundef %len, i32 noundef %max_len, ptr nocapture noundef %xfer) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp = icmp ugt i32 %len, 3
  %sub = add i32 %len, -4
  %spec.select = select i1 %cmp, i32 %sub, i32 0
  %0 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %max_len)
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 3
  %len6 = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %len6, align 4
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx, align 4
  %msg_payload = getelementptr inbounds %struct.scmi_msg_payld, ptr %msg, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %3, ptr %msg_payload, i32 %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

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
