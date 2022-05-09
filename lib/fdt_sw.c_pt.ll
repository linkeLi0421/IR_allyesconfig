; ModuleID = '/llk/IR_all_yes/lib/fdt_sw.c_pt.bc'
source_filename = "../lib/fdt_sw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_node_header = type { i32, [0 x i8] }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fdt_create_with_flags(ptr nocapture noundef %buf, i32 noundef %bufsize, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %bufsize)
  %cmp = icmp slt i32 %bufsize, 48
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = call ptr @memset(ptr %buf, i32 0, i32 %bufsize)
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 804389138, ptr %buf, align 4
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 5
  %2 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 17, ptr %version.i, align 4
  %last_comp_version.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 6
  %3 = ptrtoint ptr %last_comp_version.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %flags, ptr %last_comp_version.i, align 4
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bufsize, ptr %totalsize.i, align 4
  %off_mem_rsvmap.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 4
  %5 = ptrtoint ptr %off_mem_rsvmap.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 48, ptr %off_mem_rsvmap.i, align 4
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %off_dt_struct.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 48, ptr %off_dt_struct.i, align 4
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 3
  %7 = ptrtoint ptr %off_dt_strings.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %off_dt_strings.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -3, %entry.cleanup_crit_edge ], [ -18, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @fdt_create(ptr nocapture noundef writeonly %buf, i32 noundef %bufsize) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %bufsize)
  %cmp.i = icmp slt i32 %bufsize, 48
  br i1 %cmp.i, label %entry.fdt_create_with_flags.exit_crit_edge, label %if.end.i

entry.fdt_create_with_flags.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fdt_create_with_flags.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = call ptr @memset(ptr %buf, i32 0, i32 %bufsize)
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 804389138, ptr %buf, align 4
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 5
  %2 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 17, ptr %version.i.i, align 4
  %last_comp_version.i.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 6
  %3 = ptrtoint ptr %last_comp_version.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %last_comp_version.i.i, align 4
  %totalsize.i.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %totalsize.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bufsize, ptr %totalsize.i.i, align 4
  %off_mem_rsvmap.i.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 4
  %5 = ptrtoint ptr %off_mem_rsvmap.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 48, ptr %off_mem_rsvmap.i.i, align 4
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %off_dt_struct.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 48, ptr %off_dt_struct.i.i, align 4
  %off_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 3
  %7 = ptrtoint ptr %off_dt_strings.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %off_dt_strings.i.i, align 4
  br label %fdt_create_with_flags.exit

fdt_create_with_flags.exit:                       ; preds = %if.end.i, %entry.fdt_create_with_flags.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -3, %entry.fdt_create_with_flags.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fdt_resize(ptr noundef readonly %fdt, ptr noundef %buf, i32 noundef %bufsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fdt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fdt, align 1
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %fdt, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %3 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %fdt, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %5 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %fdt, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -804389139, i32 %or10.i.i)
  %cmp.i = icmp eq i32 %or10.i.i, -804389139
  call void @__sanitizer_cov_trace_const_cmp4(i32 804389138, i32 %or10.i.i)
  %cmp5.not.i = icmp eq i32 %or10.i.i, 804389138
  %..i = select i1 %cmp5.not.i, i32 0, i32 -9
  %retval.0.i = select i1 %cmp.i, i32 -7, i32 %..i
  br i1 %cmp5.not.i, label %cleanup.cont, label %entry.cleanup29_crit_edge

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup29

cleanup.cont:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufsize)
  %cmp1 = icmp slt i32 %bufsize, 0
  br i1 %cmp1, label %cleanup.cont.cleanup29_crit_edge, label %if.end3

cleanup.cont.cleanup29_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup29

if.end3:                                          ; preds = %cleanup.cont
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %8 = ptrtoint ptr %off_dt_struct to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %off_dt_struct, align 1
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %off_dt_struct, i32 1
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %11 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %off_dt_struct, i32 2
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %13 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %off_dt_struct, i32 3
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %15 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %16 = ptrtoint ptr %size_dt_struct to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %size_dt_struct, align 1
  %conv.i62 = zext i8 %17 to i32
  %shl.i63 = shl nuw i32 %conv.i62, 24
  %arrayidx1.i64 = getelementptr i8, ptr %size_dt_struct, i32 1
  %18 = ptrtoint ptr %arrayidx1.i64 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i64, align 1
  %conv2.i65 = zext i8 %19 to i32
  %shl3.i66 = shl nuw nsw i32 %conv2.i65, 16
  %or.i67 = or i32 %shl3.i66, %shl.i63
  %arrayidx4.i68 = getelementptr i8, ptr %size_dt_struct, i32 2
  %20 = ptrtoint ptr %arrayidx4.i68 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i68, align 1
  %conv5.i69 = zext i8 %21 to i32
  %shl6.i70 = shl nuw nsw i32 %conv5.i69, 8
  %or7.i71 = or i32 %or.i67, %shl6.i70
  %arrayidx8.i72 = getelementptr i8, ptr %size_dt_struct, i32 3
  %22 = ptrtoint ptr %arrayidx8.i72 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i72, align 1
  %conv9.i73 = zext i8 %23 to i32
  %or10.i74 = or i32 %or7.i71, %conv9.i73
  %add = add i32 %or10.i74, %or10.i
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %24 = ptrtoint ptr %size_dt_strings to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %size_dt_strings, align 1
  %conv.i75 = zext i8 %25 to i32
  %shl.i76 = shl nuw i32 %conv.i75, 24
  %arrayidx1.i77 = getelementptr i8, ptr %size_dt_strings, i32 1
  %26 = ptrtoint ptr %arrayidx1.i77 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx1.i77, align 1
  %conv2.i78 = zext i8 %27 to i32
  %shl3.i79 = shl nuw nsw i32 %conv2.i78, 16
  %or.i80 = or i32 %shl3.i79, %shl.i76
  %arrayidx4.i81 = getelementptr i8, ptr %size_dt_strings, i32 2
  %28 = ptrtoint ptr %arrayidx4.i81 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx4.i81, align 1
  %conv5.i82 = zext i8 %29 to i32
  %shl6.i83 = shl nuw nsw i32 %conv5.i82, 8
  %or7.i84 = or i32 %or.i80, %shl6.i83
  %arrayidx8.i85 = getelementptr i8, ptr %size_dt_strings, i32 3
  %30 = ptrtoint ptr %arrayidx8.i85 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx8.i85, align 1
  %conv9.i86 = zext i8 %31 to i32
  %or10.i87 = or i32 %or7.i84, %conv9.i86
  %add8 = add i32 %or10.i87, %add
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %32 = ptrtoint ptr %totalsize to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %totalsize, align 1
  %conv.i88 = zext i8 %33 to i32
  %shl.i89 = shl nuw i32 %conv.i88, 24
  %arrayidx1.i90 = getelementptr i8, ptr %totalsize, i32 1
  %34 = ptrtoint ptr %arrayidx1.i90 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx1.i90, align 1
  %conv2.i91 = zext i8 %35 to i32
  %shl3.i92 = shl nuw nsw i32 %conv2.i91, 16
  %or.i93 = or i32 %shl3.i92, %shl.i89
  %arrayidx4.i94 = getelementptr i8, ptr %totalsize, i32 2
  %36 = ptrtoint ptr %arrayidx4.i94 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx4.i94, align 1
  %conv5.i95 = zext i8 %37 to i32
  %shl6.i96 = shl nuw nsw i32 %conv5.i95, 8
  %or7.i97 = or i32 %or.i93, %shl6.i96
  %arrayidx8.i98 = getelementptr i8, ptr %totalsize, i32 3
  %38 = ptrtoint ptr %arrayidx8.i98 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx8.i98, align 1
  %conv9.i99 = zext i8 %39 to i32
  %or10.i100 = or i32 %or7.i97, %conv9.i99
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %or10.i100)
  %cmp10 = icmp ugt i32 %add8, %or10.i100
  br i1 %cmp10, label %if.end3.cleanup29_crit_edge, label %if.end12

if.end3.cleanup29_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup29

if.end12:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %bufsize)
  %cmp14 = icmp ugt i32 %add8, %bufsize
  br i1 %cmp14, label %if.end12.cleanup29_crit_edge, label %if.end16

if.end12.cleanup29_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup29

if.end16:                                         ; preds = %if.end12
  %add.ptr = getelementptr i8, ptr %fdt, i32 %or10.i100
  %idx.neg = sub i32 0, %or10.i87
  %add.ptr19 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %add.ptr20 = getelementptr i8, ptr %buf, i32 %bufsize
  %add.ptr22 = getelementptr i8, ptr %add.ptr20, i32 %idx.neg
  %cmp23.not = icmp ugt ptr %buf, %fdt
  br i1 %cmp23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %40 = call ptr @memmove(ptr %buf, ptr %fdt, i32 %add)
  %41 = call ptr @memmove(ptr %add.ptr22, ptr %add.ptr19, i32 %or10.i87)
  br label %if.end25

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %42 = call ptr @memmove(ptr %add.ptr22, ptr %add.ptr19, i32 %or10.i87)
  %43 = call ptr @memmove(ptr %buf, ptr %fdt, i32 %add)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then24
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 1
  %44 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %bufsize, ptr %totalsize.i, align 4
  %off_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %buf, i32 0, i32 3
  %45 = ptrtoint ptr %off_dt_strings to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %off_dt_strings, align 1
  %conv.i114 = zext i8 %46 to i32
  %shl.i115 = shl nuw i32 %conv.i114, 24
  %arrayidx1.i116 = getelementptr i8, ptr %off_dt_strings, i32 1
  %47 = ptrtoint ptr %arrayidx1.i116 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx1.i116, align 1
  %conv2.i117 = zext i8 %48 to i32
  %shl3.i118 = shl nuw nsw i32 %conv2.i117, 16
  %or.i119 = or i32 %shl3.i118, %shl.i115
  %arrayidx4.i120 = getelementptr i8, ptr %off_dt_strings, i32 2
  %49 = ptrtoint ptr %arrayidx4.i120 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx4.i120, align 1
  %conv5.i121 = zext i8 %50 to i32
  %shl6.i122 = shl nuw nsw i32 %conv5.i121, 8
  %or7.i123 = or i32 %or.i119, %shl6.i122
  %arrayidx8.i124 = getelementptr i8, ptr %off_dt_strings, i32 3
  %51 = ptrtoint ptr %arrayidx8.i124 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx8.i124, align 1
  %conv9.i125 = zext i8 %52 to i32
  %or10.i126 = or i32 %or7.i123, %conv9.i125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10.i126)
  %tobool.not = icmp eq i32 %or10.i126, 0
  br i1 %tobool.not, label %if.end25.cleanup29_crit_edge, label %if.then27

