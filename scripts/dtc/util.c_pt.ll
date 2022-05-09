; ModuleID = '/llk/IR_all_yes/scripts/dtc/util.c_pt.bc'
source_filename = "../scripts/dtc/util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.option = type { ptr, i32, ptr, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Couldn't open blob from '%s': %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Couldn't write blob to '%s': %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hlLb\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"iuxs\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" = <\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"0x%08x%s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" = [\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Version: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"DTC 1.6.1-g0a3a9d34\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@__const.util_usage.a_arg = private unnamed_addr constant [6 x i8] c"<arg>\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Usage: %s\0A\0AOptions: -[%s]\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"opts_help[i] != NULL\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"../scripts/dtc/util.c\00", align 1
@__PRETTY_FUNCTION__.util_usage = private unnamed_addr constant [102 x i8] c"void util_usage(const char *, const char *, const char *, const struct option *, const char *const *)\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"  -%c, \00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"--%-*s\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"--%s %s%*s\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"\0AError: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"malloc() failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"realloc() failed (len=%zd)\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"endx > x\00", align 1
@__PRETTY_FUNCTION__.get_oct_char = private unnamed_addr constant [39 x i8] c"char get_oct_char(const char *, int *)\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"\\x used with no following hex digits\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xstrdup(ptr nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #24
  %conv = shl i64 %call, 32
  %sext = add i64 %conv, 4294967296
  %conv1 = ashr exact i64 %sext, 32
  %call.i = tail call noalias ptr @malloc(i64 noundef %conv1) #25
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.27) #26
  unreachable

xmalloc.exit:                                     ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i, ptr align 1 %s, i64 %conv1, i1 false)
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @xavsprintf_append(ptr nocapture noundef %strp, ptr nocapture noundef readonly %fmt, ptr noundef %ap) local_unnamed_addr #0 {
entry:
  %ap_copy = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap_copy) #27
  %0 = load ptr, ptr %strp, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(ptr noundef nonnull %0) #24
  %conv = trunc i64 %call to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %size.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  call void @llvm.va_copy(ptr nonnull %ap_copy, ptr %ap)
  %call2 = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef %fmt, ptr noundef nonnull %ap_copy) #27
  %add = add nsw i32 %call2, 1
  call void @llvm.va_end(ptr nonnull %ap_copy)
  %add4 = add nsw i32 %add, %size.0
  %conv5 = sext i32 %add4 to i64
  %call.i = call ptr @realloc(ptr noundef %0, i64 noundef %conv5) #28
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %xrealloc.exit

if.then.i:                                        ; preds = %if.end
  call void (ptr, ...) @die(ptr noundef nonnull @.str.29, i64 noundef %conv5) #26
  unreachable

xrealloc.exit:                                    ; preds = %if.end
  %idx.ext = sext i32 %size.0 to i64
  %add.ptr = getelementptr inbounds i8, ptr %call.i, i64 %idx.ext
  %conv7 = sext i32 %add to i64
  %call8 = call i32 @vsnprintf(ptr noundef nonnull %add.ptr, i64 noundef %conv7, ptr noundef %fmt, ptr noundef %ap) #27
  store ptr %call.i, ptr %strp, align 8, !tbaa !5
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call.i) #24
  %conv10 = trunc i64 %call9 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap_copy) #27
  ret i32 %conv10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #4

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @xasprintf_append(ptr nocapture noundef %strp, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #27
  call void @llvm.va_start(ptr nonnull %ap)
  %call = call i32 @xavsprintf_append(ptr noundef %strp, ptr noundef %fmt, ptr noundef nonnull %ap)
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #27
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @xasprintf(ptr nocapture noundef %strp, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #27
  store ptr null, ptr %strp, align 8, !tbaa !5
  call void @llvm.va_start(ptr nonnull %ap)
  %call = call i32 @xavsprintf_append(ptr noundef nonnull %strp, ptr noundef %fmt, ptr noundef nonnull %ap)
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #27
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @join_path(ptr nocapture noundef readonly %path, ptr nocapture noundef readonly %name) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %path) #24
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #24
  %conv2 = trunc i64 %call1 to i32
  %add = add nsw i32 %conv2, %conv
  %add3 = add nsw i32 %add, 2
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %sub = add i64 %call, 4294967295
  %0 = and i64 %sub, 4294967295
  %arrayidx = getelementptr inbounds i8, ptr %path, i64 %0
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %cmp6 = icmp eq i8 %1, 47
  %dec = add nsw i32 %add, 1
  %spec.select = select i1 %cmp6, i32 %dec, i32 %add3
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %len.0 = phi i32 [ %add3, %entry ], [ %spec.select, %land.lhs.true ]
  %tobool.not = phi i1 [ false, %entry ], [ %cmp6, %land.lhs.true ]
  %conv8 = sext i32 %len.0 to i64
  %call.i = tail call noalias ptr @malloc(i64 noundef %conv8) #25
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %if.end
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.27) #26
  unreachable

