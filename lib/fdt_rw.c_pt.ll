; ModuleID = '/llk/IR_all_yes/lib/fdt_rw.c_pt.bc'
source_filename = "../lib/fdt_rw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }
%struct.fdt_node_header = type { i32, [0 x i8] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_add_mem_rsv(ptr noundef %fdt, i64 noundef %address, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %entry.cleanup8_crit_edge

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup8

cleanup.cont.i:                                   ; preds = %entry
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %3 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %5 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup.cont.i.cleanup8_crit_edge, label %if.end8.i

cleanup.cont.i.cleanup8_crit_edge:                ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup8

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %8 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %9 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i27.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %11 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i31.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %13 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i35.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %15 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end8.i.cleanup8_crit_edge

if.end8.i.cleanup8_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup8

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %if.end12.i.cleanup.cont_crit_edge

if.end12.i.cleanup.cont_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i.cleanup.cont_crit_edge
  %call1 = tail call i32 @fdt_num_mem_rsv(ptr noundef %fdt) #8
  %off_mem_rsvmap.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %17 = ptrtoint ptr %off_mem_rsvmap.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %off_mem_rsvmap.i.i, align 1
  %conv.i.i.i = zext i8 %18 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_mem_rsvmap.i.i, i32 1
  %19 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %20 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_mem_rsvmap.i.i, i32 2
  %21 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %22 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_mem_rsvmap.i.i, i32 3
  %23 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %24 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr1.i.i = getelementptr %struct.fdt_reserve_entry, ptr %add.ptr.i.i, i32 %call1
  %call3 = tail call fastcc i32 @fdt_splice_mem_rsv_(ptr noundef %fdt, ptr noundef %add.ptr1.i.i, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %cleanup.cont.cleanup8_crit_edge

cleanup.cont.cleanup8_crit_edge:                  ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup8

if.end5:                                          ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %address, ptr %add.ptr1.i.i, align 8
  %size7 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr1.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %size7 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %size, ptr %size7, align 8
  br label %cleanup8

cleanup8:                                         ; preds = %if.end5, %cleanup.cont.cleanup8_crit_edge, %if.end8.i.cleanup8_crit_edge, %cleanup.cont.i.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  %retval.1 = phi i32 [ 0, %if.end5 ], [ %call3, %cleanup.cont.cleanup8_crit_edge ], [ -12, %if.end8.i.cleanup8_crit_edge ], [ -10, %cleanup.cont.i.cleanup8_crit_edge ], [ %call1.i, %entry.cleanup8_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_num_mem_rsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @fdt_splice_mem_rsv_(ptr noundef %fdt, ptr noundef %p, i32 noundef %oldn, i32 noundef %newn) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %mul1 = shl i32 %oldn, 4
  %mul2 = shl i32 %newn, 4
  %off_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %0 = ptrtoint ptr %off_dt_strings.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %off_dt_strings.i.i, align 1
  %conv.i.i.i = zext i8 %1 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_strings.i.i, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %3 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_strings.i.i, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %5 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_strings.i.i, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %7 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %size_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %8 = ptrtoint ptr %size_dt_strings.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %size_dt_strings.i.i, align 1
  %conv.i3.i.i = zext i8 %9 to i32
  %shl.i4.i.i = shl nuw i32 %conv.i3.i.i, 24
  %arrayidx1.i5.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i5.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i5.i.i, align 1
  %conv2.i6.i.i = zext i8 %11 to i32
  %shl3.i7.i.i = shl nuw nsw i32 %conv2.i6.i.i, 16
  %or.i8.i.i = or i32 %shl3.i7.i.i, %shl.i4.i.i
  %arrayidx4.i9.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i9.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i9.i.i, align 1
  %conv5.i10.i.i = zext i8 %13 to i32
  %shl6.i11.i.i = shl nuw nsw i32 %conv5.i10.i.i, 8
  %or7.i12.i.i = or i32 %or.i8.i.i, %shl6.i11.i.i
  %arrayidx8.i13.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i13.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i13.i.i, align 1
  %conv9.i14.i.i = zext i8 %15 to i32
  %or10.i15.i.i = or i32 %or7.i12.i.i, %conv9.i14.i.i
  %add.i.i = add i32 %or10.i15.i.i, %or10.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1)
  %cmp.i = icmp slt i32 %mul1, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %sub.ptr.lhs.cast.i = ptrtoint ptr %p to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %fdt to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.i = add i32 %sub.ptr.sub.i, %mul1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.ptr.sub.i)
  %cmp1.i = icmp ult i32 %add.i, %sub.ptr.sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add.i.i)
  %cmp4.i = icmp ugt i32 %add.i, %add.i.i
  %or.cond.i = select i1 %cmp1.i, i1 true, i1 %cmp4.i
  br i1 %or.cond.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cmp5.i = icmp ult ptr %p, %fdt
  %add7.i = add i32 %add.i.i, %mul2
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %mul1)
  %cmp8.i = icmp ult i32 %add7.i, %mul1
  %or.cond45.i = select i1 %cmp5.i, i1 true, i1 %cmp8.i
  br i1 %or.cond45.i, label %if.end.i.cleanup_crit_edge, label %if.end10.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %sub.i = sub i32 %mul2, %mul1
  %add11.i = add i32 %sub.i, %add.i.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %16 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %totalsize.i, align 1
  %conv.i.i = zext i8 %17 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %totalsize.i, i32 1
  %18 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %19 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %totalsize.i, i32 2
  %20 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %21 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %totalsize.i, i32 3
  %22 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %23 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %or10.i.i)
  %cmp13.i = icmp ugt i32 %add11.i, %or10.i.i
  br i1 %cmp13.i, label %if.end10.i.cleanup_crit_edge, label %if.end

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %p, i32 %mul2
  %add.ptr16.i = getelementptr i8, ptr %p, i32 %mul1
  %add.ptr17.i = getelementptr i8, ptr %fdt, i32 %add.i.i
  %sub.ptr.lhs.cast19.i = ptrtoint ptr %add.ptr17.i to i32
  %sub.ptr.rhs.cast20.i = ptrtoint ptr %add.ptr16.i to i32
  %sub.ptr.sub21.i = sub i32 %sub.ptr.lhs.cast19.i, %sub.ptr.rhs.cast20.i
  %24 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr16.i, i32 %sub.ptr.sub21.i)
  %sub = sub i32 %newn, %oldn
  %mul = shl i32 %sub, 4
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %25 = ptrtoint ptr %off_dt_struct to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %off_dt_struct, align 1
  %conv.i = zext i8 %26 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %off_dt_struct, i32 1
  %27 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %28 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %off_dt_struct, i32 2
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %30 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %off_dt_struct, i32 3
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %32 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %add = add i32 %or10.i, %mul
  store i32 %add, ptr %off_dt_struct, align 4
  %33 = ptrtoint ptr %off_dt_strings.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %off_dt_strings.i.i, align 1
  %conv.i15 = zext i8 %34 to i32
  %shl.i16 = shl nuw i32 %conv.i15, 24
  %35 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i18 = zext i8 %36 to i32
  %shl3.i19 = shl nuw nsw i32 %conv2.i18, 16
  %or.i20 = or i32 %shl3.i19, %shl.i16
  %37 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i22 = zext i8 %38 to i32
  %shl6.i23 = shl nuw nsw i32 %conv5.i22, 8
  %or7.i24 = or i32 %or.i20, %shl6.i23
  %39 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i26 = zext i8 %40 to i32
  %or10.i27 = or i32 %or7.i24, %conv9.i26
  %add5 = add i32 %or10.i27, %mul
  store i32 %add5, ptr %off_dt_strings.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end10.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -3, %if.end10.i.cleanup_crit_edge ], [ -4, %if.end.i.cleanup_crit_edge ], [ -4, %entry.cleanup_crit_edge ], [ -4, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_del_mem_rsv(ptr noundef %fdt, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %off_mem_rsvmap.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %0 = ptrtoint ptr %off_mem_rsvmap.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %off_mem_rsvmap.i.i, align 1
  %conv.i.i.i = zext i8 %1 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_mem_rsvmap.i.i, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %3 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_mem_rsvmap.i.i, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %5 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_mem_rsvmap.i.i, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %7 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr1.i.i = getelementptr %struct.fdt_reserve_entry, ptr %add.ptr.i.i, i32 %n
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %entry.cleanup7_crit_edge

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup7

cleanup.cont.i:                                   ; preds = %entry
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %8 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %9 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %11 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %13 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %15 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup.cont.i.cleanup7_crit_edge, label %if.end8.i

cleanup.cont.i.cleanup7_crit_edge:                ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup7

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %16 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %17 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %18 = ptrtoint ptr %arrayidx1.i27.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %19 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %20 = ptrtoint ptr %arrayidx4.i31.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %21 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %22 = ptrtoint ptr %arrayidx8.i35.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %23 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end8.i.cleanup7_crit_edge

if.end8.i.cleanup7_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup7

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %if.end12.i.cleanup.cont_crit_edge

if.end12.i.cleanup.cont_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i.cleanup.cont_crit_edge
  %call2 = tail call i32 @fdt_num_mem_rsv(ptr noundef %fdt) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %n)
  %cmp3.not = icmp sgt i32 %call2, %n
  br i1 %cmp3.not, label %if.end5, label %cleanup.cont.cleanup7_crit_edge

cleanup.cont.cleanup7_crit_edge:                  ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup7

if.end5:                                          ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call fastcc i32 @fdt_splice_mem_rsv_(ptr noundef %fdt, ptr noundef %add.ptr1.i.i, i32 noundef 1, i32 noundef 0)
  br label %cleanup7

cleanup7:                                         ; preds = %if.end5, %cleanup.cont.cleanup7_crit_edge, %if.end8.i.cleanup7_crit_edge, %cleanup.cont.i.cleanup7_crit_edge, %entry.cleanup7_crit_edge
  %retval.1 = phi i32 [ %call6, %if.end5 ], [ -1, %cleanup.cont.cleanup7_crit_edge ], [ -12, %if.end8.i.cleanup7_crit_edge ], [ -10, %cleanup.cont.i.cleanup7_crit_edge ], [ %call1.i, %entry.cleanup7_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_set_name(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  %oldlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oldlen) #8
  %0 = ptrtoint ptr %oldlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %oldlen, align 4, !annotation !8
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %entry.cleanup15_crit_edge

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup15

cleanup.cont.i:                                   ; preds = %entry
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %1 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %2 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %3 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %4 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %5 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %6 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %7 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %8 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup.cont.i.cleanup15_crit_edge, label %if.end8.i

cleanup.cont.i.cleanup15_crit_edge:               ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup15

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %9 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %10 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %11 = ptrtoint ptr %arrayidx1.i27.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %12 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %13 = ptrtoint ptr %arrayidx4.i31.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %14 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %15 = ptrtoint ptr %arrayidx8.i35.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %16 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end8.i.cleanup15_crit_edge

if.end8.i.cleanup15_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup15

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %if.end12.i.cleanup.cont_crit_edge

if.end12.i.cleanup.cont_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i.cleanup.cont_crit_edge
  %call1 = call ptr @fdt_get_name(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull %oldlen) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %oldlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oldlen, align 4
  br label %cleanup15

if.end3:                                          ; preds = %cleanup.cont
  %call4 = call i32 @strlen(ptr noundef %name) #9
  %20 = ptrtoint ptr %oldlen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %oldlen, align 4
  %sub = add i32 %21, 4
  %and = and i32 %sub, -4
  %sub8 = add i32 %call4, 4
  %and9 = and i32 %sub8, -4
  %call10 = call fastcc i32 @fdt_splice_struct_(ptr noundef %fdt, ptr noundef nonnull %call1, i32 noundef %and, i32 noundef %and9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end3.cleanup15_crit_edge

if.end3.cleanup15_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup15

if.end13:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %add6 = add i32 %call4, 1
  %22 = call ptr @memcpy(ptr %call1, ptr %name, i32 %add6)
  br label %cleanup15

cleanup15:                                        ; preds = %if.end13, %if.end3.cleanup15_crit_edge, %if.then2, %if.end8.i.cleanup15_crit_edge, %cleanup.cont.i.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %retval.1 = phi i32 [ 0, %if.end13 ], [ %19, %if.then2 ], [ %call10, %if.end3.cleanup15_crit_edge ], [ -12, %if.end8.i.cleanup15_crit_edge ], [ -10, %cleanup.cont.i.cleanup15_crit_edge ], [ %call1.i, %entry.cleanup15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldlen) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @fdt_splice_struct_(ptr noundef %fdt, ptr noundef %p, i32 noundef %oldlen, i32 noundef %newlen) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %off_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %0 = ptrtoint ptr %off_dt_strings.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %off_dt_strings.i.i, align 1
  %conv.i.i.i = zext i8 %1 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_strings.i.i, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %3 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_strings.i.i, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %5 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_strings.i.i, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %7 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %size_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %8 = ptrtoint ptr %size_dt_strings.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %size_dt_strings.i.i, align 1
  %conv.i3.i.i = zext i8 %9 to i32
  %shl.i4.i.i = shl nuw i32 %conv.i3.i.i, 24
  %arrayidx1.i5.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i5.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i5.i.i, align 1
  %conv2.i6.i.i = zext i8 %11 to i32
  %shl3.i7.i.i = shl nuw nsw i32 %conv2.i6.i.i, 16
  %or.i8.i.i = or i32 %shl3.i7.i.i, %shl.i4.i.i
  %arrayidx4.i9.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i9.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i9.i.i, align 1
  %conv5.i10.i.i = zext i8 %13 to i32
  %shl6.i11.i.i = shl nuw nsw i32 %conv5.i10.i.i, 8
  %or7.i12.i.i = or i32 %or.i8.i.i, %shl6.i11.i.i
  %arrayidx8.i13.i.i = getelementptr i8, ptr %size_dt_strings.i.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i13.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i13.i.i, align 1
  %conv9.i14.i.i = zext i8 %15 to i32
  %or10.i15.i.i = or i32 %or7.i12.i.i, %conv9.i14.i.i
  %add.i.i = add i32 %or10.i15.i.i, %or10.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oldlen)
  %cmp.i = icmp slt i32 %oldlen, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %sub.ptr.lhs.cast.i = ptrtoint ptr %p to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %fdt to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.i = add i32 %sub.ptr.sub.i, %oldlen
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.ptr.sub.i)
  %cmp1.i = icmp ult i32 %add.i, %sub.ptr.sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add.i.i)
  %cmp4.i = icmp ugt i32 %add.i, %add.i.i
  %or.cond.i = select i1 %cmp1.i, i1 true, i1 %cmp4.i
  br i1 %or.cond.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cmp5.i = icmp ult ptr %p, %fdt
  %add7.i = add i32 %add.i.i, %newlen
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %oldlen)
  %cmp8.i = icmp ult i32 %add7.i, %oldlen
  %or.cond45.i = select i1 %cmp5.i, i1 true, i1 %cmp8.i
  br i1 %or.cond45.i, label %if.end.i.cleanup_crit_edge, label %if.end10.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %sub.i = sub i32 %newlen, %oldlen
  %add11.i = add i32 %sub.i, %add.i.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %16 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %totalsize.i, align 1
  %conv.i.i = zext i8 %17 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %totalsize.i, i32 1
  %18 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %19 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %totalsize.i, i32 2
  %20 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %21 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %totalsize.i, i32 3
  %22 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %23 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %or10.i.i)
  %cmp13.i = icmp ugt i32 %add11.i, %or10.i.i
  br i1 %cmp13.i, label %if.end10.i.cleanup_crit_edge, label %if.end

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %p, i32 %newlen
  %add.ptr16.i = getelementptr i8, ptr %p, i32 %oldlen
  %add.ptr17.i = getelementptr i8, ptr %fdt, i32 %add.i.i
  %sub.ptr.lhs.cast19.i = ptrtoint ptr %add.ptr17.i to i32
  %sub.ptr.rhs.cast20.i = ptrtoint ptr %add.ptr16.i to i32
  %sub.ptr.sub21.i = sub i32 %sub.ptr.lhs.cast19.i, %sub.ptr.rhs.cast20.i
  %24 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr16.i, i32 %sub.ptr.sub21.i)
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %25 = ptrtoint ptr %size_dt_struct to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %size_dt_struct, align 1
  %conv.i = zext i8 %26 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %size_dt_struct, i32 1
  %27 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %28 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %size_dt_struct, i32 2
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %30 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %size_dt_struct, i32 3
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %32 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %add = add i32 %or10.i, %sub.i
  store i32 %add, ptr %size_dt_struct, align 4
  %33 = ptrtoint ptr %off_dt_strings.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %off_dt_strings.i.i, align 1
  %conv.i12 = zext i8 %34 to i32
  %shl.i13 = shl nuw i32 %conv.i12, 24
  %35 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i15 = zext i8 %36 to i32
  %shl3.i16 = shl nuw nsw i32 %conv2.i15, 16
  %or.i17 = or i32 %shl3.i16, %shl.i13
  %37 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i19 = zext i8 %38 to i32
  %shl6.i20 = shl nuw nsw i32 %conv5.i19, 8
  %or7.i21 = or i32 %or.i17, %shl6.i20
  %39 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i23 = zext i8 %40 to i32
  %or10.i24 = or i32 %or7.i21, %conv9.i23
  %add3 = add i32 %or10.i24, %sub.i
  store i32 %add3, ptr %off_dt_strings.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end10.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -3, %if.end10.i.cleanup_crit_edge ], [ -4, %if.end.i.cleanup_crit_edge ], [ -4, %entry.cleanup_crit_edge ], [ -4, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_setprop_placeholder(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr nocapture noundef writeonly %prop_data) local_unnamed_addr #0 align 64 {
entry:
  %oldlen.i = alloca i32, align 4
  %prop = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #8
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %entry.cleanup8_crit_edge

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup8

cleanup.cont.i:                                   ; preds = %entry
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %3 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %5 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup.cont.i.cleanup8_crit_edge, label %if.end8.i

cleanup.cont.i.cleanup8_crit_edge:                ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup8

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %8 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %9 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i27.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %11 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i31.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %13 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i35.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %15 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end8.i.cleanup8_crit_edge

if.end8.i.cleanup8_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup8

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %if.end12.i.cleanup.cont_crit_edge

if.end12.i.cleanup.cont_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i.cleanup.cont_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oldlen.i) #8
  %17 = ptrtoint ptr %oldlen.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %oldlen.i, align 4, !annotation !8
  %call.i.i = call ptr @fdt_get_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %oldlen.i) #8
  %18 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i, ptr %prop, align 4
  %tobool.not.i17 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i17, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %oldlen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oldlen.i, align 4
  br label %fdt_resize_property_.exit

