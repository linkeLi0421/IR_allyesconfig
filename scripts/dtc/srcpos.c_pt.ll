; ModuleID = '/llk/IR_all_yes/scripts/dtc/srcpos.c_pt.bc'
source_filename = "../scripts/dtc/srcpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcfile_state = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.search_path = type { ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.srcpos = type { i32, i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Couldn't open \22%s\22: %s\0A\00", align 1
@depfile = dso_local local_unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@srcfile_depth = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Includes nested too deeply\00", align 1
@current_srcfile = dso_local local_unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"srcfile\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"../scripts/dtc/srcpos.c\00", align 1
@__PRETTY_FUNCTION__.srcfile_pop = private unnamed_addr constant [24 x i8] c"_Bool srcfile_pop(void)\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Error closing \22%s\22: %s\0A\00", align 1
@search_path_tail = internal unnamed_addr global ptr null, align 8
@search_path_head = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"pos->next == NULL\00", align 1
@__PRETTY_FUNCTION__.srcpos_copy = private unnamed_addr constant [44 x i8] c"struct srcpos *srcpos_copy(struct srcpos *)\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"<no-file>\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"%s:%d.%d-%d.%d\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%s:%d.%d-%d\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%s:%d.%d\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"%s: %s \00", align 1
@initial_cpp = internal unnamed_addr global i1 false, align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"malloc() failed\0A\00", align 1
@initial_path = internal global ptr null, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@initial_pathlen = internal unnamed_addr global i32 0, align 4
@.str.20 = private unnamed_addr constant [20 x i8] c"<no-file>:<no-line>\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"<no-filename>\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"%s:%d:%d-%d:%d\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"%s, %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @srcfile_relative_open(ptr noundef %fname, ptr noundef writeonly %fullnamep) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %fname, ptr noundef nonnull dereferenceable(2) @.str) #16
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call1 = tail call ptr @xstrdup(ptr noundef nonnull @.str.1) #17
  br label %if.end6

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr @current_srcfile, align 8, !tbaa !5
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.then.i.i, label %if.end3.i

if.end3.i:                                        ; preds = %if.else
  %dir.i = getelementptr inbounds %struct.srcfile_state, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %dir.i, align 8, !tbaa !9
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end3.i
  %3 = load i8, ptr %fname, align 1, !tbaa !12
  %cmp.i.i = icmp eq i8 %3, 47
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i, %if.end3.i, %if.else
  %call.i.i = tail call ptr @xstrdup(ptr noundef %fname) #17
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  %call2.i.i = tail call ptr @join_path(ptr noundef nonnull %2, ptr noundef nonnull %fname) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %fullname.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  %call3.i.i = tail call ptr @fopen(ptr noundef %fullname.0.i.i, ptr noundef nonnull @.str.16) #17
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %try_open.exit.i, label %if.end6

try_open.exit.i:                                  ; preds = %if.end.i.i
  tail call void @free(ptr noundef %fullname.0.i.i) #17
  %node.029.i = load ptr, ptr @search_path_head, align 8, !tbaa !5
  %tobool531.i.not = icmp eq ptr %node.029.i, null
  br i1 %tobool531.i.not, label %if.then3, label %for.body.i

for.body.i:                                       ; preds = %try_open.exit26.i, %try_open.exit.i
  %node.032.i = phi ptr [ %node.0.i, %try_open.exit26.i ], [ %node.029.i, %try_open.exit.i ]
  %dirname.i = getelementptr inbounds %struct.search_path, ptr %node.032.i, i64 0, i32 1
  %4 = load ptr, ptr %dirname.i, align 8, !tbaa !13
  %tobool.not.i13.i = icmp eq ptr %4, null
  br i1 %tobool.not.i13.i, label %if.then.i17.i, label %lor.lhs.false.i15.i

lor.lhs.false.i15.i:                              ; preds = %for.body.i
  %5 = load i8, ptr %fname, align 1, !tbaa !12
  %cmp.i14.i = icmp eq i8 %5, 47
  br i1 %cmp.i14.i, label %if.then.i17.i, label %if.else.i19.i

if.then.i17.i:                                    ; preds = %lor.lhs.false.i15.i, %for.body.i
  %call.i16.i = tail call ptr @xstrdup(ptr noundef %fname) #17
  br label %if.end.i23.i

if.else.i19.i:                                    ; preds = %lor.lhs.false.i15.i
  %call2.i18.i = tail call ptr @join_path(ptr noundef nonnull %4, ptr noundef nonnull %fname) #17
  br label %if.end.i23.i

if.end.i23.i:                                     ; preds = %if.else.i19.i, %if.then.i17.i
  %fullname.0.i20.i = phi ptr [ %call.i16.i, %if.then.i17.i ], [ %call2.i18.i, %if.else.i19.i ]
  %call3.i21.i = tail call ptr @fopen(ptr noundef %fullname.0.i20.i, ptr noundef nonnull @.str.16) #17
  %tobool4.not.i22.i = icmp eq ptr %call3.i21.i, null
  br i1 %tobool4.not.i22.i, label %try_open.exit26.i, label %if.end6

try_open.exit26.i:                                ; preds = %if.end.i23.i
  tail call void @free(ptr noundef %fullname.0.i20.i) #17
  %node.0.i = load ptr, ptr %node.032.i, align 8, !tbaa !5
  %tobool5.i.not = icmp eq ptr %node.0.i, null
  br i1 %tobool5.i.not, label %if.then3, label %for.body.i

