; ModuleID = '/llk/IR_all_yes/scripts/dtc/libfdt/fdt_rw.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }
%struct.fdt_node_header = type { i32, [0 x i8] }

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_add_mem_rsv(ptr noundef %fdt, i64 noundef %address, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup10

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup10, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1, !tbaa !5
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1, !tbaa !5
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1, !tbaa !5
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1, !tbaa !5
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #9
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup10

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 285212672, ptr %version.i, align 4, !tbaa !8
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call1 = tail call i32 @fdt_num_mem_rsv(ptr noundef nonnull %fdt) #9
  %off_mem_rsvmap.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 4
  %8 = load i8, ptr %off_mem_rsvmap.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %8 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i.i, i64 1
  %9 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %9 to i64
  %shl3.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 16
  %or.i.i.i = or i64 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i.i, i64 2
  %10 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %10 to i64
  %shl6.i.i.i = shl nuw nsw i64 %conv5.i.i.i, 8
  %or7.i.i.i = or i64 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i.i, i64 3
  %11 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %11 to i64
  %or10.i.i.i = or i64 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i.i
  %idx.ext1.i.i = sext i32 %call1 to i64
  %add.ptr2.i.i = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr.i.i, i64 %idx.ext1.i.i
  %call3 = tail call fastcc i32 @fdt_splice_mem_rsv_(ptr noundef nonnull %fdt, ptr noundef %add.ptr2.i.i, i32 noundef 0, i32 noundef 1)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %cleanup10

if.end5:                                          ; preds = %cleanup.cont
  %or26.i = tail call i64 @llvm.bswap.i64(i64 %address) #9
  store i64 %or26.i, ptr %add.ptr2.i.i, align 8, !tbaa !11
  %or26.i18 = tail call i64 @llvm.bswap.i64(i64 %size) #9
  %size9 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr2.i.i, i64 0, i32 1
  store i64 %or26.i18, ptr %size9, align 8, !tbaa !14
  br label %cleanup10

cleanup10:                                        ; preds = %if.end5, %cleanup.cont, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ 0, %if.end5 ], [ %call3, %cleanup.cont ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @fdt_num_mem_rsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define internal fastcc i32 @fdt_splice_mem_rsv_(ptr noundef %fdt, ptr noundef %p, i32 noundef %oldn, i32 noundef %newn) unnamed_addr #3 {
entry:
  %mul3 = shl i32 %oldn, 4
  %mul6 = shl i32 %newn, 4
  %off_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 3
  %0 = load i8, ptr %off_dt_strings.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %size_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %4 = load i8, ptr %size_dt_strings.i.i, align 1, !tbaa !5
  %conv.i3.i.i = zext i8 %4 to i32
  %shl.i4.i.i = shl nuw i32 %conv.i3.i.i, 24
  %arrayidx1.i5.i.i = getelementptr inbounds i8, ptr %size_dt_strings.i.i, i64 1
  %5 = load i8, ptr %arrayidx1.i5.i.i, align 1, !tbaa !5
  %conv2.i6.i.i = zext i8 %5 to i32
  %shl3.i7.i.i = shl nuw nsw i32 %conv2.i6.i.i, 16
  %or.i8.i.i = or i32 %shl3.i7.i.i, %shl.i4.i.i
  %arrayidx4.i9.i.i = getelementptr inbounds i8, ptr %size_dt_strings.i.i, i64 2
  %6 = load i8, ptr %arrayidx4.i9.i.i, align 1, !tbaa !5
  %conv5.i10.i.i = zext i8 %6 to i32
  %shl6.i11.i.i = shl nuw nsw i32 %conv5.i10.i.i, 8
  %or7.i12.i.i = or i32 %or.i8.i.i, %shl6.i11.i.i
  %arrayidx8.i13.i.i = getelementptr inbounds i8, ptr %size_dt_strings.i.i, i64 3
  %7 = load i8, ptr %arrayidx8.i13.i.i, align 1, !tbaa !5
  %conv9.i14.i.i = zext i8 %7 to i32
  %or10.i15.i.i = or i32 %or7.i12.i.i, %conv9.i14.i.i
  %add.i.i = add i32 %or10.i15.i.i, %or10.i.i.i
  %cmp.i = icmp slt i32 %mul3, 0
  br i1 %cmp.i, label %cleanup, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %sub.ptr.lhs.cast.i = ptrtoint ptr %p to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %fdt to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv55.i = zext i32 %mul3 to i64
  %add.i = add i64 %sub.ptr.sub.i, %conv55.i
  %cmp1.i = icmp ult i64 %add.i, %sub.ptr.sub.i
  br i1 %cmp1.i, label %cleanup, label %lor.lhs.false3.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %conv6.i = zext i32 %add.i.i to i64
  %cmp7.i = icmp ugt i64 %add.i, %conv6.i
  br i1 %cmp7.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %cmp9.i = icmp ult ptr %p, %fdt
  %add12.i = add i32 %add.i.i, %mul6
  %cmp13.i = icmp ult i32 %add12.i, %mul3
  %or.cond.i = select i1 %cmp9.i, i1 true, i1 %cmp13.i
  br i1 %or.cond.i, label %cleanup, label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i
  %sub.i = sub i32 %mul6, %mul3
  %add17.i = add i32 %sub.i, %add.i.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %8 = load i8, ptr %totalsize.i, align 1, !tbaa !5
  %conv.i.i = zext i8 %8 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %totalsize.i, i64 1
  %9 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !5
  %conv2.i.i = zext i8 %9 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %totalsize.i, i64 2
  %10 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !5
  %conv5.i.i = zext i8 %10 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %totalsize.i, i64 3
  %11 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %conv9.i.i = zext i8 %11 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %cmp19.i = icmp ugt i32 %add17.i, %or10.i.i
  br i1 %cmp19.i, label %cleanup, label %if.end

if.end:                                           ; preds = %if.end16.i
  %idx.ext.i = sext i32 %mul6 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %p, i64 %idx.ext.i
  %add.ptr24.i = getelementptr inbounds i8, ptr %p, i64 %conv55.i
  %add.ptr26.i = getelementptr inbounds i8, ptr %fdt, i64 %conv6.i
  %sub.ptr.lhs.cast29.i = ptrtoint ptr %add.ptr26.i to i64
  %sub.ptr.rhs.cast30.i = ptrtoint ptr %add.ptr24.i to i64
  %sub.ptr.sub31.i = sub i64 %sub.ptr.lhs.cast29.i, %sub.ptr.rhs.cast30.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr.i, ptr align 1 %add.ptr24.i, i64 %sub.ptr.sub31.i, i1 false) #9
  %sub = sub nsw i32 %newn, %oldn
  %mul = shl i32 %sub, 4
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %12 = load i8, ptr %off_dt_struct, align 1, !tbaa !5
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %off_dt_struct, i64 1
  %13 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %13 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %off_dt_struct, i64 2
  %14 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %14 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %off_dt_struct, i64 3
  %15 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %15 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %add = add i32 %or10.i, %mul
  %rev.i.i = tail call i32 @llvm.bswap.i32(i32 %add) #9
  store i32 %rev.i.i, ptr %off_dt_struct, align 4, !tbaa !15
  %16 = load i8, ptr %off_dt_strings.i.i, align 1, !tbaa !5
  %conv.i20 = zext i8 %16 to i32
  %shl.i21 = shl nuw i32 %conv.i20, 24
  %17 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i23 = zext i8 %17 to i32
  %shl3.i24 = shl nuw nsw i32 %conv2.i23, 16
  %or.i25 = or i32 %shl3.i24, %shl.i21
  %18 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i27 = zext i8 %18 to i32
  %shl6.i28 = shl nuw nsw i32 %conv5.i27, 8
  %or7.i29 = or i32 %or.i25, %shl6.i28
  %19 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i31 = zext i8 %19 to i32
  %or10.i32 = or i32 %or7.i29, %conv9.i31
  %add10 = add i32 %or10.i32, %mul
  %rev.i.i33 = tail call i32 @llvm.bswap.i32(i32 %add10) #9
  store i32 %rev.i.i33, ptr %off_dt_strings.i.i, align 4, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end16.i, %if.end.i, %lor.lhs.false3.i, %lor.lhs.false.i, %entry
  %retval.0 = phi i32 [ 0, %if.end ], [ -3, %if.end16.i ], [ -4, %if.end.i ], [ -4, %entry ], [ -4, %lor.lhs.false.i ], [ -4, %lor.lhs.false3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_del_mem_rsv(ptr noundef %fdt, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %off_mem_rsvmap.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 4
  %0 = load i8, ptr %off_mem_rsvmap.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %0 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %1 to i64
  %shl3.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 16
  %or.i.i.i = or i64 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %2 to i64
  %shl6.i.i.i = shl nuw nsw i64 %conv5.i.i.i, 8
  %or7.i.i.i = or i64 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %3 to i64
  %or10.i.i.i = or i64 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i.i
  %idx.ext1.i.i = sext i32 %n to i64
  %add.ptr2.i.i = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr.i.i, i64 %idx.ext1.i.i
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup7

cleanup.cont.i:                                   ; preds = %entry
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %4 = load i8, ptr %version.i, align 1, !tbaa !5
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %version.i, i64 1
  %5 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !5
  %conv2.i.i = zext i8 %5 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %version.i, i64 2
  %6 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !5
  %conv5.i.i = zext i8 %6 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %version.i, i64 3
  %7 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup7, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %8 = load i8, ptr %size_dt_struct.i, align 1, !tbaa !5
  %conv.i25.i = zext i8 %8 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 1
  %9 = load i8, ptr %arrayidx1.i27.i, align 1, !tbaa !5
  %conv2.i28.i = zext i8 %9 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 2
  %10 = load i8, ptr %arrayidx4.i31.i, align 1, !tbaa !5
  %conv5.i32.i = zext i8 %10 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 3
  %11 = load i8, ptr %arrayidx8.i35.i, align 1, !tbaa !5
  %conv9.i36.i = zext i8 %11 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #9
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup7

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 285212672, ptr %version.i, align 4, !tbaa !8
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call2 = tail call i32 @fdt_num_mem_rsv(ptr noundef nonnull %fdt) #9
  %cmp3.not = icmp sgt i32 %call2, %n
  br i1 %cmp3.not, label %if.end5, label %cleanup7

if.end5:                                          ; preds = %cleanup.cont
  %call6 = tail call fastcc i32 @fdt_splice_mem_rsv_(ptr noundef nonnull %fdt, ptr noundef nonnull %add.ptr2.i.i, i32 noundef 1, i32 noundef 0)
  br label %cleanup7

cleanup7:                                         ; preds = %if.end5, %cleanup.cont, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ %call6, %if.end5 ], [ -1, %cleanup.cont ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ]
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_set_name(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %name) local_unnamed_addr #0 {
entry:
  %oldlen = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oldlen) #9
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup20

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup20, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1, !tbaa !5
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1, !tbaa !5
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1, !tbaa !5
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1, !tbaa !5
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #9
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup20

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 285212672, ptr %version.i, align 4, !tbaa !8
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call1 = call ptr @fdt_get_name(ptr noundef nonnull %fdt, i32 noundef %nodeoffset, ptr noundef nonnull %oldlen) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %cleanup.cont
  %8 = load i32, ptr %oldlen, align 4, !tbaa !17
  br label %cleanup20