if.end25.cleanup29_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %off_dt_strings to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %bufsize, ptr %off_dt_strings, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %if.then27, %if.end25.cleanup29_crit_edge, %if.end12.cleanup29_crit_edge, %if.end3.cleanup29_crit_edge, %cleanup.cont.cleanup29_crit_edge, %entry.cleanup29_crit_edge
  %retval.1 = phi i32 [ %retval.0.i, %entry.cleanup29_crit_edge ], [ -3, %cleanup.cont.cleanup29_crit_edge ], [ -13, %if.end3.cleanup29_crit_edge ], [ -3, %if.end12.cleanup29_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end25.cleanup29_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fdt_add_reservemap_entry(ptr nocapture noundef %fdt, i64 noundef %addr, i64 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fdt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fdt, align 1
  %conv.i.i.i = zext i8 %1 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %fdt, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %3 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %fdt, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %5 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %fdt, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %7 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 804389138, i32 %or10.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %or10.i.i.i, 804389138
  br i1 %cmp5.not.i.i, label %if.end.i, label %fdt_sw_probe_memrsv_.exit

if.end.i:                                         ; preds = %entry
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %8 = ptrtoint ptr %off_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i.i = zext i8 %9 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %11 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %13 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %15 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10.i.i)
  %cmp.not.i = icmp eq i32 %or10.i.i, 0
  br i1 %cmp.not.i, label %cleanup.cont, label %if.end.i.cleanup8_crit_edge

if.end.i.cleanup8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup8

fdt_sw_probe_memrsv_.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -804389139, i32 %or10.i.i.i)
  %cmp.i.i = icmp eq i32 %or10.i.i.i, -804389139
  %retval.0.i.i = select i1 %cmp.i.i, i32 -7, i32 -9
  br label %cleanup8

cleanup.cont:                                     ; preds = %if.end.i
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %16 = ptrtoint ptr %off_dt_struct to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %off_dt_struct, align 1
  %conv.i = zext i8 %17 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %off_dt_struct, i32 1
  %18 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %19 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %off_dt_struct, i32 2
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %21 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %off_dt_struct, i32 3
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %23 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %add = add i32 %or10.i, 16
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %24 = ptrtoint ptr %totalsize to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %totalsize, align 1
  %conv.i17 = zext i8 %25 to i32
  %shl.i18 = shl nuw i32 %conv.i17, 24
  %arrayidx1.i19 = getelementptr i8, ptr %totalsize, i32 1
  %26 = ptrtoint ptr %arrayidx1.i19 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx1.i19, align 1
  %conv2.i20 = zext i8 %27 to i32
  %shl3.i21 = shl nuw nsw i32 %conv2.i20, 16
  %or.i22 = or i32 %shl3.i21, %shl.i18
  %arrayidx4.i23 = getelementptr i8, ptr %totalsize, i32 2
  %28 = ptrtoint ptr %arrayidx4.i23 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx4.i23, align 1
  %conv5.i24 = zext i8 %29 to i32
  %shl6.i25 = shl nuw nsw i32 %conv5.i24, 8
  %or7.i26 = or i32 %or.i22, %shl6.i25
  %arrayidx8.i27 = getelementptr i8, ptr %totalsize, i32 3
  %30 = ptrtoint ptr %arrayidx8.i27 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx8.i27, align 1
  %conv9.i28 = zext i8 %31 to i32
  %or10.i29 = or i32 %or7.i26, %conv9.i28
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %or10.i29)
  %cmp3 = icmp ugt i32 %add, %or10.i29
  br i1 %cmp3, label %cleanup.cont.cleanup8_crit_edge, label %if.end5

cleanup.cont.cleanup8_crit_edge:                  ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup8

if.end5:                                          ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %fdt, i32 %or10.i
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %addr, ptr %add.ptr, align 8
  %size6 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr, i32 0, i32 1
  %33 = ptrtoint ptr %size6 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %size, ptr %size6, align 8
  %34 = ptrtoint ptr %off_dt_struct to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %off_dt_struct, align 4
  br label %cleanup8

cleanup8:                                         ; preds = %if.end5, %cleanup.cont.cleanup8_crit_edge, %fdt_sw_probe_memrsv_.exit, %if.end.i.cleanup8_crit_edge
  %retval.1 = phi i32 [ 0, %if.end5 ], [ %retval.0.i.i, %fdt_sw_probe_memrsv_.exit ], [ -3, %cleanup.cont.cleanup8_crit_edge ], [ -7, %if.end.i.cleanup8_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fdt_finish_reservemap(ptr nocapture noundef %fdt) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fdt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fdt, align 1
  %conv.i.i.i.i = zext i8 %1 to i32
  %shl.i.i.i.i = shl nuw i32 %conv.i.i.i.i, 24
  %arrayidx1.i.i.i.i = getelementptr i8, ptr %fdt, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i.i.i, align 1
  %conv2.i.i.i.i = zext i8 %3 to i32
  %shl3.i.i.i.i = shl nuw nsw i32 %conv2.i.i.i.i, 16
  %or.i.i.i.i = or i32 %shl3.i.i.i.i, %shl.i.i.i.i
  %arrayidx4.i.i.i.i = getelementptr i8, ptr %fdt, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i.i.i, align 1
  %conv5.i.i.i.i = zext i8 %5 to i32
  %shl6.i.i.i.i = shl nuw nsw i32 %conv5.i.i.i.i, 8
  %or7.i.i.i.i = or i32 %or.i.i.i.i, %shl6.i.i.i.i
  %arrayidx8.i.i.i.i = getelementptr i8, ptr %fdt, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i.i.i, align 1
  %conv9.i.i.i.i = zext i8 %7 to i32
  %or10.i.i.i.i = or i32 %or7.i.i.i.i, %conv9.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 804389138, i32 %or10.i.i.i.i)
  %cmp5.not.i.i.i = icmp eq i32 %or10.i.i.i.i, 804389138
  br i1 %cmp5.not.i.i.i, label %if.end.i.i, label %fdt_sw_probe_memrsv_.exit.i

if.end.i.i:                                       ; preds = %entry
  %off_dt_strings.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %8 = ptrtoint ptr %off_dt_strings.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %off_dt_strings.i.i, align 1
  %conv.i.i.i = zext i8 %9 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_strings.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %11 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_strings.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %13 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_strings.i.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %15 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10.i.i.i)
  %cmp.not.i.i = icmp eq i32 %or10.i.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup.cont.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fdt_sw_probe_memrsv_.exit.i:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -804389139, i32 %or10.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or10.i.i.i.i, -804389139
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i32 -7, i32 -9
  br label %cleanup

cleanup.cont.i:                                   ; preds = %if.end.i.i
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %16 = ptrtoint ptr %off_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i.i = zext i8 %17 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_dt_struct.i, i32 1
  %18 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %19 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_dt_struct.i, i32 2
  %20 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %21 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_dt_struct.i, i32 3
  %22 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %23 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %add.i = add i32 %or10.i.i, 16
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %24 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %totalsize.i, align 1
  %conv.i17.i = zext i8 %25 to i32
  %shl.i18.i = shl nuw i32 %conv.i17.i, 24
  %arrayidx1.i19.i = getelementptr i8, ptr %totalsize.i, i32 1
  %26 = ptrtoint ptr %arrayidx1.i19.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx1.i19.i, align 1
  %conv2.i20.i = zext i8 %27 to i32
  %shl3.i21.i = shl nuw nsw i32 %conv2.i20.i, 16
  %or.i22.i = or i32 %shl3.i21.i, %shl.i18.i
  %arrayidx4.i23.i = getelementptr i8, ptr %totalsize.i, i32 2
  %28 = ptrtoint ptr %arrayidx4.i23.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx4.i23.i, align 1
  %conv5.i24.i = zext i8 %29 to i32
  %shl6.i25.i = shl nuw nsw i32 %conv5.i24.i, 8
  %or7.i26.i = or i32 %or.i22.i, %shl6.i25.i
  %arrayidx8.i27.i = getelementptr i8, ptr %totalsize.i, i32 3
  %30 = ptrtoint ptr %arrayidx8.i27.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx8.i27.i, align 1
  %conv9.i28.i = zext i8 %31 to i32
  %or10.i29.i = or i32 %or7.i26.i, %conv9.i28.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %or10.i29.i)
  %cmp3.i = icmp ugt i32 %add.i, %or10.i29.i
  br i1 %cmp3.i, label %cleanup.cont.i.cleanup_crit_edge, label %if.end

