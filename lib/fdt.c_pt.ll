; ModuleID = '/llk/IR_all_yes/lib/fdt.c_pt.bc'
source_filename = "../lib/fdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 804389138, i64 3490578157]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 9]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 9]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 9]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 9]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fdt_ro_probe_(ptr noundef %fdt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %totalsize1 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %0 = ptrtoint ptr %totalsize1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %totalsize1, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %totalsize1, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %3 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %totalsize1, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %5 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %totalsize1, i32 3
  %6 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %7 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %8 = ptrtoint ptr %fdt to i32
  %and = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %entry
  %9 = ptrtoint ptr %fdt to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fdt, align 1
  %conv.i41 = zext i8 %10 to i32
  %shl.i42 = shl nuw i32 %conv.i41, 24
  %arrayidx1.i43 = getelementptr i8, ptr %fdt, i32 1
  %11 = ptrtoint ptr %arrayidx1.i43 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i43, align 1
  %conv2.i44 = zext i8 %12 to i32
  %shl3.i45 = shl nuw nsw i32 %conv2.i44, 16
  %or.i46 = or i32 %shl3.i45, %shl.i42
  %arrayidx4.i47 = getelementptr i8, ptr %fdt, i32 2
  %13 = ptrtoint ptr %arrayidx4.i47 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i47, align 1
  %conv5.i48 = zext i8 %14 to i32
  %shl6.i49 = shl nuw nsw i32 %conv5.i48, 8
  %or7.i50 = or i32 %or.i46, %shl6.i49
  %arrayidx8.i51 = getelementptr i8, ptr %fdt, i32 3
  %15 = ptrtoint ptr %arrayidx8.i51 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i51, align 1
  %conv9.i52 = zext i8 %16 to i32
  %or10.i53 = or i32 %or7.i50, %conv9.i52
  %17 = zext i32 %or10.i53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or10.i53, label %if.end4.cleanup_crit_edge [
    i32 -804389139, label %if.then6
    i32 804389138, label %if.then21
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %18 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %version, align 1
  %conv.i54 = zext i8 %19 to i32
  %shl.i55 = shl nuw i32 %conv.i54, 24
  %arrayidx1.i56 = getelementptr i8, ptr %version, i32 1
  %20 = ptrtoint ptr %arrayidx1.i56 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1.i56, align 1
  %conv2.i57 = zext i8 %21 to i32
  %shl3.i58 = shl nuw nsw i32 %conv2.i57, 16
  %or.i59 = or i32 %shl3.i58, %shl.i55
  %arrayidx4.i60 = getelementptr i8, ptr %version, i32 2
  %22 = ptrtoint ptr %arrayidx4.i60 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx4.i60, align 1
  %conv5.i61 = zext i8 %23 to i32
  %shl6.i62 = shl nuw nsw i32 %conv5.i61, 8
  %or7.i63 = or i32 %or.i59, %shl6.i62
  %arrayidx8.i64 = getelementptr i8, ptr %version, i32 3
  %24 = ptrtoint ptr %arrayidx8.i64 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx8.i64, align 1
  %conv9.i65 = zext i8 %25 to i32
  %or10.i66 = or i32 %or7.i63, %conv9.i65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or10.i66)
  %cmp10 = icmp ult i32 %or10.i66, 2
  br i1 %cmp10, label %if.then6.cleanup_crit_edge, label %if.end12

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.then6
  %last_comp_version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 6
  %26 = ptrtoint ptr %last_comp_version to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %last_comp_version, align 1
  %conv.i67 = zext i8 %27 to i32
  %shl.i68 = shl nuw i32 %conv.i67, 24
  %arrayidx1.i69 = getelementptr i8, ptr %last_comp_version, i32 1
  %28 = ptrtoint ptr %arrayidx1.i69 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx1.i69, align 1
  %conv2.i70 = zext i8 %29 to i32
  %shl3.i71 = shl nuw nsw i32 %conv2.i70, 16
  %or.i72 = or i32 %shl3.i71, %shl.i68
  %arrayidx4.i73 = getelementptr i8, ptr %last_comp_version, i32 2
  %30 = ptrtoint ptr %arrayidx4.i73 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx4.i73, align 1
  %conv5.i74 = zext i8 %31 to i32
  %shl6.i75 = shl nuw nsw i32 %conv5.i74, 8
  %or7.i76 = or i32 %or.i72, %shl6.i75
  %arrayidx8.i77 = getelementptr i8, ptr %last_comp_version, i32 3
  %32 = ptrtoint ptr %arrayidx8.i77 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx8.i77, align 1
  %conv9.i78 = zext i8 %33 to i32
  %or10.i79 = or i32 %or7.i76, %conv9.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i79)
  %cmp14 = icmp ugt i32 %or10.i79, 17
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end12.if.end29_crit_edge

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %if.end4
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %34 = ptrtoint ptr %size_dt_struct to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %size_dt_struct, align 1
  %conv.i93 = zext i8 %35 to i32
  %shl.i94 = shl nuw i32 %conv.i93, 24
  %arrayidx1.i95 = getelementptr i8, ptr %size_dt_struct, i32 1
  %36 = ptrtoint ptr %arrayidx1.i95 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx1.i95, align 1
  %conv2.i96 = zext i8 %37 to i32
  %shl3.i97 = shl nuw nsw i32 %conv2.i96, 16
  %or.i98 = or i32 %shl3.i97, %shl.i94
  %arrayidx4.i99 = getelementptr i8, ptr %size_dt_struct, i32 2
  %38 = ptrtoint ptr %arrayidx4.i99 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx4.i99, align 1
  %conv5.i100 = zext i8 %39 to i32
  %shl6.i101 = shl nuw nsw i32 %conv5.i100, 8
  %or7.i102 = or i32 %or.i98, %shl6.i101
  %arrayidx8.i103 = getelementptr i8, ptr %size_dt_struct, i32 3
  %40 = ptrtoint ptr %arrayidx8.i103 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx8.i103, align 1
  %conv9.i104 = zext i8 %41 to i32
  %or10.i105 = or i32 %or7.i102, %conv9.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10.i105)
  %cmp24 = icmp eq i32 %or10.i105, 0
  br i1 %cmp24, label %if.then21.cleanup_crit_edge, label %if.then21.if.end29_crit_edge

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.then21.if.end29_crit_edge, %if.end12.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %or10.i)
  %cmp30 = icmp ult i32 %or10.i, 2147483647
  %call. = select i1 %cmp30, i32 %or10.i, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then21.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -10, %if.then6.cleanup_crit_edge ], [ -10, %if.end12.cleanup_crit_edge ], [ -7, %if.then21.cleanup_crit_edge ], [ %call., %if.end29 ], [ -9, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fdt_header_size_(i32 noundef %version) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %version)
  %cmp = icmp ult i32 %version, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %version)
  %cmp1 = icmp eq i32 %version, 2
  br i1 %cmp1, label %if.else.return_crit_edge, label %if.else3

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %version)
  %cmp4 = icmp ult i32 %version, 4
  br i1 %cmp4, label %if.else3.return_crit_edge, label %if.else6