xmalloc.exit:                                     ; preds = %if.end
  %sext = shl i64 %call, 32
  %conv10 = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i, ptr align 1 %path, i64 %conv10, i1 false)
  br i1 %tobool.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %xmalloc.exit
  %arrayidx13 = getelementptr inbounds i8, ptr %call.i, i64 %conv10
  store i8 47, ptr %arrayidx13, align 1, !tbaa !9
  %inc = shl i64 %call, 32
  %.pre = add i64 %inc, 4294967296
  %.pre34 = ashr exact i64 %.pre, 32
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %xmalloc.exit
  %idx.ext.pre-phi = phi i64 [ %.pre34, %if.then11 ], [ %conv10, %xmalloc.exit ]
  %add.ptr = getelementptr inbounds i8, ptr %call.i, i64 %idx.ext.pre-phi
  %add15 = shl i64 %call1, 32
  %sext32 = add i64 %add15, 4294967296
  %conv16 = ashr exact i64 %sext32, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr, ptr align 1 %name, i64 %conv16, i1 false)
  ret ptr %call.i
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local zeroext i1 @util_is_printable_string(ptr noundef readonly %data, i32 noundef %len) local_unnamed_addr #6 {
entry:
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %len, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %data, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %cmp1.not = icmp eq i8 %0, 0
  br i1 %cmp1.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %idx.ext = sext i32 %len to i64
  %add.ptr = getelementptr inbounds i8, ptr %data, i64 %idx.ext
  %cmp546 = icmp sgt i32 %len, 0
  br i1 %cmp546, label %while.cond7.preheader, label %cleanup

while.cond:                                       ; preds = %while.end
  %incdec.ptr24 = getelementptr inbounds i8, ptr %s.1.lcssa, i64 1
  %cmp5 = icmp ult ptr %incdec.ptr24, %add.ptr
  br i1 %cmp5, label %while.cond7.preheader, label %cleanup

while.cond7.preheader:                            ; preds = %while.cond, %if.end4
  %s.047 = phi ptr [ %incdec.ptr24, %while.cond ], [ %data, %if.end4 ]
  %cmp842 = icmp ult ptr %s.047, %add.ptr
  br i1 %cmp842, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %while.body16, %while.cond7.preheader
  %s.143 = phi ptr [ %incdec.ptr, %while.body16 ], [ %s.047, %while.cond7.preheader ]
  %1 = load i8, ptr %s.143, align 1, !tbaa !9
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call = tail call ptr @__ctype_b_loc() #29
  %2 = load ptr, ptr %call, align 8, !tbaa !5
  %3 = zext i8 %1 to i64
  %arrayidx13 = getelementptr inbounds i16, ptr %2, i64 %3
  %4 = load i16, ptr %arrayidx13, align 2, !tbaa !10
  %5 = and i16 %4, 16384
  %tobool15.not = icmp eq i16 %5, 0
  br i1 %tobool15.not, label %while.end, label %while.body16

while.body16:                                     ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, ptr %s.143, i64 1
  %cmp8 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp8, label %land.lhs.true, label %while.end

while.end:                                        ; preds = %while.body16, %land.rhs, %land.lhs.true
  %s.1.lcssa = phi ptr [ %s.143, %land.rhs ], [ %s.143, %land.lhs.true ], [ %incdec.ptr, %while.body16 ]
  %6 = load i8, ptr %s.1.lcssa, align 1, !tbaa !9
  %cmp18.not = icmp ne i8 %6, 0
  %cmp20 = icmp eq ptr %s.1.lcssa, %s.047
  %or.cond = select i1 %cmp18.not, i1 true, i1 %cmp20
  br i1 %or.cond, label %cleanup, label %while.cond

cleanup:                                          ; preds = %while.end, %while.cond7.preheader, %while.cond, %if.end4, %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.end ], [ true, %if.end4 ], [ true, %while.cond ], [ false, %while.end ], [ false, %while.cond7.preheader ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local signext i8 @get_escape_char(ptr nocapture noundef readonly %s, ptr nocapture noundef %i) local_unnamed_addr #0 {
entry:
  %x.i15 = alloca [3 x i8], align 1
  %endx.i16 = alloca ptr, align 8
  %x.i = alloca [4 x i8], align 1
  %endx.i = alloca ptr, align 8
  %0 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds i8, ptr %s, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %add = add nsw i32 %0, 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 97, label %sw.epilog
    i32 98, label %sw.bb1
    i32 116, label %sw.bb2
    i32 110, label %sw.bb3
    i32 118, label %sw.bb4
    i32 102, label %sw.bb5
    i32 114, label %sw.bb6
    i32 48, label %sw.bb7
    i32 49, label %sw.bb7
    i32 50, label %sw.bb7
    i32 51, label %sw.bb7
    i32 52, label %sw.bb7
    i32 53, label %sw.bb7
    i32 54, label %sw.bb7
    i32 55, label %sw.bb7
    i32 120, label %sw.bb8
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %endx.i) #27
  %arrayidx.i = getelementptr inbounds [4 x i8], ptr %x.i, i64 0, i64 3
  store i8 0, ptr %arrayidx.i, align 1, !tbaa !9
  %call.i = call ptr @strncpy(ptr noundef nonnull %x.i, ptr noundef nonnull dereferenceable(1) %arrayidx, i64 noundef 3) #27
  %call2.i = call i64 @strtol(ptr noundef nonnull %x.i, ptr noundef nonnull %endx.i, i32 noundef 8) #27
  %2 = load ptr, ptr %endx.i, align 8, !tbaa !5
  %cmp.i = icmp ugt ptr %2, %x.i
  br i1 %cmp.i, label %get_oct_char.exit, label %if.else.i

