; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/mkregtable.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/mkregtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct.regmatch_t = type { i32, i32 }
%struct.table = type { %struct.list_head, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.offset = type { %struct.list_head, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"Usage: %s <authfile>\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to parse file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"(0x[0-9a-fA-F]*) *([_a-zA-Z0-9]*)\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to compile regular expression\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Failed to open: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%9s %9s\00", align 1
@gpu_name = internal global [10 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Error matching regular expression %d in %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"static const unsigned %s_reg_safe_bm[%d] = {\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"0x%08X,\00", align 1
@str = private unnamed_addr constant [3 x i8] c"};\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %mask_rex.i = alloca %struct.re_pattern_buffer, align 8
  %match.i = alloca [4 x %struct.regmatch_t], align 16
  %buf.i = alloca [1024 x i8], align 16
  %last_reg_s.i = alloca [10 x i8], align 1
  %t = alloca %struct.table, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %t) #11
  %cmp.not = icmp eq i32 %argc, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = load ptr, ptr %argv, align 8, !tbaa !5
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %1) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

if.end:                                           ; preds = %entry
  store ptr %t, ptr %t, align 8, !tbaa !9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %t, i64 0, i32 1
  store ptr %t, ptr %prev.i.i, align 8, !tbaa !11
  %offset_max.i = getelementptr inbounds %struct.table, ptr %t, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %offset_max.i, i8 0, i64 16, i1 false) #11
  %arrayidx1 = getelementptr inbounds ptr, ptr %argv, i64 1
  %2 = load ptr, ptr %arrayidx1, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mask_rex.i) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %match.i) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %buf.i) #11
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %last_reg_s.i) #11
  %call.i = call i32 @regcomp(ptr noundef nonnull %mask_rex.i, ptr noundef nonnull @.str.2, i32 noundef 1) #11
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = call i64 @fwrite(ptr nonnull @.str.3, i64 37, i64 1, ptr %3) #14
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %call2.i = call ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.4) #11
  %cmp.i = icmp eq ptr %call2.i, null
  br i1 %cmp.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call4.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef %2) #14
  br label %if.then3

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @fseek(ptr noundef nonnull %call2.i, i64 noundef 0, i32 noundef 2) #11
  %call7.i = call i64 @ftell(ptr noundef nonnull %call2.i) #11
  %call8.i = call i32 @fseek(ptr noundef nonnull %call2.i, i64 noundef 0, i32 noundef 0) #11
  %call9.i = call ptr @fgets(ptr noundef nonnull %buf.i, i32 noundef 1024, ptr noundef nonnull %call2.i) #11
  %cmp10.i = icmp eq ptr %call9.i, null
  br i1 %cmp10.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end5.i
  %call12.i = call i32 @fclose(ptr noundef nonnull %call2.i) #11
  br label %if.then3

if.end13.i:                                       ; preds = %if.end5.i
  %call16.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @gpu_name, ptr noundef nonnull %last_reg_s.i) #11
  %gpu_prefix.i = getelementptr inbounds %struct.table, ptr %t, i64 0, i32 4
  store ptr @gpu_name, ptr %gpu_prefix.i, align 8, !tbaa !12
  %call18.i = call i64 @strtol(ptr nocapture noundef nonnull %last_reg_s.i, ptr noundef null, i32 noundef 16) #11
  %conv.i = trunc i64 %call18.i to i32
  %rm_eo.i = getelementptr inbounds %struct.regmatch_t, ptr %match.i, i64 0, i32 1
  %arrayidx48.i = getelementptr inbounds [4 x %struct.regmatch_t], ptr %match.i, i64 0, i64 1
  %rm_eo49.i = getelementptr inbounds [4 x %struct.regmatch_t], ptr %match.i, i64 0, i64 1, i32 1
  %rm_eo53.i = getelementptr inbounds [4 x %struct.regmatch_t], ptr %match.i, i64 0, i64 2, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i, %if.end13.i
  %call20.i = call ptr @fgets(ptr noundef nonnull %buf.i, i32 noundef 1024, ptr noundef nonnull %call2.i) #11
  %cmp21.i = icmp eq ptr %call20.i, null
  br i1 %cmp21.i, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %do.body.i
  %call24.i = call i32 @fclose(ptr noundef nonnull %call2.i) #11
  br label %if.then3