cleanup.cont.i.cleanup_crit_edge:                 ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %fdt, i32 %or10.i.i
  %32 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 16)
  %33 = ptrtoint ptr %off_dt_struct.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i, ptr %off_dt_struct.i, align 4
  %34 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %totalsize.i, align 1
  %conv.i = zext i8 %35 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %36 = ptrtoint ptr %arrayidx1.i19.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx1.i19.i, align 1
  %conv2.i = zext i8 %37 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %38 = ptrtoint ptr %arrayidx4.i23.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx4.i23.i, align 1
  %conv5.i = zext i8 %39 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %40 = ptrtoint ptr %arrayidx8.i27.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx8.i27.i, align 1
  %conv9.i = zext i8 %41 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %42 = ptrtoint ptr %off_dt_strings.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or10.i, ptr %off_dt_strings.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cleanup.cont.i.cleanup_crit_edge, %fdt_sw_probe_memrsv_.exit.i, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -7, %if.end.i.i.cleanup_crit_edge ], [ -3, %cleanup.cont.i.cleanup_crit_edge ], [ %retval.0.i.i.i, %fdt_sw_probe_memrsv_.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fdt_begin_node(ptr noundef %fdt, ptr nocapture noundef readonly %name) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fdt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fdt, align 1
  %conv.i.i.i = zext i8 %1 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %fdt, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %3 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %fdt, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %5 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %fdt, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %7 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 804389138, i32 %or10.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %or10.i.i.i, 804389138
  br i1 %cmp5.not.i.i, label %if.end.i, label %fdt_sw_probe_struct_.exit

if.end.i:                                         ; preds = %entry
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %8 = ptrtoint ptr %off_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i.i = zext i8 %9 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %11 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %13 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %15 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %16 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %totalsize.i, align 1
  %conv.i9.i = zext i8 %17 to i32
  %shl.i10.i = shl nuw i32 %conv.i9.i, 24
  %arrayidx1.i11.i = getelementptr i8, ptr %totalsize.i, i32 1
  %18 = ptrtoint ptr %arrayidx1.i11.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i11.i, align 1
  %conv2.i12.i = zext i8 %19 to i32
  %shl3.i13.i = shl nuw nsw i32 %conv2.i12.i, 16
  %or.i14.i = or i32 %shl3.i13.i, %shl.i10.i
  %arrayidx4.i15.i = getelementptr i8, ptr %totalsize.i, i32 2
  %20 = ptrtoint ptr %arrayidx4.i15.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i15.i, align 1
  %conv5.i16.i = zext i8 %21 to i32
  %shl6.i17.i = shl nuw nsw i32 %conv5.i16.i, 8
  %or7.i18.i = or i32 %or.i14.i, %shl6.i17.i
  %arrayidx8.i19.i = getelementptr i8, ptr %totalsize.i, i32 3
  %22 = ptrtoint ptr %arrayidx8.i19.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i19.i, align 1
  %conv9.i20.i = zext i8 %23 to i32
  %or10.i21.i = or i32 %or7.i18.i, %conv9.i20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i.i, i32 %or10.i21.i)
  %cmp.not.i = icmp eq i32 %or10.i.i, %or10.i21.i
  br i1 %cmp.not.i, label %cleanup.cont, label %if.end.i.cleanup8_crit_edge

if.end.i.cleanup8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup8

fdt_sw_probe_struct_.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -804389139, i32 %or10.i.i.i)
  %cmp.i.i = icmp eq i32 %or10.i.i.i, -804389139
  %retval.0.i.i = select i1 %cmp.i.i, i32 -7, i32 -9
  br label %cleanup8

cleanup.cont:                                     ; preds = %if.end.i
  %call1 = tail call i32 @strlen(ptr noundef %name) #12
  %24 = add i32 %call1, 8
  %add3 = and i32 %24, -4
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %25 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i.i15 = zext i8 %26 to i32
  %shl.i.i16 = shl nuw i32 %conv.i.i15, 24
  %arrayidx1.i.i17 = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %27 = ptrtoint ptr %arrayidx1.i.i17 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i.i17, align 1
  %conv2.i.i18 = zext i8 %28 to i32
  %shl3.i.i19 = shl nuw nsw i32 %conv2.i.i18, 16
  %or.i.i20 = or i32 %shl3.i.i19, %shl.i.i16
  %arrayidx4.i.i21 = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %29 = ptrtoint ptr %arrayidx4.i.i21 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4.i.i21, align 1
  %conv5.i.i22 = zext i8 %30 to i32
  %shl6.i.i23 = shl nuw nsw i32 %conv5.i.i22, 8
  %or7.i.i24 = or i32 %or.i.i20, %shl6.i.i23
  %arrayidx8.i.i25 = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %31 = ptrtoint ptr %arrayidx8.i.i25 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx8.i.i25, align 1
  %conv9.i.i26 = zext i8 %32 to i32
  %or10.i.i27 = or i32 %or7.i.i24, %conv9.i.i26
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %33 = ptrtoint ptr %off_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i34.i = zext i8 %34 to i32
  %shl.i35.i = shl nuw i32 %conv.i34.i, 24
  %arrayidx1.i36.i = getelementptr i8, ptr %off_dt_struct.i, i32 1
  %35 = ptrtoint ptr %arrayidx1.i36.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx1.i36.i, align 1
  %conv2.i37.i = zext i8 %36 to i32
  %shl3.i38.i = shl nuw nsw i32 %conv2.i37.i, 16
  %or.i39.i = or i32 %shl3.i38.i, %shl.i35.i
  %arrayidx4.i40.i = getelementptr i8, ptr %off_dt_struct.i, i32 2
  %37 = ptrtoint ptr %arrayidx4.i40.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx4.i40.i, align 1
  %conv5.i41.i = zext i8 %38 to i32
  %shl6.i42.i = shl nuw nsw i32 %conv5.i41.i, 8
  %or7.i43.i = or i32 %or.i39.i, %shl6.i42.i
  %arrayidx8.i44.i = getelementptr i8, ptr %off_dt_struct.i, i32 3
  %39 = ptrtoint ptr %arrayidx8.i44.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx8.i44.i, align 1
  %conv9.i45.i = zext i8 %40 to i32
  %or10.i46.i = or i32 %or7.i43.i, %conv9.i45.i
  %add.i = add i32 %or10.i.i27, %add3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %or10.i.i27)
  %cmp.i = icmp ult i32 %add.i, %or10.i.i27
  br i1 %cmp.i, label %cleanup.cont.cleanup8_crit_edge, label %lor.lhs.false.i

cleanup.cont.cleanup8_crit_edge:                  ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup8

lor.lhs.false.i:                                  ; preds = %cleanup.cont
  %size_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %arrayidx1.i49.i = getelementptr i8, ptr %size_dt_strings.i, i32 1
  %41 = ptrtoint ptr %arrayidx1.i49.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx1.i49.i, align 1
  %conv2.i50.i = zext i8 %42 to i32
  %shl3.i51.neg.i = mul nsw i32 %conv2.i50.i, -65536
  %43 = ptrtoint ptr %size_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i47.i = zext i8 %44 to i32
  %shl.i48.neg.i = mul i32 %conv.i47.i, -16777216
  %arrayidx4.i53.i = getelementptr i8, ptr %size_dt_strings.i, i32 2
  %45 = ptrtoint ptr %arrayidx4.i53.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx4.i53.i, align 1
  %conv5.i54.i = zext i8 %46 to i32
  %shl6.i55.neg.i = mul nsw i32 %conv5.i54.i, -256
  %arrayidx8.i57.i = getelementptr i8, ptr %size_dt_strings.i, i32 3
  %47 = ptrtoint ptr %arrayidx8.i57.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx8.i57.i, align 1
  %conv9.i58.i = zext i8 %48 to i32
  %49 = ptrtoint ptr %arrayidx1.i11.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx1.i11.i, align 1
  %conv2.i24.i = zext i8 %50 to i32
  %shl3.i25.i = shl nuw nsw i32 %conv2.i24.i, 16
  %51 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %totalsize.i, align 1
  %conv.i21.i = zext i8 %52 to i32
  %shl.i22.i = shl nuw i32 %conv.i21.i, 24
  %or.i26.i = or i32 %shl.i22.i, %shl3.i25.i
  %53 = ptrtoint ptr %arrayidx4.i15.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx4.i15.i, align 1
  %conv5.i28.i = zext i8 %54 to i32
  %shl6.i29.i = shl nuw nsw i32 %conv5.i28.i, 8
  %or7.i30.i = or i32 %or.i26.i, %shl6.i29.i
  %55 = ptrtoint ptr %arrayidx8.i19.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx8.i19.i, align 1
  %conv9.i32.i = zext i8 %56 to i32
  %or10.i33.i = or i32 %or7.i30.i, %conv9.i32.i
  %.neg = sub i32 %shl3.i51.neg.i, %or10.i46.i
  %or.i52.neg.i = add i32 %.neg, %shl.i48.neg.i
  %or7.i56.neg.i = add i32 %or.i52.neg.i, %shl6.i55.neg.i
  %.neg.i = sub i32 %or7.i56.neg.i, %conv9.i58.i
  %sub4.i = add i32 %.neg.i, %or10.i33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub4.i)
  %cmp6.i = icmp ugt i32 %add.i, %sub4.i
  br i1 %cmp6.i, label %lor.lhs.false.i.cleanup8_crit_edge, label %fdt_grab_space_.exit

lor.lhs.false.i.cleanup8_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup8

fdt_grab_space_.exit:                             ; preds = %lor.lhs.false.i
  %57 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.i, ptr %size_dt_struct.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %fdt, i32 %or10.i46.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %or10.i.i27
  %tobool.not = icmp eq ptr %add.ptr1.i.i.i, null
  br i1 %tobool.not, label %fdt_grab_space_.exit.cleanup8_crit_edge, label %if.end6

fdt_grab_space_.exit.cleanup8_crit_edge:          ; preds = %fdt_grab_space_.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup8

if.end6:                                          ; preds = %fdt_grab_space_.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %call1, 1
  %58 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %add.ptr1.i.i.i, align 4
  %name7 = getelementptr inbounds %struct.fdt_node_header, ptr %add.ptr1.i.i.i, i32 0, i32 1
  %59 = call ptr @memcpy(ptr %name7, ptr %name, i32 %add)
  br label %cleanup8