if.else3.return_crit_edge:                        ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %version)
  %cmp7 = icmp ult i32 %version, 17
  %. = select i1 %cmp7, i32 36, i32 40
  br label %return

return:                                           ; preds = %if.else6, %if.else3.return_crit_edge, %if.else.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 28, %entry.return_crit_edge ], [ 32, %if.else.return_crit_edge ], [ 36, %if.else3.return_crit_edge ], [ %., %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fdt_header_size(ptr nocapture noundef readonly %fdt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %version, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %version, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %3 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %version, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %5 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %version, i32 3
  %6 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %7 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or10.i)
  %cmp.i = icmp ult i32 %or10.i, 2
  br i1 %cmp.i, label %entry.fdt_header_size_.exit_crit_edge, label %if.else.i

entry.fdt_header_size_.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_header_size_.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or10.i)
  %cmp1.i = icmp eq i32 %or10.i, 2
  br i1 %cmp1.i, label %if.else.i.fdt_header_size_.exit_crit_edge, label %if.else3.i

if.else.i.fdt_header_size_.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_header_size_.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %or10.i)
  %cmp4.i = icmp ult i32 %or10.i, 4
  br i1 %cmp4.i, label %if.else3.i.fdt_header_size_.exit_crit_edge, label %if.else6.i

if.else3.i.fdt_header_size_.exit_crit_edge:       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_header_size_.exit

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i)
  %cmp7.i = icmp ult i32 %or10.i, 17
  %..i = select i1 %cmp7.i, i32 36, i32 40
  br label %fdt_header_size_.exit

fdt_header_size_.exit:                            ; preds = %if.else6.i, %if.else3.i.fdt_header_size_.exit_crit_edge, %if.else.i.fdt_header_size_.exit_crit_edge, %entry.fdt_header_size_.exit_crit_edge
  %retval.0.i = phi i32 [ 28, %entry.fdt_header_size_.exit_crit_edge ], [ 32, %if.else.i.fdt_header_size_.exit_crit_edge ], [ 36, %if.else3.i.fdt_header_size_.exit_crit_edge ], [ %..i, %if.else6.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fdt_check_header(ptr noundef %fdt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %fdt to i32
  %and = and i32 %0, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %fdt to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fdt, align 1
  %conv.i = zext i8 %2 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %fdt, i32 1
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %4 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %fdt, i32 2
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %6 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %fdt, i32 3
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %8 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -804389139, i32 %or10.i)
  %cmp.not = icmp eq i32 %or10.i, -804389139
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %9 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %version, align 1
  %conv.i94 = zext i8 %10 to i32
  %shl.i95 = shl nuw i32 %conv.i94, 24
  %arrayidx1.i96 = getelementptr i8, ptr %version, i32 1
  %11 = ptrtoint ptr %arrayidx1.i96 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i96, align 1
  %conv2.i97 = zext i8 %12 to i32
  %shl3.i98 = shl nuw nsw i32 %conv2.i97, 16
  %or.i99 = or i32 %shl3.i98, %shl.i95
  %arrayidx4.i100 = getelementptr i8, ptr %version, i32 2
  %13 = ptrtoint ptr %arrayidx4.i100 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i100, align 1
  %conv5.i101 = zext i8 %14 to i32
  %shl6.i102 = shl nuw nsw i32 %conv5.i101, 8
  %or7.i103 = or i32 %or.i99, %shl6.i102
  %arrayidx8.i104 = getelementptr i8, ptr %version, i32 3
  %15 = ptrtoint ptr %arrayidx8.i104 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i104, align 1
  %conv9.i105 = zext i8 %16 to i32
  %or10.i106 = or i32 %or7.i103, %conv9.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or10.i106)
  %cmp6 = icmp ult i32 %or10.i106, 2
  br i1 %cmp6, label %if.end2.cleanup_crit_edge, label %lor.lhs.false

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  %last_comp_version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 6
  %17 = ptrtoint ptr %last_comp_version to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %last_comp_version, align 1
  %conv.i107 = zext i8 %18 to i32
  %shl.i108 = shl nuw i32 %conv.i107, 24
  %arrayidx1.i109 = getelementptr i8, ptr %last_comp_version, i32 1
  %19 = ptrtoint ptr %arrayidx1.i109 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.i109, align 1
  %conv2.i110 = zext i8 %20 to i32
  %shl3.i111 = shl nuw nsw i32 %conv2.i110, 16
  %or.i112 = or i32 %shl3.i111, %shl.i108
  %arrayidx4.i113 = getelementptr i8, ptr %last_comp_version, i32 2
  %21 = ptrtoint ptr %arrayidx4.i113 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i113, align 1
  %conv5.i114 = zext i8 %22 to i32
  %shl6.i115 = shl nuw nsw i32 %conv5.i114, 8
  %or7.i116 = or i32 %or.i112, %shl6.i115
  %arrayidx8.i117 = getelementptr i8, ptr %last_comp_version, i32 3
  %23 = ptrtoint ptr %arrayidx8.i117 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx8.i117, align 1
  %conv9.i118 = zext i8 %24 to i32
  %or10.i119 = or i32 %or7.i116, %conv9.i118
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i119)
  %cmp8 = icmp ugt i32 %or10.i119, 17
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i106, i32 %or10.i119)
  %cmp15 = icmp ult i32 %or10.i106, %or10.i119
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp15
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.else.i.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or10.i106)
  %cmp1.i.i = icmp eq i32 %or10.i106, 2
  br i1 %cmp1.i.i, label %if.else.i.i.fdt_header_size.exit_crit_edge, label %if.else3.i.i

if.else.i.i.fdt_header_size.exit_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_header_size.exit

if.else3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %or10.i106)
  %cmp4.i.i = icmp ult i32 %or10.i106, 4
  br i1 %cmp4.i.i, label %if.else3.i.i.fdt_header_size.exit_crit_edge, label %if.else6.i.i

