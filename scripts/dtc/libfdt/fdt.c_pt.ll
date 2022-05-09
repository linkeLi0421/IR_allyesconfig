; ModuleID = '/llk/IR_all_yes/scripts/dtc/libfdt/fdt.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @fdt_ro_probe_(ptr noundef %fdt) local_unnamed_addr #0 {
entry:
  %totalsize1 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %0 = load i8, ptr %totalsize1, align 1, !tbaa !5
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %totalsize1, i64 1
  %1 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %totalsize1, i64 2
  %2 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %totalsize1, i64 3
  %3 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %4 = ptrtoint ptr %fdt to i64
  %and = and i64 %4, 7
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %entry
  %5 = load i8, ptr %fdt, align 1, !tbaa !5
  %conv.i41 = zext i8 %5 to i32
  %shl.i42 = shl nuw i32 %conv.i41, 24
  %arrayidx1.i43 = getelementptr inbounds i8, ptr %fdt, i64 1
  %6 = load i8, ptr %arrayidx1.i43, align 1, !tbaa !5
  %conv2.i44 = zext i8 %6 to i32
  %shl3.i45 = shl nuw nsw i32 %conv2.i44, 16
  %or.i46 = or i32 %shl3.i45, %shl.i42
  %arrayidx4.i47 = getelementptr inbounds i8, ptr %fdt, i64 2
  %7 = load i8, ptr %arrayidx4.i47, align 1, !tbaa !5
  %conv5.i48 = zext i8 %7 to i32
  %shl6.i49 = shl nuw nsw i32 %conv5.i48, 8
  %or7.i50 = or i32 %or.i46, %shl6.i49
  %arrayidx8.i51 = getelementptr inbounds i8, ptr %fdt, i64 3
  %8 = load i8, ptr %arrayidx8.i51, align 1, !tbaa !5
  %conv9.i52 = zext i8 %8 to i32
  %or10.i53 = or i32 %or7.i50, %conv9.i52
  switch i32 %or10.i53, label %cleanup [
    i32 -804389139, label %if.then6
    i32 804389138, label %if.then21
  ]

if.then6:                                         ; preds = %if.end4
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %9 = load i8, ptr %version, align 1, !tbaa !5
  %conv.i54 = zext i8 %9 to i32
  %shl.i55 = shl nuw i32 %conv.i54, 24
  %arrayidx1.i56 = getelementptr inbounds i8, ptr %version, i64 1
  %10 = load i8, ptr %arrayidx1.i56, align 1, !tbaa !5
  %conv2.i57 = zext i8 %10 to i32
  %shl3.i58 = shl nuw nsw i32 %conv2.i57, 16
  %or.i59 = or i32 %shl3.i58, %shl.i55
  %arrayidx4.i60 = getelementptr inbounds i8, ptr %version, i64 2
  %11 = load i8, ptr %arrayidx4.i60, align 1, !tbaa !5
  %conv5.i61 = zext i8 %11 to i32
  %shl6.i62 = shl nuw nsw i32 %conv5.i61, 8
  %or7.i63 = or i32 %or.i59, %shl6.i62
  %arrayidx8.i64 = getelementptr inbounds i8, ptr %version, i64 3
  %12 = load i8, ptr %arrayidx8.i64, align 1, !tbaa !5
  %conv9.i65 = zext i8 %12 to i32
  %or10.i66 = or i32 %or7.i63, %conv9.i65
  %cmp10 = icmp ult i32 %or10.i66, 2
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.then6
  %last_comp_version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 6
  %13 = load i8, ptr %last_comp_version, align 1, !tbaa !5
  %conv.i67 = zext i8 %13 to i32
  %shl.i68 = shl nuw i32 %conv.i67, 24
  %arrayidx1.i69 = getelementptr inbounds i8, ptr %last_comp_version, i64 1
  %14 = load i8, ptr %arrayidx1.i69, align 1, !tbaa !5
  %conv2.i70 = zext i8 %14 to i32
  %shl3.i71 = shl nuw nsw i32 %conv2.i70, 16
  %or.i72 = or i32 %shl3.i71, %shl.i68
  %arrayidx4.i73 = getelementptr inbounds i8, ptr %last_comp_version, i64 2
  %15 = load i8, ptr %arrayidx4.i73, align 1, !tbaa !5
  %conv5.i74 = zext i8 %15 to i32
  %shl6.i75 = shl nuw nsw i32 %conv5.i74, 8
  %or7.i76 = or i32 %or.i72, %shl6.i75
  %arrayidx8.i77 = getelementptr inbounds i8, ptr %last_comp_version, i64 3
  %16 = load i8, ptr %arrayidx8.i77, align 1, !tbaa !5
  %conv9.i78 = zext i8 %16 to i32
  %or10.i79 = or i32 %or7.i76, %conv9.i78
  %cmp14 = icmp ugt i32 %or10.i79, 17
  br i1 %cmp14, label %cleanup, label %if.end29

