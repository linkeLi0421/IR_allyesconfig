; ModuleID = '/llk/IR_all_yes/arch/arm/boot/compressed/fdt_ro.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/fdt_ro.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_node_header = type { i32, [0 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/aliases\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_get_string(ptr noundef %fdt, i32 noundef %stroffset, ptr noundef writeonly %lenp) local_unnamed_addr #0 align 64 {
entry:
  %call6 = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #5
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %fail, label %if.end8

if.end8:                                          ; preds = %entry
  %off_dt_strings9 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %0 = load i8, ptr %off_dt_strings9, align 1
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %off_dt_strings9, i32 1
  %1 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %off_dt_strings9, i32 2
  %2 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %off_dt_strings9, i32 3
  %3 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %add = add i32 %or10.i, %stroffset
  %cmp11.not = icmp ugt i32 %call6, %add
  br i1 %cmp11.not, label %if.end13, label %fail

if.end13:                                         ; preds = %if.end8
  %sub = sub i32 %call6, %add
  %4 = load i8, ptr %fdt, align 1
  %conv.i111 = zext i8 %4 to i32
  %shl.i112 = shl nuw i32 %conv.i111, 24
  %arrayidx1.i113 = getelementptr i8, ptr %fdt, i32 1
  %5 = load i8, ptr %arrayidx1.i113, align 1
  %conv2.i114 = zext i8 %5 to i32
  %shl3.i115 = shl nuw nsw i32 %conv2.i114, 16
  %or.i116 = or i32 %shl3.i115, %shl.i112
  %arrayidx4.i117 = getelementptr i8, ptr %fdt, i32 2
  %6 = load i8, ptr %arrayidx4.i117, align 1
  %conv5.i118 = zext i8 %6 to i32
  %shl6.i119 = shl nuw nsw i32 %conv5.i118, 8
  %or7.i120 = or i32 %or.i116, %shl6.i119
  %arrayidx8.i121 = getelementptr i8, ptr %fdt, i32 3
  %7 = load i8, ptr %arrayidx8.i121, align 1
  %conv9.i122 = zext i8 %7 to i32
  %or10.i123 = or i32 %or7.i120, %conv9.i122
  switch i32 %or10.i123, label %fail [
    i32 -804389139, label %if.then16
    i32 804389138, label %if.then41
  ]

if.then16:                                        ; preds = %if.end13
  %cmp17 = icmp slt i32 %stroffset, 0
  br i1 %cmp17, label %fail, label %if.end19

if.end19:                                         ; preds = %if.then16
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %8 = load i8, ptr %version, align 1
  %conv.i124 = zext i8 %8 to i32
  %shl.i125 = shl nuw i32 %conv.i124, 24
  %arrayidx1.i126 = getelementptr i8, ptr %version, i32 1
  %9 = load i8, ptr %arrayidx1.i126, align 1
  %conv2.i127 = zext i8 %9 to i32
  %shl3.i128 = shl nuw nsw i32 %conv2.i127, 16
  %or.i129 = or i32 %shl3.i128, %shl.i125
  %arrayidx4.i130 = getelementptr i8, ptr %version, i32 2
  %10 = load i8, ptr %arrayidx4.i130, align 1
  %conv5.i131 = zext i8 %10 to i32
  %shl6.i132 = shl nuw nsw i32 %conv5.i131, 8
  %or7.i133 = or i32 %or.i129, %shl6.i132
  %arrayidx8.i134 = getelementptr i8, ptr %version, i32 3
  %11 = load i8, ptr %arrayidx8.i134, align 1
  %conv9.i135 = zext i8 %11 to i32
  %or10.i136 = or i32 %or7.i133, %conv9.i135
  %cmp22 = icmp ugt i32 %or10.i136, 16
  br i1 %cmp22, label %if.then23, label %if.end55

if.then23:                                        ; preds = %if.end19
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %12 = load i8, ptr %size_dt_strings, align 1
  %conv.i137 = zext i8 %12 to i32
  %shl.i138 = shl nuw i32 %conv.i137, 24
  %arrayidx1.i139 = getelementptr i8, ptr %size_dt_strings, i32 1
  %13 = load i8, ptr %arrayidx1.i139, align 1
  %conv2.i140 = zext i8 %13 to i32
  %shl3.i141 = shl nuw nsw i32 %conv2.i140, 16
  %or.i142 = or i32 %shl3.i141, %shl.i138
  %arrayidx4.i143 = getelementptr i8, ptr %size_dt_strings, i32 2
  %14 = load i8, ptr %arrayidx4.i143, align 1
  %conv5.i144 = zext i8 %14 to i32
  %shl6.i145 = shl nuw nsw i32 %conv5.i144, 8
  %or7.i146 = or i32 %or.i142, %shl6.i145
  %arrayidx8.i147 = getelementptr i8, ptr %size_dt_strings, i32 3
  %15 = load i8, ptr %arrayidx8.i147, align 1
  %conv9.i148 = zext i8 %15 to i32
  %or10.i149 = or i32 %or7.i146, %conv9.i148
  %cmp25.not = icmp ugt i32 %or10.i149, %stroffset
  br i1 %cmp25.not, label %if.end27, label %fail

if.end27:                                         ; preds = %if.then23
  %sub30 = sub i32 %or10.i149, %stroffset
  %16 = tail call i32 @llvm.umin.i32(i32 %sub30, i32 %sub)
  br label %if.end55

if.then41:                                        ; preds = %if.end13
  %sub42 = sub i32 0, %stroffset
  %cmp43 = icmp sgt i32 %stroffset, -1
  br i1 %cmp43, label %fail, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.then41
  %size_dt_strings45 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %17 = load i8, ptr %size_dt_strings45, align 1
  %conv.i189 = zext i8 %17 to i32
  %shl.i190 = shl nuw i32 %conv.i189, 24
  %arrayidx1.i191 = getelementptr i8, ptr %size_dt_strings45, i32 1
  %18 = load i8, ptr %arrayidx1.i191, align 1
  %conv2.i192 = zext i8 %18 to i32
  %shl3.i193 = shl nuw nsw i32 %conv2.i192, 16
  %or.i194 = or i32 %shl3.i193, %shl.i190
  %arrayidx4.i195 = getelementptr i8, ptr %size_dt_strings45, i32 2
  %19 = load i8, ptr %arrayidx4.i195, align 1
  %conv5.i196 = zext i8 %19 to i32
  %shl6.i197 = shl nuw nsw i32 %conv5.i196, 8
  %or7.i198 = or i32 %or.i194, %shl6.i197
  %arrayidx8.i199 = getelementptr i8, ptr %size_dt_strings45, i32 3
  %20 = load i8, ptr %arrayidx8.i199, align 1
  %conv9.i200 = zext i8 %20 to i32
  %or10.i201 = or i32 %or7.i198, %conv9.i200
  %cmp47 = icmp ult i32 %or10.i201, %sub42
  br i1 %cmp47, label %fail, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false44
  %21 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %sub42)
  br label %if.end55

if.end55:                                         ; preds = %cleanup, %if.end27, %if.end19
  %len.2 = phi i32 [ %sub, %if.end19 ], [ %21, %cleanup ], [ %16, %if.end27 ]
  %add.ptr56 = getelementptr i8, ptr %fdt, i32 %add
  %call57 = tail call ptr @memchr(ptr noundef %add.ptr56, i32 noundef 0, i32 noundef %len.2) #5
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %fail, label %if.end60

if.end60:                                         ; preds = %if.end55
  %tobool61.not = icmp eq ptr %lenp, null
  br i1 %tobool61.not, label %cleanup67, label %if.then62

if.then62:                                        ; preds = %if.end60
  %sub.ptr.lhs.cast = ptrtoint ptr %call57 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr56 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup67.sink.split

fail:                                             ; preds = %if.end55, %lor.lhs.false44, %if.then41, %if.then23, %if.then16, %if.end13, %if.end8, %entry
  %err.0 = phi i32 [ %call6, %entry ], [ -4, %if.end8 ], [ -4, %if.then16 ], [ -4, %if.then23 ], [ -8, %if.end55 ], [ -4, %lor.lhs.false44 ], [ -4, %if.then41 ], [ -13, %if.end13 ]
  %tobool64.not = icmp eq ptr %lenp, null
  br i1 %tobool64.not, label %cleanup67, label %cleanup67.sink.split

cleanup67.sink.split:                             ; preds = %fail, %if.then62
  %err.0.sink = phi i32 [ %sub.ptr.sub, %if.then62 ], [ %err.0, %fail ]
  %retval.0.ph = phi ptr [ %add.ptr56, %if.then62 ], [ null, %fail ]
  store i32 %err.0.sink, ptr %lenp, align 4
  br label %cleanup67

cleanup67:                                        ; preds = %cleanup67.sink.split, %fail, %if.end60
  %retval.0 = phi ptr [ %add.ptr56, %if.end60 ], [ null, %fail ], [ %retval.0.ph, %cleanup67.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare i32 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_ro_probe_(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_string(ptr noundef %fdt, i32 noundef %stroffset) local_unnamed_addr #0 align 64 {
entry:
  %call = tail call ptr @fdt_get_string(ptr noundef %fdt, i32 noundef %stroffset, ptr noundef null) #6
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_find_max_phandle(ptr noundef %fdt, ptr noundef writeonly %phandle) local_unnamed_addr #0 align 64 {
entry:
  %call28 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef -1, ptr noundef null) #5
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
  %call4 = tail call i32 @fdt_get_phandle(ptr noundef %fdt, i32 noundef %call31) #6
  %0 = tail call i32 @llvm.umax.i32(i32 %call4, i32 %max.030)
  %call = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %call31, ptr noundef null) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %cleanup

while.end:                                        ; preds = %if.then
  %tobool.not = icmp eq ptr %phandle, null
  br i1 %tobool.not, label %cleanup10, label %if.then8

if.then8:                                         ; preds = %while.end
  store i32 %max.0.lcssa, ptr %phandle, align 4
  br label %cleanup10

cleanup10:                                        ; preds = %if.then8, %while.end, %if.then
  %retval.2 = phi i32 [ 0, %if.then8 ], [ 0, %while.end ], [ %call.lcssa, %if.then ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_get_phandle(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i.i14 = alloca i32, align 4
  %poffset.i.i = alloca i32, align 4
  %len = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  store i32 -1, ptr %len, align 4, !annotation !9
  %call.i = tail call i32 @strlen(ptr noundef nonnull @.str) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #7
  store i32 -1, ptr %poffset.i.i, align 4, !annotation !9
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull @.str, i32 noundef %call.i, ptr noundef nonnull %len, ptr noundef nonnull %poffset.i.i) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop.exit.thread, label %if.end.i.i

fdt_getprop.exit.thread:                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #7
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = load i8, ptr %version.i.i, align 1
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %version.i.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %version.i.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %version.i.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end9.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %4 = load i32, ptr %poffset.i.i, align 4
  %add.i.i = add i32 %4, 4
  %rem.i.i = and i32 %add.i.i, 7
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 1
  %5 = load i32, ptr %len.i.i, align 4
  %cmp7.i.i = icmp ugt i32 %5, 7
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end9.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true5.i.i
  %add.ptr.i.i = getelementptr %struct.fdt_property, ptr %call.i.i, i32 1, i32 1
  br label %fdt_getprop.exit

if.end9.i.i:                                      ; preds = %land.lhs.true5.i.i, %land.lhs.true3.i.i, %if.end.i.i
  %data10.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 3
  br label %fdt_getprop.exit

fdt_getprop.exit:                                 ; preds = %if.end9.i.i, %if.then8.i.i
  %retval.0.i.i = phi ptr [ %data10.i.i, %if.end9.i.i ], [ %add.ptr.i.i, %if.then8.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #7
  %tobool = icmp eq ptr %retval.0.i.i, null
  %6 = load i32, ptr %len, align 4
  %cmp = icmp ne i32 %6, 4
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then, label %if.end6

if.then:                                          ; preds = %fdt_getprop.exit, %fdt_getprop.exit.thread
  %call.i15 = call i32 @strlen(ptr noundef nonnull @.str.1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i14) #7
  store i32 -1, ptr %poffset.i.i14, align 4, !annotation !9
  %call.i.i16 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull @.str.1, i32 noundef %call.i15, ptr noundef nonnull %len, ptr noundef nonnull %poffset.i.i14) #5
  %tobool.not.i.i17 = icmp eq ptr %call.i.i16, null
  br i1 %tobool.not.i.i17, label %fdt_getprop.exit46.thread, label %if.end.i.i33

fdt_getprop.exit46.thread:                        ; preds = %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i14) #7
  br label %cleanup

