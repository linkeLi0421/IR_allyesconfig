; ModuleID = '/llk/IR_all_yes/scripts/dtc/libfdt/fdt_ro.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_node_header = type { i32, [0 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/aliases\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_get_string(ptr noundef %fdt, i32 noundef %stroffset, ptr noundef writeonly %lenp) local_unnamed_addr #0 {
entry:
  %call7 = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %fail, label %if.end10

if.end10:                                         ; preds = %entry
  %off_dt_strings11 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 3
  %0 = load i8, ptr %off_dt_strings11, align 1, !tbaa !5
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %off_dt_strings11, i64 1
  %1 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %off_dt_strings11, i64 2
  %2 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %off_dt_strings11, i64 3
  %3 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %add = add i32 %or10.i, %stroffset
  %cmp13.not = icmp ugt i32 %call7, %add
  br i1 %cmp13.not, label %if.end16, label %fail

if.end16:                                         ; preds = %if.end10
  %sub = sub i32 %call7, %add
  %4 = load i8, ptr %fdt, align 1, !tbaa !5
  %conv.i131 = zext i8 %4 to i32
  %shl.i132 = shl nuw i32 %conv.i131, 24
  %arrayidx1.i133 = getelementptr inbounds i8, ptr %fdt, i64 1
  %5 = load i8, ptr %arrayidx1.i133, align 1, !tbaa !5
  %conv2.i134 = zext i8 %5 to i32
  %shl3.i135 = shl nuw nsw i32 %conv2.i134, 16
  %or.i136 = or i32 %shl3.i135, %shl.i132
  %arrayidx4.i137 = getelementptr inbounds i8, ptr %fdt, i64 2
  %6 = load i8, ptr %arrayidx4.i137, align 1, !tbaa !5
  %conv5.i138 = zext i8 %6 to i32
  %shl6.i139 = shl nuw nsw i32 %conv5.i138, 8
  %or7.i140 = or i32 %or.i136, %shl6.i139
  %arrayidx8.i141 = getelementptr inbounds i8, ptr %fdt, i64 3
  %7 = load i8, ptr %arrayidx8.i141, align 1, !tbaa !5
  %conv9.i142 = zext i8 %7 to i32
  %or10.i143 = or i32 %or7.i140, %conv9.i142
  switch i32 %or10.i143, label %fail [
    i32 -804389139, label %if.then21
    i32 804389138, label %if.then54
  ]

if.then21:                                        ; preds = %if.end16
  %cmp22 = icmp slt i32 %stroffset, 0
  br i1 %cmp22, label %fail, label %if.end25

if.end25:                                         ; preds = %if.then21
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %8 = load i8, ptr %version, align 1, !tbaa !5
  %conv.i144 = zext i8 %8 to i32
  %shl.i145 = shl nuw i32 %conv.i144, 24
  %arrayidx1.i146 = getelementptr inbounds i8, ptr %version, i64 1
  %9 = load i8, ptr %arrayidx1.i146, align 1, !tbaa !5
  %conv2.i147 = zext i8 %9 to i32
  %shl3.i148 = shl nuw nsw i32 %conv2.i147, 16
  %or.i149 = or i32 %shl3.i148, %shl.i145
  %arrayidx4.i150 = getelementptr inbounds i8, ptr %version, i64 2
  %10 = load i8, ptr %arrayidx4.i150, align 1, !tbaa !5
  %conv5.i151 = zext i8 %10 to i32
  %shl6.i152 = shl nuw nsw i32 %conv5.i151, 8
  %or7.i153 = or i32 %or.i149, %shl6.i152
  %arrayidx8.i154 = getelementptr inbounds i8, ptr %version, i64 3
  %11 = load i8, ptr %arrayidx8.i154, align 1, !tbaa !5
  %conv9.i155 = zext i8 %11 to i32
  %or10.i156 = or i32 %or7.i153, %conv9.i155
  %cmp29 = icmp ugt i32 %or10.i156, 16
  br i1 %cmp29, label %if.then31, label %if.end73

if.then31:                                        ; preds = %if.end25
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %12 = load i8, ptr %size_dt_strings, align 1, !tbaa !5
  %conv.i157 = zext i8 %12 to i32
  %shl.i158 = shl nuw i32 %conv.i157, 24
  %arrayidx1.i159 = getelementptr inbounds i8, ptr %size_dt_strings, i64 1
  %13 = load i8, ptr %arrayidx1.i159, align 1, !tbaa !5
  %conv2.i160 = zext i8 %13 to i32
  %shl3.i161 = shl nuw nsw i32 %conv2.i160, 16
  %or.i162 = or i32 %shl3.i161, %shl.i158
  %arrayidx4.i163 = getelementptr inbounds i8, ptr %size_dt_strings, i64 2
  %14 = load i8, ptr %arrayidx4.i163, align 1, !tbaa !5
  %conv5.i164 = zext i8 %14 to i32
  %shl6.i165 = shl nuw nsw i32 %conv5.i164, 8
  %or7.i166 = or i32 %or.i162, %shl6.i165
  %arrayidx8.i167 = getelementptr inbounds i8, ptr %size_dt_strings, i64 3
  %15 = load i8, ptr %arrayidx8.i167, align 1, !tbaa !5
  %conv9.i168 = zext i8 %15 to i32
  %or10.i169 = or i32 %or7.i166, %conv9.i168
  %cmp33.not = icmp ugt i32 %or10.i169, %stroffset
  br i1 %cmp33.not, label %if.end36, label %fail

if.end36:                                         ; preds = %if.then31
  %sub39 = sub i32 %or10.i169, %stroffset
  %16 = tail call i32 @llvm.umin.i32(i32 %sub39, i32 %sub)
  br label %if.end73

if.then54:                                        ; preds = %if.end16
  %sub55 = sub nsw i32 0, %stroffset
  %cmp56 = icmp sgt i32 %stroffset, -1
  br i1 %cmp56, label %fail, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %if.then54
  %size_dt_strings59 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %17 = load i8, ptr %size_dt_strings59, align 1, !tbaa !5
  %conv.i209 = zext i8 %17 to i32
  %shl.i210 = shl nuw i32 %conv.i209, 24
  %arrayidx1.i211 = getelementptr inbounds i8, ptr %size_dt_strings59, i64 1
  %18 = load i8, ptr %arrayidx1.i211, align 1, !tbaa !5
  %conv2.i212 = zext i8 %18 to i32
  %shl3.i213 = shl nuw nsw i32 %conv2.i212, 16
  %or.i214 = or i32 %shl3.i213, %shl.i210
  %arrayidx4.i215 = getelementptr inbounds i8, ptr %size_dt_strings59, i64 2
  %19 = load i8, ptr %arrayidx4.i215, align 1, !tbaa !5
  %conv5.i216 = zext i8 %19 to i32
  %shl6.i217 = shl nuw nsw i32 %conv5.i216, 8
  %or7.i218 = or i32 %or.i214, %shl6.i217
  %arrayidx8.i219 = getelementptr inbounds i8, ptr %size_dt_strings59, i64 3
  %20 = load i8, ptr %arrayidx8.i219, align 1, !tbaa !5
  %conv9.i220 = zext i8 %20 to i32
  %or10.i221 = or i32 %or7.i218, %conv9.i220
  %cmp61 = icmp ult i32 %or10.i221, %sub55
  br i1 %cmp61, label %fail, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false58
  %21 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %sub55)
  br label %if.end73

if.end73:                                         ; preds = %cleanup, %if.end36, %if.end25
  %len.2.in = phi i32 [ %sub, %if.end25 ], [ %21, %cleanup ], [ %16, %if.end36 ]
  %len.2 = zext i32 %len.2.in to i64
  %idx.ext74 = zext i32 %add to i64
  %add.ptr75 = getelementptr inbounds i8, ptr %fdt, i64 %idx.ext74
  %call76 = tail call ptr @memchr(ptr noundef nonnull %add.ptr75, i32 noundef 0, i64 noundef %len.2) #10
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %fail, label %if.end79

if.end79:                                         ; preds = %if.end73
  %tobool80.not = icmp eq ptr %lenp, null
  br i1 %tobool80.not, label %cleanup87, label %if.then81

if.then81:                                        ; preds = %if.end79
  %sub.ptr.lhs.cast = ptrtoint ptr %call76 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr75 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv82 = trunc i64 %sub.ptr.sub to i32
  br label %cleanup87.sink.split

fail:                                             ; preds = %if.end73, %lor.lhs.false58, %if.then54, %if.then31, %if.then21, %if.end16, %if.end10, %entry
  %err.0 = phi i32 [ %call7, %entry ], [ -4, %if.end10 ], [ -4, %if.then21 ], [ -4, %if.then31 ], [ -8, %if.end73 ], [ -4, %lor.lhs.false58 ], [ -4, %if.then54 ], [ -13, %if.end16 ]
  %tobool84.not = icmp eq ptr %lenp, null
  br i1 %tobool84.not, label %cleanup87, label %cleanup87.sink.split

cleanup87.sink.split:                             ; preds = %fail, %if.then81
  %err.0.sink = phi i32 [ %conv82, %if.then81 ], [ %err.0, %fail ]
  %retval.0.ph = phi ptr [ %add.ptr75, %if.then81 ], [ null, %fail ]
  store i32 %err.0.sink, ptr %lenp, align 4, !tbaa !8
  br label %cleanup87

cleanup87:                                        ; preds = %cleanup87.sink.split, %fail, %if.end79
  %retval.0 = phi ptr [ %add.ptr75, %if.end79 ], [ null, %fail ], [ %retval.0.ph, %cleanup87.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

declare i32 @fdt_ro_probe_(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_string(ptr noundef %fdt, i32 noundef %stroffset) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @fdt_get_string(ptr noundef %fdt, i32 noundef %stroffset, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_find_max_phandle(ptr noundef %fdt, ptr noundef writeonly %phandle) local_unnamed_addr #0 {
entry:
  %call28 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef -1, ptr noundef null) #9
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then, label %cleanup

if.then:                                          ; preds = %cleanup, %entry
  %max.0.lcssa = phi i32 [ 0, %entry ], [ %0, %cleanup ]
  %call.lcssa = phi i32 [ %call28, %entry ], [ %call, %cleanup ]
  %cmp1 = icmp eq i32 %call.lcssa, -1
  br i1 %cmp1, label %while.end, label %cleanup10

cleanup:                                          ; preds = %cleanup, %entry
  %call31 = phi i32 [ %call, %cleanup ], [ %call28, %entry ]
  %max.030 = phi i32 [ %0, %cleanup ], [ 0, %entry ]
  %call4 = tail call i32 @fdt_get_phandle(ptr noundef %fdt, i32 noundef %call31)
  %0 = tail call i32 @llvm.umax.i32(i32 %call4, i32 %max.030)
  %call = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %call31, ptr noundef null) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %cleanup

while.end:                                        ; preds = %if.then
  %tobool.not = icmp eq ptr %phandle, null
  br i1 %tobool.not, label %cleanup10, label %if.then8

if.then8:                                         ; preds = %while.end
  store i32 %max.0.lcssa, ptr %phandle, align 4, !tbaa !8
  br label %cleanup10

cleanup10:                                        ; preds = %if.then8, %while.end, %if.then
  %retval.2 = phi i32 [ 0, %if.then8 ], [ 0, %while.end ], [ %call.lcssa, %if.then ]
  ret i32 %retval.2
}

declare i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_get_phandle(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %poffset.i.i17 = alloca i32, align 4
  %poffset.i.i = alloca i32, align 4
  %len = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull @.str, i32 noundef 7, ptr noundef nonnull %len, ptr noundef nonnull %poffset.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop.exit.thread, label %if.end.i.i

fdt_getprop.exit.thread:                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #9
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %0 = load i8, ptr %version.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end10.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %4 = load i32, ptr %poffset.i.i, align 4, !tbaa !8
  %5 = add i32 %4, 4
  %6 = and i32 %5, 7
  %tobool4.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i.i, label %if.end10.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 0, i32 1
  %7 = load i32, ptr %len.i.i, align 4, !tbaa !8
  %rev.i.i.i.i = call i32 @llvm.bswap.i32(i32 %7) #9
  %cmp7.i.i = icmp ugt i32 %rev.i.i.i.i, 7
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end10.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %add.ptr.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 1, i32 1
  br label %fdt_getprop.exit

if.end10.i.i:                                     ; preds = %land.lhs.true5.i.i, %land.lhs.true3.i.i, %if.end.i.i
  %data11.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 0, i32 3
  br label %fdt_getprop.exit

fdt_getprop.exit:                                 ; preds = %if.end10.i.i, %if.then9.i.i
  %retval.0.i.i = phi ptr [ %data11.i.i, %if.end10.i.i ], [ %add.ptr.i.i, %if.then9.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %8 = load i32, ptr %len, align 4
  %cmp.not = icmp eq i32 %8, 4
  br i1 %cmp.not, label %if.end9, label %if.then

if.then:                                          ; preds = %fdt_getprop.exit, %fdt_getprop.exit.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i17) #9
  %call.i.i20 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull @.str.1, i32 noundef 13, ptr noundef nonnull %len, ptr noundef nonnull %poffset.i.i17) #9
  %tobool.not.i.i21 = icmp eq ptr %call.i.i20, null
  br i1 %tobool.not.i.i21, label %fdt_getprop.exit49.thread, label %if.end.i.i37

fdt_getprop.exit49.thread:                        ; preds = %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i17) #9
  br label %cleanup