if.then21:                                        ; preds = %if.end4
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %17 = load i8, ptr %size_dt_struct, align 1, !tbaa !5
  %conv.i93 = zext i8 %17 to i32
  %shl.i94 = shl nuw i32 %conv.i93, 24
  %arrayidx1.i95 = getelementptr inbounds i8, ptr %size_dt_struct, i64 1
  %18 = load i8, ptr %arrayidx1.i95, align 1, !tbaa !5
  %conv2.i96 = zext i8 %18 to i32
  %shl3.i97 = shl nuw nsw i32 %conv2.i96, 16
  %or.i98 = or i32 %shl3.i97, %shl.i94
  %arrayidx4.i99 = getelementptr inbounds i8, ptr %size_dt_struct, i64 2
  %19 = load i8, ptr %arrayidx4.i99, align 1, !tbaa !5
  %conv5.i100 = zext i8 %19 to i32
  %shl6.i101 = shl nuw nsw i32 %conv5.i100, 8
  %or7.i102 = or i32 %or.i98, %shl6.i101
  %arrayidx8.i103 = getelementptr inbounds i8, ptr %size_dt_struct, i64 3
  %20 = load i8, ptr %arrayidx8.i103, align 1, !tbaa !5
  %conv9.i104 = zext i8 %20 to i32
  %or10.i105 = or i32 %or7.i102, %conv9.i104
  %cmp24 = icmp eq i32 %or10.i105, 0
  br i1 %cmp24, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.then21, %if.end12
  %cmp30 = icmp ult i32 %or10.i, 2147483647
  %call. = select i1 %cmp30, i32 %or10.i, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then21, %if.end12, %if.then6, %if.end4, %entry
  %retval.0 = phi i32 [ -19, %entry ], [ -10, %if.then6 ], [ -10, %if.end12 ], [ -7, %if.then21 ], [ %call., %if.end29 ], [ -9, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @fdt_header_size_(i32 noundef %version) local_unnamed_addr #2 {
entry:
  %cmp = icmp ult i32 %version, 2
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %version, 2
  br i1 %cmp1, label %return, label %if.else3

if.else3:                                         ; preds = %if.else
  %cmp4 = icmp ult i32 %version, 4
  br i1 %cmp4, label %return, label %if.else6

if.else6:                                         ; preds = %if.else3
  %cmp7 = icmp ult i32 %version, 17
  %. = select i1 %cmp7, i64 36, i64 40
  br label %return

return:                                           ; preds = %if.else6, %if.else3, %if.else, %entry
  %retval.0 = phi i64 [ 28, %entry ], [ 32, %if.else ], [ 36, %if.else3 ], [ %., %if.else6 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @fdt_header_size(ptr nocapture noundef readonly %fdt) local_unnamed_addr #0 {
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
  %cmp.i = icmp ult i32 %or10.i, 2
  br i1 %cmp.i, label %fdt_header_size_.exit, label %if.else.i

if.else.i:                                        ; preds = %entry
  %cmp1.i = icmp eq i32 %or10.i, 2
  br i1 %cmp1.i, label %fdt_header_size_.exit, label %if.else3.i

if.else3.i:                                       ; preds = %if.else.i
  %cmp4.i = icmp ult i32 %or10.i, 4
  br i1 %cmp4.i, label %fdt_header_size_.exit, label %if.else6.i

if.else6.i:                                       ; preds = %if.else3.i
  %cmp7.i = icmp ult i32 %or10.i, 17
  %..i = select i1 %cmp7.i, i64 36, i64 40
  br label %fdt_header_size_.exit

fdt_header_size_.exit:                            ; preds = %if.else6.i, %if.else3.i, %if.else.i, %entry
  %retval.0.i = phi i64 [ 28, %entry ], [ 32, %if.else.i ], [ 36, %if.else3.i ], [ %..i, %if.else6.i ]
  ret i64 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @fdt_check_header(ptr noundef %fdt) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint ptr %fdt to i64
  %and = and i64 %0, 7
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %fdt, align 1, !tbaa !5
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %fdt, i64 1
  %2 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %2 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %fdt, i64 2
  %3 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %3 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %fdt, i64 3
  %4 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %4 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp.not = icmp eq i32 %or10.i, -804389139
  br i1 %cmp.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %5 = load i8, ptr %version, align 1, !tbaa !5
  %conv.i101 = zext i8 %5 to i32
  %shl.i102 = shl nuw i32 %conv.i101, 24
  %arrayidx1.i103 = getelementptr inbounds i8, ptr %version, i64 1
  %6 = load i8, ptr %arrayidx1.i103, align 1, !tbaa !5
  %conv2.i104 = zext i8 %6 to i32
  %shl3.i105 = shl nuw nsw i32 %conv2.i104, 16
  %or.i106 = or i32 %shl3.i105, %shl.i102
  %arrayidx4.i107 = getelementptr inbounds i8, ptr %version, i64 2
  %7 = load i8, ptr %arrayidx4.i107, align 1, !tbaa !5
  %conv5.i108 = zext i8 %7 to i32
  %shl6.i109 = shl nuw nsw i32 %conv5.i108, 8
  %or7.i110 = or i32 %or.i106, %shl6.i109
  %arrayidx8.i111 = getelementptr inbounds i8, ptr %version, i64 3
  %8 = load i8, ptr %arrayidx8.i111, align 1, !tbaa !5
  %conv9.i112 = zext i8 %8 to i32
  %or10.i113 = or i32 %or7.i110, %conv9.i112
  %cmp6 = icmp ult i32 %or10.i113, 2
  br i1 %cmp6, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %last_comp_version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 6
  %9 = load i8, ptr %last_comp_version, align 1, !tbaa !5
  %conv.i114 = zext i8 %9 to i32
  %shl.i115 = shl nuw i32 %conv.i114, 24
  %arrayidx1.i116 = getelementptr inbounds i8, ptr %last_comp_version, i64 1
  %10 = load i8, ptr %arrayidx1.i116, align 1, !tbaa !5
  %conv2.i117 = zext i8 %10 to i32
  %shl3.i118 = shl nuw nsw i32 %conv2.i117, 16
  %or.i119 = or i32 %shl3.i118, %shl.i115
  %arrayidx4.i120 = getelementptr inbounds i8, ptr %last_comp_version, i64 2
  %11 = load i8, ptr %arrayidx4.i120, align 1, !tbaa !5
  %conv5.i121 = zext i8 %11 to i32
  %shl6.i122 = shl nuw nsw i32 %conv5.i121, 8
  %or7.i123 = or i32 %or.i119, %shl6.i122
  %arrayidx8.i124 = getelementptr inbounds i8, ptr %last_comp_version, i64 3
  %12 = load i8, ptr %arrayidx8.i124, align 1, !tbaa !5
  %conv9.i125 = zext i8 %12 to i32
  %or10.i126 = or i32 %or7.i123, %conv9.i125
  %cmp8 = icmp ugt i32 %or10.i126, 17
  %cmp15 = icmp ult i32 %or10.i113, %or10.i126
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp15
  br i1 %or.cond, label %cleanup, label %if.else.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false
  %cmp1.i.i = icmp eq i32 %or10.i113, 2
  br i1 %cmp1.i.i, label %fdt_header_size.exit, label %if.else3.i.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  %cmp4.i.i = icmp ult i32 %or10.i113, 4
  br i1 %cmp4.i.i, label %fdt_header_size.exit, label %if.else6.i.i

if.else6.i.i:                                     ; preds = %if.else3.i.i
  %cmp7.i.i = icmp ult i32 %or10.i113, 17
  %..i.i = select i1 %cmp7.i.i, i64 36, i64 40
  br label %fdt_header_size.exit

fdt_header_size.exit:                             ; preds = %if.else6.i.i, %if.else3.i.i, %if.else.i.i
  %retval.0.i.i = phi i64 [ 32, %if.else.i.i ], [ 36, %if.else3.i.i ], [ %..i.i, %if.else6.i.i ]
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %13 = load i8, ptr %totalsize, align 1, !tbaa !5
  %conv.i153 = zext i8 %13 to i32
  %shl.i154 = shl nuw i32 %conv.i153, 24
  %arrayidx1.i155 = getelementptr inbounds i8, ptr %totalsize, i64 1
  %14 = load i8, ptr %arrayidx1.i155, align 1, !tbaa !5
  %conv2.i156 = zext i8 %14 to i32
  %shl3.i157 = shl nuw nsw i32 %conv2.i156, 16
  %or.i158 = or i32 %shl3.i157, %shl.i154
  %arrayidx4.i159 = getelementptr inbounds i8, ptr %totalsize, i64 2
  %15 = load i8, ptr %arrayidx4.i159, align 1, !tbaa !5
  %conv5.i160 = zext i8 %15 to i32
  %shl6.i161 = shl nuw nsw i32 %conv5.i160, 8
  %or7.i162 = or i32 %or.i158, %shl6.i161
  %arrayidx8.i163 = getelementptr inbounds i8, ptr %totalsize, i64 3
  %16 = load i8, ptr %arrayidx8.i163, align 1, !tbaa !5
  %conv9.i164 = zext i8 %16 to i32
  %or10.i165 = or i32 %or7.i162, %conv9.i164
  %conv = zext i32 %or10.i165 to i64
  %cmp23 = icmp ugt i64 %retval.0.i.i, %conv
  %cmp28 = icmp slt i32 %or10.i165, 0
  %or.cond345 = or i1 %cmp28, %cmp23
  br i1 %or.cond345, label %cleanup, label %if.end31

if.end31:                                         ; preds = %fdt_header_size.exit
  %conv32 = trunc i64 %retval.0.i.i to i32
  %off_mem_rsvmap = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 4
  %17 = load i8, ptr %off_mem_rsvmap, align 1, !tbaa !5
  %conv.i192 = zext i8 %17 to i32
  %shl.i193 = shl nuw i32 %conv.i192, 24
  %arrayidx1.i194 = getelementptr inbounds i8, ptr %off_mem_rsvmap, i64 1
  %18 = load i8, ptr %arrayidx1.i194, align 1, !tbaa !5
  %conv2.i195 = zext i8 %18 to i32
  %shl3.i196 = shl nuw nsw i32 %conv2.i195, 16
  %or.i197 = or i32 %shl3.i196, %shl.i193
  %arrayidx4.i198 = getelementptr inbounds i8, ptr %off_mem_rsvmap, i64 2
  %19 = load i8, ptr %arrayidx4.i198, align 1, !tbaa !5
  %conv5.i199 = zext i8 %19 to i32
  %shl6.i200 = shl nuw nsw i32 %conv5.i199, 8
  %or7.i201 = or i32 %or.i197, %shl6.i200
  %arrayidx8.i202 = getelementptr inbounds i8, ptr %off_mem_rsvmap, i64 3
  %20 = load i8, ptr %arrayidx8.i202, align 1, !tbaa !5
  %conv9.i203 = zext i8 %20 to i32
  %or10.i204 = or i32 %or7.i201, %conv9.i203
  %cmp.i = icmp ult i32 %or10.i204, %conv32
  %cmp1.i = icmp ugt i32 %or10.i204, %or10.i165
  %tobool37.not = or i1 %cmp.i, %cmp1.i
  br i1 %tobool37.not, label %cleanup, label %if.end40

if.end40:                                         ; preds = %if.end31
  %cmp46 = icmp ult i32 %or10.i113, 17
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %21 = load i8, ptr %off_dt_struct, align 1, !tbaa !5
  %conv.i231 = zext i8 %21 to i32
  %shl.i232 = shl nuw i32 %conv.i231, 24
  %arrayidx1.i233 = getelementptr inbounds i8, ptr %off_dt_struct, i64 1
  %22 = load i8, ptr %arrayidx1.i233, align 1, !tbaa !5
  %conv2.i234 = zext i8 %22 to i32
  %shl3.i235 = shl nuw nsw i32 %conv2.i234, 16
  %or.i236 = or i32 %shl3.i235, %shl.i232
  %arrayidx4.i237 = getelementptr inbounds i8, ptr %off_dt_struct, i64 2
  %23 = load i8, ptr %arrayidx4.i237, align 1, !tbaa !5
  %conv5.i238 = zext i8 %23 to i32
  %shl6.i239 = shl nuw nsw i32 %conv5.i238, 8
  %or7.i240 = or i32 %or.i236, %shl6.i239
  %arrayidx8.i241 = getelementptr inbounds i8, ptr %off_dt_struct, i64 3
  %24 = load i8, ptr %arrayidx8.i241, align 1, !tbaa !5
  %conv9.i242 = zext i8 %24 to i32
  %or10.i243 = or i32 %or7.i240, %conv9.i242
  %cmp.i244 = icmp ult i32 %or10.i243, %conv32
  %cmp1.i245 = icmp ugt i32 %or10.i243, %or10.i165
  %tobool54.not = or i1 %cmp.i244, %cmp1.i245
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end40
  br i1 %tobool54.not, label %cleanup, label %if.end67

if.else:                                          ; preds = %if.end40
  br i1 %tobool54.not, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %if.else
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %arrayidx1.i275 = getelementptr inbounds i8, ptr %size_dt_struct, i64 1
  %25 = load i8, ptr %arrayidx1.i275, align 1, !tbaa !5
  %conv2.i276 = zext i8 %25 to i32
  %shl3.i277 = shl nuw nsw i32 %conv2.i276, 16
  %26 = load i8, ptr %size_dt_struct, align 1, !tbaa !5
  %conv.i273 = zext i8 %26 to i32
  %shl.i274 = shl nuw i32 %conv.i273, 24
  %or.i278 = or i32 %shl.i274, %shl3.i277
  %arrayidx4.i279 = getelementptr inbounds i8, ptr %size_dt_struct, i64 2
  %27 = load i8, ptr %arrayidx4.i279, align 1, !tbaa !5
  %conv5.i280 = zext i8 %27 to i32
  %shl6.i281 = shl nuw nsw i32 %conv5.i280, 8
  %or7.i282 = or i32 %or.i278, %shl6.i281
  %arrayidx8.i283 = getelementptr inbounds i8, ptr %size_dt_struct, i64 3
  %28 = load i8, ptr %arrayidx8.i283, align 1, !tbaa !5
  %conv9.i284 = zext i8 %28 to i32
  %or10.i285 = or i32 %or7.i282, %conv9.i284
  %add.i = add i32 %or10.i285, %or10.i243
  %cmp.i288 = icmp ult i32 %add.i, %or10.i243
  br i1 %cmp.i288, label %cleanup, label %check_block_.exit

check_block_.exit:                                ; preds = %if.end.i
  %cmp.i14.i = icmp ult i32 %add.i, %conv32
  %cmp1.i15.i = icmp ugt i32 %add.i, %or10.i165
  %tobool64.not = or i1 %cmp.i14.i, %cmp1.i15.i
  br i1 %tobool64.not, label %cleanup, label %if.end67

if.end67:                                         ; preds = %check_block_.exit, %if.then48
  %off_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 3
  %29 = load i8, ptr %off_dt_strings, align 1, !tbaa !5
  %conv.i302 = zext i8 %29 to i32
  %shl.i303 = shl nuw i32 %conv.i302, 24
  %arrayidx1.i304 = getelementptr inbounds i8, ptr %off_dt_strings, i64 1
  %30 = load i8, ptr %arrayidx1.i304, align 1, !tbaa !5
  %conv2.i305 = zext i8 %30 to i32
  %shl3.i306 = shl nuw nsw i32 %conv2.i305, 16
  %or.i307 = or i32 %shl3.i306, %shl.i303
  %arrayidx4.i308 = getelementptr inbounds i8, ptr %off_dt_strings, i64 2
  %31 = load i8, ptr %arrayidx4.i308, align 1, !tbaa !5
  %conv5.i309 = zext i8 %31 to i32
  %shl6.i310 = shl nuw nsw i32 %conv5.i309, 8
  %or7.i311 = or i32 %or.i307, %shl6.i310
  %arrayidx8.i312 = getelementptr inbounds i8, ptr %off_dt_strings, i64 3
  %32 = load i8, ptr %arrayidx8.i312, align 1, !tbaa !5
  %conv9.i313 = zext i8 %32 to i32
  %or10.i314 = or i32 %or7.i311, %conv9.i313
  %cmp.i.i328 = icmp ult i32 %or10.i314, %conv32
  %cmp1.i.i329 = icmp ugt i32 %or10.i314, %or10.i165
  %tobool.not.i330 = or i1 %cmp.i.i328, %cmp1.i.i329
  br i1 %tobool.not.i330, label %check_block_.exit340.thread, label %if.end.i333

if.end.i333:                                      ; preds = %if.end67
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 8
  %arrayidx1.i317 = getelementptr inbounds i8, ptr %size_dt_strings, i64 1
  %33 = load i8, ptr %arrayidx1.i317, align 1, !tbaa !5
  %conv2.i318 = zext i8 %33 to i32
  %shl3.i319 = shl nuw nsw i32 %conv2.i318, 16
  %34 = load i8, ptr %size_dt_strings, align 1, !tbaa !5
  %conv.i315 = zext i8 %34 to i32
  %shl.i316 = shl nuw i32 %conv.i315, 24
  %or.i320 = or i32 %shl.i316, %shl3.i319
  %arrayidx4.i321 = getelementptr inbounds i8, ptr %size_dt_strings, i64 2
  %35 = load i8, ptr %arrayidx4.i321, align 1, !tbaa !5
  %conv5.i322 = zext i8 %35 to i32
  %shl6.i323 = shl nuw nsw i32 %conv5.i322, 8
  %or7.i324 = or i32 %or.i320, %shl6.i323
  %arrayidx8.i325 = getelementptr inbounds i8, ptr %size_dt_strings, i64 3
  %36 = load i8, ptr %arrayidx8.i325, align 1, !tbaa !5
  %conv9.i326 = zext i8 %36 to i32
  %or10.i327 = or i32 %or7.i324, %conv9.i326
  %add.i331 = add i32 %or10.i327, %or10.i314
  %cmp.i332 = icmp ult i32 %add.i331, %or10.i314
  br i1 %cmp.i332, label %check_block_.exit340.thread, label %check_block_.exit340

check_block_.exit340:                             ; preds = %if.end.i333
  %cmp.i14.i334 = icmp ult i32 %add.i331, %conv32
  %cmp1.i15.i335 = icmp ugt i32 %add.i331, %or10.i165
  %tobool74.not = or i1 %cmp.i14.i334, %cmp1.i15.i335
  br i1 %tobool74.not, label %check_block_.exit340.thread, label %cleanup

check_block_.exit340.thread:                      ; preds = %check_block_.exit340, %if.end.i333, %if.end67
  br label %cleanup

cleanup:                                          ; preds = %check_block_.exit340.thread, %check_block_.exit340, %check_block_.exit, %if.end.i, %if.else, %if.then48, %if.end31, %fdt_header_size.exit, %lor.lhs.false, %if.end2, %if.end, %entry
  %retval.0 = phi i32 [ -19, %entry ], [ -9, %if.end ], [ -10, %lor.lhs.false ], [ -10, %if.end2 ], [ -8, %fdt_header_size.exit ], [ -8, %if.end31 ], [ -8, %if.then48 ], [ -8, %check_block_.exit ], [ -8, %check_block_.exit340.thread ], [ 0, %check_block_.exit340 ], [ -8, %if.else ], [ -8, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @fdt_offset_ptr(ptr noundef readonly %fdt, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 2
  %0 = load i8, ptr %off_dt_struct, align 1, !tbaa !5
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %off_dt_struct, i64 1
  %1 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %off_dt_struct, i64 2
  %2 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %off_dt_struct, i64 3
  %3 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %add = add i32 %or10.i, %offset
  %cmp = icmp slt i32 %offset, 0
  %cmp3 = icmp ult i32 %add, %offset
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %add4 = add i32 %add, %len
  %cmp5 = icmp ult i32 %add4, %add
  br i1 %cmp5, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %4 = load i8, ptr %totalsize, align 1, !tbaa !5
  %conv.i45 = zext i8 %4 to i32
  %shl.i46 = shl nuw i32 %conv.i45, 24
  %arrayidx1.i47 = getelementptr inbounds i8, ptr %totalsize, i64 1
  %5 = load i8, ptr %arrayidx1.i47, align 1, !tbaa !5
  %conv2.i48 = zext i8 %5 to i32
  %shl3.i49 = shl nuw nsw i32 %conv2.i48, 16
  %or.i50 = or i32 %shl3.i49, %shl.i46
  %arrayidx4.i51 = getelementptr inbounds i8, ptr %totalsize, i64 2
  %6 = load i8, ptr %arrayidx4.i51, align 1, !tbaa !5
  %conv5.i52 = zext i8 %6 to i32
  %shl6.i53 = shl nuw nsw i32 %conv5.i52, 8
  %or7.i54 = or i32 %or.i50, %shl6.i53
  %arrayidx8.i55 = getelementptr inbounds i8, ptr %totalsize, i64 3
  %7 = load i8, ptr %arrayidx8.i55, align 1, !tbaa !5
  %conv9.i56 = zext i8 %7 to i32
  %or10.i57 = or i32 %or7.i54, %conv9.i56
  %cmp9 = icmp ugt i32 %add4, %or10.i57
  br i1 %cmp9, label %cleanup, label %if.end12

if.end12:                                         ; preds = %lor.lhs.false6
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %8 = load i8, ptr %version, align 1, !tbaa !5
  %conv.i58 = zext i8 %8 to i32
  %shl.i59 = shl nuw i32 %conv.i58, 24
  %arrayidx1.i60 = getelementptr inbounds i8, ptr %version, i64 1
  %9 = load i8, ptr %arrayidx1.i60, align 1, !tbaa !5
  %conv2.i61 = zext i8 %9 to i32
  %shl3.i62 = shl nuw nsw i32 %conv2.i61, 16
  %or.i63 = or i32 %shl3.i62, %shl.i59
  %arrayidx4.i64 = getelementptr inbounds i8, ptr %version, i64 2
  %10 = load i8, ptr %arrayidx4.i64, align 1, !tbaa !5
  %conv5.i65 = zext i8 %10 to i32
  %shl6.i66 = shl nuw nsw i32 %conv5.i65, 8
  %or7.i67 = or i32 %or.i63, %shl6.i66
  %arrayidx8.i68 = getelementptr inbounds i8, ptr %version, i64 3
  %11 = load i8, ptr %arrayidx8.i68, align 1, !tbaa !5
  %conv9.i69 = zext i8 %11 to i32
  %or10.i70 = or i32 %or7.i67, %conv9.i69
  %cmp16 = icmp ugt i32 %or10.i70, 16
  br i1 %cmp16, label %if.then17, label %if.end26

if.then17:                                        ; preds = %if.end12
  %add18 = add i32 %len, %offset
  %cmp19 = icmp ult i32 %add18, %offset
  br i1 %cmp19, label %cleanup, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.then17
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 9
  %12 = load i8, ptr %size_dt_struct, align 1, !tbaa !5
  %conv.i71 = zext i8 %12 to i32
  %shl.i72 = shl nuw i32 %conv.i71, 24
  %arrayidx1.i73 = getelementptr inbounds i8, ptr %size_dt_struct, i64 1
  %13 = load i8, ptr %arrayidx1.i73, align 1, !tbaa !5
  %conv2.i74 = zext i8 %13 to i32
  %shl3.i75 = shl nuw nsw i32 %conv2.i74, 16
  %or.i76 = or i32 %shl3.i75, %shl.i72
  %arrayidx4.i77 = getelementptr inbounds i8, ptr %size_dt_struct, i64 2
  %14 = load i8, ptr %arrayidx4.i77, align 1, !tbaa !5
  %conv5.i78 = zext i8 %14 to i32
  %shl6.i79 = shl nuw nsw i32 %conv5.i78, 8
  %or7.i80 = or i32 %or.i76, %shl6.i79
  %arrayidx8.i81 = getelementptr inbounds i8, ptr %size_dt_struct, i64 3
  %15 = load i8, ptr %arrayidx8.i81, align 1, !tbaa !5
  %conv9.i82 = zext i8 %15 to i32
  %or10.i83 = or i32 %or7.i80, %conv9.i82
  %cmp23 = icmp ugt i32 %add18, %or10.i83
  br i1 %cmp23, label %cleanup, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false20, %if.end12
  %conv.i.i = zext i8 %0 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 24
  %conv2.i.i = zext i8 %1 to i64
  %shl3.i.i = shl nuw nsw i64 %conv2.i.i, 16
  %or.i.i = or i64 %shl3.i.i, %shl.i.i
  %conv5.i.i = zext i8 %2 to i64
  %shl6.i.i = shl nuw nsw i64 %conv5.i.i, 8
  %or7.i.i = or i64 %or.i.i, %shl6.i.i
  %conv9.i.i = zext i8 %3 to i64
  %or10.i.i = or i64 %or7.i.i, %conv9.i.i
  %add.ptr.i = getelementptr inbounds i8, ptr %fdt, i64 %or10.i.i
  %idx.ext1.i84 = zext i32 %offset to i64
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext1.i84
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %lor.lhs.false20, %if.then17, %lor.lhs.false6, %lor.lhs.false, %entry
  %retval.0 = phi ptr [ %add.ptr2.i, %if.end26 ], [ null, %entry ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false20 ], [ null, %if.then17 ]
  ret ptr %retval.0
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @fdt_next_tag(ptr noundef readonly %fdt, i32 noundef %startoffset, ptr nocapture noundef writeonly %nextoffset) local_unnamed_addr #3 {
entry:
  store i32 -8, ptr %nextoffset, align 4, !tbaa !8
  %call = tail call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %startoffset, i32 noundef 4)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %call, align 4, !tbaa !8
  %rev.i = tail call i32 @llvm.bswap.i32(i32 %0) #10
  %add = add i32 %startoffset, 4
  store i32 -11, ptr %nextoffset, align 4, !tbaa !8
  switch i32 %rev.i, label %cleanup [
    i32 1, label %do.body
    i32 3, label %sw.bb13
    i32 9, label %sw.epilog
    i32 2, label %sw.epilog
    i32 4, label %sw.epilog
  ]

do.body:                                          ; preds = %land.rhs, %if.end
  %offset.0 = phi i32 [ %inc, %land.rhs ], [ %add, %if.end ]
  %call4 = tail call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %offset.0, i32 noundef 1)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %inc = add nsw i32 %offset.0, 1
  %1 = load i8, ptr %call4, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %sw.epilog, label %do.body

sw.bb13:                                          ; preds = %if.end
  %call14 = tail call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %add, i32 noundef 4)
  %tobool17.not = icmp eq ptr %call14, null
  br i1 %tobool17.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %sw.bb13
  %2 = load i32, ptr %call14, align 4, !tbaa !8
  %rev.i81 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %add22 = add i32 %startoffset, 12
  %add24 = add i32 %add22, %rev.i81
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 5
  %3 = load i8, ptr %version, align 1, !tbaa !5
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %version, i64 1
  %4 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %4 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %version, i64 2
  %5 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %5 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %version, i64 3
  %6 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %6 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp29 = icmp ult i32 %or10.i, 16
  %cmp33 = icmp ugt i32 %rev.i81, 7
  %or.cond = select i1 %cmp29, i1 %cmp33, i1 false
  br i1 %or.cond, label %land.lhs.true35, label %sw.epilog

land.lhs.true35:                                  ; preds = %if.end19
  %rem = and i32 %add22, 7
  %cmp37.not = icmp eq i32 %rem, 0
  %add40 = add nsw i32 %add24, 4
  %spec.select = select i1 %cmp37.not, i32 %add24, i32 %add40
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true35, %if.end19, %land.rhs, %if.end, %if.end, %if.end
  %offset.1 = phi i32 [ %add, %if.end ], [ %add, %if.end ], [ %add, %if.end ], [ %add24, %if.end19 ], [ %spec.select, %land.lhs.true35 ], [ %inc, %land.rhs ]
  %sub43 = sub nsw i32 %offset.1, %startoffset
  %call44 = tail call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %startoffset, i32 noundef %sub43)
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %cleanup, label %if.end47

