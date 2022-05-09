; ModuleID = '/llk/IR_all_yes/scripts/dtc/libfdt/fdt_sw.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_node_header = type { i32, [0 x i8] }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i32 @fdt_create_with_flags(ptr nocapture noundef %buf, i32 noundef %bufsize, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %bufsize, 48
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %conv17 = zext i32 %bufsize to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %buf, i8 0, i64 %conv17, i1 false)
  store i32 302117423, ptr %buf, align 4, !tbaa !5
  %rev.i.i = tail call i32 @llvm.bswap.i32(i32 %flags) #12
  %last_comp_version.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 6
  store i32 %rev.i.i, ptr %last_comp_version.i, align 4, !tbaa !10
  %rev.i.i15 = tail call i32 @llvm.bswap.i32(i32 %bufsize) #12
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 1
  store i32 %rev.i.i15, ptr %totalsize.i, align 4, !tbaa !11
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 2
  store <4 x i32> <i32 805306368, i32 0, i32 805306368, i32 285212672>, ptr %off_dt_struct.i, align 4, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -3, %entry ], [ -18, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable
define dso_local i32 @fdt_create(ptr nocapture noundef writeonly %buf, i32 noundef %bufsize) local_unnamed_addr #3 {
entry:
  %cmp.i = icmp slt i32 %bufsize, 48
  br i1 %cmp.i, label %fdt_create_with_flags.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %conv17.i = zext i32 %bufsize to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %buf, i8 0, i64 %conv17.i, i1 false) #12
  store i32 302117423, ptr %buf, align 4, !tbaa !5
  %last_comp_version.i.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 6
  store i32 0, ptr %last_comp_version.i.i, align 4, !tbaa !10
  %rev.i.i15.i = tail call i32 @llvm.bswap.i32(i32 %bufsize) #12
  %totalsize.i.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 1
  store i32 %rev.i.i15.i, ptr %totalsize.i.i, align 4, !tbaa !11
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 2
  store <4 x i32> <i32 805306368, i32 0, i32 805306368, i32 285212672>, ptr %off_dt_struct.i.i, align 4, !tbaa !12
  br label %fdt_create_with_flags.exit

fdt_create_with_flags.exit:                       ; preds = %if.end.i, %entry
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -3, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i32 @fdt_resize(ptr noundef readonly %fdt, ptr noundef %buf, i32 noundef %bufsize) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %fdt, align 1, !tbaa !13
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %fdt, i64 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !13
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %fdt, i64 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !13
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %fdt, i64 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !13
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %cmp.i = icmp eq i32 %or10.i.i, -804389139
  %cmp5.not.i = icmp eq i32 %or10.i.i, 804389138
  %..i = select i1 %cmp5.not.i, i32 0, i32 -9
  %retval.0.i = select i1 %cmp.i, i32 -7, i32 %..i
  br i1 %cmp5.not.i, label %cleanup.cont, label %cleanup36

cleanup.cont:                                     ; preds = %entry
  %cmp1 = icmp slt i32 %bufsize, 0
  br i1 %cmp1, label %cleanup36, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %4 = load i8, ptr %off_dt_struct, align 1, !tbaa !13
  %conv.i = zext i8 %4 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %off_dt_struct, i64 1
  %5 = load i8, ptr %arrayidx1.i, align 1, !tbaa !13
  %conv2.i = zext i8 %5 to i64
  %shl3.i = shl nuw nsw i64 %conv2.i, 16
  %or.i = or i64 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %off_dt_struct, i64 2
  %6 = load i8, ptr %arrayidx4.i, align 1, !tbaa !13
  %conv5.i = zext i8 %6 to i64
  %shl6.i = shl nuw nsw i64 %conv5.i, 8
  %or7.i = or i64 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %off_dt_struct, i64 3
  %7 = load i8, ptr %arrayidx8.i, align 1, !tbaa !13
  %conv9.i = zext i8 %7 to i64
  %or10.i = or i64 %or7.i, %conv9.i
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %8 = load i8, ptr %size_dt_struct, align 1, !tbaa !13
  %conv.i69 = zext i8 %8 to i64
  %shl.i70 = shl nuw nsw i64 %conv.i69, 24
  %arrayidx1.i71 = getelementptr inbounds i8, ptr %size_dt_struct, i64 1
  %9 = load i8, ptr %arrayidx1.i71, align 1, !tbaa !13
  %conv2.i72 = zext i8 %9 to i64
  %shl3.i73 = shl nuw nsw i64 %conv2.i72, 16
  %or.i74 = or i64 %shl3.i73, %shl.i70
  %arrayidx4.i75 = getelementptr inbounds i8, ptr %size_dt_struct, i64 2
  %10 = load i8, ptr %arrayidx4.i75, align 1, !tbaa !13
  %conv5.i76 = zext i8 %10 to i64
  %shl6.i77 = shl nuw nsw i64 %conv5.i76, 8
  %or7.i78 = or i64 %or.i74, %shl6.i77
  %arrayidx8.i79 = getelementptr inbounds i8, ptr %size_dt_struct, i64 3
  %11 = load i8, ptr %arrayidx8.i79, align 1, !tbaa !13
  %conv9.i80 = zext i8 %11 to i64
  %or10.i81 = or i64 %or7.i78, %conv9.i80
  %add = add nuw nsw i64 %or10.i81, %or10.i
  %conv = and i64 %add, 4294967295
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %12 = load i8, ptr %size_dt_strings, align 1, !tbaa !13
  %conv.i82 = zext i8 %12 to i64
  %shl.i83 = shl nuw nsw i64 %conv.i82, 24
  %arrayidx1.i84 = getelementptr inbounds i8, ptr %size_dt_strings, i64 1
  %13 = load i8, ptr %arrayidx1.i84, align 1, !tbaa !13
  %conv2.i85 = zext i8 %13 to i64
  %shl3.i86 = shl nuw nsw i64 %conv2.i85, 16
  %or.i87 = or i64 %shl3.i86, %shl.i83
  %arrayidx4.i88 = getelementptr inbounds i8, ptr %size_dt_strings, i64 2
  %14 = load i8, ptr %arrayidx4.i88, align 1, !tbaa !13
  %conv5.i89 = zext i8 %14 to i64
  %shl6.i90 = shl nuw nsw i64 %conv5.i89, 8
  %or7.i91 = or i64 %or.i87, %shl6.i90
  %arrayidx8.i92 = getelementptr inbounds i8, ptr %size_dt_strings, i64 3
  %15 = load i8, ptr %arrayidx8.i92, align 1, !tbaa !13
  %conv9.i93 = zext i8 %15 to i64
  %or10.i94 = or i64 %or7.i91, %conv9.i93
  %add9 = add nuw nsw i64 %or10.i94, %conv
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %16 = load i8, ptr %totalsize, align 1, !tbaa !13
  %conv.i95 = zext i8 %16 to i64
  %shl.i96 = shl nuw nsw i64 %conv.i95, 24
  %arrayidx1.i97 = getelementptr inbounds i8, ptr %totalsize, i64 1
  %17 = load i8, ptr %arrayidx1.i97, align 1, !tbaa !13
  %conv2.i98 = zext i8 %17 to i64
  %shl3.i99 = shl nuw nsw i64 %conv2.i98, 16
  %or.i100 = or i64 %shl3.i99, %shl.i96
  %arrayidx4.i101 = getelementptr inbounds i8, ptr %totalsize, i64 2
  %18 = load i8, ptr %arrayidx4.i101, align 1, !tbaa !13
  %conv5.i102 = zext i8 %18 to i64
  %shl6.i103 = shl nuw nsw i64 %conv5.i102, 8
  %or7.i104 = or i64 %or.i100, %shl6.i103
  %arrayidx8.i105 = getelementptr inbounds i8, ptr %totalsize, i64 3
  %19 = load i8, ptr %arrayidx8.i105, align 1, !tbaa !13
  %conv9.i106 = zext i8 %19 to i64
  %or10.i107 = or i64 %or7.i104, %conv9.i106
  %cmp12 = icmp ugt i64 %add9, %or10.i107
  br i1 %cmp12, label %cleanup36, label %if.end15