if.then3:                                         ; preds = %try_open.exit26.i, %try_open.exit.i
  %call4 = tail call ptr @__errno_location() #18
  %6 = load i32, ptr %call4, align 4, !tbaa !15
  %call5 = tail call ptr @strerror(i32 noundef %6) #17
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.2, ptr noundef %fname, ptr noundef %call5) #19
  unreachable

if.end6:                                          ; preds = %if.end.i23.i, %if.end.i.i, %if.then
  %f.1 = phi ptr [ %0, %if.then ], [ %call3.i.i, %if.end.i.i ], [ %call3.i21.i, %if.end.i23.i ]
  %fullname.0 = phi ptr [ %call1, %if.then ], [ %fullname.0.i.i, %if.end.i.i ], [ %fullname.0.i20.i, %if.end.i23.i ]
  %7 = load ptr, ptr @depfile, align 8, !tbaa !5
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef %fullname.0)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %tobool11.not = icmp eq ptr %fullnamep, null
  br i1 %tobool11.not, label %if.else13, label %if.then12

if.then12:                                        ; preds = %if.end10
  store ptr %fullname.0, ptr %fullnamep, align 8, !tbaa !5
  br label %if.end14

if.else13:                                        ; preds = %if.end10
  tail call void @free(ptr noundef %fullname.0) #17
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  ret ptr %f.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %str, ...) unnamed_addr #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #17
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = call i64 @fwrite(ptr nonnull @.str.17, i64 13, i64 1, ptr %0) #20
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 @vfprintf(ptr noundef %2, ptr noundef %str, ptr noundef nonnull %ap) #20
  call void @llvm.va_end(ptr nonnull %ap)
  call void @exit(i32 noundef 1) #21
  unreachable
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @srcfile_push(ptr noundef %fname) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @srcfile_depth, align 4, !tbaa !15
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @srcfile_depth, align 4, !tbaa !15
  %cmp = icmp sgt i32 %0, 199
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.4) #19
  unreachable

if.end:                                           ; preds = %entry
  %call.i = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #22
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %if.end
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #21
  unreachable

xmalloc.exit:                                     ; preds = %if.end
  %name = getelementptr inbounds %struct.srcfile_state, ptr %call.i, i64 0, i32 1
  %call1 = tail call ptr @srcfile_relative_open(ptr noundef %fname, ptr noundef nonnull %name)
  store ptr %call1, ptr %call.i, align 8, !tbaa !16
  %1 = load ptr, ptr %name, align 8, !tbaa !17
  %call.i16 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #16
  %tobool.not.i17 = icmp eq ptr %call.i16, null
  br i1 %tobool.not.i17, label %get_dirname.exit, label %if.then.i18

if.then.i18:                                      ; preds = %xmalloc.exit
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i16 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.i = shl i64 %sub.ptr.sub.i, 32
  %sext.i = add i64 %add.i, 4294967296
  %conv1.i = ashr exact i64 %sext.i, 32
  %call.i.i = tail call noalias ptr @malloc(i64 noundef %conv1.i) #22
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %xmalloc.exit.i

if.then.i.i:                                      ; preds = %if.then.i18
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #21
  unreachable

xmalloc.exit.i:                                   ; preds = %if.then.i18
  %conv3.i = ashr exact i64 %add.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i.i, ptr align 1 %1, i64 %conv3.i, i1 false) #17
  %arrayidx.i = getelementptr inbounds i8, ptr %call.i.i, i64 %conv3.i
  store i8 0, ptr %arrayidx.i, align 1, !tbaa !12
  br label %get_dirname.exit

get_dirname.exit:                                 ; preds = %xmalloc.exit.i, %xmalloc.exit
  %retval.0.i = phi ptr [ %call.i.i, %xmalloc.exit.i ], [ null, %xmalloc.exit ]
  %dir = getelementptr inbounds %struct.srcfile_state, ptr %call.i, i64 0, i32 2
  store ptr %retval.0.i, ptr %dir, align 8, !tbaa !9
  %2 = load ptr, ptr @current_srcfile, align 8, !tbaa !5
  %prev = getelementptr inbounds %struct.srcfile_state, ptr %call.i, i64 0, i32 5
  store ptr %2, ptr %prev, align 8, !tbaa !18
  %lineno = getelementptr inbounds %struct.srcfile_state, ptr %call.i, i64 0, i32 3
  store i32 1, ptr %lineno, align 8, !tbaa !19
  %colno = getelementptr inbounds %struct.srcfile_state, ptr %call.i, i64 0, i32 4
  store i32 1, ptr %colno, align 4, !tbaa !20
  store ptr %call.i, ptr @current_srcfile, align 8, !tbaa !5
  %3 = load i32, ptr @srcfile_depth, align 4, !tbaa !15
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %get_dirname.exit
  %call.i19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %conv.i = trunc i64 %call.i19 to i32
  %call1.i = tail call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull @initial_path, ptr noundef nonnull @.str.19, ptr noundef %1) #17
  store i32 0, ptr @initial_pathlen, align 4, !tbaa !15
  %cmp.not12.i = icmp eq i32 %conv.i, 0
  br i1 %cmp.not12.i, label %if.end7, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then5
  %4 = load ptr, ptr @initial_path, align 8, !tbaa !5
  %5 = and i64 %call.i19, 4294967295
  %xtraiter = and i64 %call.i19, 1
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %if.end7.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = sub nsw i64 %5, %xtraiter
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.1, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.1, %for.inc.i.1 ]
  %inc1113.i = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %inc10.i.1, %for.inc.i.1 ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.1, %for.inc.i.1 ]
  %arrayidx.i20 = getelementptr inbounds i8, ptr %4, i64 %indvars.iv.i
  %7 = load i8, ptr %arrayidx.i20, align 1, !tbaa !12
  %cmp4.i = icmp eq i8 %7, 47
  br i1 %cmp4.i, label %if.then.i21, label %for.inc.i

