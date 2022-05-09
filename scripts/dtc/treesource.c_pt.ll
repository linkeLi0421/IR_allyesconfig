; ModuleID = '/llk/IR_all_yes/scripts/dtc/treesource.c_pt.bc'
source_filename = "../scripts/dtc/treesource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcpos = type { i32, i32, i32, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.dt_info = type { i32, ptr, i32, ptr, ptr }
%struct.reserve_info = type { i64, i64, ptr, ptr }
%struct.label = type { i8, ptr, ptr }
%struct.marker = type { i32, i32, ptr, ptr }
%struct.node = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i8, i8 }
%struct.property = type { i8, ptr, %struct.data, ptr, ptr, ptr }
%struct.data = type { i32, ptr, ptr }

@parser_output = dso_local local_unnamed_addr global ptr null, align 8
@treesource_error = dso_local local_unnamed_addr global i8 0, align 1
@current_srcfile = external local_unnamed_addr global ptr, align 8
@yyin = external local_unnamed_addr global ptr, align 8
@yylloc = external local_unnamed_addr global %struct.srcpos, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unable to parse input tree\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Syntax error parsing input tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/dts-v1/;\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"/memreserve/\090x%016llx 0x%016llx;\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s {\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"/ {\00", align 1
@annotate = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c" /* %s */\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c" =\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@delim_start = internal unnamed_addr constant [9 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.19], align 16
@.str.15 = private unnamed_addr constant [5 x i8] c" %s:\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"&{%s}\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"&%s\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@delim_end = internal unnamed_addr constant [9 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @.str.44, ptr @.str.45, ptr @.str.45, ptr @.str.45, ptr @.str.19], align 16
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"/bits/ 16 <\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"/bits/ 64 <\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"len % width == 0\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"../scripts/dtc/treesource.c\00", align 1
@__PRETTY_FUNCTION__.write_propval_int = private unnamed_addr constant [61 x i8] c"void write_propval_int(FILE *, const char *, size_t, size_t)\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"0x%02lx\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"*end == '\\0'\00", align 1
@__PRETTY_FUNCTION__.write_propval_string = private unnamed_addr constant [56 x i8] c"void write_propval_string(FILE *, const char *, size_t)\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c">\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @dt_from_source(ptr noundef %fname) local_unnamed_addr #0 {
entry:
  store ptr null, ptr @parser_output, align 8, !tbaa !5
  store i8 0, ptr @treesource_error, align 1, !tbaa !9
  tail call void @srcfile_push(ptr noundef %fname) #10
  %0 = load ptr, ptr @current_srcfile, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !11
  store ptr %1, ptr @yyin, align 8, !tbaa !5
  store ptr %0, ptr getelementptr inbounds (%struct.srcpos, ptr @yylloc, i64 0, i32 4), align 8, !tbaa !14
  %call = tail call i32 @yyparse() #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str) #11
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8, ptr @treesource_error, align 1, !tbaa !9, !range !16
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.1) #11
  unreachable

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr @parser_output, align 8, !tbaa !5
  ret ptr %3
}

declare void @srcfile_push(ptr noundef) local_unnamed_addr #1

declare i32 @yyparse() local_unnamed_addr #1

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %str, ...) unnamed_addr #2 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #10
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = call i64 @fwrite(ptr nonnull @.str.5, i64 13, i64 1, ptr %0) #12
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 @vfprintf(ptr noundef %2, ptr noundef %str, ptr noundef nonnull %ap) #12
  call void @llvm.va_end(ptr nonnull %ap)
  call void @exit(i32 noundef 1) #13
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @dt_to_source(ptr noundef %f, ptr nocapture noundef readonly %dti) local_unnamed_addr #0 {
entry:
  %0 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 11, i64 1, ptr %f)
  %reservelist = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 1
  %re.025 = load ptr, ptr %reservelist, align 8, !tbaa !5
  %tobool.not26 = icmp eq ptr %re.025, null
  br i1 %tobool.not26, label %for.end9, label %for.body

for.body:                                         ; preds = %for.end, %entry
  %re.027 = phi ptr [ %re.0, %for.end ], [ %re.025, %entry ]
  %labels = getelementptr inbounds %struct.reserve_info, ptr %re.027, i64 0, i32 3
  %l.021 = load ptr, ptr %labels, align 8, !tbaa !5
  %tobool2.not22 = icmp eq ptr %l.021, null
  br i1 %tobool2.not22, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.inc, %for.body
  %l.023 = phi ptr [ %l.0, %for.inc ], [ %l.021, %for.body ]
  %1 = load i8, ptr %l.023, align 8, !tbaa !17, !range !16
  %tobool4.not = icmp eq i8 %1, 0
  br i1 %tobool4.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %label = getelementptr inbounds %struct.label, ptr %l.023, i64 0, i32 1
  %2 = load ptr, ptr %label, align 8, !tbaa !19
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.3, ptr noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body3
  %next = getelementptr inbounds %struct.label, ptr %l.023, i64 0, i32 2
  %l.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool2.not = icmp eq ptr %l.0, null
  br i1 %tobool2.not, label %for.end, label %for.body3

for.end:                                          ; preds = %for.inc, %for.body
  %3 = load i64, ptr %re.027, align 8, !tbaa !20
  %size = getelementptr inbounds %struct.reserve_info, ptr %re.027, i64 0, i32 1
  %4 = load i64, ptr %size, align 8, !tbaa !23
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.4, i64 noundef %3, i64 noundef %4)
  %next8 = getelementptr inbounds %struct.reserve_info, ptr %re.027, i64 0, i32 2
  %re.0 = load ptr, ptr %next8, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %re.0, null
  br i1 %tobool.not, label %for.end9, label %for.body

for.end9:                                         ; preds = %for.end, %entry
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %5 = load ptr, ptr %dt, align 8, !tbaa !24
  tail call fastcc void @write_tree_source_node(ptr noundef %f, ptr noundef %5, i32 noundef 0)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @write_tree_source_node(ptr noundef %f, ptr nocapture noundef readonly %tree, i32 noundef %level) unnamed_addr #0 {
entry:
  %dummy_marker.i = alloca %struct.marker, align 8
  %cmp2.i = icmp sgt i32 %level, 0
  br i1 %cmp2.i, label %for.body.i, label %write_prefix.exit

for.body.i:                                       ; preds = %for.body.i, %entry
  %i.03.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %call.i = tail call i32 @fputc(i32 noundef 9, ptr noundef %f) #10
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %level
  br i1 %exitcond.not.i, label %write_prefix.exit, label %for.body.i

write_prefix.exit:                                ; preds = %for.body.i, %entry
  %labels = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 11
  %l.0143 = load ptr, ptr %labels, align 8, !tbaa !5
  %tobool.not144 = icmp eq ptr %l.0143, null
  br i1 %tobool.not144, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %write_prefix.exit
  %l.0145 = phi ptr [ %l.0, %for.inc ], [ %l.0143, %write_prefix.exit ]
  %0 = load i8, ptr %l.0145, align 8, !tbaa !17, !range !16
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %label = getelementptr inbounds %struct.label, ptr %l.0145, i64 0, i32 1
  %1 = load ptr, ptr %label, align 8, !tbaa !19
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.3, ptr noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %next = getelementptr inbounds %struct.label, ptr %l.0145, i64 0, i32 2
  %l.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %l.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %write_prefix.exit
  %name = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 1
  %2 = load ptr, ptr %name, align 8, !tbaa !26
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %3 = load i8, ptr %2, align 1, !tbaa !28
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %call7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.6, ptr noundef nonnull %2)
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true, %for.end
  %4 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %f)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %5 = load i32, ptr @annotate, align 4, !tbaa !29
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %if.end17, label %if.then11

if.then11:                                        ; preds = %if.end9
  %srcpos = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 13
  %6 = load ptr, ptr %srcpos, align 8, !tbaa !30
  %call12 = tail call ptr @srcpos_string_first(ptr noundef %6, i32 noundef %5) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.then11
  %call15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.8, ptr noundef nonnull %call12)
  tail call void @free(ptr noundef nonnull %call12) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then11, %if.end9
  %fputc = tail call i32 @fputc(i32 10, ptr %f)
  %proplist = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 2
  %prop.0151 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool20.not152 = icmp eq ptr %prop.0151, null
  br i1 %tobool20.not152, label %for.end43, label %for.body21.lr.ph