if.end.i.i37:                                     ; preds = %if.then
  %version.i.i22 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %9 = load i8, ptr %version.i.i22, align 1, !tbaa !5
  %conv.i.i.i23 = zext i8 %9 to i32
  %shl.i.i.i24 = shl nuw i32 %conv.i.i.i23, 24
  %arrayidx1.i.i.i25 = getelementptr inbounds i8, ptr %version.i.i22, i64 1
  %10 = load i8, ptr %arrayidx1.i.i.i25, align 1, !tbaa !5
  %conv2.i.i.i26 = zext i8 %10 to i32
  %shl3.i.i.i27 = shl nuw nsw i32 %conv2.i.i.i26, 16
  %or.i.i.i28 = or i32 %shl3.i.i.i27, %shl.i.i.i24
  %arrayidx4.i.i.i29 = getelementptr inbounds i8, ptr %version.i.i22, i64 2
  %11 = load i8, ptr %arrayidx4.i.i.i29, align 1, !tbaa !5
  %conv5.i.i.i30 = zext i8 %11 to i32
  %shl6.i.i.i31 = shl nuw nsw i32 %conv5.i.i.i30, 8
  %or7.i.i.i32 = or i32 %or.i.i.i28, %shl6.i.i.i31
  %arrayidx8.i.i.i33 = getelementptr inbounds i8, ptr %version.i.i22, i64 3
  %12 = load i8, ptr %arrayidx8.i.i.i33, align 1, !tbaa !5
  %conv9.i.i.i34 = zext i8 %12 to i32
  %or10.i.i.i35 = or i32 %or7.i.i.i32, %conv9.i.i.i34
  %cmp.i.i36 = icmp ult i32 %or10.i.i.i35, 16
  br i1 %cmp.i.i36, label %land.lhs.true3.i.i39, label %if.end10.i.i47

land.lhs.true3.i.i39:                             ; preds = %if.end.i.i37
  %13 = load i32, ptr %poffset.i.i17, align 4, !tbaa !8
  %14 = add i32 %13, 4
  %15 = and i32 %14, 7
  %tobool4.not.i.i38 = icmp eq i32 %15, 0
  br i1 %tobool4.not.i.i38, label %if.end10.i.i47, label %land.lhs.true5.i.i43

land.lhs.true5.i.i43:                             ; preds = %land.lhs.true3.i.i39
  %len.i.i40 = getelementptr inbounds %struct.fdt_property, ptr %call.i.i20, i64 0, i32 1
  %16 = load i32, ptr %len.i.i40, align 4, !tbaa !8
  %rev.i.i.i.i41 = call i32 @llvm.bswap.i32(i32 %16) #9
  %cmp7.i.i42 = icmp ugt i32 %rev.i.i.i.i41, 7
  br i1 %cmp7.i.i42, label %if.then9.i.i45, label %if.end10.i.i47

if.then9.i.i45:                                   ; preds = %land.lhs.true5.i.i43
  %add.ptr.i.i44 = getelementptr inbounds %struct.fdt_property, ptr %call.i.i20, i64 1, i32 1
  br label %fdt_getprop.exit49

if.end10.i.i47:                                   ; preds = %land.lhs.true5.i.i43, %land.lhs.true3.i.i39, %if.end.i.i37
  %data11.i.i46 = getelementptr inbounds %struct.fdt_property, ptr %call.i.i20, i64 0, i32 3
  br label %fdt_getprop.exit49

fdt_getprop.exit49:                               ; preds = %if.end10.i.i47, %if.then9.i.i45
  %retval.0.i.i48 = phi ptr [ %data11.i.i46, %if.end10.i.i47 ], [ %add.ptr.i.i44, %if.then9.i.i45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i17) #9
  %17 = load i32, ptr %len, align 4
  %cmp6.not = icmp eq i32 %17, 4
  br i1 %cmp6.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %fdt_getprop.exit49, %fdt_getprop.exit
  %php.0 = phi ptr [ %retval.0.i.i48, %fdt_getprop.exit49 ], [ %retval.0.i.i, %fdt_getprop.exit ]
  %18 = load i32, ptr %php.0, align 4, !tbaa !8
  %rev.i.i = call i32 @llvm.bswap.i32(i32 %18) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %fdt_getprop.exit49, %fdt_getprop.exit49.thread
  %retval.0 = phi i32 [ %rev.i.i, %if.end9 ], [ 0, %fdt_getprop.exit49 ], [ 0, %fdt_getprop.exit49.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_generate_phandle(ptr noundef %fdt, ptr noundef writeonly %phandle) local_unnamed_addr #0 {
entry:
  %call28.i = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef -1, ptr noundef null) #9
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.then.i.thread, label %cleanup.i

if.then.i:                                        ; preds = %cleanup.i
  %cmp1.i = icmp eq i32 %call.i, -1
  br i1 %cmp1.i, label %if.end, label %cleanup

if.then.i.thread:                                 ; preds = %entry
  %cmp1.i13 = icmp eq i32 %call28.i, -1
  br i1 %cmp1.i13, label %if.end3, label %cleanup

cleanup.i:                                        ; preds = %cleanup.i, %entry
  %call31.i = phi i32 [ %call.i, %cleanup.i ], [ %call28.i, %entry ]
  %max.030.i = phi i32 [ %0, %cleanup.i ], [ 0, %entry ]
  %call4.i = tail call i32 @fdt_get_phandle(ptr noundef %fdt, i32 noundef %call31.i) #9
  %0 = tail call i32 @llvm.umax.i32(i32 %call4.i, i32 %max.030.i) #9
  %call.i = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %call31.i, ptr noundef null) #9
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %cleanup.i

if.end:                                           ; preds = %if.then.i
  %cmp1 = icmp eq i32 %0, -2
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end, %if.then.i.thread
  %max.0.lcssa.i1418 = phi i32 [ %0, %if.end ], [ 0, %if.then.i.thread ]
  %tobool.not = icmp eq ptr %phandle, null
  br i1 %tobool.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end3
  %add = add i32 %max.0.lcssa.i1418, 1
  store i32 %add, ptr %phandle, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end3, %if.end, %if.then.i.thread, %if.then.i
  %retval.0 = phi i32 [ -17, %if.end ], [ 0, %if.then4 ], [ 0, %if.end3 ], [ %call28.i, %if.then.i.thread ], [ %call.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_get_mem_rsv(ptr noundef %fdt, i32 noundef %n, ptr nocapture noundef writeonly %address, ptr nocapture noundef writeonly %size) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup9, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %mul.i = shl i32 %n, 4
  %off_mem_rsvmap.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 4
  %0 = load i8, ptr %off_mem_rsvmap.i, align 1, !tbaa !5
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !5
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !5
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %add.i = add i32 %or10.i.i, %mul.i
  %cmp.i = icmp ult i32 %add.i, %or10.i.i
  br i1 %cmp.i, label %cleanup9, label %if.end.i

if.end.i:                                         ; preds = %cleanup.cont
  %conv7.i = zext i32 %add.i to i64
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %4 = load i8, ptr %totalsize.i, align 1, !tbaa !5
  %conv.i35.i = zext i8 %4 to i64
  %shl.i36.i = shl nuw nsw i64 %conv.i35.i, 24
  %arrayidx1.i37.i = getelementptr inbounds i8, ptr %totalsize.i, i64 1
  %5 = load i8, ptr %arrayidx1.i37.i, align 1, !tbaa !5
  %conv2.i38.i = zext i8 %5 to i64
  %shl3.i39.i = shl nuw nsw i64 %conv2.i38.i, 16
  %or.i40.i = or i64 %shl3.i39.i, %shl.i36.i
  %arrayidx4.i41.i = getelementptr inbounds i8, ptr %totalsize.i, i64 2
  %6 = load i8, ptr %arrayidx4.i41.i, align 1, !tbaa !5
  %conv5.i42.i = zext i8 %6 to i64
  %shl6.i43.i = shl nuw nsw i64 %conv5.i42.i, 8
  %or7.i44.i = or i64 %or.i40.i, %shl6.i43.i
  %arrayidx8.i45.i = getelementptr inbounds i8, ptr %totalsize.i, i64 3
  %7 = load i8, ptr %arrayidx8.i45.i, align 1, !tbaa !5
  %conv9.i46.i = zext i8 %7 to i64
  %or10.i47.i = or i64 %or7.i44.i, %conv9.i46.i
  %sub.i = add nsw i64 %or10.i47.i, -16
  %cmp10.i = icmp ult i64 %sub.i, %conv7.i
  br i1 %cmp10.i, label %cleanup9, label %if.end4

if.end4:                                          ; preds = %if.end.i
  %conv2.i.i.i = zext i8 %1 to i64
  %shl3.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 16
  %conv.i.i.i = zext i8 %0 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 24
  %or.i.i.i = or i64 %shl3.i.i.i, %shl.i.i.i
  %conv5.i.i.i = zext i8 %2 to i64
  %shl6.i.i.i = shl nuw nsw i64 %conv5.i.i.i, 8
  %or7.i.i.i = or i64 %or.i.i.i, %shl6.i.i.i
  %conv9.i.i.i = zext i8 %3 to i64
  %or10.i.i.i = or i64 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i.i
  %idx.ext1.i.i = sext i32 %n to i64
  %add.ptr2.i.i = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr.i.i, i64 %idx.ext1.i.i
  %8 = load i64, ptr %add.ptr2.i.i, align 8, !tbaa !10
  %or26.i.i = tail call i64 @llvm.bswap.i64(i64 %8) #9
  store i64 %or26.i.i, ptr %address, align 8, !tbaa !10
  %size7 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr2.i.i, i64 0, i32 1
  %9 = load i64, ptr %size7, align 8, !tbaa !10
  %or26.i.i13 = tail call i64 @llvm.bswap.i64(i64 %9) #9
  store i64 %or26.i.i13, ptr %size, align 8, !tbaa !10
  br label %cleanup9

cleanup9:                                         ; preds = %if.end4, %if.end.i, %cleanup.cont, %entry
  %retval.1 = phi i32 [ 0, %if.end4 ], [ %call, %entry ], [ -4, %cleanup.cont ], [ -4, %if.end.i ]
  ret i32 %retval.1
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @fdt_num_mem_rsv(ptr noundef readonly %fdt) local_unnamed_addr #4 {
if.end.i.preheader:
  %off_mem_rsvmap.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 4
  %0 = load i8, ptr %off_mem_rsvmap.i, align 1, !tbaa !5
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !5
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !5
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %4 = load i8, ptr %totalsize.i, align 1, !tbaa !5
  %conv.i35.i = zext i8 %4 to i64
  %shl.i36.i = shl nuw nsw i64 %conv.i35.i, 24
  %arrayidx1.i37.i = getelementptr inbounds i8, ptr %totalsize.i, i64 1
  %5 = load i8, ptr %arrayidx1.i37.i, align 1, !tbaa !5
  %conv2.i38.i = zext i8 %5 to i64
  %shl3.i39.i = shl nuw nsw i64 %conv2.i38.i, 16
  %or.i40.i = or i64 %shl3.i39.i, %shl.i36.i
  %arrayidx4.i41.i = getelementptr inbounds i8, ptr %totalsize.i, i64 2
  %6 = load i8, ptr %arrayidx4.i41.i, align 1, !tbaa !5
  %conv5.i42.i = zext i8 %6 to i64
  %shl6.i43.i = shl nuw nsw i64 %conv5.i42.i, 8
  %or7.i44.i = or i64 %or.i40.i, %shl6.i43.i
  %arrayidx8.i45.i = getelementptr inbounds i8, ptr %totalsize.i, i64 3
  %7 = load i8, ptr %arrayidx8.i45.i, align 1, !tbaa !5
  %conv9.i46.i = zext i8 %7 to i64
  %or10.i47.i = or i64 %or7.i44.i, %conv9.i46.i
  %sub.i = add nsw i64 %or10.i47.i, -16
  %conv2.i.i.i = zext i8 %1 to i64
  %shl3.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 16
  %conv.i.i.i = zext i8 %0 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 24
  %or.i.i.i = or i64 %shl3.i.i.i, %shl.i.i.i
  %conv5.i.i.i = zext i8 %2 to i64
  %shl6.i.i.i = shl nuw nsw i64 %conv5.i.i.i, 8
  %or7.i.i.i = or i64 %or.i.i.i, %shl6.i.i.i
  %conv9.i.i.i = zext i8 %3 to i64
  %or10.i.i.i = or i64 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc, %if.end.i.preheader
  %indvars.iv = phi i64 [ 0, %if.end.i.preheader ], [ %indvars.iv.next, %for.inc ]
  %add.i9 = phi i32 [ %or10.i.i, %if.end.i.preheader ], [ %add.i, %for.inc ]
  %conv7.i = zext i32 %add.i9 to i64
  %cmp10.i = icmp ult i64 %sub.i, %conv7.i
  br i1 %cmp10.i, label %cleanup.split, label %for.body

for.body:                                         ; preds = %if.end.i
  %add.ptr2.i.i = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr.i.i, i64 %indvars.iv
  %size = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr2.i.i, i64 0, i32 1
  %8 = load i64, ptr %size, align 8, !tbaa !10
  %cmp2 = icmp eq i64 %8, 0
  br i1 %cmp2, label %cleanup.split.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %9 = trunc i64 %indvars.iv.next to i32
  %mul.i = shl i32 %9, 4
  %add.i = add i32 %or10.i.i, %mul.i
  %cmp.i = icmp ult i32 %add.i, %or10.i.i
  br i1 %cmp.i, label %cleanup.split, label %if.end.i

cleanup.split.split.loop.exit:                    ; preds = %for.body
  %10 = trunc i64 %indvars.iv to i32
  br label %cleanup.split

cleanup.split:                                    ; preds = %cleanup.split.split.loop.exit, %for.inc, %if.end.i
  %retval.0.split = phi i32 [ %10, %cleanup.split.split.loop.exit ], [ -8, %for.inc ], [ -8, %if.end.i ]
  ret i32 %retval.0.split
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_subnode_offset_namelen(ptr noundef %fdt, i32 noundef %offset, ptr noundef readonly %name, i32 noundef %namelen) local_unnamed_addr #0 {
entry:
  %olen.i = alloca i32, align 4
  %depth = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth) #9
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup11, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  store i32 0, ptr %depth, align 4, !tbaa !8
  %cmp127 = icmp sgt i32 %offset, -1
  br i1 %cmp127, label %for.body.lr.ph, label %cleanup11