if.then.i21:                                      ; preds = %for.body.i
  %inc.i = add nsw i32 %inc1113.i, 1
  store i32 %inc.i, ptr @initial_pathlen, align 4, !tbaa !15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i21, %for.body.i
  %inc10.i = phi i32 [ %inc1113.i, %for.body.i ], [ %inc.i, %if.then.i21 ]
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %arrayidx.i20.1 = getelementptr inbounds i8, ptr %4, i64 %indvars.iv.next.i
  %8 = load i8, ptr %arrayidx.i20.1, align 1, !tbaa !12
  %cmp4.i.1 = icmp eq i8 %8, 47
  br i1 %cmp4.i.1, label %if.then.i21.1, label %for.inc.i.1

if.then.i21.1:                                    ; preds = %for.inc.i
  %inc.i.1 = add nsw i32 %inc10.i, 1
  store i32 %inc.i.1, ptr @initial_pathlen, align 4, !tbaa !15
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i21.1, %for.inc.i
  %inc10.i.1 = phi i32 [ %inc10.i, %for.inc.i ], [ %inc.i.1, %if.then.i21.1 ]
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %if.end7.loopexit.unr-lcssa, label %for.body.i

if.end7.loopexit.unr-lcssa:                       ; preds = %for.inc.i.1, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.1, %for.inc.i.1 ]
  %inc1113.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc10.i.1, %for.inc.i.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end7, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %if.end7.loopexit.unr-lcssa
  %arrayidx.i20.epil = getelementptr inbounds i8, ptr %4, i64 %indvars.iv.i.unr
  %9 = load i8, ptr %arrayidx.i20.epil, align 1, !tbaa !12
  %cmp4.i.epil = icmp eq i8 %9, 47
  br i1 %cmp4.i.epil, label %if.then.i21.epil, label %if.end7

if.then.i21.epil:                                 ; preds = %for.body.i.epil
  %inc.i.epil = add nsw i32 %inc1113.i.unr, 1
  store i32 %inc.i.epil, ptr @initial_pathlen, align 4, !tbaa !15
  br label %if.end7

if.end7:                                          ; preds = %if.then.i21.epil, %for.body.i.epil, %if.end7.loopexit.unr-lcssa, %if.then5, %get_dirname.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @srcfile_pop() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @current_srcfile, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 198, ptr noundef nonnull @__PRETTY_FUNCTION__.srcfile_pop) #21
  unreachable

if.end:                                           ; preds = %entry
  %prev = getelementptr inbounds %struct.srcfile_state, ptr %0, i64 0, i32 5
  %1 = load ptr, ptr %prev, align 8, !tbaa !18
  store ptr %1, ptr @current_srcfile, align 8, !tbaa !5
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %call = tail call i32 @fclose(ptr noundef %2)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.srcfile_state, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %name, align 8, !tbaa !17
  %call3 = tail call ptr @__errno_location() #18
  %4 = load i32, ptr %call3, align 4, !tbaa !15
  %call4 = tail call ptr @strerror(i32 noundef %4) #17
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.7, ptr noundef %3, ptr noundef %call4) #19
  unreachable

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr @current_srcfile, align 8, !tbaa !5
  %tobool6 = icmp ne ptr %5, null
  ret i1 %tobool6
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @srcfile_add_search_path(ptr noundef %dirname) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #21
  unreachable

xmalloc.exit:                                     ; preds = %entry
  store ptr null, ptr %call.i, align 8, !tbaa !21
  %call1 = tail call ptr @xstrdup(ptr noundef %dirname) #17
  %dirname2 = getelementptr inbounds %struct.search_path, ptr %call.i, i64 0, i32 1
  store ptr %call1, ptr %dirname2, align 8, !tbaa !13
  %0 = load ptr, ptr @search_path_tail, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %0, null
  %search_path_head. = select i1 %tobool.not, ptr @search_path_head, ptr %0
  store ptr %call.i, ptr %search_path_head., align 8, !tbaa !5
  store ptr %call.i, ptr @search_path_tail, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @srcpos_update(ptr nocapture noundef writeonly %pos, ptr nocapture noundef readonly %text, i32 noundef %len) local_unnamed_addr #10 {
entry:
  %0 = load ptr, ptr @current_srcfile, align 8, !tbaa !5
  %file = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 4
  store ptr %0, ptr %file, align 8, !tbaa !22
  %lineno = getelementptr inbounds %struct.srcfile_state, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %lineno, align 8, !tbaa !19
  store i32 %1, ptr %pos, align 8, !tbaa !24
  %colno = getelementptr inbounds %struct.srcfile_state, ptr %0, i64 0, i32 4
  %2 = load i32, ptr %colno, align 4, !tbaa !20
  %first_column = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 1
  store i32 %2, ptr %first_column, align 4, !tbaa !25
  %cmp16 = icmp sgt i32 %len, 0
  br i1 %cmp16, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %len to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %3 = icmp eq i32 %len, 1
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %for.body

