; ModuleID = '/llk/IR_all_yes/scripts/mod/sumversion.c_pt.bc'
source_filename = "../scripts/mod/sumversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md4_ctx = type { [4 x i32], [16 x i32], i64 }

@.str = private unnamed_addr constant [7 x i8] c"%s.mod\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"bad ending versions file for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"malloc(strlen(objfile) + sizeof(\22..cmd\22))\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%.*s.%s.cmd\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".%s.cmd\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"malloc(dirlen + 1)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"source_\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"malformed line: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"deps_\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"%08X%08X%08X%08X\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @get_src_version(ptr noundef %modname, ptr nocapture noundef writeonly %sum, i32 noundef %sumlen) local_unnamed_addr #0 {
entry:
  %pos.i = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %firstline = alloca ptr, align 8
  %md = alloca %struct.md4_ctx, align 16
  %filelist = alloca [4097 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %firstline) #13
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %md) #13
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %filelist) #13
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %filelist, i64 noundef 4097, ptr noundef nonnull @.str, ptr noundef %modname) #13
  %call2 = call ptr @read_text_file(ptr noundef nonnull %filelist) #13
  store ptr %call2, ptr %pos, align 8, !tbaa !5
  %call3 = call ptr @get_line(ptr noundef nonnull %pos) #13
  store ptr %call3, ptr %firstline, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %modname) #13
  br label %free

if.end:                                           ; preds = %entry
  %arrayidx2.i = getelementptr inbounds [4 x i32], ptr %md, i64 0, i64 1
  %arrayidx4.i = getelementptr inbounds [4 x i32], ptr %md, i64 0, i64 2
  %arrayidx6.i = getelementptr inbounds [4 x i32], ptr %md, i64 0, i64 3
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %md, align 16, !tbaa !9
  %byte_count.i = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 2
  store i64 0, ptr %byte_count.i, align 16, !tbaa !11
  %call449 = call ptr @strsep(ptr noundef nonnull %firstline, ptr noundef nonnull @.str.2) #13
  %tobool5.not50 = icmp eq ptr %call449, null
  br i1 %tobool5.not50, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %block.i.i.i.i = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 1
  %add.ptr11.i.i.i.i = getelementptr inbounds i8, ptr %block.i.i.i.i, i64 63
  %incdec.ptr.i.3.i.i.i.i.i = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 1, i64 4
  %incdec.ptr.i.7.i.i.i.i.i = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 1, i64 8
  %incdec.ptr.i.11.i.i.i.i.i = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 1, i64 12
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.lr.ph
  %call451 = phi ptr [ %call449, %while.body.lr.ph ], [ %call4, %while.cond.backedge ]
  %0 = load i8, ptr %call451, align 1, !tbaa !14
  %tobool6.not = icmp eq i8 %0, 0
  br i1 %tobool6.not, label %while.cond.backedge, label %if.end8

if.end8:                                          ; preds = %while.body
  %call.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call451) #14
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -8589934592
  %idxprom.i = ashr exact i64 %sext.i, 32
  %arrayidx.i = getelementptr inbounds i8, ptr %call451, i64 %idxprom.i
  %1 = load i8, ptr %arrayidx.i, align 1, !tbaa !14
  %cmp.i = icmp eq i8 %1, 46
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true

land.lhs.true.i:                                  ; preds = %if.end8
  %sext12.i = add i64 %sub.i, -4294967296
  %idxprom4.i = ashr exact i64 %sext12.i, 32
  %arrayidx5.i = getelementptr inbounds i8, ptr %call451, i64 %idxprom4.i
  %2 = load i8, ptr %arrayidx5.i, align 1, !tbaa !14
  %cmp7.i = icmp eq i8 %2, 97
  br i1 %cmp7.i, label %while.cond.backedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.i, %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i) #13
  %call.i19 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call451) #14
  %add.i = add i64 %call.i19, 6
  %call1.i = call noalias ptr @malloc(i64 noundef %add.i) #15
  %call2.i = call ptr @do_nofail(ptr noundef %call1.i, ptr noundef nonnull @.str.3) #13
  %call3.i = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %call451, i32 noundef 47) #14
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.else.i20, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true
  %incdec.ptr.i = getelementptr inbounds i8, ptr %call3.i, i64 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call451 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i64 %sub.ptr.sub.i to i32
  %call4.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %call2.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i, ptr noundef nonnull %call451, ptr noundef nonnull %incdec.ptr.i) #13
  br label %if.end.i

if.else.i20:                                      ; preds = %land.lhs.true
  %call5.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %call2.i, ptr noundef nonnull @.str.5, ptr noundef nonnull %call451) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i20, %if.then.i
  %dirlen.0.i = phi i32 [ %conv.i, %if.then.i ], [ 0, %if.else.i20 ]
  %add6.i = add nsw i32 %dirlen.0.i, 1
  %conv7.i = sext i32 %add6.i to i64
  %call8.i = call noalias ptr @malloc(i64 noundef %conv7.i) #15
  %call9.i = call ptr @do_nofail(ptr noundef %call8.i, ptr noundef nonnull @.str.6) #13
  %conv10.i = sext i32 %dirlen.0.i to i64
  %call11.i = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %call9.i, ptr noundef nonnull %call451, i64 noundef %conv10.i) #13
  %arrayidx.i21 = getelementptr inbounds i8, ptr %call9.i, i64 %conv10.i
  store i8 0, ptr %arrayidx.i21, align 1, !tbaa !14
  %call12.i = call ptr @read_text_file(ptr noundef %call2.i) #13
  store ptr %call12.i, ptr %pos.i, align 8, !tbaa !5
  %call13128.i = call ptr @get_line(ptr noundef nonnull %pos.i) #13
  %tobool14.not129.i = icmp eq ptr %call13128.i, null
  br i1 %tobool14.not129.i, label %if.end14.critedge, label %while.body.i

while.body.i:                                     ; preds = %cleanup.i, %if.end.i
  %call13131.i = phi ptr [ %call13.i, %cleanup.i ], [ %call13128.i, %if.end.i ]
  %check_files.0130.i = phi i32 [ %check_files.1.i, %cleanup.i ], [ 0, %if.end.i ]
  %call15.i = call i32 @strncmp(ptr noundef nonnull %call13131.i, ptr noundef nonnull dereferenceable(8) @.str.7, i64 noundef 7) #14
  %cmp.i22 = icmp eq i32 %call15.i, 0
  br i1 %cmp.i22, label %if.then17.i, label %if.end29.i

if.then17.i:                                      ; preds = %while.body.i
  %call18.i = call ptr @strrchr(ptr noundef nonnull %call13131.i, i32 noundef 32) #14
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %cleanup.thread121.i, label %if.end21.i