if.end3:                                          ; preds = %cleanup.cont
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #10
  %9 = load i32, ptr %oldlen, align 4, !tbaa !17
  %sub = add i32 %9, 4
  %and = and i32 %sub, -4
  %add8 = shl i64 %call4, 32
  %sext = add i64 %add8, 4294967296
  %conv9 = ashr exact i64 %sext, 32
  %10 = trunc i64 %conv9 to i32
  %11 = add i32 %10, 3
  %conv13 = and i32 %11, -4
  %call14 = call fastcc i32 @fdt_splice_struct_(ptr noundef nonnull %fdt, ptr noundef nonnull %call1, i32 noundef %and, i32 noundef %conv13)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %cleanup20

if.end17:                                         ; preds = %if.end3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call1, ptr align 1 %name, i64 %conv9, i1 false)
  br label %cleanup20

cleanup20:                                        ; preds = %if.end17, %if.end3, %if.then2, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ 0, %if.end17 ], [ %8, %if.then2 ], [ %call14, %if.end3 ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldlen) #9
  ret i32 %retval.1
}

declare ptr @fdt_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define internal fastcc i32 @fdt_splice_struct_(ptr noundef %fdt, ptr noundef %p, i32 noundef %oldlen, i32 noundef %newlen) unnamed_addr #3 {
entry:
  %off_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 3
  %0 = load i8, ptr %off_dt_strings.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %size_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %4 = load i8, ptr %size_dt_strings.i.i, align 1, !tbaa !5
  %conv.i3.i.i = zext i8 %4 to i32
  %shl.i4.i.i = shl nuw i32 %conv.i3.i.i, 24
  %arrayidx1.i5.i.i = getelementptr inbounds i8, ptr %size_dt_strings.i.i, i64 1
  %5 = load i8, ptr %arrayidx1.i5.i.i, align 1, !tbaa !5
  %conv2.i6.i.i = zext i8 %5 to i32
  %shl3.i7.i.i = shl nuw nsw i32 %conv2.i6.i.i, 16
  %or.i8.i.i = or i32 %shl3.i7.i.i, %shl.i4.i.i
  %arrayidx4.i9.i.i = getelementptr inbounds i8, ptr %size_dt_strings.i.i, i64 2
  %6 = load i8, ptr %arrayidx4.i9.i.i, align 1, !tbaa !5
  %conv5.i10.i.i = zext i8 %6 to i32
  %shl6.i11.i.i = shl nuw nsw i32 %conv5.i10.i.i, 8
  %or7.i12.i.i = or i32 %or.i8.i.i, %shl6.i11.i.i
  %arrayidx8.i13.i.i = getelementptr inbounds i8, ptr %size_dt_strings.i.i, i64 3
  %7 = load i8, ptr %arrayidx8.i13.i.i, align 1, !tbaa !5
  %conv9.i14.i.i = zext i8 %7 to i32
  %or10.i15.i.i = or i32 %or7.i12.i.i, %conv9.i14.i.i
  %add.i.i = add i32 %or10.i15.i.i, %or10.i.i.i
  %cmp.i = icmp slt i32 %oldlen, 0
  br i1 %cmp.i, label %cleanup, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %sub.ptr.lhs.cast.i = ptrtoint ptr %p to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %fdt to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv55.i = zext i32 %oldlen to i64
  %add.i = add i64 %sub.ptr.sub.i, %conv55.i
  %cmp1.i = icmp ult i64 %add.i, %sub.ptr.sub.i
  br i1 %cmp1.i, label %cleanup, label %lor.lhs.false3.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %conv6.i = zext i32 %add.i.i to i64
  %cmp7.i = icmp ugt i64 %add.i, %conv6.i
  br i1 %cmp7.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %cmp9.i = icmp ult ptr %p, %fdt
  %add12.i = add i32 %add.i.i, %newlen
  %cmp13.i = icmp ult i32 %add12.i, %oldlen
  %or.cond.i = select i1 %cmp9.i, i1 true, i1 %cmp13.i
  br i1 %or.cond.i, label %cleanup, label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i
  %sub.i = sub i32 %newlen, %oldlen
  %add17.i = add i32 %sub.i, %add.i.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %8 = load i8, ptr %totalsize.i, align 1, !tbaa !5
  %conv.i.i = zext i8 %8 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %totalsize.i, i64 1
  %9 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !5
  %conv2.i.i = zext i8 %9 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %totalsize.i, i64 2
  %10 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !5
  %conv5.i.i = zext i8 %10 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %totalsize.i, i64 3
  %11 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %conv9.i.i = zext i8 %11 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %cmp19.i = icmp ugt i32 %add17.i, %or10.i.i
  br i1 %cmp19.i, label %cleanup, label %if.end

if.end:                                           ; preds = %if.end16.i
  %idx.ext.i = sext i32 %newlen to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %p, i64 %idx.ext.i
  %add.ptr24.i = getelementptr inbounds i8, ptr %p, i64 %conv55.i
  %add.ptr26.i = getelementptr inbounds i8, ptr %fdt, i64 %conv6.i
  %sub.ptr.lhs.cast29.i = ptrtoint ptr %add.ptr26.i to i64
  %sub.ptr.rhs.cast30.i = ptrtoint ptr %add.ptr24.i to i64
  %sub.ptr.sub31.i = sub i64 %sub.ptr.lhs.cast29.i, %sub.ptr.rhs.cast30.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr.i, ptr align 1 %add.ptr24.i, i64 %sub.ptr.sub31.i, i1 false) #9
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %12 = load i8, ptr %size_dt_struct, align 1, !tbaa !5
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %size_dt_struct, i64 1
  %13 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %13 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %size_dt_struct, i64 2
  %14 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %14 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %size_dt_struct, i64 3
  %15 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %15 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %add = add i32 %or10.i, %sub.i
  %rev.i.i = tail call i32 @llvm.bswap.i32(i32 %add) #9
  store i32 %rev.i.i, ptr %size_dt_struct, align 4, !tbaa !18
  %16 = load i8, ptr %off_dt_strings.i.i, align 1, !tbaa !5
  %conv.i12 = zext i8 %16 to i32
  %shl.i13 = shl nuw i32 %conv.i12, 24
  %17 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i15 = zext i8 %17 to i32
  %shl3.i16 = shl nuw nsw i32 %conv2.i15, 16
  %or.i17 = or i32 %shl3.i16, %shl.i13
  %18 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i19 = zext i8 %18 to i32
  %shl6.i20 = shl nuw nsw i32 %conv5.i19, 8
  %or7.i21 = or i32 %or.i17, %shl6.i20
  %19 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i23 = zext i8 %19 to i32
  %or10.i24 = or i32 %or7.i21, %conv9.i23
  %add3 = add i32 %or10.i24, %sub.i
  %rev.i.i25 = tail call i32 @llvm.bswap.i32(i32 %add3) #9
  store i32 %rev.i.i25, ptr %off_dt_strings.i.i, align 4, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end16.i, %if.end.i, %lor.lhs.false3.i, %lor.lhs.false.i, %entry
  %retval.0 = phi i32 [ 0, %if.end ], [ -3, %if.end16.i ], [ -4, %if.end.i ], [ -4, %entry ], [ -4, %lor.lhs.false.i ], [ -4, %lor.lhs.false3.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_setprop_placeholder(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr nocapture noundef writeonly %prop_data) local_unnamed_addr #0 {
entry:
  %oldlen.i = alloca i32, align 4
  %prop = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prop) #9
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup8

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup8, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1, !tbaa !5
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1, !tbaa !5
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1, !tbaa !5
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1, !tbaa !5
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #9
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup8

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 285212672, ptr %version.i, align 4, !tbaa !8
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oldlen.i) #9
  %call.i.i = call ptr @fdt_get_property(ptr noundef nonnull %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %oldlen.i) #9
  store ptr %call.i.i, ptr %prop, align 8, !tbaa !19
  %tobool.not.i17 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i17, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cleanup.cont
  %8 = load i32, ptr %oldlen.i, align 4, !tbaa !17
  br label %fdt_resize_property_.exit

if.end.i:                                         ; preds = %cleanup.cont
  %data.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 0, i32 3
  %9 = load i32, ptr %oldlen.i, align 4, !tbaa !17
  %sub.i = add i32 %9, 3
  %and.i = and i32 %sub.i, -4
  %sub4.i = add i32 %len, 3
  %and5.i = and i32 %sub4.i, -4
  %call7.i = call fastcc i32 @fdt_splice_struct_(ptr noundef nonnull %fdt, ptr noundef nonnull %data.i, i32 noundef %and.i, i32 noundef %and5.i) #9
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end5.thread, label %fdt_resize_property_.exit