for.body:                                         ; preds = %for.inc.1, %for.body.preheader.new
  %4 = phi i32 [ %1, %for.body.preheader.new ], [ %9, %for.inc.1 ]
  %5 = phi i32 [ %2, %for.body.preheader.new ], [ %storemerge.1, %for.inc.1 ]
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.1, %for.inc.1 ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.inc.1 ]
  %arrayidx = getelementptr inbounds i8, ptr %text, i64 %indvars.iv
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %cmp1 = icmp eq i8 %6, 10
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %lineno, align 8, !tbaa !19
  br label %for.inc

if.else:                                          ; preds = %for.body
  %inc6 = add nsw i32 %5, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %7 = phi i32 [ %4, %if.else ], [ %inc, %if.then ]
  %storemerge = phi i32 [ %inc6, %if.else ], [ 1, %if.then ]
  store i32 %storemerge, ptr %colno, align 4, !tbaa !20
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i8, ptr %text, i64 %indvars.iv.next
  %8 = load i8, ptr %arrayidx.1, align 1, !tbaa !12
  %cmp1.1 = icmp eq i8 %8, 10
  br i1 %cmp1.1, label %if.then.1, label %if.else.1

if.else.1:                                        ; preds = %for.inc
  %inc6.1 = add nsw i32 %storemerge, 1
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %inc.1 = add nsw i32 %7, 1
  store i32 %inc.1, ptr %lineno, align 8, !tbaa !19
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %if.else.1
  %9 = phi i32 [ %7, %if.else.1 ], [ %inc.1, %if.then.1 ]
  %storemerge.1 = phi i32 [ %inc6.1, %if.else.1 ], [ 1, %if.then.1 ]
  store i32 %storemerge.1, ptr %colno, align 4, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.inc.1, %for.body.preheader
  %.lcssa.ph = phi i32 [ undef, %for.body.preheader ], [ %9, %for.inc.1 ]
  %storemerge.lcssa.ph = phi i32 [ undef, %for.body.preheader ], [ %storemerge.1, %for.inc.1 ]
  %.unr = phi i32 [ %1, %for.body.preheader ], [ %9, %for.inc.1 ]
  %.unr19 = phi i32 [ %2, %for.body.preheader ], [ %storemerge.1, %for.inc.1 ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.1, %for.inc.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa
  %arrayidx.epil = getelementptr inbounds i8, ptr %text, i64 %indvars.iv.unr
  %10 = load i8, ptr %arrayidx.epil, align 1, !tbaa !12
  %cmp1.epil = icmp eq i8 %10, 10
  br i1 %cmp1.epil, label %if.then.epil, label %if.else.epil

if.else.epil:                                     ; preds = %for.body.epil
  %inc6.epil = add nsw i32 %.unr19, 1
  br label %for.inc.epil

if.then.epil:                                     ; preds = %for.body.epil
  %inc.epil = add nsw i32 %.unr, 1
  store i32 %inc.epil, ptr %lineno, align 8, !tbaa !19
  br label %for.inc.epil

for.inc.epil:                                     ; preds = %if.then.epil, %if.else.epil
  %11 = phi i32 [ %.unr, %if.else.epil ], [ %inc.epil, %if.then.epil ]
  %storemerge.epil = phi i32 [ %inc6.epil, %if.else.epil ], [ 1, %if.then.epil ]
  store i32 %storemerge.epil, ptr %colno, align 4, !tbaa !20
  br label %for.end

for.end:                                          ; preds = %for.inc.epil, %for.end.loopexit.unr-lcssa, %entry
  %12 = phi i32 [ %2, %entry ], [ %storemerge.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %storemerge.epil, %for.inc.epil ]
  %13 = phi i32 [ %1, %entry ], [ %.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %11, %for.inc.epil ]
  %last_line = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 2
  store i32 %13, ptr %last_line, align 8, !tbaa !26
  %last_column = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 3
  store i32 %12, ptr %last_column, align 4, !tbaa !27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @srcpos_copy(ptr noundef readonly %pos) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %pos, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call.i = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #22
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %if.end
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #21
  unreachable

xmalloc.exit:                                     ; preds = %if.end
  %next = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 5
  %0 = load ptr, ptr %next, align 8, !tbaa !28
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.end2, label %if.else

if.else:                                          ; preds = %xmalloc.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 263, ptr noundef nonnull @__PRETTY_FUNCTION__.srcpos_copy) #21
  unreachable

if.end2:                                          ; preds = %xmalloc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %call.i, ptr noundef nonnull align 8 dereferenceable(32) %pos, i64 32, i1 false)
  %call.i12 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #22
  %tobool.not.i13 = icmp eq ptr %call.i12, null
  br i1 %tobool.not.i13, label %if.then.i14, label %xmalloc.exit15

if.then.i14:                                      ; preds = %if.end2
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #21
  unreachable