if.end.i.i33:                                     ; preds = %if.then
  %version.i.i18 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %7 = load i8, ptr %version.i.i18, align 1
  %conv.i.i.i19 = zext i8 %7 to i32
  %shl.i.i.i20 = shl nuw i32 %conv.i.i.i19, 24
  %arrayidx1.i.i.i21 = getelementptr i8, ptr %version.i.i18, i32 1
  %8 = load i8, ptr %arrayidx1.i.i.i21, align 1
  %conv2.i.i.i22 = zext i8 %8 to i32
  %shl3.i.i.i23 = shl nuw nsw i32 %conv2.i.i.i22, 16
  %or.i.i.i24 = or i32 %shl3.i.i.i23, %shl.i.i.i20
  %arrayidx4.i.i.i25 = getelementptr i8, ptr %version.i.i18, i32 2
  %9 = load i8, ptr %arrayidx4.i.i.i25, align 1
  %conv5.i.i.i26 = zext i8 %9 to i32
  %shl6.i.i.i27 = shl nuw nsw i32 %conv5.i.i.i26, 8
  %or7.i.i.i28 = or i32 %or.i.i.i24, %shl6.i.i.i27
  %arrayidx8.i.i.i29 = getelementptr i8, ptr %version.i.i18, i32 3
  %10 = load i8, ptr %arrayidx8.i.i.i29, align 1
  %conv9.i.i.i30 = zext i8 %10 to i32
  %or10.i.i.i31 = or i32 %or7.i.i.i28, %conv9.i.i.i30
  %cmp.i.i32 = icmp ult i32 %or10.i.i.i31, 16
  br i1 %cmp.i.i32, label %land.lhs.true3.i.i37, label %if.end9.i.i44

land.lhs.true3.i.i37:                             ; preds = %if.end.i.i33
  %11 = load i32, ptr %poffset.i.i14, align 4
  %add.i.i34 = add i32 %11, 4
  %rem.i.i35 = and i32 %add.i.i34, 7
  %tobool4.not.i.i36 = icmp eq i32 %rem.i.i35, 0
  br i1 %tobool4.not.i.i36, label %if.end9.i.i44, label %land.lhs.true5.i.i40

land.lhs.true5.i.i40:                             ; preds = %land.lhs.true3.i.i37
  %len.i.i38 = getelementptr inbounds %struct.fdt_property, ptr %call.i.i16, i32 0, i32 1
  %12 = load i32, ptr %len.i.i38, align 4
  %cmp7.i.i39 = icmp ugt i32 %12, 7
  br i1 %cmp7.i.i39, label %if.then8.i.i42, label %if.end9.i.i44

if.then8.i.i42:                                   ; preds = %land.lhs.true5.i.i40
  %add.ptr.i.i41 = getelementptr %struct.fdt_property, ptr %call.i.i16, i32 1, i32 1
  br label %fdt_getprop.exit46

if.end9.i.i44:                                    ; preds = %land.lhs.true5.i.i40, %land.lhs.true3.i.i37, %if.end.i.i33
  %data10.i.i43 = getelementptr inbounds %struct.fdt_property, ptr %call.i.i16, i32 0, i32 3
  br label %fdt_getprop.exit46

fdt_getprop.exit46:                               ; preds = %if.end9.i.i44, %if.then8.i.i42
  %retval.0.i.i45 = phi ptr [ %data10.i.i43, %if.end9.i.i44 ], [ %add.ptr.i.i41, %if.then8.i.i42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i14) #7
  %tobool2 = icmp eq ptr %retval.0.i.i45, null
  %13 = load i32, ptr %len, align 4
  %cmp4 = icmp ne i32 %13, 4
  %or.cond9 = select i1 %tobool2, i1 true, i1 %cmp4
  br i1 %or.cond9, label %cleanup, label %if.end6

if.end6:                                          ; preds = %fdt_getprop.exit46, %fdt_getprop.exit
  %php.0 = phi ptr [ %retval.0.i.i45, %fdt_getprop.exit46 ], [ %retval.0.i.i, %fdt_getprop.exit ]
  %14 = load i32, ptr %php.0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %fdt_getprop.exit46, %fdt_getprop.exit46.thread
  %retval.0 = phi i32 [ %14, %if.end6 ], [ 0, %fdt_getprop.exit46 ], [ 0, %fdt_getprop.exit46.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_generate_phandle(ptr noundef %fdt, ptr noundef writeonly %phandle) local_unnamed_addr #0 align 64 {
entry:
  %call28.i = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef -1, ptr noundef null) #5
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.then.i.thread, label %cleanup.i

if.then.i:                                        ; preds = %cleanup.i
  %cmp1.i = icmp eq i32 %call.i, -1
  br i1 %cmp1.i, label %if.end, label %cleanup

if.then.i.thread:                                 ; preds = %entry
  %cmp1.i14 = icmp eq i32 %call28.i, -1
  br i1 %cmp1.i14, label %if.end3, label %cleanup

cleanup.i:                                        ; preds = %cleanup.i, %entry
  %call31.i = phi i32 [ %call.i, %cleanup.i ], [ %call28.i, %entry ]
  %max.030.i = phi i32 [ %0, %cleanup.i ], [ 0, %entry ]
  %call4.i = tail call i32 @fdt_get_phandle(ptr noundef %fdt, i32 noundef %call31.i) #5
  %0 = tail call i32 @llvm.umax.i32(i32 %call4.i, i32 %max.030.i) #7
  %call.i = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %call31.i, ptr noundef null) #5
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %cleanup.i

if.end:                                           ; preds = %if.then.i
  %cmp1 = icmp eq i32 %0, -2
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end, %if.then.i.thread
  %max.0.lcssa.i1519 = phi i32 [ %0, %if.end ], [ 0, %if.then.i.thread ]
  %tobool.not = icmp eq ptr %phandle, null
  br i1 %tobool.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end3
  %add = add i32 %max.0.lcssa.i1519, 1
  store i32 %add, ptr %phandle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end3, %if.end, %if.then.i.thread, %if.then.i
  %retval.0 = phi i32 [ -17, %if.end ], [ 0, %if.then4 ], [ 0, %if.end3 ], [ %call28.i, %if.then.i.thread ], [ %call.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_get_mem_rsv(ptr noundef %fdt, i32 noundef %n, ptr nocapture noundef writeonly %address, ptr nocapture noundef writeonly %size) local_unnamed_addr #0 align 64 {
entry:
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup9, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %mul.i = shl i32 %n, 4
  %off_mem_rsvmap.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %0 = load i8, ptr %off_mem_rsvmap.i, align 1
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %add.i = add i32 %or10.i.i, %mul.i
  %cmp.i = icmp ult i32 %add.i, %or10.i.i
  br i1 %cmp.i, label %cleanup9, label %if.end.i

if.end.i:                                         ; preds = %cleanup.cont
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %4 = load i8, ptr %totalsize.i, align 1
  %conv.i30.i = zext i8 %4 to i32
  %shl.i31.i = shl nuw i32 %conv.i30.i, 24
  %arrayidx1.i32.i = getelementptr i8, ptr %totalsize.i, i32 1
  %5 = load i8, ptr %arrayidx1.i32.i, align 1
  %conv2.i33.i = zext i8 %5 to i32
  %shl3.i34.i = shl nuw nsw i32 %conv2.i33.i, 16
  %or.i35.i = or i32 %shl3.i34.i, %shl.i31.i
  %arrayidx4.i36.i = getelementptr i8, ptr %totalsize.i, i32 2
  %6 = load i8, ptr %arrayidx4.i36.i, align 1
  %conv5.i37.i = zext i8 %6 to i32
  %shl6.i38.i = shl nuw nsw i32 %conv5.i37.i, 8
  %or7.i39.i = or i32 %or.i35.i, %shl6.i38.i
  %arrayidx8.i40.i = getelementptr i8, ptr %totalsize.i, i32 3
  %7 = load i8, ptr %arrayidx8.i40.i, align 1
  %conv9.i41.i = zext i8 %7 to i32
  %or10.i42.i = or i32 %or7.i39.i, %conv9.i41.i
  %sub.i = add i32 %or10.i42.i, -16
  %cmp6.i = icmp ugt i32 %add.i, %sub.i
  br i1 %cmp6.i, label %cleanup9, label %fdt_mem_rsv.exit

fdt_mem_rsv.exit:                                 ; preds = %if.end.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i
  %add.ptr1.i.i = getelementptr %struct.fdt_reserve_entry, ptr %add.ptr.i.i, i32 %n
  %tobool.not = icmp eq ptr %add.ptr1.i.i, null
  br i1 %tobool.not, label %cleanup9, label %if.end4

if.end4:                                          ; preds = %fdt_mem_rsv.exit
  %8 = load i64, ptr %add.ptr1.i.i, align 8
  store i64 %8, ptr %address, align 8
  %size7 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr1.i.i, i32 0, i32 1
  %9 = load i64, ptr %size7, align 8
  store i64 %9, ptr %size, align 8
  br label %cleanup9

cleanup9:                                         ; preds = %if.end4, %fdt_mem_rsv.exit, %if.end.i, %cleanup.cont, %entry
  %retval.1 = phi i32 [ 0, %if.end4 ], [ %call, %entry ], [ -4, %fdt_mem_rsv.exit ], [ -4, %cleanup.cont ], [ -4, %if.end.i ]
  ret i32 %retval.1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly uwtable(sync)
define i32 @fdt_num_mem_rsv(ptr noundef readonly %fdt) local_unnamed_addr #3 align 64 {
entry:
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %off_mem_rsvmap.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %0 = load i8, ptr %off_mem_rsvmap.i, align 1
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %4 = load i8, ptr %totalsize.i, align 1
  %conv.i30.i = zext i8 %4 to i32
  %shl.i31.i = shl nuw i32 %conv.i30.i, 24
  %arrayidx1.i32.i = getelementptr i8, ptr %totalsize.i, i32 1
  %5 = load i8, ptr %arrayidx1.i32.i, align 1
  %conv2.i33.i = zext i8 %5 to i32
  %shl3.i34.i = shl nuw nsw i32 %conv2.i33.i, 16
  %or.i35.i = or i32 %shl3.i34.i, %shl.i31.i
  %arrayidx4.i36.i = getelementptr i8, ptr %totalsize.i, i32 2
  %6 = load i8, ptr %arrayidx4.i36.i, align 1
  %conv5.i37.i = zext i8 %6 to i32
  %shl6.i38.i = shl nuw nsw i32 %conv5.i37.i, 8
  %or7.i39.i = or i32 %or.i35.i, %shl6.i38.i
  %arrayidx8.i40.i = getelementptr i8, ptr %totalsize.i, i32 3
  %7 = load i8, ptr %arrayidx8.i40.i, align 1
  %conv9.i41.i = zext i8 %7 to i32
  %or10.i42.i = or i32 %or7.i39.i, %conv9.i41.i
  %sub.i = add i32 %or10.i42.i, -16
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc, %entry
  %add.i9 = phi i32 [ %or10.i.i, %entry ], [ %add.i, %for.inc ]
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp6.i = icmp ugt i32 %add.i9, %sub.i
  br i1 %cmp6.i, label %cleanup, label %fdt_mem_rsv.exit

fdt_mem_rsv.exit:                                 ; preds = %if.end.i
  %add.ptr1.i.i = getelementptr %struct.fdt_reserve_entry, ptr %add.ptr.i.i, i32 %i.08
  %cmp.not = icmp eq ptr %add.ptr1.i.i, null
  br i1 %cmp.not, label %cleanup, label %for.body

for.body:                                         ; preds = %fdt_mem_rsv.exit
  %size = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr1.i.i, i32 0, i32 1
  %8 = load i64, ptr %size, align 8
  %cmp2 = icmp eq i64 %8, 0
  br i1 %cmp2, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.08, 1
  %mul.i = shl i32 %inc, 4
  %add.i = add i32 %or10.i.i, %mul.i
  %cmp.i = icmp ult i32 %add.i, %or10.i.i
  br i1 %cmp.i, label %cleanup, label %if.end.i

cleanup:                                          ; preds = %for.inc, %for.body, %fdt_mem_rsv.exit, %if.end.i
  %retval.0 = phi i32 [ %i.08, %for.body ], [ -8, %fdt_mem_rsv.exit ], [ -8, %for.inc ], [ -8, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_subnode_offset_namelen(ptr noundef %fdt, i32 noundef %offset, ptr noundef %name, i32 noundef %namelen) local_unnamed_addr #0 align 64 {
entry:
  %olen.i = alloca i32, align 4
  %depth = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth) #7
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup11, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  store i32 0, ptr %depth, align 4
  %cmp122 = icmp sgt i32 %offset, -1
  br i1 %cmp122, label %for.body, label %cleanup11

for.body:                                         ; preds = %for.inc, %cleanup.cont
  %offset.addr.023 = phi i32 [ %call7, %for.inc ], [ %offset, %cleanup.cont ]
  %0 = phi i32 [ %.pr, %for.inc ], [ 0, %cleanup.cont ]
  %cmp3 = icmp eq i32 %0, 1
  br i1 %cmp3, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %olen.i) #7
  store i32 -1, ptr %olen.i, align 4, !annotation !9
  %call.i = call ptr @fdt_get_name(ptr noundef %fdt, i32 noundef %offset.addr.023, ptr noundef nonnull %olen.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  %1 = load i32, ptr %olen.i, align 4
  %cmp.i = icmp slt i32 %1, %namelen
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %fdt_nodename_eq_.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true
  %call1.i = call i32 @memcmp(ptr noundef nonnull %call.i, ptr noundef %name, i32 noundef %namelen) #5
  %cmp2.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.not.i, label %if.end4.i, label %fdt_nodename_eq_.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %namelen
  %2 = load i8, ptr %arrayidx.i, align 1
  %cmp5.i = icmp eq i8 %2, 0
  br i1 %cmp5.i, label %fdt_nodename_eq_.exit, label %if.else.i

if.else.i:                                        ; preds = %if.end4.i
  %call8.i = call ptr @memchr(ptr noundef %name, i32 noundef 64, i32 noundef %namelen) #5
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %land.lhs.true.i, label %fdt_nodename_eq_.exit.thread

land.lhs.true.i:                                  ; preds = %if.else.i
  %3 = load i8, ptr %arrayidx.i, align 1
  %cmp12.i = icmp eq i8 %3, 64
  br i1 %cmp12.i, label %fdt_nodename_eq_.exit, label %fdt_nodename_eq_.exit.thread

fdt_nodename_eq_.exit.thread:                     ; preds = %land.lhs.true.i, %if.else.i, %if.end.i, %land.lhs.true
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #7
  br label %for.inc

fdt_nodename_eq_.exit:                            ; preds = %land.lhs.true.i, %if.end4.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #7
  br label %cleanup11

for.inc:                                          ; preds = %fdt_nodename_eq_.exit.thread, %for.body
  %call7 = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.addr.023, ptr noundef nonnull %depth) #5
  %.pr = load i32, ptr %depth, align 4
  %cmp1 = icmp sgt i32 %call7, -1
  %cmp2 = icmp sgt i32 %.pr, -1
  %4 = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %4, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc
  %phi.cmp = icmp sgt i32 %.pr, -1
  %phi.sel = select i1 %phi.cmp, i32 %call7, i32 -1
  br label %cleanup11

