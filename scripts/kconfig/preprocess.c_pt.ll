; ModuleID = '/llk/IR_all_yes/scripts/kconfig/preprocess.c_pt.bc'
source_filename = "../scripts/kconfig/preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { ptr, ptr }
%struct.function = type { ptr, i32, i32, ptr }
%struct.variable = type { ptr, ptr, i32, i32, %struct.list_head }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.file = type { ptr, ptr, ptr, i32 }
%struct.env = type { ptr, ptr, %struct.list_head }

@env_list = internal global %struct.list_head { ptr @env_list, ptr @env_list }, align 8
@.str = private unnamed_addr constant [20 x i8] c"ifneq \22$(%s)\22 \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s: FORCE\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"endif\0A\00", align 1
@variable_list = internal global %struct.list_head { ptr @variable_list, ptr @variable_list }, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"unterminated reference to '%s': missing ')'\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"%s:%d: \00", align 1
@current_file = external local_unnamed_addr global ptr, align 8
@yylineno = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"too many function arguments\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Recursive variable '%s' references itself (eventually)\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Too deep recursive expansion\00", align 1
@function_table = internal unnamed_addr constant [6 x %struct.function] [%struct.function { ptr @.str.14, i32 2, i32 2, ptr @do_error_if }, %struct.function { ptr @.str.15, i32 0, i32 0, ptr @do_filename }, %struct.function { ptr @.str.16, i32 1, i32 1, ptr @do_info }, %struct.function { ptr @.str.17, i32 0, i32 0, ptr @do_lineno }, %struct.function { ptr @.str.18, i32 1, i32 1, ptr @do_shell }, %struct.function { ptr @.str.19, i32 2, i32 2, ptr @do_warning_if }], align 16
@.str.12 = private unnamed_addr constant [42 x i8] c"too few function arguments passed to '%s'\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"too many function arguments passed to '%s'\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"error-if\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"lineno\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"warning-if\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"%s:%d: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @env_write_dep(ptr nocapture noundef %f, ptr noundef %autoconfig_name) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @env_list, align 8, !tbaa !5
  %cmp.not21 = icmp eq ptr %0, @env_list
  br i1 %cmp.not21, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %entry
  %.pn.in22 = phi ptr [ %.pn, %for.body ], [ %0, %entry ]
  %e.0 = getelementptr inbounds i8, ptr %.pn.in22, i64 -16
  %.pn = load ptr, ptr %.pn.in22, align 8, !tbaa !10
  %1 = load ptr, ptr %e.0, align 8, !tbaa !12
  %value = getelementptr inbounds i8, ptr %.pn.in22, i64 -8
  %2 = load ptr, ptr %value, align 8, !tbaa !13
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %2)
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.1, ptr noundef %autoconfig_name)
  %3 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 6, i64 1, ptr %f)
  %prev.i.i = getelementptr inbounds i8, ptr %.pn.in22, i64 8
  %4 = load ptr, ptr %prev.i.i, align 8, !tbaa !14
  %5 = load ptr, ptr %.pn.in22, align 8, !tbaa !5
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i64 0, i32 1
  store ptr %4, ptr %prev1.i.i.i, align 8, !tbaa !14
  store ptr %5, ptr %4, align 8, !tbaa !5
  store ptr inttoptr (i64 1048832 to ptr), ptr %.pn.in22, align 8, !tbaa !5
  store ptr inttoptr (i64 2097664 to ptr), ptr %prev.i.i, align 8, !tbaa !14
  %6 = load ptr, ptr %e.0, align 8, !tbaa !12
  tail call void @free(ptr noundef %6) #16
  %7 = load ptr, ptr %value, align 8, !tbaa !13
  tail call void @free(ptr noundef %7) #16
  tail call void @free(ptr noundef nonnull %e.0) #16
  %cmp.not = icmp eq ptr %.pn, @env_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @variable_add(ptr noundef %name, ptr noundef %value, i32 noundef %flavor) local_unnamed_addr #0 {
entry:
  %in.addr.i.i = alloca ptr, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %.pn.in.i = phi ptr [ @variable_list, %entry ], [ %.pn.i, %for.body.i ]
  %.pn.i = load ptr, ptr %.pn.in.i, align 8, !tbaa !5
  %cmp.not.i = icmp eq ptr %.pn.i, @variable_list
  br i1 %cmp.not.i, label %if.else4, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %v.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24
  %0 = load ptr, ptr %v.0.i, align 8, !tbaa !15
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name, ptr noundef nonnull dereferenceable(1) %0) #17
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %for.cond.i

if.then:                                          ; preds = %for.body.i
  %cmp = icmp eq i32 %flavor, 2
  br i1 %cmp, label %if.end11.thread, label %if.else

if.else:                                          ; preds = %if.then
  %v.0.i.le = getelementptr inbounds i8, ptr %.pn.i, i64 -24
  %value3 = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %1 = load ptr, ptr %value3, align 8, !tbaa !18
  tail call void @free(ptr noundef %1) #16
  br label %if.end11

if.else4:                                         ; preds = %for.cond.i
  %cmp5 = icmp eq i32 %flavor, 2
  %call8 = tail call ptr @xmalloc(i64 noundef 40) #16
  %call9 = tail call ptr @xstrdup(ptr noundef %name) #16
  store ptr %call9, ptr %call8, align 8, !tbaa !15
  %exp_count = getelementptr inbounds %struct.variable, ptr %call8, i64 0, i32 3
  store i32 0, ptr %exp_count, align 4, !tbaa !19
  %node = getelementptr inbounds %struct.variable, ptr %call8, i64 0, i32 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @variable_list, i64 0, i32 1), align 8, !tbaa !14
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @variable_list, i64 0, i32 1), align 8, !tbaa !14
  store ptr @variable_list, ptr %node, align 8, !tbaa !5
  %prev3.i.i = getelementptr inbounds %struct.variable, ptr %call8, i64 0, i32 4, i32 1
  store ptr %2, ptr %prev3.i.i, align 8, !tbaa !14
  store ptr %node, ptr %2, align 8, !tbaa !5
  br i1 %cmp5, label %if.end18.thread, label %if.end11

if.end18.thread:                                  ; preds = %if.else4
  %flavor1260 = getelementptr inbounds %struct.variable, ptr %call8, i64 0, i32 2
  store i32 1, ptr %flavor1260, align 8, !tbaa !20
  %call1772 = tail call ptr @xstrdup(ptr noundef %value) #16
  br label %if.else32

if.end11:                                         ; preds = %if.else4, %if.else
  %v.0 = phi ptr [ %v.0.i.le, %if.else ], [ %call8, %if.else4 ]
  %flavor12 = getelementptr inbounds %struct.variable, ptr %v.0, i64 0, i32 2
  store i32 %flavor, ptr %flavor12, align 8, !tbaa !20
  %cmp13 = icmp eq i32 %flavor, 0
  br i1 %cmp13, label %if.then14, label %if.end18

if.end11.thread:                                  ; preds = %if.then
  %flavor2 = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %3 = load i32, ptr %flavor2, align 8, !tbaa !20
  %cmp1379 = icmp eq i32 %3, 0
  br i1 %cmp1379, label %if.then14.thread, label %if.end18.thread85

