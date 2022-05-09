; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/usbstring.c_pt.bc'
source_filename = "../drivers/usb/gadget/usbstring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usb_gadget_get_string\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_gadget_get_string\09\09\09\09"
module asm "\09.long\09__crc_usb_gadget_get_string\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_get_string:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_get_string\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_get_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_validate_langid\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_validate_langid\09\09\09\09"
module asm "\09.long\09__crc_usb_validate_langid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_validate_langid:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_validate_langid\22\09\09\09\09\09"
module asm "__kstrtabns_usb_validate_langid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }

@__kstrtab_usb_gadget_get_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_get_string = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_get_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_get_string to i32), ptr @__kstrtab_usb_gadget_get_string, ptr @__kstrtabns_usb_gadget_get_string }, section "___ksymtab_gpl+usb_gadget_get_string", align 4
@__kstrtab_usb_validate_langid = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_validate_langid = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_validate_langid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_validate_langid to i32), ptr @__kstrtab_usb_validate_langid, ptr @__kstrtabns_usb_validate_langid }, section "___ksymtab_gpl+usb_validate_langid", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_usb_gadget_get_string, ptr @__ksymtab_usb_validate_langid], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_get_string(ptr nocapture noundef readonly %table, i32 noundef %id, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp eq i32 %id, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 4, ptr %buf, align 1
  %arrayidx1 = getelementptr i8, ptr %buf, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %arrayidx1, align 1
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %table, align 4
  %conv = trunc i16 %3 to i8
  %arrayidx2 = getelementptr i8, ptr %buf, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx2, align 1
  %5 = load i16, ptr %table, align 4
  %6 = lshr i16 %5, 8
  %conv5 = trunc i16 %6 to i8
  %arrayidx6 = getelementptr i8, ptr %buf, i32 3
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %arrayidx6, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %strings = getelementptr inbounds %struct.usb_gadget_strings, ptr %table, i32 0, i32 1
  %8 = ptrtoint ptr %strings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %strings, align 4
  %tobool.not58 = icmp eq ptr %9, null
  br i1 %tobool.not58, label %if.end.cleanup_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.usb_string, ptr %s.059, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool.not, label %for.cond.cleanup_crit_edge, label %for.cond.land.rhs_crit_edge

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %s.059 = phi ptr [ %incdec.ptr, %for.cond.land.rhs_crit_edge ], [ %9, %if.end.land.rhs_crit_edge ]
  %s7 = getelementptr inbounds %struct.usb_string, ptr %s.059, i32 0, i32 1
  %10 = ptrtoint ptr %s7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s7, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %land.rhs.cleanup_crit_edge, label %for.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %12 = ptrtoint ptr %s.059 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s.059, align 4
  %conv10 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10, i32 %id)
  %cmp11 = icmp eq i32 %conv10, %id
  br i1 %cmp11, label %if.end19, label %for.cond

if.end19:                                         ; preds = %for.body
  %call = tail call i32 @strlen(ptr noundef nonnull %11) #8
  %14 = tail call i32 @llvm.umin.i32(i32 %call, i32 126)
  %arrayidx24 = getelementptr i8, ptr %buf, i32 2
  %call25 = tail call i32 @utf8s_to_utf16s(ptr noundef nonnull %11, i32 noundef %14, i32 noundef 1, ptr noundef %arrayidx24, i32 noundef 126) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end19.cleanup_crit_edge, label %if.end29

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call25.tr = trunc i32 %call25 to i8
  %15 = shl i8 %call25.tr, 1
  %conv30 = add i8 %15, 2
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv30, ptr %buf, align 1
  %arrayidx32 = getelementptr i8, ptr %buf, i32 1
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %arrayidx32, align 1
  %conv34 = zext i8 %conv30 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end19.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 4, %if.then ], [ %conv34, %if.end29 ], [ -22, %if.end19.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8s_to_utf16s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @usb_validate_langid(i16 noundef zeroext %langid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i16 %langid, 1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and)
  %cond = icmp eq i16 %and, 0
  br i1 %cond, label %entry.cleanup_crit_edge, label %sw.caserange7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.caserange7:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv4 = zext i16 %and to i32
  %0 = add nsw i32 %conv4, -255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -157, i32 %0)
  %inbounds8 = icmp ult i32 %0, -157
  %1 = or i32 %conv4, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -768, i32 %1)
  %inbounds = icmp ult i32 %1, -768
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %langid)
  %tobool.not = icmp ugt i16 %langid, 1023
  %not.or.cond = and i1 %inbounds8, %inbounds
  %spec.select = and i1 %not.or.cond, %tobool.not
  br label %cleanup

cleanup:                                          ; preds = %sw.caserange7, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %spec.select, %sw.caserange7 ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_usb_gadget_get_string, !1, !"__ksymtab_usb_gadget_get_string", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/usbstring.c", i32 67, i32 1}
!2 = !{ptr @__ksymtab_usb_validate_langid, !3, !"__ksymtab_usb_validate_langid", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/usbstring.c", i32 91, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
