; ModuleID = '/llk/IR_all_yes/arch/arm/boot/compressed/fdt_rw.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/fdt_rw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }
%struct.fdt_node_header = type { i32, [0 x i8] }

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_add_mem_rsv(ptr noundef %fdt, i64 noundef %address, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #4
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup8

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup8, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #4
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup8

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call1 = tail call i32 @fdt_num_mem_rsv(ptr noundef %fdt) #4
  %off_mem_rsvmap.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %8 = load i8, ptr %off_mem_rsvmap.i.i, align 1
  %conv.i.i.i = zext i8 %8 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_mem_rsvmap.i.i, i32 1
  %9 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %9 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_mem_rsvmap.i.i, i32 2
  %10 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %10 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_mem_rsvmap.i.i, i32 3
  %11 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %11 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr1.i.i = getelementptr %struct.fdt_reserve_entry, ptr %add.ptr.i.i, i32 %call1
  %off_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %12 = load i8, ptr %off_dt_strings.i.i, align 1
  %conv.i.i.i30 = zext i8 %12 to i32
  %shl.i.i.i31 = shl nuw i32 %conv.i.i.i30, 24
  %arrayidx1.i.i.i32 = getelementptr i8, ptr %off_dt_strings.i.i, i32 1
  %13 = load i8, ptr %arrayidx1.i.i.i32, align 1
  %conv2.i.i.i33 = zext i8 %13 to i32
  %shl3.i.i.i34 = shl nuw nsw i32 %conv2.i.i.i33, 16
  %or.i.i.i35 = or i32 %shl3.i.i.i34, %shl.i.i.i31
  %arrayidx4.i.i.i36 = getelementptr i8, ptr %off_dt_strings.i.i, i32 2
  %14 = load i8, ptr %arrayidx4.i.i.i36, align 1
  %conv5.i.i.i37 = zext i8 %14 to i32
  %shl6.i.i.i38 = shl nuw nsw i32 %conv5.i.i.i37, 8
  %or7.i.i.i39 = or i32 %or.i.i.i35, %shl6.i.i.i38
  %arrayidx8.i.i.i40 = getelementptr i8, ptr %off_dt_strings.i.i, i32 3
  %15 = load i8, ptr %arrayidx8.i.i.i40, align 1
  %conv9.i.i.i41 = zext i8 %15 to i32
  %or10.i.i.i42 = or i32 %or7.i.i.i39, %conv9.i.i.i41
  %size_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %16 = load i8, ptr %size_dt_strings.i.i, align 1
  %conv.i3.i.i = zext i8 %16 to i32
  %shl.i4.i.i = shl nuw i32 %conv.i3.i.i, 24
  %arrayidx1.i5.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 1
  %17 = load i8, ptr %arrayidx1.i5.i.i, align 1
  %conv2.i6.i.i = zext i8 %17 to i32
  %shl3.i7.i.i = shl nuw nsw i32 %conv2.i6.i.i, 16
  %or.i8.i.i = or i32 %shl3.i7.i.i, %shl.i4.i.i
  %arrayidx4.i9.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 2
  %18 = load i8, ptr %arrayidx4.i9.i.i, align 1
  %conv5.i10.i.i = zext i8 %18 to i32
  %shl6.i11.i.i = shl nuw nsw i32 %conv5.i10.i.i, 8
  %or7.i12.i.i = or i32 %or.i8.i.i, %shl6.i11.i.i
  %arrayidx8.i13.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 3
  %19 = load i8, ptr %arrayidx8.i13.i.i, align 1
  %conv9.i14.i.i = zext i8 %19 to i32
  %or10.i15.i.i = or i32 %or7.i12.i.i, %conv9.i14.i.i
  %add.i.i = add i32 %or10.i15.i.i, %or10.i.i.i42
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %fdt to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp4.i = icmp ugt i32 %sub.ptr.sub.i, %add.i.i
  %cmp5.i = icmp ult ptr %add.ptr1.i.i, %fdt
  %or.cond = select i1 %cmp4.i, i1 true, i1 %cmp5.i
  br i1 %or.cond, label %cleanup8, label %if.end10.i

if.end10.i:                                       ; preds = %cleanup.cont
  %add11.i = add i32 %add.i.i, 16
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %20 = load i8, ptr %totalsize.i, align 1
  %conv.i.i44 = zext i8 %20 to i32
  %shl.i.i45 = shl nuw i32 %conv.i.i44, 24
  %arrayidx1.i.i46 = getelementptr i8, ptr %totalsize.i, i32 1
  %21 = load i8, ptr %arrayidx1.i.i46, align 1
  %conv2.i.i47 = zext i8 %21 to i32
  %shl3.i.i48 = shl nuw nsw i32 %conv2.i.i47, 16
  %or.i.i49 = or i32 %shl3.i.i48, %shl.i.i45
  %arrayidx4.i.i50 = getelementptr i8, ptr %totalsize.i, i32 2
  %22 = load i8, ptr %arrayidx4.i.i50, align 1
  %conv5.i.i51 = zext i8 %22 to i32
  %shl6.i.i52 = shl nuw nsw i32 %conv5.i.i51, 8
  %or7.i.i53 = or i32 %or.i.i49, %shl6.i.i52
  %arrayidx8.i.i54 = getelementptr i8, ptr %totalsize.i, i32 3
  %23 = load i8, ptr %arrayidx8.i.i54, align 1
  %conv9.i.i55 = zext i8 %23 to i32
  %or10.i.i56 = or i32 %or7.i.i53, %conv9.i.i55
  %cmp13.i = icmp ugt i32 %add11.i, %or10.i.i56
  br i1 %cmp13.i, label %cleanup8, label %if.end5

if.end5:                                          ; preds = %if.end10.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i, i32 16
  %add.ptr17.i = getelementptr i8, ptr %fdt, i32 %add.i.i
  %sub.ptr.lhs.cast19.i = ptrtoint ptr %add.ptr17.i to i32
  %sub.ptr.sub21.i = sub i32 %sub.ptr.lhs.cast19.i, %sub.ptr.lhs.cast.i
  %call22.i = tail call ptr @__memmove(ptr noundef %add.ptr.i, ptr noundef %add.ptr1.i.i, i32 noundef %sub.ptr.sub21.i) #4
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %24 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i.i17 = zext i8 %24 to i32
  %shl.i.i18 = shl nuw i32 %conv.i.i17, 24
  %arrayidx1.i.i19 = getelementptr i8, ptr %off_dt_struct.i, i32 1
  %25 = load i8, ptr %arrayidx1.i.i19, align 1
  %conv2.i.i20 = zext i8 %25 to i32
  %shl3.i.i21 = shl nuw nsw i32 %conv2.i.i20, 16
  %or.i.i22 = or i32 %shl3.i.i21, %shl.i.i18
  %arrayidx4.i.i23 = getelementptr i8, ptr %off_dt_struct.i, i32 2
  %26 = load i8, ptr %arrayidx4.i.i23, align 1
  %conv5.i.i24 = zext i8 %26 to i32
  %shl6.i.i25 = shl nuw nsw i32 %conv5.i.i24, 8
  %or7.i.i26 = or i32 %or.i.i22, %shl6.i.i25
  %arrayidx8.i.i27 = getelementptr i8, ptr %off_dt_struct.i, i32 3
  %27 = load i8, ptr %arrayidx8.i.i27, align 1
  %conv9.i.i28 = zext i8 %27 to i32
  %or10.i.i29 = or i32 %or7.i.i26, %conv9.i.i28
  %add.i = add i32 %or10.i.i29, 16
  store i32 %add.i, ptr %off_dt_struct.i, align 4
  %28 = load i8, ptr %off_dt_strings.i.i, align 1
  %conv.i15.i = zext i8 %28 to i32
  %shl.i16.i = shl nuw i32 %conv.i15.i, 24
  %29 = load i8, ptr %arrayidx1.i.i.i32, align 1
  %conv2.i18.i = zext i8 %29 to i32
  %shl3.i19.i = shl nuw nsw i32 %conv2.i18.i, 16
  %or.i20.i = or i32 %shl3.i19.i, %shl.i16.i
  %30 = load i8, ptr %arrayidx4.i.i.i36, align 1
  %conv5.i22.i = zext i8 %30 to i32
  %shl6.i23.i = shl nuw nsw i32 %conv5.i22.i, 8
  %or7.i24.i = or i32 %or.i20.i, %shl6.i23.i
  %31 = load i8, ptr %arrayidx8.i.i.i40, align 1
  %conv9.i26.i = zext i8 %31 to i32
  %or10.i27.i = or i32 %or7.i24.i, %conv9.i26.i
  %add5.i = add i32 %or10.i27.i, 16
  store i32 %add5.i, ptr %off_dt_strings.i.i, align 4
  store i64 %address, ptr %add.ptr1.i.i, align 8
  %size7 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr1.i.i, i32 0, i32 1
  store i64 %size, ptr %size7, align 8
  br label %cleanup8

cleanup8:                                         ; preds = %if.end5, %if.end10.i, %cleanup.cont, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ 0, %if.end5 ], [ -3, %if.end10.i ], [ -4, %cleanup.cont ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_num_mem_rsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_del_mem_rsv(ptr noundef %fdt, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  %off_mem_rsvmap.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %0 = load i8, ptr %off_mem_rsvmap.i.i, align 1
  %conv.i.i.i = zext i8 %0 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_mem_rsvmap.i.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %1 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_mem_rsvmap.i.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %2 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_mem_rsvmap.i.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %3 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr1.i.i = getelementptr %struct.fdt_reserve_entry, ptr %add.ptr.i.i, i32 %n
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #4
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup7

cleanup.cont.i:                                   ; preds = %entry
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %4 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %5 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %5 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %6 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %6 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %7 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup7, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %8 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %8 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %9 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %9 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %10 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %10 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %11 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %11 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #4
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup7

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call2 = tail call i32 @fdt_num_mem_rsv(ptr noundef %fdt) #4
  %cmp3.not = icmp sgt i32 %call2, %n
  br i1 %cmp3.not, label %if.end5, label %cleanup7

if.end5:                                          ; preds = %cleanup.cont
  %off_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %12 = load i8, ptr %off_dt_strings.i.i, align 1
  %conv.i.i.i26 = zext i8 %12 to i32
  %shl.i.i.i27 = shl nuw i32 %conv.i.i.i26, 24
  %arrayidx1.i.i.i28 = getelementptr i8, ptr %off_dt_strings.i.i, i32 1
  %13 = load i8, ptr %arrayidx1.i.i.i28, align 1
  %conv2.i.i.i29 = zext i8 %13 to i32
  %shl3.i.i.i30 = shl nuw nsw i32 %conv2.i.i.i29, 16
  %or.i.i.i31 = or i32 %shl3.i.i.i30, %shl.i.i.i27
  %arrayidx4.i.i.i32 = getelementptr i8, ptr %off_dt_strings.i.i, i32 2
  %14 = load i8, ptr %arrayidx4.i.i.i32, align 1
  %conv5.i.i.i33 = zext i8 %14 to i32
  %shl6.i.i.i34 = shl nuw nsw i32 %conv5.i.i.i33, 8
  %or7.i.i.i35 = or i32 %or.i.i.i31, %shl6.i.i.i34
  %arrayidx8.i.i.i36 = getelementptr i8, ptr %off_dt_strings.i.i, i32 3
  %15 = load i8, ptr %arrayidx8.i.i.i36, align 1
  %conv9.i.i.i37 = zext i8 %15 to i32
  %or10.i.i.i38 = or i32 %or7.i.i.i35, %conv9.i.i.i37
  %size_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %16 = load i8, ptr %size_dt_strings.i.i, align 1
  %conv.i3.i.i = zext i8 %16 to i32
  %shl.i4.i.i = shl nuw i32 %conv.i3.i.i, 24
  %arrayidx1.i5.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 1
  %17 = load i8, ptr %arrayidx1.i5.i.i, align 1
  %conv2.i6.i.i = zext i8 %17 to i32
  %shl3.i7.i.i = shl nuw nsw i32 %conv2.i6.i.i, 16
  %or.i8.i.i = or i32 %shl3.i7.i.i, %shl.i4.i.i
  %arrayidx4.i9.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 2
  %18 = load i8, ptr %arrayidx4.i9.i.i, align 1
  %conv5.i10.i.i = zext i8 %18 to i32
  %shl6.i11.i.i = shl nuw nsw i32 %conv5.i10.i.i, 8
  %or7.i12.i.i = or i32 %or.i8.i.i, %shl6.i11.i.i
  %arrayidx8.i13.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 3
  %19 = load i8, ptr %arrayidx8.i13.i.i, align 1
  %conv9.i14.i.i = zext i8 %19 to i32
  %or10.i15.i.i = or i32 %or7.i12.i.i, %conv9.i14.i.i
  %add.i.i = add i32 %or10.i15.i.i, %or10.i.i.i38
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %fdt to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.i39 = add i32 %sub.ptr.sub.i, 16
  %cmp1.i = icmp ugt i32 %sub.ptr.sub.i, -17
  %cmp4.i = icmp ugt i32 %add.i39, %add.i.i
  %or.cond.i = select i1 %cmp1.i, i1 true, i1 %cmp4.i
  br i1 %or.cond.i, label %cleanup7, label %if.end.i40

if.end.i40:                                       ; preds = %if.end5
  %cmp5.i = icmp ult ptr %add.ptr1.i.i, %fdt
  %cmp8.i = icmp ult i32 %add.i.i, 16
  %or.cond46.i = select i1 %cmp5.i, i1 true, i1 %cmp8.i
  br i1 %or.cond46.i, label %cleanup7, label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i40
  %add11.i = add i32 %add.i.i, -16
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %20 = load i8, ptr %totalsize.i, align 1
  %conv.i.i41 = zext i8 %20 to i32
  %shl.i.i42 = shl nuw i32 %conv.i.i41, 24
  %arrayidx1.i.i43 = getelementptr i8, ptr %totalsize.i, i32 1
  %21 = load i8, ptr %arrayidx1.i.i43, align 1
  %conv2.i.i44 = zext i8 %21 to i32
  %shl3.i.i45 = shl nuw nsw i32 %conv2.i.i44, 16
  %or.i.i46 = or i32 %shl3.i.i45, %shl.i.i42
  %arrayidx4.i.i47 = getelementptr i8, ptr %totalsize.i, i32 2
  %22 = load i8, ptr %arrayidx4.i.i47, align 1
  %conv5.i.i48 = zext i8 %22 to i32
  %shl6.i.i49 = shl nuw nsw i32 %conv5.i.i48, 8
  %or7.i.i50 = or i32 %or.i.i46, %shl6.i.i49
  %arrayidx8.i.i51 = getelementptr i8, ptr %totalsize.i, i32 3
  %23 = load i8, ptr %arrayidx8.i.i51, align 1
  %conv9.i.i52 = zext i8 %23 to i32
  %or10.i.i53 = or i32 %or7.i.i50, %conv9.i.i52
  %cmp13.i = icmp ugt i32 %add11.i, %or10.i.i53
  br i1 %cmp13.i, label %cleanup7, label %if.end.i

if.end.i:                                         ; preds = %if.end10.i
  %add.ptr16.i = getelementptr i8, ptr %add.ptr1.i.i, i32 16
  %add.ptr17.i = getelementptr i8, ptr %fdt, i32 %add.i.i
  %sub.ptr.lhs.cast19.i = ptrtoint ptr %add.ptr17.i to i32
  %sub.ptr.rhs.cast20.i = ptrtoint ptr %add.ptr16.i to i32
  %sub.ptr.sub21.i = sub i32 %sub.ptr.lhs.cast19.i, %sub.ptr.rhs.cast20.i
  %call22.i = tail call ptr @__memmove(ptr noundef %add.ptr1.i.i, ptr noundef %add.ptr16.i, i32 noundef %sub.ptr.sub21.i) #4
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %24 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i.i13 = zext i8 %24 to i32
  %shl.i.i14 = shl nuw i32 %conv.i.i13, 24
  %arrayidx1.i.i15 = getelementptr i8, ptr %off_dt_struct.i, i32 1
  %25 = load i8, ptr %arrayidx1.i.i15, align 1
  %conv2.i.i16 = zext i8 %25 to i32
  %shl3.i.i17 = shl nuw nsw i32 %conv2.i.i16, 16
  %or.i.i18 = or i32 %shl3.i.i17, %shl.i.i14
  %arrayidx4.i.i19 = getelementptr i8, ptr %off_dt_struct.i, i32 2
  %26 = load i8, ptr %arrayidx4.i.i19, align 1
  %conv5.i.i20 = zext i8 %26 to i32
  %shl6.i.i21 = shl nuw nsw i32 %conv5.i.i20, 8
  %or7.i.i22 = or i32 %or.i.i18, %shl6.i.i21
  %arrayidx8.i.i23 = getelementptr i8, ptr %off_dt_struct.i, i32 3
  %27 = load i8, ptr %arrayidx8.i.i23, align 1
  %conv9.i.i24 = zext i8 %27 to i32
  %or10.i.i25 = or i32 %or7.i.i22, %conv9.i.i24
  %add.i = add i32 %or10.i.i25, -16
  store i32 %add.i, ptr %off_dt_struct.i, align 4
  %28 = load i8, ptr %off_dt_strings.i.i, align 1
  %conv.i15.i = zext i8 %28 to i32
  %shl.i16.i = shl nuw i32 %conv.i15.i, 24
  %29 = load i8, ptr %arrayidx1.i.i.i28, align 1
  %conv2.i18.i = zext i8 %29 to i32
  %shl3.i19.i = shl nuw nsw i32 %conv2.i18.i, 16
  %or.i20.i = or i32 %shl3.i19.i, %shl.i16.i
  %30 = load i8, ptr %arrayidx4.i.i.i32, align 1
  %conv5.i22.i = zext i8 %30 to i32
  %shl6.i23.i = shl nuw nsw i32 %conv5.i22.i, 8
  %or7.i24.i = or i32 %or.i20.i, %shl6.i23.i
  %31 = load i8, ptr %arrayidx8.i.i.i36, align 1
  %conv9.i26.i = zext i8 %31 to i32
  %or10.i27.i = or i32 %or7.i24.i, %conv9.i26.i
  %add5.i = add i32 %or10.i27.i, -16
  store i32 %add5.i, ptr %off_dt_strings.i.i, align 4
  br label %cleanup7

cleanup7:                                         ; preds = %if.end.i, %if.end10.i, %if.end.i40, %if.end5, %cleanup.cont, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ -1, %cleanup.cont ], [ 0, %if.end.i ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ], [ -3, %if.end10.i ], [ -4, %if.end.i40 ], [ -4, %if.end5 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_set_name(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %oldlen = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oldlen) #5
  store i32 -1, ptr %oldlen, align 4, !annotation !9
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #4
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup16

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup16, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #4
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup16

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call1 = call ptr @fdt_get_name(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull %oldlen) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %cleanup.cont
  %8 = load i32, ptr %oldlen, align 4
  br label %cleanup16

if.end3:                                          ; preds = %cleanup.cont
  %call4 = call i32 @strlen(ptr noundef %name) #4
  %9 = load i32, ptr %oldlen, align 4
  %sub = add i32 %9, 4
  %and = and i32 %sub, -4
  %sub8 = add i32 %call4, 4
  %and9 = and i32 %sub8, -4
  %call.i = call fastcc i32 @fdt_splice_(ptr noundef %fdt, ptr noundef nonnull %call1, i32 noundef %and, i32 noundef %and9) #4
  %tobool.not.i27 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i27, label %if.end13, label %cleanup16

if.end13:                                         ; preds = %if.end3
  %sub.i = sub i32 %and9, %and
  %10 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i.i29 = zext i8 %10 to i32
  %shl.i.i30 = shl nuw i32 %conv.i.i29, 24
  %11 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i.i32 = zext i8 %11 to i32
  %shl3.i.i33 = shl nuw nsw i32 %conv2.i.i32, 16
  %or.i.i34 = or i32 %shl3.i.i33, %shl.i.i30
  %12 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i.i36 = zext i8 %12 to i32
  %shl6.i.i37 = shl nuw nsw i32 %conv5.i.i36, 8
  %or7.i.i38 = or i32 %or.i.i34, %shl6.i.i37
  %13 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i.i40 = zext i8 %13 to i32
  %or10.i.i41 = or i32 %or7.i.i38, %conv9.i.i40
  %add.i = add i32 %or10.i.i41, %sub.i
  store i32 %add.i, ptr %size_dt_struct.i, align 4
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %14 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i12.i = zext i8 %14 to i32
  %shl.i13.i = shl nuw i32 %conv.i12.i, 24
  %arrayidx1.i14.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %15 = load i8, ptr %arrayidx1.i14.i, align 1
  %conv2.i15.i = zext i8 %15 to i32
  %shl3.i16.i = shl nuw nsw i32 %conv2.i15.i, 16
  %or.i17.i = or i32 %shl3.i16.i, %shl.i13.i
  %arrayidx4.i18.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %16 = load i8, ptr %arrayidx4.i18.i, align 1
  %conv5.i19.i = zext i8 %16 to i32
  %shl6.i20.i = shl nuw nsw i32 %conv5.i19.i, 8
  %or7.i21.i = or i32 %or.i17.i, %shl6.i20.i
  %arrayidx8.i22.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %17 = load i8, ptr %arrayidx8.i22.i, align 1
  %conv9.i23.i = zext i8 %17 to i32
  %or10.i24.i = or i32 %or7.i21.i, %conv9.i23.i
  %add3.i = add i32 %or10.i24.i, %sub.i
  store i32 %add3.i, ptr %off_dt_strings.i, align 4
  %add6 = add i32 %call4, 1
  %call15 = call ptr @__memcpy(ptr noundef nonnull %call1, ptr noundef %name, i32 noundef %add6) #4
  br label %cleanup16

cleanup16:                                        ; preds = %if.end13, %if.end3, %if.then2, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ 0, %if.end13 ], [ %8, %if.then2 ], [ %call.i, %if.end3 ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldlen) #5
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @__memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_setprop_placeholder(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr nocapture noundef writeonly %prop_data) local_unnamed_addr #0 align 64 {
entry:
  %oldlen.i = alloca i32, align 4
  %prop = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #5
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #4
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup8

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup8, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #4
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup8

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oldlen.i) #5
  store i32 -1, ptr %oldlen.i, align 4, !annotation !9
  %call.i.i = call ptr @fdt_get_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %oldlen.i) #4
  store ptr %call.i.i, ptr %prop, align 4
  %tobool.not.i17 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i17, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cleanup.cont
  %8 = load i32, ptr %oldlen.i, align 4
  br label %fdt_resize_property_.exit