if.then14.thread:                                 ; preds = %if.end11.thread
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i.i) #16
  store ptr %value, ptr %in.addr.i.i, align 8, !tbaa !21
  %call.i.i91 = call fastcc ptr @__expand_string(ptr noundef nonnull %in.addr.i.i, ptr noundef nonnull @is_end_of_str, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i.i) #16
  br label %if.then20

if.end18.thread85:                                ; preds = %if.end11.thread
  %call1788 = tail call ptr @xstrdup(ptr noundef %value) #16
  br label %if.then20

if.then14:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i.i) #16
  store ptr %value, ptr %in.addr.i.i, align 8, !tbaa !21
  %call.i.i = call fastcc ptr @__expand_string(ptr noundef nonnull %in.addr.i.i, ptr noundef nonnull @is_end_of_str, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i.i) #16
  br label %if.else32

if.end18:                                         ; preds = %if.end11
  %call17 = tail call ptr @xstrdup(ptr noundef %value) #16
  br label %if.else32

if.then20:                                        ; preds = %if.end18.thread85, %if.then14.thread
  %new_value.068 = phi ptr [ %call1788, %if.end18.thread85 ], [ %call.i.i91, %if.then14.thread ]
  %value21 = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %4 = load ptr, ptr %value21, align 8, !tbaa !18
  %call23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #17
  %call24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %new_value.068) #17
  %add = add i64 %call23, 2
  %add25 = add i64 %add, %call24
  %call26 = tail call ptr @xrealloc(ptr noundef %4, i64 noundef %add25) #16
  store ptr %call26, ptr %value21, align 8, !tbaa !18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %call26)
  %endptr = getelementptr i8, ptr %call26, i64 %strlen
  store i16 32, ptr %endptr, align 1
  %5 = load ptr, ptr %value21, align 8, !tbaa !18
  %call31 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %new_value.068) #16
  tail call void @free(ptr noundef %new_value.068) #16
  br label %if.end34

if.else32:                                        ; preds = %if.end18, %if.then14, %if.end18.thread
  %new_value.069 = phi ptr [ %call.i.i, %if.then14 ], [ %call17, %if.end18 ], [ %call1772, %if.end18.thread ]
  %v.06267 = phi ptr [ %v.0, %if.then14 ], [ %v.0, %if.end18 ], [ %call8, %if.end18.thread ]
  %value33 = getelementptr inbounds %struct.variable, ptr %v.06267, i64 0, i32 1
  store ptr %new_value.069, ptr %value33, align 8, !tbaa !18
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then20
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #4

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @variable_all_del() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @variable_list, align 8, !tbaa !5
  %cmp.not15 = icmp eq ptr %0, @variable_list
  br i1 %cmp.not15, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %entry
  %.pn.in16 = phi ptr [ %.pn, %for.body ], [ %0, %entry ]
  %v.0 = getelementptr inbounds i8, ptr %.pn.in16, i64 -24
  %.pn = load ptr, ptr %.pn.in16, align 8, !tbaa !5
  %prev.i.i = getelementptr inbounds i8, ptr %.pn.in16, i64 8
  %1 = load ptr, ptr %prev.i.i, align 8, !tbaa !14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i64 0, i32 1
  store ptr %1, ptr %prev1.i.i.i, align 8, !tbaa !14
  store ptr %.pn, ptr %1, align 8, !tbaa !5
  store ptr inttoptr (i64 1048832 to ptr), ptr %.pn.in16, align 8, !tbaa !5
  store ptr inttoptr (i64 2097664 to ptr), ptr %prev.i.i, align 8, !tbaa !14
  %2 = load ptr, ptr %v.0, align 8, !tbaa !15
  tail call void @free(ptr noundef %2) #16
  %value.i = getelementptr inbounds i8, ptr %.pn.in16, i64 -16
  %3 = load ptr, ptr %value.i, align 8, !tbaa !18
  tail call void @free(ptr noundef %3) #16
  tail call void @free(ptr noundef nonnull %v.0) #16
  %cmp.not = icmp eq ptr %.pn, @variable_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expand_dollar(ptr nocapture noundef %str) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %str, align 8, !tbaa !21
  %1 = load i8, ptr %0, align 1, !tbaa !22
  %cmp.not.i = icmp eq i8 %1, 40
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call ptr @xstrdup(ptr noundef nonnull @.str.4) #16
  br label %expand_dollar_with_args.exit

if.end.i:                                         ; preds = %entry
  %incdec.ptr.i = getelementptr inbounds i8, ptr %0, i64 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end15.i, %if.end.i
  %q.0.i = phi ptr [ %incdec.ptr.i, %if.end.i ], [ %incdec.ptr16.i, %if.end15.i ]
  %nest.0.i = phi i32 [ 0, %if.end.i ], [ %nest.1.i, %if.end15.i ]
  %2 = load i8, ptr %q.0.i, align 1, !tbaa !22
  switch i8 %2, label %if.end15.i [
    i8 0, label %if.then18.i
    i8 40, label %if.then5.i
    i8 41, label %if.then9.i
  ]

if.then5.i:                                       ; preds = %while.cond.i
  %inc.i = add nsw i32 %nest.0.i, 1
  br label %if.end15.i

if.then9.i:                                       ; preds = %while.cond.i
  %dec.i = add nsw i32 %nest.0.i, -1
  %cmp10.i = icmp eq i32 %nest.0.i, 0
  br i1 %cmp10.i, label %if.end19.i, label %if.end15.i

if.end15.i:                                       ; preds = %if.then9.i, %if.then5.i, %while.cond.i
  %nest.1.i = phi i32 [ %inc.i, %if.then5.i ], [ %dec.i, %if.then9.i ], [ %nest.0.i, %while.cond.i ]
  %incdec.ptr16.i = getelementptr inbounds i8, ptr %q.0.i, i64 1
  br label %while.cond.i

if.then18.i:                                      ; preds = %while.cond.i
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.5, ptr noundef nonnull %incdec.ptr.i) #18
  unreachable

if.end19.i:                                       ; preds = %if.then9.i
  %add.ptr.i = getelementptr inbounds i8, ptr %q.0.i, i64 1
  store ptr %add.ptr.i, ptr %str, align 8, !tbaa !21
  %sub.ptr.lhs.cast.i = ptrtoint ptr %q.0.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %incdec.ptr.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call20.i = tail call fastcc ptr @eval_clause(ptr noundef nonnull %incdec.ptr.i, i64 noundef %sub.ptr.sub.i, i32 noundef 0, ptr noundef null) #16
  br label %expand_dollar_with_args.exit