if.end5.thread:                                   ; preds = %if.end.i
  %rev.i.i = call i32 @llvm.bswap.i32(i32 %len) #9
  %len12.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i64 0, i32 1
  store i32 %rev.i.i, ptr %len12.i, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldlen.i) #9
  br label %if.end7

fdt_resize_property_.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ %call7.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldlen.i) #9
  %cmp2 = icmp eq i32 %retval.0.i, -1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %fdt_resize_property_.exit
  %call4 = call fastcc i32 @fdt_add_property_(ptr noundef nonnull %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr noundef nonnull %prop)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %fdt_resize_property_.exit
  %err.0 = phi i32 [ %call4, %if.then3 ], [ %retval.0.i, %fdt_resize_property_.exit ]
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end5.if.end7_crit_edge, label %cleanup8

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  %.pre = load ptr, ptr %prop, align 8, !tbaa !19
  br label %if.end7

if.end7:                                          ; preds = %if.end5.if.end7_crit_edge, %if.end5.thread
  %10 = phi ptr [ %.pre, %if.end5.if.end7_crit_edge ], [ %call.i.i, %if.end5.thread ]
  %data = getelementptr inbounds %struct.fdt_property, ptr %10, i64 0, i32 3
  store ptr %data, ptr %prop_data, align 8, !tbaa !19
  br label %cleanup8

cleanup8:                                         ; preds = %if.end7, %if.end5, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ 0, %if.end7 ], [ %err.0, %if.end5 ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prop) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fdt_add_property_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr nocapture noundef %prop) unnamed_addr #0 {
entry:
  %call = tail call i32 @fdt_check_node_offset_(ptr noundef %fdt, i32 noundef %nodeoffset) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 3
  %0 = load i8, ptr %off_dt_strings.i, align 1, !tbaa !5
  %conv.i.i = zext i8 %0 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !5
  %conv2.i.i = zext i8 %1 to i64
  %shl3.i.i = shl nuw nsw i64 %conv2.i.i, 16
  %or.i.i = or i64 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !5
  %conv5.i.i = zext i8 %2 to i64
  %shl6.i.i = shl nuw nsw i64 %conv5.i.i, 8
  %or7.i.i = or i64 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %conv9.i.i = zext i8 %3 to i64
  %or10.i.i = or i64 %or7.i.i, %conv9.i.i
  %add.ptr.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i
  %call1.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #10
  %4 = trunc i64 %call1.i to i32
  %conv.i = add i32 %4, 1
  %size_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %5 = load i8, ptr %size_dt_strings.i, align 1, !tbaa !5
  %conv.i42.i = zext i8 %5 to i32
  %shl.i43.i = shl nuw i32 %conv.i42.i, 24
  %arrayidx1.i44.i = getelementptr inbounds i8, ptr %size_dt_strings.i, i64 1
  %6 = load i8, ptr %arrayidx1.i44.i, align 1, !tbaa !5
  %conv2.i45.i = zext i8 %6 to i32
  %shl3.i46.i = shl nuw nsw i32 %conv2.i45.i, 16
  %or.i47.i = or i32 %shl3.i46.i, %shl.i43.i
  %arrayidx4.i48.i = getelementptr inbounds i8, ptr %size_dt_strings.i, i64 2
  %7 = load i8, ptr %arrayidx4.i48.i, align 1, !tbaa !5
  %conv5.i49.i = zext i8 %7 to i32
  %shl6.i50.i = shl nuw nsw i32 %conv5.i49.i, 8
  %or7.i51.i = or i32 %or.i47.i, %shl6.i50.i
  %arrayidx8.i52.i = getelementptr inbounds i8, ptr %size_dt_strings.i, i64 3
  %8 = load i8, ptr %arrayidx8.i52.i, align 1, !tbaa !5
  %conv9.i53.i = zext i8 %8 to i32
  %or10.i54.i = or i32 %or7.i51.i, %conv9.i53.i
  %call4.i = tail call ptr @fdt_find_string_(ptr noundef %add.ptr.i, i32 noundef %or10.i54.i, ptr noundef %name) #9
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call4.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv6.i = trunc i64 %sub.ptr.sub.i to i32
  br label %fdt_find_add_string_.exit

if.end7.i:                                        ; preds = %if.end
  %9 = load i8, ptr %size_dt_strings.i, align 1, !tbaa !5
  %conv.i55.i = zext i8 %9 to i32
  %shl.i56.i = shl nuw i32 %conv.i55.i, 24
  %10 = load i8, ptr %arrayidx1.i44.i, align 1, !tbaa !5
  %conv2.i58.i = zext i8 %10 to i32
  %shl3.i59.i = shl nuw nsw i32 %conv2.i58.i, 16
  %or.i60.i = or i32 %shl3.i59.i, %shl.i56.i
  %11 = load i8, ptr %arrayidx4.i48.i, align 1, !tbaa !5
  %conv5.i62.i = zext i8 %11 to i32
  %shl6.i63.i = shl nuw nsw i32 %conv5.i62.i, 8
  %or7.i64.i = or i32 %or.i60.i, %shl6.i63.i
  %12 = load i8, ptr %arrayidx8.i52.i, align 1, !tbaa !5
  %conv9.i66.i = zext i8 %12 to i32
  %or10.i67.i = or i32 %or7.i64.i, %conv9.i66.i
  %idx.ext10.i = zext i32 %or10.i67.i to i64
  %add.ptr11.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext10.i
  %13 = load i8, ptr %off_dt_strings.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %13 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %14 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %14 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %15 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %15 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %16 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %16 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %idx.ext.i.i = zext i32 %or10.i.i.i to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %fdt, i64 %idx.ext.i.i
  %add.ptr3.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 %idx.ext10.i
  %add.i.i.i.i = add i32 %or10.i.i.i, %or10.i67.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr3.i.i to i64
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %fdt to i64
  %sub.ptr.sub.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv6.i.i.i = zext i32 %add.i.i.i.i to i64
  %cmp7.i.i.i = icmp ugt i64 %sub.ptr.sub.i.i.i, %conv6.i.i.i
  %cmp9.i.i.i = icmp ult ptr %add.ptr3.i.i, %fdt
  %or.cond.i.i = select i1 %cmp7.i.i.i, i1 true, i1 %cmp9.i.i.i
  br i1 %or.cond.i.i, label %cleanup, label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %if.end7.i
  %add17.i.i.i = add i32 %add.i.i.i.i, %conv.i
  %totalsize.i.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %17 = load i8, ptr %totalsize.i.i.i, align 1, !tbaa !5
  %conv.i.i.i.i = zext i8 %17 to i32
  %shl.i.i.i.i = shl nuw i32 %conv.i.i.i.i, 24
  %arrayidx1.i.i.i.i = getelementptr inbounds i8, ptr %totalsize.i.i.i, i64 1
  %18 = load i8, ptr %arrayidx1.i.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i.i = zext i8 %18 to i32
  %shl3.i.i.i.i = shl nuw nsw i32 %conv2.i.i.i.i, 16
  %or.i.i.i.i = or i32 %shl3.i.i.i.i, %shl.i.i.i.i
  %arrayidx4.i.i.i.i = getelementptr inbounds i8, ptr %totalsize.i.i.i, i64 2
  %19 = load i8, ptr %arrayidx4.i.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i.i = zext i8 %19 to i32
  %shl6.i.i.i.i = shl nuw nsw i32 %conv5.i.i.i.i, 8
  %or7.i.i.i.i = or i32 %or.i.i.i.i, %shl6.i.i.i.i
  %arrayidx8.i.i.i.i = getelementptr inbounds i8, ptr %totalsize.i.i.i, i64 3
  %20 = load i8, ptr %arrayidx8.i.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i.i = zext i8 %20 to i32
  %or10.i.i.i.i = or i32 %or7.i.i.i.i, %conv9.i.i.i.i
  %cmp19.i.i.i = icmp ugt i32 %add17.i.i.i, %or10.i.i.i.i
  br i1 %cmp19.i.i.i, label %cleanup, label %if.end15.i

if.end15.i:                                       ; preds = %if.end16.i.i.i
  %idx.ext.i.i.i = sext i32 %conv.i to i64
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %add.ptr3.i.i, i64 %idx.ext.i.i.i
  %add.ptr26.i.i.i = getelementptr inbounds i8, ptr %fdt, i64 %conv6.i.i.i
  %sub.ptr.lhs.cast29.i.i.i = ptrtoint ptr %add.ptr26.i.i.i to i64
  %sub.ptr.sub31.i.i.i = sub i64 %sub.ptr.lhs.cast29.i.i.i, %sub.ptr.lhs.cast.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr.i.i.i, ptr nonnull align 1 %add.ptr3.i.i, i64 %sub.ptr.sub31.i.i.i, i1 false) #9
  %21 = load i8, ptr %size_dt_strings.i, align 1, !tbaa !5
  %conv.i27.i.i = zext i8 %21 to i32
  %shl.i28.i.i = shl nuw i32 %conv.i27.i.i, 24
  %22 = load i8, ptr %arrayidx1.i44.i, align 1, !tbaa !5
  %conv2.i30.i.i = zext i8 %22 to i32
  %shl3.i31.i.i = shl nuw nsw i32 %conv2.i30.i.i, 16
  %or.i32.i.i = or i32 %shl3.i31.i.i, %shl.i28.i.i
  %23 = load i8, ptr %arrayidx4.i48.i, align 1, !tbaa !5
  %conv5.i34.i.i = zext i8 %23 to i32
  %shl6.i35.i.i = shl nuw nsw i32 %conv5.i34.i.i, 8
  %or7.i36.i.i = or i32 %or.i32.i.i, %shl6.i35.i.i
  %24 = load i8, ptr %arrayidx8.i52.i, align 1, !tbaa !5
  %conv9.i38.i.i = zext i8 %24 to i32
  %or10.i39.i.i = or i32 %or7.i36.i.i, %conv9.i38.i.i
  %add.i.i = add i32 %or10.i39.i.i, %conv.i
  %rev.i.i.i.i = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #9
  store i32 %rev.i.i.i.i, ptr %size_dt_strings.i, align 4, !tbaa !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr11.i, ptr align 1 %name, i64 %idx.ext.i.i.i, i1 false) #9
  br label %fdt_find_add_string_.exit