cleanup11:                                        ; preds = %for.end.loopexit, %fdt_nodename_eq_.exit, %cleanup.cont, %entry
  %retval.1 = phi i32 [ %call, %entry ], [ %offset.addr.023, %fdt_nodename_eq_.exit ], [ %offset, %cleanup.cont ], [ %phi.sel, %for.end.loopexit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_subnode_offset(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %call = tail call i32 @strlen(ptr noundef %name) #5
  %call1 = tail call i32 @fdt_subnode_offset_namelen(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name, i32 noundef %call) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef %path, i32 noundef %namelen) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i = alloca i32, align 4
  %add.ptr = getelementptr i8, ptr %path, i32 %namelen
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup50, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %0 = load i8, ptr %path, align 1
  %cmp1.not = icmp eq i8 %0, 47
  br i1 %cmp1.not, label %if.end18, label %if.then3

if.then3:                                         ; preds = %cleanup.cont
  %call4 = tail call ptr @memchr(ptr noundef %path, i32 noundef 47, i32 noundef %namelen) #5
  %tobool.not = icmp eq ptr %call4, null
  %spec.select = select i1 %tobool.not, ptr %add.ptr, ptr %call4
  %call.i95 = tail call i32 @strlen(ptr noundef nonnull @.str.2) #5
  %call1.i = tail call i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef nonnull @.str.2, i32 noundef %call.i95) #5
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %cleanup50, label %if.end.i

if.end.i:                                         ; preds = %if.then3
  %sub.ptr.lhs.cast7 = ptrtoint ptr %spec.select to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %path to i32
  %sub.ptr.sub9 = sub i32 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i) #7
  store i32 -1, ptr %poffset.i, align 4, !annotation !9
  %call.i91 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %call1.i, ptr noundef %path, i32 noundef %sub.ptr.sub9, ptr noundef null, ptr noundef nonnull %poffset.i) #5
  %tobool.not.i = icmp eq ptr %call.i91, null
  br i1 %tobool.not.i, label %fdt_get_alias_namelen.exit.thread99, label %if.end.i93

fdt_get_alias_namelen.exit.thread99:              ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i) #7
  br label %cleanup50

if.end.i93:                                       ; preds = %if.end.i
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %1 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %2 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %2 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %3 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %3 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %4 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %4 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %cmp.i92 = icmp ult i32 %or10.i.i, 16
  br i1 %cmp.i92, label %land.lhs.true3.i, label %if.end9.i

land.lhs.true3.i:                                 ; preds = %if.end.i93
  %5 = load i32, ptr %poffset.i, align 4
  %add.i = add i32 %5, 4
  %rem.i = and i32 %add.i, 7
  %tobool4.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool4.not.i, label %if.end9.i, label %land.lhs.true5.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %call.i91, i32 0, i32 1
  %6 = load i32, ptr %len.i, align 4
  %cmp7.i = icmp ugt i32 %6, 7
  br i1 %cmp7.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %land.lhs.true5.i
  %add.ptr.i = getelementptr %struct.fdt_property, ptr %call.i91, i32 1, i32 1
  br label %fdt_get_alias_namelen.exit

if.end9.i:                                        ; preds = %land.lhs.true5.i, %land.lhs.true3.i, %if.end.i93
  %data10.i = getelementptr inbounds %struct.fdt_property, ptr %call.i91, i32 0, i32 3
  br label %fdt_get_alias_namelen.exit

fdt_get_alias_namelen.exit:                       ; preds = %if.end9.i, %if.then8.i
  %retval.0.i94 = phi ptr [ %data10.i, %if.end9.i ], [ %add.ptr.i, %if.then8.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i) #7
  %tobool11.not = icmp eq ptr %retval.0.i94, null
  br i1 %tobool11.not, label %cleanup50, label %cleanup15

cleanup15:                                        ; preds = %fdt_get_alias_namelen.exit
  %call.i89 = call i32 @strlen(ptr noundef nonnull %retval.0.i94) #5
  %call1.i90 = call i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef nonnull %retval.0.i94, i32 noundef %call.i89) #5
  br label %if.end18

if.end18:                                         ; preds = %cleanup15, %cleanup.cont
  %p.1 = phi ptr [ %spec.select, %cleanup15 ], [ %path, %cleanup.cont ]
  %offset.1 = phi i32 [ %call1.i90, %cleanup15 ], [ 0, %cleanup.cont ]
  %sub.ptr.lhs.cast31 = ptrtoint ptr %add.ptr to i32
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end18
  %p.2 = phi ptr [ %p.1, %if.end18 ], [ %spec.select88, %while.end ]
  %offset.2 = phi i32 [ %offset.1, %if.end18 ], [ %call41, %while.end ]
  %cmp19 = icmp ult ptr %p.2, %add.ptr
  br i1 %cmp19, label %while.cond22, label %cleanup50

while.cond22:                                     ; preds = %while.body26, %while.cond
  %p.3 = phi ptr [ %incdec.ptr, %while.body26 ], [ %p.2, %while.cond ]
  %7 = load i8, ptr %p.3, align 1
  %cmp24 = icmp eq i8 %7, 47
  br i1 %cmp24, label %while.body26, label %while.end

while.body26:                                     ; preds = %while.cond22
  %incdec.ptr = getelementptr i8, ptr %p.3, i32 1
  %cmp27 = icmp eq ptr %incdec.ptr, %add.ptr
  br i1 %cmp27, label %cleanup50, label %while.cond22

while.end:                                        ; preds = %while.cond22
  %sub.ptr.rhs.cast32 = ptrtoint ptr %p.3 to i32
  %sub.ptr.sub33 = sub i32 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %call34 = call ptr @memchr(ptr noundef %p.3, i32 noundef 47, i32 noundef %sub.ptr.sub33) #5
  %tobool35.not = icmp eq ptr %call34, null
  %spec.select88 = select i1 %tobool35.not, ptr %add.ptr, ptr %call34
  %sub.ptr.lhs.cast38 = ptrtoint ptr %spec.select88 to i32
  %sub.ptr.sub40 = sub i32 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast32
  %call41 = call i32 @fdt_subnode_offset_namelen(ptr noundef %fdt, i32 noundef %offset.2, ptr noundef %p.3, i32 noundef %sub.ptr.sub40) #6
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %cleanup50, label %while.cond

cleanup50:                                        ; preds = %while.end, %while.body26, %while.cond, %fdt_get_alias_namelen.exit, %fdt_get_alias_namelen.exit.thread99, %if.then3, %entry
  %retval.5 = phi i32 [ %call, %entry ], [ -5, %fdt_get_alias_namelen.exit ], [ -5, %fdt_get_alias_namelen.exit.thread99 ], [ -5, %if.then3 ], [ %offset.2, %while.body26 ], [ %offset.2, %while.cond ], [ %call41, %while.end ]
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_get_alias_namelen(ptr noundef %fdt, ptr noundef %name, i32 noundef %namelen) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i = alloca i32, align 4
  %call.i = tail call i32 @strlen(ptr noundef nonnull @.str.2) #5
  %call1.i = tail call i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef nonnull @.str.2, i32 noundef %call.i) #5
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i) #7
  store i32 -1, ptr %poffset.i, align 4, !annotation !9
  %call.i4 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %call1.i, ptr noundef %name, i32 noundef %namelen, ptr noundef null, ptr noundef nonnull %poffset.i) #5
  %tobool.not.i = icmp eq ptr %call.i4, null
  br i1 %tobool.not.i, label %fdt_getprop_namelen.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %cmp.i = icmp ult i32 %or10.i.i, 16
  br i1 %cmp.i, label %land.lhs.true3.i, label %if.end9.i

land.lhs.true3.i:                                 ; preds = %if.end.i
  %4 = load i32, ptr %poffset.i, align 4
  %add.i = add i32 %4, 4
  %rem.i = and i32 %add.i, 7
  %tobool4.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool4.not.i, label %if.end9.i, label %land.lhs.true5.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %call.i4, i32 0, i32 1
  %5 = load i32, ptr %len.i, align 4
  %cmp7.i = icmp ugt i32 %5, 7
  br i1 %cmp7.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %land.lhs.true5.i
  %add.ptr.i = getelementptr %struct.fdt_property, ptr %call.i4, i32 1, i32 1
  br label %fdt_getprop_namelen.exit