expand_dollar_with_args.exit:                     ; preds = %if.end19.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %call20.i, %if.end19.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expand_one_token(ptr nocapture noundef %str) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc ptr @__expand_string(ptr noundef %str, ptr noundef nonnull @is_end_of_token, i32 noundef 0, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @__expand_string(ptr nocapture noundef %str, ptr nocapture noundef readonly %is_end, i32 noundef %argc, ptr nocapture noundef readonly %argv) unnamed_addr #0 {
entry:
  %call = tail call ptr @xmalloc(i64 noundef 1) #16
  store i8 0, ptr %call, align 1, !tbaa !22
  %0 = load ptr, ptr %str, align 8, !tbaa !21
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %expand_dollar_with_args.exit, %entry
  %p.0.ph = phi ptr [ %p.1, %expand_dollar_with_args.exit ], [ %0, %entry ]
  %out.0.ph = phi ptr [ %call5, %expand_dollar_with_args.exit ], [ %call, %entry ]
  %out_len.0.ph = phi i64 [ %add4, %expand_dollar_with_args.exit ], [ 1, %entry ]
  %1 = load i8, ptr %p.0.ph, align 1, !tbaa !22
  %cmp47 = icmp eq i8 %1, 36
  br i1 %cmp47, label %if.then, label %if.end

if.then:                                          ; preds = %if.end10, %while.cond.outer
  %p.0.lcssa = phi ptr [ %p.0.ph, %while.cond.outer ], [ %incdec.ptr11, %if.end10 ]
  %sub.ptr.lhs.cast = ptrtoint ptr %p.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %p.0.ph to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0.lcssa, i64 1
  %2 = load i8, ptr %incdec.ptr, align 1, !tbaa !22
  %cmp.not.i = icmp eq i8 %2, 40
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call ptr @xstrdup(ptr noundef nonnull @.str.4) #16
  br label %expand_dollar_with_args.exit

if.end.i:                                         ; preds = %if.then
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.0.lcssa, i64 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end15.i, %if.end.i
  %q.0.i = phi ptr [ %incdec.ptr.i, %if.end.i ], [ %incdec.ptr16.i, %if.end15.i ]
  %nest.0.i = phi i32 [ 0, %if.end.i ], [ %nest.1.i, %if.end15.i ]
  %3 = load i8, ptr %q.0.i, align 1, !tbaa !22
  switch i8 %3, label %if.end15.i [
    i8 0, label %if.then18.i
    i8 40, label %if.then5.i
    i8 41, label %if.then9.i
  ]

if.then5.i:                                       ; preds = %while.cond.i
  %inc.i = add nsw i32 %nest.0.i, 1
  br label %if.end15.i

if.then9.i:                                       ; preds = %while.cond.i
  %dec.i = add nsw i32 %nest.0.i, -1
  %cmp10.i = icmp eq i32 %nest.0.i, 0
  br i1 %cmp10.i, label %if.end19.i, label %if.end15.i

if.end15.i:                                       ; preds = %if.then9.i, %if.then5.i, %while.cond.i
  %nest.1.i = phi i32 [ %inc.i, %if.then5.i ], [ %dec.i, %if.then9.i ], [ %nest.0.i, %while.cond.i ]
  %incdec.ptr16.i = getelementptr inbounds i8, ptr %q.0.i, i64 1
  br label %while.cond.i

if.then18.i:                                      ; preds = %while.cond.i
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.5, ptr noundef nonnull %incdec.ptr.i) #18
  unreachable

if.end19.i:                                       ; preds = %if.then9.i
  %add.ptr.i = getelementptr inbounds i8, ptr %q.0.i, i64 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %q.0.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %incdec.ptr.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call20.i = tail call fastcc ptr @eval_clause(ptr noundef nonnull %incdec.ptr.i, i64 noundef %sub.ptr.sub.i, i32 noundef %argc, ptr noundef %argv) #16
  br label %expand_dollar_with_args.exit

expand_dollar_with_args.exit:                     ; preds = %if.end19.i, %if.then.i
  %p.1 = phi ptr [ %add.ptr.i, %if.end19.i ], [ %incdec.ptr, %if.then.i ]
  %retval.0.i = phi ptr [ %call20.i, %if.end19.i ], [ %call.i, %if.then.i ]
  %call3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %retval.0.i) #17
  %add = add i64 %sub.ptr.sub, %out_len.0.ph
  %add4 = add i64 %add, %call3
  %call5 = tail call ptr @xrealloc(ptr noundef %out.0.ph, i64 noundef %add4) #16
  %call6 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %call5, ptr noundef nonnull %p.0.ph, i64 noundef %sub.ptr.sub) #16
  %call7 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %call5, ptr noundef nonnull dereferenceable(1) %retval.0.i) #16
  tail call void @free(ptr noundef %retval.0.i) #16
  br label %while.cond.outer

if.end:                                           ; preds = %if.end10, %while.cond.outer
  %4 = phi i8 [ %5, %if.end10 ], [ %1, %while.cond.outer ]
  %p.048 = phi ptr [ %incdec.ptr11, %if.end10 ], [ %p.0.ph, %while.cond.outer ]
  %call8 = tail call zeroext i1 %is_end(i8 noundef signext %4) #16, !callees !23
  br i1 %call8, label %while.end, label %if.end10

if.end10:                                         ; preds = %if.end
  %incdec.ptr11 = getelementptr inbounds i8, ptr %p.048, i64 1
  %5 = load i8, ptr %incdec.ptr11, align 1, !tbaa !22
  %cmp = icmp eq i8 %5, 36
  br i1 %cmp, label %if.then, label %if.end

while.end:                                        ; preds = %if.end
  %sub.ptr.lhs.cast12 = ptrtoint ptr %p.048 to i64
  %sub.ptr.rhs.cast13 = ptrtoint ptr %p.0.ph to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %add15 = add i64 %sub.ptr.sub14, %out_len.0.ph
  %call16 = tail call ptr @xrealloc(ptr noundef %out.0.ph, i64 noundef %add15) #16
  %call17 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %call16, ptr noundef nonnull %p.0.ph, i64 noundef %sub.ptr.sub14) #16
  store ptr %p.048, ptr %str, align 8, !tbaa !21
  ret ptr %call16
}

; Function Attrs: mustprogress nofree nosync nounwind readonly willreturn uwtable
define internal zeroext i1 @is_end_of_token(i8 noundef signext %c) #7 {
entry:
  %call = tail call ptr @__ctype_b_loc() #19
  %0 = load ptr, ptr %call, align 8, !tbaa !21
  %idxprom = sext i8 %c to i64
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %idxprom
  %1 = load i16, ptr %arrayidx, align 2, !tbaa !24
  %2 = and i16 %1, 8
  %tobool = icmp eq i16 %2, 0
  %cmp = icmp ne i8 %c, 95
  %cmp5 = icmp ne i8 %c, 45
  %not.or.cond = and i1 %cmp, %tobool
  %spec.select = and i1 %cmp5, %not.or.cond
  ret i1 %spec.select
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
define internal void @pperror(ptr nocapture noundef readonly %format, ...) unnamed_addr #8 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #16
  %0 = load ptr, ptr @stderr, align 8, !tbaa !21
  %1 = load ptr, ptr @current_file, align 8, !tbaa !21
  %name = getelementptr inbounds %struct.file, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %name, align 8, !tbaa !26
  %3 = load i32, ptr @yylineno, align 4, !tbaa !28
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %2, i32 noundef %3) #20
  call void @llvm.va_start(ptr nonnull %ap)
  %4 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call2 = call i32 @vfprintf(ptr noundef %4, ptr noundef %format, ptr noundef nonnull %ap) #20
  call void @llvm.va_end(ptr nonnull %ap)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !21
  %fputc = call i32 @fputc(i32 10, ptr %5)
  call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @eval_clause(ptr noundef %str, i64 noundef %len, i32 noundef %argc, ptr nocapture noundef readonly %argv) unnamed_addr #0 {