if.end.i:                                         ; preds = %cleanup.cont
  %data.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 3
  %9 = load i32, ptr %oldlen.i, align 4
  %sub.i = add i32 %9, 3
  %and.i = and i32 %sub.i, -4
  %sub2.i = add i32 %len, 3
  %and3.i = and i32 %sub2.i, -4
  %call.i15.i = call fastcc i32 @fdt_splice_(ptr noundef %fdt, ptr noundef %data.i, i32 noundef %and.i, i32 noundef %and3.i) #4
  %tobool.not.i.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool.not.i.i, label %if.end5.thread, label %fdt_resize_property_.exit

if.end5.thread:                                   ; preds = %if.end.i
  %sub.i.i = sub i32 %and3.i, %and.i
  %10 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i.i.i = zext i8 %10 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %11 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i.i.i = zext i8 %11 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %12 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i.i.i = zext i8 %12 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %13 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i.i.i = zext i8 %13 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.i.i = add i32 %or10.i.i.i, %sub.i.i
  store i32 %add.i.i, ptr %size_dt_struct.i, align 4
  %off_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %14 = load i8, ptr %off_dt_strings.i.i, align 1
  %conv.i12.i.i = zext i8 %14 to i32
  %shl.i13.i.i = shl nuw i32 %conv.i12.i.i, 24
  %arrayidx1.i14.i.i = getelementptr i8, ptr %off_dt_strings.i.i, i32 1
  %15 = load i8, ptr %arrayidx1.i14.i.i, align 1
  %conv2.i15.i.i = zext i8 %15 to i32
  %shl3.i16.i.i = shl nuw nsw i32 %conv2.i15.i.i, 16
  %or.i17.i.i = or i32 %shl3.i16.i.i, %shl.i13.i.i
  %arrayidx4.i18.i.i = getelementptr i8, ptr %off_dt_strings.i.i, i32 2
  %16 = load i8, ptr %arrayidx4.i18.i.i, align 1
  %conv5.i19.i.i = zext i8 %16 to i32
  %shl6.i20.i.i = shl nuw nsw i32 %conv5.i19.i.i, 8
  %or7.i21.i.i = or i32 %or.i17.i.i, %shl6.i20.i.i
  %arrayidx8.i22.i.i = getelementptr i8, ptr %off_dt_strings.i.i, i32 3
  %17 = load i8, ptr %arrayidx8.i22.i.i, align 1
  %conv9.i23.i.i = zext i8 %17 to i32
  %or10.i24.i.i = or i32 %or7.i21.i.i, %conv9.i23.i.i
  %add3.i.i = add i32 %or10.i24.i.i, %sub.i.i
  store i32 %add3.i.i, ptr %off_dt_strings.i.i, align 4
  %len8.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 1
  store i32 %len, ptr %len8.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldlen.i) #5
  br label %if.end7