for.body.lr.ph:                                   ; preds = %cleanup.cont
  %conv.i = sext i32 %namelen to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %offset.addr.028 = phi i32 [ %offset, %for.body.lr.ph ], [ %call7, %for.inc ]
  %0 = phi i32 [ 0, %for.body.lr.ph ], [ %.pr, %for.inc ]
  %cmp3 = icmp eq i32 %0, 1
  br i1 %cmp3, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %olen.i) #9
  %call.i = call ptr @fdt_get_name(ptr noundef %fdt, i32 noundef %offset.addr.028, ptr noundef nonnull %olen.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  %1 = load i32, ptr %olen.i, align 4
  %cmp.i = icmp slt i32 %1, %namelen
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %fdt_nodename_eq_.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true
  %bcmp.i = call i32 @bcmp(ptr nonnull %call.i, ptr %name, i64 %conv.i) #9
  %cmp2.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp2.not.i, label %if.end5.i, label %fdt_nodename_eq_.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr inbounds i8, ptr %call.i, i64 %conv.i
  %2 = load i8, ptr %arrayidx.i, align 1, !tbaa !5
  %cmp7.i = icmp eq i8 %2, 0
  br i1 %cmp7.i, label %fdt_nodename_eq_.exit.thread20, label %fdt_nodename_eq_.exit

fdt_nodename_eq_.exit.thread20:                   ; preds = %if.end5.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #9
  br label %cleanup11

fdt_nodename_eq_.exit.thread:                     ; preds = %if.end.i, %land.lhs.true
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #9
  br label %for.inc

fdt_nodename_eq_.exit:                            ; preds = %if.end5.i
  %call11.i = call ptr @memchr(ptr noundef %name, i32 noundef 64, i64 noundef %conv.i) #10
  %tobool12.not.i = icmp ne ptr %call11.i, null
  %cmp16.i = icmp ne i8 %2, 64
  %or.cond29.i = select i1 %tobool12.not.i, i1 true, i1 %cmp16.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #9
  br i1 %or.cond29.i, label %for.inc, label %cleanup11

for.inc:                                          ; preds = %fdt_nodename_eq_.exit, %fdt_nodename_eq_.exit.thread, %for.body
  %call7 = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.addr.028, ptr noundef nonnull %depth) #9
  %.pr = load i32, ptr %depth, align 4
  %cmp1 = icmp sgt i32 %call7, -1
  %cmp2 = icmp sgt i32 %.pr, -1
  %3 = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %3, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc
  %phi.cmp = icmp sgt i32 %.pr, -1
  %phi.sel = select i1 %phi.cmp, i32 %call7, i32 -1
  br label %cleanup11

cleanup11:                                        ; preds = %for.end.loopexit, %fdt_nodename_eq_.exit, %fdt_nodename_eq_.exit.thread20, %cleanup.cont, %entry
  %retval.1 = phi i32 [ %call, %entry ], [ %offset.addr.028, %fdt_nodename_eq_.exit.thread20 ], [ %offset, %cleanup.cont ], [ %phi.sel, %for.end.loopexit ], [ %offset.addr.028, %fdt_nodename_eq_.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_subnode_offset(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #10
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @fdt_subnode_offset_namelen(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef %path, i32 noundef %namelen) local_unnamed_addr #0 {
entry:
  %poffset.i = alloca i32, align 4
  %idx.ext = sext i32 %namelen to i64
  %add.ptr = getelementptr inbounds i8, ptr %path, i64 %idx.ext
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup52, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %0 = load i8, ptr %path, align 1, !tbaa !5
  %cmp1.not = icmp eq i8 %0, 47
  br i1 %cmp1.not, label %if.end19, label %if.then3

if.then3:                                         ; preds = %cleanup.cont
  %call4 = tail call ptr @memchr(ptr noundef nonnull %path, i32 noundef 47, i64 noundef %idx.ext) #10
  %tobool.not = icmp eq ptr %call4, null
  %spec.select = select i1 %tobool.not, ptr %add.ptr, ptr %call4
  %call1.i = tail call i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef nonnull @.str.2, i32 noundef 8) #9
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %cleanup52, label %if.end.i

if.end.i:                                         ; preds = %if.then3
  %sub.ptr.lhs.cast7 = ptrtoint ptr %spec.select to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %path to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast
  %conv10 = trunc i64 %sub.ptr.sub9 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i) #9
  %call.i93 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %call1.i, ptr noundef nonnull %path, i32 noundef %conv10, ptr noundef null, ptr noundef nonnull %poffset.i) #9
  %tobool.not.i = icmp eq ptr %call.i93, null
  br i1 %tobool.not.i, label %fdt_get_alias_namelen.exit, label %if.end.i95

if.end.i95:                                       ; preds = %if.end.i
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %1 = load i8, ptr %version.i, align 1, !tbaa !5
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %version.i, i64 1
  %2 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !5
  %conv2.i.i = zext i8 %2 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %version.i, i64 2
  %3 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !5
  %conv5.i.i = zext i8 %3 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %version.i, i64 3
  %4 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %conv9.i.i = zext i8 %4 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %cmp.i94 = icmp ult i32 %or10.i.i, 16
  br i1 %cmp.i94, label %land.lhs.true3.i, label %if.end10.i

land.lhs.true3.i:                                 ; preds = %if.end.i95
  %5 = load i32, ptr %poffset.i, align 4, !tbaa !8
  %6 = add i32 %5, 4
  %7 = and i32 %6, 7
  %tobool4.not.i = icmp eq i32 %7, 0
  br i1 %tobool4.not.i, label %if.end10.i, label %land.lhs.true5.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %call.i93, i64 0, i32 1
  %8 = load i32, ptr %len.i, align 4, !tbaa !8
  %rev.i.i.i = call i32 @llvm.bswap.i32(i32 %8) #9
  %cmp7.i = icmp ugt i32 %rev.i.i.i, 7
  br i1 %cmp7.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  %add.ptr.i = getelementptr inbounds %struct.fdt_property, ptr %call.i93, i64 1, i32 1
  br label %cleanup16

if.end10.i:                                       ; preds = %land.lhs.true5.i, %land.lhs.true3.i, %if.end.i95
  %data11.i = getelementptr inbounds %struct.fdt_property, ptr %call.i93, i64 0, i32 3
  br label %cleanup16

fdt_get_alias_namelen.exit:                       ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i) #9
  br label %cleanup52

cleanup16:                                        ; preds = %if.end10.i, %if.then9.i
  %retval.0.i96.ph = phi ptr [ %add.ptr.i, %if.then9.i ], [ %data11.i, %if.end10.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i) #9
  %call.i91 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %retval.0.i96.ph) #10
  %conv.i = trunc i64 %call.i91 to i32
  %call1.i92 = call i32 @fdt_path_offset_namelen(ptr noundef nonnull %fdt, ptr noundef nonnull %retval.0.i96.ph, i32 noundef %conv.i) #9
  br label %if.end19

if.end19:                                         ; preds = %cleanup16, %cleanup.cont
  %p.1 = phi ptr [ %spec.select, %cleanup16 ], [ %path, %cleanup.cont ]
  %offset.1 = phi i32 [ %call1.i92, %cleanup16 ], [ 0, %cleanup.cont ]
  %sub.ptr.lhs.cast32 = ptrtoint ptr %add.ptr to i64
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end19
  %p.2 = phi ptr [ %p.1, %if.end19 ], [ %spec.select90, %while.end ]
  %offset.2 = phi i32 [ %offset.1, %if.end19 ], [ %call43, %while.end ]
  %cmp20 = icmp ult ptr %p.2, %add.ptr
  br i1 %cmp20, label %while.cond23, label %cleanup52

while.cond23:                                     ; preds = %while.body27, %while.cond
  %p.3 = phi ptr [ %incdec.ptr, %while.body27 ], [ %p.2, %while.cond ]
  %9 = load i8, ptr %p.3, align 1, !tbaa !5
  %cmp25 = icmp eq i8 %9, 47
  br i1 %cmp25, label %while.body27, label %while.end

while.body27:                                     ; preds = %while.cond23
  %incdec.ptr = getelementptr inbounds i8, ptr %p.3, i64 1
  %cmp28 = icmp eq ptr %incdec.ptr, %add.ptr
  br i1 %cmp28, label %cleanup52, label %while.cond23

while.end:                                        ; preds = %while.cond23
  %sub.ptr.rhs.cast33 = ptrtoint ptr %p.3 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %call35 = call ptr @memchr(ptr noundef nonnull %p.3, i32 noundef 47, i64 noundef %sub.ptr.sub34) #10
  %tobool36.not = icmp eq ptr %call35, null
  %spec.select90 = select i1 %tobool36.not, ptr %add.ptr, ptr %call35
  %sub.ptr.lhs.cast39 = ptrtoint ptr %spec.select90 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast33
  %conv42 = trunc i64 %sub.ptr.sub41 to i32
  %call43 = call i32 @fdt_subnode_offset_namelen(ptr noundef %fdt, i32 noundef %offset.2, ptr noundef nonnull %p.3, i32 noundef %conv42)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %cleanup52, label %while.cond

cleanup52:                                        ; preds = %while.end, %while.body27, %while.cond, %fdt_get_alias_namelen.exit, %if.then3, %entry
  %retval.5 = phi i32 [ %call, %entry ], [ -5, %fdt_get_alias_namelen.exit ], [ -5, %if.then3 ], [ %offset.2, %while.body27 ], [ %offset.2, %while.cond ], [ %call43, %while.end ]
  ret i32 %retval.5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_get_alias_namelen(ptr noundef %fdt, ptr nocapture noundef readonly %name, i32 noundef %namelen) local_unnamed_addr #0 {
entry:
  %poffset.i = alloca i32, align 4
  %call1.i = tail call i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef nonnull @.str.2, i32 noundef 8) #9
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i) #9
  %call.i4 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %call1.i, ptr noundef %name, i32 noundef %namelen, ptr noundef null, ptr noundef nonnull %poffset.i) #9
  %tobool.not.i = icmp eq ptr %call.i4, null
  br i1 %tobool.not.i, label %fdt_getprop_namelen.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %0 = load i8, ptr %version.i, align 1, !tbaa !5
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %version.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !5
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %version.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !5
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %version.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %cmp.i = icmp ult i32 %or10.i.i, 16
  br i1 %cmp.i, label %land.lhs.true3.i, label %if.end10.i

land.lhs.true3.i:                                 ; preds = %if.end.i
  %4 = load i32, ptr %poffset.i, align 4, !tbaa !8
  %5 = add i32 %4, 4
  %6 = and i32 %5, 7
  %tobool4.not.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i, label %if.end10.i, label %land.lhs.true5.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %call.i4, i64 0, i32 1
  %7 = load i32, ptr %len.i, align 4, !tbaa !8
  %rev.i.i.i = call i32 @llvm.bswap.i32(i32 %7) #9
  %cmp7.i = icmp ugt i32 %rev.i.i.i, 7
  br i1 %cmp7.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  %add.ptr.i = getelementptr inbounds %struct.fdt_property, ptr %call.i4, i64 1, i32 1
  br label %fdt_getprop_namelen.exit

if.end10.i:                                       ; preds = %land.lhs.true5.i, %land.lhs.true3.i, %if.end.i
  %data11.i = getelementptr inbounds %struct.fdt_property, ptr %call.i4, i64 0, i32 3
  br label %fdt_getprop_namelen.exit

fdt_getprop_namelen.exit:                         ; preds = %if.end10.i, %if.then9.i, %if.end
  %retval.0.i = phi ptr [ %data11.i, %if.end10.i ], [ %add.ptr.i, %if.then9.i ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fdt_getprop_namelen.exit, %entry
  %retval.0 = phi ptr [ %retval.0.i, %fdt_getprop_namelen.exit ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_path_offset(ptr noundef %fdt, ptr noundef %path) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %path) #10
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef %path, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_get_name(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %0 = load i8, ptr %off_dt_struct.i, align 1, !tbaa !5
  %conv.i.i = zext i8 %0 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !5
  %conv2.i.i = zext i8 %1 to i64
  %shl3.i.i = shl nuw nsw i64 %conv2.i.i, 16
  %or.i.i = or i64 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !5
  %conv5.i.i = zext i8 %2 to i64
  %shl6.i.i = shl nuw nsw i64 %conv5.i.i, 8
  %or7.i.i = or i64 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %conv9.i.i = zext i8 %3 to i64
  %or10.i.i = or i64 %or7.i.i, %conv9.i.i
  %add.ptr.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i
  %idx.ext1.i = sext i32 %nodeoffset to i64
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext1.i
  %call1 = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %fail, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @fdt_check_node_offset_(ptr noundef nonnull %fdt, i32 noundef %nodeoffset) #9
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %fail, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.fdt_node_header, ptr %add.ptr2.i, i64 0, i32 1
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %4 = load i8, ptr %version, align 1, !tbaa !5
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %version, i64 1
  %5 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %5 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %version, i64 2
  %6 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %6 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %version, i64 3
  %7 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %7 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp6 = icmp ult i32 %or10.i, 16
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end
  %call8 = tail call ptr @strrchr(ptr noundef nonnull %name, i32 noundef 47) #10
  %cmp9 = icmp eq ptr %call8, null
  %add.ptr = getelementptr inbounds i8, ptr %call8, i64 1
  br i1 %cmp9, label %fail, label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end
  %nameptr.1 = phi ptr [ %add.ptr, %if.then7 ], [ %name, %if.end ]
  %tobool.not = icmp eq ptr %len, null
  br i1 %tobool.not, label %cleanup19, label %if.then13

if.then13:                                        ; preds = %if.end12
  %call14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %nameptr.1) #10
  %conv = trunc i64 %call14 to i32
  br label %cleanup19.sink.split

fail:                                             ; preds = %if.then7, %lor.lhs.false, %entry
  %err.1 = phi i32 [ %call1, %entry ], [ %call2, %lor.lhs.false ], [ -11, %if.then7 ]
  %tobool16.not = icmp eq ptr %len, null
  br i1 %tobool16.not, label %cleanup19, label %cleanup19.sink.split

cleanup19.sink.split:                             ; preds = %fail, %if.then13
  %err.1.sink = phi i32 [ %conv, %if.then13 ], [ %err.1, %fail ]
  %retval.0.ph = phi ptr [ %nameptr.1, %if.then13 ], [ null, %fail ]
  store i32 %err.1.sink, ptr %len, align 4, !tbaa !8
  br label %cleanup19

cleanup19:                                        ; preds = %cleanup19.sink.split, %fail, %if.end12
  %retval.0 = phi ptr [ %nameptr.1, %if.end12 ], [ null, %fail ], [ %retval.0.ph, %cleanup19.sink.split ]
  ret ptr %retval.0
}

declare i32 @fdt_check_node_offset_(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_first_property_offset(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %nextoffset.i = alloca i32, align 4
  %call = tail call i32 @fdt_check_node_offset_(ptr noundef %fdt, i32 noundef %nodeoffset) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i) #9
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i, %if.end
  %offset.addr.0.i = phi i32 [ %call, %if.end ], [ %1, %sw.epilog.i ]
  %call.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0.i, ptr noundef nonnull %nextoffset.i) #9
  switch i32 %call.i, label %sw.epilog.i [
    i32 9, label %sw.bb.i
    i32 3, label %nextprop_.exit
  ]