if.else.i:                                        ; preds = %sw.bb7
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.20, i32 noundef 155, ptr noundef nonnull @__PRETTY_FUNCTION__.get_oct_char) #26
  unreachable

get_oct_char.exit:                                ; preds = %sw.bb7
  %sub.ptr.lhs.cast.i = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %x.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %3 = trunc i64 %sub.ptr.sub.i to i32
  %conv5.i = add i32 %0, %3
  %conv6.i = trunc i64 %call2.i to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %endx.i) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #27
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %x.i15) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %endx.i16) #27
  %arrayidx.i17 = getelementptr inbounds [3 x i8], ptr %x.i15, i64 0, i64 2
  store i8 0, ptr %arrayidx.i17, align 1, !tbaa !9
  %idx.ext.i18 = sext i32 %add to i64
  %add.ptr.i19 = getelementptr inbounds i8, ptr %s, i64 %idx.ext.i18
  %call.i20 = call ptr @strncpy(ptr noundef nonnull %x.i15, ptr noundef nonnull dereferenceable(1) %add.ptr.i19, i64 noundef 2) #27
  %call2.i21 = call i64 @strtol(ptr noundef nonnull %x.i15, ptr noundef nonnull %endx.i16, i32 noundef 16) #27
  %4 = load ptr, ptr %endx.i16, align 8, !tbaa !5
  %cmp.i22 = icmp ugt ptr %4, %x.i15
  br i1 %cmp.i22, label %get_hex_char.exit, label %if.then.i

if.then.i:                                        ; preds = %sw.bb8
  call void (ptr, ...) @die(ptr noundef nonnull @.str.31) #26
  unreachable

get_hex_char.exit:                                ; preds = %sw.bb8
  %sub.ptr.lhs.cast.i23 = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast.i24 = ptrtoint ptr %x.i15 to i64
  %sub.ptr.sub.i25 = sub i64 %sub.ptr.lhs.cast.i23, %sub.ptr.rhs.cast.i24
  %5 = trunc i64 %sub.ptr.sub.i25 to i32
  %conv5.i26 = add i32 %add, %5
  %conv6.i27 = trunc i64 %call2.i21 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %endx.i16) #27
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %x.i15) #27
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %get_hex_char.exit, %get_oct_char.exit, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry
  %j.0 = phi i32 [ %add, %sw.default ], [ %conv5.i26, %get_hex_char.exit ], [ %conv5.i, %get_oct_char.exit ], [ %add, %sw.bb6 ], [ %add, %sw.bb5 ], [ %add, %sw.bb4 ], [ %add, %sw.bb3 ], [ %add, %sw.bb2 ], [ %add, %sw.bb1 ], [ %add, %entry ]
  %val.0 = phi i8 [ %1, %sw.default ], [ %conv6.i27, %get_hex_char.exit ], [ %conv6.i, %get_oct_char.exit ], [ 13, %sw.bb6 ], [ 12, %sw.bb5 ], [ 11, %sw.bb4 ], [ 10, %sw.bb3 ], [ 9, %sw.bb2 ], [ 8, %sw.bb1 ], [ 7, %entry ]
  store i32 %j.0, ptr %i, align 4, !tbaa !12
  ret i8 %val.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @utilfdt_read_err(ptr nocapture noundef readonly %filename, ptr nocapture noundef writeonly %buffp, ptr noundef writeonly %len) local_unnamed_addr #0 {
entry:
  store ptr null, ptr %buffp, align 8, !tbaa !5
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %filename, ptr noundef nonnull dereferenceable(2) @.str) #24
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, i32, ...) @open(ptr noundef %filename, i32 noundef 0) #27
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.then
  %call4 = tail call ptr @__errno_location() #29
  %0 = load i32, ptr %call4, align 4, !tbaa !12
  br label %cleanup

if.end5:                                          ; preds = %if.then, %entry
  %fd.0 = phi i32 [ %call1, %if.then ], [ 0, %entry ]
  %call.i = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #25
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %do.body