fdt_find_add_string_.exit:                        ; preds = %if.end15.i, %if.then5.i
  %retval.0.i = phi i32 [ %or10.i67.i, %if.end15.i ], [ %conv6.i, %if.then5.i ]
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %fdt_find_add_string_.exit
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %25 = load i8, ptr %off_dt_struct.i.i, align 1, !tbaa !5
  %conv.i.i.i37 = zext i8 %25 to i64
  %shl.i.i.i38 = shl nuw nsw i64 %conv.i.i.i37, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 1
  %26 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i39 = zext i8 %26 to i64
  %shl3.i.i.i40 = shl nuw nsw i64 %conv2.i.i.i39, 16
  %or.i.i.i41 = or i64 %shl3.i.i.i40, %shl.i.i.i38
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 2
  %27 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i42 = zext i8 %27 to i64
  %shl6.i.i.i43 = shl nuw nsw i64 %conv5.i.i.i42, 8
  %or7.i.i.i44 = or i64 %or.i.i.i41, %shl6.i.i.i43
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 3
  %28 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i45 = zext i8 %28 to i64
  %or10.i.i.i46 = or i64 %or7.i.i.i44, %conv9.i.i.i45
  %add.ptr.i.i47 = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i.i46
  %idx.ext1.i.i66 = zext i32 %call to i64
  %add.ptr2.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i47, i64 %idx.ext1.i.i66
  store ptr %add.ptr2.i.i, ptr %prop, align 8, !tbaa !19
  %29 = add i32 %len, 15
  %add6 = and i32 %29, -4
  %call8 = tail call fastcc i32 @fdt_splice_struct_(ptr noundef nonnull %fdt, ptr noundef %add.ptr2.i.i, i32 noundef 0, i32 noundef %add6)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.end4
  br i1 %tobool.not.i, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.then9
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #10
  %30 = trunc i64 %call.i to i32
  %conv.neg.i = xor i32 %30, -1
  %31 = load i8, ptr %size_dt_strings.i, align 1, !tbaa !5
  %conv.i.i49 = zext i8 %31 to i32
  %shl.i.i50 = shl nuw i32 %conv.i.i49, 24
  %32 = load i8, ptr %arrayidx1.i44.i, align 1, !tbaa !5
  %conv2.i.i52 = zext i8 %32 to i32
  %shl3.i.i53 = shl nuw nsw i32 %conv2.i.i52, 16
  %or.i.i54 = or i32 %shl3.i.i53, %shl.i.i50
  %33 = load i8, ptr %arrayidx4.i48.i, align 1, !tbaa !5
  %conv5.i.i56 = zext i8 %33 to i32
  %shl6.i.i57 = shl nuw nsw i32 %conv5.i.i56, 8
  %or7.i.i58 = or i32 %or.i.i54, %shl6.i.i57
  %34 = load i8, ptr %arrayidx8.i52.i, align 1, !tbaa !5
  %conv9.i.i60 = zext i8 %34 to i32
  %or10.i.i61 = or i32 %or7.i.i58, %conv9.i.i60
  %sub.i = add i32 %or10.i.i61, %conv.neg.i
  %rev.i.i.i = tail call i32 @llvm.bswap.i32(i32 %sub.i) #9
  store i32 %rev.i.i.i, ptr %size_dt_strings.i, align 4, !tbaa !23
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %35 = load ptr, ptr %prop, align 8, !tbaa !19
  store i32 50331648, ptr %35, align 4, !tbaa !24
  %rev.i = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #9
  %nameoff = getelementptr inbounds %struct.fdt_property, ptr %35, i64 0, i32 2
  store i32 %rev.i, ptr %nameoff, align 4, !tbaa !25
  %rev.i62 = tail call i32 @llvm.bswap.i32(i32 %len) #9
  %len18 = getelementptr inbounds %struct.fdt_property, ptr %35, i64 0, i32 1
  store i32 %rev.i62, ptr %len18, align 4, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then9, %fdt_find_add_string_.exit, %if.end16.i.i.i, %if.end7.i, %entry
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call, %entry ], [ %retval.0.i, %fdt_find_add_string_.exit ], [ %call8, %if.then12 ], [ %call8, %if.then9 ], [ -3, %if.end16.i.i.i ], [ -4, %if.end7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_setprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr nocapture noundef readonly %val, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %prop_data = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prop_data) #9
  %call = call i32 @fdt_setprop_placeholder(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr noundef nonnull %prop_data)
  %tobool.not = icmp ne i32 %call, 0
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %0 = load ptr, ptr %prop_data, align 8, !tbaa !19
  %conv = sext i32 %len to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %val, i64 %conv, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prop_data) #9
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_appendprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr nocapture noundef readonly %val, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %prop = alloca ptr, align 8
  %oldlen = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prop) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oldlen) #9
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup27

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup27, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1, !tbaa !5
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1, !tbaa !5
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1, !tbaa !5
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1, !tbaa !5
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #9
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup27

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 285212672, ptr %version.i, align 4, !tbaa !8
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call.i = call ptr @fdt_get_property(ptr noundef nonnull %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %oldlen) #9
  store ptr %call.i, ptr %prop, align 8, !tbaa !19
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %cleanup.cont
  %8 = load i32, ptr %oldlen, align 4, !tbaa !17
  %add = add nsw i32 %8, %len
  %data = getelementptr inbounds %struct.fdt_property, ptr %call.i, i64 0, i32 3
  %sub = add i32 %8, 3
  %and = and i32 %sub, -4
  %sub7 = add i32 %add, 3
  %and8 = and i32 %sub7, -4
  %call10 = call fastcc i32 @fdt_splice_struct_(ptr noundef nonnull %fdt, ptr noundef nonnull %data, i32 noundef %and, i32 noundef %and8)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %cleanup27

if.end13:                                         ; preds = %if.then2
  %rev.i = call i32 @llvm.bswap.i32(i32 %add) #9
  %len15 = getelementptr inbounds %struct.fdt_property, ptr %call.i, i64 0, i32 1
  store i32 %rev.i, ptr %len15, align 4, !tbaa !21
  %9 = load i32, ptr %oldlen, align 4, !tbaa !17
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %data, i64 %idx.ext
  %conv18 = sext i32 %len to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr, ptr align 1 %val, i64 %conv18, i1 false)
  br label %cleanup27

if.else:                                          ; preds = %cleanup.cont
  %call19 = call fastcc i32 @fdt_add_property_(ptr noundef nonnull %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr noundef nonnull %prop)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %cleanup27

if.end22:                                         ; preds = %if.else
  %10 = load ptr, ptr %prop, align 8, !tbaa !19
  %data23 = getelementptr inbounds %struct.fdt_property, ptr %10, i64 0, i32 3
  %conv25 = sext i32 %len to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %data23, ptr align 1 %val, i64 %conv25, i1 false)
  br label %cleanup27

cleanup27:                                        ; preds = %if.end22, %if.else, %if.end13, %if.then2, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ %call10, %if.then2 ], [ %call19, %if.else ], [ 0, %if.end22 ], [ 0, %if.end13 ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldlen) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prop) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_delprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name) local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup7

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup7, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1, !tbaa !5
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1, !tbaa !5
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1, !tbaa !5
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1, !tbaa !5
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #9
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup7

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 285212672, ptr %version.i, align 4, !tbaa !8
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call.i = call ptr @fdt_get_property(ptr noundef nonnull %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %len) #9
  %tobool.not = icmp eq ptr %call.i, null
  %8 = load i32, ptr %len, align 4, !tbaa !17
  br i1 %tobool.not, label %cleanup7, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  %9 = add i32 %8, 15
  %add4 = and i32 %9, -4
  %call6 = call fastcc i32 @fdt_splice_struct_(ptr noundef nonnull %fdt, ptr noundef nonnull %call.i, i32 noundef %add4, i32 noundef 0)
  br label %cleanup7

cleanup7:                                         ; preds = %if.end3, %cleanup.cont, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ %call6, %if.end3 ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ], [ %8, %cleanup.cont ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_add_subnode_namelen(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name, i32 noundef %namelen) local_unnamed_addr #0 {
entry:
  %nextoffset = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset) #9
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup37

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup37, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1, !tbaa !5
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1, !tbaa !5
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1, !tbaa !5
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1, !tbaa !5
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #9
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup37

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 285212672, ptr %version.i, align 4, !tbaa !8
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call1 = tail call i32 @fdt_subnode_offset_namelen(ptr noundef nonnull %fdt, i32 noundef %parentoffset, ptr noundef %name, i32 noundef %namelen) #9
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %cleanup37, label %if.else

if.else:                                          ; preds = %cleanup.cont
  %cmp4.not = icmp eq i32 %call1, -1
  br i1 %cmp4.not, label %if.end7, label %cleanup37

if.end7:                                          ; preds = %if.else
  %call8 = call i32 @fdt_next_tag(ptr noundef nonnull %fdt, i32 noundef %parentoffset, ptr noundef nonnull %nextoffset) #9
  %cmp10.not = icmp eq i32 %call8, 1
  br i1 %cmp10.not, label %do.body, label %cleanup37