sw.bb.i:                                          ; preds = %do.body.i
  %0 = load i32, ptr %nextoffset.i, align 4, !tbaa !8
  %cmp.i = icmp sgt i32 %0, -1
  %..i = select i1 %cmp.i, i32 -11, i32 %0
  br label %nextprop_.exit

sw.epilog.i:                                      ; preds = %do.body.i
  %1 = load i32, ptr %nextoffset.i, align 4, !tbaa !8
  %cmp2.i = icmp eq i32 %call.i, 4
  br i1 %cmp2.i, label %do.body.i, label %nextprop_.exit

nextprop_.exit:                                   ; preds = %sw.epilog.i, %sw.bb.i, %do.body.i
  %retval.0.i = phi i32 [ %..i, %sw.bb.i ], [ %offset.addr.0.i, %do.body.i ], [ -1, %sw.epilog.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #9
  br label %cleanup

cleanup:                                          ; preds = %nextprop_.exit, %entry
  %retval.0 = phi i32 [ %retval.0.i, %nextprop_.exit ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_next_property_offset(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %nextoffset.i = alloca i32, align 4
  %call = tail call i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i) #9
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i, %if.end
  %offset.addr.0.i = phi i32 [ %call, %if.end ], [ %1, %sw.epilog.i ]
  %call.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0.i, ptr noundef nonnull %nextoffset.i) #9
  switch i32 %call.i, label %sw.epilog.i [
    i32 9, label %sw.bb.i
    i32 3, label %nextprop_.exit
  ]

sw.bb.i:                                          ; preds = %do.body.i
  %0 = load i32, ptr %nextoffset.i, align 4, !tbaa !8
  %cmp.i = icmp sgt i32 %0, -1
  %..i = select i1 %cmp.i, i32 -11, i32 %0
  br label %nextprop_.exit

sw.epilog.i:                                      ; preds = %do.body.i
  %1 = load i32, ptr %nextoffset.i, align 4, !tbaa !8
  %cmp2.i = icmp eq i32 %call.i, 4
  br i1 %cmp2.i, label %do.body.i, label %nextprop_.exit

nextprop_.exit:                                   ; preds = %sw.epilog.i, %sw.bb.i, %do.body.i
  %retval.0.i = phi i32 [ %..i, %sw.bb.i ], [ %offset.addr.0.i, %do.body.i ], [ -1, %sw.epilog.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #9
  br label %return

return:                                           ; preds = %nextprop_.exit, %entry
  %retval.0 = phi i32 [ %retval.0.i, %nextprop_.exit ], [ %call, %entry ]
  ret i32 %retval.0
}

declare i32 @fdt_check_prop_offset_(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_get_property_by_offset(ptr noundef %fdt, i32 noundef %offset, ptr noundef writeonly %lenp) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %0 = load i8, ptr %version, align 1, !tbaa !5
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %version, i64 1
  %1 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %version, i64 2
  %2 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %version, i64 3
  %3 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp = icmp ult i32 %or10.i, 16
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %lenp, null
  br i1 %tobool.not, label %return, label %return.sink.split

if.end3:                                          ; preds = %entry
  %call1.i = tail call i32 @fdt_check_prop_offset_(ptr noundef nonnull %fdt, i32 noundef %offset) #9
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %if.end3
  %tobool.not.i = icmp eq ptr %lenp, null
  br i1 %tobool.not.i, label %return, label %return.sink.split

if.end3.i:                                        ; preds = %if.end3
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %4 = load i8, ptr %off_dt_struct.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %4 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 1
  %5 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %5 to i64
  %shl3.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 16
  %or.i.i.i = or i64 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 2
  %6 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %6 to i64
  %shl6.i.i.i = shl nuw nsw i64 %conv5.i.i.i, 8
  %or7.i.i.i = or i64 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 3
  %7 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %7 to i64
  %or10.i.i.i = or i64 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i.i
  %idx.ext1.i.i = sext i32 %offset to i64
  %add.ptr2.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 %idx.ext1.i.i
  %tobool5.not.i = icmp eq ptr %lenp, null
  br i1 %tobool5.not.i, label %return, label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %add.ptr2.i.i, i64 0, i32 1
  %8 = load i32, ptr %len.i, align 4, !tbaa !8
  %rev.i.i.i = tail call i32 @llvm.bswap.i32(i32 %8) #9
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then6.i, %if.then.i, %if.then
  %rev.i.i.sink.i.sink = phi i32 [ -10, %if.then ], [ %rev.i.i.i, %if.then6.i ], [ %call1.i, %if.then.i ]
  %retval.0.ph = phi ptr [ null, %if.then ], [ %add.ptr2.i.i, %if.then6.i ], [ null, %if.then.i ]
  store i32 %rev.i.i.sink.i.sink, ptr %lenp, align 4, !tbaa !8
  br label %return

return:                                           ; preds = %return.sink.split, %if.end3.i, %if.then.i, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then.i ], [ %add.ptr2.i.i, %if.end3.i ], [ %retval.0.ph, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_get_property_namelen(ptr noundef %fdt, i32 noundef %offset, ptr nocapture noundef readonly %name, i32 noundef %namelen, ptr noundef %lenp) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %0 = load i8, ptr %version, align 1, !tbaa !5
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %version, i64 1
  %1 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %version, i64 2
  %2 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %version, i64 3
  %3 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp = icmp ult i32 %or10.i, 16
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %lenp, null
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 -10, ptr %lenp, align 4, !tbaa !8
  br label %return

if.end3:                                          ; preds = %entry
  %call4 = tail call fastcc ptr @fdt_get_property_namelen_(ptr noundef nonnull %fdt, i32 noundef %offset, ptr noundef %name, i32 noundef %namelen, ptr noundef %lenp, ptr noundef null)
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi ptr [ %call4, %if.end3 ], [ null, %if.then2 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %offset, ptr nocapture noundef readonly %name, i32 noundef %namelen, ptr noundef writeonly %lenp, ptr noundef writeonly %poffset) unnamed_addr #0 {
entry:
  %nextoffset.i.i33 = alloca i32, align 4
  %slen.i = alloca i32, align 4
  %nextoffset.i.i = alloca i32, align 4
  %call.i = tail call i32 @fdt_check_node_offset_(ptr noundef %fdt, i32 noundef %offset) #9
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.end, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i.i) #9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %sw.epilog.i.i, %if.end.i
  %offset.addr.0.i.i = phi i32 [ %call.i, %if.end.i ], [ %1, %sw.epilog.i.i ]
  %call.i.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0.i.i, ptr noundef nonnull %nextoffset.i.i) #9
  switch i32 %call.i.i, label %sw.epilog.i.i [
    i32 9, label %sw.bb.i.i
    i32 3, label %fdt_first_property_offset.exit
  ]

sw.bb.i.i:                                        ; preds = %do.body.i.i
  %0 = load i32, ptr %nextoffset.i.i, align 4, !tbaa !8
  %cmp.i.i = icmp sgt i32 %0, -1
  %spec.select = select i1 %cmp.i.i, i32 -11, i32 %0
  br label %fdt_first_property_offset.exit.thread89

sw.epilog.i.i:                                    ; preds = %do.body.i.i
  %1 = load i32, ptr %nextoffset.i.i, align 4, !tbaa !8
  %cmp2.i.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp2.i.i, label %do.body.i.i, label %fdt_first_property_offset.exit.thread89

fdt_first_property_offset.exit.thread89:          ; preds = %sw.epilog.i.i, %sw.bb.i.i
  %retval.0.i.i.ph = phi i32 [ %spec.select, %sw.bb.i.i ], [ -1, %sw.epilog.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i.i) #9
  br label %for.end

fdt_first_property_offset.exit:                   ; preds = %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i.i) #9
  %cmp79 = icmp sgt i32 %offset.addr.0.i.i, -1
  br i1 %cmp79, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %fdt_first_property_offset.exit
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 1
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 2
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 3
  %tobool5.not.i = icmp eq ptr %lenp, null
  %conv.i = sext i32 %namelen to i64
  br label %for.body

for.body:                                         ; preds = %fdt_next_property_offset.exit, %for.body.lr.ph
  %offset.addr.080 = phi i32 [ %offset.addr.0.i.i, %for.body.lr.ph ], [ %offset.addr.0.i.i37, %fdt_next_property_offset.exit ]
  %call1.i = call i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset.addr.080) #9
  %cmp.i28 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i28, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %for.body
  br i1 %tobool5.not.i, label %return, label %if.then13

if.end3.i:                                        ; preds = %for.body
  %2 = load i8, ptr %off_dt_struct.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %2 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 24
  %3 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %3 to i64
  %shl3.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 16
  %or.i.i.i = or i64 %shl3.i.i.i, %shl.i.i.i
  %4 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %4 to i64
  %shl6.i.i.i = shl nuw nsw i64 %conv5.i.i.i, 8
  %or7.i.i.i = or i64 %or.i.i.i, %shl6.i.i.i
  %5 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %5 to i64
  %or10.i.i.i = or i64 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i.i
  %idx.ext1.i.i75 = zext i32 %offset.addr.080 to i64
  %add.ptr2.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 %idx.ext1.i.i75
  br i1 %tobool5.not.i, label %if.end, label %fdt_get_property_by_offset_.exit

fdt_get_property_by_offset_.exit:                 ; preds = %if.end3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %add.ptr2.i.i, i64 0, i32 1
  %6 = load i32, ptr %len.i, align 4, !tbaa !8
  %rev.i.i.i = call i32 @llvm.bswap.i32(i32 %6) #9
  store i32 %rev.i.i.i, ptr %lenp, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %fdt_get_property_by_offset_.exit, %if.end3.i
  %nameoff = getelementptr inbounds %struct.fdt_property, ptr %add.ptr2.i.i, i64 0, i32 2
  %7 = load i32, ptr %nameoff, align 4, !tbaa !8
  %rev.i.i = call i32 @llvm.bswap.i32(i32 %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slen.i) #9
  %call.i30 = call ptr @fdt_get_string(ptr noundef nonnull %fdt, i32 noundef %rev.i.i, ptr noundef nonnull %slen.i) #9
  %tobool.not.i31 = icmp ne ptr %call.i30, null
  %8 = load i32, ptr %slen.i, align 4
  %cmp.i32 = icmp eq i32 %8, %namelen
  %or.cond.i = select i1 %tobool.not.i31, i1 %cmp.i32, i1 false
  br i1 %or.cond.i, label %fdt_string_eq_.exit, label %fdt_string_eq_.exit.thread

fdt_string_eq_.exit.thread:                       ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slen.i) #9
  br label %for.inc

fdt_string_eq_.exit:                              ; preds = %if.end
  %bcmp.i = call i32 @bcmp(ptr nonnull %call.i30, ptr %name, i64 %conv.i) #9
  %cmp2.i.not = icmp eq i32 %bcmp.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slen.i) #9
  br i1 %cmp2.i.not, label %if.then6, label %for.inc

if.then6:                                         ; preds = %fdt_string_eq_.exit
  %tobool7.not = icmp eq ptr %poffset, null
  br i1 %tobool7.not, label %return, label %if.then8

if.then8:                                         ; preds = %if.then6
  store i32 %offset.addr.080, ptr %poffset, align 4, !tbaa !8
  br label %return

for.inc:                                          ; preds = %fdt_string_eq_.exit, %fdt_string_eq_.exit.thread
  %call.i34 = call i32 @fdt_check_prop_offset_(ptr noundef nonnull %fdt, i32 noundef %offset.addr.080) #9
  %cmp.i35 = icmp slt i32 %call.i34, 0
  br i1 %cmp.i35, label %for.end, label %if.end.i36

if.end.i36:                                       ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i.i33) #9
  br label %do.body.i.i39

do.body.i.i39:                                    ; preds = %sw.epilog.i.i44, %if.end.i36
  %offset.addr.0.i.i37 = phi i32 [ %call.i34, %if.end.i36 ], [ %10, %sw.epilog.i.i44 ]
  %call.i.i38 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0.i.i37, ptr noundef nonnull %nextoffset.i.i33) #9
  switch i32 %call.i.i38, label %sw.epilog.i.i44 [
    i32 9, label %sw.bb.i.i42
    i32 3, label %fdt_next_property_offset.exit
  ]

sw.bb.i.i42:                                      ; preds = %do.body.i.i39
  %9 = load i32, ptr %nextoffset.i.i33, align 4, !tbaa !8
  %cmp.i.i40 = icmp sgt i32 %9, -1
  %spec.select110 = select i1 %cmp.i.i40, i32 -11, i32 %9
  br label %fdt_next_property_offset.exit.thread96

sw.epilog.i.i44:                                  ; preds = %do.body.i.i39
  %10 = load i32, ptr %nextoffset.i.i33, align 4, !tbaa !8
  %cmp2.i.i43 = icmp eq i32 %call.i.i38, 4
  br i1 %cmp2.i.i43, label %do.body.i.i39, label %fdt_next_property_offset.exit.thread96

fdt_next_property_offset.exit.thread96:           ; preds = %sw.epilog.i.i44, %sw.bb.i.i42
  %retval.0.i.i45.ph = phi i32 [ %spec.select110, %sw.bb.i.i42 ], [ -1, %sw.epilog.i.i44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i.i33) #9
  br label %for.end

fdt_next_property_offset.exit:                    ; preds = %do.body.i.i39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i.i33) #9
  %cmp = icmp sgt i32 %offset.addr.0.i.i37, -1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %fdt_next_property_offset.exit, %fdt_next_property_offset.exit.thread96, %for.inc, %fdt_first_property_offset.exit, %fdt_first_property_offset.exit.thread89, %entry
  %offset.addr.0.lcssa = phi i32 [ %offset.addr.0.i.i, %fdt_first_property_offset.exit ], [ %retval.0.i.i.ph, %fdt_first_property_offset.exit.thread89 ], [ %retval.0.i.i45.ph, %fdt_next_property_offset.exit.thread96 ], [ %call.i, %entry ], [ %call.i34, %for.inc ], [ %offset.addr.0.i.i37, %fdt_next_property_offset.exit ]
  %tobool12.not = icmp eq ptr %lenp, null
  br i1 %tobool12.not, label %return, label %if.then13

