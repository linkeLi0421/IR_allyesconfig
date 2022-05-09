; ModuleID = '/llk/IR_all_yes/arch/arm/boot/compressed/fdt.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/fdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync)
define i32 @fdt_ro_probe_(ptr noundef %fdt) local_unnamed_addr #0 align 64 {
entry:
  %totalsize1 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %0 = load i8, ptr %totalsize1, align 1
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %totalsize1, i32 1
  %1 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %totalsize1, i32 2
  %2 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %totalsize1, i32 3
  %3 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %4 = ptrtoint ptr %fdt to i32
  %and = and i32 %4, 7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %entry
  %5 = load i8, ptr %fdt, align 1
  %conv.i41 = zext i8 %5 to i32
  %shl.i42 = shl nuw i32 %conv.i41, 24
  %arrayidx1.i43 = getelementptr i8, ptr %fdt, i32 1
  %6 = load i8, ptr %arrayidx1.i43, align 1
  %conv2.i44 = zext i8 %6 to i32
  %shl3.i45 = shl nuw nsw i32 %conv2.i44, 16
  %or.i46 = or i32 %shl3.i45, %shl.i42
  %arrayidx4.i47 = getelementptr i8, ptr %fdt, i32 2
  %7 = load i8, ptr %arrayidx4.i47, align 1
  %conv5.i48 = zext i8 %7 to i32
  %shl6.i49 = shl nuw nsw i32 %conv5.i48, 8
  %or7.i50 = or i32 %or.i46, %shl6.i49
  %arrayidx8.i51 = getelementptr i8, ptr %fdt, i32 3
  %8 = load i8, ptr %arrayidx8.i51, align 1
  %conv9.i52 = zext i8 %8 to i32
  %or10.i53 = or i32 %or7.i50, %conv9.i52
  switch i32 %or10.i53, label %cleanup [
    i32 -804389139, label %if.then6
    i32 804389138, label %if.then21
  ]

if.then6:                                         ; preds = %if.end4
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %9 = load i8, ptr %version, align 1
  %conv.i54 = zext i8 %9 to i32
  %shl.i55 = shl nuw i32 %conv.i54, 24
  %arrayidx1.i56 = getelementptr i8, ptr %version, i32 1
  %10 = load i8, ptr %arrayidx1.i56, align 1
  %conv2.i57 = zext i8 %10 to i32
  %shl3.i58 = shl nuw nsw i32 %conv2.i57, 16
  %or.i59 = or i32 %shl3.i58, %shl.i55
  %arrayidx4.i60 = getelementptr i8, ptr %version, i32 2
  %11 = load i8, ptr %arrayidx4.i60, align 1
  %conv5.i61 = zext i8 %11 to i32
  %shl6.i62 = shl nuw nsw i32 %conv5.i61, 8
  %or7.i63 = or i32 %or.i59, %shl6.i62
  %arrayidx8.i64 = getelementptr i8, ptr %version, i32 3
  %12 = load i8, ptr %arrayidx8.i64, align 1
  %conv9.i65 = zext i8 %12 to i32
  %or10.i66 = or i32 %or7.i63, %conv9.i65
  %cmp10 = icmp ult i32 %or10.i66, 2
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.then6
  %last_comp_version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 6
  %13 = load i8, ptr %last_comp_version, align 1
  %conv.i67 = zext i8 %13 to i32
  %shl.i68 = shl nuw i32 %conv.i67, 24
  %arrayidx1.i69 = getelementptr i8, ptr %last_comp_version, i32 1
  %14 = load i8, ptr %arrayidx1.i69, align 1
  %conv2.i70 = zext i8 %14 to i32
  %shl3.i71 = shl nuw nsw i32 %conv2.i70, 16
  %or.i72 = or i32 %shl3.i71, %shl.i68
  %arrayidx4.i73 = getelementptr i8, ptr %last_comp_version, i32 2
  %15 = load i8, ptr %arrayidx4.i73, align 1
  %conv5.i74 = zext i8 %15 to i32
  %shl6.i75 = shl nuw nsw i32 %conv5.i74, 8
  %or7.i76 = or i32 %or.i72, %shl6.i75
  %arrayidx8.i77 = getelementptr i8, ptr %last_comp_version, i32 3
  %16 = load i8, ptr %arrayidx8.i77, align 1
  %conv9.i78 = zext i8 %16 to i32
  %or10.i79 = or i32 %or7.i76, %conv9.i78
  %cmp14 = icmp ugt i32 %or10.i79, 17
  br i1 %cmp14, label %cleanup, label %if.end29