for.body21.lr.ph:                                 ; preds = %if.end17
  %cmp2.i115 = icmp sgt i32 %level, -1
  %next.i = getelementptr inbounds %struct.marker, ptr %dummy_marker.i, i64 0, i32 3
  %offset.i = getelementptr inbounds %struct.marker, ptr %dummy_marker.i, i64 0, i32 1
  %ref.i = getelementptr inbounds %struct.marker, ptr %dummy_marker.i, i64 0, i32 2
  br label %for.body21

for.body21:                                       ; preds = %for.inc41, %for.body21.lr.ph
  %prop.0153 = phi ptr [ %prop.0151, %for.body21.lr.ph ], [ %prop.0, %for.inc41 ]
  %7 = load i8, ptr %prop.0153, align 8, !tbaa !31, !range !16
  %tobool23.not = icmp eq i8 %7, 0
  br i1 %tobool23.not, label %if.then24, label %for.inc41

if.then24:                                        ; preds = %for.body21
  br i1 %cmp2.i115, label %for.body.i120, label %write_prefix.exit121

for.body.i120:                                    ; preds = %for.body.i120, %if.then24
  %i.03.i116 = phi i32 [ %inc.i118, %for.body.i120 ], [ 0, %if.then24 ]
  %call.i117 = tail call i32 @fputc(i32 noundef 9, ptr noundef %f) #10
  %inc.i118 = add nuw nsw i32 %i.03.i116, 1
  %exitcond.not.i119 = icmp eq i32 %i.03.i116, %level
  br i1 %exitcond.not.i119, label %write_prefix.exit121, label %for.body.i120

write_prefix.exit121:                             ; preds = %for.body.i120, %if.then24
  %labels25 = getelementptr inbounds %struct.property, ptr %prop.0153, i64 0, i32 4
  %l.1147 = load ptr, ptr %labels25, align 8, !tbaa !5
  %tobool27.not148 = icmp eq ptr %l.1147, null
  br i1 %tobool27.not148, label %for.end37, label %for.body28

for.body28:                                       ; preds = %for.inc35, %write_prefix.exit121
  %l.1149 = phi ptr [ %l.1, %for.inc35 ], [ %l.1147, %write_prefix.exit121 ]
  %8 = load i8, ptr %l.1149, align 8, !tbaa !17, !range !16
  %tobool30.not = icmp eq i8 %8, 0
  br i1 %tobool30.not, label %if.then31, label %for.inc35

if.then31:                                        ; preds = %for.body28
  %label32 = getelementptr inbounds %struct.label, ptr %l.1149, i64 0, i32 1
  %9 = load ptr, ptr %label32, align 8, !tbaa !19
  %call33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.3, ptr noundef %9)
  br label %for.inc35

for.inc35:                                        ; preds = %if.then31, %for.body28
  %next36 = getelementptr inbounds %struct.label, ptr %l.1149, i64 0, i32 2
  %l.1 = load ptr, ptr %next36, align 8, !tbaa !5
  %tobool27.not = icmp eq ptr %l.1, null
  br i1 %tobool27.not, label %for.end37, label %for.body28

for.end37:                                        ; preds = %for.inc35, %write_prefix.exit121
  %name38 = getelementptr inbounds %struct.property, ptr %prop.0153, i64 0, i32 1
  %10 = load ptr, ptr %name38, align 8, !tbaa !34
  %fputs = tail call i32 @fputs(ptr %10, ptr %f)
  %val.i = getelementptr inbounds %struct.property, ptr %prop.0153, i64 0, i32 2
  %11 = load i32, ptr %val.i, align 8, !tbaa !35
  %conv.i = zext i32 %11 to i64
  %markers.i = getelementptr inbounds %struct.property, ptr %prop.0153, i64 0, i32 2, i32 2
  %12 = load ptr, ptr %markers.i, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dummy_marker.i) #10
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.then.i, label %if.end11.i

if.then.i:                                        ; preds = %for.end37
  %fputc218.i = tail call i32 @fputc(i32 59, ptr %f) #10
  %13 = load i32, ptr @annotate, align 4, !tbaa !29
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %write_propval.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  %srcpos.i = getelementptr inbounds %struct.property, ptr %prop.0153, i64 0, i32 5
  %14 = load ptr, ptr %srcpos.i, align 8, !tbaa !37
  %call5.i = tail call ptr @srcpos_string_first(ptr noundef %14, i32 noundef %13) #10
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %write_propval.exit, label %write_propval.exit.sink.split

if.end11.i:                                       ; preds = %for.end37
  %15 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr %f) #10
  %tobool.not4.i.i = icmp eq ptr %12, null
  br i1 %tobool.not4.i.i, label %if.then15.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %if.end11.i
  %m.addr.05.i.i = phi ptr [ %17, %for.inc.i.i ], [ %12, %if.end11.i ]
  %16 = load i32, ptr %m.addr.05.i.i, align 8, !tbaa !38
  %cmp.i.i.i = icmp ugt i32 %16, 3
  br i1 %cmp.i.i.i, label %if.end19.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.marker, ptr %m.addr.05.i.i, i64 0, i32 3
  %17 = load ptr, ptr %next.i.i, align 8, !tbaa !40
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.then15.i, label %for.body.i.i

if.then15.i:                                      ; preds = %for.inc.i.i, %if.end11.i
  %18 = load i32, ptr %val.i, align 8, !tbaa !35
  %val3.i.i = getelementptr inbounds %struct.property, ptr %prop.0153, i64 0, i32 2, i32 1
  %19 = load ptr, ptr %val3.i.i, align 8, !tbaa !41
  %20 = load ptr, ptr %markers.i, align 8, !tbaa !36
  %cmp102.i.i = icmp sgt i32 %18, 0
  br i1 %cmp102.i.i, label %for.body.lr.ph.i.i, label %for.cond13.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then15.i
  %call.i.i.i = tail call ptr @__ctype_b_loc() #14
  %21 = load ptr, ptr %call.i.i.i, align 8, !tbaa !5
  %wide.trip.count.i.i = zext i32 %18 to i64
  br label %for.body.i221.i

for.cond13.preheader.i.i:                         ; preds = %for.cond.i.i, %if.then15.i
  %nnotstring.0.lcssa.i.i = phi i32 [ 0, %if.then15.i ], [ %29, %for.cond.i.i ]
  %nnul.0.lcssa.i.i = phi i32 [ 0, %if.then15.i ], [ %nnul.1.i.i, %for.cond.i.i ]
  %tobool.not107.i.i = icmp eq ptr %20, null
  br i1 %tobool.not107.i.i, label %for.end40.i.i, label %for.body14.i.i

for.body.i221.i:                                  ; preds = %for.cond.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i ]
  %nnul.0104.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %nnul.1.i.i, %for.cond.i.i ]
  %nnotstring.0103.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %29, %for.cond.i.i ]
  %arrayidx.i.i = getelementptr inbounds i8, ptr %19, i64 %indvars.iv.i.i
  %22 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !28
  %23 = zext i8 %22 to i64
  %arrayidx.i.i.i = getelementptr inbounds i16, ptr %21, i64 %23
  %24 = load i16, ptr %arrayidx.i.i.i, align 2, !tbaa !42
  %25 = and i16 %24, 16384
  %tobool.i.i.i = icmp ne i16 %25, 0
  %cmp.i.i220.i = icmp eq i8 %22, 0
  %or.cond.i.i.i = or i1 %cmp.i.i220.i, %tobool.i.i.i
  br i1 %or.cond.i.i.i, label %isstring.exit.thread.i.i, label %isstring.exit.i.i

isstring.exit.i.i:                                ; preds = %for.body.i221.i
  %26 = zext i8 %22 to i16
  %memchr.bounds.i.i.i = icmp ult i8 %22, 16
  %27 = shl nuw i16 1, %26
  %28 = and i16 %27, 16257
  %memchr.bits.i.i.i = icmp ne i16 %28, 0
  %memchr9.i.i.i = select i1 %memchr.bounds.i.i.i, i1 %memchr.bits.i.i.i, i1 false
  %inc.i.i = add nsw i32 %nnotstring.0103.i.i, 1
  br i1 %memchr9.i.i.i, label %isstring.exit.thread.i.i, label %for.cond.i.i

