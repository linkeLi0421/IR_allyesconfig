; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/xtlv.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/xtlv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/xtlv.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unexpected xtlv option\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [59 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/xtlv.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 72, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @brcmf_xtlv_data_size(i32 noundef %dlen, i16 noundef zeroext %opts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %opts to i32
  %and.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 4, i32 3
  %and2.i = shl i32 %conv.i, 29
  %sext.i = ashr i32 %and2.i, 31
  %len.1.i = add nsw i32 %spec.select.i, %sext.i
  %0 = and i16 %opts, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  %add2 = add i32 %len.1.i, %dlen
  %add1 = add i32 %add2, 3
  %div = sdiv i32 %add1, 4
  %mul = shl nsw i32 %div, 2
  %retval.0 = select i1 %tobool.not, i32 %add2, i32 %mul
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_xtlv_pack_header(ptr nocapture noundef writeonly %xtlv, i16 noundef zeroext %id, i16 noundef zeroext %len, ptr noundef readonly %data, i16 noundef zeroext %opts) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %opts to i32
  %and = and i32 %conv, 6
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.else15 [
    i32 0, label %if.then
    i32 6, label %if.then8
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %xtlv, i32 2
  %1 = tail call i16 @llvm.bswap.i16(i16 %id) #4
  %2 = ptrtoint ptr %xtlv to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %1, ptr %xtlv, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %len) #4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %add.ptr, align 1
  br label %if.end55

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr11 = getelementptr i8, ptr %xtlv, i32 1
  %conv12 = trunc i16 %id to i8
  %5 = ptrtoint ptr %xtlv to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv12, ptr %xtlv, align 1
  %conv13 = trunc i16 %len to i8
  %6 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv13, ptr %add.ptr11, align 1
  br label %if.end55

if.else15:                                        ; preds = %entry
  %and17 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else25, label %if.then19

if.then19:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr22 = getelementptr i8, ptr %xtlv, i32 1
  %conv23 = trunc i16 %id to i8
  %7 = ptrtoint ptr %xtlv to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv23, ptr %xtlv, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %len) #4
  %9 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %add.ptr22, align 1
  br label %if.end55

if.else25:                                        ; preds = %if.else15
  %and27 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.end, label %if.then29

if.then29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr32 = getelementptr i8, ptr %xtlv, i32 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %id) #4
  %11 = ptrtoint ptr %xtlv to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %xtlv, align 1
  %conv33 = trunc i16 %len to i8
  %12 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv33, ptr %add.ptr32, align 1
  br label %if.end55

do.end:                                           ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end55:                                         ; preds = %if.then29, %if.then19, %if.then8, %if.then
  %.sink = phi i32 [ 2, %if.then8 ], [ 3, %if.then29 ], [ 3, %if.then19 ], [ 4, %if.then ]
  %add.ptr14 = getelementptr i8, ptr %xtlv, i32 %.sink
  %and57 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end55.if.end96_crit_edge, label %if.then59

if.end55.if.end96_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %len)
  %cmp62 = icmp ugt i16 %len, 255
  br i1 %cmp62, label %do.end79, label %if.then59.if.end85_crit_edge, !prof !12

if.then59.if.end85_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

do.end79:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #4
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %if.then59.if.end85_crit_edge
  %13 = and i16 %len, 255
  br label %if.end96

if.end96:                                         ; preds = %if.end85, %if.end55.if.end96_crit_edge
  %len.addr.0 = phi i16 [ %13, %if.end85 ], [ %len, %if.end55.if.end96_crit_edge ]
  %tobool97.not = icmp eq ptr %data, null
  br i1 %tobool97.not, label %if.end96.cleanup_crit_edge, label %if.then98

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then98:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  %conv99 = zext i16 %len.addr.0 to i32
  %14 = call ptr @memcpy(ptr %add.ptr14, ptr %data, i32 %conv99)
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %if.end96.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/xtlv.c", i32 72, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 1, i32 2000}