cleanup8:                                         ; preds = %if.end6, %fdt_grab_space_.exit.cleanup8_crit_edge, %lor.lhs.false.i.cleanup8_crit_edge, %cleanup.cont.cleanup8_crit_edge, %fdt_sw_probe_struct_.exit, %if.end.i.cleanup8_crit_edge
  %retval.1 = phi i32 [ 0, %if.end6 ], [ %retval.0.i.i, %fdt_sw_probe_struct_.exit ], [ -3, %fdt_grab_space_.exit.cleanup8_crit_edge ], [ -7, %if.end.i.cleanup8_crit_edge ], [ -3, %lor.lhs.false.i.cleanup8_crit_edge ], [ -3, %cleanup.cont.cleanup8_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fdt_end_node(ptr noundef %fdt) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fdt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fdt, align 1
  %conv.i.i.i = zext i8 %1 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %fdt, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %3 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %fdt, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %5 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %fdt, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %7 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 804389138, i32 %or10.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %or10.i.i.i, 804389138
  br i1 %cmp5.not.i.i, label %if.end.i, label %fdt_sw_probe_struct_.exit

if.end.i:                                         ; preds = %entry
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %8 = ptrtoint ptr %off_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i.i = zext i8 %9 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %11 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %13 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %15 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %16 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %totalsize.i, align 1
  %conv.i9.i = zext i8 %17 to i32
  %shl.i10.i = shl nuw i32 %conv.i9.i, 24
  %arrayidx1.i11.i = getelementptr i8, ptr %totalsize.i, i32 1
  %18 = ptrtoint ptr %arrayidx1.i11.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i11.i, align 1
  %conv2.i12.i = zext i8 %19 to i32
  %shl3.i13.i = shl nuw nsw i32 %conv2.i12.i, 16
  %or.i14.i = or i32 %shl3.i13.i, %shl.i10.i
  %arrayidx4.i15.i = getelementptr i8, ptr %totalsize.i, i32 2
  %20 = ptrtoint ptr %arrayidx4.i15.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i15.i, align 1
  %conv5.i16.i = zext i8 %21 to i32
  %shl6.i17.i = shl nuw nsw i32 %conv5.i16.i, 8
  %or7.i18.i = or i32 %or.i14.i, %shl6.i17.i
  %arrayidx8.i19.i = getelementptr i8, ptr %totalsize.i, i32 3
  %22 = ptrtoint ptr %arrayidx8.i19.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i19.i, align 1
  %conv9.i20.i = zext i8 %23 to i32
  %or10.i21.i = or i32 %or7.i18.i, %conv9.i20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i.i, i32 %or10.i21.i)
  %cmp.not.i = icmp eq i32 %or10.i.i, %or10.i21.i
  br i1 %cmp.not.i, label %cleanup.cont, label %if.end.i.cleanup4_crit_edge

if.end.i.cleanup4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup4

fdt_sw_probe_struct_.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -804389139, i32 %or10.i.i.i)
  %cmp.i.i = icmp eq i32 %or10.i.i.i, -804389139
  %retval.0.i.i = select i1 %cmp.i.i, i32 -7, i32 -9
  br label %cleanup4

cleanup.cont:                                     ; preds = %if.end.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %24 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i.i7 = zext i8 %25 to i32
  %shl.i.i8 = shl nuw i32 %conv.i.i7, 24
  %arrayidx1.i.i9 = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %26 = ptrtoint ptr %arrayidx1.i.i9 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx1.i.i9, align 1
  %conv2.i.i10 = zext i8 %27 to i32
  %shl3.i.i11 = shl nuw nsw i32 %conv2.i.i10, 16
  %or.i.i12 = or i32 %shl3.i.i11, %shl.i.i8
  %arrayidx4.i.i13 = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %28 = ptrtoint ptr %arrayidx4.i.i13 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx4.i.i13, align 1
  %conv5.i.i14 = zext i8 %29 to i32
  %shl6.i.i15 = shl nuw nsw i32 %conv5.i.i14, 8
  %or7.i.i16 = or i32 %or.i.i12, %shl6.i.i15
  %arrayidx8.i.i17 = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %30 = ptrtoint ptr %arrayidx8.i.i17 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx8.i.i17, align 1
  %conv9.i.i18 = zext i8 %31 to i32
  %or10.i.i19 = or i32 %or7.i.i16, %conv9.i.i18
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %32 = ptrtoint ptr %off_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i34.i = zext i8 %33 to i32
  %shl.i35.i = shl nuw i32 %conv.i34.i, 24
  %arrayidx1.i36.i = getelementptr i8, ptr %off_dt_struct.i, i32 1
  %34 = ptrtoint ptr %arrayidx1.i36.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx1.i36.i, align 1
  %conv2.i37.i = zext i8 %35 to i32
  %shl3.i38.i = shl nuw nsw i32 %conv2.i37.i, 16
  %or.i39.i = or i32 %shl3.i38.i, %shl.i35.i
  %arrayidx4.i40.i = getelementptr i8, ptr %off_dt_struct.i, i32 2
  %36 = ptrtoint ptr %arrayidx4.i40.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx4.i40.i, align 1
  %conv5.i41.i = zext i8 %37 to i32
  %shl6.i42.i = shl nuw nsw i32 %conv5.i41.i, 8
  %or7.i43.i = or i32 %or.i39.i, %shl6.i42.i
  %arrayidx8.i44.i = getelementptr i8, ptr %off_dt_struct.i, i32 3
  %38 = ptrtoint ptr %arrayidx8.i44.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx8.i44.i, align 1
  %conv9.i45.i = zext i8 %39 to i32
  %or10.i46.i = or i32 %or7.i43.i, %conv9.i45.i
  %add.i = add i32 %or10.i.i19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %or10.i.i19)
  %cmp.i = icmp ugt i32 %or10.i.i19, -5
  br i1 %cmp.i, label %cleanup.cont.cleanup4_crit_edge, label %lor.lhs.false.i

cleanup.cont.cleanup4_crit_edge:                  ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup4

lor.lhs.false.i:                                  ; preds = %cleanup.cont
  %size_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %arrayidx1.i49.i = getelementptr i8, ptr %size_dt_strings.i, i32 1
  %40 = ptrtoint ptr %arrayidx1.i49.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx1.i49.i, align 1
  %conv2.i50.i = zext i8 %41 to i32
  %shl3.i51.neg.i = mul nsw i32 %conv2.i50.i, -65536
  %42 = ptrtoint ptr %size_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i47.i = zext i8 %43 to i32
  %shl.i48.neg.i = mul i32 %conv.i47.i, -16777216
  %arrayidx4.i53.i = getelementptr i8, ptr %size_dt_strings.i, i32 2
  %44 = ptrtoint ptr %arrayidx4.i53.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx4.i53.i, align 1
  %conv5.i54.i = zext i8 %45 to i32
  %shl6.i55.neg.i = mul nsw i32 %conv5.i54.i, -256
  %arrayidx8.i57.i = getelementptr i8, ptr %size_dt_strings.i, i32 3
  %46 = ptrtoint ptr %arrayidx8.i57.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx8.i57.i, align 1
  %conv9.i58.i = zext i8 %47 to i32
  %48 = ptrtoint ptr %arrayidx1.i11.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx1.i11.i, align 1
  %conv2.i24.i = zext i8 %49 to i32
  %shl3.i25.i = shl nuw nsw i32 %conv2.i24.i, 16
  %50 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %totalsize.i, align 1
  %conv.i21.i = zext i8 %51 to i32
  %shl.i22.i = shl nuw i32 %conv.i21.i, 24
  %or.i26.i = or i32 %shl.i22.i, %shl3.i25.i
  %52 = ptrtoint ptr %arrayidx4.i15.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx4.i15.i, align 1
  %conv5.i28.i = zext i8 %53 to i32
  %shl6.i29.i = shl nuw nsw i32 %conv5.i28.i, 8
  %or7.i30.i = or i32 %or.i26.i, %shl6.i29.i
  %54 = ptrtoint ptr %arrayidx8.i19.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx8.i19.i, align 1
  %conv9.i32.i = zext i8 %55 to i32
  %or10.i33.i = or i32 %or7.i30.i, %conv9.i32.i
  %.neg = sub i32 %shl3.i51.neg.i, %or10.i46.i
  %or.i52.neg.i = add i32 %.neg, %shl.i48.neg.i
  %or7.i56.neg.i = add i32 %or.i52.neg.i, %shl6.i55.neg.i
  %.neg.i = sub i32 %or7.i56.neg.i, %conv9.i58.i
  %sub4.i = add i32 %.neg.i, %or10.i33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub4.i)
  %cmp6.i = icmp ugt i32 %add.i, %sub4.i
  br i1 %cmp6.i, label %lor.lhs.false.i.cleanup4_crit_edge, label %fdt_grab_space_.exit

lor.lhs.false.i.cleanup4_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup4

fdt_grab_space_.exit:                             ; preds = %lor.lhs.false.i
  %56 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add.i, ptr %size_dt_struct.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %fdt, i32 %or10.i46.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %or10.i.i19
  %tobool.not = icmp eq ptr %add.ptr1.i.i.i, null
  br i1 %tobool.not, label %fdt_grab_space_.exit.cleanup4_crit_edge, label %if.end3

fdt_grab_space_.exit.cleanup4_crit_edge:          ; preds = %fdt_grab_space_.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup4

if.end3:                                          ; preds = %fdt_grab_space_.exit
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %add.ptr1.i.i.i, align 4
  br label %cleanup4