if.end47:                                         ; preds = %sw.epilog
  %sub50 = add i32 %offset.1, 3
  %and = and i32 %sub50, -4
  store i32 %and, ptr %nextoffset, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %sw.epilog, %sw.bb13, %do.body, %if.end, %entry
  %retval.0 = phi i32 [ %rev.i, %if.end47 ], [ 9, %entry ], [ 9, %sw.bb13 ], [ 9, %if.end ], [ 9, %sw.epilog ], [ 9, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @fdt_check_node_offset_(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #3 {
entry:
  %offset.addr = alloca i32, align 4
  store i32 %offset, ptr %offset.addr, align 4, !tbaa !8
  %0 = and i32 %offset, -2147483645
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset, ptr noundef nonnull %offset.addr)
  %cmp2.not = icmp eq i32 %call1, 1
  %2 = load i32, ptr %offset.addr, align 4
  %spec.select = select i1 %cmp2.not, i32 %2, i32 -4
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -4, %entry ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #3 {
entry:
  %offset.addr = alloca i32, align 4
  store i32 %offset, ptr %offset.addr, align 4, !tbaa !8
  %0 = and i32 %offset, -2147483645
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset, ptr noundef nonnull %offset.addr)
  %cmp2.not = icmp eq i32 %call1, 3
  %2 = load i32, ptr %offset.addr, align 4
  %spec.select = select i1 %cmp2.not, i32 %2, i32 -4
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -4, %entry ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset, ptr noundef %depth) local_unnamed_addr #3 {
entry:
  %offset.addr.i = alloca i32, align 4
  %nextoffset = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset) #10
  store i32 0, ptr %nextoffset, align 4, !tbaa !8
  %cmp = icmp sgt i32 %offset, -1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.addr.i)
  store i32 %offset, ptr %offset.addr.i, align 4, !tbaa !8
  %0 = and i32 %offset, -2147483645
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end.i, label %fdt_check_node_offset_.exit.thread