fdt_resize_property_.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ %call.i15.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldlen.i) #5
  %cmp2 = icmp eq i32 %retval.0.i, -1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %fdt_resize_property_.exit
  %call4 = call fastcc i32 @fdt_add_property_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr noundef nonnull %prop) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %fdt_resize_property_.exit
  %err.0 = phi i32 [ %call4, %if.then3 ], [ %retval.0.i, %fdt_resize_property_.exit ]
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end5.if.end7_crit_edge, label %cleanup8

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  %.pre = load ptr, ptr %prop, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end5.if.end7_crit_edge, %if.end5.thread
  %18 = phi ptr [ %.pre, %if.end5.if.end7_crit_edge ], [ %call.i.i, %if.end5.thread ]
  %data = getelementptr inbounds %struct.fdt_property, ptr %18, i32 0, i32 3
  store ptr %data, ptr %prop_data, align 4
  br label %cleanup8

cleanup8:                                         ; preds = %if.end7, %if.end5, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ 0, %if.end7 ], [ %err.0, %if.end5 ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #5
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc i32 @fdt_add_property_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr nocapture noundef %prop) unnamed_addr #0 align 64 {
entry:
  %call = tail call i32 @fdt_check_node_offset_(ptr noundef %fdt, i32 noundef %nodeoffset) #4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %0 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %add.ptr.i = getelementptr i8, ptr %fdt, i32 %or10.i.i
  %call1.i = tail call i32 @strlen(ptr noundef %name) #4
  %add.i = add i32 %call1.i, 1
  %size_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %4 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i39.i = zext i8 %4 to i32
  %shl.i40.i = shl nuw i32 %conv.i39.i, 24
  %arrayidx1.i41.i = getelementptr i8, ptr %size_dt_strings.i, i32 1
  %5 = load i8, ptr %arrayidx1.i41.i, align 1
  %conv2.i42.i = zext i8 %5 to i32
  %shl3.i43.i = shl nuw nsw i32 %conv2.i42.i, 16
  %or.i44.i = or i32 %shl3.i43.i, %shl.i40.i
  %arrayidx4.i45.i = getelementptr i8, ptr %size_dt_strings.i, i32 2
  %6 = load i8, ptr %arrayidx4.i45.i, align 1
  %conv5.i46.i = zext i8 %6 to i32
  %shl6.i47.i = shl nuw nsw i32 %conv5.i46.i, 8
  %or7.i48.i = or i32 %or.i44.i, %shl6.i47.i
  %arrayidx8.i49.i = getelementptr i8, ptr %size_dt_strings.i, i32 3
  %7 = load i8, ptr %arrayidx8.i49.i, align 1
  %conv9.i50.i = zext i8 %7 to i32
  %or10.i51.i = or i32 %or7.i48.i, %conv9.i50.i
  %call4.i = tail call ptr @fdt_find_string_(ptr noundef %add.ptr.i, i32 noundef %or10.i51.i, ptr noundef %name) #4
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call4.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %fdt_find_add_string_.exit

if.end6.i:                                        ; preds = %if.end
  %8 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i52.i = zext i8 %8 to i32
  %shl.i53.i = shl nuw i32 %conv.i52.i, 24
  %9 = load i8, ptr %arrayidx1.i41.i, align 1
  %conv2.i55.i = zext i8 %9 to i32
  %shl3.i56.i = shl nuw nsw i32 %conv2.i55.i, 16
  %or.i57.i = or i32 %shl3.i56.i, %shl.i53.i
  %10 = load i8, ptr %arrayidx4.i45.i, align 1
  %conv5.i59.i = zext i8 %10 to i32
  %shl6.i60.i = shl nuw nsw i32 %conv5.i59.i, 8
  %or7.i61.i = or i32 %or.i57.i, %shl6.i60.i
  %11 = load i8, ptr %arrayidx8.i49.i, align 1
  %conv9.i63.i = zext i8 %11 to i32
  %or10.i64.i = or i32 %or7.i61.i, %conv9.i63.i
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %or10.i64.i
  %12 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i.i.i = zext i8 %12 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %13 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i.i = zext i8 %13 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %14 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i.i = zext i8 %14 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %15 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i.i = zext i8 %15 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %or10.i64.i
  %add.i.i.i.i = add i32 %or10.i.i.i, %or10.i64.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr2.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %fdt to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %cmp4.i.i.i = icmp ugt i32 %sub.ptr.sub.i.i.i, %add.i.i.i.i
  %cmp5.i.i.i = icmp ult ptr %add.ptr2.i.i, %fdt
  %or.cond.i.i = select i1 %cmp4.i.i.i, i1 true, i1 %cmp5.i.i.i
  br i1 %or.cond.i.i, label %cleanup, label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.end6.i
  %add11.i.i.i = add i32 %add.i.i.i.i, %add.i
  %totalsize.i.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %16 = load i8, ptr %totalsize.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %16 to i32
  %shl.i.i.i.i = shl nuw i32 %conv.i.i.i.i, 24
  %arrayidx1.i.i.i.i = getelementptr i8, ptr %totalsize.i.i.i, i32 1
  %17 = load i8, ptr %arrayidx1.i.i.i.i, align 1
  %conv2.i.i.i.i = zext i8 %17 to i32
  %shl3.i.i.i.i = shl nuw nsw i32 %conv2.i.i.i.i, 16
  %or.i.i.i.i = or i32 %shl3.i.i.i.i, %shl.i.i.i.i
  %arrayidx4.i.i.i.i = getelementptr i8, ptr %totalsize.i.i.i, i32 2
  %18 = load i8, ptr %arrayidx4.i.i.i.i, align 1
  %conv5.i.i.i.i = zext i8 %18 to i32
  %shl6.i.i.i.i = shl nuw nsw i32 %conv5.i.i.i.i, 8
  %or7.i.i.i.i = or i32 %or.i.i.i.i, %shl6.i.i.i.i
  %arrayidx8.i.i.i.i = getelementptr i8, ptr %totalsize.i.i.i, i32 3
  %19 = load i8, ptr %arrayidx8.i.i.i.i, align 1
  %conv9.i.i.i.i = zext i8 %19 to i32
  %or10.i.i.i.i = or i32 %or7.i.i.i.i, %conv9.i.i.i.i
  %cmp13.i.i.i = icmp ugt i32 %add11.i.i.i, %or10.i.i.i.i
  br i1 %cmp13.i.i.i, label %cleanup, label %if.end13.i

if.end13.i:                                       ; preds = %if.end10.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %add.i
  %add.ptr17.i.i.i = getelementptr i8, ptr %fdt, i32 %add.i.i.i.i
  %sub.ptr.lhs.cast19.i.i.i = ptrtoint ptr %add.ptr17.i.i.i to i32
  %sub.ptr.sub21.i.i.i = sub i32 %sub.ptr.lhs.cast19.i.i.i, %sub.ptr.lhs.cast.i.i.i
  %call22.i.i.i = tail call ptr @__memmove(ptr noundef %add.ptr.i.i.i, ptr noundef %add.ptr2.i.i, i32 noundef %sub.ptr.sub21.i.i.i) #4
  %20 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i26.i.i = zext i8 %20 to i32
  %shl.i27.i.i = shl nuw i32 %conv.i26.i.i, 24
  %21 = load i8, ptr %arrayidx1.i41.i, align 1
  %conv2.i29.i.i = zext i8 %21 to i32
  %shl3.i30.i.i = shl nuw nsw i32 %conv2.i29.i.i, 16
  %or.i31.i.i = or i32 %shl3.i30.i.i, %shl.i27.i.i
  %22 = load i8, ptr %arrayidx4.i45.i, align 1
  %conv5.i33.i.i = zext i8 %22 to i32
  %shl6.i34.i.i = shl nuw nsw i32 %conv5.i33.i.i, 8
  %or7.i35.i.i = or i32 %or.i31.i.i, %shl6.i34.i.i
  %23 = load i8, ptr %arrayidx8.i49.i, align 1
  %conv9.i37.i.i = zext i8 %23 to i32
  %or10.i38.i.i = or i32 %or7.i35.i.i, %conv9.i37.i.i
  %add.i.i = add i32 %or10.i38.i.i, %add.i
  store i32 %add.i.i, ptr %size_dt_strings.i, align 4
  %call17.i = tail call ptr @__memcpy(ptr noundef %add.ptr9.i, ptr noundef %name, i32 noundef %add.i) #4
  br label %fdt_find_add_string_.exit

fdt_find_add_string_.exit:                        ; preds = %if.end13.i, %if.then5.i
  %retval.0.i = phi i32 [ %or10.i64.i, %if.end13.i ], [ %sub.ptr.sub.i, %if.then5.i ]
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %fdt_find_add_string_.exit
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %24 = load i8, ptr %off_dt_struct.i.i, align 1
  %conv.i.i.i33 = zext i8 %24 to i32
  %shl.i.i.i34 = shl nuw i32 %conv.i.i.i33, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 1
  %25 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i35 = zext i8 %25 to i32
  %shl3.i.i.i36 = shl nuw nsw i32 %conv2.i.i.i35, 16
  %or.i.i.i37 = or i32 %shl3.i.i.i36, %shl.i.i.i34
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 2
  %26 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i38 = zext i8 %26 to i32
  %shl6.i.i.i39 = shl nuw nsw i32 %conv5.i.i.i38, 8
  %or7.i.i.i40 = or i32 %or.i.i.i37, %shl6.i.i.i39
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 3
  %27 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i41 = zext i8 %27 to i32
  %or10.i.i.i42 = or i32 %or7.i.i.i40, %conv9.i.i.i41
  %add.ptr.i.i43 = getelementptr i8, ptr %fdt, i32 %or10.i.i.i42
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i43, i32 %call
  store ptr %add.ptr1.i.i, ptr %prop, align 4
  %28 = add i32 %len, 15
  %add6 = and i32 %28, -4
  %29 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i.i.i75 = zext i8 %29 to i32
  %shl.i.i.i76 = shl nuw i32 %conv.i.i.i75, 24
  %30 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i.i78 = zext i8 %30 to i32
  %shl3.i.i.i79 = shl nuw nsw i32 %conv2.i.i.i78, 16
  %or.i.i.i80 = or i32 %shl3.i.i.i79, %shl.i.i.i76
  %31 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i.i82 = zext i8 %31 to i32
  %shl6.i.i.i83 = shl nuw nsw i32 %conv5.i.i.i82, 8
  %or7.i.i.i84 = or i32 %or.i.i.i80, %shl6.i.i.i83
  %32 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i.i86 = zext i8 %32 to i32
  %or10.i.i.i87 = or i32 %or7.i.i.i84, %conv9.i.i.i86
  %33 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i3.i.i = zext i8 %33 to i32
  %shl.i4.i.i = shl nuw i32 %conv.i3.i.i, 24
  %34 = load i8, ptr %arrayidx1.i41.i, align 1
  %conv2.i6.i.i = zext i8 %34 to i32
  %shl3.i7.i.i = shl nuw nsw i32 %conv2.i6.i.i, 16
  %or.i8.i.i = or i32 %shl3.i7.i.i, %shl.i4.i.i
  %35 = load i8, ptr %arrayidx4.i45.i, align 1
  %conv5.i10.i.i = zext i8 %35 to i32
  %shl6.i11.i.i = shl nuw nsw i32 %conv5.i10.i.i, 8
  %or7.i12.i.i = or i32 %or.i8.i.i, %shl6.i11.i.i
  %36 = load i8, ptr %arrayidx8.i49.i, align 1
  %conv9.i14.i.i = zext i8 %36 to i32
  %or10.i15.i.i = or i32 %or7.i12.i.i, %conv9.i14.i.i
  %add.i.i88 = add i32 %or10.i15.i.i, %or10.i.i.i87
  %sub.ptr.lhs.cast.i89 = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i90 = ptrtoint ptr %fdt to i32
  %sub.ptr.sub.i91 = sub i32 %sub.ptr.lhs.cast.i89, %sub.ptr.rhs.cast.i90
  %cmp4.i = icmp ugt i32 %sub.ptr.sub.i91, %add.i.i88
  %cmp5.i = icmp ult ptr %add.ptr1.i.i, %fdt
  %or.cond = select i1 %cmp4.i, i1 true, i1 %cmp5.i
  br i1 %or.cond, label %if.then8, label %if.end10.i