isstring.exit.thread.i.i:                         ; preds = %isstring.exit.i.i, %for.body.i221.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %isstring.exit.thread.i.i, %isstring.exit.i.i
  %29 = phi i32 [ %nnotstring.0103.i.i, %isstring.exit.thread.i.i ], [ %inc.i.i, %isstring.exit.i.i ]
  %inc10.i.i = zext i1 %cmp.i.i220.i to i32
  %nnul.1.i.i = add nuw nsw i32 %nnul.0104.i.i, %inc10.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.cond13.preheader.i.i, label %for.body.i221.i

for.body14.i.i:                                   ; preds = %for.inc39.i.i, %for.cond13.preheader.i.i
  %nnotcelllbl.0111.i.i = phi i32 [ %nnotcelllbl.1.i.i, %for.inc39.i.i ], [ 0, %for.cond13.preheader.i.i ]
  %nnotstringlbl.0110.i.i = phi i32 [ %nnotstringlbl.2.i.i, %for.inc39.i.i ], [ 0, %for.cond13.preheader.i.i ]
  %m.0108.i.i = phi ptr [ %34, %for.inc39.i.i ], [ %20, %for.cond13.preheader.i.i ]
  %30 = load i32, ptr %m.0108.i.i, align 8, !tbaa !38
  %cmp15.i.i = icmp eq i32 %30, 3
  br i1 %cmp15.i.i, label %if.then17.i.i, label %for.inc39.i.i

if.then17.i.i:                                    ; preds = %for.body14.i.i
  %offset.i.i = getelementptr inbounds %struct.marker, ptr %m.0108.i.i, i64 0, i32 1
  %31 = load i32, ptr %offset.i.i, align 4, !tbaa !44
  %cmp18.not.i.i = icmp eq i32 %31, 0
  br i1 %cmp18.not.i.i, label %if.end30.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then17.i.i
  %sub.i.i = add i32 %31, -1
  %idxprom23.i.i = zext i32 %sub.i.i to i64
  %arrayidx24.i.i = getelementptr inbounds i8, ptr %19, i64 %idxprom23.i.i
  %32 = load i8, ptr %arrayidx24.i.i, align 1, !tbaa !28
  %cmp26.not.i.i = icmp ne i8 %32, 0
  %inc29.i.i = zext i1 %cmp26.not.i.i to i32
  %spec.select99.i.i = add nsw i32 %nnotstringlbl.0110.i.i, %inc29.i.i
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %land.lhs.true.i.i, %if.then17.i.i
  %nnotstringlbl.1.i.i = phi i32 [ %nnotstringlbl.0110.i.i, %if.then17.i.i ], [ %spec.select99.i.i, %land.lhs.true.i.i ]
  %33 = and i32 %31, 3
  %cmp33.not.i.i = icmp ne i32 %33, 0
  %inc36.i.i = zext i1 %cmp33.not.i.i to i32
  %spec.select100.i.i = add nsw i32 %nnotcelllbl.0111.i.i, %inc36.i.i
  br label %for.inc39.i.i

for.inc39.i.i:                                    ; preds = %if.end30.i.i, %for.body14.i.i
  %nnotstringlbl.2.i.i = phi i32 [ %nnotstringlbl.0110.i.i, %for.body14.i.i ], [ %nnotstringlbl.1.i.i, %if.end30.i.i ]
  %nnotcelllbl.1.i.i = phi i32 [ %nnotcelllbl.0111.i.i, %for.body14.i.i ], [ %spec.select100.i.i, %if.end30.i.i ]
  %next.i222.i = getelementptr inbounds %struct.marker, ptr %m.0108.i.i, i64 0, i32 3
  %34 = load ptr, ptr %next.i222.i, align 8, !tbaa !40
  %tobool.not.i223.i = icmp eq ptr %34, null
  br i1 %tobool.not.i223.i, label %for.end40.i.i, label %for.body14.i.i

for.end40.i.i:                                    ; preds = %for.inc39.i.i, %for.cond13.preheader.i.i
  %nnotstringlbl.0.lcssa.i.i = phi i32 [ 0, %for.cond13.preheader.i.i ], [ %nnotstringlbl.2.i.i, %for.inc39.i.i ]
  %nnotcelllbl.0.lcssa.i.i = phi i32 [ 0, %for.cond13.preheader.i.i ], [ %nnotcelllbl.1.i.i, %for.inc39.i.i ]
  %sub41.i.i = add nsw i32 %18, -1
  %idxprom42.i.i = sext i32 %sub41.i.i to i64
  %arrayidx43.i.i = getelementptr inbounds i8, ptr %19, i64 %idxprom42.i.i
  %35 = load i8, ptr %arrayidx43.i.i, align 1, !tbaa !28
  %cmp45.i.i = icmp eq i8 %35, 0
  %cmp48.i.i = icmp eq i32 %nnotstring.0.lcssa.i.i, 0
  %or.cond.i.i = select i1 %cmp45.i.i, i1 %cmp48.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true50.i.i, label %if.else.i.i

land.lhs.true50.i.i:                              ; preds = %for.end40.i.i
  %sub51.i.i = sub nsw i32 %18, %nnul.0.lcssa.i.i
  %cmp52.i.i = icmp sle i32 %nnul.0.lcssa.i.i, %sub51.i.i
  %cmp55.i.i = icmp eq i32 %nnotstringlbl.0.lcssa.i.i, 0
  %or.cond75.i.i = select i1 %cmp52.i.i, i1 %cmp55.i.i, i1 false
  br i1 %or.cond75.i.i, label %guess_value_type.exit.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true50.i.i, %for.end40.i.i
  %36 = and i32 %18, 3
  %cmp60.i.i = icmp eq i32 %36, 0
  %cmp63.i.i = icmp eq i32 %nnotcelllbl.0.lcssa.i.i, 0
  %or.cond76.i.i = select i1 %cmp60.i.i, i1 %cmp63.i.i, i1 false
  %..i.i = select i1 %or.cond76.i.i, i32 6, i32 4
  br label %guess_value_type.exit.i

guess_value_type.exit.i:                          ; preds = %if.else.i.i, %land.lhs.true50.i.i
  %retval.0.i.i = phi i32 [ 8, %land.lhs.true50.i.i ], [ %..i.i, %if.else.i.i ]
  store i32 %retval.0.i.i, ptr %dummy_marker.i, align 8, !tbaa !38
  store ptr %20, ptr %next.i, align 8, !tbaa !40
  store i32 0, ptr %offset.i, align 4, !tbaa !44
  store ptr null, ptr %ref.i, align 8, !tbaa !45
  br label %if.end19.i

if.end19.i:                                       ; preds = %guess_value_type.exit.i, %for.body.i.i
  %m.0.i = phi ptr [ %dummy_marker.i, %guess_value_type.exit.i ], [ %12, %for.body.i.i ]
  %val38.i = getelementptr inbounds %struct.property, ptr %prop.0153, i64 0, i32 2, i32 1
  br label %for.body.i122

for.body.i122:                                    ; preds = %cleanup.i, %if.end19.i
  %m.1373.i = phi ptr [ %m.0.i, %if.end19.i ], [ %100, %cleanup.i ]
  %emit_type.0372.i = phi i32 [ 0, %if.end19.i ], [ %emit_type.3.i, %cleanup.i ]
  %next21.i = getelementptr inbounds %struct.marker, ptr %m.1373.i, i64 0, i32 3
  %37 = load ptr, ptr %next21.i, align 8, !tbaa !40
  %tobool22.not.i = icmp eq ptr %37, null
  br i1 %tobool22.not.i, label %cond.end.thread.i, label %cond.end.i

cond.end.thread.i:                                ; preds = %for.body.i122
  %offset26293.i = getelementptr inbounds %struct.marker, ptr %m.1373.i, i64 0, i32 1
  %38 = load i32, ptr %offset26293.i, align 4, !tbaa !44
  %conv27294.i = zext i32 %38 to i64
  %sub295.i = sub nsw i64 %conv.i, %conv27294.i
  br label %cond.false31.i