cleanup4:                                         ; preds = %if.end3, %fdt_grab_space_.exit.cleanup4_crit_edge, %lor.lhs.false.i.cleanup4_crit_edge, %cleanup.cont.cleanup4_crit_edge, %fdt_sw_probe_struct_.exit, %if.end.i.cleanup4_crit_edge
  %retval.1 = phi i32 [ 0, %if.end3 ], [ %retval.0.i.i, %fdt_sw_probe_struct_.exit ], [ -3, %fdt_grab_space_.exit.cleanup4_crit_edge ], [ -7, %if.end.i.cleanup4_crit_edge ], [ -3, %lor.lhs.false.i.cleanup4_crit_edge ], [ -3, %cleanup.cont.cleanup4_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_property_placeholder(ptr noundef %fdt, ptr noundef %name, i32 noundef %len, ptr nocapture noundef writeonly %valp) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fdt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fdt, align 1
  %conv.i.i.i = zext i8 %1 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %fdt, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %3 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %fdt, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %5 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %fdt, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %7 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 804389138, i32 %or10.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %or10.i.i.i, 804389138
  br i1 %cmp5.not.i.i, label %if.end.i, label %fdt_sw_probe_struct_.exit

if.end.i:                                         ; preds = %entry
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %8 = ptrtoint ptr %off_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i.i = zext i8 %9 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %11 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %13 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %15 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %16 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %totalsize.i, align 1
  %conv.i9.i = zext i8 %17 to i32
  %shl.i10.i = shl nuw i32 %conv.i9.i, 24
  %arrayidx1.i11.i = getelementptr i8, ptr %totalsize.i, i32 1
  %18 = ptrtoint ptr %arrayidx1.i11.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i11.i, align 1
  %conv2.i12.i = zext i8 %19 to i32
  %shl3.i13.i = shl nuw nsw i32 %conv2.i12.i, 16
  %or.i14.i = or i32 %shl3.i13.i, %shl.i10.i
  %arrayidx4.i15.i = getelementptr i8, ptr %totalsize.i, i32 2
  %20 = ptrtoint ptr %arrayidx4.i15.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i15.i, align 1
  %conv5.i16.i = zext i8 %21 to i32
  %shl6.i17.i = shl nuw nsw i32 %conv5.i16.i, 8
  %or7.i18.i = or i32 %or.i14.i, %shl6.i17.i
  %arrayidx8.i19.i = getelementptr i8, ptr %totalsize.i, i32 3
  %22 = ptrtoint ptr %arrayidx8.i19.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i19.i, align 1
  %conv9.i20.i = zext i8 %23 to i32
  %or10.i21.i = or i32 %or7.i18.i, %conv9.i20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i.i, i32 %or10.i21.i)
  %cmp.not.i = icmp eq i32 %or10.i.i, %or10.i21.i
  br i1 %cmp.not.i, label %cleanup.cont, label %if.end.i.cleanup20_crit_edge

if.end.i.cleanup20_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

fdt_sw_probe_struct_.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -804389139, i32 %or10.i.i.i)
  %cmp.i.i = icmp eq i32 %or10.i.i.i, -804389139
  %retval.0.i.i = select i1 %cmp.i.i, i32 -7, i32 -9
  br label %cleanup20

cleanup.cont:                                     ; preds = %if.end.i
  %last_comp_version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 6
  %arrayidx8.i.i46 = getelementptr i8, ptr %last_comp_version.i, i32 3
  %24 = ptrtoint ptr %arrayidx8.i.i46 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx8.i.i46, align 1
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call fastcc i32 @fdt_add_string_(ptr noundef %fdt, ptr noundef %name)
  br label %if.end5

if.else:                                          ; preds = %cleanup.cont
  %27 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %totalsize.i, align 1
  %conv.i.i50 = zext i8 %28 to i32
  %shl.i.i51 = shl nuw i32 %conv.i.i50, 24
  %29 = ptrtoint ptr %arrayidx1.i11.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx1.i11.i, align 1
  %conv2.i.i53 = zext i8 %30 to i32
  %shl3.i.i54 = shl nuw nsw i32 %conv2.i.i53, 16
  %or.i.i55 = or i32 %shl3.i.i54, %shl.i.i51
  %31 = ptrtoint ptr %arrayidx4.i15.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx4.i15.i, align 1
  %conv5.i.i57 = zext i8 %32 to i32
  %shl6.i.i58 = shl nuw nsw i32 %conv5.i.i57, 8
  %or7.i.i59 = or i32 %or.i.i55, %shl6.i.i58
  %33 = ptrtoint ptr %arrayidx8.i19.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx8.i19.i, align 1
  %conv9.i.i61 = zext i8 %34 to i32
  %or10.i.i62 = or i32 %or7.i.i59, %conv9.i.i61
  %add.ptr.i = getelementptr i8, ptr %fdt, i32 %or10.i.i62
  %size_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %35 = ptrtoint ptr %size_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i15.i = zext i8 %36 to i32
  %shl.i16.i = shl nuw i32 %conv.i15.i, 24
  %arrayidx1.i17.i = getelementptr i8, ptr %size_dt_strings.i, i32 1
  %37 = ptrtoint ptr %arrayidx1.i17.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx1.i17.i, align 1
  %conv2.i18.i = zext i8 %38 to i32
  %shl3.i19.i = shl nuw nsw i32 %conv2.i18.i, 16
  %or.i20.i = or i32 %shl3.i19.i, %shl.i16.i
  %arrayidx4.i21.i = getelementptr i8, ptr %size_dt_strings.i, i32 2
  %39 = ptrtoint ptr %arrayidx4.i21.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx4.i21.i, align 1
  %conv5.i22.i = zext i8 %40 to i32
  %shl6.i23.i = shl nuw nsw i32 %conv5.i22.i, 8
  %or7.i24.i = or i32 %or.i20.i, %shl6.i23.i
  %arrayidx8.i25.i = getelementptr i8, ptr %size_dt_strings.i, i32 3
  %41 = ptrtoint ptr %arrayidx8.i25.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx8.i25.i, align 1
  %conv9.i26.i = zext i8 %42 to i32
  %or10.i27.i = or i32 %or7.i24.i, %conv9.i26.i
  %idx.neg.i = sub i32 0, %or10.i27.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %call3.i = tail call ptr @fdt_find_string_(ptr noundef %add.ptr2.i, i32 noundef %or10.i27.i, ptr noundef %name) #13
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end.i63, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %if.end5

if.end.i63:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call fastcc i32 @fdt_add_string_(ptr noundef %fdt, ptr noundef %name) #13
  br label %if.end5

if.end5:                                          ; preds = %if.end.i63, %if.then.i, %if.then2
  %tobool14.not = phi i1 [ false, %if.end.i63 ], [ true, %if.then.i ], [ false, %if.then2 ]
  %nameoff.0 = phi i32 [ %call4.i, %if.end.i63 ], [ %sub.ptr.sub.i, %if.then.i ], [ %call3, %if.then2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nameoff.0)
  %cmp6 = icmp eq i32 %nameoff.0, 0
  br i1 %cmp6, label %if.end5.cleanup20_crit_edge, label %if.end8

if.end5.cleanup20_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

if.end8:                                          ; preds = %if.end5
  %43 = add i32 %len, 15
  %add10 = and i32 %43, -4
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %44 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i.i65 = zext i8 %45 to i32
  %shl.i.i66 = shl nuw i32 %conv.i.i65, 24
  %arrayidx1.i.i67 = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %46 = ptrtoint ptr %arrayidx1.i.i67 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx1.i.i67, align 1
  %conv2.i.i68 = zext i8 %47 to i32
  %shl3.i.i69 = shl nuw nsw i32 %conv2.i.i68, 16
  %or.i.i70 = or i32 %shl3.i.i69, %shl.i.i66
  %arrayidx4.i.i71 = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %48 = ptrtoint ptr %arrayidx4.i.i71 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx4.i.i71, align 1
  %conv5.i.i72 = zext i8 %49 to i32
  %shl6.i.i73 = shl nuw nsw i32 %conv5.i.i72, 8
  %or7.i.i74 = or i32 %or.i.i70, %shl6.i.i73
  %arrayidx8.i.i75 = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %50 = ptrtoint ptr %arrayidx8.i.i75 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx8.i.i75, align 1
  %conv9.i.i76 = zext i8 %51 to i32
  %or10.i.i77 = or i32 %or7.i.i74, %conv9.i.i76
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %52 = ptrtoint ptr %off_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i34.i = zext i8 %53 to i32
  %shl.i35.i = shl nuw i32 %conv.i34.i, 24
  %arrayidx1.i36.i = getelementptr i8, ptr %off_dt_struct.i, i32 1
  %54 = ptrtoint ptr %arrayidx1.i36.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx1.i36.i, align 1
  %conv2.i37.i = zext i8 %55 to i32
  %shl3.i38.i = shl nuw nsw i32 %conv2.i37.i, 16
  %or.i39.i = or i32 %shl3.i38.i, %shl.i35.i
  %arrayidx4.i40.i = getelementptr i8, ptr %off_dt_struct.i, i32 2
  %56 = ptrtoint ptr %arrayidx4.i40.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx4.i40.i, align 1
  %conv5.i41.i = zext i8 %57 to i32
  %shl6.i42.i = shl nuw nsw i32 %conv5.i41.i, 8
  %or7.i43.i = or i32 %or.i39.i, %shl6.i42.i
  %arrayidx8.i44.i = getelementptr i8, ptr %off_dt_struct.i, i32 3
  %58 = ptrtoint ptr %arrayidx8.i44.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx8.i44.i, align 1
  %conv9.i45.i = zext i8 %59 to i32
  %or10.i46.i = or i32 %or7.i43.i, %conv9.i45.i
  %add.i = add i32 %or10.i.i77, %add10
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %or10.i.i77)
  %cmp.i = icmp ult i32 %add.i, %or10.i.i77
  br i1 %cmp.i, label %if.end8.if.then13_crit_edge, label %lor.lhs.false.i

if.end8.if.then13_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