if.then13:                                        ; preds = %for.end, %if.then.i
  %offset.addr.274 = phi i32 [ %offset.addr.0.lcssa, %for.end ], [ -13, %if.then.i ]
  store i32 %offset.addr.274, ptr %lenp, align 4, !tbaa !8
  br label %return

return:                                           ; preds = %if.then13, %for.end, %if.then8, %if.then6, %if.then.i
  %retval.2 = phi ptr [ null, %if.then13 ], [ null, %for.end ], [ %add.ptr2.i.i, %if.then8 ], [ %add.ptr2.i.i, %if.then6 ], [ null, %if.then.i ]
  ret ptr %retval.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_get_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %name, ptr noundef %lenp) local_unnamed_addr #0 {
entry:
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %0 = load i8, ptr %version.i, align 1, !tbaa !5
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %version.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !5
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %version.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !5
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %version.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %cmp.i = icmp ult i32 %or10.i.i, 16
  br i1 %cmp.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %entry
  %tobool.not.i = icmp eq ptr %lenp, null
  br i1 %tobool.not.i, label %fdt_get_property_namelen.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  store i32 -10, ptr %lenp, align 4, !tbaa !8
  br label %fdt_get_property_namelen.exit

if.end3.i:                                        ; preds = %entry
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #10
  %conv = trunc i64 %call to i32
  %call4.i = tail call fastcc ptr @fdt_get_property_namelen_(ptr noundef nonnull %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %conv, ptr noundef %lenp, ptr noundef null) #9
  br label %fdt_get_property_namelen.exit

fdt_get_property_namelen.exit:                    ; preds = %if.end3.i, %if.then2.i, %if.then.i
  %retval.0.i = phi ptr [ %call4.i, %if.end3.i ], [ null, %if.then2.i ], [ null, %if.then.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_getprop_namelen(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %name, i32 noundef %namelen, ptr noundef %lenp) local_unnamed_addr #0 {
entry:
  %poffset = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset) #9
  %call = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %namelen, ptr noundef %lenp, ptr noundef nonnull %poffset)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %0 = load i8, ptr %version, align 1, !tbaa !5
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %version, i64 1
  %1 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %version, i64 2
  %2 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %version, i64 3
  %3 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp = icmp ult i32 %or10.i, 16
  br i1 %cmp, label %land.lhs.true3, label %if.end10

land.lhs.true3:                                   ; preds = %if.end
  %4 = load i32, ptr %poffset, align 4, !tbaa !8
  %5 = add i32 %4, 4
  %6 = and i32 %5, 7
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.end10, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %len = getelementptr inbounds %struct.fdt_property, ptr %call, i64 0, i32 1
  %7 = load i32, ptr %len, align 4, !tbaa !8
  %rev.i.i = call i32 @llvm.bswap.i32(i32 %7) #9
  %cmp7 = icmp ugt i32 %rev.i.i, 7
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true5
  %add.ptr = getelementptr inbounds %struct.fdt_property, ptr %call, i64 1, i32 1
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true5, %land.lhs.true3, %if.end
  %data11 = getelementptr inbounds %struct.fdt_property, ptr %call, i64 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %entry
  %retval.0 = phi ptr [ %data11, %if.end10 ], [ %add.ptr, %if.then9 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_getprop_by_offset(ptr noundef %fdt, i32 noundef %offset, ptr noundef writeonly %namep, ptr noundef writeonly %lenp) local_unnamed_addr #0 {
entry:
  %namelen = alloca i32, align 4
  %call1.i = tail call i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset) #9
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %entry
  %tobool.not.i = icmp eq ptr %lenp, null
  br i1 %tobool.not.i, label %cleanup31, label %fdt_get_property_by_offset_.exit.thread56

fdt_get_property_by_offset_.exit.thread56:        ; preds = %if.then.i
  store i32 %call1.i, ptr %lenp, align 4, !tbaa !8
  br label %cleanup31

if.end3.i:                                        ; preds = %entry
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %0 = load i8, ptr %off_dt_struct.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %0 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %1 to i64
  %shl3.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 16
  %or.i.i.i = or i64 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %2 to i64
  %shl6.i.i.i = shl nuw nsw i64 %conv5.i.i.i, 8
  %or7.i.i.i = or i64 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %3 to i64
  %or10.i.i.i = or i64 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i.i
  %idx.ext1.i.i = sext i32 %offset to i64
  %add.ptr2.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 %idx.ext1.i.i
  %tobool5.not.i = icmp eq ptr %lenp, null
  br i1 %tobool5.not.i, label %if.end, label %fdt_get_property_by_offset_.exit

fdt_get_property_by_offset_.exit:                 ; preds = %if.end3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %add.ptr2.i.i, i64 0, i32 1
  %4 = load i32, ptr %len.i, align 4, !tbaa !8
  %rev.i.i.i = tail call i32 @llvm.bswap.i32(i32 %4) #9
  store i32 %rev.i.i.i, ptr %lenp, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %fdt_get_property_by_offset_.exit, %if.end3.i
  %tobool1.not = icmp eq ptr %namep, null
  br i1 %tobool1.not, label %if.end18, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %namelen) #9
  %nameoff = getelementptr inbounds %struct.fdt_property, ptr %add.ptr2.i.i, i64 0, i32 2
  %5 = load i32, ptr %nameoff, align 4, !tbaa !8
  %rev.i.i = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %call6 = call ptr @fdt_get_string(ptr noundef nonnull %fdt, i32 noundef %rev.i.i, ptr noundef nonnull %namelen)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then2
  br i1 %tobool5.not.i, label %cleanup31.critedge, label %if.then10

if.then10:                                        ; preds = %if.then8
  %6 = load i32, ptr %namelen, align 4, !tbaa !8
  store i32 %6, ptr %lenp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen) #9
  br label %cleanup31

if.end12:                                         ; preds = %if.then2
  store ptr %call6, ptr %namep, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen) #9
  br label %if.end18

if.end18:                                         ; preds = %if.end12, %if.end
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %7 = load i8, ptr %version, align 1, !tbaa !5
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %version, i64 1
  %8 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %8 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %version, i64 2
  %9 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %9 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %version, i64 3
  %10 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %10 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp = icmp ult i32 %or10.i, 16
  br i1 %cmp, label %land.lhs.true21, label %if.end28

land.lhs.true21:                                  ; preds = %if.end18
  %11 = add i32 %offset, 4
  %12 = and i32 %11, 7
  %tobool22.not = icmp eq i32 %12, 0
  br i1 %tobool22.not, label %if.end28, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %len = getelementptr inbounds %struct.fdt_property, ptr %add.ptr2.i.i, i64 0, i32 1
  %13 = load i32, ptr %len, align 4, !tbaa !8
  %rev.i.i48 = call i32 @llvm.bswap.i32(i32 %13) #9
  %cmp25 = icmp ugt i32 %rev.i.i48, 7
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true23
  %add.ptr = getelementptr inbounds %struct.fdt_property, ptr %add.ptr2.i.i, i64 1, i32 1
  br label %cleanup31

if.end28:                                         ; preds = %land.lhs.true23, %land.lhs.true21, %if.end18
  %data29 = getelementptr inbounds %struct.fdt_property, ptr %add.ptr2.i.i, i64 0, i32 3
  br label %cleanup31

cleanup31.critedge:                               ; preds = %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen) #9
  br label %cleanup31

cleanup31:                                        ; preds = %cleanup31.critedge, %if.end28, %if.then27, %if.then10, %fdt_get_property_by_offset_.exit.thread56, %if.then.i
  %retval.1 = phi ptr [ %data29, %if.end28 ], [ %add.ptr, %if.then27 ], [ null, %cleanup31.critedge ], [ null, %if.then10 ], [ null, %fdt_get_property_by_offset_.exit.thread56 ], [ null, %if.then.i ]
  ret ptr %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %name, ptr noundef %lenp) local_unnamed_addr #0 {
entry:
  %poffset.i = alloca i32, align 4
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #10
  %conv = trunc i64 %call to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i) #9
  %call.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %conv, ptr noundef %lenp, ptr noundef nonnull %poffset.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %fdt_getprop_namelen.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %0 = load i8, ptr %version.i, align 1, !tbaa !5
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %version.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !5
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %version.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !5
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %version.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %cmp.i = icmp ult i32 %or10.i.i, 16
  br i1 %cmp.i, label %land.lhs.true3.i, label %if.end10.i

land.lhs.true3.i:                                 ; preds = %if.end.i
  %4 = load i32, ptr %poffset.i, align 4, !tbaa !8
  %5 = add i32 %4, 4
  %6 = and i32 %5, 7
  %tobool4.not.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i, label %if.end10.i, label %land.lhs.true5.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %call.i, i64 0, i32 1
  %7 = load i32, ptr %len.i, align 4, !tbaa !8
  %rev.i.i.i = call i32 @llvm.bswap.i32(i32 %7) #9
  %cmp7.i = icmp ugt i32 %rev.i.i.i, 7
  br i1 %cmp7.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  %add.ptr.i = getelementptr inbounds %struct.fdt_property, ptr %call.i, i64 1, i32 1
  br label %fdt_getprop_namelen.exit

if.end10.i:                                       ; preds = %land.lhs.true5.i, %land.lhs.true3.i, %if.end.i
  %data11.i = getelementptr inbounds %struct.fdt_property, ptr %call.i, i64 0, i32 3
  br label %fdt_getprop_namelen.exit

fdt_getprop_namelen.exit:                         ; preds = %if.end10.i, %if.then9.i, %entry
  %retval.0.i = phi ptr [ %data11.i, %if.end10.i ], [ %add.ptr.i, %if.then9.i ], [ null, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i) #9
  ret ptr %retval.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_get_alias(ptr noundef %fdt, ptr nocapture noundef readonly %name) local_unnamed_addr #0 {
entry:
  %poffset.i.i = alloca i32, align 4
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #10
  %call1.i.i = tail call i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef nonnull @.str.2, i32 noundef 8) #9
  %cmp.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i, label %fdt_get_alias_namelen.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %conv = trunc i64 %call to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %call.i4.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %call1.i.i, ptr noundef %name, i32 noundef %conv, ptr noundef null, ptr noundef nonnull %poffset.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i4.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop_namelen.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %0 = load i8, ptr %version.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end10.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %4 = load i32, ptr %poffset.i.i, align 4, !tbaa !8
  %5 = add i32 %4, 4
  %6 = and i32 %5, 7
  %tobool4.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i.i, label %if.end10.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i4.i, i64 0, i32 1
  %7 = load i32, ptr %len.i.i, align 4, !tbaa !8
  %rev.i.i.i.i = call i32 @llvm.bswap.i32(i32 %7) #9
  %cmp7.i.i = icmp ugt i32 %rev.i.i.i.i, 7
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end10.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %add.ptr.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i4.i, i64 1, i32 1
  br label %fdt_getprop_namelen.exit.i

if.end10.i.i:                                     ; preds = %land.lhs.true5.i.i, %land.lhs.true3.i.i, %if.end.i.i
  %data11.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i4.i, i64 0, i32 3
  br label %fdt_getprop_namelen.exit.i