if.end.i:                                         ; preds = %if.then
  %call1.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset, ptr noundef nonnull %offset.addr.i) #10
  %cmp2.not.i = icmp eq i32 %call1.i, 1
  br i1 %cmp2.not.i, label %fdt_check_node_offset_.exit, label %fdt_check_node_offset_.exit.thread

fdt_check_node_offset_.exit.thread:               ; preds = %if.end.i, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i)
  br label %cleanup

fdt_check_node_offset_.exit:                      ; preds = %if.end.i
  %2 = load i32, ptr %offset.addr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i)
  store i32 %2, ptr %nextoffset, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %fdt_check_node_offset_.exit, %entry
  %3 = phi i32 [ %2, %fdt_check_node_offset_.exit ], [ 0, %entry ]
  %tobool9.not = icmp eq ptr %depth, null
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %if.end3
  %4 = phi i32 [ %.pre, %do.body.backedge ], [ %3, %if.end3 ]
  %call4 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %4, ptr noundef nonnull %nextoffset)
  switch i32 %call4, label %do.body.backedge [
    i32 9, label %sw.bb13
    i32 2, label %sw.bb8
    i32 1, label %sw.bb5
  ]

do.body.backedge:                                 ; preds = %land.lhs.true, %sw.bb8, %do.body
  %.pre = load i32, ptr %nextoffset, align 4, !tbaa !8
  br label %do.body