if.then.i:                                        ; preds = %if.end5
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.27) #26
  unreachable

do.body:                                          ; preds = %if.end16, %if.end5
  %buf.0 = phi ptr [ %buf.1, %if.end16 ], [ %call.i, %if.end5 ]
  %bufsize.0 = phi i64 [ %bufsize.1, %if.end16 ], [ 1024, %if.end5 ]
  %offset.0 = phi i64 [ %add, %if.end16 ], [ 0, %if.end5 ]
  %cmp7 = icmp eq i64 %offset.0, %bufsize.0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %do.body
  %mul = shl i64 %bufsize.0, 1
  %call.i50 = tail call ptr @realloc(ptr noundef %buf.0, i64 noundef %mul) #28
  %tobool.not.i51 = icmp eq ptr %call.i50, null
  br i1 %tobool.not.i51, label %if.then.i52, label %if.end10

if.then.i52:                                      ; preds = %if.then8
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.29, i64 noundef %mul) #26
  unreachable

if.end10:                                         ; preds = %if.then8, %do.body
  %buf.1 = phi ptr [ %buf.0, %do.body ], [ %call.i50, %if.then8 ]
  %bufsize.1 = phi i64 [ %bufsize.0, %do.body ], [ %mul, %if.then8 ]
  %arrayidx = getelementptr inbounds i8, ptr %buf.1, i64 %offset.0
  %sub = sub i64 %bufsize.1, %offset.0
  %call11 = tail call i64 @read(i32 noundef %fd.0, ptr noundef %arrayidx, i64 noundef %sub) #27
  %conv = trunc i64 %call11 to i32
  %cmp12 = icmp slt i32 %conv, 0
  br i1 %cmp12, label %do.end, label %if.end16

if.end16:                                         ; preds = %if.end10
  %sext = shl i64 %call11, 32
  %conv17 = ashr exact i64 %sext, 32
  %add = add i64 %conv17, %offset.0
  %cmp18.not = icmp eq i32 %conv, 0
  br i1 %cmp18.not, label %do.end.thread, label %do.body

do.end.thread:                                    ; preds = %if.end16
  %call2054 = tail call i32 @close(i32 noundef %fd.0) #27
  br label %if.else

do.end:                                           ; preds = %if.end10
  %call15 = tail call ptr @__errno_location() #29
  %1 = load i32, ptr %call15, align 4, !tbaa !12
  %call20 = tail call i32 @close(i32 noundef %fd.0) #27
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %do.end
  tail call void @free(ptr noundef %buf.1) #27
  br label %if.end22

if.else:                                          ; preds = %do.end, %do.end.thread
  store ptr %buf.1, ptr %buffp, align 8, !tbaa !5
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then21
  %ret.056 = phi i32 [ 0, %if.else ], [ %1, %if.then21 ]
  %tobool23.not = icmp eq ptr %len, null
  br i1 %tobool23.not, label %cleanup, label %if.then24

if.then24:                                        ; preds = %if.end22
  store i64 %bufsize.1, ptr %len, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end22, %if.then3
  %retval.0 = phi i32 [ %0, %if.then3 ], [ %ret.056, %if.then24 ], [ %ret.056, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #9

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local ptr @utilfdt_read(ptr noundef %filename, ptr noundef %len) local_unnamed_addr #0 {
entry:
  %buff = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buff) #27
  %call = call i32 @utilfdt_read_err(ptr noundef %filename, ptr noundef nonnull %buff, ptr noundef %len)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = tail call ptr @strerror(i32 noundef %call) #27
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %filename, ptr noundef %call1) #30
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buff, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %1, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buff) #27
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local i32 @utilfdt_write_err(ptr nocapture noundef readonly %filename, ptr nocapture noundef readonly %blob) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %filename, ptr noundef nonnull dereferenceable(2) @.str) #24
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, i32, ...) @open(ptr noundef %filename, i32 noundef 577, i32 noundef 438) #27
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.then
  %call4 = tail call ptr @__errno_location() #29
  %0 = load i32, ptr %call4, align 4, !tbaa !12
  br label %cleanup

if.end5:                                          ; preds = %if.then, %entry
  %fd.0 = phi i32 [ %call1, %if.then ], [ 1, %entry ]
  %totalsize6 = getelementptr inbounds %struct.fdt_header, ptr %blob, i64 0, i32 1
  %1 = load i8, ptr %totalsize6, align 1, !tbaa !9
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %totalsize6, i64 1
  %2 = load i8, ptr %arrayidx1.i, align 1, !tbaa !9
  %conv2.i = zext i8 %2 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %totalsize6, i64 2
  %3 = load i8, ptr %arrayidx4.i, align 1, !tbaa !9
  %conv5.i = zext i8 %3 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %totalsize6, i64 3
  %4 = load i8, ptr %arrayidx8.i, align 1, !tbaa !9
  %conv9.i = zext i8 %4 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp842 = icmp sgt i32 %or10.i, 0
  br i1 %cmp842, label %while.body, label %while.end