if.else3.i.i.fdt_header_size.exit_crit_edge:      ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_header_size.exit

if.else6.i.i:                                     ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i106)
  %cmp7.i.i = icmp ult i32 %or10.i106, 17
  %..i.i = select i1 %cmp7.i.i, i32 36, i32 40
  br label %fdt_header_size.exit

fdt_header_size.exit:                             ; preds = %if.else6.i.i, %if.else3.i.i.fdt_header_size.exit_crit_edge, %if.else.i.i.fdt_header_size.exit_crit_edge
  %retval.0.i.i = phi i32 [ 32, %if.else.i.i.fdt_header_size.exit_crit_edge ], [ 36, %if.else3.i.i.fdt_header_size.exit_crit_edge ], [ %..i.i, %if.else6.i.i ]
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %25 = ptrtoint ptr %totalsize to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %totalsize, align 1
  %conv.i146 = zext i8 %26 to i32
  %shl.i147 = shl nuw i32 %conv.i146, 24
  %arrayidx1.i148 = getelementptr i8, ptr %totalsize, i32 1
  %27 = ptrtoint ptr %arrayidx1.i148 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i148, align 1
  %conv2.i149 = zext i8 %28 to i32
  %shl3.i150 = shl nuw nsw i32 %conv2.i149, 16
  %or.i151 = or i32 %shl3.i150, %shl.i147
  %arrayidx4.i152 = getelementptr i8, ptr %totalsize, i32 2
  %29 = ptrtoint ptr %arrayidx4.i152 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4.i152, align 1
  %conv5.i153 = zext i8 %30 to i32
  %shl6.i154 = shl nuw nsw i32 %conv5.i153, 8
  %or7.i155 = or i32 %or.i151, %shl6.i154
  %arrayidx8.i156 = getelementptr i8, ptr %totalsize, i32 3
  %31 = ptrtoint ptr %arrayidx8.i156 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx8.i156, align 1
  %conv9.i157 = zext i8 %32 to i32
  %or10.i158 = or i32 %or7.i155, %conv9.i157
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i158, i32 %retval.0.i.i)
  %cmp23 = icmp ult i32 %or10.i158, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10.i158)
  %cmp27 = icmp slt i32 %or10.i158, 0
  %or.cond336 = or i1 %cmp23, %cmp27
  br i1 %or.cond336, label %fdt_header_size.exit.cleanup_crit_edge, label %if.end29

fdt_header_size.exit.cleanup_crit_edge:           ; preds = %fdt_header_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %fdt_header_size.exit
  %off_mem_rsvmap = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %33 = ptrtoint ptr %off_mem_rsvmap to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %off_mem_rsvmap, align 1
  %conv.i185 = zext i8 %34 to i32
  %shl.i186 = shl nuw i32 %conv.i185, 24
  %arrayidx1.i187 = getelementptr i8, ptr %off_mem_rsvmap, i32 1
  %35 = ptrtoint ptr %arrayidx1.i187 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx1.i187, align 1
  %conv2.i188 = zext i8 %36 to i32
  %shl3.i189 = shl nuw nsw i32 %conv2.i188, 16
  %or.i190 = or i32 %shl3.i189, %shl.i186
  %arrayidx4.i191 = getelementptr i8, ptr %off_mem_rsvmap, i32 2
  %37 = ptrtoint ptr %arrayidx4.i191 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx4.i191, align 1
  %conv5.i192 = zext i8 %38 to i32
  %shl6.i193 = shl nuw nsw i32 %conv5.i192, 8
  %or7.i194 = or i32 %or.i190, %shl6.i193
  %arrayidx8.i195 = getelementptr i8, ptr %off_mem_rsvmap, i32 3
  %39 = ptrtoint ptr %arrayidx8.i195 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx8.i195, align 1
  %conv9.i196 = zext i8 %40 to i32
  %or10.i197 = or i32 %or7.i194, %conv9.i196
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i197, i32 %retval.0.i.i)
  %cmp.not.i = icmp ult i32 %or10.i197, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i197, i32 %or10.i158)
  %cmp1.i = icmp ugt i32 %or10.i197, %or10.i158
  %tobool34.not = or i1 %cmp.not.i, %cmp1.i
  br i1 %tobool34.not, label %if.end29.cleanup_crit_edge, label %if.end37

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i106)
  %cmp43 = icmp ult i32 %or10.i106, 17
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %41 = ptrtoint ptr %off_dt_struct to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %off_dt_struct, align 1
  %conv.i224 = zext i8 %42 to i32
  %shl.i225 = shl nuw i32 %conv.i224, 24
  %arrayidx1.i226 = getelementptr i8, ptr %off_dt_struct, i32 1
  %43 = ptrtoint ptr %arrayidx1.i226 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx1.i226, align 1
  %conv2.i227 = zext i8 %44 to i32
  %shl3.i228 = shl nuw nsw i32 %conv2.i227, 16
  %or.i229 = or i32 %shl3.i228, %shl.i225
  %arrayidx4.i230 = getelementptr i8, ptr %off_dt_struct, i32 2
  %45 = ptrtoint ptr %arrayidx4.i230 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx4.i230, align 1
  %conv5.i231 = zext i8 %46 to i32
  %shl6.i232 = shl nuw nsw i32 %conv5.i231, 8
  %or7.i233 = or i32 %or.i229, %shl6.i232
  %arrayidx8.i234 = getelementptr i8, ptr %off_dt_struct, i32 3
  %47 = ptrtoint ptr %arrayidx8.i234 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx8.i234, align 1
  %conv9.i235 = zext i8 %48 to i32
  %or10.i236 = or i32 %or7.i233, %conv9.i235
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i236, i32 %retval.0.i.i)
  %cmp.not.i237 = icmp ult i32 %or10.i236, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i236, i32 %or10.i158)
  %cmp1.i238 = icmp ugt i32 %or10.i236, %or10.i158
  %tobool49.not = or i1 %cmp.not.i237, %cmp1.i238
  br i1 %cmp43, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end37
  br i1 %tobool49.not, label %if.then44.cleanup_crit_edge, label %if.then44.if.end61_crit_edge