if.then21:                                        ; preds = %if.end4
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %17 = load i8, ptr %size_dt_struct, align 1
  %conv.i93 = zext i8 %17 to i32
  %shl.i94 = shl nuw i32 %conv.i93, 24
  %arrayidx1.i95 = getelementptr i8, ptr %size_dt_struct, i32 1
  %18 = load i8, ptr %arrayidx1.i95, align 1
  %conv2.i96 = zext i8 %18 to i32
  %shl3.i97 = shl nuw nsw i32 %conv2.i96, 16
  %or.i98 = or i32 %shl3.i97, %shl.i94
  %arrayidx4.i99 = getelementptr i8, ptr %size_dt_struct, i32 2
  %19 = load i8, ptr %arrayidx4.i99, align 1
  %conv5.i100 = zext i8 %19 to i32
  %shl6.i101 = shl nuw nsw i32 %conv5.i100, 8
  %or7.i102 = or i32 %or.i98, %shl6.i101
  %arrayidx8.i103 = getelementptr i8, ptr %size_dt_struct, i32 3
  %20 = load i8, ptr %arrayidx8.i103, align 1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync)
define i32 @fdt_header_size_(i32 noundef %version) local_unnamed_addr #2 align 64 {
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
  %. = select i1 %cmp7, i32 36, i32 40
  br label %return

return:                                           ; preds = %if.else6, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 28, %entry ], [ 32, %if.else ], [ 36, %if.else3 ], [ %., %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync)
define i32 @fdt_header_size(ptr nocapture noundef readonly %fdt) local_unnamed_addr #0 align 64 {
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
  %..i = select i1 %cmp7.i, i32 36, i32 40
  br label %fdt_header_size_.exit

fdt_header_size_.exit:                            ; preds = %if.else6.i, %if.else3.i, %if.else.i, %entry
  %retval.0.i = phi i32 [ 28, %entry ], [ 32, %if.else.i ], [ 36, %if.else3.i ], [ %..i, %if.else6.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync)
define i32 @fdt_check_header(ptr noundef %fdt) local_unnamed_addr #0 align 64 {
entry:
  %0 = ptrtoint ptr %fdt to i32
  %and = and i32 %0, 7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %fdt, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %fdt, i32 1
  %2 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %2 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %fdt, i32 2
  %3 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %3 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %fdt, i32 3
  %4 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %4 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp.not = icmp eq i32 %or10.i, -804389139
  br i1 %cmp.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %5 = load i8, ptr %version, align 1
  %conv.i94 = zext i8 %5 to i32
  %shl.i95 = shl nuw i32 %conv.i94, 24
  %arrayidx1.i96 = getelementptr i8, ptr %version, i32 1
  %6 = load i8, ptr %arrayidx1.i96, align 1
  %conv2.i97 = zext i8 %6 to i32
  %shl3.i98 = shl nuw nsw i32 %conv2.i97, 16
  %or.i99 = or i32 %shl3.i98, %shl.i95
  %arrayidx4.i100 = getelementptr i8, ptr %version, i32 2
  %7 = load i8, ptr %arrayidx4.i100, align 1
  %conv5.i101 = zext i8 %7 to i32
  %shl6.i102 = shl nuw nsw i32 %conv5.i101, 8
  %or7.i103 = or i32 %or.i99, %shl6.i102
  %arrayidx8.i104 = getelementptr i8, ptr %version, i32 3
  %8 = load i8, ptr %arrayidx8.i104, align 1
  %conv9.i105 = zext i8 %8 to i32
  %or10.i106 = or i32 %or7.i103, %conv9.i105
  %cmp6 = icmp ult i32 %or10.i106, 2
  br i1 %cmp6, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %last_comp_version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 6
  %9 = load i8, ptr %last_comp_version, align 1
  %conv.i107 = zext i8 %9 to i32
  %shl.i108 = shl nuw i32 %conv.i107, 24
  %arrayidx1.i109 = getelementptr i8, ptr %last_comp_version, i32 1
  %10 = load i8, ptr %arrayidx1.i109, align 1
  %conv2.i110 = zext i8 %10 to i32
  %shl3.i111 = shl nuw nsw i32 %conv2.i110, 16
  %or.i112 = or i32 %shl3.i111, %shl.i108
  %arrayidx4.i113 = getelementptr i8, ptr %last_comp_version, i32 2
  %11 = load i8, ptr %arrayidx4.i113, align 1
  %conv5.i114 = zext i8 %11 to i32
  %shl6.i115 = shl nuw nsw i32 %conv5.i114, 8
  %or7.i116 = or i32 %or.i112, %shl6.i115
  %arrayidx8.i117 = getelementptr i8, ptr %last_comp_version, i32 3
  %12 = load i8, ptr %arrayidx8.i117, align 1
  %conv9.i118 = zext i8 %12 to i32
  %or10.i119 = or i32 %or7.i116, %conv9.i118
  %cmp8 = icmp ugt i32 %or10.i119, 17
  %cmp15 = icmp ult i32 %or10.i106, %or10.i119
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp15
  br i1 %or.cond, label %cleanup, label %if.else.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false
  %cmp1.i.i = icmp eq i32 %or10.i106, 2
  br i1 %cmp1.i.i, label %fdt_header_size.exit, label %if.else3.i.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  %cmp4.i.i = icmp ult i32 %or10.i106, 4
  br i1 %cmp4.i.i, label %fdt_header_size.exit, label %if.else6.i.i