fdt_getprop_namelen.exit.i:                       ; preds = %if.end10.i.i, %if.then9.i.i, %if.end.i
  %retval.0.i.i = phi ptr [ %data11.i.i, %if.end10.i.i ], [ %add.ptr.i.i, %if.then9.i.i ], [ null, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #9
  br label %fdt_get_alias_namelen.exit

fdt_get_alias_namelen.exit:                       ; preds = %fdt_getprop_namelen.exit.i, %entry
  %retval.0.i = phi ptr [ %retval.0.i.i, %fdt_getprop_namelen.exit.i ], [ null, %entry ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_get_path(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 {
entry:
  %depth = alloca i32, align 4
  %namelen = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %namelen) #9
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup54, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %cmp1 = icmp slt i32 %buflen, 2
  br i1 %cmp1, label %cleanup54, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  store i32 0, ptr %depth, align 4, !tbaa !8
  %cmp595 = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp595, label %while.cond.preheader, label %cleanup54

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %if.end3
  %0 = phi i32 [ %.pre, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3 ]
  %pdepth.098 = phi i32 [ %pdepth.2, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3 ]
  %offset.097 = phi i32 [ %call43, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3 ]
  %p.096 = phi i32 [ %p.3, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3 ]
  %cmp690 = icmp sgt i32 %pdepth.098, %0
  br i1 %cmp690, label %do.body.preheader.preheader, label %while.end

do.body.preheader.preheader:                      ; preds = %while.cond.preheader
  %1 = sub i32 %pdepth.098, %0
  %.neg = add i32 %0, 1
  %xtraiter = and i32 %1, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %do.body.preheader.prol.loopexit, label %do.body.preheader.prol

do.body.preheader.prol:                           ; preds = %do.body.preheader.preheader
  %2 = sext i32 %p.096 to i64
  br label %do.body.prol

do.body.prol:                                     ; preds = %do.body.prol, %do.body.preheader.prol
  %indvars.iv.prol = phi i64 [ %2, %do.body.preheader.prol ], [ %indvars.iv.next.prol, %do.body.prol ]
  %indvars.iv.next.prol = add i64 %indvars.iv.prol, -1
  %3 = add nsw i64 %indvars.iv.prol, -2
  %arrayidx.prol = getelementptr inbounds i8, ptr %buf, i64 %3
  %4 = load i8, ptr %arrayidx.prol, align 1, !tbaa !5
  %cmp7.not.prol = icmp eq i8 %4, 47
  br i1 %cmp7.not.prol, label %do.end.prol, label %do.body.prol

do.end.prol:                                      ; preds = %do.body.prol
  %5 = trunc i64 %indvars.iv.next.prol to i32
  %dec9.prol = add nsw i32 %pdepth.098, -1
  br label %do.body.preheader.prol.loopexit

do.body.preheader.prol.loopexit:                  ; preds = %do.end.prol, %do.body.preheader.preheader
  %pdepth.192.unr = phi i32 [ %pdepth.098, %do.body.preheader.preheader ], [ %dec9.prol, %do.end.prol ]
  %p.191.unr = phi i32 [ %p.096, %do.body.preheader.preheader ], [ %5, %do.end.prol ]
  %indvars.iv.next.lcssa.lcssa.unr = phi i64 [ undef, %do.body.preheader.preheader ], [ %indvars.iv.next.prol, %do.end.prol ]
  %6 = icmp eq i32 %pdepth.098, %.neg
  br i1 %6, label %if.then12.loopexit, label %do.body.preheader

do.body.preheader:                                ; preds = %do.end.1, %do.body.preheader.prol.loopexit
  %pdepth.192 = phi i32 [ %dec9.1, %do.end.1 ], [ %pdepth.192.unr, %do.body.preheader.prol.loopexit ]
  %p.191 = phi i32 [ %13, %do.end.1 ], [ %p.191.unr, %do.body.preheader.prol.loopexit ]
  %7 = sext i32 %p.191 to i64
  br label %do.body

do.body:                                          ; preds = %do.body, %do.body.preheader
  %indvars.iv = phi i64 [ %7, %do.body.preheader ], [ %indvars.iv.next, %do.body ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %8 = add nsw i64 %indvars.iv, -2
  %arrayidx = getelementptr inbounds i8, ptr %buf, i64 %8
  %9 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp7.not = icmp eq i8 %9, 47
  br i1 %cmp7.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %sext = shl i64 %indvars.iv.next, 32
  %10 = ashr exact i64 %sext, 32
  br label %do.body.1

do.body.1:                                        ; preds = %do.body.1, %do.end
  %indvars.iv.1 = phi i64 [ %10, %do.end ], [ %indvars.iv.next.1, %do.body.1 ]
  %indvars.iv.next.1 = add i64 %indvars.iv.1, -1
  %11 = add nsw i64 %indvars.iv.1, -2
  %arrayidx.1 = getelementptr inbounds i8, ptr %buf, i64 %11
  %12 = load i8, ptr %arrayidx.1, align 1, !tbaa !5
  %cmp7.not.1 = icmp eq i8 %12, 47
  br i1 %cmp7.not.1, label %do.end.1, label %do.body.1

do.end.1:                                         ; preds = %do.body.1
  %13 = trunc i64 %indvars.iv.next.1 to i32
  %dec9.1 = add nsw i32 %pdepth.192, -2
  %cmp6.1 = icmp sgt i32 %dec9.1, %0
  br i1 %cmp6.1, label %do.body.preheader, label %if.then12.loopexit

while.end:                                        ; preds = %while.cond.preheader
  %cmp10.not = icmp slt i32 %pdepth.098, %0
  br i1 %cmp10.not, label %if.end26, label %if.then12

if.then12.loopexit:                               ; preds = %do.end.1, %do.body.preheader.prol.loopexit
  %indvars.iv.next.lcssa.lcssa = phi i64 [ %indvars.iv.next.lcssa.lcssa.unr, %do.body.preheader.prol.loopexit ], [ %indvars.iv.next.1, %do.end.1 ]
  %14 = trunc i64 %indvars.iv.next.lcssa.lcssa to i32
  br label %if.then12

if.then12:                                        ; preds = %if.then12.loopexit, %while.end
  %pdepth.1.lcssa108 = phi i32 [ %pdepth.098, %while.end ], [ %0, %if.then12.loopexit ]
  %p.1.lcssa107 = phi i32 [ %p.096, %while.end ], [ %14, %if.then12.loopexit ]
  %call13 = call ptr @fdt_get_name(ptr noundef %fdt, i32 noundef %offset.097, ptr noundef nonnull %namelen)
  %tobool.not = icmp eq ptr %call13, null
  %15 = load i32, ptr %namelen, align 4, !tbaa !8
  br i1 %tobool.not, label %cleanup54, label %if.end15

if.end15:                                         ; preds = %if.then12
  %add = add nsw i32 %15, %p.1.lcssa107
  %cmp17.not.not = icmp slt i32 %add, %buflen
  br i1 %cmp17.not.not, label %if.then19, label %if.end26

if.then19:                                        ; preds = %if.end15
  %idx.ext = sext i32 %p.1.lcssa107 to i64
  %add.ptr = getelementptr inbounds i8, ptr %buf, i64 %idx.ext
  %conv20 = sext i32 %15 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr nonnull align 1 %call13, i64 %conv20, i1 false)
  %inc = add nsw i32 %add, 1
  %idxprom22 = sext i32 %add to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %buf, i64 %idxprom22
  store i8 47, ptr %arrayidx23, align 1, !tbaa !5
  %inc24 = add nsw i32 %pdepth.1.lcssa108, 1
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %if.end15, %while.end
  %p.3 = phi i32 [ %inc, %if.then19 ], [ %p.1.lcssa107, %if.end15 ], [ %p.096, %while.end ]
  %pdepth.2 = phi i32 [ %inc24, %if.then19 ], [ %pdepth.1.lcssa108, %if.end15 ], [ %pdepth.098, %while.end ]
  %cmp27 = icmp eq i32 %offset.097, %nodeoffset
  br i1 %cmp27, label %if.then29, label %for.inc

if.then29:                                        ; preds = %if.end26
  %16 = load i32, ptr %depth, align 4, !tbaa !8
  %cmp31.not = icmp sgt i32 %pdepth.2, %16
  br i1 %cmp31.not, label %if.end34, label %cleanup54

if.end34:                                         ; preds = %if.then29
  %cmp35 = icmp sgt i32 %p.3, 1
  %dec38 = sext i1 %cmp35 to i32
  %spec.select = add nsw i32 %p.3, %dec38
  %idxprom40 = sext i32 %spec.select to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %buf, i64 %idxprom40
  store i8 0, ptr %arrayidx41, align 1, !tbaa !5
  br label %cleanup54

for.inc:                                          ; preds = %if.end26
  %call43 = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.097, ptr noundef nonnull %depth) #9
  %cmp4 = icmp sgt i32 %call43, -1
  %cmp5 = icmp sle i32 %call43, %nodeoffset
  %17 = and i1 %cmp4, %cmp5
  br i1 %17, label %for.inc.while.cond.preheader_crit_edge, label %for.end

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  %.pre = load i32, ptr %depth, align 4, !tbaa !8
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc
  %18 = icmp sgt i32 %call43, -2
  br i1 %18, label %cleanup54, label %if.else

if.else:                                          ; preds = %for.end
  %cmp49 = icmp eq i32 %call43, -4
  %.offset.0 = select i1 %cmp49, i32 -11, i32 %call43
  br label %cleanup54

cleanup54:                                        ; preds = %if.else, %for.end, %if.end34, %if.then29, %if.then12, %if.end3, %cleanup.cont, %entry
  %retval.1 = phi i32 [ 0, %if.end34 ], [ %call, %entry ], [ -3, %cleanup.cont ], [ -3, %if.then29 ], [ -4, %for.end ], [ %.offset.0, %if.else ], [ -4, %if.end3 ], [ %15, %if.then12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth) #9
  ret i32 %retval.1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_supernode_atdepth_offset(ptr noundef %fdt, i32 noundef %nodeoffset, i32 noundef %supernodedepth, ptr noundef writeonly %nodedepth) local_unnamed_addr #0 {
entry:
  %depth = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth) #9
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup28, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %cmp1 = icmp slt i32 %supernodedepth, 0
  br i1 %cmp1, label %cleanup28, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  store i32 0, ptr %depth, align 4, !tbaa !8
  %cmp545 = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp545, label %for.body.preheader, label %cleanup28

for.body.preheader:                               ; preds = %if.end3
  %cmp655 = icmp eq i32 %supernodedepth, 0
  %spec.select56 = select i1 %cmp655, i32 0, i32 -13
  %cmp957 = icmp eq i32 %nodeoffset, 0
  br i1 %cmp957, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %.lcssa = phi i32 [ 0, %for.body.preheader ], [ %.pre, %for.inc.for.body_crit_edge ]
  %spec.select.lcssa = phi i32 [ %spec.select56, %for.body.preheader ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %tobool.not = icmp eq ptr %nodedepth, null
  br i1 %tobool.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then10
  store i32 %.lcssa, ptr %nodedepth, align 4, !tbaa !8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then10
  %cmp13 = icmp slt i32 %.lcssa, %supernodedepth
  %.spec.select = select i1 %cmp13, i32 -1, i32 %spec.select.lcssa
  br label %cleanup28

for.inc:                                          ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %spec.select59 = phi i32 [ %spec.select, %for.inc.for.body_crit_edge ], [ %spec.select56, %for.body.preheader ]
  %offset.04658 = phi i32 [ %call16, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call16 = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.04658, ptr noundef nonnull %depth) #9
  %cmp4 = icmp sgt i32 %call16, -1
  %cmp5 = icmp sle i32 %call16, %nodeoffset
  %0 = and i1 %cmp4, %cmp5
  br i1 %0, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load i32, ptr %depth, align 4, !tbaa !8
  %cmp6 = icmp eq i32 %.pre, %supernodedepth
  %spec.select = select i1 %cmp6, i32 %call16, i32 %spec.select59
  %cmp9 = icmp eq i32 %call16, %nodeoffset
  br i1 %cmp9, label %if.then10, label %for.inc

for.end:                                          ; preds = %for.inc
  %1 = icmp sgt i32 %call16, -2
  br i1 %1, label %cleanup28, label %if.else22

if.else22:                                        ; preds = %for.end
  %cmp23 = icmp eq i32 %call16, -4
  %.offset.0 = select i1 %cmp23, i32 -11, i32 %call16
  br label %cleanup28

cleanup28:                                        ; preds = %if.else22, %for.end, %if.end12, %if.end3, %cleanup.cont, %entry
  %retval.1 = phi i32 [ %call, %entry ], [ -1, %cleanup.cont ], [ %.spec.select, %if.end12 ], [ -4, %for.end ], [ %.offset.0, %if.else22 ], [ -4, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_node_depth(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %depth.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth.i) #9
  %call.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %fdt_supernode_atdepth_offset.exit.thread, label %cleanup.cont.i

cleanup.cont.i:                                   ; preds = %entry
  store i32 0, ptr %depth.i, align 4, !tbaa !8
  %cmp545.i = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp545.i, label %for.body.i.preheader, label %fdt_supernode_atdepth_offset.exit.thread

for.body.i.preheader:                             ; preds = %cleanup.cont.i
  %cmp9.i11 = icmp eq i32 %nodeoffset, 0
  br i1 %cmp9.i11, label %fdt_supernode_atdepth_offset.exit.thread22, label %for.inc.i

fdt_supernode_atdepth_offset.exit.thread22:       ; preds = %for.body.i.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #9
  br label %cleanup

if.then10.i:                                      ; preds = %for.inc.for.body_crit_edge.i
  %cmp13.i = icmp slt i32 %.pre.i, 0
  br i1 %cmp13.i, label %fdt_supernode_atdepth_offset.exit.thread, label %fdt_supernode_atdepth_offset.exit

for.inc.i:                                        ; preds = %for.inc.for.body_crit_edge.i, %for.body.i.preheader
  %spec.select.i13 = phi i32 [ %spec.select.i, %for.inc.for.body_crit_edge.i ], [ 0, %for.body.i.preheader ]
  %offset.046.i12 = phi i32 [ %call16.i, %for.inc.for.body_crit_edge.i ], [ 0, %for.body.i.preheader ]
  %call16.i = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.046.i12, ptr noundef nonnull %depth.i) #9
  %cmp4.i = icmp sgt i32 %call16.i, -1
  %cmp5.i = icmp sle i32 %call16.i, %nodeoffset
  %0 = and i1 %cmp4.i, %cmp5.i
  br i1 %0, label %for.inc.for.body_crit_edge.i, label %for.end.i

for.inc.for.body_crit_edge.i:                     ; preds = %for.inc.i
  %.pre.i = load i32, ptr %depth.i, align 4, !tbaa !8
  %cmp6.i = icmp eq i32 %.pre.i, 0
  %spec.select.i = select i1 %cmp6.i, i32 %call16.i, i32 %spec.select.i13
  %cmp9.i = icmp eq i32 %call16.i, %nodeoffset
  br i1 %cmp9.i, label %if.then10.i, label %for.inc.i

for.end.i:                                        ; preds = %for.inc.i
  %1 = icmp sgt i32 %call16.i, -2
  br i1 %1, label %fdt_supernode_atdepth_offset.exit.thread, label %if.else22.i

if.else22.i:                                      ; preds = %for.end.i
  %cmp23.i = icmp eq i32 %call16.i, -4
  %.offset.0.i = select i1 %cmp23.i, i32 -11, i32 %call16.i
  br label %fdt_supernode_atdepth_offset.exit.thread

fdt_supernode_atdepth_offset.exit.thread:         ; preds = %if.else22.i, %for.end.i, %if.then10.i, %cleanup.cont.i, %entry
  %retval.1.i.ph = phi i32 [ -4, %cleanup.cont.i ], [ %.offset.0.i, %if.else22.i ], [ -4, %for.end.i ], [ %call.i, %entry ], [ -1, %if.then10.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #9
  br label %if.then

fdt_supernode_atdepth_offset.exit:                ; preds = %if.then10.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #9
  %tobool.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %fdt_supernode_atdepth_offset.exit, %fdt_supernode_atdepth_offset.exit.thread
  %retval.1.i8 = phi i32 [ %retval.1.i.ph, %fdt_supernode_atdepth_offset.exit.thread ], [ %spec.select.i, %fdt_supernode_atdepth_offset.exit ]
  %cmp = icmp slt i32 %retval.1.i8, 0
  %cond = select i1 %cmp, i32 %retval.1.i8, i32 -13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %fdt_supernode_atdepth_offset.exit, %fdt_supernode_atdepth_offset.exit.thread22
  %retval.0 = phi i32 [ %cond, %if.then ], [ %.pre.i, %fdt_supernode_atdepth_offset.exit ], [ 0, %fdt_supernode_atdepth_offset.exit.thread22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_parent_offset(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %depth.i = alloca i32, align 4
  %depth.i.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth.i.i) #9
  %call.i.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.thread, label %cleanup.cont.i.i

cleanup.cont.i.i:                                 ; preds = %entry
  store i32 0, ptr %depth.i.i, align 4, !tbaa !8
  %cmp545.i.i = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp545.i.i, label %for.body.i.preheader.i, label %if.then.i.thread

for.body.i.preheader.i:                           ; preds = %cleanup.cont.i.i
  %cmp9.i11.i = icmp eq i32 %nodeoffset, 0
  br i1 %cmp9.i11.i, label %fdt_supernode_atdepth_offset.exit.thread22.i, label %for.inc.i.i

fdt_supernode_atdepth_offset.exit.thread22.i:     ; preds = %for.body.i.preheader.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i.i) #9
  br label %if.end

if.then10.i.i:                                    ; preds = %for.inc.for.body_crit_edge.i.i
  %cmp13.i.i = icmp slt i32 %.pre.i.i, 0
  br i1 %cmp13.i.i, label %if.then.i.thread, label %fdt_supernode_atdepth_offset.exit.i

for.inc.i.i:                                      ; preds = %for.inc.for.body_crit_edge.i.i, %for.body.i.preheader.i
  %spec.select.i13.i = phi i32 [ %spec.select.i.i, %for.inc.for.body_crit_edge.i.i ], [ 0, %for.body.i.preheader.i ]
  %offset.046.i12.i = phi i32 [ %call16.i.i, %for.inc.for.body_crit_edge.i.i ], [ 0, %for.body.i.preheader.i ]
  %call16.i.i = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.046.i12.i, ptr noundef nonnull %depth.i.i) #9
  %cmp4.i.i = icmp sgt i32 %call16.i.i, -1
  %cmp5.i.i = icmp sle i32 %call16.i.i, %nodeoffset
  %0 = and i1 %cmp4.i.i, %cmp5.i.i
  br i1 %0, label %for.inc.for.body_crit_edge.i.i, label %for.end.i.i

for.inc.for.body_crit_edge.i.i:                   ; preds = %for.inc.i.i
  %.pre.i.i = load i32, ptr %depth.i.i, align 4, !tbaa !8
  %cmp6.i.i = icmp eq i32 %.pre.i.i, 0
  %spec.select.i.i = select i1 %cmp6.i.i, i32 %call16.i.i, i32 %spec.select.i13.i
  %cmp9.i.i = icmp eq i32 %call16.i.i, %nodeoffset
  br i1 %cmp9.i.i, label %if.then10.i.i, label %for.inc.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %1 = icmp sgt i32 %call16.i.i, -2
  br i1 %1, label %if.then.i.thread, label %if.else22.i.i

if.else22.i.i:                                    ; preds = %for.end.i.i
  %cmp23.i.i = icmp eq i32 %call16.i.i, -4
  %.offset.0.i.i = select i1 %cmp23.i.i, i32 -11, i32 %call16.i.i
  br label %if.then.i.thread

if.then.i.thread:                                 ; preds = %if.else22.i.i, %for.end.i.i, %if.then10.i.i, %cleanup.cont.i.i, %entry
  %retval.1.i.ph.i = phi i32 [ -4, %cleanup.cont.i.i ], [ %.offset.0.i.i, %if.else22.i.i ], [ -4, %for.end.i.i ], [ %call.i.i, %entry ], [ -1, %if.then10.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i.i) #9
  br label %select.unfold

fdt_supernode_atdepth_offset.exit.i:              ; preds = %if.then10.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i.i) #9
  %tobool.not.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then.i

if.then.i:                                        ; preds = %fdt_supernode_atdepth_offset.exit.i
  %cmp.i = icmp slt i32 %spec.select.i.i, 0
  br i1 %cmp.i, label %select.unfold, label %cleanup

select.unfold:                                    ; preds = %if.then.i, %if.then.i.thread
  %retval.1.i8.i11 = phi i32 [ %retval.1.i.ph.i, %if.then.i.thread ], [ %spec.select.i.i, %if.then.i ]
  br label %cleanup

if.end:                                           ; preds = %fdt_supernode_atdepth_offset.exit.i, %fdt_supernode_atdepth_offset.exit.thread22.i
  %retval.0.i = phi i32 [ %.pre.i.i, %fdt_supernode_atdepth_offset.exit.i ], [ 0, %fdt_supernode_atdepth_offset.exit.thread22.i ]
  %sub = add nsw i32 %retval.0.i, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth.i) #9
  %call.i = call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp.i6 = icmp slt i32 %call.i, 0
  br i1 %cmp.i6, label %fdt_supernode_atdepth_offset.exit, label %cleanup.cont.i

