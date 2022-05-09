; ModuleID = '/llk/IR_all_yes/arch/arm/boot/compressed/string.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/string.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

@__memcpy = alias ptr (ptr, ptr, i32), ptr @memcpy
@__memmove = alias ptr (ptr, ptr, i32), ptr @memmove
@__memset = alias ptr (ptr, i32, i32), ptr @memset

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define ptr @memcpy(ptr noundef returned writeonly %__dest, ptr nocapture noundef readonly %__src, i32 noundef %__n) #0 align 64 {
entry:
  %cmp71.not = icmp ult i32 %__n, 8
  br i1 %cmp71.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %shr = lshr i32 %__n, 3
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %s.074 = phi ptr [ %incdec.ptr14, %for.body ], [ %__src, %for.body.preheader ]
  %d.073 = phi ptr [ %incdec.ptr15, %for.body ], [ %__dest, %for.body.preheader ]
  %i.072 = phi i32 [ %dec, %for.body ], [ %shr, %for.body.preheader ]
  %incdec.ptr = getelementptr i8, ptr %s.074, i32 1
  %0 = load i8, ptr %s.074, align 1
  %incdec.ptr1 = getelementptr i8, ptr %d.073, i32 1
  store i8 %0, ptr %d.073, align 1
  %incdec.ptr2 = getelementptr i8, ptr %s.074, i32 2
  %1 = load i8, ptr %incdec.ptr, align 1
  %incdec.ptr3 = getelementptr i8, ptr %d.073, i32 2
  store i8 %1, ptr %incdec.ptr1, align 1
  %incdec.ptr4 = getelementptr i8, ptr %s.074, i32 3
  %2 = load i8, ptr %incdec.ptr2, align 1
  %incdec.ptr5 = getelementptr i8, ptr %d.073, i32 3
  store i8 %2, ptr %incdec.ptr3, align 1
  %incdec.ptr6 = getelementptr i8, ptr %s.074, i32 4
  %3 = load i8, ptr %incdec.ptr4, align 1
  %incdec.ptr7 = getelementptr i8, ptr %d.073, i32 4
  store i8 %3, ptr %incdec.ptr5, align 1
  %incdec.ptr8 = getelementptr i8, ptr %s.074, i32 5
  %4 = load i8, ptr %incdec.ptr6, align 1
  %incdec.ptr9 = getelementptr i8, ptr %d.073, i32 5
  store i8 %4, ptr %incdec.ptr7, align 1
  %incdec.ptr10 = getelementptr i8, ptr %s.074, i32 6
  %5 = load i8, ptr %incdec.ptr8, align 1
  %incdec.ptr11 = getelementptr i8, ptr %d.073, i32 6
  store i8 %5, ptr %incdec.ptr9, align 1
  %incdec.ptr12 = getelementptr i8, ptr %s.074, i32 7
  %6 = load i8, ptr %incdec.ptr10, align 1
  %incdec.ptr13 = getelementptr i8, ptr %d.073, i32 7
  store i8 %6, ptr %incdec.ptr11, align 1
  %incdec.ptr14 = getelementptr i8, ptr %s.074, i32 8
  %7 = load i8, ptr %incdec.ptr12, align 1
  %incdec.ptr15 = getelementptr i8, ptr %d.073, i32 8
  store i8 %7, ptr %incdec.ptr13, align 1
  %dec = add nsw i32 %i.072, -1
  %cmp = icmp ugt i32 %i.072, 1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %d.0.lcssa = phi ptr [ %__dest, %entry ], [ %incdec.ptr15, %for.body ]
  %s.0.lcssa = phi ptr [ %__src, %entry ], [ %incdec.ptr14, %for.body ]
  %and = and i32 %__n, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %incdec.ptr16 = getelementptr i8, ptr %s.0.lcssa, i32 1
  %8 = load i8, ptr %s.0.lcssa, align 1
  %incdec.ptr17 = getelementptr i8, ptr %d.0.lcssa, i32 1
  store i8 %8, ptr %d.0.lcssa, align 1
  %incdec.ptr18 = getelementptr i8, ptr %s.0.lcssa, i32 2
  %9 = load i8, ptr %incdec.ptr16, align 1
  %incdec.ptr19 = getelementptr i8, ptr %d.0.lcssa, i32 2
  store i8 %9, ptr %incdec.ptr17, align 1
  %incdec.ptr20 = getelementptr i8, ptr %s.0.lcssa, i32 3
  %10 = load i8, ptr %incdec.ptr18, align 1
  %incdec.ptr21 = getelementptr i8, ptr %d.0.lcssa, i32 3
  store i8 %10, ptr %incdec.ptr19, align 1
  %incdec.ptr22 = getelementptr i8, ptr %s.0.lcssa, i32 4
  %11 = load i8, ptr %incdec.ptr20, align 1
  %incdec.ptr23 = getelementptr i8, ptr %d.0.lcssa, i32 4
  store i8 %11, ptr %incdec.ptr21, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %d.1 = phi ptr [ %incdec.ptr23, %if.then ], [ %d.0.lcssa, %for.end ]
  %s.1 = phi ptr [ %incdec.ptr22, %if.then ], [ %s.0.lcssa, %for.end ]
  %and24 = and i32 %__n, 2
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.end
  %incdec.ptr27 = getelementptr i8, ptr %s.1, i32 1
  %12 = load i8, ptr %s.1, align 1
  %incdec.ptr28 = getelementptr i8, ptr %d.1, i32 1
  store i8 %12, ptr %d.1, align 1
  %incdec.ptr29 = getelementptr i8, ptr %s.1, i32 2
  %13 = load i8, ptr %incdec.ptr27, align 1
  %incdec.ptr30 = getelementptr i8, ptr %d.1, i32 2
  store i8 %13, ptr %incdec.ptr28, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end
  %d.2 = phi ptr [ %incdec.ptr30, %if.then26 ], [ %d.1, %if.end ]
  %s.2 = phi ptr [ %incdec.ptr29, %if.then26 ], [ %s.1, %if.end ]
  %and32 = and i32 %__n, 1
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.end31
  %14 = load i8, ptr %s.2, align 1
  store i8 %14, ptr %d.2, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end31
  ret ptr %__dest
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define ptr @memmove(ptr noundef %__dest, ptr noundef readonly %__src, i32 noundef %count) #0 align 64 {
entry:
  %cmp = icmp eq ptr %__dest, %__src
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ult ptr %__dest, %__src
  br i1 %cmp1, label %if.then2, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %tobool.not17 = icmp eq i32 %count, 0
  br i1 %tobool.not17, label %cleanup, label %while.body

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @memcpy(ptr noundef %__dest, ptr noundef nonnull %__src, i32 noundef %count) #3
  br label %cleanup

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %count.addr.018 = phi i32 [ %dec, %while.body ], [ %count, %while.cond.preheader ]
  %dec = add i32 %count.addr.018, -1
  %arrayidx = getelementptr i8, ptr %__src, i32 %dec
  %0 = load i8, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr i8, ptr %__dest, i32 %dec
  store i8 %0, ptr %arrayidx4, align 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.then2, %while.cond.preheader, %entry
  ret ptr %__dest
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync)
define ptr @memset(ptr noundef returned writeonly %s, i32 noundef %c, i32 noundef %count) #1 align 64 {
entry:
  %tobool.not2 = icmp eq i32 %count, 0
  br i1 %tobool.not2, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %conv = trunc i32 %c to i8
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %xs.04 = phi ptr [ %s, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %count.addr.03 = phi i32 [ %count, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i32 %count.addr.03, -1
  %incdec.ptr = getelementptr i8, ptr %xs.04, i32 1
  store i8 %conv, ptr %xs.04, align 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret ptr %s
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define i32 @strlen(ptr noundef %s) local_unnamed_addr #2 align 64 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %sc.0 = phi ptr [ %s, %entry ], [ %incdec.ptr, %while.cond ]
  %0 = load i8, ptr %sc.0, align 1
  %cmp.not = icmp eq i8 %0, 0
  %incdec.ptr = getelementptr i8, ptr %sc.0, i32 1
  br i1 %cmp.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %sub.ptr.lhs.cast = ptrtoint ptr %sc.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %s to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define i32 @strnlen(ptr noundef %s, i32 noundef %count) local_unnamed_addr #2 align 64 {
entry:
  %tobool.not6 = icmp eq i32 %count, 0
  br i1 %tobool.not6, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %uglygep = getelementptr i8, ptr %s, i32 %count
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc, %land.rhs.preheader
  %dec8.in = phi i32 [ %dec8, %for.inc ], [ %count, %land.rhs.preheader ]
  %sc.07 = phi ptr [ %incdec.ptr, %for.inc ], [ %s, %land.rhs.preheader ]
  %0 = load i8, ptr %sc.07, align 1
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %land.rhs
  %dec8 = add i32 %dec8.in, -1
  %incdec.ptr = getelementptr i8, ptr %sc.07, i32 1
  %tobool.not = icmp eq i32 %dec8, 0
  br i1 %tobool.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %for.inc, %land.rhs, %entry
  %sc.0.lcssa = phi ptr [ %s, %entry ], [ %uglygep, %for.inc ], [ %sc.07, %land.rhs ]
  %sub.ptr.lhs.cast = ptrtoint ptr %sc.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %s to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define i32 @memcmp(ptr noundef readonly %cs, ptr nocapture noundef readonly %ct, i32 noundef %count) local_unnamed_addr #2 align 64 {
entry:
  %add.ptr = getelementptr i8, ptr %cs, i32 %count
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %su1.0 = phi ptr [ %cs, %entry ], [ %incdec.ptr, %while.body ]
  %su2.0 = phi ptr [ %ct, %entry ], [ %incdec.ptr1, %while.body ]
  %cmp = icmp ult ptr %su1.0, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr i8, ptr %su1.0, i32 1
  %0 = load i8, ptr %su1.0, align 1
  %conv = zext i8 %0 to i32
  %incdec.ptr1 = getelementptr i8, ptr %su2.0, i32 1
  %1 = load i8, ptr %su2.0, align 1
  %conv2 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv2
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.cond, label %while.end

while.end:                                        ; preds = %while.body, %while.cond
  %res.1 = phi i32 [ %sub, %while.body ], [ 0, %while.cond ]
  ret i32 %res.1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define i32 @strcmp(ptr nocapture noundef readonly %cs, ptr nocapture noundef readonly %ct) local_unnamed_addr #2 align 64 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %cs.addr.0 = phi ptr [ %cs, %entry ], [ %incdec.ptr, %do.body ]
  %ct.addr.0 = phi ptr [ %ct, %entry ], [ %incdec.ptr1, %do.body ]
  %incdec.ptr = getelementptr i8, ptr %cs.addr.0, i32 1
  %0 = load i8, ptr %cs.addr.0, align 1
  %incdec.ptr1 = getelementptr i8, ptr %ct.addr.0, i32 1
  %1 = load i8, ptr %ct.addr.0, align 1
  %tobool = icmp eq i8 %0, %1
  %tobool3 = icmp ne i8 %0, 0
  %or.cond = and i1 %tobool3, %tobool
  br i1 %or.cond, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %conv2 = zext i8 %1 to i32
  %conv = zext i8 %0 to i32
  %sub = sub nsw i32 %conv, %conv2
  ret i32 %sub
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define ptr @memchr(ptr noundef readonly %s, i32 noundef %c, i32 noundef %count) local_unnamed_addr #2 align 64 {
entry:
  %0 = trunc i32 %c to i8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %count.addr.0 = phi i32 [ %count, %entry ], [ %dec, %while.body ]
  %p.0 = phi ptr [ %s, %entry ], [ %incdec.ptr, %while.body ]
  %tobool.not = icmp eq i32 %count.addr.0, 0
  br i1 %tobool.not, label %cleanup, label %while.body

while.body:                                       ; preds = %while.cond
  %dec = add i32 %count.addr.0, -1
  %incdec.ptr = getelementptr i8, ptr %p.0, i32 1
  %1 = load i8, ptr %p.0, align 1
  %cmp = icmp eq i8 %1, %0
  br i1 %cmp, label %cleanup, label %while.cond

cleanup:                                          ; preds = %while.body, %while.cond
  %retval.0 = phi ptr [ %p.0, %while.body ], [ null, %while.cond ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define ptr @strchr(ptr noundef readonly %s, i32 noundef %c) local_unnamed_addr #2 align 64 {
entry:
  %0 = trunc i32 %c to i8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %s.addr.0 = phi ptr [ %s, %entry ], [ %incdec.ptr, %while.body ]
  %1 = load i8, ptr %s.addr.0, align 1
  %cmp.not = icmp eq i8 %1, %0
  br i1 %cmp.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr i8, ptr %s.addr.0, i32 1
  %cmp5 = icmp eq i8 %1, 0
  br i1 %cmp5, label %return, label %while.cond

return:                                           ; preds = %while.body, %while.cond
  %retval.0 = phi ptr [ null, %while.body ], [ %s.addr.0, %while.cond ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define ptr @strrchr(ptr noundef readonly %s, i32 noundef %c) local_unnamed_addr #2 align 64 {
entry:
  %0 = trunc i32 %c to i8
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %s.addr.0 = phi ptr [ %s, %entry ], [ %incdec.ptr, %do.body ]
  %last.0 = phi ptr [ null, %entry ], [ %spec.select, %do.body ]
  %1 = load i8, ptr %s.addr.0, align 1
  %cmp = icmp eq i8 %1, %0
  %spec.select = select i1 %cmp, ptr %s.addr.0, ptr %last.0
  %incdec.ptr = getelementptr i8, ptr %s.addr.0, i32 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  ret ptr %spec.select
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nobuiltin optsize "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