if.end9.i:                                        ; preds = %land.lhs.true5.i, %land.lhs.true3.i, %if.end.i
  %data10.i = getelementptr inbounds %struct.fdt_property, ptr %call.i4, i32 0, i32 3
  br label %fdt_getprop_namelen.exit

fdt_getprop_namelen.exit:                         ; preds = %if.end9.i, %if.then8.i, %if.end
  %retval.0.i = phi ptr [ %data10.i, %if.end9.i ], [ %add.ptr.i, %if.then8.i ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fdt_getprop_namelen.exit, %entry
  %retval.0 = phi ptr [ %retval.0.i, %fdt_getprop_namelen.exit ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_path_offset(ptr noundef %fdt, ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  %call = tail call i32 @strlen(ptr noundef %path) #5
  %call1 = tail call i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef %path, i32 noundef %call) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_get_name(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef writeonly %len) local_unnamed_addr #0 align 64 {
entry:
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %0 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_dt_struct.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_dt_struct.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_dt_struct.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %add.ptr.i = getelementptr i8, ptr %fdt, i32 %or10.i.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %nodeoffset
  %call1 = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #5
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %fail, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @fdt_check_node_offset_(ptr noundef %fdt, i32 noundef %nodeoffset) #5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %fail, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.fdt_node_header, ptr %add.ptr1.i, i32 0, i32 1
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %4 = load i8, ptr %version, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %version, i32 1
  %5 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %5 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %version, i32 2
  %6 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %6 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %version, i32 3
  %7 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %7 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp6 = icmp ult i32 %or10.i, 16
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end
  %call8 = tail call ptr @strrchr(ptr noundef %name, i32 noundef 47) #5
  %cmp9 = icmp eq ptr %call8, null
  %add.ptr = getelementptr i8, ptr %call8, i32 1
  br i1 %cmp9, label %fail, label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end
  %nameptr.1 = phi ptr [ %add.ptr, %if.then7 ], [ %name, %if.end ]
  %tobool.not = icmp eq ptr %len, null
  br i1 %tobool.not, label %cleanup19, label %if.then13

if.then13:                                        ; preds = %if.end12
  %call14 = tail call i32 @strlen(ptr noundef %nameptr.1) #5
  br label %cleanup19.sink.split

fail:                                             ; preds = %if.then7, %lor.lhs.false, %entry
  %err.1 = phi i32 [ %call1, %entry ], [ %call2, %lor.lhs.false ], [ -11, %if.then7 ]
  %tobool16.not = icmp eq ptr %len, null
  br i1 %tobool16.not, label %cleanup19, label %cleanup19.sink.split

cleanup19.sink.split:                             ; preds = %fail, %if.then13
  %err.1.sink = phi i32 [ %call14, %if.then13 ], [ %err.1, %fail ]
  %retval.0.ph = phi ptr [ %nameptr.1, %if.then13 ], [ null, %fail ]
  store i32 %err.1.sink, ptr %len, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %cleanup19.sink.split, %fail, %if.end12
  %retval.0 = phi ptr [ %nameptr.1, %if.end12 ], [ null, %fail ], [ %retval.0.ph, %cleanup19.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_check_node_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_first_property_offset(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 align 64 {
entry:
  %nextoffset.i = alloca i32, align 4
  %call = tail call i32 @fdt_check_node_offset_(ptr noundef %fdt, i32 noundef %nodeoffset) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i) #7
  store i32 -1, ptr %nextoffset.i, align 4, !annotation !9
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i, %if.end
  %offset.addr.0.i = phi i32 [ %call, %if.end ], [ %1, %sw.epilog.i ]
  %call.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0.i, ptr noundef nonnull %nextoffset.i) #5
  switch i32 %call.i, label %sw.epilog.i [
    i32 9, label %sw.bb.i
    i32 3, label %nextprop_.exit
  ]

sw.bb.i:                                          ; preds = %do.body.i
  %0 = load i32, ptr %nextoffset.i, align 4
  %cmp.i = icmp sgt i32 %0, -1
  %..i = select i1 %cmp.i, i32 -11, i32 %0
  br label %nextprop_.exit

sw.epilog.i:                                      ; preds = %do.body.i
  %1 = load i32, ptr %nextoffset.i, align 4
  %cmp2.i = icmp eq i32 %call.i, 4
  br i1 %cmp2.i, label %do.body.i, label %nextprop_.exit

nextprop_.exit:                                   ; preds = %sw.epilog.i, %sw.bb.i, %do.body.i
  %retval.0.i = phi i32 [ %..i, %sw.bb.i ], [ %offset.addr.0.i, %do.body.i ], [ -1, %sw.epilog.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #7
  br label %cleanup

cleanup:                                          ; preds = %nextprop_.exit, %entry
  %retval.0 = phi i32 [ %retval.0.i, %nextprop_.exit ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_next_property_offset(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %nextoffset.i = alloca i32, align 4
  %call = tail call i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i) #7
  store i32 -1, ptr %nextoffset.i, align 4, !annotation !9
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i, %if.end
  %offset.addr.0.i = phi i32 [ %call, %if.end ], [ %1, %sw.epilog.i ]
  %call.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0.i, ptr noundef nonnull %nextoffset.i) #5
  switch i32 %call.i, label %sw.epilog.i [
    i32 9, label %sw.bb.i
    i32 3, label %nextprop_.exit
  ]

sw.bb.i:                                          ; preds = %do.body.i
  %0 = load i32, ptr %nextoffset.i, align 4
  %cmp.i = icmp sgt i32 %0, -1
  %..i = select i1 %cmp.i, i32 -11, i32 %0
  br label %nextprop_.exit

sw.epilog.i:                                      ; preds = %do.body.i
  %1 = load i32, ptr %nextoffset.i, align 4
  %cmp2.i = icmp eq i32 %call.i, 4
  br i1 %cmp2.i, label %do.body.i, label %nextprop_.exit

nextprop_.exit:                                   ; preds = %sw.epilog.i, %sw.bb.i, %do.body.i
  %retval.0.i = phi i32 [ %..i, %sw.bb.i ], [ %offset.addr.0.i, %do.body.i ], [ -1, %sw.epilog.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #7
  br label %return

return:                                           ; preds = %nextprop_.exit, %entry
  %retval.0 = phi i32 [ %retval.0.i, %nextprop_.exit ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_check_prop_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_get_property_by_offset(ptr noundef %fdt, i32 noundef %offset, ptr noundef writeonly %lenp) local_unnamed_addr #0 align 64 {
entry:
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = load i8, ptr %version, align 1
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %version, i32 1
  %1 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %version, i32 2
  %2 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %version, i32 3
  %3 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp = icmp ult i32 %or10.i, 16
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %lenp, null
  br i1 %tobool.not, label %return, label %return.sink.split

if.end3:                                          ; preds = %entry
  %call1.i = tail call i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset) #5
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %if.end3
  %tobool.not.i = icmp eq ptr %lenp, null
  br i1 %tobool.not.i, label %return, label %return.sink.split

if.end3.i:                                        ; preds = %if.end3
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %4 = load i8, ptr %off_dt_struct.i.i, align 1
  %conv.i.i.i = zext i8 %4 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 1
  %5 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %5 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 2
  %6 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %6 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 3
  %7 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %7 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %offset
  %tobool5.not.i = icmp eq ptr %lenp, null
  br i1 %tobool5.not.i, label %return, label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %add.ptr1.i.i, i32 0, i32 1
  %8 = load i32, ptr %len.i, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then6.i, %if.then.i, %if.then
  %.sink.i.sink = phi i32 [ -10, %if.then ], [ %8, %if.then6.i ], [ %call1.i, %if.then.i ]
  %retval.0.ph = phi ptr [ null, %if.then ], [ %add.ptr1.i.i, %if.then6.i ], [ null, %if.then.i ]
  store i32 %.sink.i.sink, ptr %lenp, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end3.i, %if.then.i, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then.i ], [ %add.ptr1.i.i, %if.end3.i ], [ %retval.0.ph, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_get_property_namelen(ptr noundef %fdt, i32 noundef %offset, ptr noundef %name, i32 noundef %namelen, ptr noundef %lenp) local_unnamed_addr #0 align 64 {
entry:
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = load i8, ptr %version, align 1
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %version, i32 1
  %1 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %version, i32 2
  %2 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %version, i32 3
  %3 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp = icmp ult i32 %or10.i, 16
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %lenp, null
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 -10, ptr %lenp, align 4
  br label %return

if.end3:                                          ; preds = %entry
  %call4 = tail call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %offset, ptr noundef %name, i32 noundef %namelen, ptr noundef %lenp, ptr noundef null) #6
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi ptr [ %call4, %if.end3 ], [ null, %if.then2 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %offset, ptr noundef %name, i32 noundef %namelen, ptr noundef writeonly %lenp, ptr noundef writeonly %poffset) unnamed_addr #0 align 64 {
entry:
  %nextoffset.i.i34 = alloca i32, align 4
  %slen.i = alloca i32, align 4
  %nextoffset.i.i = alloca i32, align 4
  %call.i = tail call i32 @fdt_check_node_offset_(ptr noundef %fdt, i32 noundef %offset) #5
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.end, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i.i) #7
  store i32 -1, ptr %nextoffset.i.i, align 4, !annotation !9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %sw.epilog.i.i, %if.end.i
  %offset.addr.0.i.i = phi i32 [ %call.i, %if.end.i ], [ %1, %sw.epilog.i.i ]
  %call.i.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0.i.i, ptr noundef nonnull %nextoffset.i.i) #5
  switch i32 %call.i.i, label %sw.epilog.i.i [
    i32 9, label %sw.bb.i.i
    i32 3, label %fdt_first_property_offset.exit
  ]

sw.bb.i.i:                                        ; preds = %do.body.i.i
  %0 = load i32, ptr %nextoffset.i.i, align 4
  %cmp.i.i = icmp sgt i32 %0, -1
  %spec.select = select i1 %cmp.i.i, i32 -11, i32 %0
  br label %fdt_first_property_offset.exit.thread75

sw.epilog.i.i:                                    ; preds = %do.body.i.i
  %1 = load i32, ptr %nextoffset.i.i, align 4
  %cmp2.i.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp2.i.i, label %do.body.i.i, label %fdt_first_property_offset.exit.thread75

fdt_first_property_offset.exit.thread75:          ; preds = %sw.epilog.i.i, %sw.bb.i.i
  %retval.0.i.i.ph = phi i32 [ %spec.select, %sw.bb.i.i ], [ -1, %sw.epilog.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i.i) #7
  br label %for.end

fdt_first_property_offset.exit:                   ; preds = %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i.i) #7
  %cmp66 = icmp sgt i32 %offset.addr.0.i.i, -1
  br i1 %cmp66, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %fdt_first_property_offset.exit
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 1
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 2
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 3
  %tobool5.not.i = icmp eq ptr %lenp, null
  br label %for.body

for.body:                                         ; preds = %fdt_next_property_offset.exit, %for.body.lr.ph
  %offset.addr.067 = phi i32 [ %offset.addr.0.i.i, %for.body.lr.ph ], [ %offset.addr.0.i.i38, %fdt_next_property_offset.exit ]
  %call1.i = call i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset.addr.067) #5
  %cmp.i28 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i28, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %for.body
  br i1 %tobool5.not.i, label %return, label %cleanup.sink.split.i

if.end3.i:                                        ; preds = %for.body
  %2 = load i8, ptr %off_dt_struct.i.i, align 1
  %conv.i.i.i = zext i8 %2 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %3 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %3 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %4 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %4 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %5 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %5 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %offset.addr.067
  br i1 %tobool5.not.i, label %fdt_get_property_by_offset_.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %add.ptr1.i.i, i32 0, i32 1
  %6 = load i32, ptr %len.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then6.i, %if.then.i
  %.sink.i = phi i32 [ %6, %if.then6.i ], [ %call1.i, %if.then.i ]
  %retval.0.ph.i = phi ptr [ %add.ptr1.i.i, %if.then6.i ], [ null, %if.then.i ]
  store i32 %.sink.i, ptr %lenp, align 4
  br label %fdt_get_property_by_offset_.exit

