; ModuleID = '/llk/IR_all_yes/lib/gen_crc64table.c_pt.bc'
source_filename = "../lib/gen_crc64table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc64_table = internal unnamed_addr global [256 x i64] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [13 x i8] c"\090x%016lxULL\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@str = private unnamed_addr constant [44 x i8] c"/* this file is generated - do not edit */\0A\00", align 1
@str.8 = private unnamed_addr constant [25 x i8] c"#include <linux/types.h>\00", align 1
@str.9 = private unnamed_addr constant [26 x i8] c"#include <linux/cache.h>\0A\00", align 1
@str.10 = private unnamed_addr constant [59 x i8] c"static const u64 ____cacheline_aligned crc64table[256] = {\00", align 1
@str.11 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %entry ], [ %vec.ind.next, %vector.body ]
  %0 = and <2 x i64> %vec.ind, <i64 128, i64 128>
  %1 = icmp eq <2 x i64> %0, zeroinitializer
  %2 = select <2 x i1> %1, <2 x i64> zeroinitializer, <2 x i64> <i64 -8799536867313423066, i64 -8799536867313423066>
  %3 = xor <2 x i64> %2, <i64 4823603603198064275, i64 4823603603198064275>
  %4 = and <2 x i64> %vec.ind, <i64 64, i64 64>
  %5 = icmp eq <2 x i64> %4, zeroinitializer
  %6 = select <2 x i1> %5, <2 x i64> %2, <2 x i64> %3
  %7 = shl <2 x i64> %vec.ind, <i64 58, i64 58>
  %8 = xor <2 x i64> %6, %7
  %9 = shl <2 x i64> %6, <i64 1, i64 1>
  %10 = xor <2 x i64> %9, <i64 4823603603198064275, i64 4823603603198064275>
  %11 = icmp slt <2 x i64> %8, zeroinitializer
  %12 = select <2 x i1> %11, <2 x i64> %10, <2 x i64> %9
  %13 = shl <2 x i64> %vec.ind, <i64 59, i64 59>
  %14 = xor <2 x i64> %12, %13
  %15 = shl <2 x i64> %12, <i64 1, i64 1>
  %16 = xor <2 x i64> %15, <i64 4823603603198064275, i64 4823603603198064275>
  %17 = icmp slt <2 x i64> %14, zeroinitializer
  %18 = select <2 x i1> %17, <2 x i64> %16, <2 x i64> %15
  %19 = shl <2 x i64> %vec.ind, <i64 60, i64 60>
  %20 = xor <2 x i64> %18, %19
  %21 = shl <2 x i64> %18, <i64 1, i64 1>
  %22 = xor <2 x i64> %21, <i64 4823603603198064275, i64 4823603603198064275>
  %23 = icmp slt <2 x i64> %20, zeroinitializer
  %24 = select <2 x i1> %23, <2 x i64> %22, <2 x i64> %21
  %25 = shl <2 x i64> %vec.ind, <i64 61, i64 61>
  %26 = xor <2 x i64> %24, %25
  %27 = shl <2 x i64> %24, <i64 1, i64 1>
  %28 = xor <2 x i64> %27, <i64 4823603603198064275, i64 4823603603198064275>
  %29 = icmp slt <2 x i64> %26, zeroinitializer
  %30 = select <2 x i1> %29, <2 x i64> %28, <2 x i64> %27
  %31 = shl <2 x i64> %vec.ind, <i64 62, i64 62>
  %32 = xor <2 x i64> %30, %31
  %33 = shl <2 x i64> %30, <i64 1, i64 1>
  %34 = xor <2 x i64> %33, <i64 4823603603198064275, i64 4823603603198064275>
  %35 = icmp slt <2 x i64> %32, zeroinitializer
  %36 = select <2 x i1> %35, <2 x i64> %34, <2 x i64> %33
  %37 = shl <2 x i64> %vec.ind, <i64 63, i64 63>
  %38 = xor <2 x i64> %36, %37
  %39 = shl <2 x i64> %36, <i64 1, i64 1>
  %40 = xor <2 x i64> %39, <i64 4823603603198064275, i64 4823603603198064275>
  %41 = icmp slt <2 x i64> %38, zeroinitializer
  %42 = select <2 x i1> %41, <2 x i64> %40, <2 x i64> %39
  %43 = getelementptr inbounds [256 x i64], ptr @crc64_table, i64 0, i64 %index
  store <2 x i64> %42, ptr %43, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 2
  %vec.ind.next = add <2 x i64> %vec.ind, <i64 2, i64 2>
  %44 = icmp eq i64 %index.next, 256
  br i1 %44, label %generate_crc64_table.exit, label %vector.body, !llvm.loop !9

generate_crc64_table.exit:                        ; preds = %vector.body
  %puts.i = tail call i32 @puts(ptr nonnull @str) #3
  %puts11.i = tail call i32 @puts(ptr nonnull @str.8) #3
  %puts12.i = tail call i32 @puts(ptr nonnull @str.9) #3
  %puts13.i = tail call i32 @puts(ptr nonnull @str.10) #3
  br label %for.body.i2

for.body.i2:                                      ; preds = %for.inc.i, %generate_crc64_table.exit
  %indvars.iv.i = phi i64 [ 0, %generate_crc64_table.exit ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i1 = getelementptr inbounds [256 x i64], ptr @crc64_table, i64 0, i64 %indvars.iv.i
  %45 = load i64, ptr %arrayidx.i1, align 8, !tbaa !5
  %call4.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i64 noundef %45) #3
  %and18.i = and i64 %indvars.iv.i, 1
  %tobool.not.i = icmp eq i64 %and18.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i2
  %puts15.i = tail call i32 @puts(ptr nonnull @str.12) #3
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i2
  %call6.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6) #3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i3 = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i3, label %print_crc64_table.exit, label %for.body.i2

print_crc64_table.exit:                           ; preds = %for.inc.i
  %puts14.i = tail call i32 @puts(ptr nonnull @str.11) #3
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.isvectorized", i32 1}