cleanup.cont.i:                                   ; preds = %if.end
  %cmp1.i = icmp eq i32 %retval.0.i, 0
  br i1 %cmp1.i, label %fdt_supernode_atdepth_offset.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %cleanup.cont.i
  store i32 0, ptr %depth.i, align 4, !tbaa !8
  %cmp6.i15 = icmp eq i32 %sub, 0
  %spec.select.i16 = select i1 %cmp6.i15, i32 0, i32 -13
  br i1 %cmp9.i11.i, label %if.then10.i, label %for.inc.i

if.then10.i:                                      ; preds = %for.inc.for.body_crit_edge.i, %for.body.i.preheader
  %.lcssa = phi i32 [ 0, %for.body.i.preheader ], [ %.pre.i, %for.inc.for.body_crit_edge.i ]
  %spec.select.i.lcssa = phi i32 [ %spec.select.i16, %for.body.i.preheader ], [ %spec.select.i, %for.inc.for.body_crit_edge.i ]
  %cmp13.i = icmp slt i32 %.lcssa, %sub
  %.spec.select.i = select i1 %cmp13.i, i32 -1, i32 %spec.select.i.lcssa
  br label %fdt_supernode_atdepth_offset.exit

for.inc.i:                                        ; preds = %for.inc.for.body_crit_edge.i, %for.body.i.preheader
  %spec.select.i19 = phi i32 [ %spec.select.i, %for.inc.for.body_crit_edge.i ], [ %spec.select.i16, %for.body.i.preheader ]
  %offset.046.i18 = phi i32 [ %call16.i, %for.inc.for.body_crit_edge.i ], [ 0, %for.body.i.preheader ]
  %call16.i = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.046.i18, ptr noundef nonnull %depth.i) #9
  %cmp4.i = icmp sgt i32 %call16.i, -1
  %cmp5.i = icmp sle i32 %call16.i, %nodeoffset
  %2 = and i1 %cmp4.i, %cmp5.i
  br i1 %2, label %for.inc.for.body_crit_edge.i, label %for.end.i

for.inc.for.body_crit_edge.i:                     ; preds = %for.inc.i
  %.pre.i = load i32, ptr %depth.i, align 4, !tbaa !8
  %cmp6.i = icmp eq i32 %.pre.i, %sub
  %spec.select.i = select i1 %cmp6.i, i32 %call16.i, i32 %spec.select.i19
  %cmp9.i = icmp eq i32 %call16.i, %nodeoffset
  br i1 %cmp9.i, label %if.then10.i, label %for.inc.i

for.end.i:                                        ; preds = %for.inc.i
  %3 = icmp sgt i32 %call16.i, -2
  br i1 %3, label %fdt_supernode_atdepth_offset.exit, label %if.else22.i

if.else22.i:                                      ; preds = %for.end.i
  %cmp23.i = icmp eq i32 %call16.i, -4
  %.offset.0.i = select i1 %cmp23.i, i32 -11, i32 %call16.i
  br label %fdt_supernode_atdepth_offset.exit

fdt_supernode_atdepth_offset.exit:                ; preds = %if.else22.i, %for.end.i, %if.then10.i, %cleanup.cont.i, %if.end
  %retval.1.i = phi i32 [ %call.i, %if.end ], [ -1, %cleanup.cont.i ], [ %.spec.select.i, %if.then10.i ], [ -4, %for.end.i ], [ %.offset.0.i, %if.else22.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fdt_supernode_atdepth_offset.exit, %select.unfold, %if.then.i
  %retval.0 = phi i32 [ %retval.1.i, %fdt_supernode_atdepth_offset.exit ], [ %retval.1.i8.i11, %select.unfold ], [ -13, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_node_offset_by_prop_value(ptr noundef %fdt, i32 noundef %startoffset, ptr nocapture noundef readonly %propname, ptr nocapture noundef readonly %propval, i32 noundef %proplen) local_unnamed_addr #0 {
entry:
  %poffset.i.i = alloca i32, align 4
  %len = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup12, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %call1 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %startoffset, ptr noundef null) #9
  %cmp226 = icmp sgt i32 %call1, -1
  br i1 %cmp226, label %for.body.lr.ph, label %cleanup12

for.body.lr.ph:                                   ; preds = %cleanup.cont
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 1
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 2
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 3
  %conv = sext i32 %proplen to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %offset.027 = phi i32 [ %call1, %for.body.lr.ph ], [ %call11, %for.inc ]
  %call.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %propname) #10
  %conv.i = trunc i64 %call.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %offset.027, ptr noundef %propname, i32 noundef %conv.i, ptr noundef nonnull %len, ptr noundef nonnull %poffset.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body
  %0 = load i8, ptr %version.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end10.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %4 = load i32, ptr %poffset.i.i, align 4, !tbaa !8
  %5 = add i32 %4, 4
  %6 = and i32 %5, 7
  %tobool4.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i.i, label %if.end10.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 0, i32 1
  %7 = load i32, ptr %len.i.i, align 4, !tbaa !8
  %rev.i.i.i.i = call i32 @llvm.bswap.i32(i32 %7) #9
  %cmp7.i.i = icmp ugt i32 %rev.i.i.i.i, 7
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end10.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %add.ptr.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 1, i32 1
  br label %land.lhs.true

if.end10.i.i:                                     ; preds = %land.lhs.true5.i.i, %land.lhs.true3.i.i, %if.end.i.i
  %data11.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 0, i32 3
  br label %land.lhs.true

fdt_getprop.exit:                                 ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #9
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end10.i.i, %if.then9.i.i
  %retval.0.i.i.ph = phi ptr [ %add.ptr.i.i, %if.then9.i.i ], [ %data11.i.i, %if.end10.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %8 = load i32, ptr %len, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %8, %proplen
  br i1 %cmp4, label %land.lhs.true5, label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %bcmp = call i32 @bcmp(ptr nonnull %retval.0.i.i.ph, ptr %propval, i64 %conv)
  %cmp7 = icmp eq i32 %bcmp, 0
  br i1 %cmp7, label %cleanup12, label %for.inc

for.inc:                                          ; preds = %land.lhs.true5, %land.lhs.true, %fdt_getprop.exit
  %call11 = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.027, ptr noundef null) #9
  %cmp2 = icmp sgt i32 %call11, -1
  br i1 %cmp2, label %for.body, label %cleanup12

cleanup12:                                        ; preds = %for.inc, %land.lhs.true5, %cleanup.cont, %entry
  %retval.1 = phi i32 [ %call, %entry ], [ %call1, %cleanup.cont ], [ %offset.027, %land.lhs.true5 ], [ %call11, %for.inc ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_node_offset_by_phandle(ptr noundef %fdt, i32 noundef %phandle) local_unnamed_addr #0 {
entry:
  %0 = add i32 %phandle, 1
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %cleanup12, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %cleanup12, label %cleanup.cont

cleanup.cont:                                     ; preds = %if.end
  %call5 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef -1, ptr noundef null) #9
  %cmp622 = icmp sgt i32 %call5, -1
  br i1 %cmp622, label %for.body, label %cleanup12

for.body:                                         ; preds = %for.inc, %cleanup.cont
  %offset.023 = phi i32 [ %call11, %for.inc ], [ %call5, %cleanup.cont ]
  %call7 = tail call i32 @fdt_get_phandle(ptr noundef %fdt, i32 noundef %offset.023)
  %cmp8 = icmp eq i32 %call7, %phandle
  br i1 %cmp8, label %cleanup12, label %for.inc

for.inc:                                          ; preds = %for.body
  %call11 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.023, ptr noundef null) #9
  %cmp6 = icmp sgt i32 %call11, -1
  br i1 %cmp6, label %for.body, label %cleanup12

cleanup12:                                        ; preds = %for.inc, %for.body, %cleanup.cont, %if.end, %entry
  %retval.1 = phi i32 [ %call, %if.end ], [ -6, %entry ], [ %call5, %cleanup.cont ], [ %offset.023, %for.body ], [ %call11, %for.inc ]
  ret i32 %retval.1
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @fdt_stringlist_contains(ptr noundef %strlist, i32 noundef %listlen, ptr nocapture noundef readonly %str) local_unnamed_addr #6 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #10
  %conv = trunc i64 %call to i32
  %add = shl i64 %call, 32
  %sext = add i64 %add, 4294967296
  %conv2 = ashr exact i64 %sext, 32
  %cmp.not22 = icmp sgt i32 %conv, %listlen
  br i1 %cmp.not22, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end9, %entry
  %strlist.addr.024 = phi ptr [ %add.ptr, %if.end9 ], [ %strlist, %entry ]
  %listlen.addr.023 = phi i32 [ %conv12, %if.end9 ], [ %listlen, %entry ]
  %bcmp = tail call i32 @bcmp(ptr %str, ptr %strlist.addr.024, i64 %conv2)
  %cmp4 = icmp eq i32 %bcmp, 0
  br i1 %cmp4, label %cleanup, label %if.end

if.end:                                           ; preds = %while.body
  %conv6 = sext i32 %listlen.addr.023 to i64
  %call7 = tail call ptr @memchr(ptr noundef %strlist.addr.024, i32 noundef 0, i64 noundef %conv6) #10
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint ptr %call7 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %strlist.addr.024 to i64
  %0 = xor i64 %sub.ptr.lhs.cast, -1
  %add10.neg = add i64 %0, %sub.ptr.rhs.cast
  %1 = trunc i64 %add10.neg to i32
  %conv12 = add i32 %listlen.addr.023, %1
  %add.ptr = getelementptr inbounds i8, ptr %call7, i64 1
  %cmp.not = icmp slt i32 %conv12, %conv
  br i1 %cmp.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %if.end9, %if.end, %while.body, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end9 ], [ 0, %if.end ], [ 1, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_stringlist_count(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %property) local_unnamed_addr #0 {
entry:
  %poffset.i.i = alloca i32, align 4
  %length = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #9
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %property) #10
  %conv.i = trunc i64 %call.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %property, i32 noundef %conv.i, ptr noundef nonnull %length, ptr noundef nonnull %poffset.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %0 = load i8, ptr %version.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end10.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %4 = load i32, ptr %poffset.i.i, align 4, !tbaa !8
  %5 = add i32 %4, 4
  %6 = and i32 %5, 7
  %tobool4.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i.i, label %if.end10.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 0, i32 1
  %7 = load i32, ptr %len.i.i, align 4, !tbaa !8
  %rev.i.i.i.i = call i32 @llvm.bswap.i32(i32 %7) #9
  %cmp7.i.i = icmp ugt i32 %rev.i.i.i.i, 7
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end10.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %add.ptr.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 1, i32 1
  br label %if.end