cond.end.i:                                       ; preds = %for.body.i122
  %offset24.i = getelementptr inbounds %struct.marker, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %offset24.i, align 4, !tbaa !44
  %conv25.i = zext i32 %39 to i64
  %offset26.i = getelementptr inbounds %struct.marker, ptr %m.1373.i, i64 0, i32 1
  %40 = load i32, ptr %offset26.i, align 4, !tbaa !44
  %conv27.i = zext i32 %40 to i64
  %sub.i = sub nsw i64 %conv25.i, %conv27.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i, %cond.end.i
  %m.addr.05.i.i.i = phi ptr [ %42, %for.inc.i.i.i ], [ %37, %cond.end.i ]
  %41 = load i32, ptr %m.addr.05.i.i.i, align 8, !tbaa !38
  %cmp.i.i.i.i = icmp ugt i32 %41, 3
  br i1 %cmp.i.i.i.i, label %type_marker_length.exit.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %next.i.i.i = getelementptr inbounds %struct.marker, ptr %m.addr.05.i.i.i, i64 0, i32 3
  %42 = load ptr, ptr %next.i.i.i, align 8, !tbaa !40
  %tobool.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.i, label %cond.false31.i, label %for.body.i.i.i

type_marker_length.exit.i:                        ; preds = %for.body.i.i.i
  %offset.i224.i = getelementptr inbounds %struct.marker, ptr %m.addr.05.i.i.i, i64 0, i32 1
  %43 = load i32, ptr %offset.i224.i, align 4, !tbaa !44
  %sub.i225.i = sub i32 %43, %40
  %conv.i.i = zext i32 %sub.i225.i to i64
  %tobool29.not.i = icmp eq i32 %43, %40
  br i1 %tobool29.not.i, label %cond.false31.i, label %cond.end35.i

cond.false31.i:                                   ; preds = %type_marker_length.exit.i, %for.inc.i.i.i, %cond.end.thread.i
  %cond296314.i = phi i64 [ %conv25.i, %type_marker_length.exit.i ], [ %conv.i, %cond.end.thread.i ], [ %conv25.i, %for.inc.i.i.i ]
  %offset26297312.i = phi ptr [ %offset26.i, %type_marker_length.exit.i ], [ %offset26293.i, %cond.end.thread.i ], [ %offset26.i, %for.inc.i.i.i ]
  %conv27298310.i = phi i64 [ %conv27.i, %type_marker_length.exit.i ], [ %conv27294.i, %cond.end.thread.i ], [ %conv27.i, %for.inc.i.i.i ]
  %sub299308.i = phi i64 [ %sub.i, %type_marker_length.exit.i ], [ %sub295.i, %cond.end.thread.i ], [ %sub.i, %for.inc.i.i.i ]
  %sub34.i = sub nsw i64 %conv.i, %conv27298310.i
  br label %cond.end35.i

cond.end35.i:                                     ; preds = %cond.false31.i, %type_marker_length.exit.i
  %cond296313.i = phi i64 [ %cond296314.i, %cond.false31.i ], [ %conv25.i, %type_marker_length.exit.i ]
  %offset26297311.i = phi ptr [ %offset26297312.i, %cond.false31.i ], [ %offset26.i, %type_marker_length.exit.i ]
  %conv27298309.i = phi i64 [ %conv27298310.i, %cond.false31.i ], [ %conv27.i, %type_marker_length.exit.i ]
  %sub299307.i = phi i64 [ %sub299308.i, %cond.false31.i ], [ %sub.i, %type_marker_length.exit.i ]
  %cond36.i = phi i64 [ %sub34.i, %cond.false31.i ], [ %conv.i.i, %type_marker_length.exit.i ]
  %44 = load ptr, ptr %val38.i, align 8, !tbaa !41
  %arrayidx.i = getelementptr inbounds i8, ptr %44, i64 %conv27298309.i
  %45 = load i32, ptr %m.1373.i, align 8, !tbaa !38
  %cmp.i.i = icmp ugt i32 %45, 3
  br i1 %cmp.i.i, label %if.then42.i, label %if.else.i

if.then42.i:                                      ; preds = %cond.end35.i
  %idxprom44.i = zext i32 %45 to i64
  %arrayidx45.i = getelementptr inbounds [9 x ptr], ptr @delim_start, i64 0, i64 %idxprom44.i
  br label %if.end54.sink.split.i

if.else.i:                                        ; preds = %cond.end35.i
  %cmp48.i = icmp eq i32 %45, 3
  br i1 %cmp48.i, label %if.then50.i, label %if.end54.i

if.then50.i:                                      ; preds = %if.else.i
  %ref51.i = getelementptr inbounds %struct.marker, ptr %m.1373.i, i64 0, i32 2
  br label %if.end54.sink.split.i

if.end54.sink.split.i:                            ; preds = %if.then50.i, %if.then42.i
  %ref51.sink.i = phi ptr [ %ref51.i, %if.then50.i ], [ %arrayidx45.i, %if.then42.i ]
  %.str.15.sink.i = phi ptr [ @.str.15, %if.then50.i ], [ @.str.14, %if.then42.i ]
  %emit_type.1.ph.i = phi i32 [ %emit_type.0372.i, %if.then50.i ], [ %45, %if.then42.i ]
  %46 = load ptr, ptr %ref51.sink.i, align 8, !tbaa !5
  %call52.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull %.str.15.sink.i, ptr noundef %46) #10
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end54.sink.split.i, %if.else.i
  %emit_type.1.i = phi i32 [ %emit_type.0372.i, %if.else.i ], [ %emit_type.1.ph.i, %if.end54.sink.split.i ]
  %cmp55.i = icmp eq i32 %emit_type.1.i, 0
  %cmp57.i = icmp eq i64 %cond296313.i, %conv27298309.i
  %or.cond.i = select i1 %cmp55.i, i1 true, i1 %cmp57.i
  br i1 %or.cond.i, label %cleanup.i, label %if.end60.i

if.end60.i:                                       ; preds = %if.end54.i
  switch i32 %emit_type.1.i, label %sw.default.i [
    i32 5, label %sw.bb.i
    i32 6, label %for.cond64.preheader.i
    i32 7, label %sw.bb101.i
    i32 8, label %sw.bb102.i
  ]

for.cond64.preheader.i:                           ; preds = %if.end60.i
  %m_phandle.0320.i = load ptr, ptr %markers.i, align 8, !tbaa !5
  %tobool65.not321.i = icmp eq ptr %m_phandle.0320.i, null
  br i1 %tobool65.not321.i, label %if.else99.i, label %for.body66.i

sw.bb.i:                                          ; preds = %if.end60.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 %sub299307.i
  %rem.i.i = and i64 %sub299307.i, 1
  %cmp.i227.i = icmp eq i64 %rem.i.i, 0
  br i1 %cmp.i227.i, label %for.cond.preheader.i.i, label %if.else.i228.i

for.cond.preheader.i.i:                           ; preds = %sw.bb.i
  %cmp149.i.i = icmp sgt i64 %sub299307.i, 0
  br i1 %cmp149.i.i, label %for.body.i229.preheader.i, label %sw.epilog.i

for.body.i229.preheader.i:                        ; preds = %for.cond.preheader.i.i
  %47 = load i8, ptr %arrayidx.i, align 1, !tbaa !28
  %conv1.i.i358.i = zext i8 %47 to i32
  %shl.i.i359.i = shl nuw nsw i32 %conv1.i.i358.i, 8
  %arrayidx2.i.i360.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 1
  %48 = load i8, ptr %arrayidx2.i.i360.i, align 1, !tbaa !28
  %conv3.i.i361.i = zext i8 %48 to i32
  %or.i.i362.i = or i32 %shl.i.i359.i, %conv3.i.i361.i
  %call5.i363.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.28, i32 noundef %or.i.i362.i) #10
  %cmp13.i365.i = icmp ugt i64 %sub299307.i, 2
  br i1 %cmp13.i365.i, label %for.inc.i230.preheader.i, label %sw.epilog.i

for.inc.i230.preheader.i:                         ; preds = %for.body.i229.preheader.i
  %add.ptr12.i364.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 2
  br label %for.inc.i230.i

if.else.i228.i:                                   ; preds = %sw.bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.write_propval_int) #13
  unreachable

for.inc.i230.i:                                   ; preds = %for.inc.i230.i, %for.inc.i230.preheader.i
  %add.ptr12.i366.i = phi ptr [ %add.ptr12.i.i, %for.inc.i230.i ], [ %add.ptr12.i364.i, %for.inc.i230.preheader.i ]
  %call16.i.i = tail call i32 @fputc(i32 noundef 32, ptr noundef %f) #10
  %49 = load i8, ptr %add.ptr12.i366.i, align 1, !tbaa !28
  %conv1.i.i.i = zext i8 %49 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv1.i.i.i, 8
  %arrayidx2.i.i.i = getelementptr inbounds i8, ptr %add.ptr12.i366.i, i64 1
  %50 = load i8, ptr %arrayidx2.i.i.i, align 1, !tbaa !28
  %conv3.i.i.i = zext i8 %50 to i32
  %or.i.i.i = or i32 %shl.i.i.i, %conv3.i.i.i
  %call5.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.28, i32 noundef %or.i.i.i) #10
  %add.ptr12.i.i = getelementptr inbounds i8, ptr %add.ptr12.i366.i, i64 2
  %cmp13.i.i = icmp ult ptr %add.ptr12.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %for.inc.i230.i, label %sw.epilog.i