entry:
  %in.addr.i125 = alloca ptr, align 8
  %in.addr.i112 = alloca ptr, align 8
  %in.addr.i = alloca ptr, align 8
  %endptr = alloca ptr, align 8
  %new_argv = alloca [16 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %endptr) #16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %new_argv) #16
  %call = tail call ptr @xstrndup(ptr noundef %str, i64 noundef %len) #16
  %call1 = call i64 @strtoul(ptr noundef %call, ptr noundef nonnull %endptr, i32 noundef 10) #16
  %0 = load ptr, ptr %endptr, align 8, !tbaa !21
  %1 = load i8, ptr %0, align 1, !tbaa !22
  %tobool = icmp ne i8 %1, 0
  %cmp = icmp eq i64 %call1, 0
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  %conv = sext i32 %argc to i64
  %cmp3.not = icmp ugt i64 %call1, %conv
  %or.cond110 = select i1 %or.cond, i1 true, i1 %cmp3.not
  br i1 %or.cond110, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %2 = load i8, ptr %call, align 1, !tbaa !22
  %tobool6.not153 = icmp eq i8 %2, 0
  br i1 %tobool6.not153, label %while.end, label %while.body

if.then:                                          ; preds = %entry
  %sub = add i64 %call1, -1
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 %sub
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !21
  %call5 = tail call ptr @xstrdup(ptr noundef %3) #16
  br label %free_tmp

while.body:                                       ; preds = %if.end31, %while.cond.preheader
  %4 = phi i8 [ %5, %if.end31 ], [ %2, %while.cond.preheader ]
  %nest.0157 = phi i32 [ %nest.1, %if.end31 ], [ 0, %while.cond.preheader ]
  %new_argc.0156 = phi i32 [ %new_argc.1, %if.end31 ], [ 0, %while.cond.preheader ]
  %p.0155 = phi ptr [ %incdec.ptr, %if.end31 ], [ %call, %while.cond.preheader ]
  %prev.0154 = phi ptr [ %prev.1, %if.end31 ], [ %call, %while.cond.preheader ]
  %cmp7 = icmp eq i32 %nest.0157, 0
  %cmp11 = icmp eq i8 %4, 44
  %or.cond111 = select i1 %cmp7, i1 %cmp11, i1 false
  br i1 %or.cond111, label %if.then13, label %if.else

if.then13:                                        ; preds = %while.body
  store i8 0, ptr %p.0155, align 1, !tbaa !22
  %cmp14 = icmp sgt i32 %new_argc.0156, 15
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then13
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.8) #21
  unreachable

if.end17:                                         ; preds = %if.then13
  %inc = add nsw i32 %new_argc.0156, 1
  %idxprom = sext i32 %new_argc.0156 to i64
  %arrayidx18 = getelementptr inbounds [16 x ptr], ptr %new_argv, i64 0, i64 %idxprom
  store ptr %prev.0154, ptr %arrayidx18, align 8, !tbaa !21
  %add.ptr = getelementptr inbounds i8, ptr %p.0155, i64 1
  br label %if.end31

if.else:                                          ; preds = %while.body
  switch i8 %4, label %if.end31 [
    i8 40, label %if.then22
    i8 41, label %if.then28
  ]

if.then22:                                        ; preds = %if.else
  %inc23 = add nsw i32 %nest.0157, 1
  br label %if.end31

if.then28:                                        ; preds = %if.else
  %dec = add nsw i32 %nest.0157, -1
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then22, %if.else, %if.end17
  %prev.1 = phi ptr [ %add.ptr, %if.end17 ], [ %prev.0154, %if.then22 ], [ %prev.0154, %if.then28 ], [ %prev.0154, %if.else ]
  %new_argc.1 = phi i32 [ %inc, %if.end17 ], [ %new_argc.0156, %if.then22 ], [ %new_argc.0156, %if.then28 ], [ %new_argc.0156, %if.else ]
  %nest.1 = phi i32 [ 0, %if.end17 ], [ %inc23, %if.then22 ], [ %dec, %if.then28 ], [ %nest.0157, %if.else ]
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0155, i64 1
  %5 = load i8, ptr %incdec.ptr, align 1, !tbaa !22
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end31, %while.cond.preheader
  %prev.0.lcssa = phi ptr [ %call, %while.cond.preheader ], [ %prev.1, %if.end31 ]
  %new_argc.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %new_argc.1, %if.end31 ]
  %idxprom33 = sext i32 %new_argc.0.lcssa to i64
  %arrayidx34 = getelementptr inbounds [16 x ptr], ptr %new_argv, i64 0, i64 %idxprom33
  store ptr %prev.0.lcssa, ptr %arrayidx34, align 8, !tbaa !21
  %6 = load ptr, ptr %new_argv, align 16, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i)
  store ptr %6, ptr %in.addr.i, align 8, !tbaa !21
  %call.i = call fastcc ptr @__expand_string(ptr noundef nonnull %in.addr.i, ptr noundef nonnull @is_end_of_str, i32 noundef %argc, ptr noundef %argv) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i)
  %cmp38159 = icmp sgt i32 %new_argc.0.lcssa, 0
  br i1 %cmp38159, label %for.body.preheader, label %for.cond.i130.preheader

for.body.preheader:                               ; preds = %while.end
  %wide.trip.count = zext i32 %new_argc.0.lcssa to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx41 = getelementptr inbounds [16 x ptr], ptr %new_argv, i64 0, i64 %indvars.iv.next
  %7 = load ptr, ptr %arrayidx41, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i112)
  store ptr %7, ptr %in.addr.i112, align 8, !tbaa !21
  %call.i113 = call fastcc ptr @__expand_string(ptr noundef nonnull %in.addr.i112, ptr noundef nonnull @is_end_of_str, i32 noundef %argc, ptr noundef %argv) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i112)
  %arrayidx44 = getelementptr inbounds [16 x ptr], ptr %new_argv, i64 0, i64 %indvars.iv
  store ptr %call.i113, ptr %arrayidx44, align 8, !tbaa !21
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.i130.preheader, label %for.body

for.cond.i130.preheader:                          ; preds = %for.body, %while.end
  br label %for.cond.i130

for.cond.i130:                                    ; preds = %for.body.i133, %for.cond.i130.preheader
  %.pn.in.i127 = phi ptr [ %.pn.i128, %for.body.i133 ], [ @variable_list, %for.cond.i130.preheader ]
  %.pn.i128 = load ptr, ptr %.pn.in.i127, align 8, !tbaa !5
  %cmp.not.i129 = icmp eq ptr %.pn.i128, @variable_list
  br i1 %cmp.not.i129, label %if.end49, label %for.body.i133