if.else6.i.i:                                     ; preds = %if.else3.i.i
  %cmp7.i.i = icmp ult i32 %or10.i106, 17
  %..i.i = select i1 %cmp7.i.i, i32 36, i32 40
  br label %fdt_header_size.exit

fdt_header_size.exit:                             ; preds = %if.else6.i.i, %if.else3.i.i, %if.else.i.i
  %retval.0.i.i = phi i32 [ 32, %if.else.i.i ], [ 36, %if.else3.i.i ], [ %..i.i, %if.else6.i.i ]
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %13 = load i8, ptr %totalsize, align 1
  %conv.i146 = zext i8 %13 to i32
  %shl.i147 = shl nuw i32 %conv.i146, 24
  %arrayidx1.i148 = getelementptr i8, ptr %totalsize, i32 1
  %14 = load i8, ptr %arrayidx1.i148, align 1
  %conv2.i149 = zext i8 %14 to i32
  %shl3.i150 = shl nuw nsw i32 %conv2.i149, 16
  %or.i151 = or i32 %shl3.i150, %shl.i147
  %arrayidx4.i152 = getelementptr i8, ptr %totalsize, i32 2
  %15 = load i8, ptr %arrayidx4.i152, align 1
  %conv5.i153 = zext i8 %15 to i32
  %shl6.i154 = shl nuw nsw i32 %conv5.i153, 8
  %or7.i155 = or i32 %or.i151, %shl6.i154
  %arrayidx8.i156 = getelementptr i8, ptr %totalsize, i32 3
  %16 = load i8, ptr %arrayidx8.i156, align 1
  %conv9.i157 = zext i8 %16 to i32
  %or10.i158 = or i32 %or7.i155, %conv9.i157
  %cmp23 = icmp ult i32 %or10.i158, %retval.0.i.i
  %cmp27 = icmp slt i32 %or10.i158, 0
  %or.cond338 = or i1 %cmp23, %cmp27
  br i1 %or.cond338, label %cleanup, label %if.end29

if.end29:                                         ; preds = %fdt_header_size.exit
  %off_mem_rsvmap = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %17 = load i8, ptr %off_mem_rsvmap, align 1
  %conv.i185 = zext i8 %17 to i32
  %shl.i186 = shl nuw i32 %conv.i185, 24
  %arrayidx1.i187 = getelementptr i8, ptr %off_mem_rsvmap, i32 1
  %18 = load i8, ptr %arrayidx1.i187, align 1
  %conv2.i188 = zext i8 %18 to i32
  %shl3.i189 = shl nuw nsw i32 %conv2.i188, 16
  %or.i190 = or i32 %shl3.i189, %shl.i186
  %arrayidx4.i191 = getelementptr i8, ptr %off_mem_rsvmap, i32 2
  %19 = load i8, ptr %arrayidx4.i191, align 1
  %conv5.i192 = zext i8 %19 to i32
  %shl6.i193 = shl nuw nsw i32 %conv5.i192, 8
  %or7.i194 = or i32 %or.i190, %shl6.i193
  %arrayidx8.i195 = getelementptr i8, ptr %off_mem_rsvmap, i32 3
  %20 = load i8, ptr %arrayidx8.i195, align 1
  %conv9.i196 = zext i8 %20 to i32
  %or10.i197 = or i32 %or7.i194, %conv9.i196
  %cmp.i = icmp ult i32 %or10.i197, %retval.0.i.i
  %cmp1.i = icmp ugt i32 %or10.i197, %or10.i158
  %tobool34.not = or i1 %cmp.i, %cmp1.i
  br i1 %tobool34.not, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.end29
  %cmp43 = icmp ult i32 %or10.i106, 17
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %21 = load i8, ptr %off_dt_struct, align 1
  %conv.i224 = zext i8 %21 to i32
  %shl.i225 = shl nuw i32 %conv.i224, 24
  %arrayidx1.i226 = getelementptr i8, ptr %off_dt_struct, i32 1
  %22 = load i8, ptr %arrayidx1.i226, align 1
  %conv2.i227 = zext i8 %22 to i32
  %shl3.i228 = shl nuw nsw i32 %conv2.i227, 16
  %or.i229 = or i32 %shl3.i228, %shl.i225
  %arrayidx4.i230 = getelementptr i8, ptr %off_dt_struct, i32 2
  %23 = load i8, ptr %arrayidx4.i230, align 1
  %conv5.i231 = zext i8 %23 to i32
  %shl6.i232 = shl nuw nsw i32 %conv5.i231, 8
  %or7.i233 = or i32 %or.i229, %shl6.i232
  %arrayidx8.i234 = getelementptr i8, ptr %off_dt_struct, i32 3
  %24 = load i8, ptr %arrayidx8.i234, align 1
  %conv9.i235 = zext i8 %24 to i32
  %or10.i236 = or i32 %or7.i233, %conv9.i235
  %cmp.i237 = icmp ult i32 %or10.i236, %retval.0.i.i
  %cmp1.i238 = icmp ugt i32 %or10.i236, %or10.i158
  %tobool49.not = or i1 %cmp.i237, %cmp1.i238
  br i1 %cmp43, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end37
  br i1 %tobool49.not, label %cleanup, label %if.end61

