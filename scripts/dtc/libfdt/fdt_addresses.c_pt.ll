; ModuleID = '/llk/IR_all_yes/scripts/dtc/libfdt/fdt_addresses.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_address_cells(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %len.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #4
  %call.i = call ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull @.str, ptr noundef nonnull %len.i) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  %0 = load i32, ptr %len.i, align 4, !tbaa !5
  br i1 %tobool.not.i, label %fdt_cells.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %cmp.not.i = icmp eq i32 %0, 4
  br i1 %cmp.not.i, label %if.end3.i, label %fdt_cells.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %1 = load i32, ptr %call.i, align 4, !tbaa !5
  %rev.i.i = call i32 @llvm.bswap.i32(i32 %1) #4
  %cmp5.i = icmp ugt i32 %rev.i.i, 4
  br i1 %cmp5.i, label %fdt_cells.exit.thread, label %fdt_cells.exit

fdt_cells.exit.thread:                            ; preds = %if.end3.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #4
  br label %if.end3

fdt_cells.exit:                                   ; preds = %if.end3.i, %entry
  %retval.0.i = phi i32 [ %rev.i.i, %if.end3.i ], [ %0, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #4
  switch i32 %retval.0.i, label %if.end3 [
    i32 0, label %cleanup
    i32 -1, label %if.then2
  ]

if.then2:                                         ; preds = %fdt_cells.exit
  br label %cleanup

if.end3:                                          ; preds = %fdt_cells.exit, %fdt_cells.exit.thread
  %retval.0.i7 = phi i32 [ -14, %fdt_cells.exit.thread ], [ %retval.0.i, %fdt_cells.exit ]
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %fdt_cells.exit
  %retval.0 = phi i32 [ 2, %if.then2 ], [ %retval.0.i7, %if.end3 ], [ -14, %fdt_cells.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_size_cells(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 {
entry:
  %len.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #4
  %call.i = call ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull @.str.1, ptr noundef nonnull %len.i) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  %0 = load i32, ptr %len.i, align 4, !tbaa !5
  br i1 %tobool.not.i, label %fdt_cells.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %cmp.not.i = icmp eq i32 %0, 4
  br i1 %cmp.not.i, label %if.end3.i, label %fdt_cells.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %1 = load i32, ptr %call.i, align 4, !tbaa !5
  %rev.i.i = call i32 @llvm.bswap.i32(i32 %1) #4
  %cmp5.i = icmp ugt i32 %rev.i.i, 4
  %spec.select = select i1 %cmp5.i, i32 -14, i32 %rev.i.i
  br label %fdt_cells.exit.thread

fdt_cells.exit.thread:                            ; preds = %if.end3.i, %if.end.i
  %retval.0.i.ph = phi i32 [ -14, %if.end.i ], [ %spec.select, %if.end3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #4
  br label %2

fdt_cells.exit:                                   ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #4
  %cmp = icmp eq i32 %0, -1
  %spec.select4 = select i1 %cmp, i32 1, i32 %0
  br label %2

2:                                                ; preds = %fdt_cells.exit, %fdt_cells.exit.thread
  %3 = phi i32 [ %retval.0.i.ph, %fdt_cells.exit.thread ], [ %spec.select4, %fdt_cells.exit ]
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_appendprop_addrrange(ptr noundef %fdt, i32 noundef %parent, i32 noundef %nodeoffset, ptr noundef %name, i64 noundef %addr, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %len.i.i65 = alloca i32, align 4
  %len.i.i = alloca i32, align 4
  %data = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #4
  %call.i.i = call ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %parent, ptr noundef nonnull @.str, ptr noundef nonnull %len.i.i) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  %0 = load i32, ptr %len.i.i, align 4, !tbaa !5
  br i1 %tobool.not.i.i, label %fdt_cells.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %cmp.not.i.i = icmp eq i32 %0, 4
  br i1 %cmp.not.i.i, label %if.end3.i.i, label %fdt_address_cells.exit.thread121

if.end3.i.i:                                      ; preds = %if.end.i.i
  %1 = load i32, ptr %call.i.i, align 4, !tbaa !5
  %rev.i.i.i = call i32 @llvm.bswap.i32(i32 %1) #4
  %cmp5.i.i = icmp ugt i32 %rev.i.i.i, 4
  br i1 %cmp5.i.i, label %fdt_address_cells.exit.thread121, label %fdt_cells.exit.i

fdt_address_cells.exit.thread121:                 ; preds = %if.end3.i.i, %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #4
  br label %cleanup

fdt_cells.exit.i:                                 ; preds = %if.end3.i.i, %entry
  %retval.0.i.i = phi i32 [ %rev.i.i.i, %if.end3.i.i ], [ %0, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #4
  switch i32 %retval.0.i.i, label %fdt_address_cells.exit [
    i32 0, label %cleanup
    i32 -1, label %if.end
  ]

fdt_address_cells.exit:                           ; preds = %fdt_cells.exit.i
  %cmp = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %fdt_address_cells.exit, %fdt_cells.exit.i
  %retval.0.i120 = phi i32 [ %retval.0.i.i, %fdt_address_cells.exit ], [ 2, %fdt_cells.exit.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i65) #4
  %call.i.i66 = call ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %parent, ptr noundef nonnull @.str.1, ptr noundef nonnull %len.i.i65) #4
  %tobool.not.i.i67 = icmp eq ptr %call.i.i66, null
  %2 = load i32, ptr %len.i.i65, align 4, !tbaa !5
  br i1 %tobool.not.i.i67, label %fdt_cells.exit.i74, label %if.end.i.i69

if.end.i.i69:                                     ; preds = %if.end
  %cmp.not.i.i68 = icmp eq i32 %2, 4
  br i1 %cmp.not.i.i68, label %if.end3.i.i72, label %fdt_cells.exit.thread.i73

if.end3.i.i72:                                    ; preds = %if.end.i.i69
  %3 = load i32, ptr %call.i.i66, align 4, !tbaa !5
  %rev.i.i.i70 = call i32 @llvm.bswap.i32(i32 %3) #4
  %cmp5.i.i71 = icmp ugt i32 %rev.i.i.i70, 4
  %spec.select.i = select i1 %cmp5.i.i71, i32 -14, i32 %rev.i.i.i70
  br label %fdt_cells.exit.thread.i73

fdt_cells.exit.thread.i73:                        ; preds = %if.end3.i.i72, %if.end.i.i69
  %retval.0.i.ph.i = phi i32 [ -14, %if.end.i.i69 ], [ %spec.select.i, %if.end3.i.i72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i65) #4
  br label %fdt_size_cells.exit

fdt_cells.exit.i74:                               ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i65) #4
  %cmp.i = icmp eq i32 %2, -1
  br i1 %cmp.i, label %if.end4, label %fdt_size_cells.exit

fdt_size_cells.exit:                              ; preds = %fdt_cells.exit.i74, %fdt_cells.exit.thread.i73
  %4 = phi i32 [ %retval.0.i.ph.i, %fdt_cells.exit.thread.i73 ], [ %2, %fdt_cells.exit.i74 ]
  %cmp2 = icmp slt i32 %4, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %fdt_size_cells.exit, %fdt_cells.exit.i74
  %5 = phi i32 [ %4, %fdt_size_cells.exit ], [ 1, %fdt_cells.exit.i74 ]
  switch i32 %retval.0.i120, label %cleanup [
    i32 1, label %if.then6
    i32 2, label %if.then13
  ]

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp ugt i64 %addr, 4294967295
  %sub = sub i64 0, %addr
  %cmp8 = icmp ult i64 %sub, %size
  %or.cond = or i1 %cmp7, %cmp8
  br i1 %or.cond, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.then6
  %shr.i129 = lshr i64 %addr, 24
  %conv.i = trunc i64 %shr.i129 to i8
  store i8 %conv.i, ptr %data, align 16, !tbaa !9
  br label %if.end16

if.then13:                                        ; preds = %if.end4
  %shr.i75 = lshr i64 %addr, 56
  %conv.i76 = trunc i64 %shr.i75 to i8
  store i8 %conv.i76, ptr %data, align 16, !tbaa !9
  %shr1.i77 = lshr i64 %addr, 48
  %conv2.i78 = trunc i64 %shr1.i77 to i8
  %arrayidx3.i79 = getelementptr inbounds i8, ptr %data, i64 1
  store i8 %conv2.i78, ptr %arrayidx3.i79, align 1, !tbaa !9
  %shr4.i80 = lshr i64 %addr, 40
  %conv6.i81 = trunc i64 %shr4.i80 to i8
  %arrayidx7.i82 = getelementptr inbounds i8, ptr %data, i64 2
  store i8 %conv6.i81, ptr %arrayidx7.i82, align 2, !tbaa !9
  %shr8.i = lshr i64 %addr, 32
  %conv10.i = trunc i64 %shr8.i to i8
  %arrayidx11.i = getelementptr inbounds i8, ptr %data, i64 3
  store i8 %conv10.i, ptr %arrayidx11.i, align 1, !tbaa !9
  %shr12.i = lshr i64 %addr, 24
  %conv14.i = trunc i64 %shr12.i to i8
  %arrayidx15.i = getelementptr inbounds i8, ptr %data, i64 4
  store i8 %conv14.i, ptr %arrayidx15.i, align 4, !tbaa !9
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10
  %.sink133 = phi i64 [ 5, %if.then13 ], [ 1, %if.end10 ]
  %.sink132 = phi i64 [ 6, %if.then13 ], [ 2, %if.end10 ]
  %.sink = phi i64 [ 7, %if.then13 ], [ 3, %if.end10 ]
  %shr16.i = lshr i64 %addr, 16
  %conv18.i = trunc i64 %shr16.i to i8
  %arrayidx19.i = getelementptr inbounds i8, ptr %data, i64 %.sink133
  store i8 %conv18.i, ptr %arrayidx19.i, align 1, !tbaa !9
  %shr20.i = lshr i64 %addr, 8
  %conv22.i = trunc i64 %shr20.i to i8
  %arrayidx23.i = getelementptr inbounds i8, ptr %data, i64 %.sink132
  store i8 %conv22.i, ptr %arrayidx23.i, align 2, !tbaa !9
  %conv25.i = trunc i64 %addr to i8
  %arrayidx26.i = getelementptr inbounds i8, ptr %data, i64 %.sink
  store i8 %conv25.i, ptr %arrayidx26.i, align 1, !tbaa !9
  %conv17125 = zext i32 %retval.0.i120 to i64
  %mul = shl nuw nsw i64 %conv17125, 2
  %add.ptr = getelementptr inbounds i8, ptr %data, i64 %mul
  switch i32 %5, label %cleanup [
    i32 1, label %if.then20
    i32 2, label %if.then29
  ]

if.then20:                                        ; preds = %if.end16
  %cmp21 = icmp ugt i64 %size, 4294967295
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.then20
  %shr.i83126 = lshr i64 %size, 24
  %conv.i84 = trunc i64 %shr.i83126 to i8
  store i8 %conv.i84, ptr %add.ptr, align 4, !tbaa !9
  br label %if.end32

if.then29:                                        ; preds = %if.end16
  %shr.i93 = lshr i64 %size, 56
  %conv.i94 = trunc i64 %shr.i93 to i8
  store i8 %conv.i94, ptr %add.ptr, align 4, !tbaa !9
  %shr1.i95 = lshr i64 %size, 48
  %conv2.i96 = trunc i64 %shr1.i95 to i8
  %arrayidx3.i97 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  store i8 %conv2.i96, ptr %arrayidx3.i97, align 1, !tbaa !9
  %shr4.i98 = lshr i64 %size, 40
  %conv6.i99 = trunc i64 %shr4.i98 to i8
  %arrayidx7.i100 = getelementptr inbounds i8, ptr %add.ptr, i64 2
  store i8 %conv6.i99, ptr %arrayidx7.i100, align 2, !tbaa !9
  %shr8.i101 = lshr i64 %size, 32
  %conv10.i102 = trunc i64 %shr8.i101 to i8
  %arrayidx11.i103 = getelementptr inbounds i8, ptr %add.ptr, i64 3
  store i8 %conv10.i102, ptr %arrayidx11.i103, align 1, !tbaa !9
  %shr12.i104 = lshr i64 %size, 24
  %conv14.i105 = trunc i64 %shr12.i104 to i8
  %arrayidx15.i106 = getelementptr inbounds i8, ptr %add.ptr, i64 4
  store i8 %conv14.i105, ptr %arrayidx15.i106, align 4, !tbaa !9
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end24
  %.sink136 = phi i64 [ 5, %if.then29 ], [ 1, %if.end24 ]
  %.sink135 = phi i64 [ 6, %if.then29 ], [ 2, %if.end24 ]
  %.sink134 = phi i64 [ 7, %if.then29 ], [ 3, %if.end24 ]
  %shr16.i107 = lshr i64 %size, 16
  %conv18.i108 = trunc i64 %shr16.i107 to i8
  %arrayidx19.i109 = getelementptr inbounds i8, ptr %add.ptr, i64 %.sink136
  store i8 %conv18.i108, ptr %arrayidx19.i109, align 1, !tbaa !9
  %shr20.i110 = lshr i64 %size, 8
  %conv22.i111 = trunc i64 %shr20.i110 to i8
  %arrayidx23.i112 = getelementptr inbounds i8, ptr %add.ptr, i64 %.sink135
  store i8 %conv22.i111, ptr %arrayidx23.i112, align 2, !tbaa !9
  %conv25.i113 = trunc i64 %size to i8
  %arrayidx26.i114 = getelementptr inbounds i8, ptr %add.ptr, i64 %.sink134
  store i8 %conv25.i113, ptr %arrayidx26.i114, align 1, !tbaa !9
  %add = add nuw nsw i32 %5, %retval.0.i120
  %mul35 = shl nuw nsw i32 %add, 2
  %call37 = call i32 @fdt_appendprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %data, i32 noundef %mul35) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then20, %if.end16, %if.then6, %if.end4, %fdt_size_cells.exit, %fdt_address_cells.exit, %fdt_cells.exit.i, %fdt_address_cells.exit.thread121
  %retval.0 = phi i32 [ %call37, %if.end32 ], [ %retval.0.i.i, %fdt_address_cells.exit ], [ %4, %fdt_size_cells.exit ], [ -15, %if.then6 ], [ -14, %if.end4 ], [ -15, %if.then20 ], [ -14, %if.end16 ], [ -14, %fdt_address_cells.exit.thread121 ], [ -14, %fdt_cells.exit.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #4
  ret i32 %retval.0
}

declare i32 @fdt_appendprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