while.cond:                                       ; preds = %while.body
  %add = add nsw i32 %offset.043, %conv10
  %cmp8 = icmp sgt i32 %or10.i, %add
  br i1 %cmp8, label %while.body, label %while.end.loopexit

while.body:                                       ; preds = %while.cond, %if.end5
  %offset.043 = phi i32 [ %add, %while.cond ], [ 0, %if.end5 ]
  %idx.ext = sext i32 %offset.043 to i64
  %add.ptr = getelementptr inbounds i8, ptr %blob, i64 %idx.ext
  %sub = sub nsw i32 %or10.i, %offset.043
  %conv = sext i32 %sub to i64
  %call9 = tail call i64 @write(i32 noundef %fd.0, ptr noundef %add.ptr, i64 noundef %conv) #27
  %conv10 = trunc i64 %call9 to i32
  %cmp11 = icmp slt i32 %conv10, 0
  br i1 %cmp11, label %if.then13, label %while.cond

if.then13:                                        ; preds = %while.body
  %call14 = tail call ptr @__errno_location() #29
  %5 = load i32, ptr %call14, align 4, !tbaa !12
  %sub15 = sub nsw i32 0, %5
  br label %while.end

while.end.loopexit:                               ; preds = %while.cond
  %conv10.le = trunc i64 %call9 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.then13, %if.end5
  %ret.1 = phi i32 [ %sub15, %if.then13 ], [ 0, %if.end5 ], [ %conv10.le, %while.end.loopexit ]
  %cmp17.not = icmp eq i32 %fd.0, 1
  br i1 %cmp17.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %while.end
  %call20 = tail call i32 @close(i32 noundef %fd.0) #27
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %while.end
  %cmp22 = icmp slt i32 %ret.1, 0
  %sub24 = sub nsw i32 0, %ret.1
  %cond = select i1 %cmp22, i32 %sub24, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then3
  %retval.0 = phi i32 [ %0, %if.then3 ], [ %cond, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @utilfdt_write(ptr noundef %filename, ptr nocapture noundef readonly %blob) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @utilfdt_write_err(ptr noundef %filename, ptr noundef %blob)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = tail call ptr @strerror(i32 noundef %call) #27
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %filename, ptr noundef %call1) #30
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = sext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @utilfdt_decode_type(ptr nocapture noundef readonly %fmt, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %size) local_unnamed_addr #12 {
entry:
  %0 = load i8, ptr %fmt, align 1, !tbaa !9
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i32 -1, ptr %size, align 4, !tbaa !12
  %1 = load i8, ptr %fmt, align 1, !tbaa !9
  %conv = sext i8 %1 to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull @.str.3, i32 %conv, i64 5)
  %tobool1.not = icmp eq ptr %memchr, null
  br i1 %tobool1.not, label %if.end10, label %if.then2

if.then2:                                         ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, ptr %fmt, i64 1
  %2 = load i8, ptr %incdec.ptr, align 1, !tbaa !9
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then2
  %incdec.ptr7 = getelementptr inbounds i8, ptr %fmt, i64 2
  %cond40 = icmp eq i8 %1, 104
  %spec.select = select i1 %cond40, i32 98, i32 %conv
  %.pr = load i8, ptr %incdec.ptr7, align 1, !tbaa !9
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then2, %if.end
  %3 = phi i8 [ %.pr, %if.then6 ], [ %2, %if.then2 ], [ %1, %if.end ]
  %fmt.addr.0 = phi ptr [ %incdec.ptr7, %if.then6 ], [ %incdec.ptr, %if.then2 ], [ %fmt, %if.end ]
  %qualifier.0 = phi i32 [ %spec.select, %if.then6 ], [ %conv, %if.then2 ], [ 0, %if.end ]
  %cmp12 = icmp eq i8 %3, 0
  br i1 %cmp12, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %conv11 = sext i8 %3 to i32
  %memchr54 = tail call ptr @memchr(ptr noundef nonnull @.str.4, i32 %conv11, i64 5)
  %tobool16.not = icmp eq ptr %memchr54, null
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %lor.lhs.false
  %cmp20.not = icmp eq i8 %3, 115
  br i1 %cmp20.not, label %if.end34, label %if.then22

if.then22:                                        ; preds = %if.end18
  switch i32 %qualifier.0, label %cond.false28 [
    i32 98, label %cond.end32
    i32 104, label %cond.end32.fold.split
  ]

cond.false28:                                     ; preds = %if.then22
  %cmp29 = icmp eq i32 %qualifier.0, 108
  %cond = select i1 %cmp29, i32 4, i32 -1
  br label %cond.end32

cond.end32.fold.split:                            ; preds = %if.then22
  br label %cond.end32