if.end.i:                                         ; preds = %cleanup.cont
  %data.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %oldlen.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oldlen.i, align 4
  %sub.i = add i32 %22, 3
  %and.i = and i32 %sub.i, -4
  %sub2.i = add i32 %len, 3
  %and3.i = and i32 %sub2.i, -4
  %call4.i = call fastcc i32 @fdt_splice_struct_(ptr noundef %fdt, ptr noundef %data.i, i32 noundef %and.i, i32 noundef %and3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end5.thread, label %if.end.i.fdt_resize_property_.exit_crit_edge

if.end.i.fdt_resize_property_.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fdt_resize_property_.exit

if.end5.thread:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %len8.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %len8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %len, ptr %len8.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldlen.i) #8
  br label %if.end7

fdt_resize_property_.exit:                        ; preds = %if.end.i.fdt_resize_property_.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %20, %if.then.i ], [ %call4.i, %if.end.i.fdt_resize_property_.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldlen.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp2 = icmp eq i32 %retval.0.i, -1
  br i1 %cmp2, label %if.then3, label %fdt_resize_property_.exit.if.end5_crit_edge

fdt_resize_property_.exit.if.end5_crit_edge:      ; preds = %fdt_resize_property_.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %fdt_resize_property_.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = call fastcc i32 @fdt_add_property_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr noundef nonnull %prop)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %fdt_resize_property_.exit.if.end5_crit_edge
  %err.0 = phi i32 [ %call4, %if.then3 ], [ %retval.0.i, %fdt_resize_property_.exit.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end5.if.end7_crit_edge, label %if.end5.cleanup8_crit_edge

if.end5.cleanup8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup8

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end7:                                          ; preds = %if.end5.if.end7_crit_edge, %if.end5.thread
  %24 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prop, align 4
  %data = getelementptr inbounds %struct.fdt_property, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %prop_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %data, ptr %prop_data, align 4
  br label %cleanup8

cleanup8:                                         ; preds = %if.end7, %if.end5.cleanup8_crit_edge, %if.end8.i.cleanup8_crit_edge, %cleanup.cont.i.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  %retval.1 = phi i32 [ 0, %if.end7 ], [ %err.0, %if.end5.cleanup8_crit_edge ], [ -12, %if.end8.i.cleanup8_crit_edge ], [ -10, %cleanup.cont.i.cleanup8_crit_edge ], [ %call1.i, %entry.cleanup8_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fdt_add_property_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr nocapture noundef %prop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @fdt_check_node_offset_(ptr noundef %fdt, i32 noundef %nodeoffset) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %0 = ptrtoint ptr %off_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %3 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %5 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %add.ptr.i = getelementptr i8, ptr %fdt, i32 %or10.i.i
  %call1.i = tail call i32 @strlen(ptr noundef %name) #10
  %add.i = add i32 %call1.i, 1
  %size_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %8 = ptrtoint ptr %size_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i38.i = zext i8 %9 to i32
  %shl.i39.i = shl nuw i32 %conv.i38.i, 24
  %arrayidx1.i40.i = getelementptr i8, ptr %size_dt_strings.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i40.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i40.i, align 1
  %conv2.i41.i = zext i8 %11 to i32
  %shl3.i42.i = shl nuw nsw i32 %conv2.i41.i, 16
  %or.i43.i = or i32 %shl3.i42.i, %shl.i39.i
  %arrayidx4.i44.i = getelementptr i8, ptr %size_dt_strings.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i44.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i44.i, align 1
  %conv5.i45.i = zext i8 %13 to i32
  %shl6.i46.i = shl nuw nsw i32 %conv5.i45.i, 8
  %or7.i47.i = or i32 %or.i43.i, %shl6.i46.i
  %arrayidx8.i48.i = getelementptr i8, ptr %size_dt_strings.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i48.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i48.i, align 1
  %conv9.i49.i = zext i8 %15 to i32
  %or10.i50.i = or i32 %or7.i47.i, %conv9.i49.i
  %call4.i = tail call ptr @fdt_find_string_(ptr noundef %add.ptr.i, i32 noundef %or10.i50.i, ptr noundef %name) #8
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call4.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %fdt_find_add_string_.exit

if.end6.i:                                        ; preds = %if.end
  %16 = ptrtoint ptr %size_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i51.i = zext i8 %17 to i32
  %shl.i52.i = shl nuw i32 %conv.i51.i, 24
  %18 = ptrtoint ptr %arrayidx1.i40.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i40.i, align 1
  %conv2.i54.i = zext i8 %19 to i32
  %shl3.i55.i = shl nuw nsw i32 %conv2.i54.i, 16
  %or.i56.i = or i32 %shl3.i55.i, %shl.i52.i
  %20 = ptrtoint ptr %arrayidx4.i44.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i44.i, align 1
  %conv5.i58.i = zext i8 %21 to i32
  %shl6.i59.i = shl nuw nsw i32 %conv5.i58.i, 8
  %or7.i60.i = or i32 %or.i56.i, %shl6.i59.i
  %22 = ptrtoint ptr %arrayidx8.i48.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i48.i, align 1
  %conv9.i62.i = zext i8 %23 to i32
  %or10.i63.i = or i32 %or7.i60.i, %conv9.i62.i
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %or10.i63.i
  %24 = ptrtoint ptr %off_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i.i.i = zext i8 %25 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %26 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i.i = zext i8 %27 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %28 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i.i = zext i8 %29 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %30 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i.i = zext i8 %31 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %or10.i63.i
  %add.i.i.i.i = add i32 %or10.i.i.i, %or10.i63.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr2.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %fdt to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add.i.i.i.i)
  %cmp4.i.i.i = icmp ugt i32 %sub.ptr.sub.i.i.i, %add.i.i.i.i
  %cmp5.i.i.i = icmp ult ptr %add.ptr2.i.i, %fdt
  %or.cond.i.i = select i1 %cmp4.i.i.i, i1 true, i1 %cmp5.i.i.i
  br i1 %or.cond.i.i, label %if.end6.i.cleanup_crit_edge, label %if.end10.i.i.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.i.i.i:                                   ; preds = %if.end6.i
  %add11.i.i.i = add i32 %add.i.i.i.i, %add.i
  %totalsize.i.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %32 = ptrtoint ptr %totalsize.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %totalsize.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %33 to i32
  %shl.i.i.i.i = shl nuw i32 %conv.i.i.i.i, 24
  %arrayidx1.i.i.i.i = getelementptr i8, ptr %totalsize.i.i.i, i32 1
  %34 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx1.i.i.i.i, align 1
  %conv2.i.i.i.i = zext i8 %35 to i32
  %shl3.i.i.i.i = shl nuw nsw i32 %conv2.i.i.i.i, 16
  %or.i.i.i.i = or i32 %shl3.i.i.i.i, %shl.i.i.i.i
  %arrayidx4.i.i.i.i = getelementptr i8, ptr %totalsize.i.i.i, i32 2
  %36 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx4.i.i.i.i, align 1
  %conv5.i.i.i.i = zext i8 %37 to i32
  %shl6.i.i.i.i = shl nuw nsw i32 %conv5.i.i.i.i, 8
  %or7.i.i.i.i = or i32 %or.i.i.i.i, %shl6.i.i.i.i
  %arrayidx8.i.i.i.i = getelementptr i8, ptr %totalsize.i.i.i, i32 3
  %38 = ptrtoint ptr %arrayidx8.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx8.i.i.i.i, align 1
  %conv9.i.i.i.i = zext i8 %39 to i32
  %or10.i.i.i.i = or i32 %or7.i.i.i.i, %conv9.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i.i.i, i32 %or10.i.i.i.i)
  %cmp13.i.i.i = icmp ugt i32 %add11.i.i.i, %or10.i.i.i.i
  br i1 %cmp13.i.i.i, label %if.end10.i.i.i.cleanup_crit_edge, label %if.end13.i