for.body66.i:                                     ; preds = %for.inc.i, %for.cond64.preheader.i
  %m_phandle.0322.i = phi ptr [ %m_phandle.0.i, %for.inc.i ], [ %m_phandle.0320.i, %for.cond64.preheader.i ]
  %51 = load i32, ptr %m_phandle.0322.i, align 8, !tbaa !38
  %cmp68.i = icmp eq i32 %51, 1
  br i1 %cmp68.i, label %if.then70.i, label %for.inc.i

if.then70.i:                                      ; preds = %for.body66.i
  %52 = load i32, ptr %offset26297311.i, align 4, !tbaa !44
  %offset72.i = getelementptr inbounds %struct.marker, ptr %m_phandle.0322.i, i64 0, i32 1
  %53 = load i32, ptr %offset72.i, align 4, !tbaa !44
  %cmp73.i = icmp eq i32 %52, %53
  br i1 %cmp73.i, label %if.then80.critedge.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.then70.i, %for.body66.i
  %next78.i = getelementptr inbounds %struct.marker, ptr %m_phandle.0322.i, i64 0, i32 3
  %m_phandle.0.i = load ptr, ptr %next78.i, align 8, !tbaa !5
  %tobool65.not.i = icmp eq ptr %m_phandle.0.i, null
  br i1 %tobool65.not.i, label %if.else99.i, label %for.body66.i

if.then80.critedge.i:                             ; preds = %if.then70.i
  %ref81.i = getelementptr inbounds %struct.marker, ptr %m_phandle.0322.i, i64 0, i32 2
  %54 = load ptr, ptr %ref81.i, align 8, !tbaa !45
  %55 = load i8, ptr %54, align 1, !tbaa !28
  %cmp84.i = icmp eq i8 %55, 47
  %.str.16..str.17.i = select i1 %cmp84.i, ptr @.str.16, ptr @.str.17
  %call91.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull %.str.16..str.17.i, ptr noundef nonnull %54) #10
  %cmp93.i = icmp ugt i64 %sub299307.i, 4
  br i1 %cmp93.i, label %if.then95.i, label %sw.epilog.i

if.then95.i:                                      ; preds = %if.then80.critedge.i
  %call96.i = tail call i32 @fputc(i32 noundef 32, ptr noundef %f) #10
  %add.ptr.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 4
  %sub97.i = add nsw i64 %sub299307.i, -4
  %add.ptr.i231.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %sub97.i
  %rem.i232.i = and i64 %sub299307.i, 3
  %cmp.i233.i = icmp eq i64 %rem.i232.i, 0
  br i1 %cmp.i233.i, label %for.cond.preheader.i235.i, label %if.else.i236.i

for.cond.preheader.i235.i:                        ; preds = %if.then95.i
  %cmp149.i234.i = icmp sgt i64 %sub299307.i, 4
  br i1 %cmp149.i234.i, label %for.body.i238.preheader.i, label %sw.epilog.i

for.body.i238.preheader.i:                        ; preds = %for.cond.preheader.i235.i
  %56 = load i8, ptr %add.ptr.i, align 1, !tbaa !28
  %conv.i.i324.i = zext i8 %56 to i32
  %shl.i35.i325.i = shl nuw i32 %conv.i.i324.i, 24
  %arrayidx1.i.i326.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  %57 = load i8, ptr %arrayidx1.i.i326.i, align 1, !tbaa !28
  %conv2.i.i327.i = zext i8 %57 to i32
  %shl3.i.i328.i = shl nuw nsw i32 %conv2.i.i327.i, 16
  %or.i36.i329.i = or i32 %shl3.i.i328.i, %shl.i35.i325.i
  %arrayidx4.i.i330.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 2
  %58 = load i8, ptr %arrayidx4.i.i330.i, align 1, !tbaa !28
  %conv5.i.i331.i = zext i8 %58 to i32
  %shl6.i.i332.i = shl nuw nsw i32 %conv5.i.i331.i, 8
  %or7.i.i333.i = or i32 %or.i36.i329.i, %shl6.i.i332.i
  %arrayidx8.i.i334.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 3
  %59 = load i8, ptr %arrayidx8.i.i334.i, align 1, !tbaa !28
  %conv9.i.i335.i = zext i8 %59 to i32
  %or10.i.i336.i = or i32 %or7.i.i333.i, %conv9.i.i335.i
  %call8.i337.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.28, i32 noundef %or10.i.i336.i) #10
  %cmp13.i240339.i = icmp ugt i64 %sub299307.i, 8
  br i1 %cmp13.i240339.i, label %for.inc.i242.preheader.i, label %sw.epilog.i

for.inc.i242.preheader.i:                         ; preds = %for.body.i238.preheader.i
  %add.ptr12.i239338.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4
  br label %for.inc.i242.i

if.else.i236.i:                                   ; preds = %if.then95.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.write_propval_int) #13
  unreachable

for.inc.i242.i:                                   ; preds = %for.inc.i242.i, %for.inc.i242.preheader.i
  %add.ptr12.i239340.i = phi ptr [ %add.ptr12.i239.i, %for.inc.i242.i ], [ %add.ptr12.i239338.i, %for.inc.i242.preheader.i ]
  %call16.i241.i = tail call i32 @fputc(i32 noundef 32, ptr noundef %f) #10
  %60 = load i8, ptr %add.ptr12.i239340.i, align 1, !tbaa !28
  %conv.i.i.i = zext i8 %60 to i32
  %shl.i35.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %add.ptr12.i239340.i, i64 1
  %61 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !28
  %conv2.i.i.i = zext i8 %61 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i36.i.i = or i32 %shl3.i.i.i, %shl.i35.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %add.ptr12.i239340.i, i64 2
  %62 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !28
  %conv5.i.i.i = zext i8 %62 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i36.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %add.ptr12.i239340.i, i64 3
  %63 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !28
  %conv9.i.i.i = zext i8 %63 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %call8.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.28, i32 noundef %or10.i.i.i) #10
  %add.ptr12.i239.i = getelementptr inbounds i8, ptr %add.ptr12.i239340.i, i64 4
  %cmp13.i240.i = icmp ult ptr %add.ptr12.i239.i, %add.ptr.i231.i
  br i1 %cmp13.i240.i, label %for.inc.i242.i, label %sw.epilog.i

if.else99.i:                                      ; preds = %for.inc.i, %for.cond64.preheader.i
  %add.ptr.i244.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 %sub299307.i
  %rem.i245.i = and i64 %sub299307.i, 3
  %cmp.i246.i = icmp eq i64 %rem.i245.i, 0
  br i1 %cmp.i246.i, label %for.cond.preheader.i248.i, label %if.else.i249.i

for.cond.preheader.i248.i:                        ; preds = %if.else99.i
  %cmp149.i247.i = icmp sgt i64 %sub299307.i, 0
  br i1 %cmp149.i247.i, label %for.body.i251.preheader.i, label %sw.epilog.i

for.body.i251.preheader.i:                        ; preds = %for.cond.preheader.i248.i
  %64 = load i8, ptr %arrayidx.i, align 1, !tbaa !28
  %conv.i.i252341.i = zext i8 %64 to i32
  %shl.i35.i253342.i = shl nuw i32 %conv.i.i252341.i, 24
  %arrayidx1.i.i254343.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 1
  %65 = load i8, ptr %arrayidx1.i.i254343.i, align 1, !tbaa !28
  %conv2.i.i255344.i = zext i8 %65 to i32
  %shl3.i.i256345.i = shl nuw nsw i32 %conv2.i.i255344.i, 16
  %or.i36.i257346.i = or i32 %shl3.i.i256345.i, %shl.i35.i253342.i
  %arrayidx4.i.i258347.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 2
  %66 = load i8, ptr %arrayidx4.i.i258347.i, align 1, !tbaa !28
  %conv5.i.i259348.i = zext i8 %66 to i32
  %shl6.i.i260349.i = shl nuw nsw i32 %conv5.i.i259348.i, 8
  %or7.i.i261350.i = or i32 %or.i36.i257346.i, %shl6.i.i260349.i
  %arrayidx8.i.i262351.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 3
  %67 = load i8, ptr %arrayidx8.i.i262351.i, align 1, !tbaa !28
  %conv9.i.i263352.i = zext i8 %67 to i32
  %or10.i.i264353.i = or i32 %or7.i.i261350.i, %conv9.i.i263352.i
  %call8.i265354.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.28, i32 noundef %or10.i.i264353.i) #10
  %cmp13.i267356.i = icmp ugt i64 %sub299307.i, 4
  br i1 %cmp13.i267356.i, label %for.inc.i269.preheader.i, label %sw.epilog.i

