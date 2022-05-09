; ModuleID = '/llk/IR_all_yes/scripts/kconfig/util.c_pt.bc'
source_filename = "../scripts/kconfig/util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { ptr, ptr, ptr, i32 }
%struct.gstr = type { i64, ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@file_list = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @file_lookup(ptr nocapture noundef readonly %name) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %file.0.in = phi ptr [ @file_list, %entry ], [ %file.0, %for.body ]
  %file.0 = load ptr, ptr %file.0.in, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %file.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %name1 = getelementptr inbounds %struct.file, ptr %file.0, i64 0, i32 2
  %0 = load ptr, ptr %name1, align 8, !tbaa !9
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(1) %0) #16
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond
  %calloc = call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32)
  %tobool.not.i = icmp eq ptr %calloc, null
  br i1 %tobool.not.i, label %if.end.i, label %xmalloc.exit

if.end.i:                                         ; preds = %for.end
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %1) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

xmalloc.exit:                                     ; preds = %for.end
  %call.i16 = tail call noalias ptr @strdup(ptr noundef %name) #19
  %tobool.not.i17 = icmp eq ptr %call.i16, null
  br i1 %tobool.not.i17, label %if.end.i18, label %xstrdup.exit

if.end.i18:                                       ; preds = %xmalloc.exit
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %3) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

xstrdup.exit:                                     ; preds = %xmalloc.exit
  %name5 = getelementptr inbounds %struct.file, ptr %calloc, i64 0, i32 2
  store ptr %call.i16, ptr %name5, align 8, !tbaa !9
  %5 = load ptr, ptr @file_list, align 8, !tbaa !5
  store ptr %5, ptr %calloc, align 8, !tbaa !12
  store ptr %calloc, ptr @file_list, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %xstrdup.exit, %for.body
  %retval.0 = phi ptr [ %calloc, %xstrdup.exit ], [ %file.0, %for.body ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xmalloc(i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = tail call noalias ptr @malloc(i64 noundef %size) #20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  ret ptr %call

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %0) #21
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xstrdup(ptr nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %call = tail call noalias ptr @strdup(ptr noundef %s) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  ret ptr %call

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %0) #21
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @str_new(ptr noalias nocapture writeonly sret(%struct.gstr) align 8 %agg.result) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %xmalloc.exit

if.end.i:                                         ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %0) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

xmalloc.exit:                                     ; preds = %entry
  %s = getelementptr inbounds %struct.gstr, ptr %agg.result, i64 0, i32 1
  store ptr %call.i, ptr %s, align 8, !tbaa !13
  store i64 64, ptr %agg.result, align 8, !tbaa !16
  %max_width = getelementptr inbounds %struct.gstr, ptr %agg.result, i64 0, i32 2
  store i32 0, ptr %max_width, align 8, !tbaa !17
  store i8 0, ptr %call.i, align 1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @str_free(ptr nocapture noundef %gs) local_unnamed_addr #4 {
entry:
  %s = getelementptr inbounds %struct.gstr, ptr %gs, i64 0, i32 1
  %0 = load ptr, ptr %s, align 8, !tbaa !13
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %gs, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @str_append(ptr nocapture noundef %gs, ptr noundef readonly %s) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %s1 = getelementptr inbounds %struct.gstr, ptr %gs, i64 0, i32 1
  %0 = load ptr, ptr %s1, align 8, !tbaa !13
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %call2 = tail call i64 @strlen(ptr noundef nonnull %s) #16
  %add = add i64 %call, 1
  %add3 = add i64 %add, %call2
  %1 = load i64, ptr %gs, align 8, !tbaa !16
  %cmp = icmp ugt i64 %add3, %1
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %call.i = tail call ptr @realloc(ptr noundef %0, i64 noundef %add3) #22
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %xrealloc.exit

if.end.i:                                         ; preds = %if.then4
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %3 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %2) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

xrealloc.exit:                                    ; preds = %if.then4
  store ptr %call.i, ptr %s1, align 8, !tbaa !13
  store i64 %add3, ptr %gs, align 8, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %xrealloc.exit, %if.then
  %4 = phi ptr [ %call.i, %xrealloc.exit ], [ %0, %if.then ]
  %call10 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull %s) #19
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %p, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @realloc(ptr noundef %p, i64 noundef %size) #22
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  ret ptr %call

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %0) #21
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @str_printf(ptr nocapture noundef %gs, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %s = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #19
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %s) #19
  call void @llvm.va_start(ptr nonnull %ap)
  %call = call i32 @vsnprintf(ptr noundef nonnull %s, i64 noundef 10000, ptr noundef %fmt, ptr noundef nonnull %ap) #19
  call void @str_append(ptr noundef %gs, ptr noundef nonnull %s)
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %s) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @str_get(ptr nocapture noundef readonly %gs) local_unnamed_addr #9 {
entry:
  %s = getelementptr inbounds %struct.gstr, ptr %gs, i64 0, i32 1
  %0 = load ptr, ptr %s, align 8, !tbaa !13
  ret ptr %0
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xcalloc(i64 noundef %nmemb, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = tail call noalias ptr @calloc(i64 noundef %nmemb, i64 noundef %size) #23
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  ret ptr %call

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %0) #21
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xstrndup(ptr nocapture noundef readonly %s, i64 noundef %n) local_unnamed_addr #0 {
entry:
  %call = tail call noalias ptr @strndup(ptr noundef %s, i64 noundef %n) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  ret ptr %call

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %0) #21
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias ptr @strndup(ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { cold nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold }
attributes #22 = { nounwind allocsize(1) }
attributes #23 = { nounwind allocsize(0,1) }

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
!9 = !{!10, !6, i64 16}
!10 = !{!"file", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !6, i64 0}
!13 = !{!14, !6, i64 8}
!14 = !{!"gstr", !15, i64 0, !6, i64 8, !11, i64 16}
!15 = !{!"long", !7, i64 0}
!16 = !{!14, !15, i64 0}
!17 = !{!14, !11, i64 16}