fdt_get_property_by_offset_.exit:                 ; preds = %cleanup.sink.split.i, %if.end3.i
  %retval.0.i29 = phi ptr [ %add.ptr1.i.i, %if.end3.i ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %tobool.not = icmp eq ptr %retval.0.i29, null
  br i1 %tobool.not, label %for.end, label %if.end

if.end:                                           ; preds = %fdt_get_property_by_offset_.exit
  %nameoff = getelementptr inbounds %struct.fdt_property, ptr %retval.0.i29, i32 0, i32 2
  %7 = load i32, ptr %nameoff, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slen.i) #7
  store i32 -1, ptr %slen.i, align 4, !annotation !9
  %call.i30 = call ptr @fdt_get_string(ptr noundef %fdt, i32 noundef %7, ptr noundef nonnull %slen.i) #5
  %tobool.not.i31 = icmp ne ptr %call.i30, null
  %8 = load i32, ptr %slen.i, align 4
  %cmp.i32 = icmp eq i32 %8, %namelen
  %or.cond.i = select i1 %tobool.not.i31, i1 %cmp.i32, i1 false
  br i1 %or.cond.i, label %fdt_string_eq_.exit, label %fdt_string_eq_.exit.thread

fdt_string_eq_.exit.thread:                       ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slen.i) #7
  br label %for.inc

fdt_string_eq_.exit:                              ; preds = %if.end
  %call1.i33 = call i32 @memcmp(ptr noundef nonnull %call.i30, ptr noundef %name, i32 noundef %namelen) #5
  %cmp2.i.not = icmp eq i32 %call1.i33, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slen.i) #7
  br i1 %cmp2.i.not, label %if.then6, label %for.inc

if.then6:                                         ; preds = %fdt_string_eq_.exit
  %tobool7.not = icmp eq ptr %poffset, null
  br i1 %tobool7.not, label %return, label %if.then8

if.then8:                                         ; preds = %if.then6
  store i32 %offset.addr.067, ptr %poffset, align 4
  br label %return

for.inc:                                          ; preds = %fdt_string_eq_.exit, %fdt_string_eq_.exit.thread
  %call.i35 = call i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset.addr.067) #5
  %cmp.i36 = icmp slt i32 %call.i35, 0
  br i1 %cmp.i36, label %for.end, label %if.end.i37

if.end.i37:                                       ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i.i34) #7
  store i32 -1, ptr %nextoffset.i.i34, align 4, !annotation !9
  br label %do.body.i.i40

do.body.i.i40:                                    ; preds = %sw.epilog.i.i45, %if.end.i37
  %offset.addr.0.i.i38 = phi i32 [ %call.i35, %if.end.i37 ], [ %10, %sw.epilog.i.i45 ]
  %call.i.i39 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0.i.i38, ptr noundef nonnull %nextoffset.i.i34) #5
  switch i32 %call.i.i39, label %sw.epilog.i.i45 [
    i32 9, label %sw.bb.i.i43
    i32 3, label %fdt_next_property_offset.exit
  ]

sw.bb.i.i43:                                      ; preds = %do.body.i.i40
  %9 = load i32, ptr %nextoffset.i.i34, align 4
  %cmp.i.i41 = icmp sgt i32 %9, -1
  %spec.select95 = select i1 %cmp.i.i41, i32 -11, i32 %9
  br label %fdt_next_property_offset.exit.thread81

sw.epilog.i.i45:                                  ; preds = %do.body.i.i40
  %10 = load i32, ptr %nextoffset.i.i34, align 4
  %cmp2.i.i44 = icmp eq i32 %call.i.i39, 4
  br i1 %cmp2.i.i44, label %do.body.i.i40, label %fdt_next_property_offset.exit.thread81

fdt_next_property_offset.exit.thread81:           ; preds = %sw.epilog.i.i45, %sw.bb.i.i43
  %retval.0.i.i46.ph = phi i32 [ %spec.select95, %sw.bb.i.i43 ], [ -1, %sw.epilog.i.i45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i.i34) #7
  br label %for.end

fdt_next_property_offset.exit:                    ; preds = %do.body.i.i40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i.i34) #7
  %cmp = icmp sgt i32 %offset.addr.0.i.i38, -1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %fdt_next_property_offset.exit, %fdt_next_property_offset.exit.thread81, %for.inc, %fdt_get_property_by_offset_.exit, %fdt_first_property_offset.exit, %fdt_first_property_offset.exit.thread75, %entry
  %offset.addr.2 = phi i32 [ %offset.addr.0.i.i, %fdt_first_property_offset.exit ], [ %retval.0.i.i.ph, %fdt_first_property_offset.exit.thread75 ], [ %retval.0.i.i46.ph, %fdt_next_property_offset.exit.thread81 ], [ %call.i, %entry ], [ %call.i35, %for.inc ], [ -13, %fdt_get_property_by_offset_.exit ], [ %offset.addr.0.i.i38, %fdt_next_property_offset.exit ]
  %tobool12.not = icmp eq ptr %lenp, null
  br i1 %tobool12.not, label %return, label %if.then13

if.then13:                                        ; preds = %for.end
  store i32 %offset.addr.2, ptr %lenp, align 4
  br label %return

return:                                           ; preds = %if.then13, %for.end, %if.then8, %if.then6, %if.then.i
  %retval.2 = phi ptr [ null, %if.then13 ], [ null, %for.end ], [ %retval.0.i29, %if.then8 ], [ %retval.0.i29, %if.then6 ], [ null, %if.then.i ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_get_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef %lenp) local_unnamed_addr #0 align 64 {
entry:
  %call = tail call i32 @strlen(ptr noundef %name) #5
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %cmp.i = icmp ult i32 %or10.i.i, 16
  br i1 %cmp.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %entry
  %tobool.not.i = icmp eq ptr %lenp, null
  br i1 %tobool.not.i, label %fdt_get_property_namelen.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  store i32 -10, ptr %lenp, align 4
  br label %fdt_get_property_namelen.exit

if.end3.i:                                        ; preds = %entry
  %call4.i = tail call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %call, ptr noundef %lenp, ptr noundef null) #5
  br label %fdt_get_property_namelen.exit

fdt_get_property_namelen.exit:                    ; preds = %if.end3.i, %if.then2.i, %if.then.i
  %retval.0.i = phi ptr [ %call4.i, %if.end3.i ], [ null, %if.then2.i ], [ null, %if.then.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_getprop_namelen(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %namelen, ptr noundef %lenp) local_unnamed_addr #0 align 64 {
entry:
  %poffset = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset) #7
  store i32 -1, ptr %poffset, align 4, !annotation !9
  %call = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %namelen, ptr noundef %lenp, ptr noundef nonnull %poffset) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = load i8, ptr %version, align 1
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %version, i32 1
  %1 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %version, i32 2
  %2 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %version, i32 3
  %3 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp = icmp ult i32 %or10.i, 16
  br i1 %cmp, label %land.lhs.true3, label %if.end9

land.lhs.true3:                                   ; preds = %if.end
  %4 = load i32, ptr %poffset, align 4
  %add = add i32 %4, 4
  %rem = and i32 %add, 7
  %tobool4.not = icmp eq i32 %rem, 0
  br i1 %tobool4.not, label %if.end9, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %len = getelementptr inbounds %struct.fdt_property, ptr %call, i32 0, i32 1
  %5 = load i32, ptr %len, align 4
  %cmp7 = icmp ugt i32 %5, 7
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true5
  %add.ptr = getelementptr %struct.fdt_property, ptr %call, i32 1, i32 1
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true5, %land.lhs.true3, %if.end
  %data10 = getelementptr inbounds %struct.fdt_property, ptr %call, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %entry
  %retval.0 = phi ptr [ %data10, %if.end9 ], [ %add.ptr, %if.then8 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_getprop_by_offset(ptr noundef %fdt, i32 noundef %offset, ptr noundef writeonly %namep, ptr noundef writeonly %lenp) local_unnamed_addr #0 align 64 {
entry:
  %namelen = alloca i32, align 4
  %call1.i = tail call i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset) #5
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %entry
  %tobool.not.i = icmp eq ptr %lenp, null
  br i1 %tobool.not.i, label %cleanup30, label %cleanup.sink.split.i

if.end3.i:                                        ; preds = %entry
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %0 = load i8, ptr %off_dt_struct.i.i, align 1
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %offset
  %tobool5.not.i = icmp eq ptr %lenp, null
  br i1 %tobool5.not.i, label %fdt_get_property_by_offset_.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %add.ptr1.i.i, i32 0, i32 1
  %4 = load i32, ptr %len.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then6.i, %if.then.i
  %.sink.i = phi i32 [ %4, %if.then6.i ], [ %call1.i, %if.then.i ]
  %retval.0.ph.i = phi ptr [ %add.ptr1.i.i, %if.then6.i ], [ null, %if.then.i ]
  store i32 %.sink.i, ptr %lenp, align 4
  br label %fdt_get_property_by_offset_.exit

fdt_get_property_by_offset_.exit:                 ; preds = %cleanup.sink.split.i, %if.end3.i
  %retval.0.i = phi ptr [ %add.ptr1.i.i, %if.end3.i ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %cleanup30, label %if.end

if.end:                                           ; preds = %fdt_get_property_by_offset_.exit
  %tobool1.not = icmp eq ptr %namep, null
  br i1 %tobool1.not, label %if.end18, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %namelen) #7
  store i32 -1, ptr %namelen, align 4, !annotation !9
  %nameoff = getelementptr inbounds %struct.fdt_property, ptr %retval.0.i, i32 0, i32 2
  %5 = load i32, ptr %nameoff, align 4
  %call6 = call ptr @fdt_get_string(ptr noundef %fdt, i32 noundef %5, ptr noundef nonnull %namelen) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then2
  %tobool9.not = icmp eq ptr %lenp, null
  br i1 %tobool9.not, label %cleanup30.critedge, label %if.then10

if.then10:                                        ; preds = %if.then8
  %6 = load i32, ptr %namelen, align 4
  store i32 %6, ptr %lenp, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen) #7
  br label %cleanup30

if.end12:                                         ; preds = %if.then2
  store ptr %call6, ptr %namep, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen) #7
  br label %if.end18

if.end18:                                         ; preds = %if.end12, %if.end
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %7 = load i8, ptr %version, align 1
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %version, i32 1
  %8 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %8 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %version, i32 2
  %9 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %9 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %version, i32 3
  %10 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %10 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp = icmp ult i32 %or10.i, 16
  br i1 %cmp, label %land.lhs.true21, label %if.end27

land.lhs.true21:                                  ; preds = %if.end18
  %add = add i32 %offset, 4
  %rem = and i32 %add, 7
  %tobool22.not = icmp eq i32 %rem, 0
  br i1 %tobool22.not, label %if.end27, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %len = getelementptr inbounds %struct.fdt_property, ptr %retval.0.i, i32 0, i32 1
  %11 = load i32, ptr %len, align 4
  %cmp25 = icmp ugt i32 %11, 7
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %land.lhs.true23
  %add.ptr = getelementptr %struct.fdt_property, ptr %retval.0.i, i32 1, i32 1
  br label %cleanup30

if.end27:                                         ; preds = %land.lhs.true23, %land.lhs.true21, %if.end18
  %data28 = getelementptr inbounds %struct.fdt_property, ptr %retval.0.i, i32 0, i32 3
  br label %cleanup30

cleanup30.critedge:                               ; preds = %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen) #7
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup30.critedge, %if.end27, %if.then26, %if.then10, %fdt_get_property_by_offset_.exit, %if.then.i
  %retval.1 = phi ptr [ %data28, %if.end27 ], [ %add.ptr, %if.then26 ], [ null, %fdt_get_property_by_offset_.exit ], [ null, %cleanup30.critedge ], [ null, %if.then10 ], [ null, %if.then.i ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef %lenp) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i = alloca i32, align 4
  %call = tail call i32 @strlen(ptr noundef %name) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i) #7
  store i32 -1, ptr %poffset.i, align 4, !annotation !9
  %call.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %call, ptr noundef %lenp, ptr noundef nonnull %poffset.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %fdt_getprop_namelen.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %cmp.i = icmp ult i32 %or10.i.i, 16
  br i1 %cmp.i, label %land.lhs.true3.i, label %if.end9.i

