; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_bit.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_bit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"start_bit < size\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/xfs/libxfs/xfs_bit.c\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [27 x i8] c"../fs/xfs/libxfs/xfs_bit.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 45, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_bitmap_empty(ptr nocapture noundef readonly %map, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp4.not = icmp eq i32 %size, 0
  br i1 %cmp4.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %map, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_contig_bits(ptr nocapture noundef readonly %map, i32 noundef %size, i32 noundef %start_bit) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %start_bit, 5
  %add.ptr = getelementptr i32, ptr %map, i32 %shr
  %shl = shl i32 %size, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %start_bit)
  %cmp = icmp ugt i32 %shl, %start_bit
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !12

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 45) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %and = and i32 %start_bit, -32
  %sub = sub i32 %shl, %and
  %and2 = and i32 %start_bit, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %cond.end.if.end9_crit_edge, label %if.then

cond.end.if.end9_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %cond.end
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %sub4 = sub nuw nsw i32 32, %and2
  %shr5 = lshr i32 -1, %sub4
  %or = or i32 %1, %shr5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or)
  %cmp6.not = icmp eq i32 %or, -1
  br i1 %cmp6.not, label %if.end, label %if.then.found_crit_edge

if.then.found_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %found

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i32, ptr %add.ptr, i32 1
  %sub8 = add i32 %sub, -32
  br label %if.end9

if.end9:                                          ; preds = %if.end, %cond.end.if.end9_crit_edge
  %size.addr.0 = phi i32 [ %sub8, %if.end ], [ %sub, %cond.end.if.end9_crit_edge ]
  %p.0 = phi ptr [ %incdec.ptr, %if.end ], [ %add.ptr, %cond.end.if.end9_crit_edge ]
  %result.0 = phi i32 [ 32, %if.end ], [ 0, %cond.end.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0)
  %tobool10.not41 = icmp eq i32 %size.addr.0, 0
  br i1 %tobool10.not41, label %if.end9.cleanup_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  br label %while.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %if.end9.while.body_crit_edge
  %result.144 = phi i32 [ %add15, %if.end14.while.body_crit_edge ], [ %result.0, %if.end9.while.body_crit_edge ]
  %p.143 = phi ptr [ %incdec.ptr11, %if.end14.while.body_crit_edge ], [ %p.0, %if.end9.while.body_crit_edge ]
  %size.addr.142 = phi i32 [ %sub16, %if.end14.while.body_crit_edge ], [ %size.addr.0, %if.end9.while.body_crit_edge ]
  %2 = ptrtoint ptr %p.143 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p.143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp12.not = icmp eq i32 %3, -1
  br i1 %cmp12.not, label %if.end14, label %while.body.found_crit_edge

while.body.found_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %found

if.end14:                                         ; preds = %while.body
  %incdec.ptr11 = getelementptr i32, ptr %p.143, i32 1
  %add15 = add i32 %result.144, 32
  %sub16 = add i32 %size.addr.142, -32
  %tobool10.not = icmp eq i32 %sub16, 0
  br i1 %tobool10.not, label %if.end14.cleanup_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

found:                                            ; preds = %while.body.found_crit_edge, %if.then.found_crit_edge
  %result.2 = phi i32 [ 0, %if.then.found_crit_edge ], [ %result.144, %while.body.found_crit_edge ]
  %tmp.0 = phi i32 [ %or, %if.then.found_crit_edge ], [ %3, %while.body.found_crit_edge ]
  %neg = xor i32 %tmp.0, -1
  %4 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 false) #5, !range !13
  %add18 = add i32 %4, %result.2
  br label %cleanup

cleanup:                                          ; preds = %found, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %add18.pn = phi i32 [ %add18, %found ], [ %result.0, %if.end9.cleanup_crit_edge ], [ %add15, %if.end14.cleanup_crit_edge ]
  %retval.0 = sub i32 %add18.pn, %and2
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_next_bit(ptr nocapture noundef readonly %map, i32 noundef %size, i32 noundef %start_bit) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %start_bit, 5
  %add.ptr = getelementptr i32, ptr %map, i32 %shr
  %and = and i32 %start_bit, -32
  %shl = shl i32 %size, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %start_bit)
  %cmp.not = icmp ugt i32 %shl, %start_bit
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %shl, %and
  %and1 = and i32 %start_bit, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %shl3 = shl nsw i32 -1, %and1
  %and4 = and i32 %1, %shl3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp5.not = icmp eq i32 %and4, 0
  br i1 %cmp5.not, label %if.end7, label %if.then2.found_crit_edge

if.then2.found_crit_edge:                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %found

if.end7:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i32, ptr %add.ptr, i32 1
  %add = add i32 %and, 32
  %sub8 = add i32 %sub, -32
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end.if.end9_crit_edge
  %size.addr.0 = phi i32 [ %sub8, %if.end7 ], [ %sub, %if.end.if.end9_crit_edge ]
  %p.0 = phi ptr [ %incdec.ptr, %if.end7 ], [ %add.ptr, %if.end.if.end9_crit_edge ]
  %result.0 = phi i32 [ %add, %if.end7 ], [ %and, %if.end.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0)
  %tobool10.not38 = icmp eq i32 %size.addr.0, 0
  br i1 %tobool10.not38, label %if.end9.cleanup_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  br label %while.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %if.end9.while.body_crit_edge
  %result.141 = phi i32 [ %add15, %if.end14.while.body_crit_edge ], [ %result.0, %if.end9.while.body_crit_edge ]
  %p.140 = phi ptr [ %incdec.ptr11, %if.end14.while.body_crit_edge ], [ %p.0, %if.end9.while.body_crit_edge ]
  %size.addr.139 = phi i32 [ %sub16, %if.end14.while.body_crit_edge ], [ %size.addr.0, %if.end9.while.body_crit_edge ]
  %2 = ptrtoint ptr %p.140 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p.140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not = icmp eq i32 %3, 0
  br i1 %cmp12.not, label %if.end14, label %while.body.found_crit_edge

while.body.found_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %found

if.end14:                                         ; preds = %while.body
  %incdec.ptr11 = getelementptr i32, ptr %p.140, i32 1
  %add15 = add i32 %result.141, 32
  %sub16 = add i32 %size.addr.139, -32
  %tobool10.not = icmp eq i32 %sub16, 0
  br i1 %tobool10.not, label %if.end14.cleanup_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

found:                                            ; preds = %while.body.found_crit_edge, %if.then2.found_crit_edge
  %result.2 = phi i32 [ %and, %if.then2.found_crit_edge ], [ %result.141, %while.body.found_crit_edge ]
  %tmp.0 = phi i32 [ %and4, %if.then2.found_crit_edge ], [ %3, %while.body.found_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %tmp.0, i1 true), !range !13
  %sub18 = add i32 %4, %result.2
  br label %cleanup

cleanup:                                          ; preds = %found, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub18, %found ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end9.cleanup_crit_edge ], [ -1, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_bit.c", i32 45, i32 2}
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
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i32 0, i32 33}