if.else:                                          ; preds = %if.end37
  br i1 %tobool49.not, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %if.else
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %arrayidx1.i268 = getelementptr i8, ptr %size_dt_struct, i32 1
  %25 = load i8, ptr %arrayidx1.i268, align 1
  %conv2.i269 = zext i8 %25 to i32
  %shl3.i270 = shl nuw nsw i32 %conv2.i269, 16
  %26 = load i8, ptr %size_dt_struct, align 1
  %conv.i266 = zext i8 %26 to i32
  %shl.i267 = shl nuw i32 %conv.i266, 24
  %or.i271 = or i32 %shl.i267, %shl3.i270
  %arrayidx4.i272 = getelementptr i8, ptr %size_dt_struct, i32 2
  %27 = load i8, ptr %arrayidx4.i272, align 1
  %conv5.i273 = zext i8 %27 to i32
  %shl6.i274 = shl nuw nsw i32 %conv5.i273, 8
  %or7.i275 = or i32 %or.i271, %shl6.i274
  %arrayidx8.i276 = getelementptr i8, ptr %size_dt_struct, i32 3
  %28 = load i8, ptr %arrayidx8.i276, align 1
  %conv9.i277 = zext i8 %28 to i32
  %or10.i278 = or i32 %or7.i275, %conv9.i277
  %add.i = add i32 %or10.i278, %or10.i236
  %cmp.i281 = icmp ult i32 %add.i, %or10.i236
  br i1 %cmp.i281, label %cleanup, label %check_block_.exit

check_block_.exit:                                ; preds = %if.end.i
  %cmp.i14.i = icmp ult i32 %add.i, %retval.0.i.i
  %cmp1.i15.i = icmp ugt i32 %add.i, %or10.i158
  %tobool58.not = or i1 %cmp.i14.i, %cmp1.i15.i
  br i1 %tobool58.not, label %cleanup, label %if.end61

if.end61:                                         ; preds = %check_block_.exit, %if.then44
  %off_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %29 = load i8, ptr %off_dt_strings, align 1
  %conv.i295 = zext i8 %29 to i32
  %shl.i296 = shl nuw i32 %conv.i295, 24
  %arrayidx1.i297 = getelementptr i8, ptr %off_dt_strings, i32 1
  %30 = load i8, ptr %arrayidx1.i297, align 1
  %conv2.i298 = zext i8 %30 to i32
  %shl3.i299 = shl nuw nsw i32 %conv2.i298, 16
  %or.i300 = or i32 %shl3.i299, %shl.i296
  %arrayidx4.i301 = getelementptr i8, ptr %off_dt_strings, i32 2
  %31 = load i8, ptr %arrayidx4.i301, align 1
  %conv5.i302 = zext i8 %31 to i32
  %shl6.i303 = shl nuw nsw i32 %conv5.i302, 8
  %or7.i304 = or i32 %or.i300, %shl6.i303
  %arrayidx8.i305 = getelementptr i8, ptr %off_dt_strings, i32 3
  %32 = load i8, ptr %arrayidx8.i305, align 1
  %conv9.i306 = zext i8 %32 to i32
  %or10.i307 = or i32 %or7.i304, %conv9.i306
  %cmp.i.i321 = icmp ult i32 %or10.i307, %retval.0.i.i
  %cmp1.i.i322 = icmp ugt i32 %or10.i307, %or10.i158
  %tobool.not.i323 = or i1 %cmp.i.i321, %cmp1.i.i322
  br i1 %tobool.not.i323, label %check_block_.exit333.thread, label %if.end.i326