cleanup.thread121.i:                              ; preds = %if.then17.i
  call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %call13131.i) #13
  call void @free(ptr noundef %call12.i) #13
  call void @free(ptr noundef %call9.i) #13
  call void @free(ptr noundef %call2.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #13
  br label %free

if.end21.i:                                       ; preds = %if.then17.i
  %incdec.ptr22.i = getelementptr inbounds i8, ptr %call18.i, i64 1
  br label %cleanup.sink.split.i

if.end29.i:                                       ; preds = %while.body.i
  %call30.i = call i32 @strncmp(ptr noundef nonnull %call13131.i, ptr noundef nonnull dereferenceable(6) @.str.10, i64 noundef 5) #14
  %cmp31.i = icmp eq i32 %call30.i, 0
  br i1 %cmp31.i, label %cleanup.i, label %if.end34.i

if.end34.i:                                       ; preds = %if.end29.i
  %tobool35.not.i = icmp eq i32 %check_files.0130.i, 0
  br i1 %tobool35.not.i, label %cleanup.i, label %if.end37.i

if.end37.i:                                       ; preds = %if.end34.i
  %call38.i = call i64 @strlen(ptr noundef nonnull %call13131.i) #14
  %add.ptr.i = getelementptr inbounds i8, ptr %call13131.i, i64 -1
  %add.ptr39.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %call38.i
  %3 = load i8, ptr %add.ptr39.i, align 1, !tbaa !14
  %cmp41.not.i = icmp eq i8 %3, 92
  br i1 %cmp41.not.i, label %while.cond45.preheader.i, label %parse_source_files.exit

while.cond45.preheader.i:                         ; preds = %if.end37.i
  %4 = load i8, ptr %call13131.i, align 1, !tbaa !14
  %tobool46.not126.i = icmp eq i8 %4, 0
  br i1 %tobool46.not126.i, label %while.end.i, label %while.body47.lr.ph.i

while.body47.lr.ph.i:                             ; preds = %while.cond45.preheader.i
  %call48.i = tail call ptr @__ctype_b_loc() #16
  %5 = load ptr, ptr %call48.i, align 8, !tbaa !5
  br label %while.body47.i

while.body47.i:                                   ; preds = %if.end55.i, %while.body47.lr.ph.i
  %6 = phi i8 [ %4, %while.body47.lr.ph.i ], [ %9, %if.end55.i ]
  %p.0127.i = phi ptr [ %call13131.i, %while.body47.lr.ph.i ], [ %incdec.ptr56.i, %if.end55.i ]
  %idxprom50.i = sext i8 %6 to i64
  %arrayidx51.i = getelementptr inbounds i16, ptr %5, i64 %idxprom50.i
  %7 = load i16, ptr %arrayidx51.i, align 2, !tbaa !15
  %8 = and i16 %7, 8192
  %tobool53.not.i = icmp eq i16 %8, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %if.then54.i

if.then54.i:                                      ; preds = %while.body47.i
  store i8 0, ptr %p.0127.i, align 1, !tbaa !14
  br label %while.end.i

if.end55.i:                                       ; preds = %while.body47.i
  %incdec.ptr56.i = getelementptr inbounds i8, ptr %p.0127.i, i64 1
  %9 = load i8, ptr %incdec.ptr56.i, align 1, !tbaa !14
  %tobool46.not.i = icmp eq i8 %9, 0
  br i1 %tobool46.not.i, label %while.end.i, label %while.body47.i

while.end.i:                                      ; preds = %if.end55.i, %if.then54.i, %while.cond45.preheader.i
  %call57.i = call ptr @strstr(ptr noundef nonnull %call13131.i, ptr noundef nonnull dereferenceable(1) %call9.i) #14
  %call58.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call9.i) #14
  %add.ptr59.i = getelementptr inbounds i8, ptr %call57.i, i64 -1
  %add.ptr60.i = getelementptr inbounds i8, ptr %add.ptr59.i, i64 %call58.i
  %call61.i = call ptr @strrchr(ptr noundef nonnull %call13131.i, i32 noundef 47) #14
  %cmp62.i = icmp eq ptr %add.ptr60.i, %call61.i
  br i1 %cmp62.i, label %cleanup.sink.split.i, label %cleanup.i

cleanup.sink.split.i:                             ; preds = %while.end.i, %if.end21.i
  %call13131.sink.i = phi ptr [ %incdec.ptr22.i, %if.end21.i ], [ %call13131.i, %while.end.i ]
  %check_files.1.ph.i = phi i32 [ %check_files.0130.i, %if.end21.i ], [ 1, %while.end.i ]
  %call.i33 = call ptr @read_text_file(ptr noundef nonnull %call13131.sink.i) #13
  %call1.i34 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call.i33) #14
  %cmp9.not.i = icmp eq i64 %call1.i34, 0
  br i1 %cmp9.not.i, label %parse_file.exit, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %cleanup.sink.split.i
  %i.010.i = phi i64 [ %inc46.i, %for.inc.i ], [ 0, %cleanup.sink.split.i ]
  %arrayidx.i35 = getelementptr inbounds i8, ptr %call.i33, i64 %i.010.i
  %10 = load i8, ptr %arrayidx.i35, align 1, !tbaa !14
  %cmp2.i = icmp eq i8 %10, 92
  br i1 %cmp2.i, label %land.lhs.true.i37, label %if.end.i41

land.lhs.true.i37:                                ; preds = %for.body.i
  %add.i36 = add nuw i64 %i.010.i, 1
  %cmp4.i = icmp ult i64 %add.i36, %call1.i34
  br i1 %cmp4.i, label %land.lhs.true6.i, label %if.end.i41

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i37
  %arrayidx8.i = getelementptr inbounds i8, ptr %call.i33, i64 %add.i36
  %11 = load i8, ptr %arrayidx8.i, align 1, !tbaa !14
  %cmp10.i = icmp eq i8 %11, 10
  br i1 %cmp10.i, label %for.inc.i, label %if.end.i41

if.end.i41:                                       ; preds = %land.lhs.true6.i, %land.lhs.true.i37, %for.body.i
  %call12.i38 = tail call ptr @__ctype_b_loc() #16
  %12 = load ptr, ptr %call12.i38, align 8, !tbaa !5
  %idxprom.i39 = sext i8 %10 to i64
  %arrayidx15.i = getelementptr inbounds i16, ptr %12, i64 %idxprom.i39
  %13 = load i16, ptr %arrayidx15.i, align 2, !tbaa !15
  %14 = and i16 %13, 8192
  %tobool.not.i40 = icmp eq i16 %14, 0
  br i1 %tobool.not.i40, label %if.end18.i, label %for.inc.i

if.end18.i:                                       ; preds = %if.end.i41
  switch i8 %10, label %if.end44.i [
    i8 34, label %if.then23.i
    i8 47, label %land.lhs.true32.i
  ]

if.then23.i:                                      ; preds = %if.end18.i
  %sub.i42 = sub i64 %call1.i34, %i.010.i
  %15 = load i64, ptr %byte_count.i, align 16, !tbaa !11
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 63
  %add.i.i.i.i = add i64 %15, 1
  store i64 %add.i.i.i.i, ptr %byte_count.i, align 16, !tbaa !11
  %cmp.not.i.i.i.i = icmp eq i32 %17, 63
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then23.i
  %conv.i.i.i.i = sub nuw nsw i32 64, %17
  %conv4.i.i.i.i = zext i32 %conv.i.i.i.i to i64
  %sub5.i.i.i.i = sub nuw nsw i64 64, %conv4.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr inbounds i8, ptr %block.i.i.i.i, i64 %sub5.i.i.i.i
  store i8 34, ptr %add.ptr.i.i.i.i, align 1
  br label %add_char.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then23.i
  store i8 34, ptr %add.ptr11.i.i.i.i, align 1
  %18 = load <4 x i32>, ptr %block.i.i.i.i, align 16, !tbaa !9
  %19 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %18)
  store <4 x i32> %19, ptr %block.i.i.i.i, align 16, !tbaa !9
  %20 = load <4 x i32>, ptr %incdec.ptr.i.3.i.i.i.i.i, align 16, !tbaa !9
  %21 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %20)
  store <4 x i32> %21, ptr %incdec.ptr.i.3.i.i.i.i.i, align 16, !tbaa !9
  %22 = load <4 x i32>, ptr %incdec.ptr.i.7.i.i.i.i.i, align 16, !tbaa !9
  %23 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %22)
  store <4 x i32> %23, ptr %incdec.ptr.i.7.i.i.i.i.i, align 16, !tbaa !9
  %24 = load <4 x i32>, ptr %incdec.ptr.i.11.i.i.i.i.i, align 16, !tbaa !9
  %25 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %24)
  store <4 x i32> %25, ptr %incdec.ptr.i.11.i.i.i.i.i, align 16, !tbaa !9
  call fastcc void @md4_transform(ptr noundef nonnull %md, ptr noundef nonnull %block.i.i.i.i) #13
  br label %add_char.exit.i.i