if.then44.if.end61_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end37
  br i1 %tobool49.not, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %arrayidx1.i268 = getelementptr i8, ptr %size_dt_struct, i32 1
  %49 = ptrtoint ptr %arrayidx1.i268 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx1.i268, align 1
  %conv2.i269 = zext i8 %50 to i32
  %shl3.i270 = shl nuw nsw i32 %conv2.i269, 16
  %51 = ptrtoint ptr %size_dt_struct to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %size_dt_struct, align 1
  %conv.i266 = zext i8 %52 to i32
  %shl.i267 = shl nuw i32 %conv.i266, 24
  %or.i271 = or i32 %shl.i267, %shl3.i270
  %arrayidx4.i272 = getelementptr i8, ptr %size_dt_struct, i32 2
  %53 = ptrtoint ptr %arrayidx4.i272 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx4.i272, align 1
  %conv5.i273 = zext i8 %54 to i32
  %shl6.i274 = shl nuw nsw i32 %conv5.i273, 8
  %or7.i275 = or i32 %or.i271, %shl6.i274
  %arrayidx8.i276 = getelementptr i8, ptr %size_dt_struct, i32 3
  %55 = ptrtoint ptr %arrayidx8.i276 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx8.i276, align 1
  %conv9.i277 = zext i8 %56 to i32
  %or10.i278 = or i32 %or7.i275, %conv9.i277
  %add.i = add i32 %or10.i278, %or10.i236
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %or10.i236)
  %cmp.i = icmp ult i32 %add.i, %or10.i236
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %check_block_.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

check_block_.exit:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %retval.0.i.i)
  %cmp.not.i14.i = icmp ult i32 %add.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %or10.i158)
  %cmp1.i15.i = icmp ugt i32 %add.i, %or10.i158
  %tobool58.not = or i1 %cmp.not.i14.i, %cmp1.i15.i
  br i1 %tobool58.not, label %check_block_.exit.cleanup_crit_edge, label %check_block_.exit.if.end61_crit_edge

check_block_.exit.if.end61_crit_edge:             ; preds = %check_block_.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

check_block_.exit.cleanup_crit_edge:              ; preds = %check_block_.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end61:                                         ; preds = %check_block_.exit.if.end61_crit_edge, %if.then44.if.end61_crit_edge
  %off_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %57 = ptrtoint ptr %off_dt_strings to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %off_dt_strings, align 1
  %conv.i293 = zext i8 %58 to i32
  %shl.i294 = shl nuw i32 %conv.i293, 24
  %arrayidx1.i295 = getelementptr i8, ptr %off_dt_strings, i32 1
  %59 = ptrtoint ptr %arrayidx1.i295 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx1.i295, align 1
  %conv2.i296 = zext i8 %60 to i32
  %shl3.i297 = shl nuw nsw i32 %conv2.i296, 16
  %or.i298 = or i32 %shl3.i297, %shl.i294
  %arrayidx4.i299 = getelementptr i8, ptr %off_dt_strings, i32 2
  %61 = ptrtoint ptr %arrayidx4.i299 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx4.i299, align 1
  %conv5.i300 = zext i8 %62 to i32
  %shl6.i301 = shl nuw nsw i32 %conv5.i300, 8
  %or7.i302 = or i32 %or.i298, %shl6.i301
  %arrayidx8.i303 = getelementptr i8, ptr %off_dt_strings, i32 3
  %63 = ptrtoint ptr %arrayidx8.i303 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx8.i303, align 1
  %conv9.i304 = zext i8 %64 to i32
  %or10.i305 = or i32 %or7.i302, %conv9.i304
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i305, i32 %retval.0.i.i)
  %cmp.not.i.i319 = icmp ult i32 %or10.i305, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i305, i32 %or10.i158)
  %cmp1.i.i320 = icmp ugt i32 %or10.i305, %or10.i158
  %tobool.not.i321 = or i1 %cmp.not.i.i319, %cmp1.i.i320
  br i1 %tobool.not.i321, label %if.end61.check_block_.exit331.thread_crit_edge, label %if.end.i324

if.end61.check_block_.exit331.thread_crit_edge:   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_block_.exit331.thread

if.end.i324:                                      ; preds = %if.end61
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %arrayidx1.i308 = getelementptr i8, ptr %size_dt_strings, i32 1
  %65 = ptrtoint ptr %arrayidx1.i308 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx1.i308, align 1
  %conv2.i309 = zext i8 %66 to i32
  %shl3.i310 = shl nuw nsw i32 %conv2.i309, 16
  %67 = ptrtoint ptr %size_dt_strings to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %size_dt_strings, align 1
  %conv.i306 = zext i8 %68 to i32
  %shl.i307 = shl nuw i32 %conv.i306, 24
  %or.i311 = or i32 %shl.i307, %shl3.i310
  %arrayidx4.i312 = getelementptr i8, ptr %size_dt_strings, i32 2
  %69 = ptrtoint ptr %arrayidx4.i312 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx4.i312, align 1
  %conv5.i313 = zext i8 %70 to i32
  %shl6.i314 = shl nuw nsw i32 %conv5.i313, 8
  %or7.i315 = or i32 %or.i311, %shl6.i314
  %arrayidx8.i316 = getelementptr i8, ptr %size_dt_strings, i32 3
  %71 = ptrtoint ptr %arrayidx8.i316 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx8.i316, align 1
  %conv9.i317 = zext i8 %72 to i32
  %or10.i318 = or i32 %or7.i315, %conv9.i317
  %add.i322 = add i32 %or10.i318, %or10.i305
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i322, i32 %or10.i305)
  %cmp.i323 = icmp ult i32 %add.i322, %or10.i305
  br i1 %cmp.i323, label %if.end.i324.check_block_.exit331.thread_crit_edge, label %check_block_.exit331

if.end.i324.check_block_.exit331.thread_crit_edge: ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_block_.exit331.thread

check_block_.exit331:                             ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i322, i32 %retval.0.i.i)
  %cmp.not.i14.i325 = icmp ult i32 %add.i322, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i322, i32 %or10.i158)
  %cmp1.i15.i326 = icmp ugt i32 %add.i322, %or10.i158
  %tobool67.not = or i1 %cmp.not.i14.i325, %cmp1.i15.i326
  br i1 %tobool67.not, label %check_block_.exit331.check_block_.exit331.thread_crit_edge, label %check_block_.exit331.cleanup_crit_edge

check_block_.exit331.cleanup_crit_edge:           ; preds = %check_block_.exit331
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

check_block_.exit331.check_block_.exit331.thread_crit_edge: ; preds = %check_block_.exit331
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_block_.exit331.thread