do.body:                                          ; preds = %do.body, %if.end7
  %8 = load i32, ptr %nextoffset, align 4, !tbaa !17
  %call13 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %8, ptr noundef nonnull %nextoffset) #9
  %9 = add i32 %call13, -3
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %11 = load i8, ptr %off_dt_struct.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %11 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 1
  %12 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %12 to i64
  %shl3.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 16
  %or.i.i.i = or i64 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 2
  %13 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %13 to i64
  %shl6.i.i.i = shl nuw nsw i64 %conv5.i.i.i, 8
  %or7.i.i.i = or i64 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 3
  %14 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %14 to i64
  %or10.i.i.i = or i64 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i.i
  %idx.ext1.i.i = sext i32 %8 to i64
  %add.ptr2.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 %idx.ext1.i.i
  %15 = sext i32 %namelen to i64
  %sub = add nsw i64 %15, 4
  %and = and i64 %sub, -4
  %16 = trunc i64 %and to i32
  %conv20 = add i32 %16, 8
  %call21 = call fastcc i32 @fdt_splice_struct_(ptr noundef %fdt, ptr noundef %add.ptr2.i.i, i32 noundef 0, i32 noundef %conv20)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end23, label %cleanup37

if.end23:                                         ; preds = %do.end
  store i32 16777216, ptr %add.ptr2.i.i, align 4, !tbaa !26
  %name26 = getelementptr inbounds %struct.fdt_node_header, ptr %add.ptr2.i.i, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %name26, i8 0, i64 %and, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %name26, ptr align 1 %name, i64 %15, i1 false)
  %idx.ext = sext i32 %conv20 to i64
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr2.i.i, i64 %idx.ext
  %add.ptr35 = getelementptr inbounds i8, ptr %add.ptr, i64 -4
  store i32 33554432, ptr %add.ptr35, align 4, !tbaa !17
  br label %cleanup37

cleanup37:                                        ; preds = %if.end23, %do.end, %if.end7, %if.else, %cleanup.cont, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ %8, %if.end23 ], [ -2, %cleanup.cont ], [ %call1, %if.else ], [ -13, %if.end7 ], [ %call21, %do.end ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset) #9
  ret i32 %retval.1
}

declare i32 @fdt_subnode_offset_namelen(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_add_subnode(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #10
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @fdt_add_subnode_namelen(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_del_node(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup7

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup7, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1, !tbaa !5
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1, !tbaa !5
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1, !tbaa !5
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1, !tbaa !5
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #9
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup7

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 285212672, ptr %version.i, align 4, !tbaa !8
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call1 = tail call i32 @fdt_node_end_offset_(ptr noundef nonnull %fdt, i32 noundef %nodeoffset) #9
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %cleanup7, label %if.end4

if.end4:                                          ; preds = %cleanup.cont
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %8 = load i8, ptr %off_dt_struct.i.i, align 1, !tbaa !5
  %conv.i.i.i = zext i8 %8 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 1
  %9 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !5
  %conv2.i.i.i = zext i8 %9 to i64
  %shl3.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 16
  %or.i.i.i = or i64 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 2
  %10 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !5
  %conv5.i.i.i = zext i8 %10 to i64
  %shl6.i.i.i = shl nuw nsw i64 %conv5.i.i.i, 8
  %or7.i.i.i = or i64 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %off_dt_struct.i.i, i64 3
  %11 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !5
  %conv9.i.i.i = zext i8 %11 to i64
  %or10.i.i.i = or i64 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i.i
  %idx.ext1.i.i = sext i32 %nodeoffset to i64
  %add.ptr2.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 %idx.ext1.i.i
  %sub = sub nsw i32 %call1, %nodeoffset
  %call6 = tail call fastcc i32 @fdt_splice_struct_(ptr noundef nonnull %fdt, ptr noundef %add.ptr2.i.i, i32 noundef %sub, i32 noundef 0)
  br label %cleanup7

cleanup7:                                         ; preds = %if.end4, %cleanup.cont, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ %call6, %if.end4 ], [ %call1, %cleanup.cont ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ]
  ret i32 %retval.1
}

declare i32 @fdt_node_end_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_open_into(ptr noundef %fdt, ptr noundef %buf, i32 noundef %bufsize) local_unnamed_addr #0 {
entry:
  %struct_size = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %struct_size) #9
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %0 = load i8, ptr %totalsize, align 1, !tbaa !5
  %conv.i = zext i8 %0 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %totalsize, i64 1
  %1 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %1 to i64
  %shl3.i = shl nuw nsw i64 %conv2.i, 16
  %or.i = or i64 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %totalsize, i64 2
  %2 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %2 to i64
  %shl6.i = shl nuw nsw i64 %conv5.i, 8
  %or7.i = or i64 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %totalsize, i64 3
  %3 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %3 to i64
  %or10.i = or i64 %or7.i, %conv9.i
  %add.ptr = getelementptr inbounds i8, ptr %fdt, i64 %or10.i
  %call1 = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %cleanup68, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %call2 = tail call i32 @fdt_num_mem_rsv(ptr noundef nonnull %fdt) #9
  %add = shl i32 %call2, 4
  %mul = add i32 %add, 16
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %4 = load i8, ptr %version, align 1, !tbaa !5
  %conv.i115 = zext i8 %4 to i32
  %shl.i116 = shl nuw i32 %conv.i115, 24
  %arrayidx1.i117 = getelementptr inbounds i8, ptr %version, i64 1
  %5 = load i8, ptr %arrayidx1.i117, align 1, !tbaa !5
  %conv2.i118 = zext i8 %5 to i32
  %shl3.i119 = shl nuw nsw i32 %conv2.i118, 16
  %or.i120 = or i32 %shl3.i119, %shl.i116
  %arrayidx4.i121 = getelementptr inbounds i8, ptr %version, i64 2
  %6 = load i8, ptr %arrayidx4.i121, align 1, !tbaa !5
  %conv5.i122 = zext i8 %6 to i32
  %shl6.i123 = shl nuw nsw i32 %conv5.i122, 8
  %or7.i124 = or i32 %or.i120, %shl6.i123
  %arrayidx8.i125 = getelementptr inbounds i8, ptr %version, i64 3
  %7 = load i8, ptr %arrayidx8.i125, align 1, !tbaa !5
  %conv9.i126 = zext i8 %7 to i32
  %or10.i127 = or i32 %or7.i124, %conv9.i126
  %cmp7 = icmp ugt i32 %or10.i127, 16
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %cleanup.cont
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %8 = load i8, ptr %size_dt_struct, align 1, !tbaa !5
  %conv.i128 = zext i8 %8 to i32
  %shl.i129 = shl nuw i32 %conv.i128, 24
  %arrayidx1.i130 = getelementptr inbounds i8, ptr %size_dt_struct, i64 1
  %9 = load i8, ptr %arrayidx1.i130, align 1, !tbaa !5
  %conv2.i131 = zext i8 %9 to i32
  %shl3.i132 = shl nuw nsw i32 %conv2.i131, 16
  %or.i133 = or i32 %shl3.i132, %shl.i129
  %arrayidx4.i134 = getelementptr inbounds i8, ptr %size_dt_struct, i64 2
  %10 = load i8, ptr %arrayidx4.i134, align 1, !tbaa !5
  %conv5.i135 = zext i8 %10 to i32
  %shl6.i136 = shl nuw nsw i32 %conv5.i135, 8
  %or7.i137 = or i32 %or.i133, %shl6.i136
  %arrayidx8.i138 = getelementptr inbounds i8, ptr %size_dt_struct, i64 3
  %11 = load i8, ptr %arrayidx8.i138, align 1, !tbaa !5
  %conv9.i139 = zext i8 %11 to i32
  %or10.i140 = or i32 %or7.i137, %conv9.i139
  store i32 %or10.i140, ptr %struct_size, align 4, !tbaa !17
  br label %if.end25

if.else:                                          ; preds = %cleanup.cont
  %cmp13 = icmp eq i32 %or10.i127, 16
  br i1 %cmp13, label %if.then15, label %cleanup68

if.then15:                                        ; preds = %if.else
  store i32 0, ptr %struct_size, align 4, !tbaa !17
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then15
  %12 = phi i32 [ 0, %if.then15 ], [ %13, %while.cond ]
  %call16 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %12, ptr noundef nonnull %struct_size) #9
  %cmp17.not = icmp eq i32 %call16, 9
  %13 = load i32, ptr %struct_size, align 4, !tbaa !17
  br i1 %cmp17.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %cmp19 = icmp slt i32 %13, 0
  br i1 %cmp19, label %cleanup68, label %if.end25

if.end25:                                         ; preds = %while.end, %if.then9
  %14 = phi i32 [ %13, %while.end ], [ %or10.i140, %if.then9 ]
  %call29 = call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef %mul, i32 noundef %14)
  %tobool.not = icmp eq i32 %call29, 0
  br i1 %tobool.not, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end25
  %call31 = call i32 @fdt_move(ptr noundef %fdt, ptr noundef %buf, i32 noundef %bufsize) #9
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %cleanup68

if.end34:                                         ; preds = %if.then30
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 5
  store i32 285212672, ptr %version.i, align 4, !tbaa !8
  %15 = load i32, ptr %struct_size, align 4, !tbaa !17
  %rev.i.i = call i32 @llvm.bswap.i32(i32 %15) #9
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 9
  store i32 %rev.i.i, ptr %size_dt_struct.i, align 4, !tbaa !18
  %rev.i.i154 = call i32 @llvm.bswap.i32(i32 %bufsize) #9
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 1
  store i32 %rev.i.i154, ptr %totalsize.i, align 4, !tbaa !28
  br label %cleanup68

if.end35:                                         ; preds = %if.end25
  %add37 = add i32 %add, 56
  %add39 = add i32 %add37, %14
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %16 = load i8, ptr %size_dt_strings, align 1, !tbaa !5
  %conv.i155 = zext i8 %16 to i32
  %shl.i156 = shl nuw i32 %conv.i155, 24
  %arrayidx1.i157 = getelementptr inbounds i8, ptr %size_dt_strings, i64 1
  %17 = load i8, ptr %arrayidx1.i157, align 1, !tbaa !5
  %conv2.i158 = zext i8 %17 to i32
  %shl3.i159 = shl nuw nsw i32 %conv2.i158, 16
  %or.i160 = or i32 %shl3.i159, %shl.i156
  %arrayidx4.i161 = getelementptr inbounds i8, ptr %size_dt_strings, i64 2
  %18 = load i8, ptr %arrayidx4.i161, align 1, !tbaa !5
  %conv5.i162 = zext i8 %18 to i32
  %shl6.i163 = shl nuw nsw i32 %conv5.i162, 8
  %or7.i164 = or i32 %or.i160, %shl6.i163
  %arrayidx8.i165 = getelementptr inbounds i8, ptr %size_dt_strings, i64 3
  %19 = load i8, ptr %arrayidx8.i165, align 1, !tbaa !5
  %conv9.i166 = zext i8 %19 to i32
  %or10.i167 = or i32 %or7.i164, %conv9.i166
  %add42 = add i32 %add39, %or10.i167
  %cmp44 = icmp sgt i32 %add42, %bufsize
  br i1 %cmp44, label %cleanup68, label %if.end47