xmalloc.exit15:                                   ; preds = %if.end2
  %file = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 4
  %1 = load ptr, ptr %file, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %call.i12, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %file4 = getelementptr inbounds %struct.srcpos, ptr %call.i, i64 0, i32 4
  store ptr %call.i12, ptr %file4, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %xmalloc.exit15, %entry
  %retval.0 = phi ptr [ %call.i, %xmalloc.exit15 ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local ptr @srcpos_extend(ptr noundef %pos, ptr noundef %newtail) local_unnamed_addr #10 {
entry:
  %tobool.not = icmp eq ptr %pos, null
  br i1 %tobool.not, label %cleanup, label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %p.0 = phi ptr [ %0, %for.cond ], [ %pos, %entry ]
  %next = getelementptr inbounds %struct.srcpos, ptr %p.0, i64 0, i32 5
  %0 = load ptr, ptr %next, align 8, !tbaa !28
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  %next.le = getelementptr inbounds %struct.srcpos, ptr %p.0, i64 0, i32 5
  store ptr %newtail, ptr %next.le, align 8, !tbaa !28
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry
  %retval.0 = phi ptr [ %pos, %for.end ], [ %newtail, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @srcpos_string(ptr nocapture noundef readonly %pos) local_unnamed_addr #0 {
entry:
  %pos_str = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos_str) #17
  %file = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 4
  %0 = load ptr, ptr %file, align 8, !tbaa !22
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.srcfile_state, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %name, align 8, !tbaa !17
  %tobool2.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool2.not, ptr @.str.9, ptr %1
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %fname.0 = phi ptr [ @.str.9, %entry ], [ %spec.select, %land.lhs.true ]
  %2 = load i32, ptr %pos, align 8, !tbaa !24
  %last_line = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 2
  %3 = load i32, ptr %last_line, align 8, !tbaa !26
  %cmp.not = icmp eq i32 %2, %3
  %first_column8 = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 1
  %4 = load i32, ptr %first_column8, align 4, !tbaa !25
  %last_column9 = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 3
  %5 = load i32, ptr %last_column9, align 4, !tbaa !27
  br i1 %cmp.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %pos_str, ptr noundef nonnull @.str.10, ptr noundef nonnull %fname.0, i32 noundef %2, i32 noundef %4, i32 noundef %3, i32 noundef %5) #17
  br label %if.end21

if.else:                                          ; preds = %if.end
  %cmp10.not = icmp eq i32 %4, %5
  br i1 %cmp10.not, label %if.else16, label %if.then11

if.then11:                                        ; preds = %if.else
  %call15 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %pos_str, ptr noundef nonnull @.str.11, ptr noundef nonnull %fname.0, i32 noundef %2, i32 noundef %4, i32 noundef %5) #17
  br label %if.end21

if.else16:                                        ; preds = %if.else
  %call19 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %pos_str, ptr noundef nonnull @.str.12, ptr noundef nonnull %fname.0, i32 noundef %2, i32 noundef %4) #17
  br label %if.end21

if.end21:                                         ; preds = %if.else16, %if.then11, %if.then5
  %6 = load ptr, ptr %pos_str, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos_str) #17
  ret ptr %6
}

declare i32 @xasprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @srcpos_string_first(ptr noundef %pos, i32 noundef %level) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc ptr @srcpos_string_comment(ptr noundef %pos, i1 noundef zeroext true, i32 noundef %level)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @srcpos_string_comment(ptr noundef readonly %pos, i1 noundef zeroext %first_line, i32 noundef %level) unnamed_addr #0 {
entry:
  %pos_str = alloca ptr, align 8
  %first = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos_str) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %first) #17
  %tobool.not = icmp eq ptr %pos, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp = icmp sgt i32 %level, 1
  br i1 %cmp, label %if.then1, label %cleanup

if.then1:                                         ; preds = %if.then
  %call = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %pos_str, ptr noundef nonnull @.str.20) #17
  %0 = load ptr, ptr %pos_str, align 8, !tbaa !5
  br label %cleanup

if.end:                                           ; preds = %entry
  %file = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 4
  %1 = load ptr, ptr %file, align 8, !tbaa !22
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end25, label %if.else4

if.else4:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.srcfile_state, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %name, align 8, !tbaa !17
  %tobool6.not = icmp eq ptr %2, null
  br i1 %tobool6.not, label %if.end25, label %if.else8

if.else8:                                         ; preds = %if.else4
  %cmp9 = icmp sgt i32 %level, 1
  br i1 %cmp9, label %if.end35, label %if.else13

if.else13:                                        ; preds = %if.else8
  %3 = load i8, ptr %2, align 1, !tbaa !12
  %tobool.not61.i = icmp eq i8 %3, 0
  br i1 %tobool.not61.i, label %if.else30.thread, label %land.rhs.preheader.i

if.else30.thread:                                 ; preds = %if.else13
  %last_line3391 = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 2
  %cond.in92 = select i1 %first_line, ptr %pos, ptr %last_line3391
  %cond93 = load i32, ptr %cond.in92, align 8, !tbaa !15
  %call3494 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %first, ptr noundef nonnull @.str.23, ptr noundef nonnull %2, i32 noundef %cond93) #17
  br label %if.end38

land.rhs.preheader.i:                             ; preds = %if.else13
  %4 = load ptr, ptr @initial_path, align 8, !tbaa !5
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i, %land.rhs.preheader.i
  %5 = phi i8 [ %7, %if.end.i ], [ %3, %land.rhs.preheader.i ]
  %p1.065.i = phi ptr [ %incdec.ptr.i, %if.end.i ], [ %2, %land.rhs.preheader.i ]
  %p2.064.i = phi ptr [ %incdec.ptr11.i, %if.end.i ], [ %4, %land.rhs.preheader.i ]
  %slashes.063.i = phi i32 [ %spec.select60.i, %if.end.i ], [ 0, %land.rhs.preheader.i ]
  %prevslash1.062.i = phi ptr [ %spec.select.i, %if.end.i ], [ null, %land.rhs.preheader.i ]
  %6 = load i8, ptr %p2.064.i, align 1, !tbaa !12
  %tobool2.not.i = icmp ne i8 %6, 0
  %cmp.not.i = icmp eq i8 %5, %6
  %or.cond.i = select i1 %tobool2.not.i, i1 %cmp.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %for.end.i