if.end.i326:                                      ; preds = %if.end61
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %arrayidx1.i310 = getelementptr i8, ptr %size_dt_strings, i32 1
  %33 = load i8, ptr %arrayidx1.i310, align 1
  %conv2.i311 = zext i8 %33 to i32
  %shl3.i312 = shl nuw nsw i32 %conv2.i311, 16
  %34 = load i8, ptr %size_dt_strings, align 1
  %conv.i308 = zext i8 %34 to i32
  %shl.i309 = shl nuw i32 %conv.i308, 24
  %or.i313 = or i32 %shl.i309, %shl3.i312
  %arrayidx4.i314 = getelementptr i8, ptr %size_dt_strings, i32 2
  %35 = load i8, ptr %arrayidx4.i314, align 1
  %conv5.i315 = zext i8 %35 to i32
  %shl6.i316 = shl nuw nsw i32 %conv5.i315, 8
  %or7.i317 = or i32 %or.i313, %shl6.i316
  %arrayidx8.i318 = getelementptr i8, ptr %size_dt_strings, i32 3
  %36 = load i8, ptr %arrayidx8.i318, align 1
  %conv9.i319 = zext i8 %36 to i32
  %or10.i320 = or i32 %or7.i317, %conv9.i319
  %add.i324 = add i32 %or10.i320, %or10.i307
  %cmp.i325 = icmp ult i32 %add.i324, %or10.i307
  br i1 %cmp.i325, label %check_block_.exit333.thread, label %check_block_.exit333

check_block_.exit333:                             ; preds = %if.end.i326
  %cmp.i14.i327 = icmp ult i32 %add.i324, %retval.0.i.i
  %cmp1.i15.i328 = icmp ugt i32 %add.i324, %or10.i158
  %tobool67.not = or i1 %cmp.i14.i327, %cmp1.i15.i328
  br i1 %tobool67.not, label %check_block_.exit333.thread, label %cleanup

check_block_.exit333.thread:                      ; preds = %check_block_.exit333, %if.end.i326, %if.end61
  br label %cleanup

cleanup:                                          ; preds = %check_block_.exit333.thread, %check_block_.exit333, %check_block_.exit, %if.end.i, %if.else, %if.then44, %if.end29, %fdt_header_size.exit, %lor.lhs.false, %if.end2, %if.end, %entry
  %retval.0 = phi i32 [ -19, %entry ], [ -9, %if.end ], [ -10, %lor.lhs.false ], [ -10, %if.end2 ], [ -8, %fdt_header_size.exit ], [ -8, %if.end29 ], [ -8, %if.then44 ], [ -8, %check_block_.exit ], [ -8, %check_block_.exit333.thread ], [ 0, %check_block_.exit333 ], [ -8, %if.else ], [ -8, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync)