if.end10.i.i.i.cleanup_crit_edge:                 ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.i:                                       ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %add.i
  %add.ptr17.i.i.i = getelementptr i8, ptr %fdt, i32 %add.i.i.i.i
  %sub.ptr.lhs.cast19.i.i.i = ptrtoint ptr %add.ptr17.i.i.i to i32
  %sub.ptr.sub21.i.i.i = sub i32 %sub.ptr.lhs.cast19.i.i.i, %sub.ptr.lhs.cast.i.i.i
  %40 = call ptr @memmove(ptr %add.ptr.i.i.i, ptr %add.ptr2.i.i, i32 %sub.ptr.sub21.i.i.i)
  %41 = ptrtoint ptr %size_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i26.i.i = zext i8 %42 to i32
  %shl.i27.i.i = shl nuw i32 %conv.i26.i.i, 24
  %43 = ptrtoint ptr %arrayidx1.i40.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx1.i40.i, align 1
  %conv2.i29.i.i = zext i8 %44 to i32
  %shl3.i30.i.i = shl nuw nsw i32 %conv2.i29.i.i, 16
  %or.i31.i.i = or i32 %shl3.i30.i.i, %shl.i27.i.i
  %45 = ptrtoint ptr %arrayidx4.i44.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx4.i44.i, align 1
  %conv5.i33.i.i = zext i8 %46 to i32
  %shl6.i34.i.i = shl nuw nsw i32 %conv5.i33.i.i, 8
  %or7.i35.i.i = or i32 %or.i31.i.i, %shl6.i34.i.i
  %47 = ptrtoint ptr %arrayidx8.i48.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx8.i48.i, align 1
  %conv9.i37.i.i = zext i8 %48 to i32
  %or10.i38.i.i = or i32 %or7.i35.i.i, %conv9.i37.i.i
  %add.i.i = add i32 %or10.i38.i.i, %add.i
  store i32 %add.i.i, ptr %size_dt_strings.i, align 4
  %49 = call ptr @memcpy(ptr %add.ptr9.i, ptr %name, i32 %add.i)
  br label %fdt_find_add_string_.exit