if.end.i:                                         ; preds = %land.rhs.i
  %cmp7.i = icmp eq i8 %5, 47
  %spec.select.i = select i1 %cmp7.i, ptr %p1.065.i, ptr %prevslash1.062.i
  %inc.i = zext i1 %cmp7.i to i32
  %spec.select60.i = add nuw nsw i32 %slashes.063.i, %inc.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p1.065.i, i64 1
  %incdec.ptr11.i = getelementptr inbounds i8, ptr %p2.064.i, i64 1
  %7 = load i8, ptr %incdec.ptr.i, align 1, !tbaa !12
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %for.end.i, label %land.rhs.i

for.end.i:                                        ; preds = %if.end.i, %land.rhs.i
  %prevslash1.0.lcssa.i = phi ptr [ %prevslash1.062.i, %land.rhs.i ], [ %spec.select.i, %if.end.i ]
  %slashes.0.lcssa.i = phi i32 [ %slashes.063.i, %land.rhs.i ], [ %spec.select60.i, %if.end.i ]
  %add.ptr.i = getelementptr inbounds i8, ptr %prevslash1.0.lcssa.i, i64 1
  %tobool12.not.i = icmp eq ptr %prevslash1.0.lcssa.i, null
  br i1 %tobool12.not.i, label %if.end25, label %if.then13.i

if.then13.i:                                      ; preds = %for.end.i
  %8 = load i32, ptr @initial_pathlen, align 4, !tbaa !15
  %sub.i = sub nsw i32 %8, %slashes.0.lcssa.i
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i64
  %sub.ptr.sub.neg.i = sub i64 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %sub14.i = add i64 %sub.ptr.sub.neg.i, %call.i
  %conv15.i = trunc i64 %sub14.i to i32
  %mul.i = mul nsw i32 %sub.i, 3
  %add.i = add i32 %mul.i, 1
  %add16.i = add i32 %add.i, %conv15.i
  %conv17.i = sext i32 %add16.i to i64
  %call.i.i = tail call noalias ptr @malloc(i64 noundef %conv17.i) #22
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.cond19.preheader.i

for.cond19.preheader.i:                           ; preds = %if.then13.i
  %cmp20.not69.i = icmp eq i32 %8, %slashes.0.lcssa.i
  br i1 %cmp20.not69.i, label %shorten_to_initial_path.exit, label %for.body22.i.preheader

for.body22.i.preheader:                           ; preds = %for.cond19.preheader.i
  %.neg = add i32 %slashes.0.lcssa.i, 1
  %xtraiter = and i32 %sub.i, 1
  %9 = icmp eq i32 %8, %.neg
  br i1 %9, label %for.end32.loopexit.i.unr-lcssa, label %for.body22.i.preheader.new

for.body22.i.preheader.new:                       ; preds = %for.body22.i.preheader
  %unroll_iter = and i32 %sub.i, -2
  br label %for.body22.i

if.then.i.i:                                      ; preds = %if.then13.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #21
  unreachable

for.body22.i:                                     ; preds = %for.body22.i, %for.body22.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %for.body22.i.preheader.new ], [ %indvars.iv.next.i.1, %for.body22.i ]
  %niter = phi i32 [ 0, %for.body22.i.preheader.new ], [ %niter.next.1, %for.body22.i ]
  %10 = or i64 %indvars.iv.i, 1
  %arrayidx.i = getelementptr inbounds i8, ptr %call.i.i, i64 %indvars.iv.i
  store i8 46, ptr %arrayidx.i, align 1, !tbaa !12
  %11 = add nuw nsw i64 %indvars.iv.i, 2
  %arrayidx26.i = getelementptr inbounds i8, ptr %call.i.i, i64 %10
  store i8 46, ptr %arrayidx26.i, align 1, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3
  %arrayidx29.i = getelementptr inbounds i8, ptr %call.i.i, i64 %11
  store i8 47, ptr %arrayidx29.i, align 1, !tbaa !12
  %12 = add nuw nsw i64 %indvars.iv.i, 4
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %call.i.i, i64 %indvars.iv.next.i
  store i8 46, ptr %arrayidx.i.1, align 1, !tbaa !12
  %13 = add nuw nsw i64 %indvars.iv.i, 5
  %arrayidx26.i.1 = getelementptr inbounds i8, ptr %call.i.i, i64 %12
  store i8 46, ptr %arrayidx26.i.1, align 1, !tbaa !12
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 6
  %arrayidx29.i.1 = getelementptr inbounds i8, ptr %call.i.i, i64 %13
  store i8 47, ptr %arrayidx29.i.1, align 1, !tbaa !12
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end32.loopexit.i.unr-lcssa, label %for.body22.i