for.inc.i269.preheader.i:                         ; preds = %for.body.i251.preheader.i
  %add.ptr12.i266355.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 4
  br label %for.inc.i269.i

if.else.i249.i:                                   ; preds = %if.else99.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.write_propval_int) #13
  unreachable

for.inc.i269.i:                                   ; preds = %for.inc.i269.i, %for.inc.i269.preheader.i
  %add.ptr12.i266357.i = phi ptr [ %add.ptr12.i266.i, %for.inc.i269.i ], [ %add.ptr12.i266355.i, %for.inc.i269.preheader.i ]
  %call16.i268.i = tail call i32 @fputc(i32 noundef 32, ptr noundef %f) #10
  %68 = load i8, ptr %add.ptr12.i266357.i, align 1, !tbaa !28
  %conv.i.i252.i = zext i8 %68 to i32
  %shl.i35.i253.i = shl nuw i32 %conv.i.i252.i, 24
  %arrayidx1.i.i254.i = getelementptr inbounds i8, ptr %add.ptr12.i266357.i, i64 1
  %69 = load i8, ptr %arrayidx1.i.i254.i, align 1, !tbaa !28
  %conv2.i.i255.i = zext i8 %69 to i32
  %shl3.i.i256.i = shl nuw nsw i32 %conv2.i.i255.i, 16
  %or.i36.i257.i = or i32 %shl3.i.i256.i, %shl.i35.i253.i
  %arrayidx4.i.i258.i = getelementptr inbounds i8, ptr %add.ptr12.i266357.i, i64 2
  %70 = load i8, ptr %arrayidx4.i.i258.i, align 1, !tbaa !28
  %conv5.i.i259.i = zext i8 %70 to i32
  %shl6.i.i260.i = shl nuw nsw i32 %conv5.i.i259.i, 8
  %or7.i.i261.i = or i32 %or.i36.i257.i, %shl6.i.i260.i
  %arrayidx8.i.i262.i = getelementptr inbounds i8, ptr %add.ptr12.i266357.i, i64 3
  %71 = load i8, ptr %arrayidx8.i.i262.i, align 1, !tbaa !28
  %conv9.i.i263.i = zext i8 %71 to i32
  %or10.i.i264.i = or i32 %or7.i.i261.i, %conv9.i.i263.i
  %call8.i265.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.28, i32 noundef %or10.i.i264.i) #10
  %add.ptr12.i266.i = getelementptr inbounds i8, ptr %add.ptr12.i266357.i, i64 4
  %cmp13.i267.i = icmp ult ptr %add.ptr12.i266.i, %add.ptr.i244.i
  br i1 %cmp13.i267.i, label %for.inc.i269.i, label %sw.epilog.i

sw.bb101.i:                                       ; preds = %if.end60.i
  %add.ptr.i130 = getelementptr inbounds i8, ptr %arrayidx.i, i64 %sub299307.i
  %rem.i = and i64 %sub299307.i, 7
  %cmp.i131 = icmp eq i64 %rem.i, 0
  br i1 %cmp.i131, label %for.cond.preheader.i, label %if.else.i132

for.cond.preheader.i:                             ; preds = %sw.bb101.i
  %cmp149.i = icmp sgt i64 %sub299307.i, 0
  br i1 %cmp149.i, label %for.body.i133, label %sw.epilog.i

if.else.i132:                                     ; preds = %sw.bb101.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.write_propval_int) #13
  unreachable

for.body.i133:                                    ; preds = %for.inc.i136, %for.cond.preheader.i
  %p.addr.050.i = phi ptr [ %add.ptr12.i, %for.inc.i136 ], [ %arrayidx.i, %for.cond.preheader.i ]
  %72 = load i8, ptr %p.addr.050.i, align 1, !tbaa !28
  %conv.i37.i = zext i8 %72 to i64
  %shl.i38.i = shl nuw i64 %conv.i37.i, 56
  %arrayidx1.i39.i = getelementptr inbounds i8, ptr %p.addr.050.i, i64 1
  %73 = load i8, ptr %arrayidx1.i39.i, align 1, !tbaa !28
  %conv2.i40.i = zext i8 %73 to i64
  %shl3.i41.i = shl nuw nsw i64 %conv2.i40.i, 48
  %or.i42.i = or i64 %shl3.i41.i, %shl.i38.i
  %arrayidx4.i43.i = getelementptr inbounds i8, ptr %p.addr.050.i, i64 2
  %74 = load i8, ptr %arrayidx4.i43.i, align 1, !tbaa !28
  %conv5.i44.i = zext i8 %74 to i64
  %shl6.i45.i = shl nuw nsw i64 %conv5.i44.i, 40
  %or7.i46.i = or i64 %or.i42.i, %shl6.i45.i
  %arrayidx8.i47.i = getelementptr inbounds i8, ptr %p.addr.050.i, i64 3
  %75 = load i8, ptr %arrayidx8.i47.i, align 1, !tbaa !28
  %conv9.i48.i = zext i8 %75 to i64
  %shl10.i.i = shl nuw nsw i64 %conv9.i48.i, 32
  %or11.i.i = or i64 %or7.i46.i, %shl10.i.i
  %arrayidx12.i.i = getelementptr inbounds i8, ptr %p.addr.050.i, i64 4
  %76 = load i8, ptr %arrayidx12.i.i, align 1, !tbaa !28
  %conv13.i.i = zext i8 %76 to i64
  %shl14.i.i = shl nuw nsw i64 %conv13.i.i, 24
  %or15.i.i = or i64 %or11.i.i, %shl14.i.i
  %arrayidx16.i.i = getelementptr inbounds i8, ptr %p.addr.050.i, i64 5
  %77 = load i8, ptr %arrayidx16.i.i, align 1, !tbaa !28
  %conv17.i.i = zext i8 %77 to i64
  %shl18.i.i = shl nuw nsw i64 %conv17.i.i, 16
  %or19.i.i = or i64 %or15.i.i, %shl18.i.i
  %arrayidx20.i.i = getelementptr inbounds i8, ptr %p.addr.050.i, i64 6
  %78 = load i8, ptr %arrayidx20.i.i, align 1, !tbaa !28
  %conv21.i.i = zext i8 %78 to i64
  %shl22.i.i = shl nuw nsw i64 %conv21.i.i, 8
  %or23.i.i = or i64 %or19.i.i, %shl22.i.i
  %arrayidx24.i.i134 = getelementptr inbounds i8, ptr %p.addr.050.i, i64 7
  %79 = load i8, ptr %arrayidx24.i.i134, align 1, !tbaa !28
  %conv25.i.i = zext i8 %79 to i64
  %or26.i.i = or i64 %or23.i.i, %conv25.i.i
  %call11.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.29, i64 noundef %or26.i.i) #10
  %add.ptr12.i = getelementptr inbounds i8, ptr %p.addr.050.i, i64 8
  %cmp13.i = icmp ult ptr %add.ptr12.i, %add.ptr.i130
  br i1 %cmp13.i, label %for.inc.i136, label %sw.epilog.i

for.inc.i136:                                     ; preds = %for.body.i133
  %call16.i = tail call i32 @fputc(i32 noundef 32, ptr noundef %f) #10
  br label %for.body.i133

sw.bb102.i:                                       ; preds = %if.end60.i
  %add.ptr.i271.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 -1
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i271.i, i64 %sub299307.i
  %tobool.not.i272.i = icmp eq i64 %sub299307.i, 0
  br i1 %tobool.not.i272.i, label %sw.epilog.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %sw.bb102.i
  %80 = load i8, ptr %add.ptr1.i.i, align 1, !tbaa !28
  %cmp.i273.i = icmp eq i8 %80, 0
  br i1 %cmp.i273.i, label %if.end4.i.i, label %if.else.i274.i