if.end25.i:                                       ; preds = %do.body.i
  %call27.i = call i64 @strlen(ptr noundef nonnull %buf.i) #15
  %conv28.i = trunc i64 %call27.i to i32
  %call29.i = call i64 @ftell(ptr noundef nonnull %call2.i) #11
  %cmp30.not.i = icmp eq i64 %call29.i, %call7.i
  %tobool34.not.i = icmp eq i32 %conv28.i, 0
  br i1 %tobool34.not.i, label %do.cond.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end25.i
  %call38.i = call i32 @regexec(ptr noundef nonnull %mask_rex.i, ptr noundef nonnull %buf.i, i64 noundef 4, ptr noundef nonnull %match.i, i32 noundef 0) #11
  switch i32 %call38.i, label %if.then43.i [
    i32 1, label %do.cond.i
    i32 0, label %if.else46.i
  ]

if.then43.i:                                      ; preds = %if.then35.i
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call44.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %call38.i, ptr noundef %2) #14
  %call45.i = call i32 @fclose(ptr noundef nonnull %call2.i) #11
  br label %if.then3

if.else46.i:                                      ; preds = %if.then35.i
  %7 = load i32, ptr %rm_eo.i, align 4, !tbaa !15
  %idxprom.i = sext i32 %7 to i64
  %arrayidx47.i = getelementptr inbounds [1024 x i8], ptr %buf.i, i64 0, i64 %idxprom.i
  store i8 0, ptr %arrayidx47.i, align 1, !tbaa !17
  %8 = load i32, ptr %rm_eo49.i, align 4, !tbaa !15
  %idxprom50.i = sext i32 %8 to i64
  %arrayidx51.i = getelementptr inbounds [1024 x i8], ptr %buf.i, i64 0, i64 %idxprom50.i
  store i8 0, ptr %arrayidx51.i, align 1, !tbaa !17
  %9 = load i32, ptr %rm_eo53.i, align 4, !tbaa !15
  %idxprom54.i = sext i32 %9 to i64
  %arrayidx55.i = getelementptr inbounds [1024 x i8], ptr %buf.i, i64 0, i64 %idxprom54.i
  store i8 0, ptr %arrayidx55.i, align 1, !tbaa !17
  %10 = load i32, ptr %arrayidx48.i, align 8, !tbaa !18
  %idxprom57.i = sext i32 %10 to i64
  %arrayidx58.i = getelementptr inbounds [1024 x i8], ptr %buf.i, i64 0, i64 %idxprom57.i
  %call59.i = call i64 @strtol(ptr nocapture noundef nonnull %arrayidx58.i, ptr noundef null, i32 noundef 16) #11
  %conv60.i = trunc i64 %call59.i to i32
  %call.i.i = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %offset_new.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else46.i
  %offset1.i.i = getelementptr inbounds %struct.offset, ptr %call.i.i, i64 0, i32 1
  store i32 %conv60.i, ptr %offset1.i.i, align 8, !tbaa !19
  br label %offset_new.exit.i

offset_new.exit.i:                                ; preds = %if.then.i.i, %if.else46.i
  %11 = load ptr, ptr %prev.i.i, align 8, !tbaa !11
  store ptr %call.i.i, ptr %prev.i.i, align 8, !tbaa !11
  store ptr %t, ptr %call.i.i, align 8, !tbaa !9
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i64 0, i32 1
  store ptr %11, ptr %prev3.i.i.i.i, align 8, !tbaa !11
  store ptr %call.i.i, ptr %11, align 8, !tbaa !9
  %12 = load i32, ptr %offset_max.i, align 8, !tbaa !21
  %cmp62.i = icmp ult i32 %12, %conv60.i
  br i1 %cmp62.i, label %if.then64.i, label %do.cond.i

if.then64.i:                                      ; preds = %offset_new.exit.i
  store i32 %conv60.i, ptr %offset_max.i, align 8, !tbaa !21
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then64.i, %offset_new.exit.i, %if.then35.i, %if.end25.i
  br i1 %cmp30.not.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  %call71.i = call i32 @fclose(ptr noundef nonnull %call2.i) #11
  %13 = load i32, ptr %offset_max.i, align 8, !tbaa !21
  %cmp73.i = icmp ult i32 %13, %conv.i
  br i1 %cmp73.i, label %if.then75.i, label %if.end77.i