fdt_find_add_string_.exit:                        ; preds = %if.end13.i, %if.then5.i
  %retval.0.i = phi i32 [ %or10.i63.i, %if.end13.i ], [ %sub.ptr.sub.i, %if.then5.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %fdt_find_add_string_.exit.cleanup_crit_edge, label %if.end4

fdt_find_add_string_.exit.cleanup_crit_edge:      ; preds = %fdt_find_add_string_.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %fdt_find_add_string_.exit
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %50 = ptrtoint ptr %off_dt_struct.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %off_dt_struct.i.i, align 1
  %conv.i.i.i33 = zext i8 %51 to i32
  %shl.i.i.i34 = shl nuw i32 %conv.i.i.i33, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 1
  %52 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i35 = zext i8 %53 to i32
  %shl3.i.i.i36 = shl nuw nsw i32 %conv2.i.i.i35, 16
  %or.i.i.i37 = or i32 %shl3.i.i.i36, %shl.i.i.i34
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 2
  %54 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i38 = zext i8 %55 to i32
  %shl6.i.i.i39 = shl nuw nsw i32 %conv5.i.i.i38, 8
  %or7.i.i.i40 = or i32 %or.i.i.i37, %shl6.i.i.i39
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 3
  %56 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i41 = zext i8 %57 to i32
  %or10.i.i.i42 = or i32 %or7.i.i.i40, %conv9.i.i.i41
  %add.ptr.i.i43 = getelementptr i8, ptr %fdt, i32 %or10.i.i.i42
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i43, i32 %call
  %58 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr1.i.i, ptr %prop, align 4
  %59 = add i32 %len, 15
  %add6 = and i32 %59, -4
  %call7 = tail call fastcc i32 @fdt_splice_struct_(ptr noundef %fdt, ptr noundef %add.ptr1.i.i, i32 noundef 0, i32 noundef %add6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end4
  br i1 %tobool.not.i, label %if.then11, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @strlen(ptr noundef %name) #10
  %add.neg.i = xor i32 %call.i, -1
  %60 = ptrtoint ptr %size_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i.i45 = zext i8 %61 to i32
  %shl.i.i46 = shl nuw i32 %conv.i.i45, 24
  %62 = ptrtoint ptr %arrayidx1.i40.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx1.i40.i, align 1
  %conv2.i.i48 = zext i8 %63 to i32
  %shl3.i.i49 = shl nuw nsw i32 %conv2.i.i48, 16
  %or.i.i50 = or i32 %shl3.i.i49, %shl.i.i46
  %64 = ptrtoint ptr %arrayidx4.i44.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx4.i44.i, align 1
  %conv5.i.i52 = zext i8 %65 to i32
  %shl6.i.i53 = shl nuw nsw i32 %conv5.i.i52, 8
  %or7.i.i54 = or i32 %or.i.i50, %shl6.i.i53
  %66 = ptrtoint ptr %arrayidx8.i48.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx8.i48.i, align 1
  %conv9.i.i56 = zext i8 %67 to i32
  %or10.i.i57 = or i32 %or7.i.i54, %conv9.i.i56
  %sub.i = add i32 %or10.i.i57, %add.neg.i
  store i32 %sub.i, ptr %size_dt_strings.i, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prop, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 3, ptr %69, align 4
  %71 = load ptr, ptr %prop, align 4
  %nameoff = getelementptr inbounds %struct.fdt_property, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %nameoff to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i, ptr %nameoff, align 4
  %73 = load ptr, ptr %prop, align 4
  %len14 = getelementptr inbounds %struct.fdt_property, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %len14 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %len, ptr %len14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then8.cleanup_crit_edge, %fdt_find_add_string_.exit.cleanup_crit_edge, %if.end10.i.i.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i, %fdt_find_add_string_.exit.cleanup_crit_edge ], [ %call7, %if.then11 ], [ %call7, %if.then8.cleanup_crit_edge ], [ -3, %if.end10.i.i.i.cleanup_crit_edge ], [ -4, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_setprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr nocapture noundef readonly %val, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %prop_data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop_data) #8
  %0 = ptrtoint ptr %prop_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %prop_data, align 4, !annotation !8
  %call = call i32 @fdt_setprop_placeholder(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr noundef nonnull %prop_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %prop_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prop_data, align 4
  %3 = call ptr @memcpy(ptr %2, ptr %val, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop_data) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_appendprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr nocapture noundef readonly %val, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %prop = alloca ptr, align 4
  %oldlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oldlen) #8
  %0 = ptrtoint ptr %oldlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %oldlen, align 4, !annotation !8
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %entry.cleanup21_crit_edge

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

cleanup.cont.i:                                   ; preds = %entry
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %1 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %2 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %3 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %4 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %5 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %6 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %7 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %8 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup.cont.i.cleanup21_crit_edge, label %if.end8.i

cleanup.cont.i.cleanup21_crit_edge:               ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %9 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %10 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %11 = ptrtoint ptr %arrayidx1.i27.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %12 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %13 = ptrtoint ptr %arrayidx4.i31.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %14 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %15 = ptrtoint ptr %arrayidx8.i35.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %16 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end8.i.cleanup21_crit_edge

if.end8.i.cleanup21_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %if.end12.i.cleanup.cont_crit_edge

if.end12.i.cleanup.cont_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i.cleanup.cont_crit_edge
  %call.i = call ptr @fdt_get_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %oldlen) #8
  %18 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %prop, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %cleanup.cont
  %19 = ptrtoint ptr %oldlen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oldlen, align 4
  %add = add i32 %20, %len
  %data = getelementptr inbounds %struct.fdt_property, ptr %call.i, i32 0, i32 3
  %sub = add i32 %20, 3
  %and = and i32 %sub, -4
  %sub5 = add i32 %add, 3
  %and6 = and i32 %sub5, -4
  %call7 = call fastcc i32 @fdt_splice_struct_(ptr noundef %fdt, ptr noundef %data, i32 noundef %and, i32 noundef %and6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then2.cleanup21_crit_edge

if.then2.cleanup21_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

if.end10:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %len11 = getelementptr inbounds %struct.fdt_property, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %len11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %len11, align 4
  %22 = ptrtoint ptr %oldlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oldlen, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %23
  %24 = call ptr @memcpy(ptr %add.ptr, ptr %val, i32 %len)
  br label %cleanup21

if.else:                                          ; preds = %cleanup.cont
  %call14 = call fastcc i32 @fdt_add_property_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %len, ptr noundef nonnull %prop)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.else.cleanup21_crit_edge

if.else.cleanup21_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

if.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prop, align 4
  %data18 = getelementptr inbounds %struct.fdt_property, ptr %26, i32 0, i32 3
  %27 = call ptr @memcpy(ptr %data18, ptr %val, i32 %len)
  br label %cleanup21

cleanup21:                                        ; preds = %if.end17, %if.else.cleanup21_crit_edge, %if.end10, %if.then2.cleanup21_crit_edge, %if.end8.i.cleanup21_crit_edge, %cleanup.cont.i.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  %retval.1 = phi i32 [ %call7, %if.then2.cleanup21_crit_edge ], [ %call14, %if.else.cleanup21_crit_edge ], [ 0, %if.end17 ], [ 0, %if.end10 ], [ -12, %if.end8.i.cleanup21_crit_edge ], [ -10, %cleanup.cont.i.cleanup21_crit_edge ], [ %call1.i, %entry.cleanup21_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldlen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_delprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !8
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %entry.cleanup6_crit_edge

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

cleanup.cont.i:                                   ; preds = %entry
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %1 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %2 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %3 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %4 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %5 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %6 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %7 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %8 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup.cont.i.cleanup6_crit_edge, label %if.end8.i

cleanup.cont.i.cleanup6_crit_edge:                ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %9 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %10 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %11 = ptrtoint ptr %arrayidx1.i27.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %12 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %13 = ptrtoint ptr %arrayidx4.i31.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %14 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %15 = ptrtoint ptr %arrayidx8.i35.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %16 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end8.i.cleanup6_crit_edge

if.end8.i.cleanup6_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %if.end12.i.cleanup.cont_crit_edge

if.end12.i.cleanup.cont_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i.cleanup.cont_crit_edge
  %call.i = call ptr @fdt_get_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %len) #8
  %tobool.not = icmp eq ptr %call.i, null
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  br i1 %tobool.not, label %cleanup.cont.cleanup6_crit_edge, label %if.end3

cleanup.cont.cleanup6_crit_edge:                  ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

if.end3:                                          ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  %20 = add i32 %19, 15
  %add4 = and i32 %20, -4
  %call5 = call fastcc i32 @fdt_splice_struct_(ptr noundef %fdt, ptr noundef nonnull %call.i, i32 noundef %add4, i32 noundef 0)
  br label %cleanup6

cleanup6:                                         ; preds = %if.end3, %cleanup.cont.cleanup6_crit_edge, %if.end8.i.cleanup6_crit_edge, %cleanup.cont.i.cleanup6_crit_edge, %entry.cleanup6_crit_edge
  %retval.1 = phi i32 [ %call5, %if.end3 ], [ -12, %if.end8.i.cleanup6_crit_edge ], [ -10, %cleanup.cont.i.cleanup6_crit_edge ], [ %call1.i, %entry.cleanup6_crit_edge ], [ %19, %cleanup.cont.cleanup6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_add_subnode_namelen(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name, i32 noundef %namelen) local_unnamed_addr #0 align 64 {
entry:
  %nextoffset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset) #8
  %0 = ptrtoint ptr %nextoffset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nextoffset, align 4, !annotation !8
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %entry.cleanup32_crit_edge

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

cleanup.cont.i:                                   ; preds = %entry
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %1 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %2 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %3 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %4 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %5 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %6 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %7 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %8 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup.cont.i.cleanup32_crit_edge, label %if.end8.i

cleanup.cont.i.cleanup32_crit_edge:               ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %9 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %10 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %11 = ptrtoint ptr %arrayidx1.i27.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %12 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %13 = ptrtoint ptr %arrayidx4.i31.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %14 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %15 = ptrtoint ptr %arrayidx8.i35.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %16 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end8.i.cleanup32_crit_edge