sw.bb5:                                           ; preds = %do.body
  br i1 %tobool9.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %sw.bb5
  %5 = load i32, ptr %depth, align 4, !tbaa !8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %depth, align 4, !tbaa !8
  br label %cleanup

sw.bb8:                                           ; preds = %do.body
  br i1 %tobool9.not, label %do.body.backedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb8
  %6 = load i32, ptr %depth, align 4, !tbaa !8
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %depth, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %6, 1
  br i1 %cmp10, label %if.then11, label %do.body.backedge

if.then11:                                        ; preds = %land.lhs.true
  %7 = load i32, ptr %nextoffset, align 4, !tbaa !8
  br label %cleanup

sw.bb13:                                          ; preds = %do.body
  %8 = load i32, ptr %nextoffset, align 4, !tbaa !8
  %cmp14 = icmp sgt i32 %8, -1
  br i1 %cmp14, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb13
  %cmp15 = icmp ne i32 %8, -8
  %tobool17 = icmp ne ptr %depth, null
  %or.cond = or i1 %tobool17, %cmp15
  %spec.select = select i1 %or.cond, i32 %8, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %sw.bb13, %if.then11, %if.then6, %sw.bb5, %fdt_check_node_offset_.exit, %fdt_check_node_offset_.exit.thread
  %retval.0 = phi i32 [ %7, %if.then11 ], [ %2, %fdt_check_node_offset_.exit ], [ -1, %sw.bb13 ], [ %spec.select, %lor.lhs.false ], [ -4, %fdt_check_node_offset_.exit.thread ], [ %4, %if.then6 ], [ %4, %sw.bb5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @fdt_first_subnode(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #3 {
entry:
  %offset.addr.i.i = alloca i32, align 4
  %nextoffset.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i) #10
  store i32 0, ptr %nextoffset.i, align 4, !tbaa !8
  %cmp.i = icmp sgt i32 %offset, -1
  br i1 %cmp.i, label %if.then.i, label %do.body.i.preheader

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.addr.i.i) #10
  store i32 %offset, ptr %offset.addr.i.i, align 4, !tbaa !8
  %0 = and i32 %offset, -2147483645
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end.i.i, label %fdt_check_node_offset_.exit.thread.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset, ptr noundef nonnull %offset.addr.i.i) #10
  %cmp2.not.i.i = icmp eq i32 %call1.i.i, 1
  br i1 %cmp2.not.i.i, label %fdt_check_node_offset_.exit.i, label %fdt_check_node_offset_.exit.thread.i