add_char.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %cmp63.i.i = icmp ugt i64 %sub.i42, 1
  br i1 %cmp63.i.i, label %for.body.i.i, label %parse_string.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %add_char.exit.i.i
  %i.064.i.i = phi i64 [ %inc.i.i, %for.inc.i.i ], [ 1, %add_char.exit.i.i ]
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %arrayidx.i35, i64 %i.064.i.i
  %26 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !14
  %27 = load i64, ptr %byte_count.i, align 16, !tbaa !11
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 63
  %add.i.i20.i.i = add i64 %27, 1
  store i64 %add.i.i20.i.i, ptr %byte_count.i, align 16, !tbaa !11
  %cmp.not.i.i21.i.i = icmp eq i32 %29, 63
  br i1 %cmp.not.i.i21.i.i, label %if.end.i.i61.i.i, label %if.then.i.i27.i.i

if.then.i.i27.i.i:                                ; preds = %for.body.i.i
  %conv.i.i22.i.i = sub nuw nsw i32 64, %29
  %conv4.i.i24.i.i = zext i32 %conv.i.i22.i.i to i64
  %sub5.i.i25.i.i = sub nuw nsw i64 64, %conv4.i.i24.i.i
  %add.ptr.i.i26.i.i = getelementptr inbounds i8, ptr %block.i.i.i.i, i64 %sub5.i.i25.i.i
  store i8 %26, ptr %add.ptr.i.i26.i.i, align 1
  br label %add_char.exit62.i.i

if.end.i.i61.i.i:                                 ; preds = %for.body.i.i
  store i8 %26, ptr %add.ptr11.i.i.i.i, align 1
  %30 = load <4 x i32>, ptr %block.i.i.i.i, align 16, !tbaa !9
  %31 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %30)
  store <4 x i32> %31, ptr %block.i.i.i.i, align 16, !tbaa !9
  %32 = load <4 x i32>, ptr %incdec.ptr.i.3.i.i.i.i.i, align 16, !tbaa !9
  %33 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %32)
  store <4 x i32> %33, ptr %incdec.ptr.i.3.i.i.i.i.i, align 16, !tbaa !9
  %34 = load <4 x i32>, ptr %incdec.ptr.i.7.i.i.i.i.i, align 16, !tbaa !9
  %35 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %34)
  store <4 x i32> %35, ptr %incdec.ptr.i.7.i.i.i.i.i, align 16, !tbaa !9
  %36 = load <4 x i32>, ptr %incdec.ptr.i.11.i.i.i.i.i, align 16, !tbaa !9
  %37 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %36)
  store <4 x i32> %37, ptr %incdec.ptr.i.11.i.i.i.i.i, align 16, !tbaa !9
  call fastcc void @md4_transform(ptr noundef nonnull %md, ptr noundef nonnull %block.i.i.i.i) #13
  br label %add_char.exit62.i.i

add_char.exit62.i.i:                              ; preds = %if.end.i.i61.i.i, %if.then.i.i27.i.i
  %38 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !14
  %cmp3.i.i = icmp eq i8 %38, 34
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %add_char.exit62.i.i
  %sub.i.i = add i64 %i.064.i.i, -1
  %arrayidx5.i.i = getelementptr inbounds i8, ptr %arrayidx.i35, i64 %sub.i.i
  %39 = load i8, ptr %arrayidx5.i.i, align 1, !tbaa !14
  %cmp7.not.i.i = icmp eq i8 %39, 92
  br i1 %cmp7.not.i.i, label %for.inc.i.i, label %parse_string.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i, %add_char.exit62.i.i
  %inc.i.i = add nuw i64 %i.064.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %inc.i.i, %sub.i42
  br i1 %exitcond.not.i.i, label %parse_string.exit.i, label %for.body.i.i

parse_string.exit.i:                              ; preds = %for.inc.i.i, %land.lhs.true.i.i, %add_char.exit.i.i
  %i.0.lcssa.i.i = phi i64 [ 1, %add_char.exit.i.i ], [ %i.064.i.i, %land.lhs.true.i.i ], [ %sub.i42, %for.inc.i.i ]
  %sext8.i = shl i64 %i.0.lcssa.i.i, 32
  %conv25.i = ashr exact i64 %sext8.i, 32
  %add26.i = add i64 %conv25.i, %i.010.i
  br label %for.inc.i

land.lhs.true32.i:                                ; preds = %if.end18.i
  %add33.i = add nuw i64 %i.010.i, 1
  %arrayidx34.i = getelementptr inbounds i8, ptr %call.i33, i64 %add33.i
  %40 = load i8, ptr %arrayidx34.i, align 1, !tbaa !14
  %cmp36.i = icmp eq i8 %40, 42
  br i1 %cmp36.i, label %if.then38.i, label %if.end44.i

if.then38.i:                                      ; preds = %land.lhs.true32.i
  %sub40.i = sub i64 %call1.i34, %i.010.i
  %cmp13.i.i = icmp ugt i64 %sub40.i, 2
  br i1 %cmp13.i.i, label %for.body.i2.i, label %parse_comment.exit.i

for.body.i2.i:                                    ; preds = %for.inc.i6.i, %if.then38.i
  %i.014.i.i = phi i64 [ %inc.i4.i, %for.inc.i6.i ], [ 2, %if.then38.i ]
  %sub.i1.i = add i64 %i.014.i.i, -1
  %arrayidx.i.i = getelementptr inbounds i8, ptr %arrayidx.i35, i64 %sub.i1.i
  %41 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !14
  %cmp1.i.i = icmp eq i8 %41, 42
  br i1 %cmp1.i.i, label %land.lhs.true.i3.i, label %for.inc.i6.i

land.lhs.true.i3.i:                               ; preds = %for.body.i2.i
  %arrayidx3.i.i = getelementptr inbounds i8, ptr %arrayidx.i35, i64 %i.014.i.i
  %42 = load i8, ptr %arrayidx3.i.i, align 1, !tbaa !14
  %cmp5.i.i = icmp eq i8 %42, 47
  br i1 %cmp5.i.i, label %parse_comment.exit.i, label %for.inc.i6.i

for.inc.i6.i:                                     ; preds = %land.lhs.true.i3.i, %for.body.i2.i
  %inc.i4.i = add nuw i64 %i.014.i.i, 1
  %exitcond.not.i5.i = icmp eq i64 %inc.i4.i, %sub40.i
  br i1 %exitcond.not.i5.i, label %parse_comment.exit.i, label %for.body.i2.i