if.end10.i:                                       ; preds = %if.end4
  %add11.i = add i32 %add.i.i88, %add6
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %37 = load i8, ptr %totalsize.i, align 1
  %conv.i.i93 = zext i8 %37 to i32
  %shl.i.i94 = shl nuw i32 %conv.i.i93, 24
  %arrayidx1.i.i95 = getelementptr i8, ptr %totalsize.i, i32 1
  %38 = load i8, ptr %arrayidx1.i.i95, align 1
  %conv2.i.i96 = zext i8 %38 to i32
  %shl3.i.i97 = shl nuw nsw i32 %conv2.i.i96, 16
  %or.i.i98 = or i32 %shl3.i.i97, %shl.i.i94
  %arrayidx4.i.i99 = getelementptr i8, ptr %totalsize.i, i32 2
  %39 = load i8, ptr %arrayidx4.i.i99, align 1
  %conv5.i.i100 = zext i8 %39 to i32
  %shl6.i.i101 = shl nuw nsw i32 %conv5.i.i100, 8
  %or7.i.i102 = or i32 %or.i.i98, %shl6.i.i101
  %arrayidx8.i.i103 = getelementptr i8, ptr %totalsize.i, i32 3
  %40 = load i8, ptr %arrayidx8.i.i103, align 1
  %conv9.i.i104 = zext i8 %40 to i32
  %or10.i.i105 = or i32 %or7.i.i102, %conv9.i.i104
  %cmp13.i = icmp ugt i32 %add11.i, %or10.i.i105
  br i1 %cmp13.i, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end10.i, %if.end4
  %retval.0.i107.ph = phi i32 [ -3, %if.end10.i ], [ -4, %if.end4 ]
  br i1 %tobool.not.i, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.then8
  %call.i60 = tail call i32 @strlen(ptr noundef %name) #4
  %add.neg.i = xor i32 %call.i60, -1
  %41 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i.i62 = zext i8 %41 to i32
  %shl.i.i63 = shl nuw i32 %conv.i.i62, 24
  %42 = load i8, ptr %arrayidx1.i41.i, align 1
  %conv2.i.i65 = zext i8 %42 to i32
  %shl3.i.i66 = shl nuw nsw i32 %conv2.i.i65, 16
  %or.i.i67 = or i32 %shl3.i.i66, %shl.i.i63
  %43 = load i8, ptr %arrayidx4.i45.i, align 1
  %conv5.i.i69 = zext i8 %43 to i32
  %shl6.i.i70 = shl nuw nsw i32 %conv5.i.i69, 8
  %or7.i.i71 = or i32 %or.i.i67, %shl6.i.i70
  %44 = load i8, ptr %arrayidx8.i49.i, align 1
  %conv9.i.i73 = zext i8 %44 to i32
  %or10.i.i74 = or i32 %or7.i.i71, %conv9.i.i73
  %sub.i = add i32 %or10.i.i74, %add.neg.i
  store i32 %sub.i, ptr %size_dt_strings.i, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end10.i
  %add.ptr.i106 = getelementptr i8, ptr %add.ptr1.i.i, i32 %add6
  %add.ptr17.i = getelementptr i8, ptr %fdt, i32 %add.i.i88
  %sub.ptr.lhs.cast19.i = ptrtoint ptr %add.ptr17.i to i32
  %sub.ptr.sub21.i = sub i32 %sub.ptr.lhs.cast19.i, %sub.ptr.lhs.cast.i89
  %call22.i = tail call ptr @__memmove(ptr noundef %add.ptr.i106, ptr noundef %add.ptr1.i.i, i32 noundef %sub.ptr.sub21.i) #4
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %45 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i.i45 = zext i8 %45 to i32
  %shl.i.i46 = shl nuw i32 %conv.i.i45, 24
  %arrayidx1.i.i47 = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %46 = load i8, ptr %arrayidx1.i.i47, align 1
  %conv2.i.i48 = zext i8 %46 to i32
  %shl3.i.i49 = shl nuw nsw i32 %conv2.i.i48, 16
  %or.i.i50 = or i32 %shl3.i.i49, %shl.i.i46
  %arrayidx4.i.i51 = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %47 = load i8, ptr %arrayidx4.i.i51, align 1
  %conv5.i.i52 = zext i8 %47 to i32
  %shl6.i.i53 = shl nuw nsw i32 %conv5.i.i52, 8
  %or7.i.i54 = or i32 %or.i.i50, %shl6.i.i53
  %arrayidx8.i.i55 = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %48 = load i8, ptr %arrayidx8.i.i55, align 1
  %conv9.i.i56 = zext i8 %48 to i32
  %or10.i.i57 = or i32 %or7.i.i54, %conv9.i.i56
  %add.i58 = add i32 %or10.i.i57, %add6
  store i32 %add.i58, ptr %size_dt_struct.i, align 4
  %49 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i12.i = zext i8 %49 to i32
  %shl.i13.i = shl nuw i32 %conv.i12.i, 24
  %50 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i15.i = zext i8 %50 to i32
  %shl3.i16.i = shl nuw nsw i32 %conv2.i15.i, 16
  %or.i17.i = or i32 %shl3.i16.i, %shl.i13.i
  %51 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i19.i = zext i8 %51 to i32
  %shl6.i20.i = shl nuw nsw i32 %conv5.i19.i, 8
  %or7.i21.i = or i32 %or.i17.i, %shl6.i20.i
  %52 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i23.i = zext i8 %52 to i32
  %or10.i24.i = or i32 %or7.i21.i, %conv9.i23.i
  %add3.i = add i32 %or10.i24.i, %add6
  store i32 %add3.i, ptr %off_dt_strings.i, align 4
  %53 = load ptr, ptr %prop, align 4
  store i32 3, ptr %53, align 4
  %54 = load ptr, ptr %prop, align 4
  %nameoff = getelementptr inbounds %struct.fdt_property, ptr %54, i32 0, i32 2
  store i32 %retval.0.i, ptr %nameoff, align 4
  %55 = load ptr, ptr %prop, align 4
  %len14 = getelementptr inbounds %struct.fdt_property, ptr %55, i32 0, i32 1
  store i32 %len, ptr %len14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then8, %fdt_find_add_string_.exit, %if.end10.i.i.i, %if.end6.i, %entry
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call, %entry ], [ %retval.0.i, %fdt_find_add_string_.exit ], [ %retval.0.i107.ph, %if.then11 ], [ %retval.0.i107.ph, %if.then8 ], [ -3, %if.end10.i.i.i ], [ -4, %if.end6.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_setprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef %val, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %prop_data = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop_data) #5
  store ptr inttoptr (i32 -1 to ptr), ptr %prop_data, align 4, !annotation !9
  %call = call i32 @fdt_setprop_placeholder(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr noundef nonnull %prop_data) #6
  %tobool.not = icmp ne i32 %call, 0
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %0 = load ptr, ptr %prop_data, align 4
  %call3 = tail call ptr @__memcpy(ptr noundef %0, ptr noundef %val, i32 noundef %len) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop_data) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_appendprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef %val, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %prop = alloca ptr, align 4
  %oldlen = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oldlen) #5
  store i32 -1, ptr %oldlen, align 4, !annotation !9
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #4
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup23

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup23, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #4
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup23

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call.i = call ptr @fdt_get_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %oldlen) #4
  store ptr %call.i, ptr %prop, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %cleanup.cont
  %8 = load i32, ptr %oldlen, align 4
  %add = add i32 %8, %len
  %data = getelementptr inbounds %struct.fdt_property, ptr %call.i, i32 0, i32 3
  %sub = add i32 %8, 3
  %and = and i32 %sub, -4
  %sub5 = add i32 %add, 3
  %and6 = and i32 %sub5, -4
  %call.i40 = call fastcc i32 @fdt_splice_(ptr noundef %fdt, ptr noundef %data, i32 noundef %and, i32 noundef %and6) #4
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %if.end10, label %cleanup23

if.end10:                                         ; preds = %if.then2
  %sub.i = sub i32 %and6, %and
  %9 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i.i43 = zext i8 %9 to i32
  %shl.i.i44 = shl nuw i32 %conv.i.i43, 24
  %10 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i.i46 = zext i8 %10 to i32
  %shl3.i.i47 = shl nuw nsw i32 %conv2.i.i46, 16
  %or.i.i48 = or i32 %shl3.i.i47, %shl.i.i44
  %11 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i.i50 = zext i8 %11 to i32
  %shl6.i.i51 = shl nuw nsw i32 %conv5.i.i50, 8
  %or7.i.i52 = or i32 %or.i.i48, %shl6.i.i51
  %12 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i.i54 = zext i8 %12 to i32
  %or10.i.i55 = or i32 %or7.i.i52, %conv9.i.i54
  %add.i = add i32 %or10.i.i55, %sub.i
  store i32 %add.i, ptr %size_dt_struct.i, align 4
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %13 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i12.i = zext i8 %13 to i32
  %shl.i13.i = shl nuw i32 %conv.i12.i, 24
  %arrayidx1.i14.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %14 = load i8, ptr %arrayidx1.i14.i, align 1
  %conv2.i15.i = zext i8 %14 to i32
  %shl3.i16.i = shl nuw nsw i32 %conv2.i15.i, 16
  %or.i17.i = or i32 %shl3.i16.i, %shl.i13.i
  %arrayidx4.i18.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %15 = load i8, ptr %arrayidx4.i18.i, align 1
  %conv5.i19.i = zext i8 %15 to i32
  %shl6.i20.i = shl nuw nsw i32 %conv5.i19.i, 8
  %or7.i21.i = or i32 %or.i17.i, %shl6.i20.i
  %arrayidx8.i22.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %16 = load i8, ptr %arrayidx8.i22.i, align 1
  %conv9.i23.i = zext i8 %16 to i32
  %or10.i24.i = or i32 %or7.i21.i, %conv9.i23.i
  %add3.i = add i32 %or10.i24.i, %sub.i
  store i32 %add3.i, ptr %off_dt_strings.i, align 4
  %len11 = getelementptr inbounds %struct.fdt_property, ptr %call.i, i32 0, i32 1
  store i32 %add, ptr %len11, align 4
  %17 = load i32, ptr %oldlen, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %17
  br label %cleanup23.sink.split

if.else:                                          ; preds = %cleanup.cont
  %call15 = call fastcc i32 @fdt_add_property_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr noundef nonnull %prop) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %cleanup23

if.end18:                                         ; preds = %if.else
  %18 = load ptr, ptr %prop, align 4
  %data19 = getelementptr inbounds %struct.fdt_property, ptr %18, i32 0, i32 3
  br label %cleanup23.sink.split

