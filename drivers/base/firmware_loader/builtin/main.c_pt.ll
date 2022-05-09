; ModuleID = '/llk/IR_all_yes/drivers/base/firmware_loader/builtin/main.c_pt.bc'
source_filename = "../drivers/base/firmware_loader/builtin/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+firmware_request_builtin\22, \22a\22\09"
module asm "\09.weak\09__crc_firmware_request_builtin\09\09\09\09"
module asm "\09.long\09__crc_firmware_request_builtin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_firmware_request_builtin:\09\09\09\09\09"
module asm "\09.asciz \09\22firmware_request_builtin\22\09\09\09\09\09"
module asm "__kstrtabns_firmware_request_builtin:\09\09\09\09\09"
module asm "\09.asciz \09\22TEST_FIRMWARE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.builtin_fw = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }

@__start_builtin_fw = external dso_local global [0 x %struct.builtin_fw], align 4
@__end_builtin_fw = external dso_local global [0 x %struct.builtin_fw], align 4
@__kstrtab_firmware_request_builtin = external dso_local constant [0 x i8], align 1
@__kstrtabns_firmware_request_builtin = external dso_local constant [0 x i8], align 1
@__ksymtab_firmware_request_builtin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @firmware_request_builtin to i32), ptr @__kstrtab_firmware_request_builtin, ptr @__kstrtabns_firmware_request_builtin }, section "___ksymtab_gpl+firmware_request_builtin", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_firmware_request_builtin], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @firmware_request_builtin(ptr noundef writeonly %fw, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fw, null
  %brmerge = or i1 %tobool.not, icmp eq (ptr @__start_builtin_fw, ptr @__end_builtin_fw)
  br i1 %brmerge, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %b_fw.014 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @__start_builtin_fw, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %b_fw.014 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_fw.014, align 4
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %size = getelementptr inbounds %struct.builtin_fw, ptr %b_fw.014, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fw, align 4
  %data = getelementptr inbounds %struct.builtin_fw, ptr %b_fw.014, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %data5 = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %7 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %data5, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.builtin_fw, ptr %b_fw.014, i32 1
  %cmp.not = icmp eq ptr %incdec.ptr, @__end_builtin_fw
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then3 ], [ false, %entry.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @firmware_request_builtin_buf(ptr noundef %fw, ptr nocapture noundef readonly %name, ptr noundef writeonly %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %fw, null
  %brmerge.i = or i1 %tobool.not.i, icmp eq (ptr @__start_builtin_fw, ptr @__end_builtin_fw)
  br i1 %brmerge.i, label %entry.return_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %b_fw.014.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ @__start_builtin_fw, %entry.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %b_fw.014.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_fw.014.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.builtin_fw, ptr %b_fw.014.i, i32 1
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, @__end_builtin_fw
  br i1 %cmp.not.i, label %for.inc.i.return_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.return_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %for.body.i
  %size.i = getelementptr inbounds %struct.builtin_fw, ptr %b_fw.014.i, i32 0, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fw, align 4
  %data.i = getelementptr inbounds %struct.builtin_fw, ptr %b_fw.014.i, i32 0, i32 1
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %data5.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %7 = ptrtoint ptr %data5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %data5.i, align 4
  %tobool.not.i3 = icmp eq ptr %buf, null
  br i1 %tobool.not.i3, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %size)
  %cmp.i = icmp ugt i32 %9, %size
  br i1 %cmp.i, label %if.end.i.return_crit_edge, label %if.end3.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data5.i, align 4
  %12 = call ptr @memcpy(ptr %buf, ptr %11, i32 %9)
  br label %return

return:                                           ; preds = %if.end3.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %for.inc.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end3.i ], [ true, %if.end.return_crit_edge ], [ false, %if.end.i.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %for.inc.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @firmware_is_builtin(ptr nocapture noundef readonly %fw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 icmp eq (ptr @__start_builtin_fw, ptr @__end_builtin_fw), label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.builtin_fw], ptr @__start_builtin_fw, i32 0, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([0 x %struct.builtin_fw], ptr @__start_builtin_fw, i32 0, i32 0, i32 1), align 4
  %cmp28 = icmp eq ptr %1, %2
  br i1 %cmp28, label %for.body.lr.ph.cleanup_crit_edge, label %for.body.lr.ph.for.cond_crit_edge

for.body.lr.ph.for.cond_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.cond

for.body.lr.ph.cleanup_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.lr.ph.for.cond_crit_edge
  %b_fw.059 = phi ptr [ %incdec.ptr, %for.body.for.cond_crit_edge ], [ @__start_builtin_fw, %for.body.lr.ph.for.cond_crit_edge ]
  %incdec.ptr = getelementptr %struct.builtin_fw, ptr %b_fw.059, i32 1
  %cmp.not = icmp eq ptr %incdec.ptr, @__end_builtin_fw
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %data1 = getelementptr %struct.builtin_fw, ptr %b_fw.059, i32 1, i32 1
  %3 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data1, align 4
  %cmp2 = icmp eq ptr %1, %4
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.lr.ph.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.not.lcssa = phi i1 [ icmp eq (ptr @__start_builtin_fw, ptr @__end_builtin_fw), %entry.cleanup_crit_edge ], [ icmp eq (ptr @__start_builtin_fw, ptr @__end_builtin_fw), %for.body.lr.ph.cleanup_crit_edge ], [ %cmp.not, %for.body.cleanup_crit_edge ], [ %cmp.not, %for.cond.cleanup_crit_edge ]
  %5 = xor i1 %cmp.not.lcssa, true
  ret i1 %5
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_firmware_request_builtin, !1, !"__ksymtab_firmware_request_builtin", i1 false, i1 false}
!1 = !{!"../drivers/base/firmware_loader/builtin/main.c", i32 64, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