cond.end32:                                       ; preds = %cond.end32.fold.split, %cond.false28, %if.then22
  %cond33 = phi i32 [ 1, %if.then22 ], [ %cond, %cond.false28 ], [ 2, %cond.end32.fold.split ]
  store i32 %cond33, ptr %size, align 4, !tbaa !12
  %.pre = load i8, ptr %fmt.addr.0, align 1, !tbaa !9
  %phi.cast = sext i8 %.pre to i32
  br label %if.end34

if.end34:                                         ; preds = %cond.end32, %if.end18
  %4 = phi i32 [ %phi.cast, %cond.end32 ], [ 115, %if.end18 ]
  %incdec.ptr35 = getelementptr inbounds i8, ptr %fmt.addr.0, i64 1
  store i32 %4, ptr %type, align 4, !tbaa !12
  %5 = load i8, ptr %incdec.ptr35, align 1, !tbaa !9
  %tobool37.not = icmp ne i8 %5, 0
  %. = sext i1 %tobool37.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %lor.lhs.false, %if.end10, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %lor.lhs.false ], [ -1, %if.end10 ], [ %., %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @utilfdt_print_data(ptr noundef %data, i32 noundef %len) local_unnamed_addr #13 {
entry:
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %entry
  %sub.i = add nsw i32 %len, -1
  %idxprom.i = sext i32 %sub.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %data, i64 %idxprom.i
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !9
  %cmp1.not.i = icmp eq i8 %0, 0
  br i1 %cmp1.not.i, label %if.end4.i, label %if.else

if.end4.i:                                        ; preds = %if.end.i
  %idx.ext.i = sext i32 %len to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %data, i64 %idx.ext.i
  %cmp546.i = icmp sgt i32 %len, 0
  br i1 %cmp546.i, label %while.cond7.preheader.i, label %if.then1

while.cond.i:                                     ; preds = %while.end.i
  %incdec.ptr24.i = getelementptr inbounds i8, ptr %s.1.lcssa.i, i64 1
  %cmp5.i = icmp ult ptr %incdec.ptr24.i, %add.ptr.i
  br i1 %cmp5.i, label %while.cond7.preheader.i, label %if.then1

while.cond7.preheader.i:                          ; preds = %while.cond.i, %if.end4.i
  %s.047.i = phi ptr [ %incdec.ptr24.i, %while.cond.i ], [ %data, %if.end4.i ]
  %cmp842.i = icmp ult ptr %s.047.i, %add.ptr.i
  br i1 %cmp842.i, label %land.lhs.true.i, label %if.else

land.lhs.true.i:                                  ; preds = %while.body16.i, %while.cond7.preheader.i
  %s.143.i = phi ptr [ %incdec.ptr.i, %while.body16.i ], [ %s.047.i, %while.cond7.preheader.i ]
  %1 = load i8, ptr %s.143.i, align 1, !tbaa !9
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %while.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call.i = tail call ptr @__ctype_b_loc() #29
  %2 = load ptr, ptr %call.i, align 8, !tbaa !5
  %3 = zext i8 %1 to i64
  %arrayidx13.i = getelementptr inbounds i16, ptr %2, i64 %3
  %4 = load i16, ptr %arrayidx13.i, align 2, !tbaa !10
  %5 = and i16 %4, 16384
  %tobool15.not.i = icmp eq i16 %5, 0
  br i1 %tobool15.not.i, label %if.else, label %while.body16.i

while.body16.i:                                   ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %s.143.i, i64 1
  %cmp8.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp8.i, label %land.lhs.true.i, label %while.body16.i.while.end.i_crit_edge

while.body16.i.while.end.i_crit_edge:             ; preds = %while.body16.i
  %.pre = load i8, ptr %incdec.ptr.i, align 1, !tbaa !9
  br label %while.end.i

while.end.i:                                      ; preds = %while.body16.i.while.end.i_crit_edge, %land.lhs.true.i
  %6 = phi i8 [ %.pre, %while.body16.i.while.end.i_crit_edge ], [ 0, %land.lhs.true.i ]
  %s.1.lcssa.i = phi ptr [ %incdec.ptr.i, %while.body16.i.while.end.i_crit_edge ], [ %s.143.i, %land.lhs.true.i ]
  %cmp18.not.i = icmp ne i8 %6, 0
  %cmp20.i = icmp eq ptr %s.1.lcssa.i, %s.047.i
  %or.cond.i = select i1 %cmp18.not.i, i1 true, i1 %cmp20.i
  br i1 %or.cond.i, label %if.else, label %while.cond.i

if.then1:                                         ; preds = %while.cond.i, %if.end4.i
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5)
  %call364 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, ptr noundef %data)
  %call465 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %data) #24
  %add66 = add i64 %call465, 1
  %cmp668 = icmp slt i64 %add66, %idx.ext.i
  br i1 %cmp668, label %if.then7.preheader, label %cleanup

if.then7.preheader:                               ; preds = %if.then1
  %add.ptr67 = getelementptr inbounds i8, ptr %data, i64 %add66
  br label %if.then7