if.end15:                                         ; preds = %if.end3
  %conv17 = zext i32 %bufsize to i64
  %cmp18 = icmp ugt i64 %add9, %conv17
  br i1 %cmp18, label %cleanup36, label %if.end21

if.end21:                                         ; preds = %if.end15
  %add.ptr = getelementptr inbounds i8, ptr %fdt, i64 %or10.i107
  %idx.neg = sub nsw i64 0, %or10.i94
  %add.ptr24 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %add.ptr26 = getelementptr inbounds i8, ptr %buf, i64 %conv17
  %add.ptr28 = getelementptr inbounds i8, ptr %add.ptr26, i64 %idx.neg
  %cmp29.not = icmp ugt ptr %buf, %fdt
  br i1 %cmp29.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end21
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %buf, ptr nonnull align 1 %fdt, i64 %conv, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr28, ptr nonnull align 1 %add.ptr24, i64 %or10.i94, i1 false)
  br label %if.end32

if.else:                                          ; preds = %if.end21
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %add.ptr28, ptr nonnull align 1 %add.ptr24, i64 %or10.i94, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %buf, ptr nonnull align 1 %fdt, i64 %conv, i1 false)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then31
  %rev.i.i = tail call i32 @llvm.bswap.i32(i32 %bufsize) #12
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 1
  store i32 %rev.i.i, ptr %totalsize.i, align 4, !tbaa !11
  %off_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 3
  %20 = load i8, ptr %off_dt_strings, align 1, !tbaa !13
  %conv.i121 = zext i8 %20 to i32
  %shl.i122 = shl nuw i32 %conv.i121, 24
  %arrayidx1.i123 = getelementptr inbounds i8, ptr %off_dt_strings, i64 1
  %21 = load i8, ptr %arrayidx1.i123, align 1, !tbaa !13
  %conv2.i124 = zext i8 %21 to i32
  %shl3.i125 = shl nuw nsw i32 %conv2.i124, 16
  %or.i126 = or i32 %shl3.i125, %shl.i122
  %arrayidx4.i127 = getelementptr inbounds i8, ptr %off_dt_strings, i64 2
  %22 = load i8, ptr %arrayidx4.i127, align 1, !tbaa !13
  %conv5.i128 = zext i8 %22 to i32
  %shl6.i129 = shl nuw nsw i32 %conv5.i128, 8
  %or7.i130 = or i32 %or.i126, %shl6.i129
  %arrayidx8.i131 = getelementptr inbounds i8, ptr %off_dt_strings, i64 3
  %23 = load i8, ptr %arrayidx8.i131, align 1, !tbaa !13
  %conv9.i132 = zext i8 %23 to i32
  %or10.i133 = or i32 %or7.i130, %conv9.i132
  %tobool.not = icmp eq i32 %or10.i133, 0
  br i1 %tobool.not, label %cleanup36, label %if.then34

if.then34:                                        ; preds = %if.end32
  store i32 %rev.i.i, ptr %off_dt_strings, align 4, !tbaa !14
  br label %cleanup36

