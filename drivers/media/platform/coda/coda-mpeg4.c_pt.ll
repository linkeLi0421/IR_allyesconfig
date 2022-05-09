; ModuleID = '/llk/IR_all_yes/drivers/media/platform/coda/coda-mpeg4.c_pt.bc'
source_filename = "../drivers/media/platform/coda/coda-mpeg4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.anon.102 = type { [4 x i8] }

@coda_mpeg4_parse_headers.vos_start = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\00\01\B0", [28 x i8] zeroinitializer }, align 32
@coda_mpeg4_parse_headers.u = internal constant { %union.anon.102, [28 x i8] } { %union.anon.102 { [4 x i8] c"\00\00\01\B5" }, [28 x i8] zeroinitializer }, align 32
@switch.table.coda_mpeg4_level = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 2, i32 3, i32 4, i32 6, i32 7], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 11, i64 15]
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"vos_start\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 63, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@___asan_gen_.5 = private constant [44 x i8] c"../drivers/media/platform/coda/coda-mpeg4.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 67, i32 4 }
@___asan_gen_.7 = private unnamed_addr constant [30 x i8] c"switch.table.coda_mpeg4_level\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @coda_mpeg4_parse_headers.vos_start, ptr @coda_mpeg4_parse_headers.u, ptr @switch.table.coda_mpeg4_level], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_mpeg4_parse_headers.vos_start to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_mpeg4_parse_headers.u to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.coda_mpeg4_level to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @coda_mpeg4_profile(i32 noundef %profile_idc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %profile_idc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %profile_idc, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 15, label %sw.bb1
    i32 2, label %sw.bb2
    i32 1, label %sw.bb3
    i32 11, label %sw.bb4
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ %profile_idc, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @coda_mpeg4_level(i32 noundef %level_idc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %level_idc)
  %0 = icmp ult i32 %level_idc, 6
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.coda_mpeg4_level, i32 0, i32 %level_idc
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @coda_mpeg4_parse_headers(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %buf, i32 noundef %size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %size)
  %cmp = icmp ult i32 %size, 30
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %buf, ptr noundef nonnull dereferenceable(4) @coda_mpeg4_parse_headers.vos_start, i32 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp1.not = icmp eq i32 %bcmp, 0
  br i1 %cmp1.not, label %lor.lhs.false2, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %buf, i32 5
  %bcmp41 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) @coda_mpeg4_parse_headers.u, i32 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp41)
  %cmp4.not = icmp eq i32 %bcmp41, 0
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false2.return_crit_edge

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %size)
  %cmp5 = icmp eq i32 %size, 30
  br i1 %cmp5, label %if.end.return_crit_edge, label %lor.lhs.false6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

lor.lhs.false6:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %size)
  %cmp7 = icmp ugt i32 %size, 32
  br i1 %cmp7, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %lor.lhs.false6
  %add.ptr8 = getelementptr i8, ptr %buf, i32 30
  %bcmp44 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr8, ptr noundef nonnull dereferenceable(3) @coda_mpeg4_parse_headers.u, i32 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp44)
  %cmp10 = icmp eq i32 %bcmp44, 0
  br i1 %cmp10, label %land.lhs.true.return_crit_edge, label %lor.lhs.false14

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end12:                                         ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %size)
  %cmp13 = icmp eq i32 %size, 31
  %spec.select = select i1 %cmp13, i32 31, i32 32
  br label %return

lor.lhs.false14:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %size)
  %cmp15 = icmp ugt i32 %size, 33
  br i1 %cmp15, label %land.lhs.true16, label %lor.lhs.false14.if.end30_crit_edge

lor.lhs.false14.if.end30_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

land.lhs.true16:                                  ; preds = %lor.lhs.false14
  %add.ptr17 = getelementptr i8, ptr %buf, i32 31
  %bcmp43 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr17, ptr noundef nonnull dereferenceable(3) @coda_mpeg4_parse_headers.u, i32 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp43)
  %cmp19 = icmp eq i32 %bcmp43, 0
  br i1 %cmp19, label %land.lhs.true16.return_crit_edge, label %lor.lhs.false23

land.lhs.true16.return_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

lor.lhs.false23:                                  ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %size)
  %cmp24 = icmp ugt i32 %size, 34
  br i1 %cmp24, label %land.lhs.true25, label %lor.lhs.false23.if.end30_crit_edge

lor.lhs.false23.if.end30_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

land.lhs.true25:                                  ; preds = %lor.lhs.false23
  %add.ptr26 = getelementptr i8, ptr %buf, i32 32
  %bcmp42 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr26, ptr noundef nonnull dereferenceable(3) @coda_mpeg4_parse_headers.u, i32 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp42)
  %cmp28 = icmp eq i32 %bcmp42, 0
  br i1 %cmp28, label %land.lhs.true25.return_crit_edge, label %land.lhs.true25.if.end30_crit_edge

land.lhs.true25.if.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

land.lhs.true25.return_crit_edge:                 ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end30:                                         ; preds = %land.lhs.true25.if.end30_crit_edge, %lor.lhs.false23.if.end30_crit_edge, %lor.lhs.false14.if.end30_crit_edge
  br label %return

return:                                           ; preds = %if.end30, %land.lhs.true25.return_crit_edge, %land.lhs.true16.return_crit_edge, %if.end12, %land.lhs.true.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ 0, %lor.lhs.false2.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 30, %land.lhs.true.return_crit_edge ], [ 30, %if.end.return_crit_edge ], [ 31, %land.lhs.true16.return_crit_edge ], [ 32, %land.lhs.true25.return_crit_edge ], [ %spec.select, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nounwind readonly willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nobuiltin }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @coda_mpeg4_parse_headers.vos_start, !1, !"vos_start", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/coda/coda-mpeg4.c", i32 63, i32 18}
!2 = !{ptr @coda_mpeg4_parse_headers.u, !3, !"u", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/coda/coda-mpeg4.c", i32 67, i32 4}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