if.end47:                                         ; preds = %if.end35
  %idx.ext48 = sext i32 %add42 to i64
  %add.ptr49 = getelementptr inbounds i8, ptr %buf, i64 %idx.ext48
  %cmp50 = icmp ugt ptr %add.ptr49, %fdt
  %cmp52 = icmp ugt ptr %add.ptr, %buf
  %or.cond = select i1 %cmp50, i1 %cmp52, i1 false
  br i1 %or.cond, label %if.then54, label %if.end63

if.then54:                                        ; preds = %if.end47
  %add.ptr56 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext48
  %idx.ext57 = sext i32 %bufsize to i64
  %add.ptr58 = getelementptr inbounds i8, ptr %buf, i64 %idx.ext57
  %cmp59 = icmp ugt ptr %add.ptr56, %add.ptr58
  br i1 %cmp59, label %cleanup68, label %if.end63

if.end63:                                         ; preds = %if.then54, %if.end47
  %tmp.0 = phi ptr [ %add.ptr, %if.then54 ], [ %buf, %if.end47 ]
  %add.ptr.i = getelementptr inbounds i8, ptr %tmp.0, i64 40
  %off_mem_rsvmap.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 4
  %20 = load i8, ptr %off_mem_rsvmap.i, align 1, !tbaa !5
  %conv.i.i = zext i8 %20 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i, i64 1
  %21 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !5
  %conv2.i.i = zext i8 %21 to i64
  %shl3.i.i = shl nuw nsw i64 %conv2.i.i, 16
  %or.i.i = or i64 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i, i64 2
  %22 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !5
  %conv5.i.i = zext i8 %22 to i64
  %shl6.i.i = shl nuw nsw i64 %conv5.i.i, 8
  %or7.i.i = or i64 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %off_mem_rsvmap.i, i64 3
  %23 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %conv9.i.i = zext i8 %23 to i64
  %or10.i.i = or i64 %or7.i.i, %conv9.i.i
  %add.ptr3.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i
  %conv.i181 = sext i32 %mul to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %add.ptr.i, ptr align 1 %add.ptr3.i, i64 %conv.i181, i1 false) #9
  %off_mem_rsvmap.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i64 0, i32 4
  store i32 671088640, ptr %off_mem_rsvmap.i.i, align 4, !tbaa !29
  %idx.ext4.i = sext i32 %add37 to i64
  %add.ptr5.i = getelementptr inbounds i8, ptr %tmp.0, i64 %idx.ext4.i
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %24 = load i8, ptr %off_dt_struct.i, align 1, !tbaa !5
  %conv.i38.i = zext i8 %24 to i64
  %shl.i39.i = shl nuw nsw i64 %conv.i38.i, 24
  %arrayidx1.i40.i = getelementptr inbounds i8, ptr %off_dt_struct.i, i64 1
  %25 = load i8, ptr %arrayidx1.i40.i, align 1, !tbaa !5
  %conv2.i41.i = zext i8 %25 to i64
  %shl3.i42.i = shl nuw nsw i64 %conv2.i41.i, 16
  %or.i43.i = or i64 %shl3.i42.i, %shl.i39.i
  %arrayidx4.i44.i = getelementptr inbounds i8, ptr %off_dt_struct.i, i64 2
  %26 = load i8, ptr %arrayidx4.i44.i, align 1, !tbaa !5
  %conv5.i45.i = zext i8 %26 to i64
  %shl6.i46.i = shl nuw nsw i64 %conv5.i45.i, 8
  %or7.i47.i = or i64 %or.i43.i, %shl6.i46.i
  %arrayidx8.i48.i = getelementptr inbounds i8, ptr %off_dt_struct.i, i64 3
  %27 = load i8, ptr %arrayidx8.i48.i, align 1, !tbaa !5
  %conv9.i49.i = zext i8 %27 to i64
  %or10.i50.i = or i64 %or7.i47.i, %conv9.i49.i
  %add.ptr8.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i50.i
  %conv9.i182 = sext i32 %14 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %add.ptr5.i, ptr align 1 %add.ptr8.i, i64 %conv9.i182, i1 false) #9
  %rev.i.i.i = call i32 @llvm.bswap.i32(i32 %add37) #9
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i64 0, i32 2
  store i32 %rev.i.i.i, ptr %off_dt_struct.i.i, align 4, !tbaa !15
  %rev.i.i51.i = call i32 @llvm.bswap.i32(i32 %14) #9
  %size_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i64 0, i32 9
  store i32 %rev.i.i51.i, ptr %size_dt_struct.i.i, align 4, !tbaa !18
  %idx.ext10.i = sext i32 %add39 to i64
  %add.ptr11.i = getelementptr inbounds i8, ptr %tmp.0, i64 %idx.ext10.i
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 3
  %28 = load i8, ptr %off_dt_strings.i, align 1, !tbaa !5
  %conv.i52.i = zext i8 %28 to i64
  %shl.i53.i = shl nuw nsw i64 %conv.i52.i, 24
  %arrayidx1.i54.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 1
  %29 = load i8, ptr %arrayidx1.i54.i, align 1, !tbaa !5
  %conv2.i55.i = zext i8 %29 to i64
  %shl3.i56.i = shl nuw nsw i64 %conv2.i55.i, 16
  %or.i57.i = or i64 %shl3.i56.i, %shl.i53.i
  %arrayidx4.i58.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 2
  %30 = load i8, ptr %arrayidx4.i58.i, align 1, !tbaa !5
  %conv5.i59.i = zext i8 %30 to i64
  %shl6.i60.i = shl nuw nsw i64 %conv5.i59.i, 8
  %or7.i61.i = or i64 %or.i57.i, %shl6.i60.i
  %arrayidx8.i62.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 3
  %31 = load i8, ptr %arrayidx8.i62.i, align 1, !tbaa !5
  %conv9.i63.i = zext i8 %31 to i64
  %or10.i64.i = or i64 %or7.i61.i, %conv9.i63.i
  %add.ptr14.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i64.i
  %conv15.i = sext i32 %or10.i167 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr11.i, ptr align 1 %add.ptr14.i, i64 %conv15.i, i1 false) #9
  %rev.i.i65.i = call i32 @llvm.bswap.i32(i32 %add39) #9
  %off_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i64 0, i32 3
  store i32 %rev.i.i65.i, ptr %off_dt_strings.i.i, align 4, !tbaa !16
  %32 = load i8, ptr %size_dt_strings, align 1, !tbaa !5
  %conv.i66.i = zext i8 %32 to i32
  %shl.i67.i = shl nuw i32 %conv.i66.i, 24
  %33 = load i8, ptr %arrayidx1.i157, align 1, !tbaa !5
  %conv2.i69.i = zext i8 %33 to i32
  %shl3.i70.i = shl nuw nsw i32 %conv2.i69.i, 16
  %or.i71.i = or i32 %shl3.i70.i, %shl.i67.i
  %34 = load i8, ptr %arrayidx4.i161, align 1, !tbaa !5
  %conv5.i73.i = zext i8 %34 to i32
  %shl6.i74.i = shl nuw nsw i32 %conv5.i73.i, 8
  %or7.i75.i = or i32 %or.i71.i, %shl6.i74.i
  %35 = load i8, ptr %arrayidx8.i165, align 1, !tbaa !5
  %conv9.i77.i = zext i8 %35 to i32
  %or10.i78.i = or i32 %or7.i75.i, %conv9.i77.i
  %rev.i.i79.i = call i32 @llvm.bswap.i32(i32 %or10.i78.i) #9
  %size_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i64 0, i32 8
  store i32 %rev.i.i79.i, ptr %size_dt_strings.i.i, align 4, !tbaa !23
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %buf, ptr align 1 %tmp.0, i64 %idx.ext48, i1 false)
  store i32 -302117424, ptr %buf, align 4, !tbaa !30
  %rev.i.i183 = call i32 @llvm.bswap.i32(i32 %bufsize) #9
  %totalsize.i184 = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 1
  store i32 %rev.i.i183, ptr %totalsize.i184, align 4, !tbaa !28
  %version.i185 = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 5
  store i32 285212672, ptr %version.i185, align 4, !tbaa !8
  %last_comp_version.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 6
  store i32 268435456, ptr %last_comp_version.i, align 4, !tbaa !31
  %boot_cpuid_phys = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 7
  %36 = load i8, ptr %boot_cpuid_phys, align 1, !tbaa !5
  %conv.i186 = zext i8 %36 to i32
  %shl.i187 = shl nuw i32 %conv.i186, 24
  %arrayidx1.i188 = getelementptr inbounds i8, ptr %boot_cpuid_phys, i64 1
  %37 = load i8, ptr %arrayidx1.i188, align 1, !tbaa !5
  %conv2.i189 = zext i8 %37 to i32
  %shl3.i190 = shl nuw nsw i32 %conv2.i189, 16
  %or.i191 = or i32 %shl3.i190, %shl.i187
  %arrayidx4.i192 = getelementptr inbounds i8, ptr %boot_cpuid_phys, i64 2
  %38 = load i8, ptr %arrayidx4.i192, align 1, !tbaa !5
  %conv5.i193 = zext i8 %38 to i32
  %shl6.i194 = shl nuw nsw i32 %conv5.i193, 8
  %or7.i195 = or i32 %or.i191, %shl6.i194
  %arrayidx8.i196 = getelementptr inbounds i8, ptr %boot_cpuid_phys, i64 3
  %39 = load i8, ptr %arrayidx8.i196, align 1, !tbaa !5
  %conv9.i197 = zext i8 %39 to i32
  %or10.i198 = or i32 %or7.i195, %conv9.i197
  %rev.i.i199 = call i32 @llvm.bswap.i32(i32 %or10.i198) #9
  %boot_cpuid_phys.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i64 0, i32 7
  store i32 %rev.i.i199, ptr %boot_cpuid_phys.i, align 4, !tbaa !32
  br label %cleanup68