if.then75.i:                                      ; preds = %do.end.i
  store i32 %conv.i, ptr %offset_max.i, align 8, !tbaa !21
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then75.i, %do.end.i
  %14 = phi i32 [ %conv.i, %if.then75.i ], [ %13, %do.end.i ]
  %shr.i.i = lshr i32 %14, 2
  %add.i.i = add nuw nsw i32 %shr.i.i, 31
  %div37.i.i = lshr i32 %add.i.i, 5
  %nentry.i.i = getelementptr inbounds %struct.table, ptr %t, i64 0, i32 2
  store i32 %div37.i.i, ptr %nentry.i.i, align 4, !tbaa !22
  %15 = shl nuw nsw i32 %div37.i.i, 2
  %mul.i.i = zext i32 %15 to i64
  %call.i114.i = call noalias ptr @malloc(i64 noundef %mul.i.i) #16
  %table.i.i = getelementptr inbounds %struct.table, ptr %t, i64 0, i32 3
  store ptr %call.i114.i, ptr %table.i.i, align 8, !tbaa !23
  %cmp.i.i = icmp eq ptr %call.i114.i, null
  br i1 %cmp.i.i, label %if.then3, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end77.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %call.i114.i, i8 -1, i64 %mul.i.i, i1 false) #11
  %offset.039.i.i = load ptr, ptr %t, align 8, !tbaa !5
  %cmp9.not40.i.i = icmp eq ptr %offset.039.i.i, %t
  br i1 %cmp9.not40.i.i, label %if.end6, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %if.end.i.i
  %offset.041.i.i = phi ptr [ %offset.0.i.i, %for.body.i.i ], [ %offset.039.i.i, %if.end.i.i ]
  %offset11.i.i = getelementptr inbounds %struct.offset, ptr %offset.041.i.i, i64 0, i32 1
  %16 = load i32, ptr %offset11.i.i, align 8, !tbaa !19
  %shr12.i.i = lshr i32 %16, 2
  %div1338.i.i = lshr i32 %16, 7
  %and.i.i = and i32 %shr12.i.i, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %idxprom.i.i = zext i32 %div1338.i.i to i64
  %arrayidx.i.i = getelementptr inbounds i32, ptr %call.i114.i, i64 %idxprom.i.i
  %17 = load i32, ptr %arrayidx.i.i, align 4, !tbaa !24
  %xor.i.i = xor i32 %shl.i.i, %17
  store i32 %xor.i.i, ptr %arrayidx.i.i, align 4, !tbaa !24
  %offset.0.i.i = load ptr, ptr %offset.041.i.i, align 8, !tbaa !5
  %cmp9.not.i.i = icmp eq ptr %offset.0.i.i, %t
  br i1 %cmp9.not.i.i, label %if.end6, label %for.body.i.i

if.then3:                                         ; preds = %if.end77.i, %if.then43.i, %if.then23.i, %if.then11.i, %if.then3.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %last_reg_s.i) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %buf.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %match.i) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mask_rex.i) #11
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %19 = load ptr, ptr %arrayidx1, align 8, !tbaa !5
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef %19) #12
  br label %cleanup

if.end6:                                          ; preds = %for.body.i.i, %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %last_reg_s.i) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %buf.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %match.i) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mask_rex.i) #11
  %20 = load ptr, ptr %gpu_prefix.i, align 8, !tbaa !12
  %call.i11 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, ptr noundef %20, i32 noundef %div37.i.i) #11
  %cmp36.not.i = icmp ult i32 %14, 4
  br i1 %cmp36.not.i, label %table_print.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end6
  %add.i = add nuw nsw i32 %div37.i.i, 3
  %div30.i = lshr i32 %add.i, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i, %for.body.lr.ph.i
  %id.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %id.1.lcssa.i, %for.end.i ]
  %c.038.i = phi i32 [ %div37.i.i, %for.body.lr.ph.i ], [ %sub.i, %for.end.i ]
  %i.037.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc16.i, %for.end.i ]
  %21 = call i32 @llvm.umin.i32(i32 %c.038.i, i32 4) #11
  %sub.i = sub i32 %c.038.i, %21
  %cmp533.not.i = icmp eq i32 %21, 0
  br i1 %cmp533.not.i, label %for.end.i, label %if.end11.peel.i