if.then7:                                         ; preds = %if.then7, %if.then7.preheader
  %add.ptr69 = phi ptr [ %add.ptr, %if.then7 ], [ %add.ptr67, %if.then7.preheader ]
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7)
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, ptr noundef %add.ptr69)
  %call4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr69) #24
  %add = add i64 %call4, 1
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr69, i64 %add
  %cmp6 = icmp ult ptr %add.ptr, %add.ptr.i
  br i1 %cmp6, label %if.then7, label %cleanup

if.else:                                          ; preds = %while.end.i, %land.rhs.i, %while.cond7.preheader.i, %if.end.i
  %7 = and i32 %len, 3
  %cmp13 = icmp eq i32 %7, 0
  br i1 %cmp13, label %if.then14, label %if.else21

if.then14:                                        ; preds = %if.else
  %call15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8)
  %cmp1673 = icmp sgt i32 %len, 3
  br i1 %cmp1673, label %for.body.lr.ph, label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %if.then14
  %div8185 = lshr i32 %len, 2
  %sub = add nsw i32 %div8185, -1
  %8 = zext i32 %sub to i64
  %wide.trip.count = zext i32 %div8185 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, ptr %data, i64 %indvars.iv
  %9 = load i32, ptr %arrayidx, align 4, !tbaa !12
  %rev.i = tail call i32 @llvm.bswap.i32(i32 %9) #27
  %cmp18 = icmp ult i64 %indvars.iv, %8
  %cond = select i1 %cmp18, ptr @.str.10, ptr @.str.11
  %call19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i32 noundef %rev.i, ptr noundef nonnull %cond)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond76.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond76.not, label %cleanup.sink.split, label %for.body

if.else21:                                        ; preds = %if.else
  %call22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.13)
  %cmp2470 = icmp sgt i32 %len, 0
  br i1 %cmp2470, label %for.body25, label %cleanup.sink.split

for.body25:                                       ; preds = %for.body25, %if.else21
  %p.072 = phi ptr [ %incdec.ptr, %for.body25 ], [ %data, %if.else21 ]
  %i.171 = phi i32 [ %inc32, %for.body25 ], [ 0, %if.else21 ]
  %incdec.ptr = getelementptr inbounds i8, ptr %p.072, i64 1
  %10 = load i8, ptr %p.072, align 1, !tbaa !9
  %conv = zext i8 %10 to i32
  %cmp27 = icmp slt i32 %i.171, %sub.i
  %cond29 = select i1 %cmp27, ptr @.str.10, ptr @.str.11
  %call30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.14, i32 noundef %conv, ptr noundef nonnull %cond29)
  %inc32 = add nuw nsw i32 %i.171, 1
  %exitcond.not = icmp eq i32 %inc32, %len
  br i1 %exitcond.not, label %cleanup.sink.split, label %for.body25

cleanup.sink.split:                               ; preds = %for.body25, %if.else21, %for.body, %if.then14
  %.sink = phi i32 [ 62, %if.then14 ], [ 93, %if.else21 ], [ 62, %for.body ], [ 93, %for.body25 ]
  %putchar = tail call i32 @putchar(i32 %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then7, %if.then1, %entry
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
define dso_local void @util_version() local_unnamed_addr #14 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
  tail call void @exit(i32 noundef 0) #26
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: noreturn nounwind uwtable
define dso_local void @util_usage(ptr noundef %errmsg, ptr noundef %synopsis, ptr noundef %short_opts, ptr nocapture noundef readonly %long_opts, ptr nocapture noundef readonly %opts_help) local_unnamed_addr #14 {
entry:
  %a_arg = alloca [6 x i8], align 1
  %tobool.not = icmp eq ptr %errmsg, null
  %0 = load ptr, ptr @stderr, align 8
  %1 = load ptr, ptr @stdout, align 8
  %cond = select i1 %tobool.not, ptr %1, ptr %0
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %a_arg) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %a_arg, ptr noundef nonnull align 1 dereferenceable(6) @__const.util_usage.a_arg, i64 6, i1 false)
  %call = call i64 @strlen(ptr noundef nonnull %a_arg) #24
  %add = add i64 %call, 1
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %cond, ptr noundef nonnull @.str.18, ptr noundef %synopsis, ptr noundef %short_opts)
  %2 = load ptr, ptr %long_opts, align 8, !tbaa !16
  %tobool2.not104 = icmp eq ptr %2, null
  br i1 %tobool2.not104, label %for.end60, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %3 = trunc i64 %add to i32
  br label %for.body