parse_comment.exit.i:                             ; preds = %for.inc.i6.i, %land.lhs.true.i3.i, %if.then38.i
  %i.0.lcssa.i7.i = phi i64 [ 2, %if.then38.i ], [ %i.014.i.i, %land.lhs.true.i3.i ], [ %sub40.i, %for.inc.i6.i ]
  %sext.i43 = shl i64 %i.0.lcssa.i7.i, 32
  %conv42.i = ashr exact i64 %sext.i43, 32
  %add43.i = add i64 %conv42.i, %i.010.i
  br label %for.inc.i

if.end44.i:                                       ; preds = %land.lhs.true32.i, %if.end18.i
  %43 = load i64, ptr %byte_count.i, align 16, !tbaa !11
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 63
  %add.i.i.i = add i64 %43, 1
  store i64 %add.i.i.i, ptr %byte_count.i, align 16, !tbaa !11
  %cmp.not.i.i.i = icmp eq i32 %45, 63
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end44.i
  %conv.i.i.i = sub nuw nsw i32 64, %45
  %conv4.i.i.i = zext i32 %conv.i.i.i to i64
  %sub5.i.i.i = sub nuw nsw i64 64, %conv4.i.i.i
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %block.i.i.i.i, i64 %sub5.i.i.i
  store i8 %10, ptr %add.ptr.i.i.i, align 1
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %if.end44.i
  store i8 %10, ptr %add.ptr11.i.i.i.i, align 1
  %46 = load <4 x i32>, ptr %block.i.i.i.i, align 16, !tbaa !9
  %47 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %46)
  store <4 x i32> %47, ptr %block.i.i.i.i, align 16, !tbaa !9
  %48 = load <4 x i32>, ptr %incdec.ptr.i.3.i.i.i.i.i, align 16, !tbaa !9
  %49 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %48)
  store <4 x i32> %49, ptr %incdec.ptr.i.3.i.i.i.i.i, align 16, !tbaa !9
  %50 = load <4 x i32>, ptr %incdec.ptr.i.7.i.i.i.i.i, align 16, !tbaa !9
  %51 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %50)
  store <4 x i32> %51, ptr %incdec.ptr.i.7.i.i.i.i.i, align 16, !tbaa !9
  %52 = load <4 x i32>, ptr %incdec.ptr.i.11.i.i.i.i.i, align 16, !tbaa !9
  %53 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %52)
  store <4 x i32> %53, ptr %incdec.ptr.i.11.i.i.i.i.i, align 16, !tbaa !9
  call fastcc void @md4_transform(ptr noundef nonnull %md, ptr noundef nonnull %block.i.i.i.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i, %if.then.i.i.i, %parse_comment.exit.i, %parse_string.exit.i, %if.end.i41, %land.lhs.true6.i
  %i.1.i = phi i64 [ %i.010.i, %if.end.i41 ], [ %add26.i, %parse_string.exit.i ], [ %add43.i, %parse_comment.exit.i ], [ %add.i36, %land.lhs.true6.i ], [ %i.010.i, %if.then.i.i.i ], [ %i.010.i, %if.end.i.i.i ]
  %inc46.i = add i64 %i.1.i, 1
  %cmp.i44 = icmp ugt i64 %call1.i34, %inc46.i
  br i1 %cmp.i44, label %for.body.i, label %parse_file.exit

parse_file.exit:                                  ; preds = %for.inc.i, %cleanup.sink.split.i
  call void @free(ptr noundef %call.i33) #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %parse_file.exit, %while.end.i, %if.end34.i, %if.end29.i
  %check_files.1.i = phi i32 [ 1, %if.end29.i ], [ 0, %if.end34.i ], [ 1, %while.end.i ], [ %check_files.1.ph.i, %parse_file.exit ]
  %call13.i = call ptr @get_line(ptr noundef nonnull %pos.i) #13
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %parse_source_files.exit, label %while.body.i

parse_source_files.exit:                          ; preds = %cleanup.i, %if.end37.i
  call void @free(ptr noundef %call12.i) #13
  call void @free(ptr noundef %call9.i) #13
  call void @free(ptr noundef %call2.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #13
  br label %while.cond.backedge

if.end14.critedge:                                ; preds = %if.end.i
  call void @free(ptr noundef %call12.i) #13
  call void @free(ptr noundef nonnull %call9.i) #13
  call void @free(ptr noundef %call2.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end14.critedge, %parse_source_files.exit, %land.lhs.true.i, %while.body
  %call4 = call ptr @strsep(ptr noundef nonnull %firstline, ptr noundef nonnull @.str.2) #13
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.cond.backedge, %if.end
  %54 = load i64, ptr %byte_count.i, align 16, !tbaa !11
  %55 = trunc i64 %54 to i32
  %conv.i24 = and i32 %55, 63
  %block.i = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 1
  %idx.ext.i = zext i32 %conv.i24 to i64
  %add.ptr.i25 = getelementptr inbounds i8, ptr %block.i, i64 %idx.ext.i
  %sub.i26 = sub nsw i32 55, %conv.i24
  %incdec.ptr.i27 = getelementptr inbounds i8, ptr %add.ptr.i25, i64 1
  store i8 -128, ptr %add.ptr.i25, align 1, !tbaa !14
  %cmp.i28 = icmp ugt i32 %conv.i24, 55
  br i1 %cmp.i28, label %if.then.i29, label %md4_final_ascii.exit

if.then.i29:                                      ; preds = %while.end
  %narrow.i = xor i32 %conv.i24, 63
  %add3.i = zext i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %incdec.ptr.i27, i8 0, i64 %add3.i, i1 false) #13
  %56 = load <4 x i32>, ptr %block.i, align 16, !tbaa !9
  %57 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %56)
  store <4 x i32> %57, ptr %block.i, align 16, !tbaa !9
  %incdec.ptr.i.3.i.i = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 1, i64 4
  %58 = load <4 x i32>, ptr %incdec.ptr.i.3.i.i, align 16, !tbaa !9
  %59 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %58)
  store <4 x i32> %59, ptr %incdec.ptr.i.3.i.i, align 16, !tbaa !9
  %incdec.ptr.i.7.i.i = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 1, i64 8
  %60 = load <4 x i32>, ptr %incdec.ptr.i.7.i.i, align 16, !tbaa !9
  %61 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %60)
  store <4 x i32> %61, ptr %incdec.ptr.i.7.i.i, align 16, !tbaa !9
  %incdec.ptr.i.11.i.i = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 1, i64 12
  %62 = load <4 x i32>, ptr %incdec.ptr.i.11.i.i, align 16, !tbaa !9
  %63 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %62)
  store <4 x i32> %63, ptr %incdec.ptr.i.11.i.i, align 16, !tbaa !9
  call fastcc void @md4_transform(ptr noundef nonnull %md, ptr noundef nonnull %block.i) #13
  br label %md4_final_ascii.exit