if.end8.i.cleanup32_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %if.end12.i.cleanup.cont_crit_edge

if.end12.i.cleanup.cont_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i.cleanup.cont_crit_edge
  %call1 = tail call i32 @fdt_subnode_offset_namelen(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name, i32 noundef %namelen) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %cleanup.cont.cleanup32_crit_edge, label %if.else

cleanup.cont.cleanup32_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.else:                                          ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp4.not = icmp eq i32 %call1, -1
  br i1 %cmp4.not, label %if.end7, label %if.else.cleanup32_crit_edge

if.else.cleanup32_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.end7:                                          ; preds = %if.else
  %call8 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef nonnull %nextoffset) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp10.not = icmp eq i32 %call8, 1
  br i1 %cmp10.not, label %if.end7.do.body_crit_edge, label %if.end7.cleanup32_crit_edge

if.end7.cleanup32_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end7.do.body_crit_edge
  %18 = ptrtoint ptr %nextoffset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nextoffset, align 4
  %call13 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %19, ptr noundef nonnull %nextoffset) #8
  %call13.off = add i32 %call13, -3
  %switch = icmp ult i32 %call13.off, 2
  br i1 %switch, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %20 = ptrtoint ptr %off_dt_struct.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %off_dt_struct.i.i, align 1
  %conv.i.i.i = zext i8 %21 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 1
  %22 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %23 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 2
  %24 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %25 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 3
  %26 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %27 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %19
  %sub = add i32 %namelen, 4
  %and = and i32 %sub, -4
  %add19 = add i32 %and, 8
  %call20 = call fastcc i32 @fdt_splice_struct_(ptr noundef %fdt, ptr noundef %add.ptr1.i.i, i32 noundef 0, i32 noundef %add19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end22, label %do.end.cleanup32_crit_edge

do.end.cleanup32_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %add.ptr1.i.i, align 4
  %name24 = getelementptr inbounds %struct.fdt_node_header, ptr %add.ptr1.i.i, i32 0, i32 1
  %29 = call ptr @memset(ptr %name24, i32 0, i32 %and)
  %30 = call ptr @memcpy(ptr %name24, ptr %name, i32 %namelen)
  %add.ptr = getelementptr i8, ptr %add.ptr1.i.i, i32 %add19
  %add.ptr31 = getelementptr i8, ptr %add.ptr, i32 -4
  %31 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %add.ptr31, align 4
  br label %cleanup32

cleanup32:                                        ; preds = %if.end22, %do.end.cleanup32_crit_edge, %if.end7.cleanup32_crit_edge, %if.else.cleanup32_crit_edge, %cleanup.cont.cleanup32_crit_edge, %if.end8.i.cleanup32_crit_edge, %cleanup.cont.i.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.1 = phi i32 [ %19, %if.end22 ], [ -2, %cleanup.cont.cleanup32_crit_edge ], [ %call1, %if.else.cleanup32_crit_edge ], [ -13, %if.end7.cleanup32_crit_edge ], [ %call20, %do.end.cleanup32_crit_edge ], [ -12, %if.end8.i.cleanup32_crit_edge ], [ -10, %cleanup.cont.i.cleanup32_crit_edge ], [ %call1.i, %entry.cleanup32_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_subnode_offset_namelen(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_add_subnode(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @strlen(ptr noundef %name) #9
  %call1 = tail call i32 @fdt_add_subnode_namelen(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_del_node(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %entry.cleanup7_crit_edge

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup7

cleanup.cont.i:                                   ; preds = %entry
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %3 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %5 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup.cont.i.cleanup7_crit_edge, label %if.end8.i

cleanup.cont.i.cleanup7_crit_edge:                ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup7

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %8 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %9 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i27.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %11 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i31.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %13 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i35.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %15 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end8.i.cleanup7_crit_edge

if.end8.i.cleanup7_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup7

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %if.end12.i.cleanup.cont_crit_edge

if.end12.i.cleanup.cont_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i.cleanup.cont_crit_edge
  %call1 = tail call i32 @fdt_node_end_offset_(ptr noundef %fdt, i32 noundef %nodeoffset) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %cleanup.cont.cleanup7_crit_edge, label %if.end4

cleanup.cont.cleanup7_crit_edge:                  ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup7

if.end4:                                          ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %17 = ptrtoint ptr %off_dt_struct.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %off_dt_struct.i.i, align 1
  %conv.i.i.i = zext i8 %18 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 1
  %19 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %20 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 2
  %21 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %22 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 3
  %23 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %24 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %nodeoffset
  %sub = sub i32 %call1, %nodeoffset
  %call6 = tail call fastcc i32 @fdt_splice_struct_(ptr noundef %fdt, ptr noundef %add.ptr1.i.i, i32 noundef %sub, i32 noundef 0)
  br label %cleanup7

cleanup7:                                         ; preds = %if.end4, %cleanup.cont.cleanup7_crit_edge, %if.end8.i.cleanup7_crit_edge, %cleanup.cont.i.cleanup7_crit_edge, %entry.cleanup7_crit_edge
  %retval.1 = phi i32 [ %call6, %if.end4 ], [ %call1, %cleanup.cont.cleanup7_crit_edge ], [ -12, %if.end8.i.cleanup7_crit_edge ], [ -10, %cleanup.cont.i.cleanup7_crit_edge ], [ %call1.i, %entry.cleanup7_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_node_end_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_open_into(ptr noundef %fdt, ptr noundef %buf, i32 noundef %bufsize) local_unnamed_addr #0 align 64 {
entry:
  %struct_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %struct_size) #8
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
  %add.ptr = getelementptr i8, ptr %fdt, i32 %or10.i
  %call1 = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup49_crit_edge, label %cleanup.cont

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49

cleanup.cont:                                     ; preds = %entry
  %call2 = tail call i32 @fdt_num_mem_rsv(ptr noundef %fdt) #8
  %add = shl i32 %call2, 4
  %mul = add i32 %add, 16
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %version, align 1
  %conv.i96 = zext i8 %9 to i32
  %shl.i97 = shl nuw i32 %conv.i96, 24
  %arrayidx1.i98 = getelementptr i8, ptr %version, i32 1
  %10 = ptrtoint ptr %arrayidx1.i98 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i98, align 1
  %conv2.i99 = zext i8 %11 to i32
  %shl3.i100 = shl nuw nsw i32 %conv2.i99, 16
  %or.i101 = or i32 %shl3.i100, %shl.i97
  %arrayidx4.i102 = getelementptr i8, ptr %version, i32 2
  %12 = ptrtoint ptr %arrayidx4.i102 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i102, align 1
  %conv5.i103 = zext i8 %13 to i32
  %shl6.i104 = shl nuw nsw i32 %conv5.i103, 8
  %or7.i105 = or i32 %or.i101, %shl6.i104
  %arrayidx8.i106 = getelementptr i8, ptr %version, i32 3
  %14 = ptrtoint ptr %arrayidx8.i106 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i106, align 1
  %conv9.i107 = zext i8 %15 to i32
  %or10.i108 = or i32 %or7.i105, %conv9.i107
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i108)
  %cmp5 = icmp ugt i32 %or10.i108, 16
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %16 = ptrtoint ptr %size_dt_struct to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %size_dt_struct, align 1
  %conv.i109 = zext i8 %17 to i32
  %shl.i110 = shl nuw i32 %conv.i109, 24
  %arrayidx1.i111 = getelementptr i8, ptr %size_dt_struct, i32 1
  %18 = ptrtoint ptr %arrayidx1.i111 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i111, align 1
  %conv2.i112 = zext i8 %19 to i32
  %shl3.i113 = shl nuw nsw i32 %conv2.i112, 16
  %or.i114 = or i32 %shl3.i113, %shl.i110
  %arrayidx4.i115 = getelementptr i8, ptr %size_dt_struct, i32 2
  %20 = ptrtoint ptr %arrayidx4.i115 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i115, align 1
  %conv5.i116 = zext i8 %21 to i32
  %shl6.i117 = shl nuw nsw i32 %conv5.i116, 8
  %or7.i118 = or i32 %or.i114, %shl6.i117
  %arrayidx8.i119 = getelementptr i8, ptr %size_dt_struct, i32 3
  %22 = ptrtoint ptr %arrayidx8.i119 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i119, align 1
  %conv9.i120 = zext i8 %23 to i32
  %or10.i121 = or i32 %or7.i118, %conv9.i120
  %24 = ptrtoint ptr %struct_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or10.i121, ptr %struct_size, align 4
  br label %if.end19

if.else:                                          ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i108)
  %cmp10 = icmp eq i32 %or10.i108, 16
  br i1 %cmp10, label %if.then11, label %if.else.cleanup49_crit_edge

if.else.cleanup49_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49

if.then11:                                        ; preds = %if.else
  %25 = ptrtoint ptr %struct_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %struct_size, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then11
  %26 = ptrtoint ptr %struct_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %struct_size, align 4
  %call12 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %27, ptr noundef nonnull %struct_size) #8
  %cmp13.not = icmp eq i32 %call12, 9
  br i1 %cmp13.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = ptrtoint ptr %struct_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %struct_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp14 = icmp slt i32 %29, 0
  br i1 %cmp14, label %while.end.cleanup49_crit_edge, label %while.end.if.end19_crit_edge

while.end.if.end19_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

while.end.cleanup49_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49

if.end19:                                         ; preds = %while.end.if.end19_crit_edge, %if.then6
  %30 = ptrtoint ptr %struct_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %struct_size, align 4
  %call22 = call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef %mul, i32 noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end19
  %call24 = call i32 @fdt_move(ptr noundef %fdt, ptr noundef %buf, i32 noundef %bufsize) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then23.cleanup49_crit_edge

if.then23.cleanup49_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49

if.end27:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 5
  %32 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 17, ptr %version.i, align 4
  %33 = ptrtoint ptr %struct_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %struct_size, align 4
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 9
  %35 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %size_dt_struct.i, align 4
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 1
  %36 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %bufsize, ptr %totalsize.i, align 4
  br label %cleanup49

if.end28:                                         ; preds = %if.end19
  %add29 = add i32 %add, 56
  %add30 = add i32 %add29, %31
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %37 = ptrtoint ptr %size_dt_strings to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %size_dt_strings, align 1
  %conv.i135 = zext i8 %38 to i32
  %shl.i136 = shl nuw i32 %conv.i135, 24
  %arrayidx1.i137 = getelementptr i8, ptr %size_dt_strings, i32 1
  %39 = ptrtoint ptr %arrayidx1.i137 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx1.i137, align 1
  %conv2.i138 = zext i8 %40 to i32
  %shl3.i139 = shl nuw nsw i32 %conv2.i138, 16
  %or.i140 = or i32 %shl3.i139, %shl.i136
  %arrayidx4.i141 = getelementptr i8, ptr %size_dt_strings, i32 2
  %41 = ptrtoint ptr %arrayidx4.i141 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx4.i141, align 1
  %conv5.i142 = zext i8 %42 to i32
  %shl6.i143 = shl nuw nsw i32 %conv5.i142, 8
  %or7.i144 = or i32 %or.i140, %shl6.i143
  %arrayidx8.i145 = getelementptr i8, ptr %size_dt_strings, i32 3
  %43 = ptrtoint ptr %arrayidx8.i145 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx8.i145, align 1
  %conv9.i146 = zext i8 %44 to i32
  %or10.i147 = or i32 %or7.i144, %conv9.i146
  %add32 = add i32 %add30, %or10.i147
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %bufsize)
  %cmp33 = icmp sgt i32 %add32, %bufsize
  br i1 %cmp33, label %if.end28.cleanup49_crit_edge, label %if.end35

if.end28.cleanup49_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49

if.end35:                                         ; preds = %if.end28
  %add.ptr36 = getelementptr i8, ptr %buf, i32 %add32
  %cmp37 = icmp ugt ptr %add.ptr36, %fdt
  %cmp38 = icmp ugt ptr %add.ptr, %buf
  %or.cond = select i1 %cmp37, i1 %cmp38, i1 false
  br i1 %or.cond, label %if.then39, label %if.end35.if.end45_crit_edge

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then39:                                        ; preds = %if.end35
  %add.ptr40 = getelementptr i8, ptr %add.ptr, i32 %add32
  %add.ptr41 = getelementptr i8, ptr %buf, i32 %bufsize
  %cmp42 = icmp ugt ptr %add.ptr40, %add.ptr41
  br i1 %cmp42, label %if.then39.cleanup49_crit_edge, label %if.then39.if.end45_crit_edge

if.then39.if.end45_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then39.cleanup49_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49

if.end45:                                         ; preds = %if.then39.if.end45_crit_edge, %if.end35.if.end45_crit_edge
  %tmp.0 = phi ptr [ %add.ptr, %if.then39.if.end45_crit_edge ], [ %buf, %if.end35.if.end45_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %tmp.0, i32 40
  %off_mem_rsvmap.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %45 = ptrtoint ptr %off_mem_rsvmap.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %off_mem_rsvmap.i, align 1
  %conv.i.i = zext i8 %46 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 1
  %47 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %48 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 2
  %49 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %50 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 3
  %51 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %52 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %add.ptr2.i = getelementptr i8, ptr %fdt, i32 %or10.i.i
  %53 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr2.i, i32 %mul)
  %off_mem_rsvmap.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i32 0, i32 4
  %54 = ptrtoint ptr %off_mem_rsvmap.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 40, ptr %off_mem_rsvmap.i.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %tmp.0, i32 %add29
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %55 = ptrtoint ptr %off_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i31.i = zext i8 %56 to i32
  %shl.i32.i = shl nuw i32 %conv.i31.i, 24
  %arrayidx1.i33.i = getelementptr i8, ptr %off_dt_struct.i, i32 1
  %57 = ptrtoint ptr %arrayidx1.i33.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx1.i33.i, align 1
  %conv2.i34.i = zext i8 %58 to i32
  %shl3.i35.i = shl nuw nsw i32 %conv2.i34.i, 16
  %or.i36.i = or i32 %shl3.i35.i, %shl.i32.i
  %arrayidx4.i37.i = getelementptr i8, ptr %off_dt_struct.i, i32 2
  %59 = ptrtoint ptr %arrayidx4.i37.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx4.i37.i, align 1
  %conv5.i38.i = zext i8 %60 to i32
  %shl6.i39.i = shl nuw nsw i32 %conv5.i38.i, 8
  %or7.i40.i = or i32 %or.i36.i, %shl6.i39.i
  %arrayidx8.i41.i = getelementptr i8, ptr %off_dt_struct.i, i32 3
  %61 = ptrtoint ptr %arrayidx8.i41.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx8.i41.i, align 1
  %conv9.i42.i = zext i8 %62 to i32
  %or10.i43.i = or i32 %or7.i40.i, %conv9.i42.i
  %add.ptr5.i = getelementptr i8, ptr %fdt, i32 %or10.i43.i
  %63 = call ptr @memmove(ptr %add.ptr3.i, ptr %add.ptr5.i, i32 %31)
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i32 0, i32 2
  %64 = ptrtoint ptr %off_dt_struct.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add29, ptr %off_dt_struct.i.i, align 4
  %size_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i32 0, i32 9
  %65 = ptrtoint ptr %size_dt_struct.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %31, ptr %size_dt_struct.i.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %tmp.0, i32 %add30
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %66 = ptrtoint ptr %off_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i44.i = zext i8 %67 to i32
  %shl.i45.i = shl nuw i32 %conv.i44.i, 24
  %arrayidx1.i46.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %68 = ptrtoint ptr %arrayidx1.i46.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx1.i46.i, align 1
  %conv2.i47.i = zext i8 %69 to i32
  %shl3.i48.i = shl nuw nsw i32 %conv2.i47.i, 16
  %or.i49.i = or i32 %shl3.i48.i, %shl.i45.i
  %arrayidx4.i50.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %70 = ptrtoint ptr %arrayidx4.i50.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx4.i50.i, align 1
  %conv5.i51.i = zext i8 %71 to i32
  %shl6.i52.i = shl nuw nsw i32 %conv5.i51.i, 8
  %or7.i53.i = or i32 %or.i49.i, %shl6.i52.i
  %arrayidx8.i54.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %72 = ptrtoint ptr %arrayidx8.i54.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx8.i54.i, align 1
  %conv9.i55.i = zext i8 %73 to i32
  %or10.i56.i = or i32 %or7.i53.i, %conv9.i55.i
  %add.ptr8.i = getelementptr i8, ptr %fdt, i32 %or10.i56.i
  %74 = call ptr @memmove(ptr %add.ptr6.i, ptr %add.ptr8.i, i32 %or10.i147)
  %off_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i32 0, i32 3
  %75 = ptrtoint ptr %off_dt_strings.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add30, ptr %off_dt_strings.i.i, align 4
  %76 = ptrtoint ptr %size_dt_strings to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %size_dt_strings, align 1
  %conv.i57.i = zext i8 %77 to i32
  %shl.i58.i = shl nuw i32 %conv.i57.i, 24
  %78 = ptrtoint ptr %arrayidx1.i137 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx1.i137, align 1
  %conv2.i60.i = zext i8 %79 to i32
  %shl3.i61.i = shl nuw nsw i32 %conv2.i60.i, 16
  %or.i62.i = or i32 %shl3.i61.i, %shl.i58.i
  %80 = ptrtoint ptr %arrayidx4.i141 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx4.i141, align 1
  %conv5.i64.i = zext i8 %81 to i32
  %shl6.i65.i = shl nuw nsw i32 %conv5.i64.i, 8
  %or7.i66.i = or i32 %or.i62.i, %shl6.i65.i
  %82 = ptrtoint ptr %arrayidx8.i145 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx8.i145, align 1
  %conv9.i68.i = zext i8 %83 to i32
  %or10.i69.i = or i32 %or7.i66.i, %conv9.i68.i
  %size_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %tmp.0, i32 0, i32 8
  %84 = ptrtoint ptr %size_dt_strings.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or10.i69.i, ptr %size_dt_strings.i.i, align 4
  %85 = call ptr @memmove(ptr %buf, ptr %tmp.0, i32 %add32)
  %86 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -804389139, ptr %buf, align 4
  %totalsize.i161 = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 1
  %87 = ptrtoint ptr %totalsize.i161 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %bufsize, ptr %totalsize.i161, align 4
  %version.i162 = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 5
  %88 = ptrtoint ptr %version.i162 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 17, ptr %version.i162, align 4
  %last_comp_version.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 6
  %89 = ptrtoint ptr %last_comp_version.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 16, ptr %last_comp_version.i, align 4
  %boot_cpuid_phys = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 7
  %90 = ptrtoint ptr %boot_cpuid_phys to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %boot_cpuid_phys, align 1
  %conv.i163 = zext i8 %91 to i32
  %shl.i164 = shl nuw i32 %conv.i163, 24
  %arrayidx1.i165 = getelementptr i8, ptr %boot_cpuid_phys, i32 1
  %92 = ptrtoint ptr %arrayidx1.i165 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx1.i165, align 1
  %conv2.i166 = zext i8 %93 to i32
  %shl3.i167 = shl nuw nsw i32 %conv2.i166, 16
  %or.i168 = or i32 %shl3.i167, %shl.i164
  %arrayidx4.i169 = getelementptr i8, ptr %boot_cpuid_phys, i32 2
  %94 = ptrtoint ptr %arrayidx4.i169 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx4.i169, align 1
  %conv5.i170 = zext i8 %95 to i32
  %shl6.i171 = shl nuw nsw i32 %conv5.i170, 8
  %or7.i172 = or i32 %or.i168, %shl6.i171
  %arrayidx8.i173 = getelementptr i8, ptr %boot_cpuid_phys, i32 3
  %96 = ptrtoint ptr %arrayidx8.i173 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx8.i173, align 1
  %conv9.i174 = zext i8 %97 to i32
  %or10.i175 = or i32 %or7.i172, %conv9.i174
  %boot_cpuid_phys.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 7
  %98 = ptrtoint ptr %boot_cpuid_phys.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or10.i175, ptr %boot_cpuid_phys.i, align 4
  br label %cleanup49

cleanup49:                                        ; preds = %if.end45, %if.then39.cleanup49_crit_edge, %if.end28.cleanup49_crit_edge, %if.end27, %if.then23.cleanup49_crit_edge, %while.end.cleanup49_crit_edge, %if.else.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  %retval.1 = phi i32 [ 0, %if.end27 ], [ 0, %if.end45 ], [ %call1, %entry.cleanup49_crit_edge ], [ %29, %while.end.cleanup49_crit_edge ], [ -10, %if.else.cleanup49_crit_edge ], [ %call24, %if.then23.cleanup49_crit_edge ], [ -3, %if.end28.cleanup49_crit_edge ], [ -3, %if.then39.cleanup49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %struct_size) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_ro_probe_(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @fdt_blocks_misordered_(ptr nocapture noundef readonly %fdt, i32 noundef %mem_rsv_size, i32 noundef %struct_size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %off_mem_rsvmap = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %0 = ptrtoint ptr %off_mem_rsvmap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %off_mem_rsvmap, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %off_mem_rsvmap, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %3 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %off_mem_rsvmap, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %5 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %off_mem_rsvmap, i32 3
  %6 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %7 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %or10.i)
  %cmp = icmp ult i32 %or10.i, 40
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.lhs.false

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %8 = ptrtoint ptr %off_dt_struct to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %off_dt_struct, align 1
  %conv.i24 = zext i8 %9 to i32
  %shl.i25 = shl nuw i32 %conv.i24, 24
  %arrayidx1.i26 = getelementptr i8, ptr %off_dt_struct, i32 1
  %10 = ptrtoint ptr %arrayidx1.i26 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i26, align 1
  %conv2.i27 = zext i8 %11 to i32
  %shl3.i28 = shl nuw nsw i32 %conv2.i27, 16
  %or.i29 = or i32 %shl3.i28, %shl.i25
  %arrayidx4.i30 = getelementptr i8, ptr %off_dt_struct, i32 2
  %12 = ptrtoint ptr %arrayidx4.i30 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i30, align 1
  %conv5.i31 = zext i8 %13 to i32
  %shl6.i32 = shl nuw nsw i32 %conv5.i31, 8
  %or7.i33 = or i32 %or.i29, %shl6.i32
  %arrayidx8.i34 = getelementptr i8, ptr %off_dt_struct, i32 3
  %14 = ptrtoint ptr %arrayidx8.i34 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i34, align 1
  %conv9.i35 = zext i8 %15 to i32
  %or10.i36 = or i32 %or7.i33, %conv9.i35
  %add = add i32 %or10.i, %mem_rsv_size
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i36, i32 %add)
  %cmp4 = icmp ult i32 %or10.i36, %add
  br i1 %cmp4, label %lor.lhs.false.lor.end_crit_edge, label %lor.lhs.false5

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %off_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %16 = ptrtoint ptr %off_dt_strings to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %off_dt_strings, align 1
  %conv.i50 = zext i8 %17 to i32
  %shl.i51 = shl nuw i32 %conv.i50, 24
  %arrayidx1.i52 = getelementptr i8, ptr %off_dt_strings, i32 1
  %18 = ptrtoint ptr %arrayidx1.i52 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i52, align 1
  %conv2.i53 = zext i8 %19 to i32
  %shl3.i54 = shl nuw nsw i32 %conv2.i53, 16
  %or.i55 = or i32 %shl3.i54, %shl.i51
  %arrayidx4.i56 = getelementptr i8, ptr %off_dt_strings, i32 2
  %20 = ptrtoint ptr %arrayidx4.i56 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i56, align 1
  %conv5.i57 = zext i8 %21 to i32
  %shl6.i58 = shl nuw nsw i32 %conv5.i57, 8
  %or7.i59 = or i32 %or.i55, %shl6.i58
  %arrayidx8.i60 = getelementptr i8, ptr %off_dt_strings, i32 3
  %22 = ptrtoint ptr %arrayidx8.i60 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i60, align 1
  %conv9.i61 = zext i8 %23 to i32
  %or10.i62 = or i32 %or7.i59, %conv9.i61
  %add9 = add i32 %or10.i36, %struct_size
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i62, i32 %add9)
  %cmp10 = icmp ult i32 %or10.i62, %add9
  br i1 %cmp10, label %lor.lhs.false5.lor.end_crit_edge, label %lor.rhs

lor.lhs.false5.lor.end_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #7
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %24 = ptrtoint ptr %totalsize to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %totalsize, align 1
  %conv.i76 = zext i8 %25 to i32
  %shl.i77 = shl nuw i32 %conv.i76, 24
  %arrayidx1.i78 = getelementptr i8, ptr %totalsize, i32 1
  %26 = ptrtoint ptr %arrayidx1.i78 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx1.i78, align 1
  %conv2.i79 = zext i8 %27 to i32
  %shl3.i80 = shl nuw nsw i32 %conv2.i79, 16
  %or.i81 = or i32 %shl3.i80, %shl.i77
  %arrayidx4.i82 = getelementptr i8, ptr %totalsize, i32 2
  %28 = ptrtoint ptr %arrayidx4.i82 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx4.i82, align 1
  %conv5.i83 = zext i8 %29 to i32
  %shl6.i84 = shl nuw nsw i32 %conv5.i83, 8
  %or7.i85 = or i32 %or.i81, %shl6.i84
  %arrayidx8.i86 = getelementptr i8, ptr %totalsize, i32 3
  %30 = ptrtoint ptr %arrayidx8.i86 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx8.i86, align 1
  %conv9.i87 = zext i8 %31 to i32
  %or10.i88 = or i32 %or7.i85, %conv9.i87
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %32 = ptrtoint ptr %size_dt_strings to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %size_dt_strings, align 1
  %conv.i102 = zext i8 %33 to i32
  %shl.i103 = shl nuw i32 %conv.i102, 24
  %arrayidx1.i104 = getelementptr i8, ptr %size_dt_strings, i32 1
  %34 = ptrtoint ptr %arrayidx1.i104 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx1.i104, align 1
  %conv2.i105 = zext i8 %35 to i32
  %shl3.i106 = shl nuw nsw i32 %conv2.i105, 16
  %or.i107 = or i32 %shl3.i106, %shl.i103
  %arrayidx4.i108 = getelementptr i8, ptr %size_dt_strings, i32 2
  %36 = ptrtoint ptr %arrayidx4.i108 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx4.i108, align 1
  %conv5.i109 = zext i8 %37 to i32
  %shl6.i110 = shl nuw nsw i32 %conv5.i109, 8
  %or7.i111 = or i32 %or.i107, %shl6.i110
  %arrayidx8.i112 = getelementptr i8, ptr %size_dt_strings, i32 3
  %38 = ptrtoint ptr %arrayidx8.i112 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx8.i112, align 1
  %conv9.i113 = zext i8 %39 to i32
  %or10.i114 = or i32 %or7.i111, %conv9.i113
  %add15 = add i32 %or10.i114, %or10.i62
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i88, i32 %add15)
  %cmp16 = icmp ult i32 %or10.i88, %add15
  %phi.cast = zext i1 %cmp16 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false5.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %40 = phi i32 [ 1, %lor.lhs.false5.lor.end_crit_edge ], [ 1, %lor.lhs.false.lor.end_crit_edge ], [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_pack(ptr noundef %fdt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %cleanup.cont.i, label %entry.cleanup5_crit_edge

entry.cleanup5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup5

cleanup.cont.i:                                   ; preds = %entry
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %0 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %3 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %5 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp6.i = icmp ult i32 %or10.i.i, 17
  br i1 %cmp6.i, label %cleanup.cont.i.cleanup5_crit_edge, label %if.end8.i

cleanup.cont.i.cleanup5_crit_edge:                ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup5

if.end8.i:                                        ; preds = %cleanup.cont.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %8 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i25.i = zext i8 %9 to i32
  %shl.i26.i = shl nuw i32 %conv.i25.i, 24
  %arrayidx1.i27.i = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i27.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i28.i = zext i8 %11 to i32
  %shl3.i29.i = shl nuw nsw i32 %conv2.i28.i, 16
  %or.i30.i = or i32 %shl3.i29.i, %shl.i26.i
  %arrayidx4.i31.i = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i31.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i32.i = zext i8 %13 to i32
  %shl6.i33.i = shl nuw nsw i32 %conv5.i32.i, 8
  %or7.i34.i = or i32 %or.i30.i, %shl6.i33.i
  %arrayidx8.i35.i = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i35.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i36.i = zext i8 %15 to i32
  %or10.i37.i = or i32 %or7.i34.i, %conv9.i36.i
  %call10.i = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %fdt, i32 noundef 16, i32 noundef %or10.i37.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end8.i.cleanup5_crit_edge

if.end8.i.cleanup5_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup5

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %or10.i.i)
  %cmp17.i = icmp ugt i32 %or10.i.i, 17
  br i1 %cmp17.i, label %if.then18.i, label %if.end12.i.cleanup.cont_crit_edge

if.end12.i.cleanup.cont_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 17, ptr %version.i, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then18.i, %if.end12.i.cleanup.cont_crit_edge
  %call1 = tail call i32 @fdt_num_mem_rsv(ptr noundef %fdt) #8
  %add = shl i32 %call1, 4
  %mul = add i32 %add, 16
  %17 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i = zext i8 %18 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %19 = ptrtoint ptr %arrayidx1.i27.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.i27.i, align 1
  %conv2.i = zext i8 %20 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %21 = ptrtoint ptr %arrayidx4.i31.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i31.i, align 1
  %conv5.i = zext i8 %22 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %23 = ptrtoint ptr %arrayidx8.i35.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx8.i35.i, align 1
  %conv9.i = zext i8 %24 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %25 = ptrtoint ptr %size_dt_strings to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %size_dt_strings, align 1
  %conv.i13 = zext i8 %26 to i32
  %shl.i14 = shl nuw i32 %conv.i13, 24
  %arrayidx1.i15 = getelementptr i8, ptr %size_dt_strings, i32 1
  %27 = ptrtoint ptr %arrayidx1.i15 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i15, align 1
  %conv2.i16 = zext i8 %28 to i32
  %shl3.i17 = shl nuw nsw i32 %conv2.i16, 16
  %or.i18 = or i32 %shl3.i17, %shl.i14
  %arrayidx4.i19 = getelementptr i8, ptr %size_dt_strings, i32 2
  %29 = ptrtoint ptr %arrayidx4.i19 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4.i19, align 1
  %conv5.i20 = zext i8 %30 to i32
  %shl6.i21 = shl nuw nsw i32 %conv5.i20, 8
  %or7.i22 = or i32 %or.i18, %shl6.i21
  %arrayidx8.i23 = getelementptr i8, ptr %size_dt_strings, i32 3
  %31 = ptrtoint ptr %arrayidx8.i23 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx8.i23, align 1
  %conv9.i24 = zext i8 %32 to i32
  %or10.i25 = or i32 %or7.i22, %conv9.i24
  %add.i = add i32 %add, 56
  %add1.i = add i32 %or10.i, %add.i
  %add.ptr.i = getelementptr i8, ptr %fdt, i32 40
  %off_mem_rsvmap.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %33 = ptrtoint ptr %off_mem_rsvmap.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %off_mem_rsvmap.i, align 1
  %conv.i.i26 = zext i8 %34 to i32
  %shl.i.i27 = shl nuw i32 %conv.i.i26, 24
  %arrayidx1.i.i28 = getelementptr i8, ptr %off_mem_rsvmap.i, i32 1
  %35 = ptrtoint ptr %arrayidx1.i.i28 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx1.i.i28, align 1
  %conv2.i.i29 = zext i8 %36 to i32
  %shl3.i.i30 = shl nuw nsw i32 %conv2.i.i29, 16
  %or.i.i31 = or i32 %shl3.i.i30, %shl.i.i27
  %arrayidx4.i.i32 = getelementptr i8, ptr %off_mem_rsvmap.i, i32 2
  %37 = ptrtoint ptr %arrayidx4.i.i32 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx4.i.i32, align 1
  %conv5.i.i33 = zext i8 %38 to i32
  %shl6.i.i34 = shl nuw nsw i32 %conv5.i.i33, 8
  %or7.i.i35 = or i32 %or.i.i31, %shl6.i.i34
  %arrayidx8.i.i36 = getelementptr i8, ptr %off_mem_rsvmap.i, i32 3
  %39 = ptrtoint ptr %arrayidx8.i.i36 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx8.i.i36, align 1
  %conv9.i.i37 = zext i8 %40 to i32
  %or10.i.i38 = or i32 %or7.i.i35, %conv9.i.i37
  %add.ptr2.i = getelementptr i8, ptr %fdt, i32 %or10.i.i38
  %41 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr2.i, i32 %mul)
  store i32 40, ptr %off_mem_rsvmap.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %fdt, i32 %add.i
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %42 = ptrtoint ptr %off_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i31.i = zext i8 %43 to i32
  %shl.i32.i = shl nuw i32 %conv.i31.i, 24
  %arrayidx1.i33.i = getelementptr i8, ptr %off_dt_struct.i, i32 1
  %44 = ptrtoint ptr %arrayidx1.i33.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx1.i33.i, align 1
  %conv2.i34.i = zext i8 %45 to i32
  %shl3.i35.i = shl nuw nsw i32 %conv2.i34.i, 16
  %or.i36.i = or i32 %shl3.i35.i, %shl.i32.i
  %arrayidx4.i37.i = getelementptr i8, ptr %off_dt_struct.i, i32 2
  %46 = ptrtoint ptr %arrayidx4.i37.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx4.i37.i, align 1
  %conv5.i38.i = zext i8 %47 to i32
  %shl6.i39.i = shl nuw nsw i32 %conv5.i38.i, 8
  %or7.i40.i = or i32 %or.i36.i, %shl6.i39.i
  %arrayidx8.i41.i = getelementptr i8, ptr %off_dt_struct.i, i32 3
  %48 = ptrtoint ptr %arrayidx8.i41.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx8.i41.i, align 1
  %conv9.i42.i = zext i8 %49 to i32
  %or10.i43.i = or i32 %or7.i40.i, %conv9.i42.i
  %add.ptr5.i = getelementptr i8, ptr %fdt, i32 %or10.i43.i
  %50 = call ptr @memmove(ptr %add.ptr3.i, ptr %add.ptr5.i, i32 %or10.i)
  store i32 %add.i, ptr %off_dt_struct.i, align 4
  store i32 %or10.i, ptr %size_dt_struct.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %fdt, i32 %add1.i
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %51 = ptrtoint ptr %off_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i44.i = zext i8 %52 to i32
  %shl.i45.i = shl nuw i32 %conv.i44.i, 24
  %arrayidx1.i46.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %53 = ptrtoint ptr %arrayidx1.i46.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx1.i46.i, align 1
  %conv2.i47.i = zext i8 %54 to i32
  %shl3.i48.i = shl nuw nsw i32 %conv2.i47.i, 16
  %or.i49.i = or i32 %shl3.i48.i, %shl.i45.i
  %arrayidx4.i50.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %55 = ptrtoint ptr %arrayidx4.i50.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx4.i50.i, align 1
  %conv5.i51.i = zext i8 %56 to i32
  %shl6.i52.i = shl nuw nsw i32 %conv5.i51.i, 8
  %or7.i53.i = or i32 %or.i49.i, %shl6.i52.i
  %arrayidx8.i54.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %57 = ptrtoint ptr %arrayidx8.i54.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx8.i54.i, align 1
  %conv9.i55.i = zext i8 %58 to i32
  %or10.i56.i = or i32 %or7.i53.i, %conv9.i55.i
  %add.ptr8.i = getelementptr i8, ptr %fdt, i32 %or10.i56.i
  %59 = call ptr @memmove(ptr %add.ptr6.i, ptr %add.ptr8.i, i32 %or10.i25)
  store i32 %add1.i, ptr %off_dt_strings.i, align 4
  %60 = load i8, ptr %size_dt_strings, align 1
  %conv.i57.i = zext i8 %60 to i32
  %shl.i58.i = shl nuw i32 %conv.i57.i, 24
  %61 = load i8, ptr %arrayidx1.i15, align 1
  %conv2.i60.i = zext i8 %61 to i32
  %shl3.i61.i = shl nuw nsw i32 %conv2.i60.i, 16
  %or.i62.i = or i32 %shl3.i61.i, %shl.i58.i
  %62 = load i8, ptr %arrayidx4.i19, align 1
  %conv5.i64.i = zext i8 %62 to i32
  %shl6.i65.i = shl nuw nsw i32 %conv5.i64.i, 8
  %or7.i66.i = or i32 %or.i62.i, %shl6.i65.i
  %63 = load i8, ptr %arrayidx8.i23, align 1
  %conv9.i68.i = zext i8 %63 to i32
  %or10.i69.i = or i32 %or7.i66.i, %conv9.i68.i
  store i32 %or10.i69.i, ptr %size_dt_strings, align 4
  %conv.i3.i = zext i8 %60 to i32
  %shl.i4.i = shl nuw i32 %conv.i3.i, 24
  %conv2.i6.i = zext i8 %61 to i32
  %shl3.i7.i = shl nuw nsw i32 %conv2.i6.i, 16
  %or.i8.i = or i32 %shl3.i7.i, %shl.i4.i
  %conv5.i10.i = zext i8 %62 to i32
  %shl6.i11.i = shl nuw nsw i32 %conv5.i10.i, 8
  %or7.i12.i = or i32 %or.i8.i, %shl6.i11.i
  %conv9.i14.i = zext i8 %63 to i32
  %or10.i15.i = or i32 %or7.i12.i, %conv9.i14.i
  %add.i54 = add i32 %or10.i15.i, %add1.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %64 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add.i54, ptr %totalsize.i, align 4
  br label %cleanup5

cleanup5:                                         ; preds = %cleanup.cont, %if.end8.i.cleanup5_crit_edge, %cleanup.cont.i.cleanup5_crit_edge, %entry.cleanup5_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup.cont ], [ -12, %if.end8.i.cleanup5_crit_edge ], [ -10, %cleanup.cont.i.cleanup5_crit_edge ], [ %call1.i, %entry.cleanup5_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_check_node_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_find_string_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_get_property(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind }

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
!8 = !{!"auto-init"}