fdt_check_node_offset_.exit.thread.i:             ; preds = %if.end.i.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i.i) #10
  br label %fdt_next_node.exit

fdt_check_node_offset_.exit.i:                    ; preds = %if.end.i.i
  %2 = load i32, ptr %offset.addr.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i.i) #10
  store i32 %2, ptr %nextoffset.i, align 4, !tbaa !8
  %cmp1.i = icmp slt i32 %2, 0
  br i1 %cmp1.i, label %fdt_next_node.exit, label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %fdt_check_node_offset_.exit.i, %entry
  %.ph = phi i32 [ 0, %entry ], [ %2, %fdt_check_node_offset_.exit.i ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.backedge.i, %do.body.i.preheader
  %3 = phi i32 [ %.pre.i, %do.body.backedge.i ], [ %.ph, %do.body.i.preheader ]
  %call4.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %3, ptr noundef nonnull %nextoffset.i) #10
  switch i32 %call4.i, label %do.body.backedge.i [
    i32 9, label %sw.bb13.i
    i32 2, label %if.then11.i
    i32 1, label %fdt_next_node.exit
  ]

do.body.backedge.i:                               ; preds = %do.body.i
  %.pre.i = load i32, ptr %nextoffset.i, align 4, !tbaa !8
  br label %do.body.i