md4_final_ascii.exit:                             ; preds = %if.then.i29, %while.end
  %p.0.i = phi ptr [ %block.i, %if.then.i29 ], [ %incdec.ptr.i27, %while.end ]
  %padding.0.i = phi i32 [ 56, %if.then.i29 ], [ %sub.i26, %while.end ]
  %conv6.i = sext i32 %padding.0.i to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %p.0.i, i8 0, i64 %conv6.i, i1 false) #13
  %64 = load i64, ptr %byte_count.i, align 16, !tbaa !11
  %.tr.i = trunc i64 %64 to i32
  %conv8.i = shl i32 %.tr.i, 3
  %arrayidx.i30 = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 1, i64 14
  store i32 %conv8.i, ptr %arrayidx.i30, align 8, !tbaa !9
  %shr.i = lshr i64 %64, 29
  %conv11.i = trunc i64 %shr.i to i32
  %arrayidx13.i = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 1, i64 15
  store i32 %conv11.i, ptr %arrayidx13.i, align 4, !tbaa !9
  %65 = load <4 x i32>, ptr %block.i, align 16, !tbaa !9
  %66 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %65)
  store <4 x i32> %66, ptr %block.i, align 16, !tbaa !9
  %incdec.ptr.i.3.i = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 1, i64 4
  %67 = load <4 x i32>, ptr %incdec.ptr.i.3.i, align 16, !tbaa !9
  %68 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %67)
  store <4 x i32> %68, ptr %incdec.ptr.i.3.i, align 16, !tbaa !9
  %incdec.ptr.i.7.i = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 1, i64 8
  %69 = load <4 x i32>, ptr %incdec.ptr.i.7.i, align 16, !tbaa !9
  %70 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %69)
  store <4 x i32> %70, ptr %incdec.ptr.i.7.i, align 16, !tbaa !9
  %incdec.ptr.i.11.i = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 1, i64 12
  %71 = load i32, ptr %incdec.ptr.i.11.i, align 16, !tbaa !9
  %or7.i.i.12.i = call i32 @llvm.bswap.i32(i32 %71) #13
  store i32 %or7.i.i.12.i, ptr %incdec.ptr.i.11.i, align 16, !tbaa !9
  %incdec.ptr.i.12.i = getelementptr inbounds %struct.md4_ctx, ptr %md, i64 0, i32 1, i64 13
  %72 = load i32, ptr %incdec.ptr.i.12.i, align 4, !tbaa !9
  %or7.i.i.13.i = call i32 @llvm.bswap.i32(i32 %72) #13
  store i32 %or7.i.i.13.i, ptr %incdec.ptr.i.12.i, align 4, !tbaa !9
  call fastcc void @md4_transform(ptr noundef nonnull %md, ptr noundef nonnull %block.i) #13
  %73 = load i32, ptr %md, align 16, !tbaa !9
  %or7.i.i50.i = call i32 @llvm.bswap.i32(i32 %73) #13
  store i32 %or7.i.i50.i, ptr %md, align 16, !tbaa !9
  %74 = load i32, ptr %arrayidx2.i, align 4, !tbaa !9
  %or7.i.1.i.i = call i32 @llvm.bswap.i32(i32 %74) #13
  store i32 %or7.i.1.i.i, ptr %arrayidx2.i, align 4, !tbaa !9
  %75 = load i32, ptr %arrayidx4.i, align 8, !tbaa !9
  %or7.i.2.i.i = call i32 @llvm.bswap.i32(i32 %75) #13
  store i32 %or7.i.2.i.i, ptr %arrayidx4.i, align 8, !tbaa !9
  %76 = load i32, ptr %arrayidx6.i, align 4, !tbaa !9
  %or7.i.3.i.i = call i32 @llvm.bswap.i32(i32 %76) #13
  store i32 %or7.i.3.i.i, ptr %arrayidx6.i, align 4, !tbaa !9
  %conv21.i = zext i32 %sumlen to i64
  %call.i31 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %sum, i64 noundef %conv21.i, ptr noundef nonnull @.str.11, i32 noundef %or7.i.i50.i, i32 noundef %or7.i.1.i.i, i32 noundef %or7.i.2.i.i, i32 noundef %or7.i.3.i.i) #13
  br label %free

free:                                             ; preds = %md4_final_ascii.exit, %cleanup.thread121.i, %if.then
  call void @free(ptr noundef %call2) #13
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %filelist) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %md) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %firstline) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare ptr @read_text_file(ptr noundef) local_unnamed_addr #3

declare ptr @get_line(ptr noundef) local_unnamed_addr #3

