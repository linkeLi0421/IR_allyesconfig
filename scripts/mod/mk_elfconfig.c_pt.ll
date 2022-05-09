; ModuleID = '/llk/IR_all_yes/scripts/mod/mk_elfconfig.c_pt.bc'
source_filename = "../scripts/mod/mk_elfconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"Error: input truncated\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Error: not ELF\0A\00", align 1
@str = private unnamed_addr constant [35 x i8] c"#define KERNEL_ELFCLASS ELFCLASS64\00", align 1
@str.12 = private unnamed_addr constant [35 x i8] c"#define KERNEL_ELFDATA ELFDATA2MSB\00", align 1
@str.13 = private unnamed_addr constant [33 x i8] c"#define HOST_ELFCLASS ELFCLASS64\00", align 1
@str.14 = private unnamed_addr constant [33 x i8] c"#define HOST_ELFDATA ELFDATA2LSB\00", align 1
@str.16 = private unnamed_addr constant [35 x i8] c"#define KERNEL_ELFDATA ELFDATA2LSB\00", align 1
@str.17 = private unnamed_addr constant [35 x i8] c"#define KERNEL_ELFCLASS ELFCLASS32\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  %ei = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ei) #5
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call = call i64 @fread(ptr noundef nonnull %ei, i64 noundef 1, i64 noundef 16, ptr noundef %0)
  %cmp.not = icmp eq i64 %call, 16
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 23, i64 1, ptr %1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %lhsv = load i32, ptr %ei, align 16
  %.not = icmp eq i32 %lhsv, 1179403647
  br i1 %.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %3) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [16 x i8], ptr %ei, i64 0, i64 4
  %5 = load i8, ptr %arrayidx, align 4, !tbaa !9
  switch i8 %5, label %sw.default [
    i8 1, label %sw.epilog
    i8 2, label %sw.bb9
  ]

sw.bb9:                                           ; preds = %if.end7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  tail call void @exit(i32 noundef 1) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb9, %if.end7
  %str.sink = phi ptr [ @str, %sw.bb9 ], [ @str.17, %if.end7 ]
  %puts = tail call i32 @puts(ptr nonnull %str.sink)
  %arrayidx11 = getelementptr inbounds [16 x i8], ptr %ei, i64 0, i64 5
  %6 = load i8, ptr %arrayidx11, align 1, !tbaa !9
  switch i8 %6, label %sw.default17 [
    i8 1, label %if.then30
    i8 2, label %sw.bb15
  ]

sw.bb15:                                          ; preds = %sw.epilog
  br label %if.then30

sw.default17:                                     ; preds = %sw.epilog
  tail call void @exit(i32 noundef 1) #7
  unreachable

if.then30:                                        ; preds = %sw.bb15, %sw.epilog
  %str.16.sink = phi ptr [ @str.12, %sw.bb15 ], [ @str.16, %sw.epilog ]
  %puts43 = tail call i32 @puts(ptr nonnull %str.16.sink)
  %puts37 = tail call i32 @puts(ptr nonnull @str.13)
  %puts41 = tail call i32 @puts(ptr nonnull @str.14)
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.then5, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then5 ], [ 0, %if.then30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ei) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { noreturn nounwind }

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
!9 = !{!7, !7, i64 0}