for.end32.loopexit.i.unr-lcssa:                   ; preds = %for.body22.i, %for.body22.i.preheader
  %indvars.iv.next.i.lcssa.ph = phi i64 [ undef, %for.body22.i.preheader ], [ %indvars.iv.next.i.1, %for.body22.i ]
  %indvars.iv.i.unr = phi i64 [ 0, %for.body22.i.preheader ], [ %indvars.iv.next.i.1, %for.body22.i ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end32.loopexit.i, label %for.body22.i.epil

for.body22.i.epil:                                ; preds = %for.end32.loopexit.i.unr-lcssa
  %14 = add nuw nsw i64 %indvars.iv.i.unr, 1
  %arrayidx.i.epil = getelementptr inbounds i8, ptr %call.i.i, i64 %indvars.iv.i.unr
  store i8 46, ptr %arrayidx.i.epil, align 1, !tbaa !12
  %15 = add nuw nsw i64 %indvars.iv.i.unr, 2
  %arrayidx26.i.epil = getelementptr inbounds i8, ptr %call.i.i, i64 %14
  store i8 46, ptr %arrayidx26.i.epil, align 1, !tbaa !12
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.unr, 3
  %arrayidx29.i.epil = getelementptr inbounds i8, ptr %call.i.i, i64 %15
  store i8 47, ptr %arrayidx29.i.epil, align 1, !tbaa !12
  br label %for.end32.loopexit.i

for.end32.loopexit.i:                             ; preds = %for.body22.i.epil, %for.end32.loopexit.i.unr-lcssa
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.lcssa.ph, %for.end32.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %for.body22.i.epil ]
  %phi.cast.i = and i64 %indvars.iv.next.i.lcssa, 4294967295
  br label %shorten_to_initial_path.exit

shorten_to_initial_path.exit:                     ; preds = %for.end32.loopexit.i, %for.cond19.preheader.i
  %j.0.lcssa.i = phi i64 [ 0, %for.cond19.preheader.i ], [ %phi.cast.i, %for.end32.loopexit.i ]
  %add.ptr33.i = getelementptr inbounds i8, ptr %call.i.i, i64 %j.0.lcssa.i
  %call34.i = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %add.ptr33.i, ptr noundef nonnull %add.ptr.i) #17
  br label %if.end25

if.end25:                                         ; preds = %shorten_to_initial_path.exit, %for.end.i, %if.else4, %if.end
  %fname.0 = phi ptr [ @.str.9, %if.end ], [ @.str.21, %if.else4 ], [ %call.i.i, %shorten_to_initial_path.exit ], [ %2, %for.end.i ]
  %fresh_fname.0 = phi i1 [ false, %if.end ], [ false, %if.else4 ], [ true, %shorten_to_initial_path.exit ], [ false, %for.end.i ]
  %cmp26 = icmp sgt i32 %level, 1
  br i1 %cmp26, label %if.end35, label %if.else30

if.else30:                                        ; preds = %if.end25
  %last_line33 = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 2
  %cond.in = select i1 %first_line, ptr %pos, ptr %last_line33
  %cond = load i32, ptr %cond.in, align 8, !tbaa !15
  %call34 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %first, ptr noundef nonnull @.str.23, ptr noundef nonnull %fname.0, i32 noundef %cond) #17
  br i1 %fresh_fname.0, label %if.then37, label %if.end38

if.end35:                                         ; preds = %if.end25, %if.else8
  %fresh_fname.082 = phi i1 [ %fresh_fname.0, %if.end25 ], [ false, %if.else8 ]
  %fname.079 = phi ptr [ %fname.0, %if.end25 ], [ %2, %if.else8 ]
  %16 = load i32, ptr %pos, align 8, !tbaa !24
  %first_column = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 1
  %17 = load i32, ptr %first_column, align 4, !tbaa !25
  %last_line = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 2
  %18 = load i32, ptr %last_line, align 8, !tbaa !26
  %last_column = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 3
  %19 = load i32, ptr %last_column, align 4, !tbaa !27
  %call29 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %first, ptr noundef nonnull @.str.22, ptr noundef %fname.079, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19) #17
  br i1 %fresh_fname.082, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end35, %if.else30
  %fname.08083 = phi ptr [ %fname.0, %if.else30 ], [ %fname.079, %if.end35 ]
  call void @free(ptr noundef %fname.08083) #17
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35, %if.else30, %if.else30.thread
  %next = getelementptr inbounds %struct.srcpos, ptr %pos, i64 0, i32 5
  %20 = load ptr, ptr %next, align 8, !tbaa !28
  %cmp39.not = icmp eq ptr %20, null
  br i1 %cmp39.not, label %if.else45, label %if.then40

if.then40:                                        ; preds = %if.end38
  %call43 = call fastcc ptr @srcpos_string_comment(ptr noundef nonnull %20, i1 noundef zeroext %first_line, i32 noundef %level)
  %21 = load ptr, ptr %first, align 8, !tbaa !5
  %call44 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %pos_str, ptr noundef nonnull @.str.24, ptr noundef %21, ptr noundef %call43) #17
  %22 = load ptr, ptr %first, align 8, !tbaa !5
  call void @free(ptr noundef %22) #17
  call void @free(ptr noundef %call43) #17
  %.pre = load ptr, ptr %pos_str, align 8, !tbaa !5
  br label %cleanup