declare void @modpost_log(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare ptr @do_nofail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal fastcc void @md4_transform(ptr nocapture noundef %hash, ptr nocapture noundef readonly %in) unnamed_addr #10 {
entry:
  %0 = load i32, ptr %hash, align 4, !tbaa !9
  %arrayidx1 = getelementptr inbounds i32, ptr %hash, i64 1
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !9
  %arrayidx2 = getelementptr inbounds i32, ptr %hash, i64 2
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !9
  %arrayidx3 = getelementptr inbounds i32, ptr %hash, i64 3
  %3 = load i32, ptr %arrayidx3, align 4, !tbaa !9
  %and.i = and i32 %2, %1
  %neg.i = xor i32 %1, -1
  %and1.i = and i32 %3, %neg.i
  %4 = load i32, ptr %in, align 4, !tbaa !9
  %or.i = add i32 %and.i, %0
  %add = add i32 %or.i, %and1.i
  %add5 = add i32 %add, %4
  %or.i528 = tail call i32 @llvm.fshl.i32(i32 %add5, i32 %add5, i32 3)
  %and.i529 = and i32 %or.i528, %1
  %neg.i530 = xor i32 %or.i528, -1
  %and1.i531 = and i32 %2, %neg.i530
  %arrayidx9 = getelementptr inbounds i32, ptr %in, i64 1
  %5 = load i32, ptr %arrayidx9, align 4, !tbaa !9
  %or.i532 = add i32 %5, %3
  %add8 = add i32 %or.i532, %and.i529
  %add10 = add i32 %add8, %and1.i531
  %or.i535 = tail call i32 @llvm.fshl.i32(i32 %add10, i32 %add10, i32 7)
  %and.i536 = and i32 %or.i535, %or.i528
  %neg.i537 = xor i32 %or.i535, -1
  %and1.i538 = and i32 %1, %neg.i537
  %arrayidx14 = getelementptr inbounds i32, ptr %in, i64 2
  %6 = load i32, ptr %arrayidx14, align 4, !tbaa !9
  %or.i539 = add i32 %6, %2
  %add13 = add i32 %or.i539, %and.i536
  %add15 = add i32 %add13, %and1.i538
  %or.i542 = tail call i32 @llvm.fshl.i32(i32 %add15, i32 %add15, i32 11)
  %and.i543 = and i32 %or.i542, %or.i535
  %neg.i544 = xor i32 %or.i542, -1
  %and1.i545 = and i32 %or.i528, %neg.i544
  %arrayidx19 = getelementptr inbounds i32, ptr %in, i64 3
  %7 = load i32, ptr %arrayidx19, align 4, !tbaa !9
  %or.i546 = add i32 %7, %1
  %add18 = add i32 %or.i546, %and.i543
  %add20 = add i32 %add18, %and1.i545
  %or.i549 = tail call i32 @llvm.fshl.i32(i32 %add20, i32 %add20, i32 19)
  %and.i550 = and i32 %or.i549, %or.i542
  %neg.i551 = xor i32 %or.i549, -1
  %and1.i552 = and i32 %or.i535, %neg.i551
  %arrayidx24 = getelementptr inbounds i32, ptr %in, i64 4
  %8 = load i32, ptr %arrayidx24, align 4, !tbaa !9
  %or.i553 = add i32 %8, %or.i528
  %add23 = add i32 %or.i553, %and.i550
  %add25 = add i32 %add23, %and1.i552
  %or.i556 = tail call i32 @llvm.fshl.i32(i32 %add25, i32 %add25, i32 3)
  %and.i557 = and i32 %or.i556, %or.i549
  %neg.i558 = xor i32 %or.i556, -1
  %and1.i559 = and i32 %or.i542, %neg.i558
  %arrayidx29 = getelementptr inbounds i32, ptr %in, i64 5
  %9 = load i32, ptr %arrayidx29, align 4, !tbaa !9
  %or.i560 = add i32 %or.i535, %9
  %add28 = add i32 %or.i560, %and.i557
  %add30 = add i32 %add28, %and1.i559
  %or.i563 = tail call i32 @llvm.fshl.i32(i32 %add30, i32 %add30, i32 7)
  %and.i564 = and i32 %or.i563, %or.i556
  %neg.i565 = xor i32 %or.i563, -1
  %and1.i566 = and i32 %or.i549, %neg.i565
  %arrayidx34 = getelementptr inbounds i32, ptr %in, i64 6
  %10 = load i32, ptr %arrayidx34, align 4, !tbaa !9
  %or.i567 = add i32 %or.i542, %10
  %add33 = add i32 %or.i567, %and.i564
  %add35 = add i32 %add33, %and1.i566
  %or.i570 = tail call i32 @llvm.fshl.i32(i32 %add35, i32 %add35, i32 11)
  %and.i571 = and i32 %or.i570, %or.i563
  %neg.i572 = xor i32 %or.i570, -1
  %and1.i573 = and i32 %or.i556, %neg.i572
  %arrayidx39 = getelementptr inbounds i32, ptr %in, i64 7
  %11 = load i32, ptr %arrayidx39, align 4, !tbaa !9
  %or.i574 = add i32 %or.i549, %11
  %add38 = add i32 %or.i574, %and.i571
  %add40 = add i32 %add38, %and1.i573
  %or.i577 = tail call i32 @llvm.fshl.i32(i32 %add40, i32 %add40, i32 19)
  %and.i578 = and i32 %or.i577, %or.i570
  %neg.i579 = xor i32 %or.i577, -1
  %and1.i580 = and i32 %or.i563, %neg.i579
  %arrayidx44 = getelementptr inbounds i32, ptr %in, i64 8
  %12 = load i32, ptr %arrayidx44, align 4, !tbaa !9
  %or.i581 = add i32 %or.i556, %12
  %add43 = add i32 %or.i581, %and.i578
  %add45 = add i32 %add43, %and1.i580
  %or.i584 = tail call i32 @llvm.fshl.i32(i32 %add45, i32 %add45, i32 3)
  %and.i585 = and i32 %or.i584, %or.i577
  %neg.i586 = xor i32 %or.i584, -1
  %and1.i587 = and i32 %or.i570, %neg.i586
  %arrayidx49 = getelementptr inbounds i32, ptr %in, i64 9
  %13 = load i32, ptr %arrayidx49, align 4, !tbaa !9
  %or.i588 = add i32 %or.i563, %13
  %add48 = add i32 %or.i588, %and.i585
  %add50 = add i32 %add48, %and1.i587
  %or.i591 = tail call i32 @llvm.fshl.i32(i32 %add50, i32 %add50, i32 7)
  %and.i592 = and i32 %or.i591, %or.i584
  %neg.i593 = xor i32 %or.i591, -1
  %and1.i594 = and i32 %or.i577, %neg.i593
  %arrayidx54 = getelementptr inbounds i32, ptr %in, i64 10
  %14 = load i32, ptr %arrayidx54, align 4, !tbaa !9
  %or.i595 = add i32 %or.i570, %14
  %add53 = add i32 %or.i595, %and.i592
  %add55 = add i32 %add53, %and1.i594
  %or.i598 = tail call i32 @llvm.fshl.i32(i32 %add55, i32 %add55, i32 11)
  %and.i599 = and i32 %or.i598, %or.i591
  %neg.i600 = xor i32 %or.i598, -1
  %and1.i601 = and i32 %or.i584, %neg.i600
  %arrayidx59 = getelementptr inbounds i32, ptr %in, i64 11
  %15 = load i32, ptr %arrayidx59, align 4, !tbaa !9
  %or.i602 = add i32 %or.i577, %15
  %add58 = add i32 %or.i602, %and.i599
  %add60 = add i32 %add58, %and1.i601
  %or.i605 = tail call i32 @llvm.fshl.i32(i32 %add60, i32 %add60, i32 19)
  %and.i606 = and i32 %or.i605, %or.i598
  %neg.i607 = xor i32 %or.i605, -1
  %and1.i608 = and i32 %or.i591, %neg.i607
  %arrayidx64 = getelementptr inbounds i32, ptr %in, i64 12
  %16 = load i32, ptr %arrayidx64, align 4, !tbaa !9
  %or.i609 = add i32 %or.i584, %16
  %add63 = add i32 %or.i609, %and.i606
  %add65 = add i32 %add63, %and1.i608
  %or.i612 = tail call i32 @llvm.fshl.i32(i32 %add65, i32 %add65, i32 3)
  %and.i613 = and i32 %or.i612, %or.i605
  %neg.i614 = xor i32 %or.i612, -1
  %and1.i615 = and i32 %or.i598, %neg.i614
  %arrayidx69 = getelementptr inbounds i32, ptr %in, i64 13
  %17 = load i32, ptr %arrayidx69, align 4, !tbaa !9
  %or.i616 = add i32 %or.i591, %17
  %add68 = add i32 %or.i616, %and.i613
  %add70 = add i32 %add68, %and1.i615
  %or.i619 = tail call i32 @llvm.fshl.i32(i32 %add70, i32 %add70, i32 7)
  %and.i620 = and i32 %or.i619, %or.i612
  %neg.i621 = xor i32 %or.i619, -1
  %and1.i622 = and i32 %or.i605, %neg.i621
  %arrayidx74 = getelementptr inbounds i32, ptr %in, i64 14
  %18 = load i32, ptr %arrayidx74, align 4, !tbaa !9
  %or.i623 = add i32 %or.i598, %18
  %add73 = add i32 %or.i623, %and.i620
  %add75 = add i32 %add73, %and1.i622
  %or.i626 = tail call i32 @llvm.fshl.i32(i32 %add75, i32 %add75, i32 11)
  %and.i627 = and i32 %or.i626, %or.i619
  %neg.i628 = xor i32 %or.i626, -1
  %and1.i629 = and i32 %or.i612, %neg.i628
  %arrayidx79 = getelementptr inbounds i32, ptr %in, i64 15
  %19 = load i32, ptr %arrayidx79, align 4, !tbaa !9
  %or.i630 = add i32 %or.i605, %19
  %add78 = add i32 %or.i630, %and.i627
  %add80 = add i32 %add78, %and1.i629
  %or.i633 = tail call i32 @llvm.fshl.i32(i32 %add80, i32 %add80, i32 19)
  %and17.i = or i32 %or.i626, %or.i619
  %or.i634 = and i32 %or.i633, %and17.i
  %or3.i = or i32 %or.i634, %and.i627
  %add83 = add i32 %4, 1518500249
  %add85 = add i32 %add83, %or.i612
  %add86 = add i32 %add85, %or3.i
  %or.i637 = tail call i32 @llvm.fshl.i32(i32 %add86, i32 %add86, i32 3)
  %and17.i638 = or i32 %or.i633, %or.i626
  %or.i639 = and i32 %or.i637, %and17.i638
  %and2.i640 = and i32 %or.i633, %or.i626
  %or3.i641 = or i32 %or.i639, %and2.i640
  %add89 = add i32 %8, 1518500249
  %add91 = add i32 %add89, %or.i619
  %add92 = add i32 %add91, %or3.i641
  %or.i644 = tail call i32 @llvm.fshl.i32(i32 %add92, i32 %add92, i32 5)
  %and17.i645 = or i32 %or.i637, %or.i633
  %or.i646 = and i32 %or.i644, %and17.i645
  %and2.i647 = and i32 %or.i637, %or.i633
  %or3.i648 = or i32 %or.i646, %and2.i647
  %add95 = add i32 %12, 1518500249
  %add97 = add i32 %add95, %or.i626
  %add98 = add i32 %add97, %or3.i648
  %or.i651 = tail call i32 @llvm.fshl.i32(i32 %add98, i32 %add98, i32 9)
  %and17.i652 = or i32 %or.i644, %or.i637
  %or.i653 = and i32 %or.i651, %and17.i652
  %and2.i654 = and i32 %or.i644, %or.i637
  %or3.i655 = or i32 %or.i653, %and2.i654
  %add101 = add i32 %16, 1518500249
  %add103 = add i32 %add101, %or.i633
  %add104 = add i32 %add103, %or3.i655
  %or.i658 = tail call i32 @llvm.fshl.i32(i32 %add104, i32 %add104, i32 13)
  %and17.i659 = or i32 %or.i651, %or.i644
  %or.i660 = and i32 %or.i658, %and17.i659
  %and2.i661 = and i32 %or.i651, %or.i644
  %or3.i662 = or i32 %or.i660, %and2.i661
  %add107 = add i32 %5, 1518500249
  %add109 = add i32 %add107, %or.i637
  %add110 = add i32 %add109, %or3.i662
  %or.i665 = tail call i32 @llvm.fshl.i32(i32 %add110, i32 %add110, i32 3)
  %and17.i666 = or i32 %or.i658, %or.i651
  %or.i667 = and i32 %or.i665, %and17.i666
  %and2.i668 = and i32 %or.i658, %or.i651
  %or3.i669 = or i32 %or.i667, %and2.i668
  %add113 = add i32 %9, 1518500249
  %add115 = add i32 %add113, %or.i644
  %add116 = add i32 %add115, %or3.i669
  %or.i672 = tail call i32 @llvm.fshl.i32(i32 %add116, i32 %add116, i32 5)
  %and17.i673 = or i32 %or.i665, %or.i658
  %or.i674 = and i32 %or.i672, %and17.i673
  %and2.i675 = and i32 %or.i665, %or.i658
  %or3.i676 = or i32 %or.i674, %and2.i675
  %add119 = add i32 %13, 1518500249
  %add121 = add i32 %add119, %or.i651
  %add122 = add i32 %add121, %or3.i676
  %or.i679 = tail call i32 @llvm.fshl.i32(i32 %add122, i32 %add122, i32 9)
  %and17.i680 = or i32 %or.i672, %or.i665
  %or.i681 = and i32 %or.i679, %and17.i680
  %and2.i682 = and i32 %or.i672, %or.i665
  %or3.i683 = or i32 %or.i681, %and2.i682
  %add125 = add i32 %17, 1518500249
  %add127 = add i32 %add125, %or.i658
  %add128 = add i32 %add127, %or3.i683
  %or.i686 = tail call i32 @llvm.fshl.i32(i32 %add128, i32 %add128, i32 13)
  %and17.i687 = or i32 %or.i679, %or.i672
  %or.i688 = and i32 %or.i686, %and17.i687
  %and2.i689 = and i32 %or.i679, %or.i672
  %or3.i690 = or i32 %or.i688, %and2.i689
  %add131 = add i32 %6, 1518500249
  %add133 = add i32 %add131, %or.i665
  %add134 = add i32 %add133, %or3.i690
  %or.i693 = tail call i32 @llvm.fshl.i32(i32 %add134, i32 %add134, i32 3)
  %and17.i694 = or i32 %or.i686, %or.i679
  %or.i695 = and i32 %or.i693, %and17.i694
  %and2.i696 = and i32 %or.i686, %or.i679
  %or3.i697 = or i32 %or.i695, %and2.i696
  %add137 = add i32 %10, 1518500249
  %add139 = add i32 %add137, %or.i672
  %add140 = add i32 %add139, %or3.i697
  %or.i700 = tail call i32 @llvm.fshl.i32(i32 %add140, i32 %add140, i32 5)
  %and17.i701 = or i32 %or.i693, %or.i686
  %or.i702 = and i32 %or.i700, %and17.i701
  %and2.i703 = and i32 %or.i693, %or.i686
  %or3.i704 = or i32 %or.i702, %and2.i703
  %add143 = add i32 %14, 1518500249
  %add145 = add i32 %add143, %or.i679
  %add146 = add i32 %add145, %or3.i704
  %or.i707 = tail call i32 @llvm.fshl.i32(i32 %add146, i32 %add146, i32 9)
  %and17.i708 = or i32 %or.i700, %or.i693
  %or.i709 = and i32 %or.i707, %and17.i708
  %and2.i710 = and i32 %or.i700, %or.i693
  %or3.i711 = or i32 %or.i709, %and2.i710
  %add149 = add i32 %18, 1518500249
  %add151 = add i32 %add149, %or.i686
  %add152 = add i32 %add151, %or3.i711
  %or.i714 = tail call i32 @llvm.fshl.i32(i32 %add152, i32 %add152, i32 13)
  %and17.i715 = or i32 %or.i707, %or.i700
  %or.i716 = and i32 %or.i714, %and17.i715
  %and2.i717 = and i32 %or.i707, %or.i700
  %or3.i718 = or i32 %or.i716, %and2.i717
  %add155 = add i32 %7, 1518500249
  %add157 = add i32 %add155, %or.i693
  %add158 = add i32 %add157, %or3.i718
  %or.i721 = tail call i32 @llvm.fshl.i32(i32 %add158, i32 %add158, i32 3)
  %and17.i722 = or i32 %or.i714, %or.i707
  %or.i723 = and i32 %or.i721, %and17.i722
  %and2.i724 = and i32 %or.i714, %or.i707
  %or3.i725 = or i32 %or.i723, %and2.i724
  %add161 = add i32 %11, 1518500249
  %add163 = add i32 %add161, %or.i700
  %add164 = add i32 %add163, %or3.i725
  %or.i728 = tail call i32 @llvm.fshl.i32(i32 %add164, i32 %add164, i32 5)
  %and17.i729 = or i32 %or.i721, %or.i714
  %or.i730 = and i32 %or.i728, %and17.i729
  %and2.i731 = and i32 %or.i721, %or.i714
  %or3.i732 = or i32 %or.i730, %and2.i731
  %add167 = add i32 %15, 1518500249
  %add169 = add i32 %add167, %or.i707
  %add170 = add i32 %add169, %or3.i732
  %or.i735 = tail call i32 @llvm.fshl.i32(i32 %add170, i32 %add170, i32 9)
  %and17.i736 = or i32 %or.i728, %or.i721
  %or.i737 = and i32 %or.i735, %and17.i736
  %and2.i738 = and i32 %or.i728, %or.i721
  %or3.i739 = or i32 %or.i737, %and2.i738
  %add173 = add i32 %19, 1518500249
  %add175 = add i32 %add173, %or.i714
  %add176 = add i32 %add175, %or3.i739
  %or.i742 = tail call i32 @llvm.fshl.i32(i32 %add176, i32 %add176, i32 13)
  %xor.i = xor i32 %or.i742, %or.i735
  %xor1.i = xor i32 %xor.i, %or.i728
  %add179 = add i32 %4, 1859775393
  %add181 = add i32 %add179, %or.i721
  %add182 = add i32 %add181, %xor1.i
  %or.i745 = tail call i32 @llvm.fshl.i32(i32 %add182, i32 %add182, i32 3)
  %xor1.i747 = xor i32 %xor.i, %or.i745
  %add185 = add i32 %12, 1859775393
  %add187 = add i32 %add185, %or.i728
  %add188 = add i32 %add187, %xor1.i747
  %or.i750 = tail call i32 @llvm.fshl.i32(i32 %add188, i32 %add188, i32 9)
  %xor.i751 = xor i32 %or.i745, %or.i742
  %xor1.i752 = xor i32 %xor.i751, %or.i750
  %add191 = add i32 %8, 1859775393
  %add193 = add i32 %add191, %or.i735
  %add194 = add i32 %add193, %xor1.i752
  %or.i755 = tail call i32 @llvm.fshl.i32(i32 %add194, i32 %add194, i32 11)
  %xor.i756 = xor i32 %or.i750, %or.i745
  %xor1.i757 = xor i32 %xor.i756, %or.i755
  %add197 = add i32 %16, 1859775393
  %add199 = add i32 %add197, %or.i742
  %add200 = add i32 %add199, %xor1.i757
  %or.i760 = tail call i32 @llvm.fshl.i32(i32 %add200, i32 %add200, i32 15)
  %xor.i761 = xor i32 %or.i755, %or.i750
  %xor1.i762 = xor i32 %xor.i761, %or.i760
  %add203 = add i32 %6, 1859775393
  %add205 = add i32 %add203, %or.i745
  %add206 = add i32 %add205, %xor1.i762
  %or.i765 = tail call i32 @llvm.fshl.i32(i32 %add206, i32 %add206, i32 3)
  %xor.i766 = xor i32 %or.i760, %or.i755
  %xor1.i767 = xor i32 %xor.i766, %or.i765
  %add209 = add i32 %14, 1859775393
  %add211 = add i32 %add209, %or.i750
  %add212 = add i32 %add211, %xor1.i767
  %or.i770 = tail call i32 @llvm.fshl.i32(i32 %add212, i32 %add212, i32 9)
  %xor.i771 = xor i32 %or.i765, %or.i760
  %xor1.i772 = xor i32 %xor.i771, %or.i770
  %add215 = add i32 %10, 1859775393
  %add217 = add i32 %add215, %or.i755
  %add218 = add i32 %add217, %xor1.i772
  %or.i775 = tail call i32 @llvm.fshl.i32(i32 %add218, i32 %add218, i32 11)
  %xor.i776 = xor i32 %or.i770, %or.i765
  %xor1.i777 = xor i32 %xor.i776, %or.i775
  %add221 = add i32 %18, 1859775393
  %add223 = add i32 %add221, %or.i760
  %add224 = add i32 %add223, %xor1.i777
  %or.i780 = tail call i32 @llvm.fshl.i32(i32 %add224, i32 %add224, i32 15)
  %xor.i781 = xor i32 %or.i775, %or.i770
  %xor1.i782 = xor i32 %xor.i781, %or.i780
  %add227 = add i32 %5, 1859775393
  %add229 = add i32 %add227, %or.i765
  %add230 = add i32 %add229, %xor1.i782
  %or.i785 = tail call i32 @llvm.fshl.i32(i32 %add230, i32 %add230, i32 3)
  %xor.i786 = xor i32 %or.i780, %or.i775
  %xor1.i787 = xor i32 %xor.i786, %or.i785
  %add233 = add i32 %13, 1859775393
  %add235 = add i32 %add233, %or.i770
  %add236 = add i32 %add235, %xor1.i787
  %or.i790 = tail call i32 @llvm.fshl.i32(i32 %add236, i32 %add236, i32 9)
  %xor.i791 = xor i32 %or.i785, %or.i780
  %xor1.i792 = xor i32 %xor.i791, %or.i790
  %add239 = add i32 %9, 1859775393
  %add241 = add i32 %add239, %or.i775
  %add242 = add i32 %add241, %xor1.i792
  %or.i795 = tail call i32 @llvm.fshl.i32(i32 %add242, i32 %add242, i32 11)
  %xor.i796 = xor i32 %or.i790, %or.i785
  %xor1.i797 = xor i32 %xor.i796, %or.i795
  %add245 = add i32 %17, 1859775393
  %add247 = add i32 %add245, %or.i780
  %add248 = add i32 %add247, %xor1.i797
  %or.i800 = tail call i32 @llvm.fshl.i32(i32 %add248, i32 %add248, i32 15)
  %xor.i801 = xor i32 %or.i795, %or.i790
  %xor1.i802 = xor i32 %xor.i801, %or.i800
  %add251 = add i32 %7, 1859775393
  %add253 = add i32 %add251, %or.i785
  %add254 = add i32 %add253, %xor1.i802
  %or.i805 = tail call i32 @llvm.fshl.i32(i32 %add254, i32 %add254, i32 3)
  %xor.i806 = xor i32 %or.i800, %or.i795
  %xor1.i807 = xor i32 %xor.i806, %or.i805
  %add257 = add i32 %15, 1859775393
  %add259 = add i32 %add257, %or.i790
  %add260 = add i32 %add259, %xor1.i807
  %or.i810 = tail call i32 @llvm.fshl.i32(i32 %add260, i32 %add260, i32 9)
  %xor.i811 = xor i32 %or.i805, %or.i800
  %xor1.i812 = xor i32 %xor.i811, %or.i810
  %add263 = add i32 %11, 1859775393
  %add265 = add i32 %add263, %or.i795
  %add266 = add i32 %add265, %xor1.i812
  %or.i815 = tail call i32 @llvm.fshl.i32(i32 %add266, i32 %add266, i32 11)
  %xor.i816 = xor i32 %or.i810, %or.i805
  %xor1.i817 = xor i32 %xor.i816, %or.i815
  %add269 = add i32 %19, 1859775393
  %add271 = add i32 %add269, %or.i800
  %add272 = add i32 %add271, %xor1.i817
  %or.i820 = tail call i32 @llvm.fshl.i32(i32 %add272, i32 %add272, i32 15)
  %add275 = add i32 %or.i805, %0
  store i32 %add275, ptr %hash, align 4, !tbaa !9
  %add277 = add i32 %or.i820, %1
  store i32 %add277, ptr %arrayidx1, align 4, !tbaa !9
  %add279 = add i32 %or.i815, %2
  store i32 %add279, ptr %arrayidx2, align 4, !tbaa !9
  %add281 = add i32 %or.i810, %3
  store i32 %add281, ptr %arrayidx3, align 4, !tbaa !9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #12

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone willreturn }

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
!11 = !{!12, !13, i64 80}
!12 = !{!"md4_ctx", !7, i64 0, !7, i64 16, !13, i64 80}
!13 = !{!"long", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !7, i64 0}