check_block_.exit331.thread:                      ; preds = %check_block_.exit331.check_block_.exit331.thread_crit_edge, %if.end.i324.check_block_.exit331.thread_crit_edge, %if.end61.check_block_.exit331.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %check_block_.exit331.thread, %check_block_.exit331.cleanup_crit_edge, %check_block_.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then44.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %fdt_header_size.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -9, %if.end.cleanup_crit_edge ], [ -10, %lor.lhs.false.cleanup_crit_edge ], [ -10, %if.end2.cleanup_crit_edge ], [ -8, %fdt_header_size.exit.cleanup_crit_edge ], [ -8, %if.end29.cleanup_crit_edge ], [ -8, %if.then44.cleanup_crit_edge ], [ -8, %check_block_.exit.cleanup_crit_edge ], [ -8, %check_block_.exit331.thread ], [ 0, %check_block_.exit331.cleanup_crit_edge ], [ -8, %if.else.cleanup_crit_edge ], [ -8, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @fdt_offset_ptr(ptr noundef readonly %fdt, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %0 = ptrtoint ptr %off_dt_struct to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %off_dt_struct, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %off_dt_struct, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %3 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %off_dt_struct, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %5 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %off_dt_struct, i32 3
  %6 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %7 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %add = add i32 %or10.i, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp = icmp slt i32 %offset, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp3 = icmp ult i32 %add, %offset
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add4 = add i32 %add, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %add)
  %cmp5 = icmp ult i32 %add4, %add
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %8 = ptrtoint ptr %totalsize to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %totalsize, align 1
  %conv.i45 = zext i8 %9 to i32
  %shl.i46 = shl nuw i32 %conv.i45, 24
  %arrayidx1.i47 = getelementptr i8, ptr %totalsize, i32 1
  %10 = ptrtoint ptr %arrayidx1.i47 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i47, align 1
  %conv2.i48 = zext i8 %11 to i32
  %shl3.i49 = shl nuw nsw i32 %conv2.i48, 16
  %or.i50 = or i32 %shl3.i49, %shl.i46
  %arrayidx4.i51 = getelementptr i8, ptr %totalsize, i32 2
  %12 = ptrtoint ptr %arrayidx4.i51 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i51, align 1
  %conv5.i52 = zext i8 %13 to i32
  %shl6.i53 = shl nuw nsw i32 %conv5.i52, 8
  %or7.i54 = or i32 %or.i50, %shl6.i53
  %arrayidx8.i55 = getelementptr i8, ptr %totalsize, i32 3
  %14 = ptrtoint ptr %arrayidx8.i55 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i55, align 1
  %conv9.i56 = zext i8 %15 to i32
  %or10.i57 = or i32 %or7.i54, %conv9.i56
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %or10.i57)
  %cmp9 = icmp ugt i32 %add4, %or10.i57
  br i1 %cmp9, label %lor.lhs.false6.cleanup_crit_edge, label %if.end12

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false6
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %16 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %version, align 1
  %conv.i58 = zext i8 %17 to i32
  %shl.i59 = shl nuw i32 %conv.i58, 24
  %arrayidx1.i60 = getelementptr i8, ptr %version, i32 1
  %18 = ptrtoint ptr %arrayidx1.i60 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i60, align 1
  %conv2.i61 = zext i8 %19 to i32
  %shl3.i62 = shl nuw nsw i32 %conv2.i61, 16
  %or.i63 = or i32 %shl3.i62, %shl.i59
  %arrayidx4.i64 = getelementptr i8, ptr %version, i32 2
  %20 = ptrtoint ptr %arrayidx4.i64 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i64, align 1
  %conv5.i65 = zext i8 %21 to i32
  %shl6.i66 = shl nuw nsw i32 %conv5.i65, 8
  %or7.i67 = or i32 %or.i63, %shl6.i66
  %arrayidx8.i68 = getelementptr i8, ptr %version, i32 3
  %22 = ptrtoint ptr %arrayidx8.i68 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i68, align 1
  %conv9.i69 = zext i8 %23 to i32
  %or10.i70 = or i32 %or7.i67, %conv9.i69
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i70)
  %cmp16 = icmp ugt i32 %or10.i70, 16
  br i1 %cmp16, label %if.then17, label %if.end12.if.end26_crit_edge

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then17:                                        ; preds = %if.end12
  %add18 = add i32 %len, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %offset)
  %cmp19 = icmp ult i32 %add18, %offset
  br i1 %cmp19, label %if.then17.cleanup_crit_edge, label %lor.lhs.false20

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false20:                                  ; preds = %if.then17
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %24 = ptrtoint ptr %size_dt_struct to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %size_dt_struct, align 1
  %conv.i71 = zext i8 %25 to i32
  %shl.i72 = shl nuw i32 %conv.i71, 24
  %arrayidx1.i73 = getelementptr i8, ptr %size_dt_struct, i32 1
  %26 = ptrtoint ptr %arrayidx1.i73 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx1.i73, align 1
  %conv2.i74 = zext i8 %27 to i32
  %shl3.i75 = shl nuw nsw i32 %conv2.i74, 16
  %or.i76 = or i32 %shl3.i75, %shl.i72
  %arrayidx4.i77 = getelementptr i8, ptr %size_dt_struct, i32 2
  %28 = ptrtoint ptr %arrayidx4.i77 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx4.i77, align 1
  %conv5.i78 = zext i8 %29 to i32
  %shl6.i79 = shl nuw nsw i32 %conv5.i78, 8
  %or7.i80 = or i32 %or.i76, %shl6.i79
  %arrayidx8.i81 = getelementptr i8, ptr %size_dt_struct, i32 3
  %30 = ptrtoint ptr %arrayidx8.i81 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx8.i81, align 1
  %conv9.i82 = zext i8 %31 to i32
  %or10.i83 = or i32 %or7.i80, %conv9.i82
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %or10.i83)
  %cmp23 = icmp ugt i32 %add18, %or10.i83
  br i1 %cmp23, label %lor.lhs.false20.cleanup_crit_edge, label %lor.lhs.false20.if.end26_crit_edge