if.then11.i:                                      ; preds = %do.body.i
  %4 = load i32, ptr %nextoffset.i, align 4, !tbaa !8
  br label %fdt_next_node.exit

sw.bb13.i:                                        ; preds = %do.body.i
  %5 = load i32, ptr %nextoffset.i, align 4, !tbaa !8
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 -1)
  br label %fdt_next_node.exit

fdt_next_node.exit:                               ; preds = %sw.bb13.i, %if.then11.i, %do.body.i, %fdt_check_node_offset_.exit.i, %fdt_check_node_offset_.exit.thread.i
  %cmp1 = phi i1 [ true, %sw.bb13.i ], [ true, %fdt_check_node_offset_.exit.thread.i ], [ true, %fdt_check_node_offset_.exit.i ], [ true, %if.then11.i ], [ false, %do.body.i ]
  %retval.0.i = phi i32 [ %6, %sw.bb13.i ], [ -4, %fdt_check_node_offset_.exit.thread.i ], [ %2, %fdt_check_node_offset_.exit.i ], [ %4, %if.then11.i ], [ %3, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #10
  %cmp = icmp slt i32 %retval.0.i, 0
  %or.cond = or i1 %cmp, %cmp1
  %.call = select i1 %or.cond, i32 -1, i32 %retval.0.i
  ret i32 %.call
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @fdt_next_subnode(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #3 {
entry:
  %offset.addr.i.i = alloca i32, align 4
  %nextoffset.i = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %depth.0 = phi i32 [ 1, %entry ], [ %inc.i, %do.cond ]
  %offset.addr.0 = phi i32 [ %offset, %entry ], [ %3, %do.cond ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i) #10
  store i32 0, ptr %nextoffset.i, align 4, !tbaa !8
  %cmp.i = icmp sgt i32 %offset.addr.0, -1
  br i1 %cmp.i, label %if.then.i, label %do.body.i.preheader

if.then.i:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.addr.i.i) #10
  store i32 %offset.addr.0, ptr %offset.addr.i.i, align 4, !tbaa !8
  %0 = and i32 %offset.addr.0, -2147483645
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end.i.i, label %fdt_check_node_offset_.exit.thread.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0, ptr noundef nonnull %offset.addr.i.i) #10
  %cmp2.not.i.i = icmp eq i32 %call1.i.i, 1
  br i1 %cmp2.not.i.i, label %fdt_check_node_offset_.exit.i, label %fdt_check_node_offset_.exit.thread.i