define ptr @fdt_offset_ptr(ptr noundef readonly %fdt, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %0 = load i8, ptr %off_dt_struct, align 1
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %off_dt_struct, i32 1
  %1 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %off_dt_struct, i32 2
  %2 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %off_dt_struct, i32 3
  %3 = load i8, ptr %arrayidx8.i, align 1
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
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %4 = load i8, ptr %totalsize, align 1
  %conv.i45 = zext i8 %4 to i32
  %shl.i46 = shl nuw i32 %conv.i45, 24
  %arrayidx1.i47 = getelementptr i8, ptr %totalsize, i32 1
  %5 = load i8, ptr %arrayidx1.i47, align 1
  %conv2.i48 = zext i8 %5 to i32
  %shl3.i49 = shl nuw nsw i32 %conv2.i48, 16
  %or.i50 = or i32 %shl3.i49, %shl.i46
  %arrayidx4.i51 = getelementptr i8, ptr %totalsize, i32 2
  %6 = load i8, ptr %arrayidx4.i51, align 1
  %conv5.i52 = zext i8 %6 to i32
  %shl6.i53 = shl nuw nsw i32 %conv5.i52, 8
  %or7.i54 = or i32 %or.i50, %shl6.i53
  %arrayidx8.i55 = getelementptr i8, ptr %totalsize, i32 3
  %7 = load i8, ptr %arrayidx8.i55, align 1
  %conv9.i56 = zext i8 %7 to i32
  %or10.i57 = or i32 %or7.i54, %conv9.i56
  %cmp9 = icmp ugt i32 %add4, %or10.i57
  br i1 %cmp9, label %cleanup, label %if.end12

if.end12:                                         ; preds = %lor.lhs.false6
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %8 = load i8, ptr %version, align 1
  %conv.i58 = zext i8 %8 to i32
  %shl.i59 = shl nuw i32 %conv.i58, 24
  %arrayidx1.i60 = getelementptr i8, ptr %version, i32 1
  %9 = load i8, ptr %arrayidx1.i60, align 1
  %conv2.i61 = zext i8 %9 to i32
  %shl3.i62 = shl nuw nsw i32 %conv2.i61, 16
  %or.i63 = or i32 %shl3.i62, %shl.i59
  %arrayidx4.i64 = getelementptr i8, ptr %version, i32 2
  %10 = load i8, ptr %arrayidx4.i64, align 1
  %conv5.i65 = zext i8 %10 to i32
  %shl6.i66 = shl nuw nsw i32 %conv5.i65, 8
  %or7.i67 = or i32 %or.i63, %shl6.i66
  %arrayidx8.i68 = getelementptr i8, ptr %version, i32 3
  %11 = load i8, ptr %arrayidx8.i68, align 1
  %conv9.i69 = zext i8 %11 to i32
  %or10.i70 = or i32 %or7.i67, %conv9.i69
  %cmp16 = icmp ugt i32 %or10.i70, 16
  br i1 %cmp16, label %if.then17, label %if.end26

if.then17:                                        ; preds = %if.end12
  %add18 = add i32 %len, %offset
  %cmp19 = icmp ult i32 %add18, %offset
  br i1 %cmp19, label %cleanup, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.then17
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %12 = load i8, ptr %size_dt_struct, align 1
  %conv.i71 = zext i8 %12 to i32
  %shl.i72 = shl nuw i32 %conv.i71, 24
  %arrayidx1.i73 = getelementptr i8, ptr %size_dt_struct, i32 1
  %13 = load i8, ptr %arrayidx1.i73, align 1
  %conv2.i74 = zext i8 %13 to i32
  %shl3.i75 = shl nuw nsw i32 %conv2.i74, 16
  %or.i76 = or i32 %shl3.i75, %shl.i72
  %arrayidx4.i77 = getelementptr i8, ptr %size_dt_struct, i32 2
  %14 = load i8, ptr %arrayidx4.i77, align 1
  %conv5.i78 = zext i8 %14 to i32
  %shl6.i79 = shl nuw nsw i32 %conv5.i78, 8
  %or7.i80 = or i32 %or.i76, %shl6.i79
  %arrayidx8.i81 = getelementptr i8, ptr %size_dt_struct, i32 3
  %15 = load i8, ptr %arrayidx8.i81, align 1
  %conv9.i82 = zext i8 %15 to i32
  %or10.i83 = or i32 %or7.i80, %conv9.i82
  %cmp23 = icmp ugt i32 %add18, %or10.i83
  br i1 %cmp23, label %cleanup, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false20, %if.end12
  %add.ptr.i = getelementptr i8, ptr %fdt, i32 %or10.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %offset
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %lor.lhs.false20, %if.then17, %lor.lhs.false6, %lor.lhs.false, %entry
  %retval.0 = phi ptr [ %add.ptr1.i, %if.end26 ], [ null, %entry ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false20 ], [ null, %if.then17 ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_next_tag(ptr noundef readonly %fdt, i32 noundef %startoffset, ptr nocapture noundef writeonly %nextoffset) local_unnamed_addr #3 align 64 {
entry:
  store i32 -8, ptr %nextoffset, align 4
  %call = tail call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %startoffset, i32 noundef 4) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %call, align 4
  %add = add i32 %startoffset, 4
  store i32 -11, ptr %nextoffset, align 4
  switch i32 %0, label %cleanup [
    i32 1, label %do.body
    i32 3, label %sw.bb10
    i32 9, label %sw.epilog
    i32 2, label %sw.epilog
    i32 4, label %sw.epilog
  ]

do.body:                                          ; preds = %land.rhs, %if.end
  %offset.0 = phi i32 [ %inc, %land.rhs ], [ %add, %if.end ]
  %call2 = tail call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %offset.0, i32 noundef 1) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %inc = add i32 %offset.0, 1
  %1 = load i8, ptr %call2, align 1
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %sw.epilog, label %do.body

sw.bb10:                                          ; preds = %if.end
  %call11 = tail call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %add, i32 noundef 4) #8
  %tobool14.not = icmp eq ptr %call11, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %sw.bb10
  %2 = load i32, ptr %call11, align 4
  %add17 = add i32 %startoffset, 12
  %add18 = add i32 %add17, %2
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %3 = load i8, ptr %version, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %version, i32 1
  %4 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %4 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %version, i32 2
  %5 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %5 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %version, i32 3
  %6 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %6 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp22 = icmp ult i32 %or10.i, 16
  %cmp25 = icmp ugt i32 %2, 7
  %or.cond = select i1 %cmp22, i1 %cmp25, i1 false
  br i1 %or.cond, label %land.lhs.true27, label %sw.epilog

land.lhs.true27:                                  ; preds = %if.end16
  %rem = and i32 %add17, 7
  %cmp28.not = icmp eq i32 %rem, 0
  %add31 = add i32 %add18, 4
  %spec.select = select i1 %cmp28.not, i32 %add18, i32 %add31
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true27, %if.end16, %land.rhs, %if.end, %if.end, %if.end
  %offset.1 = phi i32 [ %add, %if.end ], [ %add, %if.end ], [ %add, %if.end ], [ %add18, %if.end16 ], [ %spec.select, %land.lhs.true27 ], [ %inc, %land.rhs ]
  %sub34 = sub i32 %offset.1, %startoffset
  %call35 = tail call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %startoffset, i32 noundef %sub34) #8
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %cleanup, label %if.end38