lor.lhs.false20.if.end26_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false20.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  %add.ptr.i = getelementptr i8, ptr %fdt, i32 %or10.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %offset
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %lor.lhs.false20.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr1.i, %if.end26 ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false6.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %lor.lhs.false20.cleanup_crit_edge ], [ null, %if.then17.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_next_tag(ptr noundef readonly %fdt, i32 noundef %startoffset, ptr nocapture noundef writeonly %nextoffset) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %nextoffset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -8, ptr %nextoffset, align 4
  %call = tail call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %startoffset, i32 noundef 4)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %add = add i32 %startoffset, 4
  %3 = ptrtoint ptr %nextoffset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -11, ptr %nextoffset, align 4
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %2, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.do.body_crit_edge
    i32 3, label %sw.bb10
    i32 9, label %if.end.sw.epilog_crit_edge
    i32 2, label %if.end.sw.epilog_crit_edge68
    i32 4, label %if.end.sw.epilog_crit_edge69
  ]

if.end.sw.epilog_crit_edge69:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge68:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end.do.body_crit_edge
  %offset.0 = phi i32 [ %inc, %land.rhs.do.body_crit_edge ], [ %add, %if.end.do.body_crit_edge ]
  %call2 = tail call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %offset.0, i32 noundef 1)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %land.rhs

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %inc = add i32 %offset.0, 1
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call2, align 1
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %land.rhs.sw.epilog_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.rhs.sw.epilog_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %call11 = tail call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %add, i32 noundef 4)
  %tobool14.not = icmp eq ptr %call11, null
  br i1 %tobool14.not, label %sw.bb10.cleanup_crit_edge, label %if.end16

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %sw.bb10
  %7 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call11, align 4
  %add17 = add i32 %startoffset, 12
  %add18 = add i32 %add17, %8
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %9 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %version, align 1
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %version, i32 1
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %12 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %version, i32 2
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %14 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %version, i32 3
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %16 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i)
  %cmp22 = icmp ult i32 %or10.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp25 = icmp ugt i32 %8, 7
  %or.cond = select i1 %cmp22, i1 %cmp25, i1 false
  br i1 %or.cond, label %land.lhs.true27, label %if.end16.sw.epilog_crit_edge

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true27:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %rem = and i32 %add17, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp28.not = icmp eq i32 %rem, 0
  %add31 = add i32 %add18, 4
  %spec.select = select i1 %cmp28.not, i32 %add18, i32 %add31
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true27, %if.end16.sw.epilog_crit_edge, %land.rhs.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge68, %if.end.sw.epilog_crit_edge69
  %offset.1 = phi i32 [ %add, %if.end.sw.epilog_crit_edge ], [ %add, %if.end.sw.epilog_crit_edge68 ], [ %add, %if.end.sw.epilog_crit_edge69 ], [ %add18, %if.end16.sw.epilog_crit_edge ], [ %spec.select, %land.lhs.true27 ], [ %inc, %land.rhs.sw.epilog_crit_edge ]
  %sub34 = sub i32 %offset.1, %startoffset
  %call35 = tail call ptr @fdt_offset_ptr(ptr noundef %fdt, i32 noundef %startoffset, i32 noundef %sub34)
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %sw.epilog.cleanup_crit_edge, label %if.end38

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %sub40 = add i32 %offset.1, 3
  %and = and i32 %sub40, -4
  %17 = ptrtoint ptr %nextoffset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %nextoffset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %sw.epilog.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.end38 ], [ 9, %entry.cleanup_crit_edge ], [ 9, %sw.bb10.cleanup_crit_edge ], [ 9, %if.end.cleanup_crit_edge ], [ 9, %sw.epilog.cleanup_crit_edge ], [ 9, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_check_node_offset_(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #3 align 64 {
entry:
  %offset.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %offset, ptr %offset.addr, align 4
  %1 = and i32 %offset, -2147483645
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset, ptr noundef nonnull %offset.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 1
  br i1 %cmp2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset.addr, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %4, %if.end4 ], [ -4, %entry.return_crit_edge ], [ -4, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #3 align 64 {
entry:
  %offset.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %offset, ptr %offset.addr, align 4
  %1 = and i32 %offset, -2147483645
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset, ptr noundef nonnull %offset.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 3
  br i1 %cmp2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset.addr, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %4, %if.end4 ], [ -4, %entry.return_crit_edge ], [ -4, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset, ptr noundef %depth) local_unnamed_addr #4 align 64 {
entry:
  %offset.addr.i = alloca i32, align 4
  %nextoffset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset) #11
  %0 = ptrtoint ptr %nextoffset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nextoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset)
  %cmp = icmp sgt i32 %offset, -1
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.addr.i)
  %1 = ptrtoint ptr %offset.addr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %offset, ptr %offset.addr.i, align 4
  %2 = and i32 %offset, -2147483645
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end.i, label %if.then.fdt_check_node_offset_.exit.thread_crit_edge

if.then.fdt_check_node_offset_.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_check_node_offset_.exit.thread

if.end.i:                                         ; preds = %if.then
  %call1.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset, ptr noundef nonnull %offset.addr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, 1
  br i1 %cmp2.not.i, label %fdt_check_node_offset_.exit, label %if.end.i.fdt_check_node_offset_.exit.thread_crit_edge

if.end.i.fdt_check_node_offset_.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_check_node_offset_.exit.thread

fdt_check_node_offset_.exit.thread:               ; preds = %if.end.i.fdt_check_node_offset_.exit.thread_crit_edge, %if.then.fdt_check_node_offset_.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i)
  br label %cleanup

fdt_check_node_offset_.exit:                      ; preds = %if.end.i
  %4 = ptrtoint ptr %offset.addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.addr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i)
  %6 = ptrtoint ptr %nextoffset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %nextoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %fdt_check_node_offset_.exit.cleanup_crit_edge, label %fdt_check_node_offset_.exit.if.end3_crit_edge

fdt_check_node_offset_.exit.if.end3_crit_edge:    ; preds = %fdt_check_node_offset_.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

fdt_check_node_offset_.exit.cleanup_crit_edge:    ; preds = %fdt_check_node_offset_.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %fdt_check_node_offset_.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %tobool9.not = icmp eq ptr %depth, null
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %if.end3
  %7 = ptrtoint ptr %nextoffset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nextoffset, align 4
  %call4 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %8, ptr noundef nonnull %nextoffset)
  %9 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %call4, label %do.body.do.body.backedge_crit_edge [
    i32 9, label %sw.bb13
    i32 2, label %sw.bb8
    i32 1, label %sw.bb5
  ]

do.body.do.body.backedge_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.backedge

sw.bb5:                                           ; preds = %do.body
  br i1 %tobool9.not, label %sw.bb5.cleanup_crit_edge, label %if.then6

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %depth, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %depth, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %do.body
  br i1 %tobool9.not, label %sw.bb8.do.body.backedge_crit_edge, label %land.lhs.true