land.lhs.true3.i:                                 ; preds = %if.end.i
  %4 = load i32, ptr %poffset.i, align 4
  %add.i = add i32 %4, 4
  %rem.i = and i32 %add.i, 7
  %tobool4.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool4.not.i, label %if.end9.i, label %land.lhs.true5.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %call.i, i32 0, i32 1
  %5 = load i32, ptr %len.i, align 4
  %cmp7.i = icmp ugt i32 %5, 7
  br i1 %cmp7.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %land.lhs.true5.i
  %add.ptr.i = getelementptr %struct.fdt_property, ptr %call.i, i32 1, i32 1
  br label %fdt_getprop_namelen.exit

if.end9.i:                                        ; preds = %land.lhs.true5.i, %land.lhs.true3.i, %if.end.i
  %data10.i = getelementptr inbounds %struct.fdt_property, ptr %call.i, i32 0, i32 3
  br label %fdt_getprop_namelen.exit

fdt_getprop_namelen.exit:                         ; preds = %if.end9.i, %if.then8.i, %entry
  %retval.0.i = phi ptr [ %data10.i, %if.end9.i ], [ %add.ptr.i, %if.then8.i ], [ null, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i) #7
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_get_alias(ptr noundef %fdt, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %call = tail call i32 @strlen(ptr noundef %name) #5
  %call1 = tail call ptr @fdt_get_alias_namelen(ptr noundef %fdt, ptr noundef %name, i32 noundef %call) #6
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_get_path(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  %depth = alloca i32, align 4
  %namelen = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %namelen) #7
  store i32 -1, ptr %namelen, align 4, !annotation !9
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup52, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %cmp1 = icmp slt i32 %buflen, 2
  br i1 %cmp1, label %cleanup52, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  store i32 0, ptr %depth, align 4
  %cmp593 = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp593, label %while.cond.preheader, label %cleanup52

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %if.end3
  %0 = phi i32 [ %.pre, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3 ]
  %offset.096 = phi i32 [ %call41, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3 ]
  %p.095 = phi i32 [ %p.3, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3 ]
  %pdepth.094 = phi i32 [ %pdepth.2, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3 ]
  %cmp688 = icmp sgt i32 %pdepth.094, %0
  br i1 %cmp688, label %do.body.preheader, label %while.end

do.body.preheader:                                ; preds = %do.end, %while.cond.preheader
  %p.190 = phi i32 [ %dec, %do.end ], [ %p.095, %while.cond.preheader ]
  %pdepth.189 = phi i32 [ %dec9, %do.end ], [ %pdepth.094, %while.cond.preheader ]
  br label %do.body

do.body:                                          ; preds = %do.body, %do.body.preheader
  %p.2 = phi i32 [ %dec, %do.body ], [ %p.190, %do.body.preheader ]
  %dec = add i32 %p.2, -1
  %sub = add i32 %p.2, -2
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %1 = load i8, ptr %arrayidx, align 1
  %cmp7.not = icmp eq i8 %1, 47
  br i1 %cmp7.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %dec9 = add nsw i32 %pdepth.189, -1
  %cmp6 = icmp sgt i32 %dec9, %0
  br i1 %cmp6, label %do.body.preheader, label %if.then12

while.end:                                        ; preds = %while.cond.preheader
  %cmp10.not = icmp slt i32 %pdepth.094, %0
  br i1 %cmp10.not, label %if.end25, label %if.then12

if.then12:                                        ; preds = %while.end, %do.end
  %p.1.lcssa104 = phi i32 [ %p.095, %while.end ], [ %dec, %do.end ]
  %pdepth.1.lcssa103 = phi i32 [ %pdepth.094, %while.end ], [ %0, %do.end ]
  %call13 = call ptr @fdt_get_name(ptr noundef %fdt, i32 noundef %offset.096, ptr noundef nonnull %namelen) #6
  %tobool.not = icmp eq ptr %call13, null
  %2 = load i32, ptr %namelen, align 4
  br i1 %tobool.not, label %cleanup52, label %if.end15

if.end15:                                         ; preds = %if.then12
  %add = add i32 %p.1.lcssa104, 1
  %add16 = add i32 %add, %2
  %cmp17.not = icmp sgt i32 %add16, %buflen
  br i1 %cmp17.not, label %if.end25, label %if.then19

if.then19:                                        ; preds = %if.end15
  %add.ptr = getelementptr i8, ptr %buf, i32 %p.1.lcssa104
  %call20 = call ptr @__memcpy(ptr noundef %add.ptr, ptr noundef nonnull %call13, i32 noundef %2) #5
  %3 = load i32, ptr %namelen, align 4
  %add21 = add i32 %3, %p.1.lcssa104
  %inc = add i32 %add21, 1
  %arrayidx22 = getelementptr i8, ptr %buf, i32 %add21
  store i8 47, ptr %arrayidx22, align 1
  %inc23 = add i32 %pdepth.1.lcssa103, 1
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.end15, %while.end
  %pdepth.2 = phi i32 [ %inc23, %if.then19 ], [ %pdepth.1.lcssa103, %if.end15 ], [ %pdepth.094, %while.end ]
  %p.3 = phi i32 [ %inc, %if.then19 ], [ %p.1.lcssa104, %if.end15 ], [ %p.095, %while.end ]
  %cmp26 = icmp eq i32 %offset.096, %nodeoffset
  br i1 %cmp26, label %if.then28, label %for.inc

if.then28:                                        ; preds = %if.end25
  %4 = load i32, ptr %depth, align 4
  %add29 = add i32 %4, 1
  %cmp30 = icmp slt i32 %pdepth.2, %add29
  br i1 %cmp30, label %cleanup52, label %if.end33

if.end33:                                         ; preds = %if.then28
  %cmp34 = icmp sgt i32 %p.3, 1
  %dec37 = sext i1 %cmp34 to i32
  %spec.select = add i32 %p.3, %dec37
  %arrayidx39 = getelementptr i8, ptr %buf, i32 %spec.select
  store i8 0, ptr %arrayidx39, align 1
  br label %cleanup52

for.inc:                                          ; preds = %if.end25
  %call41 = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.096, ptr noundef nonnull %depth) #5
  %cmp4 = icmp sgt i32 %call41, -1
  %cmp5 = icmp sle i32 %call41, %nodeoffset
  %5 = and i1 %cmp4, %cmp5
  br i1 %5, label %for.inc.while.cond.preheader_crit_edge, label %for.end

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  %.pre = load i32, ptr %depth, align 4
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc
  %6 = icmp sgt i32 %call41, -2
  br i1 %6, label %cleanup52, label %if.else

if.else:                                          ; preds = %for.end
  %cmp47 = icmp eq i32 %call41, -4
  %.offset.0 = select i1 %cmp47, i32 -11, i32 %call41
  br label %cleanup52

cleanup52:                                        ; preds = %if.else, %for.end, %if.end33, %if.then28, %if.then12, %if.end3, %cleanup.cont, %entry
  %retval.1 = phi i32 [ 0, %if.end33 ], [ %call, %entry ], [ -3, %cleanup.cont ], [ -3, %if.then28 ], [ -4, %for.end ], [ %.offset.0, %if.else ], [ -4, %if.end3 ], [ %2, %if.then12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare ptr @__memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_supernode_atdepth_offset(ptr noundef %fdt, i32 noundef %nodeoffset, i32 noundef %supernodedepth, ptr noundef writeonly %nodedepth) local_unnamed_addr #0 align 64 {
entry:
  %depth = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth) #7
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup28, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %cmp1 = icmp slt i32 %supernodedepth, 0
  br i1 %cmp1, label %cleanup28, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  store i32 0, ptr %depth, align 4
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
  store i32 %.lcssa, ptr %nodedepth, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then10
  %cmp13 = icmp slt i32 %.lcssa, %supernodedepth
  %.spec.select = select i1 %cmp13, i32 -1, i32 %spec.select.lcssa
  br label %cleanup28

for.inc:                                          ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %spec.select59 = phi i32 [ %spec.select, %for.inc.for.body_crit_edge ], [ %spec.select56, %for.body.preheader ]
  %offset.04658 = phi i32 [ %call16, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call16 = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.04658, ptr noundef nonnull %depth) #5
  %cmp4 = icmp sgt i32 %call16, -1
  %cmp5 = icmp sle i32 %call16, %nodeoffset
  %0 = and i1 %cmp4, %cmp5
  br i1 %0, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load i32, ptr %depth, align 4
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_node_depth(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 align 64 {
entry:
  %depth.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth.i) #7
  %call.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #5
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %fdt_supernode_atdepth_offset.exit.thread, label %cleanup.cont.i

cleanup.cont.i:                                   ; preds = %entry
  store i32 0, ptr %depth.i, align 4
  %cmp545.i = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp545.i, label %for.body.i.preheader, label %fdt_supernode_atdepth_offset.exit.thread

for.body.i.preheader:                             ; preds = %cleanup.cont.i
  %cmp9.i11 = icmp eq i32 %nodeoffset, 0
  br i1 %cmp9.i11, label %fdt_supernode_atdepth_offset.exit.thread22, label %for.inc.i

fdt_supernode_atdepth_offset.exit.thread22:       ; preds = %for.body.i.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #7
  br label %cleanup

if.then10.i:                                      ; preds = %for.inc.for.body_crit_edge.i
  %cmp13.i = icmp slt i32 %.pre.i, 0
  br i1 %cmp13.i, label %fdt_supernode_atdepth_offset.exit.thread, label %fdt_supernode_atdepth_offset.exit

for.inc.i:                                        ; preds = %for.inc.for.body_crit_edge.i, %for.body.i.preheader
  %spec.select.i13 = phi i32 [ %spec.select.i, %for.inc.for.body_crit_edge.i ], [ 0, %for.body.i.preheader ]
  %offset.046.i12 = phi i32 [ %call16.i, %for.inc.for.body_crit_edge.i ], [ 0, %for.body.i.preheader ]
  %call16.i = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.046.i12, ptr noundef nonnull %depth.i) #5
  %cmp4.i = icmp sgt i32 %call16.i, -1
  %cmp5.i = icmp sle i32 %call16.i, %nodeoffset
  %0 = and i1 %cmp4.i, %cmp5.i
  br i1 %0, label %for.inc.for.body_crit_edge.i, label %for.end.i

for.inc.for.body_crit_edge.i:                     ; preds = %for.inc.i
  %.pre.i = load i32, ptr %depth.i, align 4
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #7
  br label %if.then

fdt_supernode_atdepth_offset.exit:                ; preds = %if.then10.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #7
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

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_parent_offset(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 align 64 {
entry:
  %depth.i = alloca i32, align 4
  %depth.i.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth.i.i) #7
  %call.i.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #5
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.thread, label %cleanup.cont.i.i

cleanup.cont.i.i:                                 ; preds = %entry
  store i32 0, ptr %depth.i.i, align 4
  %cmp545.i.i = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp545.i.i, label %for.body.i.preheader.i, label %if.then.i.thread

for.body.i.preheader.i:                           ; preds = %cleanup.cont.i.i
  %cmp9.i11.i = icmp eq i32 %nodeoffset, 0
  br i1 %cmp9.i11.i, label %fdt_supernode_atdepth_offset.exit.thread22.i, label %for.inc.i.i

fdt_supernode_atdepth_offset.exit.thread22.i:     ; preds = %for.body.i.preheader.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i.i) #7
  br label %if.end

if.then10.i.i:                                    ; preds = %for.inc.for.body_crit_edge.i.i
  %cmp13.i.i = icmp slt i32 %.pre.i.i, 0
  br i1 %cmp13.i.i, label %if.then.i.thread, label %fdt_supernode_atdepth_offset.exit.i