cleanup36:                                        ; preds = %if.then34, %if.end32, %if.end15, %if.end3, %cleanup.cont, %entry
  %retval.1 = phi i32 [ %retval.0.i, %entry ], [ -3, %cleanup.cont ], [ -13, %if.end3 ], [ -3, %if.end15 ], [ 0, %if.then34 ], [ 0, %if.end32 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i32 @fdt_add_reservemap_entry(ptr nocapture noundef %fdt, i64 noundef %addr, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %fdt, align 1, !tbaa !13
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !13
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !13
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !13
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp5.not.i.i = icmp eq i32 %or10.i.i.i, 804389138
  br i1 %cmp5.not.i.i, label %if.end.i, label %fdt_sw_probe_memrsv_.exit

if.end.i:                                         ; preds = %entry
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 3
  %4 = load i8, ptr %off_dt_strings.i, align 1, !tbaa !13
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 1
  %5 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !13
  %conv2.i.i = zext i8 %5 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 2
  %6 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !13
  %conv5.i.i = zext i8 %6 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 3
  %7 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !13
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %cmp.not.i = icmp eq i32 %or10.i.i, 0
  br i1 %cmp.not.i, label %cleanup.cont, label %cleanup14

fdt_sw_probe_memrsv_.exit:                        ; preds = %entry
  %cmp.i.i = icmp eq i32 %or10.i.i.i, -804389139
  %retval.0.i.i = select i1 %cmp.i.i, i32 -7, i32 -9
  br label %cleanup14

cleanup.cont:                                     ; preds = %if.end.i
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %8 = load i8, ptr %off_dt_struct, align 1, !tbaa !13
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %off_dt_struct, i64 1
  %9 = load i8, ptr %arrayidx1.i, align 1, !tbaa !13
  %conv2.i = zext i8 %9 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %off_dt_struct, i64 2
  %10 = load i8, ptr %arrayidx4.i, align 1, !tbaa !13
  %conv5.i = zext i8 %10 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %off_dt_struct, i64 3
  %11 = load i8, ptr %arrayidx8.i, align 1, !tbaa !13
  %conv9.i = zext i8 %11 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %conv = sext i32 %or10.i to i64
  %add = add nsw i64 %conv, 16
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %12 = load i8, ptr %totalsize, align 1, !tbaa !13
  %conv.i23 = zext i8 %12 to i64
  %shl.i24 = shl nuw nsw i64 %conv.i23, 24
  %arrayidx1.i25 = getelementptr inbounds i8, ptr %totalsize, i64 1
  %13 = load i8, ptr %arrayidx1.i25, align 1, !tbaa !13
  %conv2.i26 = zext i8 %13 to i64
  %shl3.i27 = shl nuw nsw i64 %conv2.i26, 16
  %or.i28 = or i64 %shl3.i27, %shl.i24
  %arrayidx4.i29 = getelementptr inbounds i8, ptr %totalsize, i64 2
  %14 = load i8, ptr %arrayidx4.i29, align 1, !tbaa !13
  %conv5.i30 = zext i8 %14 to i64
  %shl6.i31 = shl nuw nsw i64 %conv5.i30, 8
  %or7.i32 = or i64 %or.i28, %shl6.i31
  %arrayidx8.i33 = getelementptr inbounds i8, ptr %totalsize, i64 3
  %15 = load i8, ptr %arrayidx8.i33, align 1, !tbaa !13
  %conv9.i34 = zext i8 %15 to i64
  %or10.i35 = or i64 %or7.i32, %conv9.i34
  %cmp4 = icmp ugt i64 %add, %or10.i35
  br i1 %cmp4, label %cleanup14, label %if.end7

if.end7:                                          ; preds = %cleanup.cont
  %add.ptr = getelementptr inbounds i8, ptr %fdt, i64 %conv
  %or26.i = tail call i64 @llvm.bswap.i64(i64 %addr) #12
  store i64 %or26.i, ptr %add.ptr, align 8, !tbaa !15
  %or26.i36 = tail call i64 @llvm.bswap.i64(i64 %size) #12
  %size10 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr, i64 0, i32 1
  store i64 %or26.i36, ptr %size10, align 8, !tbaa !18
  %conv13 = trunc i64 %add to i32
  %rev.i.i = tail call i32 @llvm.bswap.i32(i32 %conv13) #12
  store i32 %rev.i.i, ptr %off_dt_struct, align 4, !tbaa !19
  br label %cleanup14

cleanup14:                                        ; preds = %if.end7, %cleanup.cont, %fdt_sw_probe_memrsv_.exit, %if.end.i
  %retval.1 = phi i32 [ 0, %if.end7 ], [ %retval.0.i.i, %fdt_sw_probe_memrsv_.exit ], [ -3, %cleanup.cont ], [ -7, %if.end.i ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i32 @fdt_finish_reservemap(ptr nocapture noundef %fdt) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @fdt_add_reservemap_entry(ptr noundef %fdt, i64 noundef 0, i64 noundef 0)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %0 = load i8, ptr %totalsize, align 1, !tbaa !13
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %totalsize, i64 1
  %1 = load i8, ptr %arrayidx1.i, align 1, !tbaa !13
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %totalsize, i64 2
  %2 = load i8, ptr %arrayidx4.i, align 1, !tbaa !13
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %totalsize, i64 3
  %3 = load i8, ptr %arrayidx8.i, align 1, !tbaa !13
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %rev.i.i = tail call i32 @llvm.bswap.i32(i32 %or10.i) #12
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 3
  store i32 %rev.i.i, ptr %off_dt_strings.i, align 4, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @fdt_begin_node(ptr noundef %fdt, ptr nocapture noundef readonly %name) local_unnamed_addr #5 {
entry:
  %0 = load i8, ptr %fdt, align 1, !tbaa !13
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !13
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !13
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !13
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp5.not.i.i = icmp eq i32 %or10.i.i.i, 804389138
  br i1 %cmp5.not.i.i, label %if.end.i, label %fdt_sw_probe_struct_.exit

if.end.i:                                         ; preds = %entry
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 3
  %4 = load i8, ptr %off_dt_strings.i, align 1, !tbaa !13
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 1
  %5 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !13
  %conv2.i.i = zext i8 %5 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 2
  %6 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !13
  %conv5.i.i = zext i8 %6 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 3
  %7 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !13
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %8 = load i8, ptr %totalsize.i, align 1, !tbaa !13
  %conv.i9.i = zext i8 %8 to i32
  %shl.i10.i = shl nuw i32 %conv.i9.i, 24
  %arrayidx1.i11.i = getelementptr inbounds i8, ptr %totalsize.i, i64 1
  %9 = load i8, ptr %arrayidx1.i11.i, align 1, !tbaa !13
  %conv2.i12.i = zext i8 %9 to i32
  %shl3.i13.i = shl nuw nsw i32 %conv2.i12.i, 16
  %or.i14.i = or i32 %shl3.i13.i, %shl.i10.i
  %arrayidx4.i15.i = getelementptr inbounds i8, ptr %totalsize.i, i64 2
  %10 = load i8, ptr %arrayidx4.i15.i, align 1, !tbaa !13
  %conv5.i16.i = zext i8 %10 to i32
  %shl6.i17.i = shl nuw nsw i32 %conv5.i16.i, 8
  %or7.i18.i = or i32 %or.i14.i, %shl6.i17.i
  %arrayidx8.i19.i = getelementptr inbounds i8, ptr %totalsize.i, i64 3
  %11 = load i8, ptr %arrayidx8.i19.i, align 1, !tbaa !13
  %conv9.i20.i = zext i8 %11 to i32
  %or10.i21.i = or i32 %or7.i18.i, %conv9.i20.i
  %cmp.not.i = icmp eq i32 %or10.i.i, %or10.i21.i
  br i1 %cmp.not.i, label %cleanup.cont, label %cleanup11

fdt_sw_probe_struct_.exit:                        ; preds = %entry
  %cmp.i.i = icmp eq i32 %or10.i.i.i, -804389139
  %retval.0.i.i = select i1 %cmp.i.i, i32 -7, i32 -9
  br label %cleanup11

cleanup.cont:                                     ; preds = %if.end.i
  %call1 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #13
  %conv = shl i64 %call1, 32
  %sext = add i64 %conv, 4294967296
  %conv2 = ashr exact i64 %sext, 32
  %12 = add nsw i64 %conv2, 7
  %add4 = and i64 %12, -4
  %call5 = tail call fastcc ptr @fdt_grab_space_(ptr noundef nonnull %fdt, i64 noundef %add4)
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %cleanup11, label %if.end7

if.end7:                                          ; preds = %cleanup.cont
  store i32 16777216, ptr %call5, align 4, !tbaa !20
  %name9 = getelementptr inbounds %struct.fdt_node_header, ptr %call5, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %name9, ptr align 1 %name, i64 %conv2, i1 false)
  br label %cleanup11

cleanup11:                                        ; preds = %if.end7, %cleanup.cont, %fdt_sw_probe_struct_.exit, %if.end.i
  %retval.1 = phi i32 [ 0, %if.end7 ], [ %retval.0.i.i, %fdt_sw_probe_struct_.exit ], [ -3, %cleanup.cont ], [ -7, %if.end.i ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define internal fastcc ptr @fdt_grab_space_(ptr noundef %fdt, i64 noundef %len) unnamed_addr #0 {
entry:
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %0 = load i8, ptr %size_dt_struct, align 1, !tbaa !13
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %size_dt_struct, i64 1
  %1 = load i8, ptr %arrayidx1.i, align 1, !tbaa !13
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %size_dt_struct, i64 2
  %2 = load i8, ptr %arrayidx4.i, align 1, !tbaa !13
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %size_dt_struct, i64 3
  %3 = load i8, ptr %arrayidx8.i, align 1, !tbaa !13
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %conv = zext i32 %or10.i to i64
  %add = add i64 %conv, %len
  %cmp = icmp ult i64 %add, %conv
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %arrayidx8.i51 = getelementptr inbounds i8, ptr %off_dt_struct, i64 3
  %4 = load i8, ptr %arrayidx8.i51, align 1, !tbaa !13
  %arrayidx4.i47 = getelementptr inbounds i8, ptr %off_dt_struct, i64 2
  %5 = load i8, ptr %arrayidx4.i47, align 1, !tbaa !13
  %arrayidx1.i43 = getelementptr inbounds i8, ptr %off_dt_struct, i64 1
  %6 = load i8, ptr %arrayidx1.i43, align 1, !tbaa !13
  %7 = load i8, ptr %off_dt_struct, align 1, !tbaa !13
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %arrayidx1.i56 = getelementptr inbounds i8, ptr %size_dt_strings, i64 1
  %8 = load i8, ptr %arrayidx1.i56, align 1, !tbaa !13
  %conv2.i57 = zext i8 %8 to i64
  %shl3.i58.neg = mul nsw i64 %conv2.i57, -65536
  %9 = load i8, ptr %size_dt_strings, align 1, !tbaa !13
  %conv.i54 = zext i8 %9 to i64
  %shl.i55.neg = mul nsw i64 %conv.i54, -16777216
  %or.i59.neg = add nsw i64 %shl.i55.neg, %shl3.i58.neg
  %arrayidx4.i60 = getelementptr inbounds i8, ptr %size_dt_strings, i64 2
  %10 = load i8, ptr %arrayidx4.i60, align 1, !tbaa !13
  %conv5.i61 = zext i8 %10 to i64
  %shl6.i62.neg = mul nuw nsw i64 %conv5.i61, 4294967040
  %or7.i63.neg = add nsw i64 %or.i59.neg, %shl6.i62.neg
  %arrayidx8.i64 = getelementptr inbounds i8, ptr %size_dt_strings, i64 3
  %11 = load i8, ptr %arrayidx8.i64, align 1, !tbaa !13
  %conv9.i65 = zext i8 %11 to i64
  %or10.i66.neg68 = sub nsw i64 %or7.i63.neg, %conv9.i65
  %conv2.i44 = zext i8 %6 to i64
  %shl3.i45.neg = mul nsw i64 %conv2.i44, -65536
  %conv.i41 = zext i8 %7 to i64
  %shl.i42.neg = mul nsw i64 %conv.i41, -16777216
  %or.i46.neg = add nsw i64 %shl3.i45.neg, %shl.i42.neg
  %conv5.i48 = zext i8 %5 to i64
  %shl6.i49.neg = mul nuw nsw i64 %conv5.i48, 4294967040
  %or7.i50.neg = add nsw i64 %or.i46.neg, %shl6.i49.neg
  %conv9.i52 = zext i8 %4 to i64
  %or10.i53.neg67 = sub nsw i64 %or7.i50.neg, %conv9.i52
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %arrayidx1.i30 = getelementptr inbounds i8, ptr %totalsize, i64 1
  %12 = load i8, ptr %arrayidx1.i30, align 1, !tbaa !13
  %conv2.i31 = zext i8 %12 to i64
  %shl3.i32 = shl nuw nsw i64 %conv2.i31, 16
  %13 = load i8, ptr %totalsize, align 1, !tbaa !13
  %conv.i28 = zext i8 %13 to i64
  %shl.i29 = shl nuw nsw i64 %conv.i28, 24
  %or.i33 = or i64 %shl.i29, %shl3.i32
  %arrayidx4.i34 = getelementptr inbounds i8, ptr %totalsize, i64 2
  %14 = load i8, ptr %arrayidx4.i34, align 1, !tbaa !13
  %conv5.i35 = zext i8 %14 to i64
  %shl6.i36 = shl nuw nsw i64 %conv5.i35, 8
  %or7.i37 = or i64 %or.i33, %shl6.i36
  %arrayidx8.i38 = getelementptr inbounds i8, ptr %totalsize, i64 3
  %15 = load i8, ptr %arrayidx8.i38, align 1, !tbaa !13
  %conv9.i39 = zext i8 %15 to i64
  %or10.i40 = or i64 %or7.i37, %conv9.i39
  %.neg = add nsw i64 %or10.i66.neg68, %or10.i53.neg67
  %sub4 = add nsw i64 %.neg, %or10.i40
  %conv9 = and i64 %sub4, 4294967295
  %cmp10 = icmp ugt i64 %add, %conv9
  br i1 %cmp10, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %conv14 = trunc i64 %add to i32
  %rev.i.i = tail call i32 @llvm.bswap.i32(i32 %conv14) #12
  store i32 %rev.i.i, ptr %size_dt_struct, align 4, !tbaa !22
  %shl.i.i.i = shl nuw nsw i64 %conv.i41, 24
  %shl3.i.i.i = shl nuw nsw i64 %conv2.i44, 16
  %or.i.i.i = or i64 %shl3.i.i.i, %shl.i.i.i
  %shl6.i.i.i = shl nuw nsw i64 %conv5.i48, 8
  %or7.i.i.i = or i64 %or.i.i.i, %shl6.i.i.i
  %or10.i.i.i = or i64 %or7.i.i.i, %conv9.i52
  %add.ptr.i.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i.i
  %idx.ext1.i.i = sext i32 %or10.i to i64
  %add.ptr2.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 %idx.ext1.i.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry
  %retval.0 = phi ptr [ %add.ptr2.i.i, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i32 @fdt_end_node(ptr noundef %fdt) local_unnamed_addr #7 {
entry:
  %0 = load i8, ptr %fdt, align 1, !tbaa !13
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !13
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !13
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !13
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp5.not.i.i = icmp eq i32 %or10.i.i.i, 804389138
  br i1 %cmp5.not.i.i, label %if.end.i, label %fdt_sw_probe_struct_.exit

if.end.i:                                         ; preds = %entry
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 3
  %4 = load i8, ptr %off_dt_strings.i, align 1, !tbaa !13
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 1
  %5 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !13
  %conv2.i.i = zext i8 %5 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 2
  %6 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !13
  %conv5.i.i = zext i8 %6 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 3
  %7 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !13
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %8 = load i8, ptr %totalsize.i, align 1, !tbaa !13
  %conv.i9.i = zext i8 %8 to i32
  %shl.i10.i = shl nuw i32 %conv.i9.i, 24
  %arrayidx1.i11.i = getelementptr inbounds i8, ptr %totalsize.i, i64 1
  %9 = load i8, ptr %arrayidx1.i11.i, align 1, !tbaa !13
  %conv2.i12.i = zext i8 %9 to i32
  %shl3.i13.i = shl nuw nsw i32 %conv2.i12.i, 16
  %or.i14.i = or i32 %shl3.i13.i, %shl.i10.i
  %arrayidx4.i15.i = getelementptr inbounds i8, ptr %totalsize.i, i64 2
  %10 = load i8, ptr %arrayidx4.i15.i, align 1, !tbaa !13
  %conv5.i16.i = zext i8 %10 to i32
  %shl6.i17.i = shl nuw nsw i32 %conv5.i16.i, 8
  %or7.i18.i = or i32 %or.i14.i, %shl6.i17.i
  %arrayidx8.i19.i = getelementptr inbounds i8, ptr %totalsize.i, i64 3
  %11 = load i8, ptr %arrayidx8.i19.i, align 1, !tbaa !13
  %conv9.i20.i = zext i8 %11 to i32
  %or10.i21.i = or i32 %or7.i18.i, %conv9.i20.i
  %cmp.not.i = icmp eq i32 %or10.i.i, %or10.i21.i
  br i1 %cmp.not.i, label %cleanup.cont, label %cleanup5

fdt_sw_probe_struct_.exit:                        ; preds = %entry
  %cmp.i.i = icmp eq i32 %or10.i.i.i, -804389139
  %retval.0.i.i = select i1 %cmp.i.i, i32 -7, i32 -9
  br label %cleanup5

cleanup.cont:                                     ; preds = %if.end.i
  %call1 = tail call fastcc ptr @fdt_grab_space_(ptr noundef nonnull %fdt, i64 noundef 4)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cleanup5, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  store i32 33554432, ptr %call1, align 4, !tbaa !12
  br label %cleanup5

cleanup5:                                         ; preds = %if.end3, %cleanup.cont, %fdt_sw_probe_struct_.exit, %if.end.i
  %retval.1 = phi i32 [ 0, %if.end3 ], [ %retval.0.i.i, %fdt_sw_probe_struct_.exit ], [ -3, %cleanup.cont ], [ -7, %if.end.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_property_placeholder(ptr noundef %fdt, ptr noundef %name, i32 noundef %len, ptr nocapture noundef writeonly %valp) local_unnamed_addr #8 {
entry:
  %0 = load i8, ptr %fdt, align 1, !tbaa !13
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !13
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !13
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !13
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp5.not.i.i = icmp eq i32 %or10.i.i.i, 804389138
  br i1 %cmp5.not.i.i, label %if.end.i, label %fdt_sw_probe_struct_.exit

if.end.i:                                         ; preds = %entry
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 3
  %4 = load i8, ptr %off_dt_strings.i, align 1, !tbaa !13
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 1
  %5 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !13
  %conv2.i.i = zext i8 %5 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 2
  %6 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !13
  %conv5.i.i = zext i8 %6 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 3
  %7 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !13
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %8 = load i8, ptr %totalsize.i, align 1, !tbaa !13
  %conv.i9.i = zext i8 %8 to i32
  %shl.i10.i = shl nuw i32 %conv.i9.i, 24
  %arrayidx1.i11.i = getelementptr inbounds i8, ptr %totalsize.i, i64 1
  %9 = load i8, ptr %arrayidx1.i11.i, align 1, !tbaa !13
  %conv2.i12.i = zext i8 %9 to i32
  %shl3.i13.i = shl nuw nsw i32 %conv2.i12.i, 16
  %or.i14.i = or i32 %shl3.i13.i, %shl.i10.i
  %arrayidx4.i15.i = getelementptr inbounds i8, ptr %totalsize.i, i64 2
  %10 = load i8, ptr %arrayidx4.i15.i, align 1, !tbaa !13
  %conv5.i16.i = zext i8 %10 to i32
  %shl6.i17.i = shl nuw nsw i32 %conv5.i16.i, 8
  %or7.i18.i = or i32 %or.i14.i, %shl6.i17.i
  %arrayidx8.i19.i = getelementptr inbounds i8, ptr %totalsize.i, i64 3
  %11 = load i8, ptr %arrayidx8.i19.i, align 1, !tbaa !13
  %conv9.i20.i = zext i8 %11 to i32
  %or10.i21.i = or i32 %or7.i18.i, %conv9.i20.i
  %cmp.not.i = icmp eq i32 %or10.i.i, %or10.i21.i
  br i1 %cmp.not.i, label %cleanup.cont, label %cleanup23

fdt_sw_probe_struct_.exit:                        ; preds = %entry
  %cmp.i.i = icmp eq i32 %or10.i.i.i, -804389139
  %retval.0.i.i = select i1 %cmp.i.i, i32 -7, i32 -9
  br label %cleanup23

cleanup.cont:                                     ; preds = %if.end.i
  %last_comp_version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 6
  %arrayidx8.i.i49 = getelementptr inbounds i8, ptr %last_comp_version.i, i64 3
  %12 = load i8, ptr %arrayidx8.i.i49, align 1, !tbaa !13
  %13 = and i8 %12, 1
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %cleanup.cont
  %call3 = tail call fastcc i32 @fdt_add_string_(ptr noundef nonnull %fdt, ptr noundef %name)
  br label %if.end5

if.else:                                          ; preds = %cleanup.cont
  %conv.i.i53 = zext i8 %8 to i64
  %shl.i.i54 = shl nuw nsw i64 %conv.i.i53, 24
  %conv2.i.i56 = zext i8 %9 to i64
  %shl3.i.i57 = shl nuw nsw i64 %conv2.i.i56, 16
  %or.i.i58 = or i64 %shl3.i.i57, %shl.i.i54
  %conv5.i.i60 = zext i8 %10 to i64
  %shl6.i.i61 = shl nuw nsw i64 %conv5.i.i60, 8
  %or7.i.i62 = or i64 %or.i.i58, %shl6.i.i61
  %conv9.i.i64 = zext i8 %11 to i64
  %or10.i.i65 = or i64 %or7.i.i62, %conv9.i.i64
  %add.ptr.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i65
  %size_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %14 = load i8, ptr %size_dt_strings.i, align 1, !tbaa !13
  %conv.i16.i = zext i8 %14 to i32
  %shl.i17.i = shl nuw i32 %conv.i16.i, 24
  %arrayidx1.i18.i = getelementptr inbounds i8, ptr %size_dt_strings.i, i64 1
  %15 = load i8, ptr %arrayidx1.i18.i, align 1, !tbaa !13
  %conv2.i19.i = zext i8 %15 to i32
  %shl3.i20.i = shl nuw nsw i32 %conv2.i19.i, 16
  %or.i21.i = or i32 %shl3.i20.i, %shl.i17.i
  %arrayidx4.i22.i = getelementptr inbounds i8, ptr %size_dt_strings.i, i64 2
  %16 = load i8, ptr %arrayidx4.i22.i, align 1, !tbaa !13
  %conv5.i23.i = zext i8 %16 to i32
  %shl6.i24.i = shl nuw nsw i32 %conv5.i23.i, 8
  %or7.i25.i = or i32 %or.i21.i, %shl6.i24.i
  %arrayidx8.i26.i = getelementptr inbounds i8, ptr %size_dt_strings.i, i64 3
  %17 = load i8, ptr %arrayidx8.i26.i, align 1, !tbaa !13
  %conv9.i27.i = zext i8 %17 to i32
  %or10.i28.i = or i32 %or7.i25.i, %conv9.i27.i
  %idx.ext2.i = sext i32 %or10.i28.i to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext2.i
  %add.ptr3.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i
  %call4.i = tail call ptr @fdt_find_string_(ptr noundef nonnull %add.ptr3.i, i32 noundef %or10.i28.i, ptr noundef %name) #12
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end.i66, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call4.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i64 %sub.ptr.sub.i to i32
  br label %if.end5

if.end.i66:                                       ; preds = %if.else
  %call5.i = tail call fastcc i32 @fdt_add_string_(ptr noundef nonnull %fdt, ptr noundef %name) #12
  br label %if.end5

if.end5:                                          ; preds = %if.end.i66, %if.then.i, %if.then2
  %tobool14.not = phi i1 [ false, %if.end.i66 ], [ true, %if.then.i ], [ false, %if.then2 ]
  %nameoff.0 = phi i32 [ %call5.i, %if.end.i66 ], [ %conv.i, %if.then.i ], [ %call3, %if.then2 ]
  %cmp6 = icmp eq i32 %nameoff.0, 0
  br i1 %cmp6, label %cleanup23, label %if.end8

if.end8:                                          ; preds = %if.end5
  %conv = sext i32 %len to i64
  %18 = add nsw i64 %conv, 15
  %add10 = and i64 %18, -4
  %call11 = tail call fastcc ptr @fdt_grab_space_(ptr noundef nonnull %fdt, i64 noundef %add10)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end8
  br i1 %tobool14.not, label %cleanup23, label %if.then15

if.then15:                                        ; preds = %if.then13
  %size_dt_strings.i68 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %19 = load i8, ptr %size_dt_strings.i68, align 1, !tbaa !13
  %conv.i.i69 = zext i8 %19 to i32
  %shl.i.i70 = shl nuw i32 %conv.i.i69, 24
  %arrayidx1.i.i71 = getelementptr inbounds i8, ptr %size_dt_strings.i68, i64 1
  %20 = load i8, ptr %arrayidx1.i.i71, align 1, !tbaa !13
  %conv2.i.i72 = zext i8 %20 to i32
  %shl3.i.i73 = shl nuw nsw i32 %conv2.i.i72, 16
  %or.i.i74 = or i32 %shl3.i.i73, %shl.i.i70
  %arrayidx4.i.i75 = getelementptr inbounds i8, ptr %size_dt_strings.i68, i64 2
  %21 = load i8, ptr %arrayidx4.i.i75, align 1, !tbaa !13
  %conv5.i.i76 = zext i8 %21 to i32
  %shl6.i.i77 = shl nuw nsw i32 %conv5.i.i76, 8
  %or7.i.i78 = or i32 %or.i.i74, %shl6.i.i77
  %arrayidx8.i.i79 = getelementptr inbounds i8, ptr %size_dt_strings.i68, i64 3
  %22 = load i8, ptr %arrayidx8.i.i79, align 1, !tbaa !13
  %conv9.i.i80 = zext i8 %22 to i32
  %or10.i.i81 = or i32 %or7.i.i78, %conv9.i.i80
  %call1.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #13
  %23 = trunc i64 %call1.i to i32
  %conv.neg.i = xor i32 %23, -1
  %sub.i = add i32 %or10.i.i81, %conv.neg.i
  %rev.i.i.i = tail call i32 @llvm.bswap.i32(i32 %sub.i) #12
  store i32 %rev.i.i.i, ptr %size_dt_strings.i68, align 4, !tbaa !23
  br label %cleanup23

if.end17:                                         ; preds = %if.end8
  store i32 50331648, ptr %call11, align 4, !tbaa !24
  %rev.i = tail call i32 @llvm.bswap.i32(i32 %nameoff.0) #12
  %nameoff20 = getelementptr inbounds %struct.fdt_property, ptr %call11, i64 0, i32 2
  store i32 %rev.i, ptr %nameoff20, align 4, !tbaa !26
  %rev.i82 = tail call i32 @llvm.bswap.i32(i32 %len) #12
  %len22 = getelementptr inbounds %struct.fdt_property, ptr %call11, i64 0, i32 1
  store i32 %rev.i82, ptr %len22, align 4, !tbaa !27
  %data = getelementptr inbounds %struct.fdt_property, ptr %call11, i64 0, i32 3
  store ptr %data, ptr %valp, align 8, !tbaa !28
  br label %cleanup23

cleanup23:                                        ; preds = %if.end17, %if.then15, %if.then13, %if.end5, %fdt_sw_probe_struct_.exit, %if.end.i
  %retval.1 = phi i32 [ 0, %if.end17 ], [ %retval.0.i.i, %fdt_sw_probe_struct_.exit ], [ -3, %if.end5 ], [ -3, %if.then15 ], [ -3, %if.then13 ], [ -7, %if.end.i ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn uwtable
define internal fastcc i32 @fdt_add_string_(ptr nocapture noundef %fdt, ptr nocapture noundef readonly %s) unnamed_addr #9 {
entry:
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %0 = load i8, ptr %totalsize, align 1, !tbaa !13
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %totalsize, i64 1
  %1 = load i8, ptr %arrayidx1.i, align 1, !tbaa !13
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %totalsize, i64 2
  %2 = load i8, ptr %arrayidx4.i, align 1, !tbaa !13
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %totalsize, i64 3
  %3 = load i8, ptr %arrayidx8.i, align 1, !tbaa !13
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %4 = load i8, ptr %size_dt_strings, align 1, !tbaa !13
  %conv.i31 = zext i8 %4 to i32
  %shl.i32 = shl nuw i32 %conv.i31, 24
  %arrayidx1.i33 = getelementptr inbounds i8, ptr %size_dt_strings, i64 1
  %5 = load i8, ptr %arrayidx1.i33, align 1, !tbaa !13
  %conv2.i34 = zext i8 %5 to i32
  %shl3.i35 = shl nuw nsw i32 %conv2.i34, 16
  %or.i36 = or i32 %shl3.i35, %shl.i32
  %arrayidx4.i37 = getelementptr inbounds i8, ptr %size_dt_strings, i64 2
  %6 = load i8, ptr %arrayidx4.i37, align 1, !tbaa !13
  %conv5.i38 = zext i8 %6 to i32
  %shl6.i39 = shl nuw nsw i32 %conv5.i38, 8
  %or7.i40 = or i32 %or.i36, %shl6.i39
  %arrayidx8.i41 = getelementptr inbounds i8, ptr %size_dt_strings, i64 3
  %7 = load i8, ptr %arrayidx8.i41, align 1, !tbaa !13
  %conv9.i42 = zext i8 %7 to i32
  %or10.i43 = or i32 %or7.i40, %conv9.i42
  %call2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #13
  %8 = trunc i64 %call2 to i32
  %conv = add i32 %8, 1
  %add3 = add i32 %or10.i43, %conv
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %9 = load i8, ptr %off_dt_struct, align 1, !tbaa !13
  %conv.i44 = zext i8 %9 to i32
  %shl.i45 = shl nuw i32 %conv.i44, 24
  %arrayidx1.i46 = getelementptr inbounds i8, ptr %off_dt_struct, i64 1
  %10 = load i8, ptr %arrayidx1.i46, align 1, !tbaa !13
  %conv2.i47 = zext i8 %10 to i32
  %shl3.i48 = shl nuw nsw i32 %conv2.i47, 16
  %or.i49 = or i32 %shl3.i48, %shl.i45
  %arrayidx4.i50 = getelementptr inbounds i8, ptr %off_dt_struct, i64 2
  %11 = load i8, ptr %arrayidx4.i50, align 1, !tbaa !13
  %conv5.i51 = zext i8 %11 to i32
  %shl6.i52 = shl nuw nsw i32 %conv5.i51, 8
  %or7.i53 = or i32 %or.i49, %shl6.i52
  %arrayidx8.i54 = getelementptr inbounds i8, ptr %off_dt_struct, i64 3
  %12 = load i8, ptr %arrayidx8.i54, align 1, !tbaa !13
  %conv9.i55 = zext i8 %12 to i32
  %or10.i56 = or i32 %or7.i53, %conv9.i55
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %13 = load i8, ptr %size_dt_struct, align 1, !tbaa !13
  %conv.i57 = zext i8 %13 to i32
  %shl.i58 = shl nuw i32 %conv.i57, 24
  %arrayidx1.i59 = getelementptr inbounds i8, ptr %size_dt_struct, i64 1
  %14 = load i8, ptr %arrayidx1.i59, align 1, !tbaa !13
  %conv2.i60 = zext i8 %14 to i32
  %shl3.i61 = shl nuw nsw i32 %conv2.i60, 16
  %or.i62 = or i32 %shl3.i61, %shl.i58
  %arrayidx4.i63 = getelementptr inbounds i8, ptr %size_dt_struct, i64 2
  %15 = load i8, ptr %arrayidx4.i63, align 1, !tbaa !13
  %conv5.i64 = zext i8 %15 to i32
  %shl6.i65 = shl nuw nsw i32 %conv5.i64, 8
  %or7.i66 = or i32 %or.i62, %shl6.i65
  %arrayidx8.i67 = getelementptr inbounds i8, ptr %size_dt_struct, i64 3
  %16 = load i8, ptr %arrayidx8.i67, align 1, !tbaa !13
  %conv9.i68 = zext i8 %16 to i32
  %or10.i69 = or i32 %or7.i66, %conv9.i68
  %add6 = add i32 %or10.i69, %or10.i56
  %sub = sub i32 %or10.i, %add3
  %cmp = icmp ult i32 %sub, %add6
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idx.ext = zext i32 %or10.i to i64
  %add.ptr = getelementptr inbounds i8, ptr %fdt, i64 %idx.ext
  %idx.ext10 = zext i32 %add3 to i64
  %idx.neg = sub nsw i64 0, %idx.ext10
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %conv12 = zext i32 %conv to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr11, ptr align 1 %s, i64 %conv12, i1 false)
  %rev.i.i = tail call i32 @llvm.bswap.i32(i32 %add3) #12
  store i32 %rev.i.i, ptr %size_dt_strings, align 4, !tbaa !23
  %sub14 = sub i32 0, %add3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %sub14, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_property(ptr noundef %fdt, ptr noundef %name, ptr nocapture noundef readonly %val, i32 noundef %len) local_unnamed_addr #8 {
entry:
  %ptr = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ptr) #12
  %call = call i32 @fdt_property_placeholder(ptr noundef %fdt, ptr noundef %name, i32 noundef %len, ptr noundef nonnull %ptr)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %ptr, align 8, !tbaa !28
  %conv = sext i32 %len to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %val, i64 %conv, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ptr) #12
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_finish(ptr noundef %fdt) local_unnamed_addr #8 {
entry:
  %nextoffset = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset) #12
  %0 = load i8, ptr %fdt, align 1, !tbaa !13
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !13
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !13
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !13
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %cmp5.not.i.i = icmp eq i32 %or10.i.i.i, 804389138
  br i1 %cmp5.not.i.i, label %if.end.i, label %fdt_sw_probe_struct_.exit

if.end.i:                                         ; preds = %entry
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 3
  %4 = load i8, ptr %off_dt_strings.i, align 1, !tbaa !13
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 1
  %5 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !13
  %conv2.i.i = zext i8 %5 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 2
  %6 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !13
  %conv5.i.i = zext i8 %6 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 3
  %7 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !13
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %8 = load i8, ptr %totalsize.i, align 1, !tbaa !13
  %conv.i9.i = zext i8 %8 to i32
  %shl.i10.i = shl nuw i32 %conv.i9.i, 24
  %arrayidx1.i11.i = getelementptr inbounds i8, ptr %totalsize.i, i64 1
  %9 = load i8, ptr %arrayidx1.i11.i, align 1, !tbaa !13
  %conv2.i12.i = zext i8 %9 to i32
  %shl3.i13.i = shl nuw nsw i32 %conv2.i12.i, 16
  %or.i14.i = or i32 %shl3.i13.i, %shl.i10.i
  %arrayidx4.i15.i = getelementptr inbounds i8, ptr %totalsize.i, i64 2
  %10 = load i8, ptr %arrayidx4.i15.i, align 1, !tbaa !13
  %conv5.i16.i = zext i8 %10 to i32
  %shl6.i17.i = shl nuw nsw i32 %conv5.i16.i, 8
  %or7.i18.i = or i32 %or.i14.i, %shl6.i17.i
  %arrayidx8.i19.i = getelementptr inbounds i8, ptr %totalsize.i, i64 3
  %11 = load i8, ptr %arrayidx8.i19.i, align 1, !tbaa !13
  %conv9.i20.i = zext i8 %11 to i32
  %or10.i21.i = or i32 %or7.i18.i, %conv9.i20.i
  %cmp.not.i = icmp eq i32 %or10.i.i, %or10.i21.i
  br i1 %cmp.not.i, label %cleanup.cont, label %cleanup35

fdt_sw_probe_struct_.exit:                        ; preds = %entry
  %cmp.i.i = icmp eq i32 %or10.i.i.i, -804389139
  %retval.0.i.i = select i1 %cmp.i.i, i32 -7, i32 -9
  br label %cleanup35

cleanup.cont:                                     ; preds = %if.end.i
  %call1 = tail call fastcc ptr @fdt_grab_space_(ptr noundef nonnull %fdt, i64 noundef 4)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cleanup35, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  store i32 150994944, ptr %call1, align 4, !tbaa !12
  %12 = load i8, ptr %totalsize.i, align 1, !tbaa !13
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %13 = load i8, ptr %arrayidx1.i11.i, align 1, !tbaa !13
  %conv2.i = zext i8 %13 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %14 = load i8, ptr %arrayidx4.i15.i, align 1, !tbaa !13
  %conv5.i = zext i8 %14 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %15 = load i8, ptr %arrayidx8.i19.i, align 1, !tbaa !13
  %conv9.i = zext i8 %15 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %16 = load i8, ptr %size_dt_strings, align 1, !tbaa !13
  %conv.i64 = zext i8 %16 to i32
  %shl.i65 = shl nuw i32 %conv.i64, 24
  %arrayidx1.i66 = getelementptr inbounds i8, ptr %size_dt_strings, i64 1
  %17 = load i8, ptr %arrayidx1.i66, align 1, !tbaa !13
  %conv2.i67 = zext i8 %17 to i32
  %shl3.i68 = shl nuw nsw i32 %conv2.i67, 16
  %or.i69 = or i32 %shl3.i68, %shl.i65
  %arrayidx4.i70 = getelementptr inbounds i8, ptr %size_dt_strings, i64 2
  %18 = load i8, ptr %arrayidx4.i70, align 1, !tbaa !13
  %conv5.i71 = zext i8 %18 to i32
  %shl6.i72 = shl nuw nsw i32 %conv5.i71, 8
  %or7.i73 = or i32 %or.i69, %shl6.i72
  %arrayidx8.i74 = getelementptr inbounds i8, ptr %size_dt_strings, i64 3
  %19 = load i8, ptr %arrayidx8.i74, align 1, !tbaa !13
  %conv9.i75 = zext i8 %19 to i32
  %or10.i76 = or i32 %or7.i73, %conv9.i75
  %sub = sub i32 %or10.i, %or10.i76
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %20 = load i8, ptr %off_dt_struct, align 1, !tbaa !13
  %conv.i77 = zext i8 %20 to i32
  %shl.i78 = shl nuw i32 %conv.i77, 24
  %arrayidx1.i79 = getelementptr inbounds i8, ptr %off_dt_struct, i64 1
  %21 = load i8, ptr %arrayidx1.i79, align 1, !tbaa !13
  %conv2.i80 = zext i8 %21 to i32
  %shl3.i81 = shl nuw nsw i32 %conv2.i80, 16
  %or.i82 = or i32 %shl3.i81, %shl.i78
  %arrayidx4.i83 = getelementptr inbounds i8, ptr %off_dt_struct, i64 2
  %22 = load i8, ptr %arrayidx4.i83, align 1, !tbaa !13
  %conv5.i84 = zext i8 %22 to i32
  %shl6.i85 = shl nuw nsw i32 %conv5.i84, 8
  %or7.i86 = or i32 %or.i82, %shl6.i85
  %arrayidx8.i87 = getelementptr inbounds i8, ptr %off_dt_struct, i64 3
  %23 = load i8, ptr %arrayidx8.i87, align 1, !tbaa !13
  %conv9.i88 = zext i8 %23 to i32
  %or10.i89 = or i32 %or7.i86, %conv9.i88
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %24 = load i8, ptr %size_dt_struct, align 1, !tbaa !13
  %conv.i90 = zext i8 %24 to i32
  %shl.i91 = shl nuw i32 %conv.i90, 24
  %arrayidx1.i92 = getelementptr inbounds i8, ptr %size_dt_struct, i64 1
  %25 = load i8, ptr %arrayidx1.i92, align 1, !tbaa !13
  %conv2.i93 = zext i8 %25 to i32
  %shl3.i94 = shl nuw nsw i32 %conv2.i93, 16
  %or.i95 = or i32 %shl3.i94, %shl.i91
  %arrayidx4.i96 = getelementptr inbounds i8, ptr %size_dt_struct, i64 2
  %26 = load i8, ptr %arrayidx4.i96, align 1, !tbaa !13
  %conv5.i97 = zext i8 %26 to i32
  %shl6.i98 = shl nuw nsw i32 %conv5.i97, 8
  %or7.i99 = or i32 %or.i95, %shl6.i98
  %arrayidx8.i100 = getelementptr inbounds i8, ptr %size_dt_struct, i64 3
  %27 = load i8, ptr %arrayidx8.i100, align 1, !tbaa !13
  %conv9.i101 = zext i8 %27 to i32
  %or10.i102 = or i32 %or7.i99, %conv9.i101
  %add = add i32 %or10.i102, %or10.i89
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, ptr %fdt, i64 %idx.ext
  %idx.ext9 = sext i32 %sub to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %fdt, i64 %idx.ext9
  %conv = zext i32 %or10.i76 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %add.ptr, ptr nonnull align 1 %add.ptr10, i64 %conv, i1 false)
  %rev.i.i = tail call i32 @llvm.bswap.i32(i32 %add) #12
  store i32 %rev.i.i, ptr %off_dt_strings.i, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %if.end3
  %offset.0 = phi i32 [ 0, %if.end3 ], [ %37, %if.end27 ]
  %call13 = call i32 @fdt_next_tag(ptr noundef nonnull %fdt, i32 noundef %offset.0, ptr noundef nonnull %nextoffset) #12
  switch i32 %call13, label %if.end27 [
    i32 9, label %while.end
    i32 3, label %if.then18
  ]

if.then18:                                        ; preds = %while.cond
  %28 = load i8, ptr %off_dt_struct, align 1, !tbaa !13
  %conv.i.i.i117 = zext i8 %28 to i64
  %shl.i.i.i118 = shl nuw nsw i64 %conv.i.i.i117, 24
  %29 = load i8, ptr %arrayidx1.i79, align 1, !tbaa !13
  %conv2.i.i.i120 = zext i8 %29 to i64
  %shl3.i.i.i121 = shl nuw nsw i64 %conv2.i.i.i120, 16
  %or.i.i.i122 = or i64 %shl3.i.i.i121, %shl.i.i.i118
  %30 = load i8, ptr %arrayidx4.i83, align 1, !tbaa !13
  %conv5.i.i.i124 = zext i8 %30 to i64
  %shl6.i.i.i125 = shl nuw nsw i64 %conv5.i.i.i124, 8
  %or7.i.i.i126 = or i64 %or.i.i.i122, %shl6.i.i.i125
  %31 = load i8, ptr %arrayidx8.i87, align 1, !tbaa !13
  %conv9.i.i.i128 = zext i8 %31 to i64
  %or10.i.i.i129 = or i64 %or7.i.i.i126, %conv9.i.i.i128
  %add.ptr.i.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i.i129
  %idx.ext1.i.i = sext i32 %offset.0 to i64
  %add.ptr2.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 %idx.ext1.i.i
  %nameoff20 = getelementptr inbounds %struct.fdt_property, ptr %add.ptr2.i.i, i64 0, i32 2
  %32 = load i32, ptr %nameoff20, align 4, !tbaa !26
  %rev.i = call i32 @llvm.bswap.i32(i32 %32) #12
  %33 = load i8, ptr %size_dt_strings, align 1, !tbaa !13
  %conv.i130 = zext i8 %33 to i32
  %shl.i131 = shl nuw i32 %conv.i130, 24
  %34 = load i8, ptr %arrayidx1.i66, align 1, !tbaa !13
  %conv2.i133 = zext i8 %34 to i32
  %shl3.i134 = shl nuw nsw i32 %conv2.i133, 16
  %or.i135 = or i32 %shl3.i134, %shl.i131
  %35 = load i8, ptr %arrayidx4.i70, align 1, !tbaa !13
  %conv5.i137 = zext i8 %35 to i32
  %shl6.i138 = shl nuw nsw i32 %conv5.i137, 8
  %or7.i139 = or i32 %or.i135, %shl6.i138
  %36 = load i8, ptr %arrayidx8.i74, align 1, !tbaa !13
  %conv9.i141 = zext i8 %36 to i32
  %or10.i142 = or i32 %or7.i139, %conv9.i141
  %add24 = add i32 %or10.i142, %rev.i
  %rev.i143 = call i32 @llvm.bswap.i32(i32 %add24) #12
  store i32 %rev.i143, ptr %nameoff20, align 4, !tbaa !26
  br label %if.end27

if.end27:                                         ; preds = %if.then18, %while.cond
  %37 = load i32, ptr %nextoffset, align 4, !tbaa !12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load i32, ptr %nextoffset, align 4, !tbaa !12
  %cmp28 = icmp slt i32 %38, 0
  br i1 %cmp28, label %cleanup35, label %if.end31

if.end31:                                         ; preds = %while.end
  %39 = load i8, ptr %size_dt_strings, align 1, !tbaa !13
  %conv.i144 = zext i8 %39 to i32
  %shl.i145 = shl nuw i32 %conv.i144, 24
  %40 = load i8, ptr %arrayidx1.i66, align 1, !tbaa !13
  %conv2.i147 = zext i8 %40 to i32
  %shl3.i148 = shl nuw nsw i32 %conv2.i147, 16
  %or.i149 = or i32 %shl3.i148, %shl.i145
  %41 = load i8, ptr %arrayidx4.i70, align 1, !tbaa !13
  %conv5.i151 = zext i8 %41 to i32
  %shl6.i152 = shl nuw nsw i32 %conv5.i151, 8
  %or7.i153 = or i32 %or.i149, %shl6.i152
  %42 = load i8, ptr %arrayidx8.i74, align 1, !tbaa !13
  %conv9.i155 = zext i8 %42 to i32
  %or10.i156 = or i32 %or7.i153, %conv9.i155
  %add34 = add i32 %or10.i156, %add
  %rev.i.i157 = call i32 @llvm.bswap.i32(i32 %add34) #12
  store i32 %rev.i.i157, ptr %totalsize.i, align 4, !tbaa !11
  %last_comp_version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 6
  store i32 268435456, ptr %last_comp_version.i, align 4, !tbaa !10
  store i32 -302117424, ptr %fdt, align 4, !tbaa !5
  br label %cleanup35

cleanup35:                                        ; preds = %if.end31, %while.end, %cleanup.cont, %fdt_sw_probe_struct_.exit, %if.end.i
  %retval.1 = phi i32 [ 0, %if.end31 ], [ %retval.0.i.i, %fdt_sw_probe_struct_.exit ], [ -3, %cleanup.cont ], [ %38, %while.end ], [ -7, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset) #12
  ret i32 %retval.1
}

declare i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare ptr @fdt_find_string_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

attributes #0 = { argmemonly mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"fdt_header", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 24}
!11 = !{!6, !7, i64 4}
!12 = !{!7, !7, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!6, !7, i64 12}
!15 = !{!16, !17, i64 0}
!16 = !{!"fdt_reserve_entry", !17, i64 0, !17, i64 8}
!17 = !{!"long", !8, i64 0}
!18 = !{!16, !17, i64 8}
!19 = !{!6, !7, i64 8}
!20 = !{!21, !7, i64 0}
!21 = !{!"fdt_node_header", !7, i64 0, !8, i64 4}
!22 = !{!6, !7, i64 36}
!23 = !{!6, !7, i64 32}
!24 = !{!25, !7, i64 0}
!25 = !{!"fdt_property", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 12}
!26 = !{!25, !7, i64 8}
!27 = !{!25, !7, i64 4}
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !8, i64 0}
