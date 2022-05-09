; ModuleID = '/llk/IR_all_yes/scripts/bin2c.c_pt.bc'
source_filename = "../scripts/bin2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"const char %s[] %s=\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\09\22\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\09;\0A\0A#include <linux/types.h>\0A\0Aconst size_t %s_size = %d;\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [2 x i8] c"\22\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %argc, 1
  br i1 %cmp, label %if.then, label %do.body.preheader

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 1
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %cmp1.not = icmp eq i32 %argc, 2
  br i1 %cmp1.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %arrayidx2 = getelementptr inbounds ptr, ptr %argv, i64 2
  %1 = load ptr, ptr %arrayidx2, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then
  %cond = phi ptr [ %1, %cond.true ], [ @.str.1, %if.then ]
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, ptr noundef %0, ptr noundef %cond)
  br label %do.body.preheader

do.body.preheader:                                ; preds = %cond.end, %entry
  br label %do.body

do.body:                                          ; preds = %while.end, %do.body.preheader
  %total.0 = phi i32 [ %inc, %while.end ], [ 0, %do.body.preheader ]
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %total.1 = phi i32 [ %total.0, %do.body ], [ %inc, %while.body ]
  %2 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = tail call i32 @getc(ptr noundef %2) #3
  %cmp5.not = icmp eq i32 %call.i, -1
  br i1 %cmp5.not, label %do.end, label %while.body

while.body:                                       ; preds = %while.cond
  %inc = add i32 %total.1, 1
  %call6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i32 noundef %call.i)
  %lftr.wideiv = trunc i32 %inc to i4
  %exitcond = icmp eq i4 %lftr.wideiv, 0
  br i1 %exitcond, label %while.end, label %while.cond

while.end:                                        ; preds = %while.body
  %puts = tail call i32 @puts(ptr nonnull @str)
  br label %do.body

do.end:                                           ; preds = %while.cond
  %puts25 = tail call i32 @puts(ptr nonnull @str)
  br i1 %cmp, label %if.then13, label %if.end16

if.then13:                                        ; preds = %do.end
  %arrayidx14 = getelementptr inbounds ptr, ptr %argv, i64 1
  %3 = load ptr, ptr %arrayidx14, align 8, !tbaa !5
  %call15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, ptr noundef %3, i32 noundef %total.1)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %do.end
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