for.inc.i.i:                                      ; preds = %for.inc.for.body_crit_edge.i.i, %for.body.i.preheader.i
  %spec.select.i13.i = phi i32 [ %spec.select.i.i, %for.inc.for.body_crit_edge.i.i ], [ 0, %for.body.i.preheader.i ]
  %offset.046.i12.i = phi i32 [ %call16.i.i, %for.inc.for.body_crit_edge.i.i ], [ 0, %for.body.i.preheader.i ]
  %call16.i.i = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.046.i12.i, ptr noundef nonnull %depth.i.i) #5
  %cmp4.i.i = icmp sgt i32 %call16.i.i, -1
  %cmp5.i.i = icmp sle i32 %call16.i.i, %nodeoffset
  %0 = and i1 %cmp4.i.i, %cmp5.i.i
  br i1 %0, label %for.inc.for.body_crit_edge.i.i, label %for.end.i.i

for.inc.for.body_crit_edge.i.i:                   ; preds = %for.inc.i.i
  %.pre.i.i = load i32, ptr %depth.i.i, align 4
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i.i) #7
  br label %select.unfold

fdt_supernode_atdepth_offset.exit.i:              ; preds = %if.then10.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i.i) #7
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth.i) #7
  %call.i = call i32 @fdt_ro_probe_(ptr noundef %fdt) #5
  %cmp.i6 = icmp slt i32 %call.i, 0
  br i1 %cmp.i6, label %fdt_supernode_atdepth_offset.exit, label %cleanup.cont.i

cleanup.cont.i:                                   ; preds = %if.end
  %cmp1.i = icmp eq i32 %retval.0.i, 0
  br i1 %cmp1.i, label %fdt_supernode_atdepth_offset.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %cleanup.cont.i
  store i32 0, ptr %depth.i, align 4
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
  %call16.i = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.046.i18, ptr noundef nonnull %depth.i) #5
  %cmp4.i = icmp sgt i32 %call16.i, -1
  %cmp5.i = icmp sle i32 %call16.i, %nodeoffset
  %2 = and i1 %cmp4.i, %cmp5.i
  br i1 %2, label %for.inc.for.body_crit_edge.i, label %for.end.i

for.inc.for.body_crit_edge.i:                     ; preds = %for.inc.i
  %.pre.i = load i32, ptr %depth.i, align 4
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fdt_supernode_atdepth_offset.exit, %select.unfold, %if.then.i
  %retval.0 = phi i32 [ %retval.1.i, %fdt_supernode_atdepth_offset.exit ], [ %retval.1.i8.i11, %select.unfold ], [ -13, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_node_offset_by_prop_value(ptr noundef %fdt, i32 noundef %startoffset, ptr noundef %propname, ptr noundef %propval, i32 noundef %proplen) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i.i = alloca i32, align 4
  %len = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  store i32 -1, ptr %len, align 4, !annotation !9
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup11, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %call1 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %startoffset, ptr noundef null) #5
  %cmp224 = icmp sgt i32 %call1, -1
  br i1 %cmp224, label %for.body.lr.ph, label %cleanup11

for.body.lr.ph:                                   ; preds = %cleanup.cont
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %arrayidx1.i.i.i = getelementptr i8, ptr %version.i.i, i32 1
  %arrayidx4.i.i.i = getelementptr i8, ptr %version.i.i, i32 2
  %arrayidx8.i.i.i = getelementptr i8, ptr %version.i.i, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %offset.025 = phi i32 [ %call1, %for.body.lr.ph ], [ %call10, %for.inc ]
  %call.i = call i32 @strlen(ptr noundef %propname) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #7
  store i32 -1, ptr %poffset.i.i, align 4, !annotation !9
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %offset.025, ptr noundef %propname, i32 noundef %call.i, ptr noundef nonnull %len, ptr noundef nonnull %poffset.i.i) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop.exit.thread, label %if.end.i.i

fdt_getprop.exit.thread:                          ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #7
  br label %for.inc

if.end.i.i:                                       ; preds = %for.body
  %0 = load i8, ptr %version.i.i, align 1
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end9.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %4 = load i32, ptr %poffset.i.i, align 4
  %add.i.i = add i32 %4, 4
  %rem.i.i = and i32 %add.i.i, 7
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 1
  %5 = load i32, ptr %len.i.i, align 4
  %cmp7.i.i = icmp ugt i32 %5, 7
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end9.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true5.i.i
  %add.ptr.i.i = getelementptr %struct.fdt_property, ptr %call.i.i, i32 1, i32 1
  br label %fdt_getprop.exit

if.end9.i.i:                                      ; preds = %land.lhs.true5.i.i, %land.lhs.true3.i.i, %if.end.i.i
  %data10.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 3
  br label %fdt_getprop.exit

fdt_getprop.exit:                                 ; preds = %if.end9.i.i, %if.then8.i.i
  %retval.0.i.i = phi ptr [ %data10.i.i, %if.end9.i.i ], [ %add.ptr.i.i, %if.then8.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #7
  %tobool.not = icmp ne ptr %retval.0.i.i, null
  %6 = load i32, ptr %len, align 4
  %cmp4 = icmp eq i32 %6, %proplen
  %or.cond = select i1 %tobool.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %land.lhs.true5, label %for.inc

land.lhs.true5:                                   ; preds = %fdt_getprop.exit
  %call6 = call i32 @memcmp(ptr noundef nonnull %retval.0.i.i, ptr noundef %propval, i32 noundef %proplen) #5
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %cleanup11, label %for.inc

for.inc:                                          ; preds = %land.lhs.true5, %fdt_getprop.exit, %fdt_getprop.exit.thread
  %call10 = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.025, ptr noundef null) #5
  %cmp2 = icmp sgt i32 %call10, -1
  br i1 %cmp2, label %for.body, label %cleanup11

cleanup11:                                        ; preds = %for.inc, %land.lhs.true5, %cleanup.cont, %entry
  %retval.1 = phi i32 [ %call, %entry ], [ %call1, %cleanup.cont ], [ %offset.025, %land.lhs.true5 ], [ %call10, %for.inc ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_node_offset_by_phandle(ptr noundef %fdt, i32 noundef %phandle) local_unnamed_addr #0 align 64 {
entry:
  %0 = add i32 %phandle, 1
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %cleanup12, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #5
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %cleanup12, label %cleanup.cont

cleanup.cont:                                     ; preds = %if.end
  %call5 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef -1, ptr noundef null) #5
  %cmp622 = icmp sgt i32 %call5, -1
  br i1 %cmp622, label %for.body, label %cleanup12

for.body:                                         ; preds = %for.inc, %cleanup.cont
  %offset.023 = phi i32 [ %call11, %for.inc ], [ %call5, %cleanup.cont ]
  %call7 = tail call i32 @fdt_get_phandle(ptr noundef %fdt, i32 noundef %offset.023) #6
  %cmp8 = icmp eq i32 %call7, %phandle
  br i1 %cmp8, label %cleanup12, label %for.inc

for.inc:                                          ; preds = %for.body
  %call11 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.023, ptr noundef null) #5
  %cmp6 = icmp sgt i32 %call11, -1
  br i1 %cmp6, label %for.body, label %cleanup12

cleanup12:                                        ; preds = %for.inc, %for.body, %cleanup.cont, %if.end, %entry
  %retval.1 = phi i32 [ %call, %if.end ], [ -6, %entry ], [ %call5, %cleanup.cont ], [ %offset.023, %for.body ], [ %call11, %for.inc ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_stringlist_contains(ptr noundef %strlist, i32 noundef %listlen, ptr noundef %str) local_unnamed_addr #0 align 64 {
entry:
  %call = tail call i32 @strlen(ptr noundef %str) #5
  %add = add i32 %call, 1
  %cmp.not16 = icmp sgt i32 %call, %listlen
  br i1 %cmp.not16, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end5, %entry
  %listlen.addr.018 = phi i32 [ %sub, %if.end5 ], [ %listlen, %entry ]
  %strlist.addr.017 = phi ptr [ %add.ptr, %if.end5 ], [ %strlist, %entry ]
  %call1 = tail call i32 @memcmp(ptr noundef %str, ptr noundef %strlist.addr.017, i32 noundef %add) #5
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %while.body
  %call3 = tail call ptr @memchr(ptr noundef %strlist.addr.017, i32 noundef 0, i32 noundef %listlen.addr.018) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint ptr %call3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %strlist.addr.017 to i32
  %0 = xor i32 %sub.ptr.lhs.cast, -1
  %add6.neg = add i32 %listlen.addr.018, %sub.ptr.rhs.cast
  %sub = add i32 %add6.neg, %0
  %add.ptr = getelementptr i8, ptr %call3, i32 1
  %cmp.not = icmp slt i32 %sub, %call
  br i1 %cmp.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %if.end5, %if.end, %while.body, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end5 ], [ 0, %if.end ], [ 1, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_stringlist_count(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %property) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i.i = alloca i32, align 4
  %length = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #7
  store i32 -1, ptr %length, align 4, !annotation !9
  %call.i = tail call i32 @strlen(ptr noundef %property) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #7
  store i32 -1, ptr %poffset.i.i, align 4, !annotation !9
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %property, i32 noundef %call.i, ptr noundef nonnull %length, ptr noundef nonnull %poffset.i.i) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop.exit.thread, label %if.end.i.i

fdt_getprop.exit.thread:                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #7
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = load i8, ptr %version.i.i, align 1
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %version.i.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %version.i.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %version.i.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end9.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %4 = load i32, ptr %poffset.i.i, align 4
  %add.i.i = add i32 %4, 4
  %rem.i.i = and i32 %add.i.i, 7
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 1
  %5 = load i32, ptr %len.i.i, align 4
  %cmp7.i.i = icmp ugt i32 %5, 7
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end9.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true5.i.i
  %add.ptr.i.i = getelementptr %struct.fdt_property, ptr %call.i.i, i32 1, i32 1
  br label %fdt_getprop.exit

if.end9.i.i:                                      ; preds = %land.lhs.true5.i.i, %land.lhs.true3.i.i, %if.end.i.i
  %data10.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 3
  br label %fdt_getprop.exit

fdt_getprop.exit:                                 ; preds = %if.end9.i.i, %if.then8.i.i
  %retval.0.i.i = phi ptr [ %data10.i.i, %if.end9.i.i ], [ %add.ptr.i.i, %if.then8.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #7
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %fdt_getprop.exit, %fdt_getprop.exit.thread
  %6 = load i32, ptr %length, align 4
  br label %cleanup

if.end:                                           ; preds = %fdt_getprop.exit
  %7 = load i32, ptr %length, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i.i, i32 %7
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %cmp21 = icmp ult ptr %retval.0.i.i, %add.ptr
  br i1 %cmp21, label %while.body, label %cleanup

while.body:                                       ; preds = %if.end5, %if.end
  %count.023 = phi i32 [ %inc, %if.end5 ], [ 0, %if.end ]
  %list.022 = phi ptr [ %add.ptr2, %if.end5 ], [ %retval.0.i.i, %if.end ]
  %sub.ptr.rhs.cast = ptrtoint ptr %list.022 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call1 = call i32 @strnlen(ptr noundef %list.022, i32 noundef %sub.ptr.sub) #5
  %add = add i32 %call1, 1
  store i32 %add, ptr %length, align 4
  %add.ptr2 = getelementptr i8, ptr %list.022, i32 %add
  %cmp3 = icmp ugt ptr %add.ptr2, %add.ptr
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %while.body
  %inc = add i32 %count.023, 1
  %cmp = icmp ult ptr %add.ptr2, %add.ptr
  br i1 %cmp, label %while.body, label %cleanup

cleanup:                                          ; preds = %if.end5, %while.body, %if.end, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ 0, %if.end ], [ -15, %while.body ], [ %inc, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @strnlen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_stringlist_search(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %property, ptr noundef %string) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i.i = alloca i32, align 4
  %length = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #7
  store i32 -1, ptr %length, align 4, !annotation !9
  %call.i = tail call i32 @strlen(ptr noundef %property) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #7
  store i32 -1, ptr %poffset.i.i, align 4, !annotation !9
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %property, i32 noundef %call.i, ptr noundef nonnull %length, ptr noundef nonnull %poffset.i.i) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop.exit.thread, label %if.end.i.i