if.else.i274.i:                                   ; preds = %if.end.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26, i32 noundef 56, ptr noundef nonnull @__PRETTY_FUNCTION__.write_propval_string) #13
  unreachable

if.end4.i.i:                                      ; preds = %if.end.i.i
  %fputc.i.i = tail call i32 @fputc(i32 34, ptr %f) #10
  %cmp561.i.i = icmp ugt ptr %add.ptr1.i.i, %arrayidx.i
  br i1 %cmp561.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %sw.epilog.i.i, %if.end4.i.i
  %s.addr.062.i.i = phi ptr [ %incdec.ptr.i.i, %sw.epilog.i.i ], [ %arrayidx.i, %if.end4.i.i ]
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %s.addr.062.i.i, i64 1
  %81 = load i8, ptr %s.addr.062.i.i, align 1, !tbaa !28
  %conv7.i.i = sext i8 %81 to i32
  switch i32 %conv7.i.i, label %sw.default.i.i [
    i32 7, label %sw.bb.i.i
    i32 8, label %sw.bb9.i.i
    i32 9, label %sw.bb11.i.i
    i32 10, label %sw.bb13.i.i
    i32 11, label %sw.bb15.i.i
    i32 12, label %sw.bb17.i.i
    i32 13, label %sw.bb19.i.i
    i32 92, label %sw.bb21.i.i
    i32 34, label %sw.bb23.i.i
    i32 0, label %sw.bb25.i.i
  ]

sw.bb.i.i:                                        ; preds = %while.body.i.i
  %82 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 2, i64 1, ptr %f) #10
  br label %sw.epilog.i.i

sw.bb9.i.i:                                       ; preds = %while.body.i.i
  %83 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 2, i64 1, ptr %f) #10
  br label %sw.epilog.i.i

sw.bb11.i.i:                                      ; preds = %while.body.i.i
  %84 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %f) #10
  br label %sw.epilog.i.i

sw.bb13.i.i:                                      ; preds = %while.body.i.i
  %85 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 2, i64 1, ptr %f) #10
  br label %sw.epilog.i.i

sw.bb15.i.i:                                      ; preds = %while.body.i.i
  %86 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 2, i64 1, ptr %f) #10
  br label %sw.epilog.i.i

sw.bb17.i.i:                                      ; preds = %while.body.i.i
  %87 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %f) #10
  br label %sw.epilog.i.i

sw.bb19.i.i:                                      ; preds = %while.body.i.i
  %88 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 2, i64 1, ptr %f) #10
  br label %sw.epilog.i.i

sw.bb21.i.i:                                      ; preds = %while.body.i.i
  %89 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 2, i64 1, ptr %f) #10
  br label %sw.epilog.i.i

sw.bb23.i.i:                                      ; preds = %while.body.i.i
  %90 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 2, i64 1, ptr %f) #10
  br label %sw.epilog.i.i

sw.bb25.i.i:                                      ; preds = %while.body.i.i
  %91 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 2, i64 1, ptr %f) #10
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %while.body.i.i
  %call27.i.i = tail call ptr @__ctype_b_loc() #14
  %92 = load ptr, ptr %call27.i.i, align 8, !tbaa !5
  %93 = zext i8 %81 to i64
  %arrayidx.i275.i = getelementptr inbounds i16, ptr %92, i64 %93
  %94 = load i16, ptr %arrayidx.i275.i, align 2, !tbaa !42
  %95 = and i16 %94, 16384
  %tobool30.not.i.i = icmp eq i16 %95, 0
  br i1 %tobool30.not.i.i, label %if.else34.i.i, label %if.then31.i.i

if.then31.i.i:                                    ; preds = %sw.default.i.i
  %fputc60.i.i = tail call i32 @fputc(i32 %conv7.i.i, ptr %f) #10
  br label %sw.epilog.i.i

if.else34.i.i:                                    ; preds = %sw.default.i.i
  %call36.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.43, i32 noundef %conv7.i.i) #10
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.else34.i.i, %if.then31.i.i, %sw.bb25.i.i, %sw.bb23.i.i, %sw.bb21.i.i, %sw.bb19.i.i, %sw.bb17.i.i, %sw.bb15.i.i, %sw.bb13.i.i, %sw.bb11.i.i, %sw.bb9.i.i, %sw.bb.i.i
  %exitcond.not.i276.i = icmp eq ptr %incdec.ptr.i.i, %add.ptr1.i.i
  br i1 %exitcond.not.i276.i, label %while.end.i.i, label %while.body.i.i

while.end.i.i:                                    ; preds = %sw.epilog.i.i, %if.end4.i.i
  %fputc59.i.i = tail call i32 @fputc(i32 34, ptr %f) #10
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end60.i
  %add.ptr.i277.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 %sub299307.i
  %cmp149.i278.i = icmp sgt i64 %sub299307.i, 0
  br i1 %cmp149.i278.i, label %for.body.i281.preheader.i, label %sw.epilog.i

for.body.i281.preheader.i:                        ; preds = %sw.default.i
  %96 = load i8, ptr %arrayidx.i, align 1, !tbaa !28
  %conv.i282367.i = zext i8 %96 to i32
  %call.i368.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.27, i32 noundef %conv.i282367.i) #10
  %cmp13.i285370.not.i = icmp eq i64 %sub299307.i, 1
  br i1 %cmp13.i285370.not.i, label %sw.epilog.i, label %for.inc.i288.preheader.i

for.inc.i288.preheader.i:                         ; preds = %for.body.i281.preheader.i
  %add.ptr12.i284369.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 1
  br label %for.inc.i288.i

for.inc.i288.i:                                   ; preds = %for.inc.i288.i, %for.inc.i288.preheader.i
  %add.ptr12.i284371.i = phi ptr [ %add.ptr12.i284.i, %for.inc.i288.i ], [ %add.ptr12.i284369.i, %for.inc.i288.preheader.i ]
  %call16.i287.i = tail call i32 @fputc(i32 noundef 32, ptr noundef %f) #10
  %97 = load i8, ptr %add.ptr12.i284371.i, align 1, !tbaa !28
  %conv.i282.i = zext i8 %97 to i32
  %call.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.27, i32 noundef %conv.i282.i) #10
  %add.ptr12.i284.i = getelementptr inbounds i8, ptr %add.ptr12.i284371.i, i64 1
  %cmp13.i285.i = icmp ult ptr %add.ptr12.i284.i, %add.ptr.i277.i
  br i1 %cmp13.i285.i, label %for.inc.i288.i, label %sw.epilog.i

sw.epilog.i:                                      ; preds = %for.inc.i288.i, %for.body.i281.preheader.i, %sw.default.i, %while.end.i.i, %sw.bb102.i, %for.body.i133, %for.cond.preheader.i, %for.inc.i269.i, %for.body.i251.preheader.i, %for.cond.preheader.i248.i, %for.inc.i242.i, %for.body.i238.preheader.i, %for.cond.preheader.i235.i, %if.then80.critedge.i, %for.inc.i230.i, %for.body.i229.preheader.i, %for.cond.preheader.i.i
  %sub300.i = phi i64 [ %sub299307.i, %if.then80.critedge.i ], [ %sub299307.i, %for.cond.preheader.i.i ], [ %sub299307.i, %for.cond.preheader.i235.i ], [ %sub299307.i, %for.cond.preheader.i248.i ], [ 0, %sw.bb102.i ], [ %sub299307.i, %while.end.i.i ], [ %sub299307.i, %sw.default.i ], [ 1, %for.body.i281.preheader.i ], [ %sub299307.i, %for.body.i229.preheader.i ], [ %sub299307.i, %for.body.i251.preheader.i ], [ %sub299307.i, %for.body.i238.preheader.i ], [ %sub299307.i, %for.cond.preheader.i ], [ %sub299307.i, %for.inc.i288.i ], [ %sub299307.i, %for.inc.i230.i ], [ %sub299307.i, %for.inc.i269.i ], [ %sub299307.i, %for.inc.i242.i ], [ %sub299307.i, %for.body.i133 ]
  %cmp103.i = icmp eq i64 %sub300.i, %cond36.i
  br i1 %cmp103.i, label %if.then105.i, label %cleanup.i