for.body.i133:                                    ; preds = %for.cond.i130
  %v.0.i = getelementptr inbounds i8, ptr %.pn.i128, i64 -24
  %8 = load ptr, ptr %v.0.i, align 8, !tbaa !15
  %call.i131 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call.i, ptr noundef nonnull dereferenceable(1) %8) #17
  %tobool.not.i132 = icmp eq i32 %call.i131, 0
  br i1 %tobool.not.i132, label %if.end.i, label %for.cond.i130

if.end.i:                                         ; preds = %for.body.i133
  %cmp.i = icmp eq i32 %new_argc.0.lcssa, 0
  %exp_count.i = getelementptr inbounds i8, ptr %.pn.i128, i64 -4
  %9 = load i32, ptr %exp_count.i, align 4, !tbaa !19
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end3.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %tobool1.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i, label %if.end7.i, label %if.then2.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.10, ptr noundef %call.i) #18
  unreachable

if.end3.i:                                        ; preds = %if.end.i
  %cmp5.i = icmp sgt i32 %9, 1000
  br i1 %cmp5.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end3.i
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.11) #18
  unreachable

if.end7.i:                                        ; preds = %if.end3.i, %land.lhs.true.i
  %10 = phi i32 [ %9, %if.end3.i ], [ 0, %land.lhs.true.i ]
  %inc.i = add nsw i32 %10, 1
  store i32 %inc.i, ptr %exp_count.i, align 4, !tbaa !19
  %flavor.i = getelementptr inbounds i8, ptr %.pn.i128, i64 -8
  %11 = load i32, ptr %flavor.i, align 8, !tbaa !20
  %cmp9.i = icmp eq i32 %11, 1
  %value.i = getelementptr inbounds i8, ptr %.pn.i128, i64 -16
  %12 = load ptr, ptr %value.i, align 8, !tbaa !18
  br i1 %cmp9.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.addr.i125)
  store ptr %12, ptr %in.addr.i125, align 8, !tbaa !21
  %call.i126 = call fastcc ptr @__expand_string(ptr noundef nonnull %in.addr.i125, ptr noundef nonnull @is_end_of_str, i32 noundef %new_argc.0.lcssa, ptr noundef nonnull %new_argv) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.addr.i125)
  br label %variable_expand.exit

if.else.i:                                        ; preds = %if.end7.i
  %call13.i = tail call ptr @xstrdup(ptr noundef %12) #16
  br label %variable_expand.exit

variable_expand.exit:                             ; preds = %if.else.i, %if.then10.i
  %res.0.i = phi ptr [ %call.i126, %if.then10.i ], [ %call13.i, %if.else.i ]
  %13 = load i32, ptr %exp_count.i, align 4, !tbaa !19
  %dec.i = add nsw i32 %13, -1
  store i32 %dec.i, ptr %exp_count.i, align 4, !tbaa !19
  %tobool47.not = icmp eq ptr %res.0.i, null
  br i1 %tobool47.not, label %if.end49, label %free

if.end49:                                         ; preds = %variable_expand.exit, %for.cond.i130
  %call.i115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.14, ptr noundef nonnull dereferenceable(1) %call.i) #17
  %tobool.not.i116 = icmp eq i32 %call.i115, 0
  br i1 %tobool.not.i116, label %if.end.i117, label %for.inc.i

if.end.i117:                                      ; preds = %for.inc.4.i, %for.inc.3.i, %for.inc.2.i, %for.inc.1.i, %for.inc.i, %if.end49
  %i.022.lcssa.wide.i = phi i64 [ 0, %if.end49 ], [ 1, %for.inc.i ], [ 2, %for.inc.1.i ], [ 3, %for.inc.2.i ], [ 4, %for.inc.3.i ], [ 5, %for.inc.4.i ]
  %min_args.i = getelementptr inbounds [6 x %struct.function], ptr @function_table, i64 0, i64 %i.022.lcssa.wide.i, i32 1
  %14 = load i32, ptr %min_args.i, align 8, !tbaa !29
  %cmp3.i = icmp ugt i32 %14, %new_argc.0.lcssa
  br i1 %cmp3.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i117
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.12, ptr noundef %call.i) #18
  unreachable

if.end6.i:                                        ; preds = %if.end.i117
  %max_args.i = getelementptr inbounds [6 x %struct.function], ptr @function_table, i64 0, i64 %i.022.lcssa.wide.i, i32 2
  %15 = load i32, ptr %max_args.i, align 4, !tbaa !31
  %cmp7.i = icmp ult i32 %15, %new_argc.0.lcssa
  br i1 %cmp7.i, label %if.then9.i, label %function_expand.exit

if.then9.i:                                       ; preds = %if.end6.i
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.13, ptr noundef %call.i) #18
  unreachable

for.inc.i:                                        ; preds = %if.end49
  %call.1.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.15, ptr noundef nonnull dereferenceable(1) %call.i) #17
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.i117, label %for.inc.1.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.16, ptr noundef nonnull dereferenceable(1) %call.i) #17
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.i117, label %for.inc.2.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.17, ptr noundef nonnull dereferenceable(1) %call.i) #17
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %if.end.i117, label %for.inc.3.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call.4.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.18, ptr noundef nonnull dereferenceable(1) %call.i) #17
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %if.end.i117, label %for.inc.4.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %call.5.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.19, ptr noundef nonnull dereferenceable(1) %call.i) #17
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %if.end.i117, label %if.end54

function_expand.exit:                             ; preds = %if.end6.i
  %func.i = getelementptr inbounds [6 x %struct.function], ptr @function_table, i64 0, i64 %i.022.lcssa.wide.i, i32 3
  %16 = load ptr, ptr %func.i, align 8, !tbaa !32
  %call11.i118 = call ptr %16(i32 noundef %new_argc.0.lcssa, ptr noundef nonnull %new_argv) #16
  %tobool52.not = icmp eq ptr %call11.i118, null
  br i1 %tobool52.not, label %if.end54, label %free

if.end54:                                         ; preds = %function_expand.exit, %for.inc.4.i
  %cmp55 = icmp eq i32 %new_argc.0.lcssa, 0
  br i1 %cmp55, label %if.then57, label %if.end62

if.then57:                                        ; preds = %if.end54
  %17 = load i8, ptr %call.i, align 1, !tbaa !22
  %tobool.not.i120 = icmp eq i8 %17, 0
  br i1 %tobool.not.i120, label %if.end62, label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.then57
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i ], [ @env_list, %if.then57 ]
  %.pn.i = load ptr, ptr %.pn.in.i, align 8, !tbaa !5
  %cmp.not.i = icmp eq ptr %.pn.i, @env_list
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %e.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %18 = load ptr, ptr %e.0.i, align 8, !tbaa !12
  %call.i121 = call i32 @strcmp(ptr noundef nonnull %call.i, ptr noundef nonnull dereferenceable(1) %18) #17
  %tobool2.not.i = icmp eq i32 %call.i121, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %for.cond.i

if.then3.i:                                       ; preds = %for.body.i
  %value4.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %19 = load ptr, ptr %value4.i, align 8, !tbaa !13
  %call5.i = call ptr @xstrdup(ptr noundef %19) #16
  br label %env_expand.exit

