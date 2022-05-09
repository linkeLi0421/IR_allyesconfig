; ModuleID = '/llk/IR_all_yes/arch/arm/vdso/vdsomunge.c_pt.bc'
source_filename = "../arch/arm/vdso/vdsomunge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.Elf32_Ehdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@argv0 = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Usage: %s [infile] [outfile]\0A\00", align 1
@outfile = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Cannot open %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed stat for %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Failed to map %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Not an ELF file\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Unsupported ELF class\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Not a shared object\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Unsupported architecture %#x\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Unsupported EABI version %#x\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Unexpected hard-float flag set in e_flags\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Cannot truncate %s: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Failed to sync %s: %s\0A\00", align 1
@failed = internal unnamed_addr global i1 false, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %stat = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat) #14
  %call = tail call i32 @atexit(ptr noundef nonnull @cleanup) #14
  %0 = load ptr, ptr %argv, align 8, !tbaa !5
  store ptr %0, ptr @argv0, align 8, !tbaa !5
  %cmp.not = icmp eq i32 %argc, 3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @fail(ptr noundef nonnull @.str, ptr noundef %0)
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr inbounds ptr, ptr %argv, i64 1
  %1 = load ptr, ptr %arrayidx2, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds ptr, ptr %argv, i64 2
  %2 = load ptr, ptr %arrayidx3, align 8, !tbaa !5
  store ptr %2, ptr @outfile, align 8, !tbaa !5
  %call4 = tail call i32 (ptr, i32, ...) @open(ptr noundef %1, i32 noundef 0) #14
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %call7 = tail call ptr @__errno_location() #15
  %3 = load i32, ptr %call7, align 4, !tbaa !9
  %call8 = tail call ptr @strerror(i32 noundef %3) #14
  tail call void (ptr, ...) @fail(ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %call8)
  unreachable

if.end9:                                          ; preds = %if.end
  %call.i = call i32 @__fxstat(i32 noundef 1, i32 noundef %call4, ptr noundef nonnull %stat) #14
  %cmp11.not = icmp eq i32 %call.i, 0
  br i1 %cmp11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end9
  %call13 = tail call ptr @__errno_location() #15
  %4 = load i32, ptr %call13, align 4, !tbaa !9
  %call14 = call ptr @strerror(i32 noundef %4) #14
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef %call14)
  unreachable

if.end15:                                         ; preds = %if.end9
  %st_size = getelementptr inbounds %struct.stat, ptr %stat, i64 0, i32 8
  %5 = load i64, ptr %st_size, align 8, !tbaa !11
  %call16 = call ptr @mmap(ptr noundef null, i64 noundef %5, i32 noundef 1, i32 noundef 2, i32 noundef %call4, i64 noundef 0) #14
  %cmp17 = icmp eq ptr %call16, inttoptr (i64 -1 to ptr)
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end15
  %call19 = tail call ptr @__errno_location() #15
  %6 = load i32, ptr %call19, align 4, !tbaa !9
  %call20 = call ptr @strerror(i32 noundef %6) #14
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %call20)
  unreachable

if.end21:                                         ; preds = %if.end15
  %call22 = call i32 @close(i32 noundef %call4) #14
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %call16, ptr noundef nonnull dereferenceable(4) @.str.4, i64 4)
  %cmp24.not = icmp eq i32 %bcmp, 0
  br i1 %cmp24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.5)
  unreachable

if.end26:                                         ; preds = %if.end21
  %arrayidx28 = getelementptr inbounds [16 x i8], ptr %call16, i64 0, i64 4
  %7 = load i8, ptr %arrayidx28, align 4, !tbaa !15
  %cmp29.not = icmp eq i8 %7, 1
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end26
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.6)
  unreachable

if.end32:                                         ; preds = %if.end26
  %arrayidx34 = getelementptr inbounds [16 x i8], ptr %call16, i64 0, i64 5
  %8 = load i8, ptr %arrayidx34, align 1, !tbaa !15
  %cmp36.not = icmp eq i8 %8, 1
  %e_type = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call16, i64 0, i32 1
  %9 = load i16, ptr %e_type, align 4, !tbaa !16
  %rev.i = call i16 @llvm.bswap.i16(i16 %9) #14
  %cond.in.i = select i1 %cmp36.not, i16 %9, i16 %rev.i
  %cmp40.not = icmp eq i16 %cond.in.i, 3
  br i1 %cmp40.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end32
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.7)
  unreachable

if.end43:                                         ; preds = %if.end32
  %e_machine = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call16, i64 0, i32 2
  %10 = load i16, ptr %e_machine, align 2, !tbaa !19
  %rev.i139 = call i16 @llvm.bswap.i16(i16 %10) #14
  %cond.in.i140 = select i1 %cmp36.not, i16 %10, i16 %rev.i139
  %cmp47.not = icmp eq i16 %cond.in.i140, 40
  br i1 %cmp47.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %if.end43
  %conv51 = zext i16 %10 to i32
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.8, i32 noundef %conv51)
  unreachable

if.end52:                                         ; preds = %if.end43
  %e_flags53 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call16, i64 0, i32 7
  %11 = load i32, ptr %e_flags53, align 4, !tbaa !20
  %or7.i = call i32 @llvm.bswap.i32(i32 %11) #14
  %cond.i = select i1 %cmp36.not, i32 %11, i32 %or7.i
  %and = and i32 %cond.i, -16777216
  %cmp56.not = icmp eq i32 %and, 83886080
  br i1 %cmp56.not, label %if.end60, label %if.then58