if.then105.i:                                     ; preds = %sw.epilog.i
  %98 = load i32, ptr %offset26297311.i, align 4, !tbaa !44
  %conv107.i = zext i32 %98 to i64
  %add.i = add nsw i64 %cond36.i, %conv107.i
  %cmp108.i = icmp eq i64 %add.i, %conv.i
  %cond110.i = select i1 %cmp108.i, ptr @.str.10, ptr @.str.18
  %idxprom111.i = zext i32 %emit_type.1.i to i64
  %arrayidx112.i = getelementptr inbounds [9 x ptr], ptr @delim_end, i64 0, i64 %idxprom111.i
  %99 = load ptr, ptr %arrayidx112.i, align 8, !tbaa !5
  %tobool113.not.i = icmp ult i32 %emit_type.1.i, 4
  %..str.19.i = select i1 %tobool113.not.i, ptr @.str.19, ptr %99
  %call118.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull %cond110.i, ptr noundef %..str.19.i) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then105.i, %sw.epilog.i, %if.end54.i
  %emit_type.3.i = phi i32 [ %emit_type.1.i, %if.end54.i ], [ 0, %if.then105.i ], [ %emit_type.1.i, %sw.epilog.i ]
  %100 = load ptr, ptr %next21.i, align 8, !tbaa !40
  %tobool20.not.i = icmp eq ptr %100, null
  br i1 %tobool20.not.i, label %for.end125.i, label %for.body.i122

for.end125.i:                                     ; preds = %cleanup.i
  %fputc.i = tail call i32 @fputc(i32 59, ptr %f) #10
  %101 = load i32, ptr @annotate, align 4, !tbaa !29
  %tobool127.not.i = icmp eq i32 %101, 0
  br i1 %tobool127.not.i, label %write_propval.exit, label %if.then128.i

if.then128.i:                                     ; preds = %for.end125.i
  %srcpos129.i = getelementptr inbounds %struct.property, ptr %prop.0153, i64 0, i32 5
  %102 = load ptr, ptr %srcpos129.i, align 8, !tbaa !37
  %call130.i = tail call ptr @srcpos_string_first(ptr noundef %102, i32 noundef %101) #10
  %tobool131.not.i = icmp eq ptr %call130.i, null
  br i1 %tobool131.not.i, label %write_propval.exit, label %write_propval.exit.sink.split

write_propval.exit.sink.split:                    ; preds = %if.then128.i, %if.then4.i
  %call130.i.sink174 = phi ptr [ %call5.i, %if.then4.i ], [ %call130.i, %if.then128.i ]
  %call133.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.8, ptr noundef nonnull %call130.i.sink174) #10
  tail call void @free(ptr noundef nonnull %call130.i.sink174) #10
  br label %write_propval.exit

write_propval.exit:                               ; preds = %write_propval.exit.sink.split, %if.then128.i, %for.end125.i, %if.then4.i, %if.then.i
  %fputc219.i = tail call i32 @fputc(i32 10, ptr %f) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dummy_marker.i) #10
  br label %for.inc41

for.inc41:                                        ; preds = %write_propval.exit, %for.body21
  %next42 = getelementptr inbounds %struct.property, ptr %prop.0153, i64 0, i32 3
  %prop.0 = load ptr, ptr %next42, align 8, !tbaa !5
  %tobool20.not = icmp eq ptr %prop.0, null
  br i1 %tobool20.not, label %for.end43, label %for.body21

for.end43:                                        ; preds = %for.inc41, %if.end17
  %children = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 3
  %child.0158 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool45.not159 = icmp eq ptr %child.0158, null
  br i1 %tobool45.not159, label %for.end54, label %for.body46.lr.ph

for.body46.lr.ph:                                 ; preds = %for.end43
  %add51 = add nsw i32 %level, 1
  br label %for.body46

for.body46:                                       ; preds = %for.inc53, %for.body46.lr.ph
  %child.0160 = phi ptr [ %child.0158, %for.body46.lr.ph ], [ %child.0, %for.inc53 ]
  %103 = load i8, ptr %child.0160, align 8, !tbaa !46, !range !16
  %tobool48.not = icmp eq i8 %103, 0
  br i1 %tobool48.not, label %if.then49, label %for.inc53

if.then49:                                        ; preds = %for.body46
  %fputc114 = tail call i32 @fputc(i32 10, ptr %f)
  tail call fastcc void @write_tree_source_node(ptr noundef %f, ptr noundef nonnull %child.0160, i32 noundef %add51)
  br label %for.inc53

for.inc53:                                        ; preds = %if.then49, %for.body46
  %next_sibling = getelementptr inbounds %struct.node, ptr %child.0160, i64 0, i32 5
  %child.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool45.not = icmp eq ptr %child.0, null
  br i1 %tobool45.not, label %for.end54, label %for.body46

for.end54:                                        ; preds = %for.inc53, %for.end43
  br i1 %cmp2.i, label %for.body.i128, label %write_prefix.exit129

for.body.i128:                                    ; preds = %for.body.i128, %for.end54
  %i.03.i124 = phi i32 [ %inc.i126, %for.body.i128 ], [ 0, %for.end54 ]
  %call.i125 = tail call i32 @fputc(i32 noundef 9, ptr noundef %f) #10
  %inc.i126 = add nuw nsw i32 %i.03.i124, 1
  %exitcond.not.i127 = icmp eq i32 %inc.i126, %level
  br i1 %exitcond.not.i127, label %write_prefix.exit129, label %for.body.i128

write_prefix.exit129:                             ; preds = %for.body.i128, %for.end54
  %104 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %f)
  %105 = load i32, ptr @annotate, align 4, !tbaa !29
  %tobool56.not = icmp eq i32 %105, 0
  br i1 %tobool56.not, label %if.end64, label %if.then57

if.then57:                                        ; preds = %write_prefix.exit129
  %srcpos58 = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 13
  %106 = load ptr, ptr %srcpos58, align 8, !tbaa !30
  %call59 = tail call ptr @srcpos_string_last(ptr noundef %106, i32 noundef %105) #10
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.end64, label %if.then61

if.then61:                                        ; preds = %if.then57
  %call62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %f, ptr noundef nonnull @.str.8, ptr noundef nonnull %call59)
  tail call void @free(ptr noundef nonnull %call59) #10
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.then57, %write_prefix.exit129
  %fputc113 = tail call i32 @fputc(i32 10, ptr %f)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare ptr @srcpos_string_first(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

declare ptr @srcpos_string_last(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readnone willreturn }

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
!10 = !{!"_Bool", !7, i64 0}
!11 = !{!12, !6, i64 0}
!12 = !{!"srcfile_state", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !13, i64 28, !6, i64 32}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !6, i64 16}
!15 = !{!"srcpos", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !6, i64 16, !6, i64 24}
!16 = !{i8 0, i8 2}
!17 = !{!18, !10, i64 0}
!18 = !{!"label", !10, i64 0, !6, i64 8, !6, i64 16}
!19 = !{!18, !6, i64 8}
!20 = !{!21, !22, i64 0}
!21 = !{!"reserve_info", !22, i64 0, !22, i64 8, !6, i64 16, !6, i64 24}
!22 = !{!"long", !7, i64 0}
!23 = !{!21, !22, i64 8}
!24 = !{!25, !6, i64 24}
!25 = !{!"dt_info", !13, i64 0, !6, i64 8, !13, i64 16, !6, i64 24, !6, i64 32}
!26 = !{!27, !6, i64 8}
!27 = !{!"node", !10, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !6, i64 72, !6, i64 80, !6, i64 88, !10, i64 96, !10, i64 97}
!28 = !{!7, !7, i64 0}
!29 = !{!13, !13, i64 0}
!30 = !{!27, !6, i64 88}
!31 = !{!32, !10, i64 0}
!32 = !{!"property", !10, i64 0, !6, i64 8, !33, i64 16, !6, i64 40, !6, i64 48, !6, i64 56}
!33 = !{!"data", !13, i64 0, !6, i64 8, !6, i64 16}
!34 = !{!32, !6, i64 8}
!35 = !{!32, !13, i64 16}
!36 = !{!32, !6, i64 32}
!37 = !{!32, !6, i64 56}
!38 = !{!39, !7, i64 0}
!39 = !{!"marker", !7, i64 0, !13, i64 4, !6, i64 8, !6, i64 16}
!40 = !{!39, !6, i64 16}
!41 = !{!32, !6, i64 24}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !7, i64 0}
!44 = !{!39, !13, i64 4}
!45 = !{!39, !6, i64 8}
!46 = !{!27, !10, i64 0}