sw.bb8.do.body.backedge_crit_edge:                ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %land.lhs.true.do.body.backedge_crit_edge, %sw.bb8.do.body.backedge_crit_edge, %do.body.do.body.backedge_crit_edge
  br label %do.body

land.lhs.true:                                    ; preds = %sw.bb8
  %12 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %depth, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp10 = icmp slt i32 %dec, 0
  br i1 %cmp10, label %if.then11, label %land.lhs.true.do.body.backedge_crit_edge

land.lhs.true.do.body.backedge_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.backedge

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %nextoffset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nextoffset, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %do.body
  %16 = ptrtoint ptr %nextoffset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nextoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp14 = icmp sgt i32 %17, -1
  br i1 %cmp14, label %sw.bb13.cleanup_crit_edge, label %lor.lhs.false

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %17)
  %cmp15 = icmp eq i32 %17, -8
  %or.cond = and i1 %tobool9.not, %cmp15
  %spec.select = select i1 %or.cond, i32 -1, i32 %17
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %sw.bb13.cleanup_crit_edge, %if.then11, %if.then6, %sw.bb5.cleanup_crit_edge, %fdt_check_node_offset_.exit.cleanup_crit_edge, %fdt_check_node_offset_.exit.thread
  %retval.0 = phi i32 [ %15, %if.then11 ], [ %5, %fdt_check_node_offset_.exit.cleanup_crit_edge ], [ -1, %sw.bb13.cleanup_crit_edge ], [ -4, %fdt_check_node_offset_.exit.thread ], [ %8, %if.then6 ], [ %8, %sw.bb5.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_first_subnode(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #4 align 64 {
entry:
  %offset.addr.i.i = alloca i32, align 4
  %nextoffset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i) #11
  %0 = ptrtoint ptr %nextoffset.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nextoffset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset)
  %cmp.i = icmp sgt i32 %offset, -1
  br i1 %cmp.i, label %if.then.i, label %entry.do.body.i.preheader_crit_edge

entry.do.body.i.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.preheader

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.addr.i.i) #11
  %1 = ptrtoint ptr %offset.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %offset, ptr %offset.addr.i.i, align 4
  %2 = and i32 %offset, -2147483645
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end.i.i, label %if.then.i.fdt_check_node_offset_.exit.thread.i_crit_edge

if.then.i.fdt_check_node_offset_.exit.thread.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_check_node_offset_.exit.thread.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset, ptr noundef nonnull %offset.addr.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i.i)
  %cmp2.not.i.i = icmp eq i32 %call1.i.i, 1
  br i1 %cmp2.not.i.i, label %fdt_check_node_offset_.exit.i, label %if.end.i.i.fdt_check_node_offset_.exit.thread.i_crit_edge

if.end.i.i.fdt_check_node_offset_.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_check_node_offset_.exit.thread.i

fdt_check_node_offset_.exit.thread.i:             ; preds = %if.end.i.i.fdt_check_node_offset_.exit.thread.i_crit_edge, %if.then.i.fdt_check_node_offset_.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i.i) #11
  br label %fdt_next_node.exit.thread

fdt_check_node_offset_.exit.i:                    ; preds = %if.end.i.i
  %4 = ptrtoint ptr %offset.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.addr.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i.i) #11
  %6 = ptrtoint ptr %nextoffset.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %nextoffset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.i = icmp slt i32 %5, 0
  br i1 %cmp1.i, label %fdt_check_node_offset_.exit.i.fdt_next_node.exit.thread_crit_edge, label %fdt_check_node_offset_.exit.i.do.body.i.preheader_crit_edge

fdt_check_node_offset_.exit.i.do.body.i.preheader_crit_edge: ; preds = %fdt_check_node_offset_.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.preheader

fdt_check_node_offset_.exit.i.fdt_next_node.exit.thread_crit_edge: ; preds = %fdt_check_node_offset_.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_next_node.exit.thread

do.body.i.preheader:                              ; preds = %fdt_check_node_offset_.exit.i.do.body.i.preheader_crit_edge, %entry.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %7 = ptrtoint ptr %nextoffset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nextoffset.i, align 4
  %call4.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %8, ptr noundef nonnull %nextoffset.i) #11
  %9 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %call4.i, label %do.body.i.do.body.i_crit_edge [
    i32 9, label %do.body.i.fdt_next_node.exit.thread_crit_edge
    i32 2, label %if.then11.i
    i32 1, label %do.body.i.fdt_next_node.exit_crit_edge
  ]

do.body.i.fdt_next_node.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_next_node.exit

do.body.i.fdt_next_node.exit.thread_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_next_node.exit.thread

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %nextoffset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nextoffset.i, align 4
  br label %fdt_next_node.exit

fdt_next_node.exit.thread:                        ; preds = %do.body.i.fdt_next_node.exit.thread_crit_edge, %fdt_check_node_offset_.exit.i.fdt_next_node.exit.thread_crit_edge, %fdt_check_node_offset_.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #11
  br label %cleanup

fdt_next_node.exit:                               ; preds = %if.then11.i, %do.body.i.fdt_next_node.exit_crit_edge
  %cmp1.not = phi i32 [ -1, %if.then11.i ], [ %8, %do.body.i.fdt_next_node.exit_crit_edge ]
  %retval.0.i = phi i32 [ %11, %if.then11.i ], [ %8, %do.body.i.fdt_next_node.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.inv = icmp sgt i32 %retval.0.i, -1
  %spec.select = select i1 %cmp.inv, i32 %cmp1.not, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %fdt_next_node.exit, %fdt_next_node.exit.thread
  %retval.0 = phi i32 [ -1, %fdt_next_node.exit.thread ], [ %spec.select, %fdt_next_node.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_next_subnode(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #4 align 64 {
entry:
  %offset.addr.i.i = alloca i32, align 4
  %nextoffset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %depth.0 = phi i32 [ 1, %entry ], [ %inc.i, %do.cond.do.body_crit_edge ]
  %offset.addr.0 = phi i32 [ %offset, %entry ], [ %8, %do.cond.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i) #11
  %0 = ptrtoint ptr %nextoffset.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nextoffset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset.addr.0)
  %cmp.i = icmp sgt i32 %offset.addr.0, -1
  br i1 %cmp.i, label %if.then.i, label %do.body.do.body.i.preheader_crit_edge

do.body.do.body.i.preheader_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.preheader

if.then.i:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.addr.i.i) #11
  %1 = ptrtoint ptr %offset.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %offset.addr.0, ptr %offset.addr.i.i, align 4
  %2 = and i32 %offset.addr.0, -2147483645
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end.i.i, label %if.then.i.fdt_check_node_offset_.exit.thread.i_crit_edge

if.then.i.fdt_check_node_offset_.exit.thread.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_check_node_offset_.exit.thread.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0, ptr noundef nonnull %offset.addr.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i.i)
  %cmp2.not.i.i = icmp eq i32 %call1.i.i, 1
  br i1 %cmp2.not.i.i, label %fdt_check_node_offset_.exit.i, label %if.end.i.i.fdt_check_node_offset_.exit.thread.i_crit_edge