for.cond16.preheader:                             ; preds = %for.body
  br i1 %tobool2.not104, label %for.end60, label %for.body20

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %4 = phi ptr [ %2, %for.body.lr.ph ], [ %8, %for.body ]
  %optlen.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %7, %for.body ]
  %i.0105 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %call5 = tail call i64 @strlen(ptr noundef nonnull %4) #24
  %5 = trunc i64 %call5 to i32
  %conv = add i32 %5, 1
  %has_arg = getelementptr inbounds %struct.option, ptr %long_opts, i64 %i.0105, i32 1
  %6 = load i32, ptr %has_arg, align 8, !tbaa !18
  %cmp = icmp eq i32 %6, 1
  %conv11 = select i1 %cmp, i32 %3, i32 0
  %l.0 = add i32 %conv, %conv11
  %7 = tail call i32 @llvm.smax.i32(i32 %optlen.0106, i32 %l.0)
  %inc = add i64 %i.0105, 1
  %arrayidx = getelementptr inbounds %struct.option, ptr %long_opts, i64 %inc
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !16
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %for.cond16.preheader, label %for.body

for.body20:                                       ; preds = %if.end55, %for.cond16.preheader
  %arrayidx17109 = phi ptr [ %arrayidx17, %if.end55 ], [ %long_opts, %for.cond16.preheader ]
  %i.1108 = phi i64 [ %inc59, %if.end55 ], [ 0, %for.cond16.preheader ]
  %arrayidx21 = getelementptr inbounds ptr, ptr %opts_help, i64 %i.1108
  %9 = load ptr, ptr %arrayidx21, align 8, !tbaa !5
  %cmp22.not = icmp eq ptr %9, null
  br i1 %cmp22.not, label %if.else, label %if.end25

if.else:                                          ; preds = %for.body20
  call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 444, ptr noundef nonnull @__PRETTY_FUNCTION__.util_usage) #26
  unreachable

if.end25:                                         ; preds = %for.body20
  %val = getelementptr inbounds %struct.option, ptr %long_opts, i64 %i.1108, i32 3
  %10 = load i32, ptr %val, align 8, !tbaa !19
  %cmp27 = icmp sgt i32 %10, 126
  br i1 %cmp27, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.end25
  %11 = call i64 @fwrite(ptr nonnull @.str.21, i64 6, i64 1, ptr %cond)
  br label %if.end35

if.else31:                                        ; preds = %if.end25
  %call34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %cond, ptr noundef nonnull @.str.22, i32 noundef %10)
  br label %if.end35

if.end35:                                         ; preds = %if.else31, %if.then29
  %has_arg37 = getelementptr inbounds %struct.option, ptr %long_opts, i64 %i.1108, i32 1
  %12 = load i32, ptr %has_arg37, align 8, !tbaa !18
  %cmp38 = icmp eq i32 %12, 0
  %13 = load ptr, ptr %arrayidx17109, align 8, !tbaa !16
  br i1 %cmp38, label %if.then40, label %if.else44

if.then40:                                        ; preds = %if.end35
  %call43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %cond, ptr noundef nonnull @.str.23, i32 noundef %7, ptr noundef %13)
  br label %if.end55

if.else44:                                        ; preds = %if.end35
  %call51 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #24
  %14 = add i64 %call51, %add
  %15 = trunc i64 %14 to i32
  %conv53 = sub i32 %7, %15
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %cond, ptr noundef nonnull @.str.24, ptr noundef %13, ptr noundef nonnull %a_arg, i32 noundef %conv53, ptr noundef nonnull @.str.11)
  br label %if.end55

if.end55:                                         ; preds = %if.else44, %if.then40
  %16 = load ptr, ptr %arrayidx21, align 8, !tbaa !5
  %call57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %cond, ptr noundef nonnull @.str.25, ptr noundef %16)
  %inc59 = add i64 %i.1108, 1
  %arrayidx17 = getelementptr inbounds %struct.option, ptr %long_opts, i64 %inc59
  %17 = load ptr, ptr %arrayidx17, align 8, !tbaa !16
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %for.end60, label %for.body20

for.end60:                                        ; preds = %if.end55, %for.cond16.preheader, %entry
  br i1 %tobool.not, label %if.else64, label %if.then62

if.then62:                                        ; preds = %for.end60
  %call63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %cond, ptr noundef nonnull @.str.26, ptr noundef nonnull %errmsg)
  call void @exit(i32 noundef 1) #26
  unreachable

if.else64:                                        ; preds = %for.end60
  call void @exit(i32 noundef 0) #26
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %str, ...) unnamed_addr #17 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #27
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = call i64 @fwrite(ptr nonnull @.str.28, i64 13, i64 1, ptr %0) #30
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 @vfprintf(ptr noundef %2, ptr noundef %str, ptr noundef nonnull %ap) #30
  call void @llvm.va_end(ptr nonnull %ap)
  call void @exit(i32 noundef 1) #26
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #23

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #23

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #24 = { nounwind readonly willreturn }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(1) }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { cold }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!17, !6, i64 0}
!17 = !{!"option", !6, i64 0, !13, i64 8, !6, i64 16, !13, i64 24}
!18 = !{!17, !13, i64 8}
!19 = !{!17, !13, i64 24}