lor.lhs.false.i:                                  ; preds = %if.end8
  %size_dt_strings.i78 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %arrayidx1.i49.i = getelementptr i8, ptr %size_dt_strings.i78, i32 1
  %60 = ptrtoint ptr %arrayidx1.i49.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx1.i49.i, align 1
  %conv2.i50.i = zext i8 %61 to i32
  %shl3.i51.neg.i = mul nsw i32 %conv2.i50.i, -65536
  %62 = ptrtoint ptr %size_dt_strings.i78 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %size_dt_strings.i78, align 1
  %conv.i47.i = zext i8 %63 to i32
  %shl.i48.neg.i = mul i32 %conv.i47.i, -16777216
  %arrayidx4.i53.i = getelementptr i8, ptr %size_dt_strings.i78, i32 2
  %64 = ptrtoint ptr %arrayidx4.i53.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx4.i53.i, align 1
  %conv5.i54.i = zext i8 %65 to i32
  %shl6.i55.neg.i = mul nsw i32 %conv5.i54.i, -256
  %arrayidx8.i57.i = getelementptr i8, ptr %size_dt_strings.i78, i32 3
  %66 = ptrtoint ptr %arrayidx8.i57.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx8.i57.i, align 1
  %conv9.i58.i = zext i8 %67 to i32
  %68 = ptrtoint ptr %arrayidx1.i11.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx1.i11.i, align 1
  %conv2.i24.i = zext i8 %69 to i32
  %shl3.i25.i = shl nuw nsw i32 %conv2.i24.i, 16
  %70 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %totalsize.i, align 1
  %conv.i21.i = zext i8 %71 to i32
  %shl.i22.i = shl nuw i32 %conv.i21.i, 24
  %or.i26.i = or i32 %shl.i22.i, %shl3.i25.i
  %72 = ptrtoint ptr %arrayidx4.i15.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx4.i15.i, align 1
  %conv5.i28.i = zext i8 %73 to i32
  %shl6.i29.i = shl nuw nsw i32 %conv5.i28.i, 8
  %or7.i30.i = or i32 %or.i26.i, %shl6.i29.i
  %74 = ptrtoint ptr %arrayidx8.i19.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx8.i19.i, align 1
  %conv9.i32.i = zext i8 %75 to i32
  %or10.i33.i = or i32 %or7.i30.i, %conv9.i32.i
  %.neg = sub i32 %shl3.i51.neg.i, %or10.i46.i
  %or.i52.neg.i = add i32 %.neg, %shl.i48.neg.i
  %or7.i56.neg.i = add i32 %or.i52.neg.i, %shl6.i55.neg.i
  %.neg.i = sub i32 %or7.i56.neg.i, %conv9.i58.i
  %sub4.i = add i32 %.neg.i, %or10.i33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub4.i)
  %cmp6.i = icmp ugt i32 %add.i, %sub4.i
  br i1 %cmp6.i, label %lor.lhs.false.i.if.then13_crit_edge, label %fdt_grab_space_.exit

lor.lhs.false.i.if.then13_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

fdt_grab_space_.exit:                             ; preds = %lor.lhs.false.i
  %76 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add.i, ptr %size_dt_struct.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %fdt, i32 %or10.i46.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %or10.i.i77
  %tobool12.not = icmp eq ptr %add.ptr1.i.i.i, null
  br i1 %tobool12.not, label %fdt_grab_space_.exit.if.then13_crit_edge, label %if.end17

fdt_grab_space_.exit.if.then13_crit_edge:         ; preds = %fdt_grab_space_.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %fdt_grab_space_.exit.if.then13_crit_edge, %lor.lhs.false.i.if.then13_crit_edge, %if.end8.if.then13_crit_edge
  br i1 %tobool14.not, label %if.then13.cleanup20_crit_edge, label %if.then15

if.then13.cleanup20_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %size_dt_strings.i82 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %77 = ptrtoint ptr %size_dt_strings.i82 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %size_dt_strings.i82, align 1
  %conv.i.i83 = zext i8 %78 to i32
  %shl.i.i84 = shl nuw i32 %conv.i.i83, 24
  %arrayidx1.i.i85 = getelementptr i8, ptr %size_dt_strings.i82, i32 1
  %79 = ptrtoint ptr %arrayidx1.i.i85 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx1.i.i85, align 1
  %conv2.i.i86 = zext i8 %80 to i32
  %shl3.i.i87 = shl nuw nsw i32 %conv2.i.i86, 16
  %or.i.i88 = or i32 %shl3.i.i87, %shl.i.i84
  %arrayidx4.i.i89 = getelementptr i8, ptr %size_dt_strings.i82, i32 2
  %81 = ptrtoint ptr %arrayidx4.i.i89 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx4.i.i89, align 1
  %conv5.i.i90 = zext i8 %82 to i32
  %shl6.i.i91 = shl nuw nsw i32 %conv5.i.i90, 8
  %or7.i.i92 = or i32 %or.i.i88, %shl6.i.i91
  %arrayidx8.i.i93 = getelementptr i8, ptr %size_dt_strings.i82, i32 3
  %83 = ptrtoint ptr %arrayidx8.i.i93 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx8.i.i93, align 1
  %conv9.i.i94 = zext i8 %84 to i32
  %or10.i.i95 = or i32 %or7.i.i92, %conv9.i.i94
  %call1.i = tail call i32 @strlen(ptr noundef %name) #14
  %add.neg.i = xor i32 %call1.i, -1
  %sub.i = add i32 %or10.i.i95, %add.neg.i
  %85 = ptrtoint ptr %size_dt_strings.i82 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub.i, ptr %size_dt_strings.i82, align 4
  br label %cleanup20

if.end17:                                         ; preds = %fdt_grab_space_.exit
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 3, ptr %add.ptr1.i.i.i, align 4
  %nameoff18 = getelementptr inbounds %struct.fdt_property, ptr %add.ptr1.i.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %nameoff18 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %nameoff.0, ptr %nameoff18, align 4
  %len19 = getelementptr inbounds %struct.fdt_property, ptr %add.ptr1.i.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %len, ptr %len19, align 4
  %data = getelementptr inbounds %struct.fdt_property, ptr %add.ptr1.i.i.i, i32 0, i32 3
  %89 = ptrtoint ptr %valp to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %data, ptr %valp, align 4
  br label %cleanup20

cleanup20:                                        ; preds = %if.end17, %if.then15, %if.then13.cleanup20_crit_edge, %if.end5.cleanup20_crit_edge, %fdt_sw_probe_struct_.exit, %if.end.i.cleanup20_crit_edge
  %retval.1 = phi i32 [ 0, %if.end17 ], [ %retval.0.i.i, %fdt_sw_probe_struct_.exit ], [ -3, %if.end5.cleanup20_crit_edge ], [ -3, %if.then15 ], [ -3, %if.then13.cleanup20_crit_edge ], [ -7, %if.end.i.cleanup20_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @fdt_add_string_(ptr nocapture noundef %fdt, ptr nocapture noundef readonly %s) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %8 = ptrtoint ptr %size_dt_strings to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %size_dt_strings, align 1
  %conv.i28 = zext i8 %9 to i32
  %shl.i29 = shl nuw i32 %conv.i28, 24
  %arrayidx1.i30 = getelementptr i8, ptr %size_dt_strings, i32 1
  %10 = ptrtoint ptr %arrayidx1.i30 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i30, align 1
  %conv2.i31 = zext i8 %11 to i32
  %shl3.i32 = shl nuw nsw i32 %conv2.i31, 16
  %or.i33 = or i32 %shl3.i32, %shl.i29
  %arrayidx4.i34 = getelementptr i8, ptr %size_dt_strings, i32 2
  %12 = ptrtoint ptr %arrayidx4.i34 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i34, align 1
  %conv5.i35 = zext i8 %13 to i32
  %shl6.i36 = shl nuw nsw i32 %conv5.i35, 8
  %or7.i37 = or i32 %or.i33, %shl6.i36
  %arrayidx8.i38 = getelementptr i8, ptr %size_dt_strings, i32 3
  %14 = ptrtoint ptr %arrayidx8.i38 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i38, align 1
  %conv9.i39 = zext i8 %15 to i32
  %or10.i40 = or i32 %or7.i37, %conv9.i39
  %call2 = tail call i32 @strlen(ptr noundef %s) #12
  %add = add i32 %call2, 1
  %add3 = add i32 %or10.i40, %add
  %off_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %16 = ptrtoint ptr %off_dt_struct to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %off_dt_struct, align 1
  %conv.i41 = zext i8 %17 to i32
  %shl.i42 = shl nuw i32 %conv.i41, 24
  %arrayidx1.i43 = getelementptr i8, ptr %off_dt_struct, i32 1
  %18 = ptrtoint ptr %arrayidx1.i43 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i43, align 1
  %conv2.i44 = zext i8 %19 to i32
  %shl3.i45 = shl nuw nsw i32 %conv2.i44, 16
  %or.i46 = or i32 %shl3.i45, %shl.i42
  %arrayidx4.i47 = getelementptr i8, ptr %off_dt_struct, i32 2
  %20 = ptrtoint ptr %arrayidx4.i47 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i47, align 1
  %conv5.i48 = zext i8 %21 to i32
  %shl6.i49 = shl nuw nsw i32 %conv5.i48, 8
  %or7.i50 = or i32 %or.i46, %shl6.i49
  %arrayidx8.i51 = getelementptr i8, ptr %off_dt_struct, i32 3
  %22 = ptrtoint ptr %arrayidx8.i51 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8.i51, align 1
  %conv9.i52 = zext i8 %23 to i32
  %or10.i53 = or i32 %or7.i50, %conv9.i52
  %size_dt_struct = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %24 = ptrtoint ptr %size_dt_struct to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %size_dt_struct, align 1
  %conv.i54 = zext i8 %25 to i32
  %shl.i55 = shl nuw i32 %conv.i54, 24
  %arrayidx1.i56 = getelementptr i8, ptr %size_dt_struct, i32 1
  %26 = ptrtoint ptr %arrayidx1.i56 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx1.i56, align 1
  %conv2.i57 = zext i8 %27 to i32
  %shl3.i58 = shl nuw nsw i32 %conv2.i57, 16
  %or.i59 = or i32 %shl3.i58, %shl.i55
  %arrayidx4.i60 = getelementptr i8, ptr %size_dt_struct, i32 2
  %28 = ptrtoint ptr %arrayidx4.i60 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx4.i60, align 1
  %conv5.i61 = zext i8 %29 to i32
  %shl6.i62 = shl nuw nsw i32 %conv5.i61, 8
  %or7.i63 = or i32 %or.i59, %shl6.i62
  %arrayidx8.i64 = getelementptr i8, ptr %size_dt_struct, i32 3
  %30 = ptrtoint ptr %arrayidx8.i64 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx8.i64, align 1
  %conv9.i65 = zext i8 %31 to i32
  %or10.i66 = or i32 %or7.i63, %conv9.i65
  %add6 = add i32 %or10.i66, %or10.i53
  %sub = sub i32 %or10.i, %add3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %add6)
  %cmp = icmp ult i32 %sub, %add6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %fdt, i32 %or10.i
  %idx.neg = sub i32 0, %add3
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %32 = call ptr @memcpy(ptr %add.ptr9, ptr %s, i32 %add)
  %33 = ptrtoint ptr %size_dt_strings to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add3, ptr %size_dt_strings, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %idx.neg, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_property(ptr noundef %fdt, ptr noundef %name, ptr nocapture noundef readonly %val, i32 noundef %len) local_unnamed_addr #7 align 64 {