if.end10.i.i:                                     ; preds = %land.lhs.true5.i.i, %land.lhs.true3.i.i, %if.end.i.i
  %data11.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 0, i32 3
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %8 = load i32, ptr %length, align 4, !tbaa !8
  br label %cleanup

if.end:                                           ; preds = %if.end10.i.i, %if.then9.i.i
  %retval.0.i.i.ph = phi ptr [ %add.ptr.i.i, %if.then9.i.i ], [ %data11.i.i, %if.end10.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %9 = load i32, ptr %length, align 4, !tbaa !8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %retval.0.i.i.ph, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i64
  %cmp25 = icmp sgt i32 %9, 0
  br i1 %cmp25, label %while.body, label %cleanup

while.body:                                       ; preds = %if.end7, %if.end
  %count.027 = phi i32 [ %inc, %if.end7 ], [ 0, %if.end ]
  %list.026 = phi ptr [ %add.ptr3, %if.end7 ], [ %retval.0.i.i.ph, %if.end ]
  %sub.ptr.rhs.cast = ptrtoint ptr %list.026 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call1 = call i64 @strnlen(ptr noundef %list.026, i64 noundef %sub.ptr.sub) #10
  %10 = trunc i64 %call1 to i32
  %conv = add i32 %10, 1
  store i32 %conv, ptr %length, align 4, !tbaa !8
  %idx.ext2 = sext i32 %conv to i64
  %add.ptr3 = getelementptr inbounds i8, ptr %list.026, i64 %idx.ext2
  %cmp4 = icmp ugt ptr %add.ptr3, %add.ptr
  br i1 %cmp4, label %cleanup, label %if.end7

if.end7:                                          ; preds = %while.body
  %inc = add nuw nsw i32 %count.027, 1
  %cmp = icmp ult ptr %add.ptr3, %add.ptr
  br i1 %cmp, label %while.body, label %cleanup

cleanup:                                          ; preds = %if.end7, %while.body, %if.end, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ 0, %if.end ], [ -15, %while.body ], [ %inc, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strnlen(ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_stringlist_search(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %property, ptr nocapture noundef readonly %string) local_unnamed_addr #0 {
entry:
  %poffset.i.i = alloca i32, align 4
  %length = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #9
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %property) #10
  %conv.i = trunc i64 %call.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %property, i32 noundef %conv.i, ptr noundef nonnull %length, ptr noundef nonnull %poffset.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %0 = load i8, ptr %version.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end10.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %4 = load i32, ptr %poffset.i.i, align 4, !tbaa !8
  %5 = add i32 %4, 4
  %6 = and i32 %5, 7
  %tobool4.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i.i, label %if.end10.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 0, i32 1
  %7 = load i32, ptr %len.i.i, align 4, !tbaa !8
  %rev.i.i.i.i = call i32 @llvm.bswap.i32(i32 %7) #9
  %cmp7.i.i = icmp ugt i32 %rev.i.i.i.i, 7
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end10.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %add.ptr.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 1, i32 1
  br label %if.end

if.end10.i.i:                                     ; preds = %land.lhs.true5.i.i, %land.lhs.true3.i.i, %if.end.i.i
  %data11.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 0, i32 3
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %8 = load i32, ptr %length, align 4, !tbaa !8
  br label %cleanup

if.end:                                           ; preds = %if.end10.i.i, %if.then9.i.i
  %retval.0.i.i.ph = phi ptr [ %add.ptr.i.i, %if.then9.i.i ], [ %data11.i.i, %if.end10.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %call1 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %string) #10
  %9 = trunc i64 %call1 to i32
  %10 = load i32, ptr %length, align 4, !tbaa !8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, ptr %retval.0.i.i.ph, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i64
  %cmp40 = icmp sgt i32 %10, 0
  br i1 %cmp40, label %while.body, label %cleanup

while.body:                                       ; preds = %if.end19, %if.end
  %list.043 = phi ptr [ %add.ptr7, %if.end19 ], [ %retval.0.i.i.ph, %if.end ]
  %idx.041 = phi i32 [ %inc, %if.end19 ], [ 0, %if.end ]
  %sub.ptr.rhs.cast = ptrtoint ptr %list.043 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call3 = call i64 @strnlen(ptr noundef %list.043, i64 noundef %sub.ptr.sub) #10
  %11 = trunc i64 %call3 to i32
  %conv5 = add i32 %11, 1
  store i32 %conv5, ptr %length, align 4, !tbaa !8
  %idx.ext6 = sext i32 %conv5 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %list.043, i64 %idx.ext6
  %cmp8 = icmp ugt ptr %add.ptr7, %add.ptr
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %while.body
  %cmp12 = icmp eq i32 %11, %9
  br i1 %cmp12, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end11
  %bcmp = call i32 @bcmp(ptr %list.043, ptr %string, i64 %idx.ext6)
  %cmp16 = icmp eq i32 %bcmp, 0
  br i1 %cmp16, label %cleanup, label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.end11
  %inc = add nuw nsw i32 %idx.041, 1
  %cmp = icmp ult ptr %add.ptr7, %add.ptr
  br i1 %cmp, label %while.body, label %cleanup

cleanup:                                          ; preds = %if.end19, %land.lhs.true, %while.body, %if.end, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ -1, %if.end ], [ -15, %while.body ], [ %idx.041, %land.lhs.true ], [ -1, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_stringlist_get(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %property, i32 noundef %idx, ptr noundef writeonly %lenp) local_unnamed_addr #0 {
entry:
  %poffset.i.i = alloca i32, align 4
  %length = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #9
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %property) #10
  %conv.i = trunc i64 %call.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %property, i32 noundef %conv.i, ptr noundef nonnull %length, ptr noundef nonnull %poffset.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %0 = load i8, ptr %version.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end10.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %4 = load i32, ptr %poffset.i.i, align 4, !tbaa !8
  %5 = add i32 %4, 4
  %6 = and i32 %5, 7
  %tobool4.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i.i, label %if.end10.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 0, i32 1
  %7 = load i32, ptr %len.i.i, align 4, !tbaa !8
  %rev.i.i.i.i = call i32 @llvm.bswap.i32(i32 %7) #9
  %cmp7.i.i = icmp ugt i32 %rev.i.i.i.i, 7
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end10.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %add.ptr.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 1, i32 1
  br label %if.end3

if.end10.i.i:                                     ; preds = %land.lhs.true5.i.i, %land.lhs.true3.i.i, %if.end.i.i
  %data11.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 0, i32 3
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %tobool1.not = icmp eq ptr %lenp, null
  br i1 %tobool1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.then
  %8 = load i32, ptr %length, align 4, !tbaa !8
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end10.i.i, %if.then9.i.i
  %retval.0.i.i.ph = phi ptr [ %add.ptr.i.i, %if.then9.i.i ], [ %data11.i.i, %if.end10.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %9 = load i32, ptr %length, align 4, !tbaa !8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %retval.0.i.i.ph, i64 %idx.ext
  %cmp51 = icmp sgt i32 %9, 0
  br i1 %cmp51, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end3
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i64
  br label %while.body

while.cond:                                       ; preds = %if.end13
  %dec = add nsw i32 %idx.addr.052, -1
  %cmp = icmp ult ptr %add.ptr6, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond, %while.body.lr.ph
  %list.053 = phi ptr [ %retval.0.i.i.ph, %while.body.lr.ph ], [ %add.ptr6, %while.cond ]
  %idx.addr.052 = phi i32 [ %idx, %while.body.lr.ph ], [ %dec, %while.cond ]
  %sub.ptr.rhs.cast = ptrtoint ptr %list.053 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call4 = call i64 @strnlen(ptr noundef %list.053, i64 noundef %sub.ptr.sub) #10
  %10 = trunc i64 %call4 to i32
  %conv = add i32 %10, 1
  store i32 %conv, ptr %length, align 4, !tbaa !8
  %idx.ext5 = sext i32 %conv to i64
  %add.ptr6 = getelementptr inbounds i8, ptr %list.053, i64 %idx.ext5
  %cmp7 = icmp ugt ptr %add.ptr6, %add.ptr
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %while.body
  %tobool10.not = icmp eq ptr %lenp, null
  br i1 %tobool10.not, label %cleanup, label %cleanup.sink.split

if.end13:                                         ; preds = %while.body
  %cmp14 = icmp eq i32 %idx.addr.052, 0
  br i1 %cmp14, label %if.then16, label %while.cond

if.then16:                                        ; preds = %if.end13
  %11 = trunc i64 %call4 to i32
  %tobool17.not = icmp eq ptr %lenp, null
  br i1 %tobool17.not, label %cleanup, label %cleanup.sink.split

while.end:                                        ; preds = %while.cond, %if.end3
  %tobool23.not = icmp eq ptr %lenp, null
  br i1 %tobool23.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end, %if.then16, %if.then9, %if.then2
  %.sink = phi i32 [ %8, %if.then2 ], [ -15, %if.then9 ], [ %11, %if.then16 ], [ -1, %while.end ]
  %retval.0.ph = phi ptr [ null, %if.then2 ], [ null, %if.then9 ], [ %list.053, %if.then16 ], [ null, %while.end ]
  store i32 %.sink, ptr %lenp, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end, %if.then16, %if.then9, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then9 ], [ %list.053, %if.then16 ], [ null, %while.end ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_node_check_compatible(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %compatible) local_unnamed_addr #0 {
entry:
  %poffset.i.i = alloca i32, align 4
  %len = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull @.str.3, i32 noundef 10, ptr noundef nonnull %len, ptr noundef nonnull %poffset.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %0 = load i8, ptr %version.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %version.i.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end10.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %4 = load i32, ptr %poffset.i.i, align 4, !tbaa !8
  %5 = add i32 %4, 4
  %6 = and i32 %5, 7
  %tobool4.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i.i, label %if.end10.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 0, i32 1
  %7 = load i32, ptr %len.i.i, align 4, !tbaa !8
  %rev.i.i.i.i = call i32 @llvm.bswap.i32(i32 %7) #9
  %cmp7.i.i = icmp ugt i32 %rev.i.i.i.i, 7
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end10.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %add.ptr.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 1, i32 1
  br label %if.end

if.end10.i.i:                                     ; preds = %land.lhs.true5.i.i, %land.lhs.true3.i.i, %if.end.i.i
  %data11.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 0, i32 3
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %8 = load i32, ptr %len, align 4, !tbaa !8
  br label %cleanup

if.end:                                           ; preds = %if.end10.i.i, %if.then9.i.i
  %retval.0.i.i.ph = phi ptr [ %add.ptr.i.i, %if.then9.i.i ], [ %data11.i.i, %if.end10.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #9
  %9 = load i32, ptr %len, align 4, !tbaa !8
  %call.i5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %compatible) #10
  %conv.i6 = trunc i64 %call.i5 to i32
  %add.i = shl i64 %call.i5, 32
  %sext.i = add i64 %add.i, 4294967296
  %conv2.i = ashr exact i64 %sext.i, 32
  %cmp.not22.i = icmp slt i32 %9, %conv.i6
  br i1 %cmp.not22.i, label %cleanup, label %while.body.i

while.body.i:                                     ; preds = %if.end9.i, %if.end
  %strlist.addr.024.i = phi ptr [ %add.ptr.i, %if.end9.i ], [ %retval.0.i.i.ph, %if.end ]
  %listlen.addr.023.i = phi i32 [ %conv12.i, %if.end9.i ], [ %9, %if.end ]
  %bcmp.i = call i32 @bcmp(ptr %compatible, ptr nonnull %strlist.addr.024.i, i64 %conv2.i) #9
  %cmp4.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp4.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %conv6.i = sext i32 %listlen.addr.023.i to i64
  %call7.i = call ptr @memchr(ptr noundef nonnull %strlist.addr.024.i, i32 noundef 0, i64 noundef %conv6.i) #10
  %tobool.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i, label %cleanup, label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call7.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %strlist.addr.024.i to i64
  %10 = xor i64 %sub.ptr.lhs.cast.i, -1
  %add10.neg.i = add i64 %10, %sub.ptr.rhs.cast.i
  %11 = trunc i64 %add10.neg.i to i32
  %conv12.i = add i32 %listlen.addr.023.i, %11
  %add.ptr.i = getelementptr inbounds i8, ptr %call7.i, i64 1
  %cmp.not.i = icmp slt i32 %conv12.i, %conv.i6
  br i1 %cmp.not.i, label %cleanup, label %while.body.i

cleanup:                                          ; preds = %if.end9.i, %if.end.i, %while.body.i, %if.end, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ 1, %if.end ], [ 1, %if.end9.i ], [ 1, %if.end.i ], [ 0, %while.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_node_offset_by_compatible(ptr noundef %fdt, i32 noundef %startoffset, ptr nocapture noundef readonly %compatible) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup12, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %call1 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %startoffset, ptr noundef null) #9
  %cmp224 = icmp sgt i32 %call1, -1
  br i1 %cmp224, label %for.body, label %cleanup12

for.body:                                         ; preds = %for.inc, %cleanup.cont
  %offset.025 = phi i32 [ %call11, %for.inc ], [ %call1, %cleanup.cont ]
  %call3 = tail call i32 @fdt_node_check_compatible(ptr noundef %fdt, i32 noundef %offset.025, ptr noundef %compatible)
  %0 = icmp slt i32 %call3, -1
  br i1 %0, label %cleanup12, label %if.else

if.else:                                          ; preds = %for.body
  %cmp7 = icmp eq i32 %call3, 0
  br i1 %cmp7, label %cleanup12, label %for.inc

for.inc:                                          ; preds = %if.else
  %call11 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.025, ptr noundef null) #9
  %cmp2 = icmp sgt i32 %call11, -1
  br i1 %cmp2, label %for.body, label %cleanup12

cleanup12:                                        ; preds = %for.inc, %if.else, %for.body, %cleanup.cont, %entry
  %retval.1 = phi i32 [ %call, %entry ], [ %call1, %cleanup.cont ], [ %call3, %for.body ], [ %offset.025, %if.else ], [ %call11, %for.inc ]
  ret i32 %retval.1
}

declare i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