if.end.i.i.fdt_check_node_offset_.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_check_node_offset_.exit.thread.i

fdt_check_node_offset_.exit.thread.i:             ; preds = %if.end.i.i.fdt_check_node_offset_.exit.thread.i_crit_edge, %if.then.i.fdt_check_node_offset_.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i.i) #11
  br label %fdt_next_node.exit.thread

fdt_check_node_offset_.exit.i:                    ; preds = %if.end.i.i
  %4 = ptrtoint ptr %offset.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.addr.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i.i) #11
  %6 = ptrtoint ptr %nextoffset.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %nextoffset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.i = icmp slt i32 %5, 0
  br i1 %cmp1.i, label %fdt_check_node_offset_.exit.i.fdt_next_node.exit.thread_crit_edge, label %fdt_check_node_offset_.exit.i.do.body.i.preheader_crit_edge

fdt_check_node_offset_.exit.i.do.body.i.preheader_crit_edge: ; preds = %fdt_check_node_offset_.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.preheader

fdt_check_node_offset_.exit.i.fdt_next_node.exit.thread_crit_edge: ; preds = %fdt_check_node_offset_.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_next_node.exit.thread

do.body.i.preheader:                              ; preds = %fdt_check_node_offset_.exit.i.do.body.i.preheader_crit_edge, %do.body.do.body.i.preheader_crit_edge
  br label %do.body.i.outer

do.body.i.outer:                                  ; preds = %sw.bb8.i.do.body.i.outer_crit_edge, %do.body.i.preheader
  %depth.1.ph = phi i32 [ %depth.0, %do.body.i.preheader ], [ %dec.i, %sw.bb8.i.do.body.i.outer_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.outer
  %7 = ptrtoint ptr %nextoffset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nextoffset.i, align 4
  %call4.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %8, ptr noundef nonnull %nextoffset.i) #11
  %9 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %call4.i, label %do.body.i.do.body.i_crit_edge [
    i32 9, label %do.body.i.fdt_next_node.exit.thread_crit_edge
    i32 2, label %sw.bb8.i
    i32 1, label %fdt_next_node.exit
  ]

do.body.i.fdt_next_node.exit.thread_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdt_next_node.exit.thread

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

sw.bb8.i:                                         ; preds = %do.body.i
  %dec.i = add i32 %depth.1.ph, -1
  %cmp10.i = icmp slt i32 %dec.i, 0
  br i1 %cmp10.i, label %fdt_next_node.exit.thread20, label %sw.bb8.i.do.body.i.outer_crit_edge

sw.bb8.i.do.body.i.outer_crit_edge:               ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.outer

fdt_next_node.exit.thread20:                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #11
  br label %cleanup

fdt_next_node.exit.thread:                        ; preds = %do.body.i.fdt_next_node.exit.thread_crit_edge, %fdt_check_node_offset_.exit.i.fdt_next_node.exit.thread_crit_edge, %fdt_check_node_offset_.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #11
  br label %cleanup

fdt_next_node.exit:                               ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %depth.1.ph)
  %cmp1 = icmp ugt i32 %depth.1.ph, 2147483646
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %fdt_next_node.exit.cleanup_crit_edge, label %do.cond

fdt_next_node.exit.cleanup_crit_edge:             ; preds = %fdt_next_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond:                                          ; preds = %fdt_next_node.exit
  %inc.i = add i32 %depth.1.ph, 1
  %cmp2.not = icmp eq i32 %depth.1.ph, 0
  br i1 %cmp2.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %fdt_next_node.exit.cleanup_crit_edge, %fdt_next_node.exit.thread, %fdt_next_node.exit.thread20
  %retval.0 = phi i32 [ -1, %fdt_next_node.exit.thread ], [ -1, %fdt_next_node.exit.thread20 ], [ %8, %do.cond.cleanup_crit_edge ], [ -1, %fdt_next_node.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fdt_find_string_(ptr noundef readonly %strtab, i32 noundef %tabsize, ptr nocapture noundef readonly %s) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @strlen(ptr noundef %s) #12
  %add = add i32 %call, 1
  %add.ptr = getelementptr i8, ptr %strtab, i32 %tabsize
  %idx.neg = xor i32 %call, -1
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %cmp.not12 = icmp ult ptr %add.ptr1, %strtab
  br i1 %cmp.not12, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %p.013 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %strtab, %entry.for.body_crit_edge ]
  %bcmp = tail call i32 @bcmp(ptr %p.013, ptr %s, i32 %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp3 = icmp eq i32 %bcmp, 0
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i8, ptr %p.013, i32 1
  %cmp.not = icmp ugt ptr %incdec.ptr, %add.ptr1
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %p.013, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fdt_move(ptr noundef readonly %fdt, ptr nocapture noundef writeonly %buf, i32 noundef %bufsize) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufsize)
  %cmp = icmp slt i32 %bufsize, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fdt_ro_probe_(ptr noundef %fdt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %cleanup.cont, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cleanup.cont:                                     ; preds = %if.end
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %0 = ptrtoint ptr %totalsize to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %totalsize, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %totalsize, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %3 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %totalsize, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %5 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %totalsize, i32 3
  %6 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %7 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i, i32 %bufsize)
  %cmp6 = icmp ugt i32 %or10.i, %bufsize
  br i1 %cmp6, label %cleanup.cont.return_crit_edge, label %if.end8

cleanup.cont.return_crit_edge:                    ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end8:                                          ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call ptr @memmove(ptr %buf, ptr %fdt, i32 %or10.i)
  br label %return

return:                                           ; preds = %if.end8, %cleanup.cont.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %call1, %if.end.return_crit_edge ], [ 0, %if.end8 ], [ -3, %entry.return_crit_edge ], [ -3, %cleanup.cont.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind uwtable(sync) }
attributes #10 = { nomerge }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