cleanup23.sink.split:                             ; preds = %if.end18, %if.end10
  %add.ptr.sink = phi ptr [ %add.ptr, %if.end10 ], [ %data19, %if.end18 ]
  %call14 = call ptr @__memcpy(ptr noundef %add.ptr.sink, ptr noundef %val, i32 noundef %len) #4
  br label %cleanup23

cleanup23:                                        ; preds = %cleanup23.sink.split, %if.else, %if.then2, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ %call15, %if.else ], [ %call.i40, %if.then2 ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ], [ 0, %cleanup23.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldlen) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #5
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_delprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  store i32 -1, ptr %len, align 4, !annotation !9
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #4
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup6

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup6, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #4
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup6

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call.i = call ptr @fdt_get_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %len) #4
  %tobool.not = icmp eq ptr %call.i, null
  %8 = load i32, ptr %len, align 4
  br i1 %tobool.not, label %cleanup6, label %if.end3

if.end3:                                          ; preds = %cleanup.cont
  %9 = add i32 %8, 15
  %add4 = and i32 %9, -4
  %call.i12 = call fastcc i32 @fdt_splice_(ptr noundef %fdt, ptr noundef nonnull %call.i, i32 noundef %add4, i32 noundef 0) #4
  %tobool.not.i13 = icmp eq i32 %call.i12, 0
  br i1 %tobool.not.i13, label %if.end.i, label %cleanup6

if.end.i:                                         ; preds = %if.end3
  %10 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i.i15 = zext i8 %10 to i32
  %shl.i.i16 = shl nuw i32 %conv.i.i15, 24
  %11 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i.i18 = zext i8 %11 to i32
  %shl3.i.i19 = shl nuw nsw i32 %conv2.i.i18, 16
  %or.i.i20 = or i32 %shl3.i.i19, %shl.i.i16
  %12 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i.i22 = zext i8 %12 to i32
  %shl6.i.i23 = shl nuw nsw i32 %conv5.i.i22, 8
  %or7.i.i24 = or i32 %or.i.i20, %shl6.i.i23
  %13 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i.i26 = zext i8 %13 to i32
  %or10.i.i27 = or i32 %or7.i.i24, %conv9.i.i26
  %add.i = sub i32 %or10.i.i27, %add4
  store i32 %add.i, ptr %size_dt_struct.i, align 4
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %14 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i12.i = zext i8 %14 to i32
  %shl.i13.i = shl nuw i32 %conv.i12.i, 24
  %arrayidx1.i14.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %15 = load i8, ptr %arrayidx1.i14.i, align 1
  %conv2.i15.i = zext i8 %15 to i32
  %shl3.i16.i = shl nuw nsw i32 %conv2.i15.i, 16
  %or.i17.i = or i32 %shl3.i16.i, %shl.i13.i
  %arrayidx4.i18.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %16 = load i8, ptr %arrayidx4.i18.i, align 1
  %conv5.i19.i = zext i8 %16 to i32
  %shl6.i20.i = shl nuw nsw i32 %conv5.i19.i, 8
  %or7.i21.i = or i32 %or.i17.i, %shl6.i20.i
  %arrayidx8.i22.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %17 = load i8, ptr %arrayidx8.i22.i, align 1
  %conv9.i23.i = zext i8 %17 to i32
  %or10.i24.i = or i32 %or7.i21.i, %conv9.i23.i
  %add3.i = sub i32 %or10.i24.i, %add4
  store i32 %add3.i, ptr %off_dt_strings.i, align 4
  br label %cleanup6

cleanup6:                                         ; preds = %if.end.i, %if.end3, %cleanup.cont, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ %call.i12, %if.end3 ], [ 0, %if.end.i ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ], [ %8, %cleanup.cont ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_add_subnode_namelen(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name, i32 noundef %namelen) local_unnamed_addr #0 align 64 {
entry:
  %nextoffset = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset) #5
  store i32 -1, ptr %nextoffset, align 4, !annotation !9
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #4
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup34

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup34, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #4
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup34

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call1 = tail call i32 @fdt_subnode_offset_namelen(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name, i32 noundef %namelen) #4
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %cleanup34, label %if.else

if.else:                                          ; preds = %cleanup.cont
  %cmp4.not = icmp eq i32 %call1, -1
  br i1 %cmp4.not, label %if.end7, label %cleanup34

if.end7:                                          ; preds = %if.else
  %call8 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef nonnull %nextoffset) #4
  %cmp10.not = icmp eq i32 %call8, 1
  br i1 %cmp10.not, label %do.body, label %cleanup34

do.body:                                          ; preds = %do.body, %if.end7
  %8 = load i32, ptr %nextoffset, align 4
  %call13 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %8, ptr noundef nonnull %nextoffset) #4
  %9 = add i32 %call13, -3
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %11 = load i8, ptr %off_dt_struct.i.i, align 1
  %conv.i.i.i = zext i8 %11 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 1
  %12 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %12 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 2
  %13 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %13 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 3
  %14 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %14 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %8
  %sub = add i32 %namelen, 4
  %and = and i32 %sub, -4
  %add19 = add i32 %and, 8
  %off_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %15 = load i8, ptr %off_dt_strings.i.i, align 1
  %conv.i.i.i79 = zext i8 %15 to i32
  %shl.i.i.i80 = shl nuw i32 %conv.i.i.i79, 24
  %arrayidx1.i.i.i81 = getelementptr i8, ptr %off_dt_strings.i.i, i32 1
  %16 = load i8, ptr %arrayidx1.i.i.i81, align 1
  %conv2.i.i.i82 = zext i8 %16 to i32
  %shl3.i.i.i83 = shl nuw nsw i32 %conv2.i.i.i82, 16
  %or.i.i.i84 = or i32 %shl3.i.i.i83, %shl.i.i.i80
  %arrayidx4.i.i.i85 = getelementptr i8, ptr %off_dt_strings.i.i, i32 2
  %17 = load i8, ptr %arrayidx4.i.i.i85, align 1
  %conv5.i.i.i86 = zext i8 %17 to i32
  %shl6.i.i.i87 = shl nuw nsw i32 %conv5.i.i.i86, 8
  %or7.i.i.i88 = or i32 %or.i.i.i84, %shl6.i.i.i87
  %arrayidx8.i.i.i89 = getelementptr i8, ptr %off_dt_strings.i.i, i32 3
  %18 = load i8, ptr %arrayidx8.i.i.i89, align 1
  %conv9.i.i.i90 = zext i8 %18 to i32
  %or10.i.i.i91 = or i32 %or7.i.i.i88, %conv9.i.i.i90
  %size_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %19 = load i8, ptr %size_dt_strings.i.i, align 1
  %conv.i3.i.i = zext i8 %19 to i32
  %shl.i4.i.i = shl nuw i32 %conv.i3.i.i, 24
  %arrayidx1.i5.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 1
  %20 = load i8, ptr %arrayidx1.i5.i.i, align 1
  %conv2.i6.i.i = zext i8 %20 to i32
  %shl3.i7.i.i = shl nuw nsw i32 %conv2.i6.i.i, 16
  %or.i8.i.i = or i32 %shl3.i7.i.i, %shl.i4.i.i
  %arrayidx4.i9.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 2
  %21 = load i8, ptr %arrayidx4.i9.i.i, align 1
  %conv5.i10.i.i = zext i8 %21 to i32
  %shl6.i11.i.i = shl nuw nsw i32 %conv5.i10.i.i, 8
  %or7.i12.i.i = or i32 %or.i8.i.i, %shl6.i11.i.i
  %arrayidx8.i13.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 3
  %22 = load i8, ptr %arrayidx8.i13.i.i, align 1
  %conv9.i14.i.i = zext i8 %22 to i32
  %or10.i15.i.i = or i32 %or7.i12.i.i, %conv9.i14.i.i
  %add.i.i = add i32 %or10.i15.i.i, %or10.i.i.i91
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %fdt to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp4.i = icmp ugt i32 %sub.ptr.sub.i, %add.i.i
  %cmp5.i = icmp ult ptr %add.ptr1.i.i, %fdt
  %or.cond = select i1 %cmp4.i, i1 true, i1 %cmp5.i
  br i1 %or.cond, label %cleanup34, label %if.end10.i

if.end10.i:                                       ; preds = %do.end
  %add11.i = add i32 %add.i.i, %add19
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %23 = load i8, ptr %totalsize.i, align 1
  %conv.i.i93 = zext i8 %23 to i32
  %shl.i.i94 = shl nuw i32 %conv.i.i93, 24
  %arrayidx1.i.i95 = getelementptr i8, ptr %totalsize.i, i32 1
  %24 = load i8, ptr %arrayidx1.i.i95, align 1
  %conv2.i.i96 = zext i8 %24 to i32
  %shl3.i.i97 = shl nuw nsw i32 %conv2.i.i96, 16
  %or.i.i98 = or i32 %shl3.i.i97, %shl.i.i94
  %arrayidx4.i.i99 = getelementptr i8, ptr %totalsize.i, i32 2
  %25 = load i8, ptr %arrayidx4.i.i99, align 1
  %conv5.i.i100 = zext i8 %25 to i32
  %shl6.i.i101 = shl nuw nsw i32 %conv5.i.i100, 8
  %or7.i.i102 = or i32 %or.i.i98, %shl6.i.i101
  %arrayidx8.i.i103 = getelementptr i8, ptr %totalsize.i, i32 3
  %26 = load i8, ptr %arrayidx8.i.i103, align 1
  %conv9.i.i104 = zext i8 %26 to i32
  %or10.i.i105 = or i32 %or7.i.i102, %conv9.i.i104
  %cmp13.i = icmp ugt i32 %add11.i, %or10.i.i105
  br i1 %cmp13.i, label %cleanup34, label %if.end22

if.end22:                                         ; preds = %if.end10.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %add19
  %add.ptr17.i = getelementptr i8, ptr %fdt, i32 %add.i.i
  %sub.ptr.lhs.cast19.i = ptrtoint ptr %add.ptr17.i to i32
  %sub.ptr.sub21.i = sub i32 %sub.ptr.lhs.cast19.i, %sub.ptr.lhs.cast.i
  %call22.i = call ptr @__memmove(ptr noundef %add.ptr.i, ptr noundef %add.ptr1.i.i, i32 noundef %sub.ptr.sub21.i) #4
  %27 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i.i66 = zext i8 %27 to i32
  %shl.i.i67 = shl nuw i32 %conv.i.i66, 24
  %28 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i.i69 = zext i8 %28 to i32
  %shl3.i.i70 = shl nuw nsw i32 %conv2.i.i69, 16
  %or.i.i71 = or i32 %shl3.i.i70, %shl.i.i67
  %29 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i.i73 = zext i8 %29 to i32
  %shl6.i.i74 = shl nuw nsw i32 %conv5.i.i73, 8
  %or7.i.i75 = or i32 %or.i.i71, %shl6.i.i74
  %30 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i.i77 = zext i8 %30 to i32
  %or10.i.i78 = or i32 %or7.i.i75, %conv9.i.i77
  %add.i = add i32 %or10.i.i78, %add19
  store i32 %add.i, ptr %size_dt_struct.i, align 4
  %31 = load i8, ptr %off_dt_strings.i.i, align 1
  %conv.i12.i = zext i8 %31 to i32
  %shl.i13.i = shl nuw i32 %conv.i12.i, 24
  %32 = load i8, ptr %arrayidx1.i.i.i81, align 1
  %conv2.i15.i = zext i8 %32 to i32
  %shl3.i16.i = shl nuw nsw i32 %conv2.i15.i, 16
  %or.i17.i = or i32 %shl3.i16.i, %shl.i13.i
  %33 = load i8, ptr %arrayidx4.i.i.i85, align 1
  %conv5.i19.i = zext i8 %33 to i32
  %shl6.i20.i = shl nuw nsw i32 %conv5.i19.i, 8
  %or7.i21.i = or i32 %or.i17.i, %shl6.i20.i
  %34 = load i8, ptr %arrayidx8.i.i.i89, align 1
  %conv9.i23.i = zext i8 %34 to i32
  %or10.i24.i = or i32 %or7.i21.i, %conv9.i23.i
  %add3.i = add i32 %or10.i24.i, %add19
  store i32 %add3.i, ptr %off_dt_strings.i.i, align 4
  store i32 1, ptr %add.ptr1.i.i, align 4
  %name24 = getelementptr inbounds %struct.fdt_node_header, ptr %add.ptr1.i.i, i32 0, i32 1
  %call29 = call ptr @__memset(ptr noundef %name24, i32 noundef 0, i32 noundef %and) #4
  %call32 = call ptr @__memcpy(ptr noundef %name24, ptr noundef %name, i32 noundef %namelen) #4
  %add.ptr33 = getelementptr i8, ptr %add.ptr.i, i32 -4
  store i32 2, ptr %add.ptr33, align 4
  br label %cleanup34