if.end11.peel.i:                                  ; preds = %for.body.i
  %putchar32.peel.i = call i32 @putchar(i32 9) #11
  %.pre.i = load ptr, ptr %table.i.i, align 8, !tbaa !23
  %idxprom.peel.phi.trans.insert.i = zext i32 %id.039.i to i64
  %arrayidx.peel.phi.trans.insert.i = getelementptr inbounds i32, ptr %.pre.i, i64 %idxprom.peel.phi.trans.insert.i
  %.pre42.i = load i32, ptr %arrayidx.peel.phi.trans.insert.i, align 4, !tbaa !24
  %inc.peel.i = add i32 %id.039.i, 1
  %call12.peel.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i32 noundef %.pre42.i) #11
  %exitcond.peel.not.i = icmp eq i32 %21, 1
  br i1 %exitcond.peel.not.i, label %for.end.i, label %if.end11.i

if.end11.i:                                       ; preds = %if.end11.i, %if.end11.peel.i
  %id.135.i = phi i32 [ %inc.i, %if.end11.i ], [ %inc.peel.i, %if.end11.peel.i ]
  %j.034.i = phi i32 [ %inc13.i, %if.end11.i ], [ 1, %if.end11.peel.i ]
  %putchar31.i = call i32 @putchar(i32 32) #11
  %.pre43.i = load ptr, ptr %table.i.i, align 8, !tbaa !23
  %idxprom.phi.trans.insert.i = zext i32 %id.135.i to i64
  %arrayidx.phi.trans.insert.i = getelementptr inbounds i32, ptr %.pre43.i, i64 %idxprom.phi.trans.insert.i
  %.pre44.i = load i32, ptr %arrayidx.phi.trans.insert.i, align 4, !tbaa !24
  %inc.i = add i32 %id.135.i, 1
  %call12.i12 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i32 noundef %.pre44.i) #11
  %inc13.i = add nuw nsw i32 %j.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc13.i, %21
  br i1 %exitcond.not.i, label %for.end.i, label %if.end11.i, !llvm.loop !25

for.end.i:                                        ; preds = %if.end11.i, %if.end11.peel.i, %for.body.i
  %id.1.lcssa.i = phi i32 [ %id.039.i, %for.body.i ], [ %inc.peel.i, %if.end11.peel.i ], [ %inc.i, %if.end11.i ]
  %putchar.i = call i32 @putchar(i32 10) #11
  %inc16.i = add nuw nsw i32 %i.037.i, 1
  %exitcond41.not.i = icmp eq i32 %inc16.i, %div30.i
  br i1 %exitcond41.not.i, label %table_print.exit, label %for.body.i

table_print.exit:                                 ; preds = %for.end.i, %if.end6
  %puts.i = call i32 @puts(ptr nonnull @str) #11
  br label %cleanup

cleanup:                                          ; preds = %table_print.exit, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ 0, %table_print.exit ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %t) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @regcomp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind allocsize(0) }

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
!9 = !{!10, !6, i64 0}
!10 = !{!"list_head", !6, i64 0, !6, i64 8}
!11 = !{!10, !6, i64 8}
!12 = !{!13, !6, i64 32}
!13 = !{!"table", !10, i64 0, !14, i64 16, !14, i64 20, !6, i64 24, !6, i64 32}
!14 = !{!"int", !7, i64 0}
!15 = !{!16, !14, i64 4}
!16 = !{!"", !14, i64 0, !14, i64 4}
!17 = !{!7, !7, i64 0}
!18 = !{!16, !14, i64 0}
!19 = !{!20, !14, i64 16}
!20 = !{!"offset", !10, i64 0, !14, i64 16}
!21 = !{!13, !14, i64 16}
!22 = !{!13, !14, i64 20}
!23 = !{!13, !6, i64 24}
!24 = !{!14, !14, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.peeled.count", i32 1}