if.end38:                                         ; preds = %sw.epilog
  %sub40 = add i32 %offset.1, 3
  %and = and i32 %sub40, -4
  store i32 %and, ptr %nextoffset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %sw.epilog, %sw.bb10, %do.body, %if.end, %entry
  %retval.0 = phi i32 [ %0, %if.end38 ], [ 9, %entry ], [ 9, %sw.bb10 ], [ 9, %if.end ], [ 9, %sw.epilog ], [ 9, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_check_node_offset_(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #3 align 64 {
entry:
  %offset.addr = alloca i32, align 4
  store i32 %offset, ptr %offset.addr, align 4
  %0 = and i32 %offset, -2147483645
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset, ptr noundef nonnull %offset.addr) #8
  %cmp2.not = icmp eq i32 %call1, 1
  %2 = load i32, ptr %offset.addr, align 4
  %spec.select = select i1 %cmp2.not, i32 %2, i32 -4
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -4, %entry ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #3 align 64 {
entry:
  %offset.addr = alloca i32, align 4
  store i32 %offset, ptr %offset.addr, align 4
  %0 = and i32 %offset, -2147483645
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset, ptr noundef nonnull %offset.addr) #8
  %cmp2.not = icmp eq i32 %call1, 3
  %2 = load i32, ptr %offset.addr, align 4
  %spec.select = select i1 %cmp2.not, i32 %2, i32 -4
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -4, %entry ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset, ptr noundef %depth) local_unnamed_addr #4 align 64 {
entry:
  %offset.addr.i = alloca i32, align 4
  %nextoffset = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset) #9
  store i32 0, ptr %nextoffset, align 4
  %cmp = icmp sgt i32 %offset, -1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.addr.i)
  store i32 %offset, ptr %offset.addr.i, align 4
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
  store i32 %2, ptr %nextoffset, align 4
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %fdt_check_node_offset_.exit, %entry
  %3 = phi i32 [ %2, %fdt_check_node_offset_.exit ], [ 0, %entry ]
  %tobool9.not = icmp eq ptr %depth, null
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %if.end3
  %4 = phi i32 [ %.pre, %do.body.backedge ], [ %3, %if.end3 ]
  %call4 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %4, ptr noundef nonnull %nextoffset) #8
  switch i32 %call4, label %do.body.backedge [
    i32 9, label %sw.bb13
    i32 2, label %sw.bb8
    i32 1, label %sw.bb5
  ]

do.body.backedge:                                 ; preds = %land.lhs.true, %sw.bb8, %do.body
  %.pre = load i32, ptr %nextoffset, align 4
  br label %do.body

sw.bb5:                                           ; preds = %do.body
  br i1 %tobool9.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %sw.bb5
  %5 = load i32, ptr %depth, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %depth, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %do.body
  br i1 %tobool9.not, label %do.body.backedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb8
  %6 = load i32, ptr %depth, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %depth, align 4
  %cmp10 = icmp slt i32 %dec, 0
  br i1 %cmp10, label %if.then11, label %do.body.backedge

if.then11:                                        ; preds = %land.lhs.true
  %7 = load i32, ptr %nextoffset, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %do.body
  %8 = load i32, ptr %nextoffset, align 4
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_first_subnode(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #4 align 64 {
entry:
  %offset.addr.i.i = alloca i32, align 4
  %nextoffset.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i) #9
  store i32 0, ptr %nextoffset.i, align 4
  %cmp.i = icmp sgt i32 %offset, -1
  br i1 %cmp.i, label %if.then.i, label %do.body.i.preheader

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.addr.i.i) #9
  store i32 %offset, ptr %offset.addr.i.i, align 4
  %0 = and i32 %offset, -2147483645
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end.i.i, label %fdt_check_node_offset_.exit.thread.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset, ptr noundef nonnull %offset.addr.i.i) #10
  %cmp2.not.i.i = icmp eq i32 %call1.i.i, 1
  br i1 %cmp2.not.i.i, label %fdt_check_node_offset_.exit.i, label %fdt_check_node_offset_.exit.thread.i

fdt_check_node_offset_.exit.thread.i:             ; preds = %if.end.i.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i.i) #9
  br label %fdt_next_node.exit

fdt_check_node_offset_.exit.i:                    ; preds = %if.end.i.i
  %2 = load i32, ptr %offset.addr.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i.i) #9
  store i32 %2, ptr %nextoffset.i, align 4
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
  %.pre.i = load i32, ptr %nextoffset.i, align 4
  br label %do.body.i

if.then11.i:                                      ; preds = %do.body.i
  %4 = load i32, ptr %nextoffset.i, align 4
  br label %fdt_next_node.exit

sw.bb13.i:                                        ; preds = %do.body.i
  %5 = load i32, ptr %nextoffset.i, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 -1)
  br label %fdt_next_node.exit