entry:
  %ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #13
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ptr, align 4, !annotation !8
  %call = call i32 @fdt_property_placeholder(ptr noundef %fdt, ptr noundef %name, i32 noundef %len, ptr noundef nonnull %ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr, align 4
  %3 = call ptr @memcpy(ptr %2, ptr %val, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_finish(ptr noundef %fdt) local_unnamed_addr #7 align 64 {
entry:
  %nextoffset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset) #13
  %0 = ptrtoint ptr %nextoffset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nextoffset, align 4, !annotation !8
  %1 = ptrtoint ptr %fdt to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fdt, align 1
  %conv.i.i.i = zext i8 %2 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %fdt, i32 1
  %3 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %4 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %fdt, i32 2
  %5 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %6 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %fdt, i32 3
  %7 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %8 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 804389138, i32 %or10.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %or10.i.i.i, 804389138
  br i1 %cmp5.not.i.i, label %if.end.i, label %fdt_sw_probe_struct_.exit

if.end.i:                                         ; preds = %entry
  %off_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %9 = ptrtoint ptr %off_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %off_dt_strings.i, align 1
  %conv.i.i = zext i8 %10 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 1
  %11 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %12 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 2
  %13 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %14 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_dt_strings.i, i32 3
  %15 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %16 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %17 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %totalsize.i, align 1
  %conv.i9.i = zext i8 %18 to i32
  %shl.i10.i = shl nuw i32 %conv.i9.i, 24
  %arrayidx1.i11.i = getelementptr i8, ptr %totalsize.i, i32 1
  %19 = ptrtoint ptr %arrayidx1.i11.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.i11.i, align 1
  %conv2.i12.i = zext i8 %20 to i32
  %shl3.i13.i = shl nuw nsw i32 %conv2.i12.i, 16
  %or.i14.i = or i32 %shl3.i13.i, %shl.i10.i
  %arrayidx4.i15.i = getelementptr i8, ptr %totalsize.i, i32 2
  %21 = ptrtoint ptr %arrayidx4.i15.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i15.i, align 1
  %conv5.i16.i = zext i8 %22 to i32
  %shl6.i17.i = shl nuw nsw i32 %conv5.i16.i, 8
  %or7.i18.i = or i32 %or.i14.i, %shl6.i17.i
  %arrayidx8.i19.i = getelementptr i8, ptr %totalsize.i, i32 3
  %23 = ptrtoint ptr %arrayidx8.i19.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx8.i19.i, align 1
  %conv9.i20.i = zext i8 %24 to i32
  %or10.i21.i = or i32 %or7.i18.i, %conv9.i20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i.i, i32 %or10.i21.i)
  %cmp.not.i = icmp eq i32 %or10.i.i, %or10.i21.i
  br i1 %cmp.not.i, label %cleanup.cont, label %if.end.i.cleanup28_crit_edge

if.end.i.cleanup28_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

fdt_sw_probe_struct_.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -804389139, i32 %or10.i.i.i)
  %cmp.i.i = icmp eq i32 %or10.i.i.i, -804389139
  %retval.0.i.i = select i1 %cmp.i.i, i32 -7, i32 -9
  br label %cleanup28

cleanup.cont:                                     ; preds = %if.end.i
  %size_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 9
  %25 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i.i57 = zext i8 %26 to i32
  %shl.i.i58 = shl nuw i32 %conv.i.i57, 24
  %arrayidx1.i.i59 = getelementptr i8, ptr %size_dt_struct.i, i32 1
  %27 = ptrtoint ptr %arrayidx1.i.i59 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i.i59, align 1
  %conv2.i.i60 = zext i8 %28 to i32
  %shl3.i.i61 = shl nuw nsw i32 %conv2.i.i60, 16
  %or.i.i62 = or i32 %shl3.i.i61, %shl.i.i58
  %arrayidx4.i.i63 = getelementptr i8, ptr %size_dt_struct.i, i32 2
  %29 = ptrtoint ptr %arrayidx4.i.i63 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4.i.i63, align 1
  %conv5.i.i64 = zext i8 %30 to i32
  %shl6.i.i65 = shl nuw nsw i32 %conv5.i.i64, 8
  %or7.i.i66 = or i32 %or.i.i62, %shl6.i.i65
  %arrayidx8.i.i67 = getelementptr i8, ptr %size_dt_struct.i, i32 3
  %31 = ptrtoint ptr %arrayidx8.i.i67 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx8.i.i67, align 1
  %conv9.i.i68 = zext i8 %32 to i32
  %or10.i.i69 = or i32 %or7.i.i66, %conv9.i.i68
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %33 = ptrtoint ptr %off_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i34.i = zext i8 %34 to i32
  %shl.i35.i = shl nuw i32 %conv.i34.i, 24
  %arrayidx1.i36.i = getelementptr i8, ptr %off_dt_struct.i, i32 1
  %35 = ptrtoint ptr %arrayidx1.i36.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx1.i36.i, align 1
  %conv2.i37.i = zext i8 %36 to i32
  %shl3.i38.i = shl nuw nsw i32 %conv2.i37.i, 16
  %or.i39.i = or i32 %shl3.i38.i, %shl.i35.i
  %arrayidx4.i40.i = getelementptr i8, ptr %off_dt_struct.i, i32 2
  %37 = ptrtoint ptr %arrayidx4.i40.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx4.i40.i, align 1
  %conv5.i41.i = zext i8 %38 to i32
  %shl6.i42.i = shl nuw nsw i32 %conv5.i41.i, 8
  %or7.i43.i = or i32 %or.i39.i, %shl6.i42.i
  %arrayidx8.i44.i = getelementptr i8, ptr %off_dt_struct.i, i32 3
  %39 = ptrtoint ptr %arrayidx8.i44.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx8.i44.i, align 1
  %conv9.i45.i = zext i8 %40 to i32
  %or10.i46.i = or i32 %or7.i43.i, %conv9.i45.i
  %add.i = add i32 %or10.i.i69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %or10.i.i69)
  %cmp.i = icmp ugt i32 %or10.i.i69, -5
  br i1 %cmp.i, label %cleanup.cont.cleanup28_crit_edge, label %lor.lhs.false.i

cleanup.cont.cleanup28_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

lor.lhs.false.i:                                  ; preds = %cleanup.cont
  %size_dt_strings.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %arrayidx1.i49.i = getelementptr i8, ptr %size_dt_strings.i, i32 1
  %41 = ptrtoint ptr %arrayidx1.i49.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx1.i49.i, align 1
  %conv2.i50.i = zext i8 %42 to i32
  %shl3.i51.neg.i = mul nsw i32 %conv2.i50.i, -65536
  %43 = ptrtoint ptr %size_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i47.i = zext i8 %44 to i32
  %shl.i48.neg.i = mul i32 %conv.i47.i, -16777216
  %arrayidx4.i53.i = getelementptr i8, ptr %size_dt_strings.i, i32 2
  %45 = ptrtoint ptr %arrayidx4.i53.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx4.i53.i, align 1
  %conv5.i54.i = zext i8 %46 to i32
  %shl6.i55.neg.i = mul nsw i32 %conv5.i54.i, -256
  %arrayidx8.i57.i = getelementptr i8, ptr %size_dt_strings.i, i32 3
  %47 = ptrtoint ptr %arrayidx8.i57.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx8.i57.i, align 1
  %conv9.i58.i = zext i8 %48 to i32
  %49 = ptrtoint ptr %arrayidx1.i11.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx1.i11.i, align 1
  %conv2.i24.i = zext i8 %50 to i32
  %shl3.i25.i = shl nuw nsw i32 %conv2.i24.i, 16
  %51 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %totalsize.i, align 1
  %conv.i21.i = zext i8 %52 to i32
  %shl.i22.i = shl nuw i32 %conv.i21.i, 24
  %or.i26.i = or i32 %shl.i22.i, %shl3.i25.i
  %53 = ptrtoint ptr %arrayidx4.i15.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx4.i15.i, align 1
  %conv5.i28.i = zext i8 %54 to i32
  %shl6.i29.i = shl nuw nsw i32 %conv5.i28.i, 8
  %or7.i30.i = or i32 %or.i26.i, %shl6.i29.i
  %55 = ptrtoint ptr %arrayidx8.i19.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx8.i19.i, align 1
  %conv9.i32.i = zext i8 %56 to i32
  %or10.i33.i = or i32 %or7.i30.i, %conv9.i32.i
  %.neg = sub i32 %shl3.i51.neg.i, %or10.i46.i
  %or.i52.neg.i = add i32 %.neg, %shl.i48.neg.i
  %or7.i56.neg.i = add i32 %or.i52.neg.i, %shl6.i55.neg.i
  %.neg.i = sub i32 %or7.i56.neg.i, %conv9.i58.i
  %sub4.i = add i32 %.neg.i, %or10.i33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub4.i)
  %cmp6.i = icmp ugt i32 %add.i, %sub4.i
  br i1 %cmp6.i, label %lor.lhs.false.i.cleanup28_crit_edge, label %fdt_grab_space_.exit