for.end.i:                                        ; preds = %for.cond.i
  %call11.i122 = call ptr @getenv(ptr noundef nonnull %call.i) #16
  %tobool12.not.i = icmp eq ptr %call11.i122, null
  br i1 %tobool12.not.i, label %if.end62, label %if.end14.i123

if.end14.i123:                                    ; preds = %for.end.i
  %call.i.i = call ptr @xmalloc(i64 noundef 32) #16
  %call1.i.i = call ptr @xstrdup(ptr noundef nonnull %call.i) #16
  store ptr %call1.i.i, ptr %call.i.i, align 8, !tbaa !12
  %call3.i.i = call ptr @xstrdup(ptr noundef nonnull %call11.i122) #16
  %value4.i.i = getelementptr inbounds %struct.env, ptr %call.i.i, i64 0, i32 1
  store ptr %call3.i.i, ptr %value4.i.i, align 8, !tbaa !13
  %node.i.i = getelementptr inbounds %struct.env, ptr %call.i.i, i64 0, i32 2
  %20 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @env_list, i64 0, i32 1), align 8, !tbaa !14
  store ptr %node.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @env_list, i64 0, i32 1), align 8, !tbaa !14
  store ptr @env_list, ptr %node.i.i, align 8, !tbaa !5
  %prev3.i.i.i.i = getelementptr inbounds %struct.env, ptr %call.i.i, i64 0, i32 2, i32 1
  store ptr %20, ptr %prev3.i.i.i.i, align 8, !tbaa !14
  store ptr %node.i.i, ptr %20, align 8, !tbaa !5
  %call15.i = call ptr @xstrdup(ptr noundef nonnull %call11.i122) #16
  br label %env_expand.exit

env_expand.exit:                                  ; preds = %if.end14.i123, %if.then3.i
  %retval.0.i124 = phi ptr [ %call5.i, %if.then3.i ], [ %call15.i, %if.end14.i123 ]
  %tobool59.not = icmp eq ptr %retval.0.i124, null
  br i1 %tobool59.not, label %if.end62, label %free

if.end62:                                         ; preds = %env_expand.exit, %for.end.i, %if.then57, %if.end54
  %call63 = call ptr @xstrdup(ptr noundef nonnull @.str.9) #16
  br label %free

free:                                             ; preds = %if.end62, %env_expand.exit, %function_expand.exit, %variable_expand.exit
  %res.0 = phi ptr [ %res.0.i, %variable_expand.exit ], [ %call11.i118, %function_expand.exit ], [ %retval.0.i124, %env_expand.exit ], [ %call63, %if.end62 ]
  br i1 %cmp38159, label %for.body67.preheader, label %for.end72

for.body67.preheader:                             ; preds = %free
  %wide.trip.count169 = zext i32 %new_argc.0.lcssa to i64
  br label %for.body67

for.body67:                                       ; preds = %for.body67, %for.body67.preheader
  %indvars.iv166 = phi i64 [ 0, %for.body67.preheader ], [ %indvars.iv.next167, %for.body67 ]
  %arrayidx69 = getelementptr inbounds [16 x ptr], ptr %new_argv, i64 0, i64 %indvars.iv166
  %21 = load ptr, ptr %arrayidx69, align 8, !tbaa !21
  call void @free(ptr noundef %21) #16
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %for.end72, label %for.body67

for.end72:                                        ; preds = %for.body67, %free
  call void @free(ptr noundef %call.i) #16
  br label %free_tmp

free_tmp:                                         ; preds = %for.end72, %if.then
  %res.1 = phi ptr [ %call5, %if.then ], [ %res.0, %for.end72 ]
  call void @free(ptr noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %new_argv) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %endptr) #16
  ret ptr %res.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare ptr @xstrndup(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal zeroext i1 @is_end_of_str(i8 noundef signext %c) #12 {
entry:
  %tobool.not = icmp eq i8 %c, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind uwtable
define internal ptr @do_error_if(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 {
entry:
  %0 = load ptr, ptr %argv, align 8, !tbaa !21
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.20) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds ptr, ptr %argv, i64 1
  %1 = load ptr, ptr %arrayidx1, align 8, !tbaa !21
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.21, ptr noundef %1) #21
  unreachable

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @xstrdup(ptr noundef nonnull @.str.9) #16
  ret ptr %call2
}

; Function Attrs: nounwind uwtable
define internal ptr @do_filename(i32 noundef %argc, ptr nocapture noundef readnone %argv) #0 {
entry:
  %0 = load ptr, ptr @current_file, align 8, !tbaa !21
  %name = getelementptr inbounds %struct.file, ptr %0, i64 0, i32 2
  %1 = load ptr, ptr %name, align 8, !tbaa !26
  %call = tail call ptr @xstrdup(ptr noundef %1) #16
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal ptr @do_info(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 {
entry:
  %0 = load ptr, ptr %argv, align 8, !tbaa !21
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %0)
  %call1 = tail call ptr @xstrdup(ptr noundef nonnull @.str.9) #16
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define internal ptr @do_lineno(i32 noundef %argc, ptr nocapture noundef readnone %argv) #0 {
entry:
  %buf = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #16
  %0 = load i32, ptr @yylineno, align 4, !tbaa !28
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.23, i32 noundef %0) #16
  %call2 = call ptr @xstrdup(ptr noundef nonnull %buf) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #16
  ret ptr %call2
}

