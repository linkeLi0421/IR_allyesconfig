; ModuleID = '/llk/IR_all_yes/scripts/dtc/fstree.c_pt.bc'
source_filename = "../scripts/dtc/fstree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.data = type { i32, ptr, ptr }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't opendir() \22%s\22: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"stat(%s): %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"WARNING: Cannot open %s: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @dt_from_fs(ptr noundef %dirname) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc ptr @read_fstree(ptr noundef %dirname)
  %call1 = tail call ptr @name_node(ptr noundef %call, ptr noundef nonnull @.str) #12
  %call2 = tail call i32 @guess_boot_cpuid(ptr noundef %call1) #12
  %call3 = tail call ptr @build_dt_info(i32 noundef 1, ptr noundef null, ptr noundef %call1, i32 noundef %call2) #12
  ret ptr %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @read_fstree(ptr noundef %dirname) unnamed_addr #0 {
entry:
  %st = alloca %struct.stat, align 8
  %agg.tmp = alloca %struct.data, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st) #12
  %call = tail call ptr @opendir(ptr noundef %dirname)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @__errno_location() #13
  %0 = load i32, ptr %call1, align 4, !tbaa !5
  %call2 = tail call ptr @strerror(i32 noundef %0) #12
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.1, ptr noundef %dirname, ptr noundef %call2) #14
  unreachable

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @build_node(ptr noundef null, ptr noundef null, ptr noundef null) #12
  %call471 = call ptr @readdir(ptr noundef nonnull %call) #12
  %cmp.not72 = icmp eq ptr %call471, null
  br i1 %cmp.not72, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 3
  %st_size = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 8
  br label %while.body

while.body:                                       ; preds = %cleanup, %while.body.lr.ph
  %call473 = phi ptr [ %call471, %while.body.lr.ph ], [ %call4, %cleanup ]
  %d_name = getelementptr inbounds %struct.dirent, ptr %call473, i64 0, i32 4
  %call5 = call i32 @strcmp(ptr noundef nonnull %d_name, ptr noundef nonnull dereferenceable(2) @.str.2) #15
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %call9 = call i32 @strcmp(ptr noundef nonnull %d_name, ptr noundef nonnull dereferenceable(3) @.str.3) #15
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %lor.lhs.false
  %call15 = call ptr @join_path(ptr noundef %dirname, ptr noundef nonnull %d_name) #12
  %call.i = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %call15, ptr noundef nonnull %st) #12
  %cmp17 = icmp slt i32 %call.i, 0
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end12
  %call19 = tail call ptr @__errno_location() #13
  %1 = load i32, ptr %call19, align 4, !tbaa !5
  %call20 = call ptr @strerror(i32 noundef %1) #12
  call void (ptr, ...) @die(ptr noundef nonnull @.str.4, ptr noundef nonnull %call15, ptr noundef %call20) #14
  unreachable

if.end21:                                         ; preds = %if.end12
  %2 = load i32, ptr %st_mode, align 8, !tbaa !9
  %3 = trunc i32 %2 to i16
  %trunc = and i16 %3, -4096
  switch i16 %trunc, label %if.end47 [
    i16 -32768, label %if.then23
    i16 16384, label %if.then40
  ]

if.then23:                                        ; preds = %if.end21
  %call24 = call ptr @fopen(ptr noundef nonnull %call15, ptr noundef nonnull @.str.5)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then23
  %4 = load ptr, ptr @stderr, align 8, !tbaa !13
  %call27 = tail call ptr @__errno_location() #13
  %5 = load i32, ptr %call27, align 4, !tbaa !5
  %call28 = call ptr @strerror(i32 noundef %5) #12
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef nonnull %call15, ptr noundef %call28) #16
  br label %if.end47

if.else:                                          ; preds = %if.then23
  %call32 = call ptr @xstrdup(ptr noundef nonnull %d_name) #12
  %6 = load i64, ptr %st_size, align 8, !tbaa !15
  call void @data_copy_file(ptr nonnull sret(%struct.data) align 8 %agg.tmp, ptr noundef nonnull %call24, i64 noundef %6) #12
  %call33 = call ptr @build_property(ptr noundef %call32, ptr noundef nonnull byval(%struct.data) align 8 %agg.tmp, ptr noundef null) #12
  call void @add_property(ptr noundef %call3, ptr noundef %call33) #12
  %call34 = call i32 @fclose(ptr noundef nonnull %call24)
  br label %if.end47

if.then40:                                        ; preds = %if.end21
  %call41 = call fastcc ptr @read_fstree(ptr noundef nonnull %call15)
  %call44 = call ptr @xstrdup(ptr noundef nonnull %d_name) #12
  %call45 = call ptr @name_node(ptr noundef %call41, ptr noundef %call44) #12
  call void @add_child(ptr noundef %call3, ptr noundef %call45) #12
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %if.else, %if.then26, %if.end21
  call void @free(ptr noundef %call15) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %lor.lhs.false, %while.body
  %call4 = call ptr @readdir(ptr noundef nonnull %call) #12
  %cmp.not = icmp eq ptr %call4, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %if.end
  %call48 = call i32 @closedir(ptr noundef nonnull %call)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st) #12
  ret ptr %call3
}

declare ptr @name_node(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @build_dt_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @guess_boot_cpuid(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %str, ...) unnamed_addr #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #12
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !13
  %1 = call i64 @fwrite(ptr nonnull @.str.7, i64 13, i64 1, ptr %0) #16
  %2 = load ptr, ptr @stderr, align 8, !tbaa !13
  %call2 = call i32 @vfprintf(ptr noundef %2, ptr noundef %str, ptr noundef nonnull %ap) #16
  call void @llvm.va_end(ptr nonnull %ap)
  call void @exit(i32 noundef 1) #17
  unreachable
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #6

declare ptr @build_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @readdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare ptr @join_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @build_property(ptr noundef, ptr noundef byval(%struct.data) align 8, ptr noundef) local_unnamed_addr #2

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

declare void @data_copy_file(ptr sret(%struct.data) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @add_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

declare void @add_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @__xstat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { noreturn }
attributes #15 = { nounwind readonly willreturn }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 24}
!10 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !12, i64 72, !12, i64 88, !12, i64 104, !7, i64 120}
!11 = !{!"long", !7, i64 0}
!12 = !{!"timespec", !11, i64 0, !11, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!10, !11, i64 48}