fdt_check_node_offset_.exit.thread.i:             ; preds = %if.end.i.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i.i) #10
  br label %fdt_next_node.exit.thread

fdt_check_node_offset_.exit.i:                    ; preds = %if.end.i.i
  %2 = load i32, ptr %offset.addr.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i.i) #10
  store i32 %2, ptr %nextoffset.i, align 4, !tbaa !8
  %cmp1.i = icmp slt i32 %2, 0
  br i1 %cmp1.i, label %fdt_next_node.exit.thread, label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %fdt_check_node_offset_.exit.i, %do.body
  %.ph = phi i32 [ 0, %do.body ], [ %2, %fdt_check_node_offset_.exit.i ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.backedge.i, %do.body.i.preheader
  %depth.1 = phi i32 [ %depth.2, %do.body.backedge.i ], [ %depth.0, %do.body.i.preheader ]
  %3 = phi i32 [ %.pre.i, %do.body.backedge.i ], [ %.ph, %do.body.i.preheader ]
  %call4.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %3, ptr noundef nonnull %nextoffset.i) #10
  switch i32 %call4.i, label %do.body.backedge.i [
    i32 9, label %fdt_next_node.exit.thread
    i32 2, label %sw.bb8.i
    i32 1, label %fdt_next_node.exit
  ]

do.body.backedge.i:                               ; preds = %sw.bb8.i, %do.body.i
  %depth.2 = phi i32 [ %depth.1, %do.body.i ], [ %dec.i, %sw.bb8.i ]
  %.pre.i = load i32, ptr %nextoffset.i, align 4, !tbaa !8
  br label %do.body.i

sw.bb8.i:                                         ; preds = %do.body.i
  %dec.i = add nsw i32 %depth.1, -1
  %cmp10.i = icmp slt i32 %depth.1, 1
  br i1 %cmp10.i, label %fdt_next_node.exit.thread, label %do.body.backedge.i

fdt_next_node.exit.thread:                        ; preds = %sw.bb8.i, %do.body.i, %fdt_check_node_offset_.exit.i, %fdt_check_node_offset_.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #10
  br label %cleanup

fdt_next_node.exit:                               ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #10
  %cmp = icmp slt i32 %3, 0
  %cmp1 = icmp slt i32 %depth.1, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %cleanup, label %do.cond

do.cond:                                          ; preds = %fdt_next_node.exit
  %inc.i = add nuw nsw i32 %depth.1, 1
  %cmp2.not = icmp eq i32 %depth.1, 0
  br i1 %cmp2.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %do.cond, %fdt_next_node.exit, %fdt_next_node.exit.thread
  %retval.0 = phi i32 [ -1, %fdt_next_node.exit.thread ], [ %3, %do.cond ], [ -1, %fdt_next_node.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local ptr @fdt_find_string_(ptr noundef readonly %strtab, i32 noundef %tabsize, ptr nocapture noundef readonly %s) local_unnamed_addr #4 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #11
  %idx.ext = sext i32 %tabsize to i64
  %add.ptr = getelementptr inbounds i8, ptr %strtab, i64 %idx.ext
  %conv = shl i64 %call, 32
  %sext = add i64 %conv, 4294967296
  %idx.ext1 = ashr exact i64 %sext, 32
  %idx.neg = sub nsw i64 0, %idx.ext1
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %cmp.not16 = icmp ult ptr %add.ptr2, %strtab
  br i1 %cmp.not16, label %cleanup, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %p.017 = phi ptr [ %incdec.ptr, %for.inc ], [ %strtab, %entry ]
  %bcmp = tail call i32 @bcmp(ptr %p.017, ptr %s, i64 %idx.ext1)
  %cmp6 = icmp eq i32 %bcmp, 0
  br i1 %cmp6, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds i8, ptr %p.017, i64 1
  %cmp.not = icmp ugt ptr %incdec.ptr, %add.ptr2
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %for.body, %entry
  %retval.0 = phi ptr [ null, %entry ], [ null, %for.inc ], [ %p.017, %for.body ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i32 @fdt_move(ptr noundef readonly %fdt, ptr nocapture noundef writeonly %buf, i32 noundef %bufsize) local_unnamed_addr #6 {
entry:
  %cmp = icmp slt i32 %bufsize, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fdt_ro_probe_(ptr noundef %fdt)
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %cleanup.cont, label %return

cleanup.cont:                                     ; preds = %if.end
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i64 0, i32 1
  %0 = load i8, ptr %totalsize, align 1, !tbaa !5
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr inbounds i8, ptr %totalsize, i64 1
  %1 = load i8, ptr %arrayidx1.i, align 1, !tbaa !5
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr inbounds i8, ptr %totalsize, i64 2
  %2 = load i8, ptr %arrayidx4.i, align 1, !tbaa !5
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr inbounds i8, ptr %totalsize, i64 3
  %3 = load i8, ptr %arrayidx8.i, align 1, !tbaa !5
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp6 = icmp ugt i32 %or10.i, %bufsize
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %cleanup.cont
  %conv = zext i32 %or10.i to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %buf, ptr nonnull align 1 %fdt, i64 %conv, i1 false)
  br label %return

return:                                           ; preds = %if.end8, %cleanup.cont, %if.end, %entry
  %retval.1 = phi i32 [ %call1, %if.end ], [ 0, %if.end8 ], [ -3, %entry ], [ -3, %cleanup.cont ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }

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