lor.lhs.false.i.cleanup28_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

fdt_grab_space_.exit:                             ; preds = %lor.lhs.false.i
  %57 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.i, ptr %size_dt_struct.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %fdt, i32 %or10.i46.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %or10.i.i69
  %tobool.not = icmp eq ptr %add.ptr1.i.i.i, null
  br i1 %tobool.not, label %fdt_grab_space_.exit.cleanup28_crit_edge, label %if.end3

fdt_grab_space_.exit.cleanup28_crit_edge:         ; preds = %fdt_grab_space_.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

if.end3:                                          ; preds = %fdt_grab_space_.exit
  %58 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 9, ptr %add.ptr1.i.i.i, align 4
  %59 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %totalsize.i, align 1
  %conv.i = zext i8 %60 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %61 = ptrtoint ptr %arrayidx1.i11.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx1.i11.i, align 1
  %conv2.i = zext i8 %62 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %63 = ptrtoint ptr %arrayidx4.i15.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx4.i15.i, align 1
  %conv5.i = zext i8 %64 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %65 = ptrtoint ptr %arrayidx8.i19.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx8.i19.i, align 1
  %conv9.i = zext i8 %66 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %67 = ptrtoint ptr %size_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i73 = zext i8 %68 to i32
  %shl.i74 = shl nuw i32 %conv.i73, 24
  %69 = ptrtoint ptr %arrayidx1.i49.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx1.i49.i, align 1
  %conv2.i76 = zext i8 %70 to i32
  %shl3.i77 = shl nuw nsw i32 %conv2.i76, 16
  %or.i78 = or i32 %shl3.i77, %shl.i74
  %71 = ptrtoint ptr %arrayidx4.i53.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx4.i53.i, align 1
  %conv5.i80 = zext i8 %72 to i32
  %shl6.i81 = shl nuw nsw i32 %conv5.i80, 8
  %or7.i82 = or i32 %or.i78, %shl6.i81
  %73 = ptrtoint ptr %arrayidx8.i57.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx8.i57.i, align 1
  %conv9.i84 = zext i8 %74 to i32
  %or10.i85 = or i32 %or7.i82, %conv9.i84
  %sub = sub i32 %or10.i, %or10.i85
  %75 = ptrtoint ptr %off_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i86 = zext i8 %76 to i32
  %shl.i87 = shl nuw i32 %conv.i86, 24
  %77 = ptrtoint ptr %arrayidx1.i36.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx1.i36.i, align 1
  %conv2.i89 = zext i8 %78 to i32
  %shl3.i90 = shl nuw nsw i32 %conv2.i89, 16
  %or.i91 = or i32 %shl3.i90, %shl.i87
  %79 = ptrtoint ptr %arrayidx4.i40.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx4.i40.i, align 1
  %conv5.i93 = zext i8 %80 to i32
  %shl6.i94 = shl nuw nsw i32 %conv5.i93, 8
  %or7.i95 = or i32 %or.i91, %shl6.i94
  %81 = ptrtoint ptr %arrayidx8.i44.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx8.i44.i, align 1
  %conv9.i97 = zext i8 %82 to i32
  %or10.i98 = or i32 %or7.i95, %conv9.i97
  %83 = ptrtoint ptr %size_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %size_dt_struct.i, align 1
  %conv.i99 = zext i8 %84 to i32
  %shl.i100 = shl nuw i32 %conv.i99, 24
  %85 = ptrtoint ptr %arrayidx1.i.i59 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx1.i.i59, align 1
  %conv2.i102 = zext i8 %86 to i32
  %shl3.i103 = shl nuw nsw i32 %conv2.i102, 16
  %or.i104 = or i32 %shl3.i103, %shl.i100
  %87 = ptrtoint ptr %arrayidx4.i.i63 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx4.i.i63, align 1
  %conv5.i106 = zext i8 %88 to i32
  %shl6.i107 = shl nuw nsw i32 %conv5.i106, 8
  %or7.i108 = or i32 %or.i104, %shl6.i107
  %89 = ptrtoint ptr %arrayidx8.i.i67 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx8.i.i67, align 1
  %conv9.i110 = zext i8 %90 to i32
  %or10.i111 = or i32 %or7.i108, %conv9.i110
  %add = add i32 %or10.i111, %or10.i98
  %add.ptr = getelementptr i8, ptr %fdt, i32 %add
  %add.ptr8 = getelementptr i8, ptr %fdt, i32 %sub
  %91 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr8, i32 %or10.i85)
  %92 = ptrtoint ptr %off_dt_strings.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add, ptr %off_dt_strings.i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %if.end3
  %offset.0 = phi i32 [ 0, %if.end3 ], [ %113, %if.end21 ]
  %call11 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.0, ptr noundef nonnull %nextoffset) #13
  %93 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call11, label %while.cond.if.end21_crit_edge [
    i32 9, label %while.end
    i32 3, label %if.then14
  ]

while.cond.if.end21_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then14:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %off_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i.i.i126 = zext i8 %95 to i32
  %shl.i.i.i127 = shl nuw i32 %conv.i.i.i126, 24
  %96 = ptrtoint ptr %arrayidx1.i36.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx1.i36.i, align 1
  %conv2.i.i.i129 = zext i8 %97 to i32
  %shl3.i.i.i130 = shl nuw nsw i32 %conv2.i.i.i129, 16
  %or.i.i.i131 = or i32 %shl3.i.i.i130, %shl.i.i.i127
  %98 = ptrtoint ptr %arrayidx4.i40.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx4.i40.i, align 1
  %conv5.i.i.i133 = zext i8 %99 to i32
  %shl6.i.i.i134 = shl nuw nsw i32 %conv5.i.i.i133, 8
  %or7.i.i.i135 = or i32 %or.i.i.i131, %shl6.i.i.i134
  %100 = ptrtoint ptr %arrayidx8.i44.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx8.i44.i, align 1
  %conv9.i.i.i137 = zext i8 %101 to i32
  %or10.i.i.i138 = or i32 %or7.i.i.i135, %conv9.i.i.i137
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i138
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %offset.0
  %nameoff16 = getelementptr inbounds %struct.fdt_property, ptr %add.ptr1.i.i, i32 0, i32 2
  %102 = ptrtoint ptr %nameoff16 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nameoff16, align 4
  %104 = ptrtoint ptr %size_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i139 = zext i8 %105 to i32
  %shl.i140 = shl nuw i32 %conv.i139, 24
  %106 = ptrtoint ptr %arrayidx1.i49.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx1.i49.i, align 1
  %conv2.i142 = zext i8 %107 to i32
  %shl3.i143 = shl nuw nsw i32 %conv2.i142, 16
  %or.i144 = or i32 %shl3.i143, %shl.i140
  %108 = ptrtoint ptr %arrayidx4.i53.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx4.i53.i, align 1
  %conv5.i146 = zext i8 %109 to i32
  %shl6.i147 = shl nuw nsw i32 %conv5.i146, 8
  %or7.i148 = or i32 %or.i144, %shl6.i147
  %110 = ptrtoint ptr %arrayidx8.i57.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx8.i57.i, align 1
  %conv9.i150 = zext i8 %111 to i32
  %or10.i151 = or i32 %or7.i148, %conv9.i150
  %add19 = add i32 %or10.i151, %103
  store i32 %add19, ptr %nameoff16, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %while.cond.if.end21_crit_edge
  %112 = ptrtoint ptr %nextoffset to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nextoffset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %114 = ptrtoint ptr %nextoffset to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %nextoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp22 = icmp slt i32 %115, 0
  br i1 %cmp22, label %while.end.cleanup28_crit_edge, label %if.end24

while.end.cleanup28_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

if.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %size_dt_strings.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %size_dt_strings.i, align 1
  %conv.i152 = zext i8 %117 to i32
  %shl.i153 = shl nuw i32 %conv.i152, 24
  %118 = ptrtoint ptr %arrayidx1.i49.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx1.i49.i, align 1
  %conv2.i155 = zext i8 %119 to i32
  %shl3.i156 = shl nuw nsw i32 %conv2.i155, 16
  %or.i157 = or i32 %shl3.i156, %shl.i153
  %120 = ptrtoint ptr %arrayidx4.i53.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx4.i53.i, align 1
  %conv5.i159 = zext i8 %121 to i32
  %shl6.i160 = shl nuw nsw i32 %conv5.i159, 8
  %or7.i161 = or i32 %or.i157, %shl6.i160
  %122 = ptrtoint ptr %arrayidx8.i57.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx8.i57.i, align 1
  %conv9.i163 = zext i8 %123 to i32
  %or10.i164 = or i32 %or7.i161, %conv9.i163
  %add27 = add i32 %or10.i164, %add
  %124 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %add27, ptr %totalsize.i, align 4
  %last_comp_version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 6
  %125 = ptrtoint ptr %last_comp_version.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 16, ptr %last_comp_version.i, align 4
  %126 = ptrtoint ptr %fdt to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -804389139, ptr %fdt, align 4
  br label %cleanup28

cleanup28:                                        ; preds = %if.end24, %while.end.cleanup28_crit_edge, %fdt_grab_space_.exit.cleanup28_crit_edge, %lor.lhs.false.i.cleanup28_crit_edge, %cleanup.cont.cleanup28_crit_edge, %fdt_sw_probe_struct_.exit, %if.end.i.cleanup28_crit_edge
  %retval.1 = phi i32 [ 0, %if.end24 ], [ %retval.0.i.i, %fdt_sw_probe_struct_.exit ], [ -3, %fdt_grab_space_.exit.cleanup28_crit_edge ], [ %115, %while.end.cleanup28_crit_edge ], [ -7, %if.end.i.cleanup28_crit_edge ], [ -3, %lor.lhs.false.i.cleanup28_crit_edge ], [ -3, %cleanup.cont.cleanup28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset) #13
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_find_string_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind uwtable(sync) }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind }

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