fdt_next_node.exit:                               ; preds = %sw.bb13.i, %if.then11.i, %do.body.i, %fdt_check_node_offset_.exit.i, %fdt_check_node_offset_.exit.thread.i
  %cmp1 = phi i1 [ true, %sw.bb13.i ], [ true, %fdt_check_node_offset_.exit.thread.i ], [ true, %fdt_check_node_offset_.exit.i ], [ true, %if.then11.i ], [ false, %do.body.i ]
  %retval.0.i = phi i32 [ %6, %sw.bb13.i ], [ -4, %fdt_check_node_offset_.exit.thread.i ], [ %2, %fdt_check_node_offset_.exit.i ], [ %4, %if.then11.i ], [ %3, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #9
  %cmp = icmp slt i32 %retval.0.i, 0
  %or.cond = or i1 %cmp, %cmp1
  %.call = select i1 %or.cond, i32 -1, i32 %retval.0.i
  ret i32 %.call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_next_subnode(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #4 align 64 {
entry:
  %offset.addr.i.i = alloca i32, align 4
  %nextoffset.i = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %depth.0 = phi i32 [ 1, %entry ], [ %inc.i, %do.cond ]
  %offset.addr.0 = phi i32 [ %offset, %entry ], [ %3, %do.cond ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i) #9
  store i32 0, ptr %nextoffset.i, align 4
  %cmp.i = icmp sgt i32 %offset.addr.0, -1
  br i1 %cmp.i, label %if.then.i, label %do.body.i.preheader

if.then.i:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.addr.i.i) #9
  store i32 %offset.addr.0, ptr %offset.addr.i.i, align 4
  %0 = and i32 %offset.addr.0, -2147483645
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end.i.i, label %fdt_check_node_offset_.exit.thread.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0, ptr noundef nonnull %offset.addr.i.i) #10
  %cmp2.not.i.i = icmp eq i32 %call1.i.i, 1
  br i1 %cmp2.not.i.i, label %fdt_check_node_offset_.exit.i, label %fdt_check_node_offset_.exit.thread.i

fdt_check_node_offset_.exit.thread.i:             ; preds = %if.end.i.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i.i) #9
  br label %fdt_next_node.exit.thread

fdt_check_node_offset_.exit.i:                    ; preds = %if.end.i.i
  %2 = load i32, ptr %offset.addr.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i.i) #9
  store i32 %2, ptr %nextoffset.i, align 4
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
  %.pre.i = load i32, ptr %nextoffset.i, align 4
  br label %do.body.i

sw.bb8.i:                                         ; preds = %do.body.i
  %dec.i = add i32 %depth.1, -1
  %cmp10.i = icmp slt i32 %dec.i, 0
  br i1 %cmp10.i, label %fdt_next_node.exit.thread, label %do.body.backedge.i

fdt_next_node.exit.thread:                        ; preds = %sw.bb8.i, %do.body.i, %fdt_check_node_offset_.exit.i, %fdt_check_node_offset_.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #9
  br label %cleanup

fdt_next_node.exit:                               ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #9
  %cmp = icmp slt i32 %3, 0
  %cmp1 = icmp ugt i32 %depth.1, 2147483646
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

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_find_string_(ptr noundef %strtab, i32 noundef %tabsize, ptr noundef %s) local_unnamed_addr #5 align 64 {
entry:
  %call = tail call i32 @strlen(ptr noundef %s) #10
  %add = add i32 %call, 1
  %add.ptr = getelementptr i8, ptr %strtab, i32 %tabsize
  %idx.neg = xor i32 %call, -1
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %cmp.not12 = icmp ult ptr %add.ptr1, %strtab
  br i1 %cmp.not12, label %cleanup, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %p.013 = phi ptr [ %incdec.ptr, %for.inc ], [ %strtab, %entry ]
  %call2 = tail call i32 @memcmp(ptr noundef %p.013, ptr noundef %s, i32 noundef %add) #10
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i8, ptr %p.013, i32 1
  %cmp.not = icmp ugt ptr %incdec.ptr, %add.ptr1
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %for.body, %entry
  %retval.0 = phi ptr [ null, %entry ], [ null, %for.inc ], [ %p.013, %for.body ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @strlen(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_move(ptr noundef %fdt, ptr noundef %buf, i32 noundef %bufsize) local_unnamed_addr #5 align 64 {
entry:
  %cmp = icmp slt i32 %bufsize, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #8
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %cleanup.cont, label %return

cleanup.cont:                                     ; preds = %if.end
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %0 = load i8, ptr %totalsize, align 1
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %totalsize, i32 1
  %1 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %totalsize, i32 2
  %2 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %totalsize, i32 3
  %3 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp6 = icmp ugt i32 %or10.i, %bufsize
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %cleanup.cont
  %call11 = tail call ptr @__memmove(ptr noundef %buf, ptr noundef %fdt, i32 noundef %or10.i) #10
  br label %return

return:                                           ; preds = %if.end8, %cleanup.cont, %if.end, %entry
  %retval.1 = phi i32 [ %call1, %if.end ], [ 0, %if.end8 ], [ -3, %entry ], [ -3, %cleanup.cont ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare ptr @__memmove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-builtins" }

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