cleanup34:                                        ; preds = %if.end22, %if.end10.i, %do.end, %if.end7, %if.else, %cleanup.cont, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ %8, %if.end22 ], [ -2, %cleanup.cont ], [ %call1, %if.else ], [ -13, %if.end7 ], [ -3, %if.end10.i ], [ -4, %do.end ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset) #5
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_subnode_offset_namelen(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @__memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_add_subnode(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %call = tail call i32 @strlen(ptr noundef %name) #4
  %call1 = tail call i32 @fdt_add_subnode_namelen(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name, i32 noundef %call) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_del_node(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 align 64 {
entry:
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #4
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup7

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup7, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #4
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup7

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call1 = tail call i32 @fdt_node_end_offset_(ptr noundef %fdt, i32 noundef %nodeoffset) #4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %cleanup7, label %if.end4

if.end4:                                          ; preds = %cleanup.cont
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %8 = load i8, ptr %off_dt_struct.i.i, align 1
  %conv.i.i.i = zext i8 %8 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 1
  %9 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %9 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 2
  %10 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %10 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 3
  %11 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %11 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %nodeoffset
  %sub = sub i32 %call1, %nodeoffset
  %call.i = tail call fastcc i32 @fdt_splice_(ptr noundef %fdt, ptr noundef %add.ptr1.i.i, i32 noundef %sub, i32 noundef 0) #4
  %tobool.not.i15 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i15, label %if.end.i, label %cleanup7

if.end.i:                                         ; preds = %if.end4
  %12 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i.i17 = zext i8 %12 to i32
  %shl.i.i18 = shl nuw i32 %conv.i.i17, 24
  %13 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i.i20 = zext i8 %13 to i32
  %shl3.i.i21 = shl nuw nsw i32 %conv2.i.i20, 16
  %or.i.i22 = or i32 %shl3.i.i21, %shl.i.i18
  %14 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i.i24 = zext i8 %14 to i32
  %shl6.i.i25 = shl nuw nsw i32 %conv5.i.i24, 8
  %or7.i.i26 = or i32 %or.i.i22, %shl6.i.i25
  %15 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i.i28 = zext i8 %15 to i32
  %or10.i.i29 = or i32 %or7.i.i26, %conv9.i.i28
  %add.i = sub i32 %or10.i.i29, %sub
  store i32 %add.i, ptr %size_dt_struct.i, align 4
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %16 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i12.i = zext i8 %16 to i32
  %shl.i13.i = shl nuw i32 %conv.i12.i, 24
  %arrayidx1.i14.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %17 = load i8, ptr %arrayidx1.i14.i, align 1
  %conv2.i15.i = zext i8 %17 to i32
  %shl3.i16.i = shl nuw nsw i32 %conv2.i15.i, 16
  %or.i17.i = or i32 %shl3.i16.i, %shl.i13.i
  %arrayidx4.i18.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %18 = load i8, ptr %arrayidx4.i18.i, align 1
  %conv5.i19.i = zext i8 %18 to i32
  %shl6.i20.i = shl nuw nsw i32 %conv5.i19.i, 8
  %or7.i21.i = or i32 %or.i17.i, %shl6.i20.i
  %arrayidx8.i22.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %19 = load i8, ptr %arrayidx8.i22.i, align 1
  %conv9.i23.i = zext i8 %19 to i32
  %or10.i24.i = or i32 %or7.i21.i, %conv9.i23.i
  %add3.i = sub i32 %or10.i24.i, %sub
  store i32 %add3.i, ptr %off_dt_strings.i, align 4
  br label %cleanup7

cleanup7:                                         ; preds = %if.end.i, %if.end4, %cleanup.cont, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ %call1, %cleanup.cont ], [ %call.i, %if.end4 ], [ 0, %if.end.i ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_node_end_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_open_into(ptr noundef %fdt, ptr noundef %buf, i32 noundef %bufsize) local_unnamed_addr #0 align 64 {
entry:
  %struct_size = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %struct_size) #5
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
  %add.ptr = getelementptr i8, ptr %fdt, i32 %or10.i
  %call1 = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #4
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %cleanup50, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %call2 = tail call i32 @fdt_num_mem_rsv(ptr noundef %fdt) #4
  %add = shl i32 %call2, 4
  %mul = add i32 %add, 16
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %4 = load i8, ptr %version, align 1
  %conv.i97 = zext i8 %4 to i32
  %shl.i98 = shl nuw i32 %conv.i97, 24
  %arrayidx1.i99 = getelementptr i8, ptr %version, i32 1
  %5 = load i8, ptr %arrayidx1.i99, align 1
  %conv2.i100 = zext i8 %5 to i32
  %shl3.i101 = shl nuw nsw i32 %conv2.i100, 16
  %or.i102 = or i32 %shl3.i101, %shl.i98
  %arrayidx4.i103 = getelementptr i8, ptr %version, i32 2
  %6 = load i8, ptr %arrayidx4.i103, align 1
  %conv5.i104 = zext i8 %6 to i32
  %shl6.i105 = shl nuw nsw i32 %conv5.i104, 8
  %or7.i106 = or i32 %or.i102, %shl6.i105
  %arrayidx8.i107 = getelementptr i8, ptr %version, i32 3
  %7 = load i8, ptr %arrayidx8.i107, align 1
  %conv9.i108 = zext i8 %7 to i32
  %or10.i109 = or i32 %or7.i106, %conv9.i108
  %cmp5 = icmp ugt i32 %or10.i109, 16
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %cleanup.cont
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %8 = load i8, ptr %size_dt_struct, align 1
  %conv.i110 = zext i8 %8 to i32
  %shl.i111 = shl nuw i32 %conv.i110, 24
  %arrayidx1.i112 = getelementptr i8, ptr %size_dt_struct, i32 1
  %9 = load i8, ptr %arrayidx1.i112, align 1
  %conv2.i113 = zext i8 %9 to i32
  %shl3.i114 = shl nuw nsw i32 %conv2.i113, 16
  %or.i115 = or i32 %shl3.i114, %shl.i111
  %arrayidx4.i116 = getelementptr i8, ptr %size_dt_struct, i32 2
  %10 = load i8, ptr %arrayidx4.i116, align 1
  %conv5.i117 = zext i8 %10 to i32
  %shl6.i118 = shl nuw nsw i32 %conv5.i117, 8
  %or7.i119 = or i32 %or.i115, %shl6.i118
  %arrayidx8.i120 = getelementptr i8, ptr %size_dt_struct, i32 3
  %11 = load i8, ptr %arrayidx8.i120, align 1
  %conv9.i121 = zext i8 %11 to i32
  %or10.i122 = or i32 %or7.i119, %conv9.i121
  store i32 %or10.i122, ptr %struct_size, align 4
  br label %if.end19

if.else:                                          ; preds = %cleanup.cont
  %cmp10 = icmp eq i32 %or10.i109, 16
  br i1 %cmp10, label %if.then11, label %cleanup50

if.then11:                                        ; preds = %if.else
  store i32 0, ptr %struct_size, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then11
  %12 = phi i32 [ 0, %if.then11 ], [ %13, %while.cond ]
  %call12 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %12, ptr noundef nonnull %struct_size) #4
  %cmp13.not = icmp eq i32 %call12, 9
  %13 = load i32, ptr %struct_size, align 4
  br i1 %cmp13.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %cmp14 = icmp slt i32 %13, 0
  br i1 %cmp14, label %cleanup50, label %if.end19

if.end19:                                         ; preds = %while.end, %if.then6
  %14 = phi i32 [ %13, %while.end ], [ %or10.i122, %if.then6 ]
  %call22 = call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef %mul, i32 noundef %14) #6
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end19
  %call24 = call i32 @fdt_move(ptr noundef %fdt, ptr noundef %buf, i32 noundef %bufsize) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %cleanup50

if.end27:                                         ; preds = %if.then23
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 5
  store i32 17, ptr %version.i, align 4
  %15 = load i32, ptr %struct_size, align 4
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 9
  store i32 %15, ptr %size_dt_struct.i, align 4
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 1
  store i32 %bufsize, ptr %totalsize.i, align 4
  br label %cleanup50

if.end28:                                         ; preds = %if.end19
  %add29 = add i32 %add, 56
  %add30 = add i32 %add29, %14
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %16 = load i8, ptr %size_dt_strings, align 1
  %conv.i136 = zext i8 %16 to i32
  %shl.i137 = shl nuw i32 %conv.i136, 24
  %arrayidx1.i138 = getelementptr i8, ptr %size_dt_strings, i32 1
  %17 = load i8, ptr %arrayidx1.i138, align 1
  %conv2.i139 = zext i8 %17 to i32
  %shl3.i140 = shl nuw nsw i32 %conv2.i139, 16
  %or.i141 = or i32 %shl3.i140, %shl.i137
  %arrayidx4.i142 = getelementptr i8, ptr %size_dt_strings, i32 2
  %18 = load i8, ptr %arrayidx4.i142, align 1
  %conv5.i143 = zext i8 %18 to i32
  %shl6.i144 = shl nuw nsw i32 %conv5.i143, 8
  %or7.i145 = or i32 %or.i141, %shl6.i144
  %arrayidx8.i146 = getelementptr i8, ptr %size_dt_strings, i32 3
  %19 = load i8, ptr %arrayidx8.i146, align 1
  %conv9.i147 = zext i8 %19 to i32
  %or10.i148 = or i32 %or7.i145, %conv9.i147
  %add32 = add i32 %add30, %or10.i148
  %cmp33 = icmp sgt i32 %add32, %bufsize
  br i1 %cmp33, label %cleanup50, label %if.end35

if.end35:                                         ; preds = %if.end28
  %add.ptr36 = getelementptr i8, ptr %buf, i32 %add32
  %cmp37 = icmp ugt ptr %add.ptr36, %fdt
  %cmp38 = icmp ugt ptr %add.ptr, %buf
  %or.cond = select i1 %cmp37, i1 %cmp38, i1 false
  br i1 %or.cond, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.end35
  %add.ptr40 = getelementptr i8, ptr %add.ptr, i32 %add32
  %add.ptr41 = getelementptr i8, ptr %buf, i32 %bufsize
  %cmp42 = icmp ugt ptr %add.ptr40, %add.ptr41
  br i1 %cmp42, label %cleanup50, label %if.end45

if.end45:                                         ; preds = %if.then39, %if.end35
  %tmp.0 = phi ptr [ %add.ptr, %if.then39 ], [ %buf, %if.end35 ]
  %add.ptr.i = getelementptr i8, ptr %tmp.0, i32 40
  %off_mem_rsvmap.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %20 = load i8, ptr %off_mem_rsvmap.i, align 1
  %conv.i.i = zext i8 %20 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 1
  %21 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %21 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 2
  %22 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %22 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 3
  %23 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %23 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %add.ptr2.i = getelementptr i8, ptr %fdt, i32 %or10.i.i
  %call3.i = call ptr @__memmove(ptr noundef %add.ptr.i, ptr noundef %add.ptr2.i, i32 noundef %mul) #4
  %off_mem_rsvmap.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i32 0, i32 4
  store i32 40, ptr %off_mem_rsvmap.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %tmp.0, i32 %add29
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %24 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i34.i = zext i8 %24 to i32
  %shl.i35.i = shl nuw i32 %conv.i34.i, 24
  %arrayidx1.i36.i = getelementptr i8, ptr %off_dt_struct.i, i32 1
  %25 = load i8, ptr %arrayidx1.i36.i, align 1
  %conv2.i37.i = zext i8 %25 to i32
  %shl3.i38.i = shl nuw nsw i32 %conv2.i37.i, 16
  %or.i39.i = or i32 %shl3.i38.i, %shl.i35.i
  %arrayidx4.i40.i = getelementptr i8, ptr %off_dt_struct.i, i32 2
  %26 = load i8, ptr %arrayidx4.i40.i, align 1
  %conv5.i41.i = zext i8 %26 to i32
  %shl6.i42.i = shl nuw nsw i32 %conv5.i41.i, 8
  %or7.i43.i = or i32 %or.i39.i, %shl6.i42.i
  %arrayidx8.i44.i = getelementptr i8, ptr %off_dt_struct.i, i32 3
  %27 = load i8, ptr %arrayidx8.i44.i, align 1
  %conv9.i45.i = zext i8 %27 to i32
  %or10.i46.i = or i32 %or7.i43.i, %conv9.i45.i
  %add.ptr6.i = getelementptr i8, ptr %fdt, i32 %or10.i46.i
  %call7.i = call ptr @__memmove(ptr noundef %add.ptr4.i, ptr noundef %add.ptr6.i, i32 noundef %14) #4
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i32 0, i32 2
  store i32 %add29, ptr %off_dt_struct.i.i, align 4
  %size_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i32 0, i32 9
  store i32 %14, ptr %size_dt_struct.i.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %tmp.0, i32 %add30
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %28 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i47.i = zext i8 %28 to i32
  %shl.i48.i = shl nuw i32 %conv.i47.i, 24
  %arrayidx1.i49.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %29 = load i8, ptr %arrayidx1.i49.i, align 1
  %conv2.i50.i = zext i8 %29 to i32
  %shl3.i51.i = shl nuw nsw i32 %conv2.i50.i, 16
  %or.i52.i = or i32 %shl3.i51.i, %shl.i48.i
  %arrayidx4.i53.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %30 = load i8, ptr %arrayidx4.i53.i, align 1
  %conv5.i54.i = zext i8 %30 to i32
  %shl6.i55.i = shl nuw nsw i32 %conv5.i54.i, 8
  %or7.i56.i = or i32 %or.i52.i, %shl6.i55.i
  %arrayidx8.i57.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %31 = load i8, ptr %arrayidx8.i57.i, align 1
  %conv9.i58.i = zext i8 %31 to i32
  %or10.i59.i = or i32 %or7.i56.i, %conv9.i58.i
  %add.ptr10.i = getelementptr i8, ptr %fdt, i32 %or10.i59.i
  %call11.i = call ptr @__memmove(ptr noundef %add.ptr8.i, ptr noundef %add.ptr10.i, i32 noundef %or10.i148) #4
  %off_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i32 0, i32 3
  store i32 %add30, ptr %off_dt_strings.i.i, align 4
  %32 = load i8, ptr %size_dt_strings, align 1
  %conv.i60.i = zext i8 %32 to i32
  %shl.i61.i = shl nuw i32 %conv.i60.i, 24
  %33 = load i8, ptr %arrayidx1.i138, align 1
  %conv2.i63.i = zext i8 %33 to i32
  %shl3.i64.i = shl nuw nsw i32 %conv2.i63.i, 16
  %or.i65.i = or i32 %shl3.i64.i, %shl.i61.i
  %34 = load i8, ptr %arrayidx4.i142, align 1
  %conv5.i67.i = zext i8 %34 to i32
  %shl6.i68.i = shl nuw nsw i32 %conv5.i67.i, 8
  %or7.i69.i = or i32 %or.i65.i, %shl6.i68.i
  %35 = load i8, ptr %arrayidx8.i146, align 1
  %conv9.i71.i = zext i8 %35 to i32
  %or10.i72.i = or i32 %or7.i69.i, %conv9.i71.i
  %size_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i32 0, i32 8
  store i32 %or10.i72.i, ptr %size_dt_strings.i.i, align 4
  %call48 = call ptr @__memmove(ptr noundef %buf, ptr noundef %tmp.0, i32 noundef %add32) #4
  store i32 -804389139, ptr %buf, align 4
  %totalsize.i162 = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 1
  store i32 %bufsize, ptr %totalsize.i162, align 4
  %version.i163 = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 5
  store i32 17, ptr %version.i163, align 4
  %last_comp_version.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 6
  store i32 16, ptr %last_comp_version.i, align 4
  %boot_cpuid_phys = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 7
  %36 = load i8, ptr %boot_cpuid_phys, align 1
  %conv.i164 = zext i8 %36 to i32
  %shl.i165 = shl nuw i32 %conv.i164, 24
  %arrayidx1.i166 = getelementptr i8, ptr %boot_cpuid_phys, i32 1
  %37 = load i8, ptr %arrayidx1.i166, align 1
  %conv2.i167 = zext i8 %37 to i32
  %shl3.i168 = shl nuw nsw i32 %conv2.i167, 16
  %or.i169 = or i32 %shl3.i168, %shl.i165
  %arrayidx4.i170 = getelementptr i8, ptr %boot_cpuid_phys, i32 2
  %38 = load i8, ptr %arrayidx4.i170, align 1
  %conv5.i171 = zext i8 %38 to i32
  %shl6.i172 = shl nuw nsw i32 %conv5.i171, 8
  %or7.i173 = or i32 %or.i169, %shl6.i172
  %arrayidx8.i174 = getelementptr i8, ptr %boot_cpuid_phys, i32 3
  %39 = load i8, ptr %arrayidx8.i174, align 1
  %conv9.i175 = zext i8 %39 to i32
  %or10.i176 = or i32 %or7.i173, %conv9.i175
  %boot_cpuid_phys.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 7
  store i32 %or10.i176, ptr %boot_cpuid_phys.i, align 4
  br label %cleanup50

cleanup50:                                        ; preds = %if.end45, %if.then39, %if.end28, %if.end27, %if.then23, %while.end, %if.else, %entry
  %retval.1 = phi i32 [ 0, %if.end27 ], [ 0, %if.end45 ], [ %call1, %entry ], [ %13, %while.end ], [ -10, %if.else ], [ %call24, %if.then23 ], [ -3, %if.end28 ], [ -3, %if.then39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %struct_size) #5
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_ro_probe_(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync)
define internal fastcc i32 @fdt_blocks_misordered_(ptr nocapture noundef readonly %fdt, i32 noundef %mem_rsv_size, i32 noundef %struct_size) unnamed_addr #3 align 64 {
entry:
  %off_mem_rsvmap = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %0 = load i8, ptr %off_mem_rsvmap, align 1
  %conv.i = zext i8 %0 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %off_mem_rsvmap, i32 1
  %1 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %1 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %off_mem_rsvmap, i32 2
  %2 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %2 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %off_mem_rsvmap, i32 3
  %3 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %3 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp = icmp ult i32 %or10.i, 40
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %4 = load i8, ptr %off_dt_struct, align 1
  %conv.i24 = zext i8 %4 to i32
  %shl.i25 = shl nuw i32 %conv.i24, 24
  %arrayidx1.i26 = getelementptr i8, ptr %off_dt_struct, i32 1
  %5 = load i8, ptr %arrayidx1.i26, align 1
  %conv2.i27 = zext i8 %5 to i32
  %shl3.i28 = shl nuw nsw i32 %conv2.i27, 16
  %or.i29 = or i32 %shl3.i28, %shl.i25
  %arrayidx4.i30 = getelementptr i8, ptr %off_dt_struct, i32 2
  %6 = load i8, ptr %arrayidx4.i30, align 1
  %conv5.i31 = zext i8 %6 to i32
  %shl6.i32 = shl nuw nsw i32 %conv5.i31, 8
  %or7.i33 = or i32 %or.i29, %shl6.i32
  %arrayidx8.i34 = getelementptr i8, ptr %off_dt_struct, i32 3
  %7 = load i8, ptr %arrayidx8.i34, align 1
  %conv9.i35 = zext i8 %7 to i32
  %or10.i36 = or i32 %or7.i33, %conv9.i35
  %add = add i32 %or10.i, %mem_rsv_size
  %cmp4 = icmp ult i32 %or10.i36, %add
  br i1 %cmp4, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %off_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %8 = load i8, ptr %off_dt_strings, align 1
  %conv.i50 = zext i8 %8 to i32
  %shl.i51 = shl nuw i32 %conv.i50, 24
  %arrayidx1.i52 = getelementptr i8, ptr %off_dt_strings, i32 1
  %9 = load i8, ptr %arrayidx1.i52, align 1
  %conv2.i53 = zext i8 %9 to i32
  %shl3.i54 = shl nuw nsw i32 %conv2.i53, 16
  %or.i55 = or i32 %shl3.i54, %shl.i51
  %arrayidx4.i56 = getelementptr i8, ptr %off_dt_strings, i32 2
  %10 = load i8, ptr %arrayidx4.i56, align 1
  %conv5.i57 = zext i8 %10 to i32
  %shl6.i58 = shl nuw nsw i32 %conv5.i57, 8
  %or7.i59 = or i32 %or.i55, %shl6.i58
  %arrayidx8.i60 = getelementptr i8, ptr %off_dt_strings, i32 3
  %11 = load i8, ptr %arrayidx8.i60, align 1
  %conv9.i61 = zext i8 %11 to i32
  %or10.i62 = or i32 %or7.i59, %conv9.i61
  %add9 = add i32 %or10.i36, %struct_size
  %cmp10 = icmp ult i32 %or10.i62, %add9
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false5
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %12 = load i8, ptr %totalsize, align 1
  %conv.i76 = zext i8 %12 to i32
  %shl.i77 = shl nuw i32 %conv.i76, 24
  %arrayidx1.i78 = getelementptr i8, ptr %totalsize, i32 1
  %13 = load i8, ptr %arrayidx1.i78, align 1
  %conv2.i79 = zext i8 %13 to i32
  %shl3.i80 = shl nuw nsw i32 %conv2.i79, 16
  %or.i81 = or i32 %shl3.i80, %shl.i77
  %arrayidx4.i82 = getelementptr i8, ptr %totalsize, i32 2
  %14 = load i8, ptr %arrayidx4.i82, align 1
  %conv5.i83 = zext i8 %14 to i32
  %shl6.i84 = shl nuw nsw i32 %conv5.i83, 8
  %or7.i85 = or i32 %or.i81, %shl6.i84
  %arrayidx8.i86 = getelementptr i8, ptr %totalsize, i32 3
  %15 = load i8, ptr %arrayidx8.i86, align 1
  %conv9.i87 = zext i8 %15 to i32
  %or10.i88 = or i32 %or7.i85, %conv9.i87
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %16 = load i8, ptr %size_dt_strings, align 1
  %conv.i102 = zext i8 %16 to i32
  %shl.i103 = shl nuw i32 %conv.i102, 24
  %arrayidx1.i104 = getelementptr i8, ptr %size_dt_strings, i32 1
  %17 = load i8, ptr %arrayidx1.i104, align 1
  %conv2.i105 = zext i8 %17 to i32
  %shl3.i106 = shl nuw nsw i32 %conv2.i105, 16
  %or.i107 = or i32 %shl3.i106, %shl.i103
  %arrayidx4.i108 = getelementptr i8, ptr %size_dt_strings, i32 2
  %18 = load i8, ptr %arrayidx4.i108, align 1
  %conv5.i109 = zext i8 %18 to i32
  %shl6.i110 = shl nuw nsw i32 %conv5.i109, 8
  %or7.i111 = or i32 %or.i107, %shl6.i110
  %arrayidx8.i112 = getelementptr i8, ptr %size_dt_strings, i32 3
  %19 = load i8, ptr %arrayidx8.i112, align 1
  %conv9.i113 = zext i8 %19 to i32
  %or10.i114 = or i32 %or7.i111, %conv9.i113
  %add15 = add i32 %or10.i114, %or10.i62
  %cmp16 = icmp ult i32 %or10.i88, %add15
  %phi.cast = zext i1 %cmp16 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false5, %lor.lhs.false, %entry
  %20 = phi i32 [ 1, %lor.lhs.false5 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @__memmove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_pack(ptr noundef %fdt) local_unnamed_addr #0 align 64 {
entry:
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #4
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %cleanup5

cleanup.cont.i:                                   ; preds = %entry
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
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup5, label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %4 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %4 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %5 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %5 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %6 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %6 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %7 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %7 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #4
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %cleanup5

if.end12.i:                                       ; preds = %if.end8.i
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i
  %call1 = tail call i32 @fdt_num_mem_rsv(ptr noundef %fdt) #4
  %add = shl i32 %call1, 4
  %mul = add i32 %add, 16
  %8 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %9 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i = zext i8 %9 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %10 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i = zext i8 %10 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %11 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i = zext i8 %11 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %12 = load i8, ptr %size_dt_strings, align 1
  %conv.i13 = zext i8 %12 to i32
  %shl.i14 = shl nuw i32 %conv.i13, 24
  %arrayidx1.i15 = getelementptr i8, ptr %size_dt_strings, i32 1
  %13 = load i8, ptr %arrayidx1.i15, align 1
  %conv2.i16 = zext i8 %13 to i32
  %shl3.i17 = shl nuw nsw i32 %conv2.i16, 16
  %or.i18 = or i32 %shl3.i17, %shl.i14
  %arrayidx4.i19 = getelementptr i8, ptr %size_dt_strings, i32 2
  %14 = load i8, ptr %arrayidx4.i19, align 1
  %conv5.i20 = zext i8 %14 to i32
  %shl6.i21 = shl nuw nsw i32 %conv5.i20, 8
  %or7.i22 = or i32 %or.i18, %shl6.i21
  %arrayidx8.i23 = getelementptr i8, ptr %size_dt_strings, i32 3
  %15 = load i8, ptr %arrayidx8.i23, align 1
  %conv9.i24 = zext i8 %15 to i32
  %or10.i25 = or i32 %or7.i22, %conv9.i24
  %add.i = add i32 %add, 56
  %add1.i = add i32 %or10.i, %add.i
  %add.ptr.i = getelementptr i8, ptr %fdt, i32 40
  %off_mem_rsvmap.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %16 = load i8, ptr %off_mem_rsvmap.i, align 1
  %conv.i.i26 = zext i8 %16 to i32
  %shl.i.i27 = shl nuw i32 %conv.i.i26, 24
  %arrayidx1.i.i28 = getelementptr i8, ptr %off_mem_rsvmap.i, i32 1
  %17 = load i8, ptr %arrayidx1.i.i28, align 1
  %conv2.i.i29 = zext i8 %17 to i32
  %shl3.i.i30 = shl nuw nsw i32 %conv2.i.i29, 16
  %or.i.i31 = or i32 %shl3.i.i30, %shl.i.i27
  %arrayidx4.i.i32 = getelementptr i8, ptr %off_mem_rsvmap.i, i32 2
  %18 = load i8, ptr %arrayidx4.i.i32, align 1
  %conv5.i.i33 = zext i8 %18 to i32
  %shl6.i.i34 = shl nuw nsw i32 %conv5.i.i33, 8
  %or7.i.i35 = or i32 %or.i.i31, %shl6.i.i34
  %arrayidx8.i.i36 = getelementptr i8, ptr %off_mem_rsvmap.i, i32 3
  %19 = load i8, ptr %arrayidx8.i.i36, align 1
  %conv9.i.i37 = zext i8 %19 to i32
  %or10.i.i38 = or i32 %or7.i.i35, %conv9.i.i37
  %add.ptr2.i = getelementptr i8, ptr %fdt, i32 %or10.i.i38
  %call3.i = tail call ptr @__memmove(ptr noundef %add.ptr.i, ptr noundef %add.ptr2.i, i32 noundef %mul) #4
  store i32 40, ptr %off_mem_rsvmap.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %fdt, i32 %add.i
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %20 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i34.i = zext i8 %20 to i32
  %shl.i35.i = shl nuw i32 %conv.i34.i, 24
  %arrayidx1.i36.i = getelementptr i8, ptr %off_dt_struct.i, i32 1
  %21 = load i8, ptr %arrayidx1.i36.i, align 1
  %conv2.i37.i = zext i8 %21 to i32
  %shl3.i38.i = shl nuw nsw i32 %conv2.i37.i, 16
  %or.i39.i = or i32 %shl3.i38.i, %shl.i35.i
  %arrayidx4.i40.i = getelementptr i8, ptr %off_dt_struct.i, i32 2
  %22 = load i8, ptr %arrayidx4.i40.i, align 1
  %conv5.i41.i = zext i8 %22 to i32
  %shl6.i42.i = shl nuw nsw i32 %conv5.i41.i, 8
  %or7.i43.i = or i32 %or.i39.i, %shl6.i42.i
  %arrayidx8.i44.i = getelementptr i8, ptr %off_dt_struct.i, i32 3
  %23 = load i8, ptr %arrayidx8.i44.i, align 1
  %conv9.i45.i = zext i8 %23 to i32
  %or10.i46.i = or i32 %or7.i43.i, %conv9.i45.i
  %add.ptr6.i = getelementptr i8, ptr %fdt, i32 %or10.i46.i
  %call7.i = tail call ptr @__memmove(ptr noundef %add.ptr4.i, ptr noundef %add.ptr6.i, i32 noundef %or10.i) #4
  store i32 %add.i, ptr %off_dt_struct.i, align 4
  store i32 %or10.i, ptr %size_dt_struct.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %fdt, i32 %add1.i
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %24 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i47.i = zext i8 %24 to i32
  %shl.i48.i = shl nuw i32 %conv.i47.i, 24
  %arrayidx1.i49.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %25 = load i8, ptr %arrayidx1.i49.i, align 1
  %conv2.i50.i = zext i8 %25 to i32
  %shl3.i51.i = shl nuw nsw i32 %conv2.i50.i, 16
  %or.i52.i = or i32 %shl3.i51.i, %shl.i48.i
  %arrayidx4.i53.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %26 = load i8, ptr %arrayidx4.i53.i, align 1
  %conv5.i54.i = zext i8 %26 to i32
  %shl6.i55.i = shl nuw nsw i32 %conv5.i54.i, 8
  %or7.i56.i = or i32 %or.i52.i, %shl6.i55.i
  %arrayidx8.i57.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %27 = load i8, ptr %arrayidx8.i57.i, align 1
  %conv9.i58.i = zext i8 %27 to i32
  %or10.i59.i = or i32 %or7.i56.i, %conv9.i58.i
  %add.ptr10.i = getelementptr i8, ptr %fdt, i32 %or10.i59.i
  %call11.i = tail call ptr @__memmove(ptr noundef %add.ptr8.i, ptr noundef %add.ptr10.i, i32 noundef %or10.i25) #4
  store i32 %add1.i, ptr %off_dt_strings.i, align 4
  %28 = load i8, ptr %size_dt_strings, align 1
  %conv.i60.i = zext i8 %28 to i32
  %shl.i61.i = shl nuw i32 %conv.i60.i, 24
  %29 = load i8, ptr %arrayidx1.i15, align 1
  %conv2.i63.i = zext i8 %29 to i32
  %shl3.i64.i = shl nuw nsw i32 %conv2.i63.i, 16
  %or.i65.i = or i32 %shl3.i64.i, %shl.i61.i
  %30 = load i8, ptr %arrayidx4.i19, align 1
  %conv5.i67.i = zext i8 %30 to i32
  %shl6.i68.i = shl nuw nsw i32 %conv5.i67.i, 8
  %or7.i69.i = or i32 %or.i65.i, %shl6.i68.i
  %31 = load i8, ptr %arrayidx8.i23, align 1
  %conv9.i71.i = zext i8 %31 to i32
  %or10.i72.i = or i32 %or7.i69.i, %conv9.i71.i
  store i32 %or10.i72.i, ptr %size_dt_strings, align 4
  %conv.i3.i = zext i8 %28 to i32
  %shl.i4.i = shl nuw i32 %conv.i3.i, 24
  %conv2.i6.i = zext i8 %29 to i32
  %shl3.i7.i = shl nuw nsw i32 %conv2.i6.i, 16
  %or.i8.i = or i32 %shl3.i7.i, %shl.i4.i
  %conv5.i10.i = zext i8 %30 to i32
  %shl6.i11.i = shl nuw nsw i32 %conv5.i10.i, 8
  %or7.i12.i = or i32 %or.i8.i, %shl6.i11.i
  %conv9.i14.i = zext i8 %31 to i32
  %or10.i15.i = or i32 %or7.i12.i, %conv9.i14.i
  %add.i54 = add i32 %or10.i15.i, %add1.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  store i32 %add.i54, ptr %totalsize.i, align 4
  br label %cleanup5

cleanup5:                                         ; preds = %cleanup.cont, %if.end8.i, %cleanup.cont.i, %entry
  %retval.1 = phi i32 [ 0, %cleanup.cont ], [ -12, %if.end8.i ], [ -10, %cleanup.cont.i ], [ %call1.i, %entry ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc i32 @fdt_splice_(ptr noundef %fdt, ptr noundef %splicepoint, i32 noundef %oldlen, i32 noundef %newlen) unnamed_addr #0 align 64 {
entry:
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %0 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %size_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %4 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i3.i = zext i8 %4 to i32
  %shl.i4.i = shl nuw i32 %conv.i3.i, 24
  %arrayidx1.i5.i = getelementptr i8, ptr %size_dt_strings.i, i32 1
  %5 = load i8, ptr %arrayidx1.i5.i, align 1
  %conv2.i6.i = zext i8 %5 to i32
  %shl3.i7.i = shl nuw nsw i32 %conv2.i6.i, 16
  %or.i8.i = or i32 %shl3.i7.i, %shl.i4.i
  %arrayidx4.i9.i = getelementptr i8, ptr %size_dt_strings.i, i32 2
  %6 = load i8, ptr %arrayidx4.i9.i, align 1
  %conv5.i10.i = zext i8 %6 to i32
  %shl6.i11.i = shl nuw nsw i32 %conv5.i10.i, 8
  %or7.i12.i = or i32 %or.i8.i, %shl6.i11.i
  %arrayidx8.i13.i = getelementptr i8, ptr %size_dt_strings.i, i32 3
  %7 = load i8, ptr %arrayidx8.i13.i, align 1
  %conv9.i14.i = zext i8 %7 to i32
  %or10.i15.i = or i32 %or7.i12.i, %conv9.i14.i
  %add.i = add i32 %or10.i15.i, %or10.i.i
  %cmp = icmp slt i32 %oldlen, 0
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %splicepoint to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %fdt to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add i32 %sub.ptr.sub, %oldlen
  %cmp1 = icmp ult i32 %add, %sub.ptr.sub
  %cmp4 = icmp ugt i32 %add, %add.i
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp4
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp5 = icmp ult ptr %splicepoint, %fdt
  %add7 = add i32 %add.i, %newlen
  %cmp8 = icmp ult i32 %add7, %oldlen
  %or.cond46 = select i1 %cmp5, i1 true, i1 %cmp8
  br i1 %or.cond46, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end
  %sub = sub i32 %newlen, %oldlen
  %add11 = add i32 %sub, %add.i
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %8 = load i8, ptr %totalsize, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %totalsize, i32 1
  %9 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %9 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %totalsize, i32 2
  %10 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %10 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %totalsize, i32 3
  %11 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %11 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %cmp13 = icmp ugt i32 %add11, %or10.i
  br i1 %cmp13, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end10
  %add.ptr = getelementptr i8, ptr %splicepoint, i32 %newlen
  %add.ptr16 = getelementptr i8, ptr %splicepoint, i32 %oldlen
  %add.ptr17 = getelementptr i8, ptr %fdt, i32 %add.i
  %sub.ptr.lhs.cast19 = ptrtoint ptr %add.ptr17 to i32
  %sub.ptr.rhs.cast20 = ptrtoint ptr %add.ptr16 to i32
  %sub.ptr.sub21 = sub i32 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %call22 = tail call ptr @__memmove(ptr noundef %add.ptr, ptr noundef %add.ptr16, i32 noundef %sub.ptr.sub21) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10, %if.end, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -4, %lor.lhs.false ], [ -4, %entry ], [ -4, %if.end ], [ -3, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_check_node_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_find_string_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_get_property(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

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