if.then58:                                        ; preds = %if.end52
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.9, i32 noundef %and)
  unreachable

if.end60:                                         ; preds = %if.end52
  %and61 = and i32 %cond.i, 1024
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end60
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.10)
  unreachable

if.end64:                                         ; preds = %if.end60
  %and65 = and i32 %cond.i, 512
  %tobool66.not = icmp eq i32 %and65, 0
  %12 = load ptr, ptr @outfile, align 8, !tbaa !5
  %call69 = call i32 (ptr, i32, ...) @open(ptr noundef %12, i32 noundef 578, i32 noundef 384) #14
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end64
  %13 = load ptr, ptr @outfile, align 8, !tbaa !5
  %call73 = tail call ptr @__errno_location() #15
  %14 = load i32, ptr %call73, align 4, !tbaa !9
  %call74 = call ptr @strerror(i32 noundef %14) #14
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.1, ptr noundef %13, ptr noundef %call74)
  unreachable

if.end75:                                         ; preds = %if.end64
  %15 = load i64, ptr %st_size, align 8, !tbaa !11
  %call77 = call i32 @ftruncate(i32 noundef %call69, i64 noundef %15) #14
  %cmp78.not = icmp eq i32 %call77, 0
  br i1 %cmp78.not, label %if.end83, label %if.then80

if.then80:                                        ; preds = %if.end75
  %16 = load ptr, ptr @outfile, align 8, !tbaa !5
  %call81 = tail call ptr @__errno_location() #15
  %17 = load i32, ptr %call81, align 4, !tbaa !9
  %call82 = call ptr @strerror(i32 noundef %17) #14
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.11, ptr noundef %16, ptr noundef %call82)
  unreachable

if.end83:                                         ; preds = %if.end75
  %18 = load i64, ptr %st_size, align 8, !tbaa !11
  %call85 = call ptr @mmap(ptr noundef null, i64 noundef %18, i32 noundef 3, i32 noundef 1, i32 noundef %call69, i64 noundef 0) #14
  %cmp86 = icmp eq ptr %call85, inttoptr (i64 -1 to ptr)
  br i1 %cmp86, label %if.then88, label %if.end91

if.then88:                                        ; preds = %if.end83
  %19 = load ptr, ptr @outfile, align 8, !tbaa !5
  %call89 = tail call ptr @__errno_location() #15
  %20 = load i32, ptr %call89, align 4, !tbaa !9
  %call90 = call ptr @strerror(i32 noundef %20) #14
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.3, ptr noundef %19, ptr noundef %call90)
  unreachable

if.end91:                                         ; preds = %if.end83
  %call92 = call i32 @close(i32 noundef %call69) #14
  %21 = load i64, ptr %st_size, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call85, ptr nonnull align 1 %call16, i64 %21, i1 false)
  br i1 %tobool66.not, label %if.end99, label %if.then95

if.then95:                                        ; preds = %if.end91
  %and96 = and i32 %cond.i, -513
  %e_flags97 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call85, i64 0, i32 7
  %or7.i141 = call i32 @llvm.bswap.i32(i32 %and96) #14
  %cond.i142 = select i1 %cmp36.not, i32 %and96, i32 %or7.i141
  store i32 %cond.i142, ptr %e_flags97, align 4, !tbaa !9
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.end91
  %22 = load i64, ptr %st_size, align 8, !tbaa !11
  %call101 = call i32 @msync(ptr noundef %call85, i64 noundef %22, i32 noundef 4) #14
  %cmp102.not = icmp eq i32 %call101, 0
  br i1 %cmp102.not, label %if.end107, label %if.then104

if.then104:                                       ; preds = %if.end99
  %23 = load ptr, ptr @outfile, align 8, !tbaa !5
  %call105 = tail call ptr @__errno_location() #15
  %24 = load i32, ptr %call105, align 4, !tbaa !9
  %call106 = call ptr @strerror(i32 noundef %24) #14
  call void (ptr, ...) @fail(ptr noundef nonnull @.str.12, ptr noundef %23, ptr noundef %call106)
  unreachable

if.end107:                                        ; preds = %if.end99
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal void @cleanup() #3 {
entry:
  %.b = load i1, ptr @failed, align 4
  %0 = load ptr, ptr @outfile, align 8
  %cmp = icmp ne ptr %0, null
  %or.cond = select i1 %.b, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @unlink(ptr noundef nonnull %0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @fail(ptr nocapture noundef readonly %fmt, ...) unnamed_addr #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #14
  store i1 true, ptr @failed, align 4
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = load ptr, ptr @argv0, align 8, !tbaa !5
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %1) #16
  call void @llvm.va_start(ptr nonnull %ap)
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 @vfprintf(ptr noundef %2, ptr noundef %fmt, ptr noundef nonnull %ap) #16
  call void @llvm.va_end(ptr nonnull %ap)
  call void @exit(i32 noundef 1) #17
  unreachable
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @msync(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #10

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone willreturn }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !13, i64 48}
!12 = !{!"stat", !13, i64 0, !13, i64 8, !13, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !14, i64 72, !14, i64 88, !14, i64 104, !7, i64 120}
!13 = !{!"long", !7, i64 0}
!14 = !{!"timespec", !13, i64 0, !13, i64 8}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !18, i64 16}
!17 = !{!"", !7, i64 0, !18, i64 16, !18, i64 18, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !18, i64 40, !18, i64 42, !18, i64 44, !18, i64 46, !18, i64 48, !18, i64 50}
!18 = !{!"short", !7, i64 0}
!19 = !{!17, !18, i64 18}
!20 = !{!17, !10, i64 36}