fdt_getprop.exit.thread:                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #7
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = load i8, ptr %version.i.i, align 1
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %version.i.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %version.i.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %version.i.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end9.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %4 = load i32, ptr %poffset.i.i, align 4
  %add.i.i = add i32 %4, 4
  %rem.i.i = and i32 %add.i.i, 7
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 1
  %5 = load i32, ptr %len.i.i, align 4
  %cmp7.i.i = icmp ugt i32 %5, 7
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end9.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true5.i.i
  %add.ptr.i.i = getelementptr %struct.fdt_property, ptr %call.i.i, i32 1, i32 1
  br label %fdt_getprop.exit

if.end9.i.i:                                      ; preds = %land.lhs.true5.i.i, %land.lhs.true3.i.i, %if.end.i.i
  %data10.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 3
  br label %fdt_getprop.exit

fdt_getprop.exit:                                 ; preds = %if.end9.i.i, %if.then8.i.i
  %retval.0.i.i = phi ptr [ %data10.i.i, %if.end9.i.i ], [ %add.ptr.i.i, %if.then8.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #7
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %fdt_getprop.exit, %fdt_getprop.exit.thread
  %6 = load i32, ptr %length, align 4
  br label %cleanup

if.end:                                           ; preds = %fdt_getprop.exit
  %call1 = call i32 @strlen(ptr noundef %string) #5
  %7 = load i32, ptr %length, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i.i, i32 %7
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %cmp31 = icmp ult ptr %retval.0.i.i, %add.ptr
  br i1 %cmp31, label %while.body, label %cleanup

while.body:                                       ; preds = %if.end12, %if.end
  %list.034 = phi ptr [ %add.ptr13, %if.end12 ], [ %retval.0.i.i, %if.end ]
  %idx.032 = phi i32 [ %inc, %if.end12 ], [ 0, %if.end ]
  %sub.ptr.rhs.cast = ptrtoint ptr %list.034 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call2 = call i32 @strnlen(ptr noundef %list.034, i32 noundef %sub.ptr.sub) #5
  %add3 = add i32 %call2, 1
  store i32 %add3, ptr %length, align 4
  %add.ptr4 = getelementptr i8, ptr %list.034, i32 %add3
  %cmp5 = icmp ugt ptr %add.ptr4, %add.ptr
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %while.body
  %cmp8 = icmp eq i32 %call2, %call1
  br i1 %cmp8, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end7
  %call9 = call i32 @memcmp(ptr noundef %list.034, ptr noundef %string, i32 noundef %add3) #5
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %cleanup, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load i32, ptr %length, align 4
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end7
  %8 = phi i32 [ %.pre, %land.lhs.true.if.end12_crit_edge ], [ %add3, %if.end7 ]
  %add.ptr13 = getelementptr i8, ptr %list.034, i32 %8
  %inc = add i32 %idx.032, 1
  %cmp = icmp ult ptr %add.ptr13, %add.ptr
  br i1 %cmp, label %while.body, label %cleanup

cleanup:                                          ; preds = %if.end12, %land.lhs.true, %while.body, %if.end, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ -1, %if.end ], [ -15, %while.body ], [ %idx.032, %land.lhs.true ], [ -1, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_stringlist_get(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %property, i32 noundef %idx, ptr noundef writeonly %lenp) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i.i = alloca i32, align 4
  %length = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #7
  store i32 -1, ptr %length, align 4, !annotation !9
  %call.i = tail call i32 @strlen(ptr noundef %property) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #7
  store i32 -1, ptr %poffset.i.i, align 4, !annotation !9
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %property, i32 noundef %call.i, ptr noundef nonnull %length, ptr noundef nonnull %poffset.i.i) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop.exit.thread, label %if.end.i.i

fdt_getprop.exit.thread:                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #7
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = load i8, ptr %version.i.i, align 1
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %version.i.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %version.i.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %version.i.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end9.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %4 = load i32, ptr %poffset.i.i, align 4
  %add.i.i = add i32 %4, 4
  %rem.i.i = and i32 %add.i.i, 7
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 1
  %5 = load i32, ptr %len.i.i, align 4
  %cmp7.i.i = icmp ugt i32 %5, 7
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end9.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true5.i.i
  %add.ptr.i.i = getelementptr %struct.fdt_property, ptr %call.i.i, i32 1, i32 1
  br label %fdt_getprop.exit

if.end9.i.i:                                      ; preds = %land.lhs.true5.i.i, %land.lhs.true3.i.i, %if.end.i.i
  %data10.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 3
  br label %fdt_getprop.exit

fdt_getprop.exit:                                 ; preds = %if.end9.i.i, %if.then8.i.i
  %retval.0.i.i = phi ptr [ %data10.i.i, %if.end9.i.i ], [ %add.ptr.i.i, %if.then8.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #7
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %fdt_getprop.exit, %fdt_getprop.exit.thread
  %tobool1.not = icmp eq ptr %lenp, null
  br i1 %tobool1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.then
  %6 = load i32, ptr %length, align 4
  br label %cleanup.sink.split

if.end3:                                          ; preds = %fdt_getprop.exit
  %7 = load i32, ptr %length, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i.i, i32 %7
  %cmp46 = icmp ult ptr %retval.0.i.i, %add.ptr
  br i1 %cmp46, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end3
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  br label %while.body

while.cond:                                       ; preds = %if.end11
  %dec = add i32 %idx.addr.047, -1
  %cmp = icmp ult ptr %add.ptr5, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond, %while.body.lr.ph
  %list.048 = phi ptr [ %retval.0.i.i, %while.body.lr.ph ], [ %add.ptr5, %while.cond ]
  %idx.addr.047 = phi i32 [ %idx, %while.body.lr.ph ], [ %dec, %while.cond ]
  %sub.ptr.rhs.cast = ptrtoint ptr %list.048 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call4 = call i32 @strnlen(ptr noundef %list.048, i32 noundef %sub.ptr.sub) #5
  %add = add i32 %call4, 1
  store i32 %add, ptr %length, align 4
  %add.ptr5 = getelementptr i8, ptr %list.048, i32 %add
  %cmp6 = icmp ugt ptr %add.ptr5, %add.ptr
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %while.body
  %tobool8.not = icmp eq ptr %lenp, null
  br i1 %tobool8.not, label %cleanup, label %cleanup.sink.split

if.end11:                                         ; preds = %while.body
  %cmp12 = icmp eq i32 %idx.addr.047, 0
  br i1 %cmp12, label %if.then13, label %while.cond

if.then13:                                        ; preds = %if.end11
  %tobool14.not = icmp eq ptr %lenp, null
  br i1 %tobool14.not, label %cleanup, label %cleanup.sink.split

while.end:                                        ; preds = %while.cond, %if.end3
  %tobool19.not = icmp eq ptr %lenp, null
  br i1 %tobool19.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end, %if.then13, %if.then7, %if.then2
  %.sink = phi i32 [ %6, %if.then2 ], [ -15, %if.then7 ], [ %call4, %if.then13 ], [ -1, %while.end ]
  %retval.0.ph = phi ptr [ null, %if.then2 ], [ null, %if.then7 ], [ %list.048, %if.then13 ], [ null, %while.end ]
  store i32 %.sink, ptr %lenp, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end, %if.then13, %if.then7, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then7 ], [ %list.048, %if.then13 ], [ null, %while.end ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_node_check_compatible(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %compatible) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i.i = alloca i32, align 4
  %len = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  store i32 -1, ptr %len, align 4, !annotation !9
  %call.i = tail call i32 @strlen(ptr noundef nonnull @.str.3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #7
  store i32 -1, ptr %poffset.i.i, align 4, !annotation !9
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull @.str.3, i32 noundef %call.i, ptr noundef nonnull %len, ptr noundef nonnull %poffset.i.i) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop.exit.thread, label %if.end.i.i

fdt_getprop.exit.thread:                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #7
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = load i8, ptr %version.i.i, align 1
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %version.i.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %version.i.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %version.i.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end9.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %4 = load i32, ptr %poffset.i.i, align 4
  %add.i.i = add i32 %4, 4
  %rem.i.i = and i32 %add.i.i, 7
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 1
  %5 = load i32, ptr %len.i.i, align 4
  %cmp7.i.i = icmp ugt i32 %5, 7
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end9.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true5.i.i
  %add.ptr.i.i = getelementptr %struct.fdt_property, ptr %call.i.i, i32 1, i32 1
  br label %fdt_getprop.exit

if.end9.i.i:                                      ; preds = %land.lhs.true5.i.i, %land.lhs.true3.i.i, %if.end.i.i
  %data10.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 3
  br label %fdt_getprop.exit

fdt_getprop.exit:                                 ; preds = %if.end9.i.i, %if.then8.i.i
  %retval.0.i.i = phi ptr [ %data10.i.i, %if.end9.i.i ], [ %add.ptr.i.i, %if.then8.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #7
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %fdt_getprop.exit, %fdt_getprop.exit.thread
  %6 = load i32, ptr %len, align 4
  br label %cleanup

if.end:                                           ; preds = %fdt_getprop.exit
  %7 = load i32, ptr %len, align 4
  %call.i5 = call i32 @strlen(ptr noundef %compatible) #5
  %add.i = add i32 %call.i5, 1
  %cmp.not16.i = icmp sgt i32 %call.i5, %7
  br i1 %cmp.not16.i, label %cleanup, label %while.body.i

while.body.i:                                     ; preds = %if.end5.i, %if.end
  %listlen.addr.018.i = phi i32 [ %sub.i, %if.end5.i ], [ %7, %if.end ]
  %strlist.addr.017.i = phi ptr [ %add.ptr.i, %if.end5.i ], [ %retval.0.i.i, %if.end ]
  %call1.i = call i32 @memcmp(ptr noundef %compatible, ptr noundef %strlist.addr.017.i, i32 noundef %add.i) #5
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %call3.i = call ptr @memchr(ptr noundef %strlist.addr.017.i, i32 noundef 0, i32 noundef %listlen.addr.018.i) #5
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %cleanup, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %strlist.addr.017.i to i32
  %8 = xor i32 %sub.ptr.lhs.cast.i, -1
  %add6.neg.i = add i32 %listlen.addr.018.i, %sub.ptr.rhs.cast.i
  %sub.i = add i32 %add6.neg.i, %8
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 1
  %cmp.not.i = icmp slt i32 %sub.i, %call.i5
  br i1 %cmp.not.i, label %cleanup, label %while.body.i

cleanup:                                          ; preds = %if.end5.i, %if.end.i, %while.body.i, %if.end, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ 1, %if.end ], [ 1, %if.end5.i ], [ 1, %if.end.i ], [ 0, %while.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_node_offset_by_compatible(ptr noundef %fdt, i32 noundef %startoffset, ptr noundef %compatible) local_unnamed_addr #0 align 64 {
entry:
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup12, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %call1 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %startoffset, ptr noundef null) #5
  %cmp224 = icmp sgt i32 %call1, -1
  br i1 %cmp224, label %for.body, label %cleanup12

for.body:                                         ; preds = %for.inc, %cleanup.cont
  %offset.025 = phi i32 [ %call11, %for.inc ], [ %call1, %cleanup.cont ]
  %call3 = tail call i32 @fdt_node_check_compatible(ptr noundef %fdt, i32 noundef %offset.025, ptr noundef %compatible) #6
  %0 = icmp slt i32 %call3, -1
  br i1 %0, label %cleanup12, label %if.else

if.else:                                          ; preds = %for.body
  %cmp7 = icmp eq i32 %call3, 0
  br i1 %cmp7, label %cleanup12, label %for.inc

for.inc:                                          ; preds = %if.else
  %call11 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.025, ptr noundef null) #5
  %cmp2 = icmp sgt i32 %call11, -1
  br i1 %cmp2, label %for.body, label %cleanup12

cleanup12:                                        ; preds = %for.inc, %if.else, %for.body, %cleanup.cont, %entry
  %retval.1 = phi i32 [ %call, %entry ], [ %call1, %cleanup.cont ], [ %call3, %for.body ], [ %offset.025, %if.else ], [ %call11, %for.inc ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