; Function Attrs: nounwind uwtable
define internal ptr @do_shell(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 {
entry:
  %buf = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %buf) #16
  %0 = load ptr, ptr %argv, align 8, !tbaa !21
  %call = tail call ptr @popen(ptr noundef %0, ptr noundef nonnull @.str.24)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @perror(ptr noundef %0) #20
  tail call void @exit(i32 noundef 1) #18
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i64 @fread(ptr noundef nonnull %buf, i64 noundef 1, i64 noundef 4096, ptr noundef nonnull %call)
  %cmp = icmp eq i64 %call1, 4096
  %spec.select = select i1 %cmp, i64 4095, i64 %call1
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %if.end
  %nread.1 = phi i64 [ %sub, %land.rhs ], [ %spec.select, %if.end ]
  %cmp4.not = icmp eq i64 %nread.1, 0
  br i1 %cmp4.not, label %while.end.thread, label %land.rhs

while.end.thread:                                 ; preds = %while.cond
  store i8 0, ptr %buf, align 16, !tbaa !22
  br label %for.end

land.rhs:                                         ; preds = %while.cond
  %sub = add i64 %nread.1, -1
  %arrayidx5 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %sub
  %1 = load i8, ptr %arrayidx5, align 1, !tbaa !22
  %cmp6 = icmp eq i8 %1, 10
  br i1 %cmp6, label %while.cond, label %iter.check

iter.check:                                       ; preds = %land.rhs
  %arrayidx9 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %nread.1
  store i8 0, ptr %arrayidx9, align 1, !tbaa !22
  %min.iters.check = icmp ult i64 %nread.1, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check50 = icmp ult i64 %nread.1, 32
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %nread.1, -32
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue113, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue113 ]
  %2 = or i64 %index, 16
  %3 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %index
  %wide.load = load <16 x i8>, ptr %3, align 16, !tbaa !22
  %4 = getelementptr inbounds i8, ptr %3, i64 16
  %wide.load51 = load <16 x i8>, ptr %4, align 16, !tbaa !22
  %5 = icmp eq <16 x i8> %wide.load, <i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10>
  %6 = icmp eq <16 x i8> %wide.load51, <i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10>
  %7 = extractelement <16 x i1> %5, i64 0
  br i1 %7, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %8 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %index
  store i8 32, ptr %8, align 16, !tbaa !22
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %9 = extractelement <16 x i1> %5, i64 1
  br i1 %9, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue
  %10 = or i64 %index, 1
  %11 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %10
  store i8 32, ptr %11, align 1, !tbaa !22
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue
  %12 = extractelement <16 x i1> %5, i64 2
  br i1 %12, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  %13 = or i64 %index, 2
  %14 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %13
  store i8 32, ptr %14, align 2, !tbaa !22
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %15 = extractelement <16 x i1> %5, i64 3
  br i1 %15, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %16 = or i64 %index, 3
  %17 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %16
  store i8 32, ptr %17, align 1, !tbaa !22
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %18 = extractelement <16 x i1> %5, i64 4
  br i1 %18, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  %19 = or i64 %index, 4
  %20 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %19
  store i8 32, ptr %20, align 4, !tbaa !22
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %21 = extractelement <16 x i1> %5, i64 5
  br i1 %21, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  %22 = or i64 %index, 5
  %23 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %22
  store i8 32, ptr %23, align 1, !tbaa !22
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %24 = extractelement <16 x i1> %5, i64 6
  br i1 %24, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  %25 = or i64 %index, 6
  %26 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %25
  store i8 32, ptr %26, align 2, !tbaa !22
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %27 = extractelement <16 x i1> %5, i64 7
  br i1 %27, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %28 = or i64 %index, 7
  %29 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %28
  store i8 32, ptr %29, align 1, !tbaa !22
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %30 = extractelement <16 x i1> %5, i64 8
  br i1 %30, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %31 = or i64 %index, 8
  %32 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %31
  store i8 32, ptr %32, align 8, !tbaa !22
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %33 = extractelement <16 x i1> %5, i64 9
  br i1 %33, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  %34 = or i64 %index, 9
  %35 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %34
  store i8 32, ptr %35, align 1, !tbaa !22
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %36 = extractelement <16 x i1> %5, i64 10
  br i1 %36, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  %37 = or i64 %index, 10
  %38 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %37
  store i8 32, ptr %38, align 2, !tbaa !22
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %39 = extractelement <16 x i1> %5, i64 11
  br i1 %39, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  %40 = or i64 %index, 11
  %41 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %40
  store i8 32, ptr %41, align 1, !tbaa !22
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %42 = extractelement <16 x i1> %5, i64 12
  br i1 %42, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  %43 = or i64 %index, 12
  %44 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %43
  store i8 32, ptr %44, align 4, !tbaa !22
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %45 = extractelement <16 x i1> %5, i64 13
  br i1 %45, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  %46 = or i64 %index, 13
  %47 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %46
  store i8 32, ptr %47, align 1, !tbaa !22
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %48 = extractelement <16 x i1> %5, i64 14
  br i1 %48, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %49 = or i64 %index, 14
  %50 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %49
  store i8 32, ptr %50, align 2, !tbaa !22
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %51 = extractelement <16 x i1> %5, i64 15
  br i1 %51, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %52 = or i64 %index, 15
  %53 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %52
  store i8 32, ptr %53, align 1, !tbaa !22
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %54 = extractelement <16 x i1> %6, i64 0
  br i1 %54, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %55 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %2
  store i8 32, ptr %55, align 16, !tbaa !22
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %56 = extractelement <16 x i1> %6, i64 1
  br i1 %56, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  %57 = or i64 %index, 17
  %58 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %57
  store i8 32, ptr %58, align 1, !tbaa !22
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %59 = extractelement <16 x i1> %6, i64 2
  br i1 %59, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  %60 = or i64 %index, 18
  %61 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %60
  store i8 32, ptr %61, align 2, !tbaa !22
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %62 = extractelement <16 x i1> %6, i64 3
  br i1 %62, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  %63 = or i64 %index, 19
  %64 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %63
  store i8 32, ptr %64, align 1, !tbaa !22
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %65 = extractelement <16 x i1> %6, i64 4
  br i1 %65, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  %66 = or i64 %index, 20
  %67 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %66
  store i8 32, ptr %67, align 4, !tbaa !22
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %68 = extractelement <16 x i1> %6, i64 5
  br i1 %68, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  %69 = or i64 %index, 21
  %70 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %69
  store i8 32, ptr %70, align 1, !tbaa !22
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %71 = extractelement <16 x i1> %6, i64 6
  br i1 %71, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  %72 = or i64 %index, 22
  %73 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %72
  store i8 32, ptr %73, align 2, !tbaa !22
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %74 = extractelement <16 x i1> %6, i64 7
  br i1 %74, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  %75 = or i64 %index, 23
  %76 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %75
  store i8 32, ptr %76, align 1, !tbaa !22
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %77 = extractelement <16 x i1> %6, i64 8
  br i1 %77, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  %78 = or i64 %index, 24
  %79 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %78
  store i8 32, ptr %79, align 8, !tbaa !22
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %80 = extractelement <16 x i1> %6, i64 9
  br i1 %80, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  %81 = or i64 %index, 25
  %82 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %81
  store i8 32, ptr %82, align 1, !tbaa !22
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %83 = extractelement <16 x i1> %6, i64 10
  br i1 %83, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  %84 = or i64 %index, 26
  %85 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %84
  store i8 32, ptr %85, align 2, !tbaa !22
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %86 = extractelement <16 x i1> %6, i64 11
  br i1 %86, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  %87 = or i64 %index, 27
  %88 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %87
  store i8 32, ptr %88, align 1, !tbaa !22
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %89 = extractelement <16 x i1> %6, i64 12
  br i1 %89, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  %90 = or i64 %index, 28
  %91 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %90
  store i8 32, ptr %91, align 4, !tbaa !22
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %92 = extractelement <16 x i1> %6, i64 13
  br i1 %92, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  %93 = or i64 %index, 29
  %94 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %93
  store i8 32, ptr %94, align 1, !tbaa !22
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %95 = extractelement <16 x i1> %6, i64 14
  br i1 %95, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  %96 = or i64 %index, 30
  %97 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %96
  store i8 32, ptr %97, align 2, !tbaa !22
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %98 = extractelement <16 x i1> %6, i64 15
  br i1 %98, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  %99 = or i64 %index, 31
  %100 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %99
  store i8 32, ptr %100, align 1, !tbaa !22
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %index.next = add nuw i64 %index, 32
  %101 = icmp eq i64 %index.next, %n.vec
  br i1 %101, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %pred.store.continue113
  %cmp.n = icmp eq i64 %nread.1, %n.vec
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %nread.1, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check, %vector.main.loop.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %nread.1, -8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue134, %vec.epilog.ph
  %offset.idx = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next135, %pred.store.continue134 ]
  %102 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %offset.idx
  %wide.load118 = load <8 x i8>, ptr %102, align 8, !tbaa !22
  %103 = icmp eq <8 x i8> %wide.load118, <i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10, i8 10>
  %104 = extractelement <8 x i1> %103, i64 0
  br i1 %104, label %pred.store.if119, label %pred.store.continue120