if.else45:                                        ; preds = %if.end38
  %23 = load ptr, ptr %first, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %if.else45, %if.then40, %if.then1, %if.then
  %retval.0 = phi ptr [ %0, %if.then1 ], [ null, %if.then ], [ %23, %if.else45 ], [ %.pre, %if.then40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %first) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos_str) #17
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @srcpos_string_last(ptr noundef %pos, i32 noundef %level) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc ptr @srcpos_string_comment(ptr noundef %pos, i1 noundef zeroext false, i32 noundef %level)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local void @srcpos_verror(ptr nocapture noundef readonly %pos, ptr noundef %prefix, ptr nocapture noundef readonly %fmt, ptr noundef %va) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @srcpos_string(ptr noundef %pos)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %prefix, ptr noundef %call) #20
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = tail call i32 @vfprintf(ptr noundef %1, ptr noundef %fmt, ptr noundef %va) #20
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %fputc = tail call i32 @fputc(i32 10, ptr %2)
  tail call void @free(ptr noundef %call) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @srcpos_error(ptr nocapture noundef readonly %pos, ptr noundef %prefix, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #0 {
entry:
  %va = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %va) #17
  call void @llvm.va_start(ptr nonnull %va)
  %call.i = call ptr @srcpos_string(ptr noundef %pos) #17
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %prefix, ptr noundef %call.i) #23
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2.i = call i32 @vfprintf(ptr noundef %1, ptr noundef %fmt, ptr noundef nonnull %va) #23
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %fputc.i = call i32 @fputc(i32 10, ptr %2) #17
  call void @free(ptr noundef %call.i) #17
  call void @llvm.va_end(ptr nonnull %va)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %va) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: nounwind uwtable
define dso_local void @srcpos_set_line(ptr noundef %f, i32 noundef %l) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @current_srcfile, align 8, !tbaa !5
  %name = getelementptr inbounds %struct.srcfile_state, ptr %0, i64 0, i32 1
  store ptr %f, ptr %name, align 8, !tbaa !17
  %lineno = getelementptr inbounds %struct.srcfile_state, ptr %0, i64 0, i32 3
  store i32 %l, ptr %lineno, align 8, !tbaa !19
  %.b = load i1, ptr @initial_cpp, align 1
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, ptr @initial_cpp, align 1
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %f) #16
  %conv.i = trunc i64 %call.i to i32
  %call1.i = tail call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull @initial_path, ptr noundef nonnull @.str.19, ptr noundef %f) #17
  store i32 0, ptr @initial_pathlen, align 4, !tbaa !15
  %cmp.not12.i = icmp eq i32 %conv.i, 0
  br i1 %cmp.not12.i, label %if.end, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %1 = load ptr, ptr @initial_path, align 8, !tbaa !5
  %2 = and i64 %call.i, 4294967295
  %xtraiter = and i64 %call.i, 1
  %3 = icmp eq i64 %2, 1
  br i1 %3, label %if.end.loopexit.unr-lcssa, label %for.body.lr.ph.i.new

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = sub nsw i64 %2, %xtraiter
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.1, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.1, %for.inc.i.1 ]
  %inc1113.i = phi i32 [ 0, %for.body.lr.ph.i.new ], [ %inc10.i.1, %for.inc.i.1 ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.1, %for.inc.i.1 ]
  %arrayidx.i = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i
  %4 = load i8, ptr %arrayidx.i, align 1, !tbaa !12
  %cmp4.i = icmp eq i8 %4, 47
  br i1 %cmp4.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %inc.i = add nsw i32 %inc1113.i, 1
  store i32 %inc.i, ptr @initial_pathlen, align 4, !tbaa !15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %inc10.i = phi i32 [ %inc1113.i, %for.body.i ], [ %inc.i, %if.then.i ]
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next.i
  %5 = load i8, ptr %arrayidx.i.1, align 1, !tbaa !12
  %cmp4.i.1 = icmp eq i8 %5, 47
  br i1 %cmp4.i.1, label %if.then.i.1, label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.inc.i
  %inc.i.1 = add nsw i32 %inc10.i, 1
  store i32 %inc.i.1, ptr @initial_pathlen, align 4, !tbaa !15
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.1, %for.inc.i
  %inc10.i.1 = phi i32 [ %inc10.i, %for.inc.i ], [ %inc.i.1, %if.then.i.1 ]
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %if.end.loopexit.unr-lcssa, label %for.body.i

if.end.loopexit.unr-lcssa:                        ; preds = %for.inc.i.1, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.1, %for.inc.i.1 ]
  %inc1113.i.unr = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc10.i.1, %for.inc.i.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %if.end.loopexit.unr-lcssa
  %arrayidx.i.epil = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i.unr
  %6 = load i8, ptr %arrayidx.i.epil, align 1, !tbaa !12
  %cmp4.i.epil = icmp eq i8 %6, 47
  br i1 %cmp4.i.epil, label %if.then.i.epil, label %if.end

if.then.i.epil:                                   ; preds = %for.body.i.epil
  %inc.i.epil = add nsw i32 %inc1113.i.unr, 1
  store i32 %inc.i.epil, ptr @initial_pathlen, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then.i.epil, %for.body.i.epil, %if.end.loopexit.unr-lcssa, %if.then, %entry
  ret void
}

declare ptr @join_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind readnone willreturn }
attributes #19 = { noreturn }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { cold nounwind }

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
!10 = !{!"srcfile_state", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !6, i64 32}
!11 = !{!"int", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !6, i64 8}
!14 = !{!"search_path", !6, i64 0, !6, i64 8}
!15 = !{!11, !11, i64 0}
!16 = !{!10, !6, i64 0}
!17 = !{!10, !6, i64 8}
!18 = !{!10, !6, i64 32}
!19 = !{!10, !11, i64 24}
!20 = !{!10, !11, i64 28}
!21 = !{!14, !6, i64 0}
!22 = !{!23, !6, i64 16}
!23 = !{!"srcpos", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !6, i64 16, !6, i64 24}
!24 = !{!23, !11, i64 0}
!25 = !{!23, !11, i64 4}
!26 = !{!23, !11, i64 8}
!27 = !{!23, !11, i64 12}
!28 = !{!23, !6, i64 24}