cleanup68:                                        ; preds = %if.end63, %if.then54, %if.end35, %if.end34, %if.then30, %while.end, %if.else, %entry
  %retval.1 = phi i32 [ 0, %if.end34 ], [ 0, %if.end63 ], [ %call1, %entry ], [ %13, %while.end ], [ -10, %if.else ], [ %call31, %if.then30 ], [ -3, %if.end35 ], [ -3, %if.then54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %struct_size) #9
  ret i32 %retval.1
}

declare i32 @fdt_ro_probe_(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal fastcc i32 @fdt_blocks_misordered_(ptr nocapture noundef readonly %fdt, i32 noundef %mem_rsv_size, i32 noundef %struct_size) unnamed_addr #7 {
entry:
  %off_mem_rsvmap = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 4
  %0 = load i8, ptr %off_mem_rsvmap, align 1, !tbaa !5
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %off_mem_rsvmap, i64 1
  %1 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %off_mem_rsvmap, i64 2
  %2 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %off_mem_rsvmap, i64 3
  %3 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp = icmp ult i32 %or10.i, 40
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %4 = load i8, ptr %off_dt_struct, align 1, !tbaa !5
  %conv.i28 = zext i8 %4 to i32
  %shl.i29 = shl nuw i32 %conv.i28, 24
  %arrayidx1.i30 = getelementptr inbounds i8, ptr %off_dt_struct, i64 1
  %5 = load i8, ptr %arrayidx1.i30, align 1, !tbaa !5
  %conv2.i31 = zext i8 %5 to i32
  %shl3.i32 = shl nuw nsw i32 %conv2.i31, 16
  %or.i33 = or i32 %shl3.i32, %shl.i29
  %arrayidx4.i34 = getelementptr inbounds i8, ptr %off_dt_struct, i64 2
  %6 = load i8, ptr %arrayidx4.i34, align 1, !tbaa !5
  %conv5.i35 = zext i8 %6 to i32
  %shl6.i36 = shl nuw nsw i32 %conv5.i35, 8
  %or7.i37 = or i32 %or.i33, %shl6.i36
  %arrayidx8.i38 = getelementptr inbounds i8, ptr %off_dt_struct, i64 3
  %7 = load i8, ptr %arrayidx8.i38, align 1, !tbaa !5
  %conv9.i39 = zext i8 %7 to i32
  %or10.i40 = or i32 %or7.i37, %conv9.i39
  %add = add i32 %or10.i, %mem_rsv_size
  %cmp5 = icmp ult i32 %or10.i40, %add
  br i1 %cmp5, label %lor.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %off_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 3
  %8 = load i8, ptr %off_dt_strings, align 1, !tbaa !5
  %conv.i54 = zext i8 %8 to i32
  %shl.i55 = shl nuw i32 %conv.i54, 24
  %arrayidx1.i56 = getelementptr inbounds i8, ptr %off_dt_strings, i64 1
  %9 = load i8, ptr %arrayidx1.i56, align 1, !tbaa !5
  %conv2.i57 = zext i8 %9 to i32
  %shl3.i58 = shl nuw nsw i32 %conv2.i57, 16
  %or.i59 = or i32 %shl3.i58, %shl.i55
  %arrayidx4.i60 = getelementptr inbounds i8, ptr %off_dt_strings, i64 2
  %10 = load i8, ptr %arrayidx4.i60, align 1, !tbaa !5
  %conv5.i61 = zext i8 %10 to i32
  %shl6.i62 = shl nuw nsw i32 %conv5.i61, 8
  %or7.i63 = or i32 %or.i59, %shl6.i62
  %arrayidx8.i64 = getelementptr inbounds i8, ptr %off_dt_strings, i64 3
  %11 = load i8, ptr %arrayidx8.i64, align 1, !tbaa !5
  %conv9.i65 = zext i8 %11 to i32
  %or10.i66 = or i32 %or7.i63, %conv9.i65
  %add11 = add i32 %or10.i40, %struct_size
  %cmp12 = icmp ult i32 %or10.i66, %add11
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false7
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %12 = load i8, ptr %totalsize, align 1, !tbaa !5
  %conv.i80 = zext i8 %12 to i32
  %shl.i81 = shl nuw i32 %conv.i80, 24
  %arrayidx1.i82 = getelementptr inbounds i8, ptr %totalsize, i64 1
  %13 = load i8, ptr %arrayidx1.i82, align 1, !tbaa !5
  %conv2.i83 = zext i8 %13 to i32
  %shl3.i84 = shl nuw nsw i32 %conv2.i83, 16
  %or.i85 = or i32 %shl3.i84, %shl.i81
  %arrayidx4.i86 = getelementptr inbounds i8, ptr %totalsize, i64 2
  %14 = load i8, ptr %arrayidx4.i86, align 1, !tbaa !5
  %conv5.i87 = zext i8 %14 to i32
  %shl6.i88 = shl nuw nsw i32 %conv5.i87, 8
  %or7.i89 = or i32 %or.i85, %shl6.i88
  %arrayidx8.i90 = getelementptr inbounds i8, ptr %totalsize, i64 3
  %15 = load i8, ptr %arrayidx8.i90, align 1, !tbaa !5
  %conv9.i91 = zext i8 %15 to i32
  %or10.i92 = or i32 %or7.i89, %conv9.i91
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %16 = load i8, ptr %size_dt_strings, align 1, !tbaa !5
  %conv.i106 = zext i8 %16 to i32
  %shl.i107 = shl nuw i32 %conv.i106, 24
  %arrayidx1.i108 = getelementptr inbounds i8, ptr %size_dt_strings, i64 1
  %17 = load i8, ptr %arrayidx1.i108, align 1, !tbaa !5
  %conv2.i109 = zext i8 %17 to i32
  %shl3.i110 = shl nuw nsw i32 %conv2.i109, 16
  %or.i111 = or i32 %shl3.i110, %shl.i107
  %arrayidx4.i112 = getelementptr inbounds i8, ptr %size_dt_strings, i64 2
  %18 = load i8, ptr %arrayidx4.i112, align 1, !tbaa !5
  %conv5.i113 = zext i8 %18 to i32
  %shl6.i114 = shl nuw nsw i32 %conv5.i113, 8
  %or7.i115 = or i32 %or.i111, %shl6.i114
  %arrayidx8.i116 = getelementptr inbounds i8, ptr %size_dt_strings, i64 3
  %19 = load i8, ptr %arrayidx8.i116, align 1, !tbaa !5
  %conv9.i117 = zext i8 %19 to i32
  %or10.i118 = or i32 %or7.i115, %conv9.i117
  %add18 = add i32 %or10.i118, %or10.i66
  %cmp19 = icmp ult i32 %or10.i92, %add18
  %phi.cast = zext i1 %cmp19 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false7, %lor.lhs.false, %entry
  %20 = phi i32 [ 1, %lor.lhs.false7 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %20
}

declare i32 @fdt_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_pack(ptr noundef %fdt) local_unnamed_addr #0 {
entry:
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #9
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup6

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup6, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1, !tbaa !5
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1, !tbaa !5
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1, !tbaa !5
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr inbounds i8, ptr %size_dt_struct.i, i64 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1, !tbaa !5
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #9
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup6

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 285212672, ptr %version.i, align 4, !tbaa !8
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call1 = tail call i32 @fdt_num_mem_rsv(ptr noundef nonnull %fdt) #9
  %add = shl i32 %call1, 4
  %mul = add i32 %add, 16
  %8 = load i8, ptr %size_dt_struct.i, align 1, !tbaa !5
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %9 = load i8, ptr %arrayidx1.i27.i, align 1, !tbaa !5
  %conv2.i = zext i8 %9 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %10 = load i8, ptr %arrayidx4.i31.i, align 1, !tbaa !5
  %conv5.i = zext i8 %10 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %11 = load i8, ptr %arrayidx8.i35.i, align 1, !tbaa !5
  %conv9.i = zext i8 %11 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %12 = load i8, ptr %size_dt_strings, align 1, !tbaa !5
  %conv.i14 = zext i8 %12 to i32
  %shl.i15 = shl nuw i32 %conv.i14, 24
  %arrayidx1.i16 = getelementptr inbounds i8, ptr %size_dt_strings, i64 1
  %13 = load i8, ptr %arrayidx1.i16, align 1, !tbaa !5
  %conv2.i17 = zext i8 %13 to i32
  %shl3.i18 = shl nuw nsw i32 %conv2.i17, 16
  %or.i19 = or i32 %shl3.i18, %shl.i15
  %arrayidx4.i20 = getelementptr inbounds i8, ptr %size_dt_strings, i64 2
  %14 = load i8, ptr %arrayidx4.i20, align 1, !tbaa !5
  %conv5.i21 = zext i8 %14 to i32
  %shl6.i22 = shl nuw nsw i32 %conv5.i21, 8
  %or7.i23 = or i32 %or.i19, %shl6.i22
  %arrayidx8.i24 = getelementptr inbounds i8, ptr %size_dt_strings, i64 3
  %15 = load i8, ptr %arrayidx8.i24, align 1, !tbaa !5
  %conv9.i25 = zext i8 %15 to i32
  %or10.i26 = or i32 %or7.i23, %conv9.i25
  %add.i = add i32 %add, 56
  %add1.i = add nsw i32 %or10.i, %add.i
  %add.ptr.i = getelementptr inbounds i8, ptr %fdt, i64 40
  %off_mem_rsvmap.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 4
  %16 = load i8, ptr %off_mem_rsvmap.i, align 1, !tbaa !5
  %conv.i.i27 = zext i8 %16 to i64
  %shl.i.i28 = shl nuw nsw i64 %conv.i.i27, 24
  %arrayidx1.i.i29 = getelementptr inbounds i8, ptr %off_mem_rsvmap.i, i64 1
  %17 = load i8, ptr %arrayidx1.i.i29, align 1, !tbaa !5
  %conv2.i.i30 = zext i8 %17 to i64
  %shl3.i.i31 = shl nuw nsw i64 %conv2.i.i30, 16
  %or.i.i32 = or i64 %shl3.i.i31, %shl.i.i28
  %arrayidx4.i.i33 = getelementptr inbounds i8, ptr %off_mem_rsvmap.i, i64 2
  %18 = load i8, ptr %arrayidx4.i.i33, align 1, !tbaa !5
  %conv5.i.i34 = zext i8 %18 to i64
  %shl6.i.i35 = shl nuw nsw i64 %conv5.i.i34, 8
  %or7.i.i36 = or i64 %or.i.i32, %shl6.i.i35
  %arrayidx8.i.i37 = getelementptr inbounds i8, ptr %off_mem_rsvmap.i, i64 3
  %19 = load i8, ptr %arrayidx8.i.i37, align 1, !tbaa !5
  %conv9.i.i38 = zext i8 %19 to i64
  %or10.i.i39 = or i64 %or7.i.i36, %conv9.i.i38
  %add.ptr3.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i39
  %conv.i40 = sext i32 %mul to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %add.ptr.i, ptr align 1 %add.ptr3.i, i64 %conv.i40, i1 false) #9
  store i32 671088640, ptr %off_mem_rsvmap.i, align 4, !tbaa !29
  %idx.ext4.i = sext i32 %add.i to i64
  %add.ptr5.i = getelementptr inbounds i8, ptr %fdt, i64 %idx.ext4.i
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %20 = load i8, ptr %off_dt_struct.i, align 1, !tbaa !5
  %conv.i38.i = zext i8 %20 to i64
  %shl.i39.i = shl nuw nsw i64 %conv.i38.i, 24
  %arrayidx1.i40.i = getelementptr inbounds i8, ptr %off_dt_struct.i, i64 1
  %21 = load i8, ptr %arrayidx1.i40.i, align 1, !tbaa !5
  %conv2.i41.i = zext i8 %21 to i64
  %shl3.i42.i = shl nuw nsw i64 %conv2.i41.i, 16
  %or.i43.i = or i64 %shl3.i42.i, %shl.i39.i
  %arrayidx4.i44.i = getelementptr inbounds i8, ptr %off_dt_struct.i, i64 2
  %22 = load i8, ptr %arrayidx4.i44.i, align 1, !tbaa !5
  %conv5.i45.i = zext i8 %22 to i64
  %shl6.i46.i = shl nuw nsw i64 %conv5.i45.i, 8
  %or7.i47.i = or i64 %or.i43.i, %shl6.i46.i
  %arrayidx8.i48.i = getelementptr inbounds i8, ptr %off_dt_struct.i, i64 3
  %23 = load i8, ptr %arrayidx8.i48.i, align 1, !tbaa !5
  %conv9.i49.i = zext i8 %23 to i64
  %or10.i50.i = or i64 %or7.i47.i, %conv9.i49.i
  %add.ptr8.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i50.i
  %conv9.i41 = sext i32 %or10.i to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %add.ptr5.i, ptr align 1 %add.ptr8.i, i64 %conv9.i41, i1 false) #9
  %rev.i.i.i = tail call i32 @llvm.bswap.i32(i32 %add.i) #9
  store i32 %rev.i.i.i, ptr %off_dt_struct.i, align 4, !tbaa !15
  %rev.i.i51.i = tail call i32 @llvm.bswap.i32(i32 %or10.i) #9
  store i32 %rev.i.i51.i, ptr %size_dt_struct.i, align 4, !tbaa !18
  %idx.ext10.i = sext i32 %add1.i to i64
  %add.ptr11.i = getelementptr inbounds i8, ptr %fdt, i64 %idx.ext10.i
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 3
  %24 = load i8, ptr %off_dt_strings.i, align 1, !tbaa !5
  %conv.i52.i = zext i8 %24 to i64
  %shl.i53.i = shl nuw nsw i64 %conv.i52.i, 24
  %arrayidx1.i54.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 1
  %25 = load i8, ptr %arrayidx1.i54.i, align 1, !tbaa !5
  %conv2.i55.i = zext i8 %25 to i64
  %shl3.i56.i = shl nuw nsw i64 %conv2.i55.i, 16
  %or.i57.i = or i64 %shl3.i56.i, %shl.i53.i
  %arrayidx4.i58.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 2
  %26 = load i8, ptr %arrayidx4.i58.i, align 1, !tbaa !5
  %conv5.i59.i = zext i8 %26 to i64
  %shl6.i60.i = shl nuw nsw i64 %conv5.i59.i, 8
  %or7.i61.i = or i64 %or.i57.i, %shl6.i60.i
  %arrayidx8.i62.i = getelementptr inbounds i8, ptr %off_dt_strings.i, i64 3
  %27 = load i8, ptr %arrayidx8.i62.i, align 1, !tbaa !5
  %conv9.i63.i = zext i8 %27 to i64
  %or10.i64.i = or i64 %or7.i61.i, %conv9.i63.i
  %add.ptr14.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i64.i
  %conv15.i = sext i32 %or10.i26 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr11.i, ptr align 1 %add.ptr14.i, i64 %conv15.i, i1 false) #9
  %rev.i.i65.i = tail call i32 @llvm.bswap.i32(i32 %add1.i) #9
  store i32 %rev.i.i65.i, ptr %off_dt_strings.i, align 4, !tbaa !16
  %28 = load i8, ptr %size_dt_strings, align 1, !tbaa !5
  %conv.i66.i = zext i8 %28 to i32
  %shl.i67.i = shl nuw i32 %conv.i66.i, 24
  %29 = load i8, ptr %arrayidx1.i16, align 1, !tbaa !5
  %conv2.i69.i = zext i8 %29 to i32
  %shl3.i70.i = shl nuw nsw i32 %conv2.i69.i, 16
  %or.i71.i = or i32 %shl3.i70.i, %shl.i67.i
  %30 = load i8, ptr %arrayidx4.i20, align 1, !tbaa !5
  %conv5.i73.i = zext i8 %30 to i32
  %shl6.i74.i = shl nuw nsw i32 %conv5.i73.i, 8
  %or7.i75.i = or i32 %or.i71.i, %shl6.i74.i
  %31 = load i8, ptr %arrayidx8.i24, align 1, !tbaa !5
  %conv9.i77.i = zext i8 %31 to i32
  %or10.i78.i = or i32 %or7.i75.i, %conv9.i77.i
  %rev.i.i79.i = tail call i32 @llvm.bswap.i32(i32 %or10.i78.i) #9
  store i32 %rev.i.i79.i, ptr %size_dt_strings, align 4, !tbaa !23
  %conv.i.i43 = shl i32 %rev.i.i65.i, 24
  %32 = shl i32 %rev.i.i65.i, 8
  %shl3.i.i47 = and i32 %32, 16711680
  %or.i.i48 = or i32 %shl3.i.i47, %conv.i.i43
  %33 = lshr i32 %rev.i.i65.i, 8
  %shl6.i.i51 = and i32 %33, 65280
  %or7.i.i52 = or i32 %or.i.i48, %shl6.i.i51
  %34 = lshr i32 %rev.i.i65.i, 24
  %or10.i.i55 = or i32 %or7.i.i52, %34
  %conv.i3.i = shl i32 %rev.i.i79.i, 24
  %35 = shl i32 %rev.i.i79.i, 8
  %shl3.i7.i = and i32 %35, 16711680
  %or.i8.i = or i32 %shl3.i7.i, %conv.i3.i
  %36 = lshr i32 %rev.i.i79.i, 8
  %shl6.i11.i = and i32 %36, 65280
  %or7.i12.i = or i32 %or.i8.i, %shl6.i11.i
  %37 = lshr i32 %rev.i.i79.i, 24
  %or10.i15.i = or i32 %or7.i12.i, %37
  %add.i57 = add i32 %or10.i15.i, %or10.i.i55
  %rev.i.i = tail call i32 @llvm.bswap.i32(i32 %add.i57) #9
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  store i32 %rev.i.i, ptr %totalsize.i, align 4, !tbaa !28
  br label %cleanup6

cleanup6:                                         ; preds = %cleanup.cont, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ 0, %cleanup.cont ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ]
  ret i32 %retval.1
}

declare i32 @fdt_check_node_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @fdt_find_string_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @fdt_get_property(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !10, i64 20}
!9 = !{!"fdt_header", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!10 = !{!"int", !6, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"fdt_reserve_entry", !13, i64 0, !13, i64 8}
!13 = !{!"long", !6, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{!9, !10, i64 8}
!16 = !{!9, !10, i64 12}
!17 = !{!10, !10, i64 0}
!18 = !{!9, !10, i64 36}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!22, !10, i64 4}
!22 = !{!"fdt_property", !10, i64 0, !10, i64 4, !10, i64 8, !6, i64 12}
!23 = !{!9, !10, i64 32}
!24 = !{!22, !10, i64 0}
!25 = !{!22, !10, i64 8}
!26 = !{!27, !10, i64 0}
!27 = !{!"fdt_node_header", !10, i64 0, !6, i64 4}
!28 = !{!9, !10, i64 4}
!29 = !{!9, !10, i64 16}
!30 = !{!9, !10, i64 0}
!31 = !{!9, !10, i64 24}
!32 = !{!9, !10, i64 28}