pred.store.if119:                                 ; preds = %vec.epilog.vector.body
  %105 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %offset.idx
  store i8 32, ptr %105, align 8, !tbaa !22
  br label %pred.store.continue120

pred.store.continue120:                           ; preds = %pred.store.if119, %vec.epilog.vector.body
  %106 = extractelement <8 x i1> %103, i64 1
  br i1 %106, label %pred.store.if121, label %pred.store.continue122

pred.store.if121:                                 ; preds = %pred.store.continue120
  %107 = or i64 %offset.idx, 1
  %108 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %107
  store i8 32, ptr %108, align 1, !tbaa !22
  br label %pred.store.continue122

pred.store.continue122:                           ; preds = %pred.store.if121, %pred.store.continue120
  %109 = extractelement <8 x i1> %103, i64 2
  br i1 %109, label %pred.store.if123, label %pred.store.continue124

pred.store.if123:                                 ; preds = %pred.store.continue122
  %110 = or i64 %offset.idx, 2
  %111 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %110
  store i8 32, ptr %111, align 2, !tbaa !22
  br label %pred.store.continue124

pred.store.continue124:                           ; preds = %pred.store.if123, %pred.store.continue122
  %112 = extractelement <8 x i1> %103, i64 3
  br i1 %112, label %pred.store.if125, label %pred.store.continue126

pred.store.if125:                                 ; preds = %pred.store.continue124
  %113 = or i64 %offset.idx, 3
  %114 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %113
  store i8 32, ptr %114, align 1, !tbaa !22
  br label %pred.store.continue126

pred.store.continue126:                           ; preds = %pred.store.if125, %pred.store.continue124
  %115 = extractelement <8 x i1> %103, i64 4
  br i1 %115, label %pred.store.if127, label %pred.store.continue128

pred.store.if127:                                 ; preds = %pred.store.continue126
  %116 = or i64 %offset.idx, 4
  %117 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %116
  store i8 32, ptr %117, align 4, !tbaa !22
  br label %pred.store.continue128

pred.store.continue128:                           ; preds = %pred.store.if127, %pred.store.continue126
  %118 = extractelement <8 x i1> %103, i64 5
  br i1 %118, label %pred.store.if129, label %pred.store.continue130

pred.store.if129:                                 ; preds = %pred.store.continue128
  %119 = or i64 %offset.idx, 5
  %120 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %119
  store i8 32, ptr %120, align 1, !tbaa !22
  br label %pred.store.continue130

pred.store.continue130:                           ; preds = %pred.store.if129, %pred.store.continue128
  %121 = extractelement <8 x i1> %103, i64 6
  br i1 %121, label %pred.store.if131, label %pred.store.continue132

pred.store.if131:                                 ; preds = %pred.store.continue130
  %122 = or i64 %offset.idx, 6
  %123 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %122
  store i8 32, ptr %123, align 2, !tbaa !22
  br label %pred.store.continue132

pred.store.continue132:                           ; preds = %pred.store.if131, %pred.store.continue130
  %124 = extractelement <8 x i1> %103, i64 7
  br i1 %124, label %pred.store.if133, label %pred.store.continue134

pred.store.if133:                                 ; preds = %pred.store.continue132
  %125 = or i64 %offset.idx, 7
  %126 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %125
  store i8 32, ptr %126, align 1, !tbaa !22
  br label %pred.store.continue134

pred.store.continue134:                           ; preds = %pred.store.if133, %pred.store.continue132
  %index.next135 = add nuw i64 %offset.idx, 8
  %127 = icmp eq i64 %index.next135, %n.vec115
  br i1 %127, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %pred.store.continue134
  %cmp.n116 = icmp eq i64 %nread.1, %n.vec115
  br i1 %cmp.n116, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vec.epilog.middle.block, %vec.epilog.iter.check, %iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec115, %vec.epilog.middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx13 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 %indvars.iv
  %128 = load i8, ptr %arrayidx13, align 1, !tbaa !22
  %cmp15 = icmp eq i8 %128, 10
  br i1 %cmp15, label %if.then17, label %for.inc

if.then17:                                        ; preds = %for.body
  store i8 32, ptr %arrayidx13, align 1, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %nread.1
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !37

for.end:                                          ; preds = %for.inc, %vec.epilog.middle.block, %middle.block, %while.end.thread
  %call21 = tail call i32 @pclose(ptr noundef nonnull %call)
  %cmp22 = icmp eq i32 %call21, -1
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end
  tail call void @perror(ptr noundef %0) #20
  tail call void @exit(i32 noundef 1) #18
  unreachable

if.end25:                                         ; preds = %for.end
  %call27 = call ptr @xstrdup(ptr noundef nonnull %buf) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %buf) #16
  ret ptr %call27
}

; Function Attrs: nounwind uwtable
define internal ptr @do_warning_if(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 {
entry:
  %0 = load ptr, ptr %argv, align 8, !tbaa !21
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.20) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !21
  %2 = load ptr, ptr @current_file, align 8, !tbaa !21
  %name = getelementptr inbounds %struct.file, ptr %2, i64 0, i32 2
  %3 = load ptr, ptr %name, align 8, !tbaa !26
  %4 = load i32, ptr @yylineno, align 4, !tbaa !28
  %arrayidx1 = getelementptr inbounds ptr, ptr %argv, i64 1
  %5 = load ptr, ptr %arrayidx1, align 8, !tbaa !21
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef %3, i32 noundef %4, ptr noundef %5) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = tail call ptr @xstrdup(ptr noundef nonnull @.str.9) #16
  ret ptr %call3
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @popen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @pclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { cold }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"list_head", !7, i64 0, !7, i64 8}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 16}
!11 = !{!"env", !7, i64 0, !7, i64 8, !6, i64 16}
!12 = !{!11, !7, i64 0}
!13 = !{!11, !7, i64 8}
!14 = !{!6, !7, i64 8}
!15 = !{!16, !7, i64 0}
!16 = !{!"variable", !7, i64 0, !7, i64 8, !8, i64 16, !17, i64 20, !6, i64 24}
!17 = !{!"int", !8, i64 0}
!18 = !{!16, !7, i64 8}
!19 = !{!16, !17, i64 20}
!20 = !{!16, !8, i64 16}
!21 = !{!7, !7, i64 0}
!22 = !{!8, !8, i64 0}
!23 = !{ptr @is_end_of_str, ptr @is_end_of_token}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !8, i64 0}
!26 = !{!27, !7, i64 16}
!27 = !{!"file", !7, i64 0, !7, i64 8, !7, i64 16, !17, i64 24}
!28 = !{!17, !17, i64 0}
!29 = !{!30, !17, i64 8}
!30 = !{!"function", !7, i64 0, !17, i64 8, !17, i64 12, !7, i64 16}
!31 = !{!30, !17, i64 12}
!32 = !{!30, !7, i64 16}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = distinct !{!35, !34, !36}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !36, !34}
