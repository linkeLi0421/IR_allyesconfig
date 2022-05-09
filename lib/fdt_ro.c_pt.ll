; ModuleID = '/llk/IR_all_yes/lib/fdt_ro.c_pt.bc'
source_filename = "../lib/fdt_ro.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_node_header = type { i32, [0 x i8] }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phandle\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"linux,phandle\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"/aliases\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 804389138, i64 3490578157]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_ = private constant [16 x i8] c"../lib/fdt_ro.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 515, i32 37 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 517, i32 38 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 530, i32 37 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [38 x i8] c"../lib/../scripts/dtc/libfdt/fdt_ro.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 829, i32 38 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fdt_get_string(ptr noundef %fdt, i32 noundef %stroffset, ptr noundef writeonly %lenp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end8

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end8:                                          ; preds = %entry
  %off_dt_strings9 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 3
  %0 = ptrtoint ptr %off_dt_strings9 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %off_dt_strings9, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %off_dt_strings9, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %3 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %off_dt_strings9, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %5 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %off_dt_strings9, i32 3
  %6 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %7 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %add = add i32 %or10.i, %stroffset
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %add)
  %cmp11.not = icmp ugt i32 %call6, %add
  br i1 %cmp11.not, label %if.end13, label %if.end8.fail_crit_edge

if.end8.fail_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end13:                                         ; preds = %if.end8
  %sub = sub i32 %call6, %add
  %8 = ptrtoint ptr %fdt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fdt, align 1
  %conv.i111 = zext i8 %9 to i32
  %shl.i112 = shl nuw i32 %conv.i111, 24
  %arrayidx1.i113 = getelementptr i8, ptr %fdt, i32 1
  %10 = ptrtoint ptr %arrayidx1.i113 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i113, align 1
  %conv2.i114 = zext i8 %11 to i32
  %shl3.i115 = shl nuw nsw i32 %conv2.i114, 16
  %or.i116 = or i32 %shl3.i115, %shl.i112
  %arrayidx4.i117 = getelementptr i8, ptr %fdt, i32 2
  %12 = ptrtoint ptr %arrayidx4.i117 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i117, align 1
  %conv5.i118 = zext i8 %13 to i32
  %shl6.i119 = shl nuw nsw i32 %conv5.i118, 8
  %or7.i120 = or i32 %or.i116, %shl6.i119
  %arrayidx8.i121 = getelementptr i8, ptr %fdt, i32 3
  %14 = ptrtoint ptr %arrayidx8.i121 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i121, align 1
  %conv9.i122 = zext i8 %15 to i32
  %or10.i123 = or i32 %or7.i120, %conv9.i122
  %16 = zext i32 %or10.i123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or10.i123, label %if.end13.fail_crit_edge [
    i32 -804389139, label %if.then16
    i32 804389138, label %if.then41
  ]

if.end13.fail_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stroffset)
  %cmp17 = icmp slt i32 %stroffset, 0
  br i1 %cmp17, label %if.then16.fail_crit_edge, label %if.end19

if.then16.fail_crit_edge:                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end19:                                         ; preds = %if.then16
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %17 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %version, align 1
  %conv.i124 = zext i8 %18 to i32
  %shl.i125 = shl nuw i32 %conv.i124, 24
  %arrayidx1.i126 = getelementptr i8, ptr %version, i32 1
  %19 = ptrtoint ptr %arrayidx1.i126 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.i126, align 1
  %conv2.i127 = zext i8 %20 to i32
  %shl3.i128 = shl nuw nsw i32 %conv2.i127, 16
  %or.i129 = or i32 %shl3.i128, %shl.i125
  %arrayidx4.i130 = getelementptr i8, ptr %version, i32 2
  %21 = ptrtoint ptr %arrayidx4.i130 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i130, align 1
  %conv5.i131 = zext i8 %22 to i32
  %shl6.i132 = shl nuw nsw i32 %conv5.i131, 8
  %or7.i133 = or i32 %or.i129, %shl6.i132
  %arrayidx8.i134 = getelementptr i8, ptr %version, i32 3
  %23 = ptrtoint ptr %arrayidx8.i134 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx8.i134, align 1
  %conv9.i135 = zext i8 %24 to i32
  %or10.i136 = or i32 %or7.i133, %conv9.i135
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i136)
  %cmp22 = icmp ugt i32 %or10.i136, 16
  br i1 %cmp22, label %if.then23, label %if.end19.if.end55_crit_edge

if.end19.if.end55_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then23:                                        ; preds = %if.end19
  %size_dt_strings = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %25 = ptrtoint ptr %size_dt_strings to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %size_dt_strings, align 1
  %conv.i137 = zext i8 %26 to i32
  %shl.i138 = shl nuw i32 %conv.i137, 24
  %arrayidx1.i139 = getelementptr i8, ptr %size_dt_strings, i32 1
  %27 = ptrtoint ptr %arrayidx1.i139 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i139, align 1
  %conv2.i140 = zext i8 %28 to i32
  %shl3.i141 = shl nuw nsw i32 %conv2.i140, 16
  %or.i142 = or i32 %shl3.i141, %shl.i138
  %arrayidx4.i143 = getelementptr i8, ptr %size_dt_strings, i32 2
  %29 = ptrtoint ptr %arrayidx4.i143 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4.i143, align 1
  %conv5.i144 = zext i8 %30 to i32
  %shl6.i145 = shl nuw nsw i32 %conv5.i144, 8
  %or7.i146 = or i32 %or.i142, %shl6.i145
  %arrayidx8.i147 = getelementptr i8, ptr %size_dt_strings, i32 3
  %31 = ptrtoint ptr %arrayidx8.i147 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx8.i147, align 1
  %conv9.i148 = zext i8 %32 to i32
  %or10.i149 = or i32 %or7.i146, %conv9.i148
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i149, i32 %stroffset)
  %cmp25.not = icmp ugt i32 %or10.i149, %stroffset
  br i1 %cmp25.not, label %if.end27, label %if.then23.fail_crit_edge

if.then23.fail_crit_edge:                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end27:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %sub30 = sub i32 %or10.i149, %stroffset
  %33 = tail call i32 @llvm.umin.i32(i32 %sub30, i32 %sub)
  br label %if.end55

if.then41:                                        ; preds = %if.end13
  %sub42 = sub i32 0, %stroffset
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %stroffset)
  %cmp43 = icmp sgt i32 %stroffset, -1
  br i1 %cmp43, label %if.then41.fail_crit_edge, label %lor.lhs.false44

if.then41.fail_crit_edge:                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

lor.lhs.false44:                                  ; preds = %if.then41
  %size_dt_strings45 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 8
  %34 = ptrtoint ptr %size_dt_strings45 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %size_dt_strings45, align 1
  %conv.i189 = zext i8 %35 to i32
  %shl.i190 = shl nuw i32 %conv.i189, 24
  %arrayidx1.i191 = getelementptr i8, ptr %size_dt_strings45, i32 1
  %36 = ptrtoint ptr %arrayidx1.i191 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx1.i191, align 1
  %conv2.i192 = zext i8 %37 to i32
  %shl3.i193 = shl nuw nsw i32 %conv2.i192, 16
  %or.i194 = or i32 %shl3.i193, %shl.i190
  %arrayidx4.i195 = getelementptr i8, ptr %size_dt_strings45, i32 2
  %38 = ptrtoint ptr %arrayidx4.i195 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx4.i195, align 1
  %conv5.i196 = zext i8 %39 to i32
  %shl6.i197 = shl nuw nsw i32 %conv5.i196, 8
  %or7.i198 = or i32 %or.i194, %shl6.i197
  %arrayidx8.i199 = getelementptr i8, ptr %size_dt_strings45, i32 3
  %40 = ptrtoint ptr %arrayidx8.i199 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx8.i199, align 1
  %conv9.i200 = zext i8 %41 to i32
  %or10.i201 = or i32 %or7.i198, %conv9.i200
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i201, i32 %sub42)
  %cmp47 = icmp ult i32 %or10.i201, %sub42
  br i1 %cmp47, label %lor.lhs.false44.fail_crit_edge, label %cleanup

lor.lhs.false44.fail_crit_edge:                   ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

cleanup:                                          ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #9
  %42 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %sub42)
  br label %if.end55

if.end55:                                         ; preds = %cleanup, %if.end27, %if.end19.if.end55_crit_edge
  %len.2 = phi i32 [ %sub, %if.end19.if.end55_crit_edge ], [ %42, %cleanup ], [ %33, %if.end27 ]
  %add.ptr56 = getelementptr i8, ptr %fdt, i32 %add
  %call57 = tail call ptr @memchr(ptr noundef %add.ptr56, i32 noundef 0, i32 noundef %len.2) #11
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.end55.fail_crit_edge, label %if.end60

if.end55.fail_crit_edge:                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end60:                                         ; preds = %if.end55
  %tobool61.not = icmp eq ptr %lenp, null
  br i1 %tobool61.not, label %if.end60.cleanup67_crit_edge, label %if.then62

if.end60.cleanup67_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast = ptrtoint ptr %call57 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr56 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup67.sink.split

fail:                                             ; preds = %if.end55.fail_crit_edge, %lor.lhs.false44.fail_crit_edge, %if.then41.fail_crit_edge, %if.then23.fail_crit_edge, %if.then16.fail_crit_edge, %if.end13.fail_crit_edge, %if.end8.fail_crit_edge, %entry.fail_crit_edge
  %err.0 = phi i32 [ %call6, %entry.fail_crit_edge ], [ -4, %if.end8.fail_crit_edge ], [ -4, %if.then16.fail_crit_edge ], [ -4, %if.then23.fail_crit_edge ], [ -8, %if.end55.fail_crit_edge ], [ -4, %lor.lhs.false44.fail_crit_edge ], [ -4, %if.then41.fail_crit_edge ], [ -13, %if.end13.fail_crit_edge ]
  %tobool64.not = icmp eq ptr %lenp, null
  br i1 %tobool64.not, label %fail.cleanup67_crit_edge, label %fail.cleanup67.sink.split_crit_edge

fail.cleanup67.sink.split_crit_edge:              ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67.sink.split

fail.cleanup67_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

cleanup67.sink.split:                             ; preds = %fail.cleanup67.sink.split_crit_edge, %if.then62
  %err.0.sink = phi i32 [ %sub.ptr.sub, %if.then62 ], [ %err.0, %fail.cleanup67.sink.split_crit_edge ]
  %retval.0.ph = phi ptr [ %add.ptr56, %if.then62 ], [ null, %fail.cleanup67.sink.split_crit_edge ]
  %43 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %err.0.sink, ptr %lenp, align 4
  br label %cleanup67

cleanup67:                                        ; preds = %cleanup67.sink.split, %fail.cleanup67_crit_edge, %if.end60.cleanup67_crit_edge
  %retval.0 = phi ptr [ %add.ptr56, %if.end60.cleanup67_crit_edge ], [ null, %fail.cleanup67_crit_edge ], [ %retval.0.ph, %cleanup67.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_ro_probe_(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fdt_string(ptr noundef %fdt, i32 noundef %stroffset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @fdt_get_string(ptr noundef %fdt, i32 noundef %stroffset, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_find_max_phandle(ptr noundef %fdt, ptr noundef writeonly %phandle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef -1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %entry.if.then_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  br label %cleanup

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %cleanup.if.then_crit_edge, %entry.if.then_crit_edge
  %max.0.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ %0, %cleanup.if.then_crit_edge ]
  %call.lcssa = phi i32 [ %call28, %entry.if.then_crit_edge ], [ %call, %cleanup.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.lcssa)
  %cmp1 = icmp eq i32 %call.lcssa, -1
  br i1 %cmp1, label %while.end, label %if.then.cleanup10_crit_edge

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %call31 = phi i32 [ %call, %cleanup.cleanup_crit_edge ], [ %call28, %entry.cleanup_crit_edge ]
  %max.030 = phi i32 [ %0, %cleanup.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  %call4 = tail call i32 @fdt_get_phandle(ptr noundef %fdt, i32 noundef %call31)
  %0 = tail call i32 @llvm.umax.i32(i32 %call4, i32 %max.030)
  %call = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %call31, ptr noundef null) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup.if.then_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.if.then_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

while.end:                                        ; preds = %if.then
  %tobool.not = icmp eq ptr %phandle, null
  br i1 %tobool.not, label %while.end.cleanup10_crit_edge, label %if.then8

while.end.cleanup10_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.then8:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %phandle to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %max.0.lcssa, ptr %phandle, align 4
  br label %cleanup10

cleanup10:                                        ; preds = %if.then8, %while.end.cleanup10_crit_edge, %if.then.cleanup10_crit_edge
  %retval.2 = phi i32 [ 0, %if.then8 ], [ 0, %while.end.cleanup10_crit_edge ], [ %call.lcssa, %if.then.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_get_phandle(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i.i13 = alloca i32, align 4
  %poffset.i.i = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #10
  %1 = ptrtoint ptr %poffset.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %poffset.i.i, align 4, !annotation !16
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull @.str, i32 noundef 7, ptr noundef nonnull %len, ptr noundef nonnull %poffset.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop.exit.thread, label %if.end.i.i

fdt_getprop.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #10
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %2 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version.i.i, align 1
  %conv.i.i.i = zext i8 %3 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %version.i.i, i32 1
  %4 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %5 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %version.i.i, i32 2
  %6 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %7 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %version.i.i, i32 3
  %8 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %9 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i.i.i)
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end.i.i.if.end9.i.i_crit_edge

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %10 = ptrtoint ptr %poffset.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %poffset.i.i, align 4
  %add.i.i = add i32 %11, 4
  %rem.i.i = and i32 %add.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true3.i.i.if.end9.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true3.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp7.i.i = icmp ugt i32 %13, 7
  br i1 %cmp7.i.i, label %if.then8.i.i, label %land.lhs.true5.i.i.if.end9.i.i_crit_edge

land.lhs.true5.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr %struct.fdt_property, ptr %call.i.i, i32 1, i32 1
  br label %fdt_getprop.exit

if.end9.i.i:                                      ; preds = %land.lhs.true5.i.i.if.end9.i.i_crit_edge, %land.lhs.true3.i.i.if.end9.i.i_crit_edge, %if.end.i.i.if.end9.i.i_crit_edge
  %data10.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 3
  br label %fdt_getprop.exit

fdt_getprop.exit:                                 ; preds = %if.end9.i.i, %if.then8.i.i
  %retval.0.i.i = phi ptr [ %data10.i.i, %if.end9.i.i ], [ %add.ptr.i.i, %if.then8.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #10
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %fdt_getprop.exit.if.then_crit_edge, label %lor.lhs.false

fdt_getprop.exit.if.then_crit_edge:               ; preds = %fdt_getprop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %fdt_getprop.exit
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.not = icmp eq i32 %15, 4
  br i1 %cmp.not, label %lor.lhs.false.if.end6_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %fdt_getprop.exit.if.then_crit_edge, %fdt_getprop.exit.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i13) #10
  %16 = ptrtoint ptr %poffset.i.i13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %poffset.i.i13, align 4, !annotation !16
  %call.i.i15 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull @.str.1, i32 noundef 13, ptr noundef nonnull %len, ptr noundef nonnull %poffset.i.i13) #10
  %tobool.not.i.i16 = icmp eq ptr %call.i.i15, null
  br i1 %tobool.not.i.i16, label %fdt_getprop.exit45.thread, label %if.end.i.i32

fdt_getprop.exit45.thread:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i13) #10
  br label %cleanup

if.end.i.i32:                                     ; preds = %if.then
  %version.i.i17 = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %17 = ptrtoint ptr %version.i.i17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %version.i.i17, align 1
  %conv.i.i.i18 = zext i8 %18 to i32
  %shl.i.i.i19 = shl nuw i32 %conv.i.i.i18, 24
  %arrayidx1.i.i.i20 = getelementptr i8, ptr %version.i.i17, i32 1
  %19 = ptrtoint ptr %arrayidx1.i.i.i20 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.i.i.i20, align 1
  %conv2.i.i.i21 = zext i8 %20 to i32
  %shl3.i.i.i22 = shl nuw nsw i32 %conv2.i.i.i21, 16
  %or.i.i.i23 = or i32 %shl3.i.i.i22, %shl.i.i.i19
  %arrayidx4.i.i.i24 = getelementptr i8, ptr %version.i.i17, i32 2
  %21 = ptrtoint ptr %arrayidx4.i.i.i24 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i.i.i24, align 1
  %conv5.i.i.i25 = zext i8 %22 to i32
  %shl6.i.i.i26 = shl nuw nsw i32 %conv5.i.i.i25, 8
  %or7.i.i.i27 = or i32 %or.i.i.i23, %shl6.i.i.i26
  %arrayidx8.i.i.i28 = getelementptr i8, ptr %version.i.i17, i32 3
  %23 = ptrtoint ptr %arrayidx8.i.i.i28 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx8.i.i.i28, align 1
  %conv9.i.i.i29 = zext i8 %24 to i32
  %or10.i.i.i30 = or i32 %or7.i.i.i27, %conv9.i.i.i29
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i.i.i30)
  %cmp.i.i31 = icmp ult i32 %or10.i.i.i30, 16
  br i1 %cmp.i.i31, label %land.lhs.true3.i.i36, label %if.end.i.i32.if.end9.i.i43_crit_edge

if.end.i.i32.if.end9.i.i43_crit_edge:             ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i43

land.lhs.true3.i.i36:                             ; preds = %if.end.i.i32
  %25 = ptrtoint ptr %poffset.i.i13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %poffset.i.i13, align 4
  %add.i.i33 = add i32 %26, 4
  %rem.i.i34 = and i32 %add.i.i33, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i34)
  %tobool4.not.i.i35 = icmp eq i32 %rem.i.i34, 0
  br i1 %tobool4.not.i.i35, label %land.lhs.true3.i.i36.if.end9.i.i43_crit_edge, label %land.lhs.true5.i.i39

land.lhs.true3.i.i36.if.end9.i.i43_crit_edge:     ; preds = %land.lhs.true3.i.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i43

land.lhs.true5.i.i39:                             ; preds = %land.lhs.true3.i.i36
  %len.i.i37 = getelementptr inbounds %struct.fdt_property, ptr %call.i.i15, i32 0, i32 1
  %27 = ptrtoint ptr %len.i.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %28)
  %cmp7.i.i38 = icmp ugt i32 %28, 7
  br i1 %cmp7.i.i38, label %if.then8.i.i41, label %land.lhs.true5.i.i39.if.end9.i.i43_crit_edge

land.lhs.true5.i.i39.if.end9.i.i43_crit_edge:     ; preds = %land.lhs.true5.i.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i43

if.then8.i.i41:                                   ; preds = %land.lhs.true5.i.i39
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i40 = getelementptr %struct.fdt_property, ptr %call.i.i15, i32 1, i32 1
  br label %fdt_getprop.exit45

if.end9.i.i43:                                    ; preds = %land.lhs.true5.i.i39.if.end9.i.i43_crit_edge, %land.lhs.true3.i.i36.if.end9.i.i43_crit_edge, %if.end.i.i32.if.end9.i.i43_crit_edge
  %data10.i.i42 = getelementptr inbounds %struct.fdt_property, ptr %call.i.i15, i32 0, i32 3
  br label %fdt_getprop.exit45

fdt_getprop.exit45:                               ; preds = %if.end9.i.i43, %if.then8.i.i41
  %retval.0.i.i44 = phi ptr [ %data10.i.i42, %if.end9.i.i43 ], [ %add.ptr.i.i40, %if.then8.i.i41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i13) #10
  %tobool2.not = icmp eq ptr %retval.0.i.i44, null
  br i1 %tobool2.not, label %fdt_getprop.exit45.cleanup_crit_edge, label %lor.lhs.false3

fdt_getprop.exit45.cleanup_crit_edge:             ; preds = %fdt_getprop.exit45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3:                                   ; preds = %fdt_getprop.exit45
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp4.not = icmp eq i32 %30, 4
  br i1 %cmp4.not, label %lor.lhs.false3.if.end6_crit_edge, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3.if.end6_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %lor.lhs.false3.if.end6_crit_edge, %lor.lhs.false.if.end6_crit_edge
  %php.0 = phi ptr [ %retval.0.i.i44, %lor.lhs.false3.if.end6_crit_edge ], [ %retval.0.i.i, %lor.lhs.false.if.end6_crit_edge ]
  %31 = ptrtoint ptr %php.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %php.0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false3.cleanup_crit_edge, %fdt_getprop.exit45.cleanup_crit_edge, %fdt_getprop.exit45.thread
  %retval.0 = phi i32 [ %32, %if.end6 ], [ 0, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %fdt_getprop.exit45.cleanup_crit_edge ], [ 0, %fdt_getprop.exit45.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_generate_phandle(ptr noundef %fdt, ptr noundef writeonly %phandle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call28.i = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef -1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.then.i.thread, label %entry.cleanup.i_crit_edge

entry.cleanup.i_crit_edge:                        ; preds = %entry
  br label %cleanup.i

if.then.i:                                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, -1
  br i1 %cmp1.i, label %if.end, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call28.i)
  %cmp1.i14 = icmp eq i32 %call28.i, -1
  br i1 %cmp1.i14, label %if.then.i.thread.if.end3_crit_edge, label %if.then.i.thread.cleanup_crit_edge

if.then.i.thread.cleanup_crit_edge:               ; preds = %if.then.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.thread.if.end3_crit_edge:               ; preds = %if.then.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %entry.cleanup.i_crit_edge
  %call31.i = phi i32 [ %call.i, %cleanup.i.cleanup.i_crit_edge ], [ %call28.i, %entry.cleanup.i_crit_edge ]
  %max.030.i = phi i32 [ %0, %cleanup.i.cleanup.i_crit_edge ], [ 0, %entry.cleanup.i_crit_edge ]
  %call4.i = tail call i32 @fdt_get_phandle(ptr noundef %fdt, i32 noundef %call31.i) #10
  %0 = tail call i32 @llvm.umax.i32(i32 %call4.i, i32 %max.030.i) #10
  %call.i = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %call31.i, ptr noundef null) #10
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end:                                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %0)
  %cmp1 = icmp eq i32 %0, -2
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.then.i.thread.if.end3_crit_edge
  %max.0.lcssa.i1519 = phi i32 [ %0, %if.end.if.end3_crit_edge ], [ 0, %if.then.i.thread.if.end3_crit_edge ]
  %tobool.not = icmp eq ptr %phandle, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.then4

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %max.0.lcssa.i1519, 1
  %1 = ptrtoint ptr %phandle to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %phandle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.i.thread.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %if.end.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end3.cleanup_crit_edge ], [ %call28.i, %if.then.i.thread.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_get_mem_rsv(ptr noundef %fdt, i32 noundef %n, ptr nocapture noundef writeonly %address, ptr nocapture noundef writeonly %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup9_crit_edge, label %cleanup.cont

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

cleanup.cont:                                     ; preds = %entry
  %mul.i = shl i32 %n, 4
  %off_mem_rsvmap.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %0 = ptrtoint ptr %off_mem_rsvmap.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %off_mem_rsvmap.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %3 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %5 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %add.i = add i32 %or10.i.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %or10.i.i)
  %cmp.i = icmp ult i32 %add.i, %or10.i.i
  br i1 %cmp.i, label %cleanup.cont.cleanup9_crit_edge, label %if.end.i

cleanup.cont.cleanup9_crit_edge:                  ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

if.end.i:                                         ; preds = %cleanup.cont
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %8 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %totalsize.i, align 1
  %conv.i30.i = zext i8 %9 to i32
  %shl.i31.i = shl nuw i32 %conv.i30.i, 24
  %arrayidx1.i32.i = getelementptr i8, ptr %totalsize.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i32.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i32.i, align 1
  %conv2.i33.i = zext i8 %11 to i32
  %shl3.i34.i = shl nuw nsw i32 %conv2.i33.i, 16
  %or.i35.i = or i32 %shl3.i34.i, %shl.i31.i
  %arrayidx4.i36.i = getelementptr i8, ptr %totalsize.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i36.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i36.i, align 1
  %conv5.i37.i = zext i8 %13 to i32
  %shl6.i38.i = shl nuw nsw i32 %conv5.i37.i, 8
  %or7.i39.i = or i32 %or.i35.i, %shl6.i38.i
  %arrayidx8.i40.i = getelementptr i8, ptr %totalsize.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i40.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i40.i, align 1
  %conv9.i41.i = zext i8 %15 to i32
  %or10.i42.i = or i32 %or7.i39.i, %conv9.i41.i
  %sub.i = add i32 %or10.i42.i, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i)
  %cmp6.i = icmp ugt i32 %add.i, %sub.i
  br i1 %cmp6.i, label %if.end.i.cleanup9_crit_edge, label %fdt_mem_rsv.exit

if.end.i.cleanup9_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

fdt_mem_rsv.exit:                                 ; preds = %if.end.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i
  %add.ptr1.i.i = getelementptr %struct.fdt_reserve_entry, ptr %add.ptr.i.i, i32 %n
  %tobool.not = icmp eq ptr %add.ptr1.i.i, null
  br i1 %tobool.not, label %fdt_mem_rsv.exit.cleanup9_crit_edge, label %if.end4

fdt_mem_rsv.exit.cleanup9_crit_edge:              ; preds = %fdt_mem_rsv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

if.end4:                                          ; preds = %fdt_mem_rsv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr1.i.i, align 8
  %18 = ptrtoint ptr %address to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %address, align 8
  %size7 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr1.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %size7 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size7, align 8
  %21 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %size, align 8
  br label %cleanup9

cleanup9:                                         ; preds = %if.end4, %fdt_mem_rsv.exit.cleanup9_crit_edge, %if.end.i.cleanup9_crit_edge, %cleanup.cont.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.1 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup9_crit_edge ], [ -4, %fdt_mem_rsv.exit.cleanup9_crit_edge ], [ -4, %cleanup.cont.cleanup9_crit_edge ], [ -4, %if.end.i.cleanup9_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_num_mem_rsv(ptr noundef readonly %fdt) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 1
  %off_mem_rsvmap.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 4
  %0 = ptrtoint ptr %off_mem_rsvmap.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %off_mem_rsvmap.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %3 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %5 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_mem_rsvmap.i, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %8 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %totalsize.i, align 1
  %conv.i30.i = zext i8 %9 to i32
  %shl.i31.i = shl nuw i32 %conv.i30.i, 24
  %arrayidx1.i32.i = getelementptr i8, ptr %totalsize.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i32.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i32.i, align 1
  %conv2.i33.i = zext i8 %11 to i32
  %shl3.i34.i = shl nuw nsw i32 %conv2.i33.i, 16
  %or.i35.i = or i32 %shl3.i34.i, %shl.i31.i
  %arrayidx4.i36.i = getelementptr i8, ptr %totalsize.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i36.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i36.i, align 1
  %conv5.i37.i = zext i8 %13 to i32
  %shl6.i38.i = shl nuw nsw i32 %conv5.i37.i, 8
  %or7.i39.i = or i32 %or.i35.i, %shl6.i38.i
  %arrayidx8.i40.i = getelementptr i8, ptr %totalsize.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i40.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i40.i, align 1
  %conv9.i41.i = zext i8 %15 to i32
  %or10.i42.i = or i32 %or7.i39.i, %conv9.i41.i
  %sub.i = add i32 %or10.i42.i, -16
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.if.end.i_crit_edge, %entry
  %add.i9 = phi i32 [ %or10.i.i, %entry ], [ %add.i, %for.inc.if.end.i_crit_edge ]
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.inc.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i9, i32 %sub.i)
  %cmp6.i = icmp ugt i32 %add.i9, %sub.i
  br i1 %cmp6.i, label %if.end.i.cleanup_crit_edge, label %fdt_mem_rsv.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fdt_mem_rsv.exit:                                 ; preds = %if.end.i
  %add.ptr1.i.i = getelementptr %struct.fdt_reserve_entry, ptr %add.ptr.i.i, i32 %i.08
  %cmp.not = icmp eq ptr %add.ptr1.i.i, null
  br i1 %cmp.not, label %fdt_mem_rsv.exit.cleanup_crit_edge, label %for.body

fdt_mem_rsv.exit.cleanup_crit_edge:               ; preds = %fdt_mem_rsv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %fdt_mem_rsv.exit
  %size = getelementptr inbounds %struct.fdt_reserve_entry, ptr %add.ptr1.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp2 = icmp eq i64 %17, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.08, 1
  %mul.i = shl i32 %inc, 4
  %add.i = add i32 %or10.i.i, %mul.i
  %cmp.i = icmp ult i32 %add.i, %or10.i.i
  br i1 %cmp.i, label %for.inc.cleanup_crit_edge, label %for.inc.if.end.i_crit_edge

for.inc.if.end.i_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %fdt_mem_rsv.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.08, %for.body.cleanup_crit_edge ], [ -8, %fdt_mem_rsv.exit.cleanup_crit_edge ], [ -8, %for.inc.cleanup_crit_edge ], [ -8, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_subnode_offset_namelen(ptr noundef %fdt, i32 noundef %offset, ptr noundef readonly %name, i32 noundef %namelen) local_unnamed_addr #0 align 64 {
entry:
  %olen.i = alloca i32, align 4
  %depth = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth) #10
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup11_crit_edge, label %cleanup.cont

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

cleanup.cont:                                     ; preds = %entry
  %0 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset)
  %cmp125 = icmp sgt i32 %offset, -1
  br i1 %cmp125, label %cleanup.cont.for.body_crit_edge, label %cleanup.cont.for.end_crit_edge

cleanup.cont.for.end_crit_edge:                   ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.cont.for.body_crit_edge:                  ; preds = %cleanup.cont
  br label %for.body

land.rhsthread-pre-split:                         ; preds = %for.inc
  %1 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pr = load i32, ptr %depth, align 4
  %cmp2 = icmp sgt i32 %.pr, -1
  br i1 %cmp2, label %land.rhsthread-pre-split.for.body_crit_edge, label %land.rhsthread-pre-split.for.end_crit_edge

land.rhsthread-pre-split.for.end_crit_edge:       ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhsthread-pre-split.for.body_crit_edge:      ; preds = %land.rhsthread-pre-split
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %land.rhsthread-pre-split.for.body_crit_edge, %cleanup.cont.for.body_crit_edge
  %offset.addr.02636 = phi i32 [ %call7, %land.rhsthread-pre-split.for.body_crit_edge ], [ %offset, %cleanup.cont.for.body_crit_edge ]
  %2 = phi i32 [ %.pr, %land.rhsthread-pre-split.for.body_crit_edge ], [ 0, %cleanup.cont.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp3 = icmp eq i32 %2, 1
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %olen.i) #10
  %3 = ptrtoint ptr %olen.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %olen.i, align 4, !annotation !16
  %call.i = call ptr @fdt_get_name(ptr noundef %fdt, i32 noundef %offset.addr.02636, ptr noundef nonnull %olen.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %land.lhs.true.fdt_nodename_eq_.exit.thread_crit_edge, label %lor.lhs.false.i

land.lhs.true.fdt_nodename_eq_.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_nodename_eq_.exit.thread

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %4 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %namelen)
  %cmp.i = icmp slt i32 %5, %namelen
  br i1 %cmp.i, label %lor.lhs.false.i.fdt_nodename_eq_.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.fdt_nodename_eq_.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_nodename_eq_.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %bcmp.i = call i32 @bcmp(ptr nonnull %call.i, ptr %name, i32 %namelen) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp2.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.fdt_nodename_eq_.exit.thread_crit_edge

if.end.i.fdt_nodename_eq_.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_nodename_eq_.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %namelen
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp5.i = icmp eq i8 %7, 0
  br i1 %cmp5.i, label %fdt_nodename_eq_.exit.thread20, label %fdt_nodename_eq_.exit

fdt_nodename_eq_.exit.thread20:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #10
  br label %cleanup11

fdt_nodename_eq_.exit.thread:                     ; preds = %if.end.i.fdt_nodename_eq_.exit.thread_crit_edge, %lor.lhs.false.i.fdt_nodename_eq_.exit.thread_crit_edge, %land.lhs.true.fdt_nodename_eq_.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #10
  br label %for.inc

fdt_nodename_eq_.exit:                            ; preds = %if.end4.i
  %call8.i = call ptr @memchr(ptr noundef %name, i32 noundef 64, i32 noundef %namelen) #12
  %tobool9.not.i = icmp ne ptr %call8.i, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %7)
  %cmp12.i = icmp ne i8 %7, 64
  %or.cond.i = select i1 %tobool9.not.i, i1 true, i1 %cmp12.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen.i) #10
  br i1 %or.cond.i, label %fdt_nodename_eq_.exit.for.inc_crit_edge, label %fdt_nodename_eq_.exit.cleanup11_crit_edge

fdt_nodename_eq_.exit.cleanup11_crit_edge:        ; preds = %fdt_nodename_eq_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

fdt_nodename_eq_.exit.for.inc_crit_edge:          ; preds = %fdt_nodename_eq_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %fdt_nodename_eq_.exit.for.inc_crit_edge, %fdt_nodename_eq_.exit.thread, %for.body.for.inc_crit_edge
  %call7 = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.addr.02636, ptr noundef nonnull %depth) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp1 = icmp sgt i32 %call7, -1
  br i1 %cmp1, label %land.rhsthread-pre-split, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhsthread-pre-split.for.end_crit_edge, %cleanup.cont.for.end_crit_edge
  %offset.addr.0.lcssa = phi i32 [ %offset, %cleanup.cont.for.end_crit_edge ], [ %call7, %for.inc.for.end_crit_edge ], [ %call7, %land.rhsthread-pre-split.for.end_crit_edge ]
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp8.inv = icmp sgt i32 %9, -1
  %.offset.addr.0 = select i1 %cmp8.inv, i32 %offset.addr.0.lcssa, i32 -1
  br label %cleanup11

cleanup11:                                        ; preds = %for.end, %fdt_nodename_eq_.exit.cleanup11_crit_edge, %fdt_nodename_eq_.exit.thread20, %entry.cleanup11_crit_edge
  %retval.1 = phi i32 [ %call, %entry.cleanup11_crit_edge ], [ %.offset.addr.0, %for.end ], [ %offset.addr.02636, %fdt_nodename_eq_.exit.thread20 ], [ %offset.addr.02636, %fdt_nodename_eq_.exit.cleanup11_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_subnode_offset(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @strlen(ptr noundef %name) #11
  %call1 = tail call i32 @fdt_subnode_offset_namelen(ptr noundef %fdt, i32 noundef %parentoffset, ptr noundef %name, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef %path, i32 noundef %namelen) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %path, i32 %namelen
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup50_crit_edge, label %cleanup.cont

entry.cleanup50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

cleanup.cont:                                     ; preds = %entry
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp1.not = icmp eq i8 %1, 47
  br i1 %cmp1.not, label %cleanup.cont.if.end18_crit_edge, label %if.then3

cleanup.cont.if.end18_crit_edge:                  ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then3:                                         ; preds = %cleanup.cont
  %call4 = tail call ptr @memchr(ptr noundef %path, i32 noundef 47, i32 noundef %namelen) #11
  %tobool.not = icmp eq ptr %call4, null
  %spec.select = select i1 %tobool.not, ptr %add.ptr, ptr %call4
  %call1.i = tail call i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef nonnull @.str.2, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then3.cleanup50_crit_edge, label %if.end.i

if.then3.cleanup50_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.end.i:                                         ; preds = %if.then3
  %sub.ptr.lhs.cast7 = ptrtoint ptr %spec.select to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %path to i32
  %sub.ptr.sub9 = sub i32 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i) #10
  %2 = ptrtoint ptr %poffset.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %poffset.i, align 4, !annotation !16
  %call.i91 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %call1.i, ptr noundef %path, i32 noundef %sub.ptr.sub9, ptr noundef null, ptr noundef nonnull %poffset.i) #10
  %tobool.not.i = icmp eq ptr %call.i91, null
  br i1 %tobool.not.i, label %fdt_get_alias_namelen.exit.thread99, label %if.end.i93

fdt_get_alias_namelen.exit.thread99:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i) #10
  br label %cleanup50

if.end.i93:                                       ; preds = %if.end.i
  %version.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %3 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %version.i, align 1
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %version.i, i32 1
  %5 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %6 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %version.i, i32 2
  %7 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %8 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %version.i, i32 3
  %9 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %10 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i.i)
  %cmp.i92 = icmp ult i32 %or10.i.i, 16
  br i1 %cmp.i92, label %land.lhs.true3.i, label %if.end.i93.if.end9.i_crit_edge

if.end.i93.if.end9.i_crit_edge:                   ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

land.lhs.true3.i:                                 ; preds = %if.end.i93
  %11 = ptrtoint ptr %poffset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %poffset.i, align 4
  %add.i = add i32 %12, 4
  %rem.i = and i32 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool4.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.if.end9.i_crit_edge, label %land.lhs.true5.i

land.lhs.true3.i.if.end9.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %call.i91, i32 0, i32 1
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp7.i = icmp ugt i32 %14, 7
  br i1 %cmp7.i, label %if.then8.i, label %land.lhs.true5.i.if.end9.i_crit_edge

land.lhs.true5.i.if.end9.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then8.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr %struct.fdt_property, ptr %call.i91, i32 1, i32 1
  br label %fdt_get_alias_namelen.exit

if.end9.i:                                        ; preds = %land.lhs.true5.i.if.end9.i_crit_edge, %land.lhs.true3.i.if.end9.i_crit_edge, %if.end.i93.if.end9.i_crit_edge
  %data10.i = getelementptr inbounds %struct.fdt_property, ptr %call.i91, i32 0, i32 3
  br label %fdt_get_alias_namelen.exit

fdt_get_alias_namelen.exit:                       ; preds = %if.end9.i, %if.then8.i
  %retval.0.i94 = phi ptr [ %data10.i, %if.end9.i ], [ %add.ptr.i, %if.then8.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i) #10
  %tobool11.not = icmp eq ptr %retval.0.i94, null
  br i1 %tobool11.not, label %fdt_get_alias_namelen.exit.cleanup50_crit_edge, label %cleanup15

fdt_get_alias_namelen.exit.cleanup50_crit_edge:   ; preds = %fdt_get_alias_namelen.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

cleanup15:                                        ; preds = %fdt_get_alias_namelen.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i89 = call i32 @strlen(ptr noundef nonnull %retval.0.i94) #12
  %call1.i90 = call i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef nonnull %retval.0.i94, i32 noundef %call.i89) #10
  br label %if.end18

if.end18:                                         ; preds = %cleanup15, %cleanup.cont.if.end18_crit_edge
  %p.1 = phi ptr [ %spec.select, %cleanup15 ], [ %path, %cleanup.cont.if.end18_crit_edge ]
  %offset.1 = phi i32 [ %call1.i90, %cleanup15 ], [ 0, %cleanup.cont.if.end18_crit_edge ]
  %sub.ptr.lhs.cast31 = ptrtoint ptr %add.ptr to i32
  br label %while.cond

while.cond:                                       ; preds = %while.end.while.cond_crit_edge, %if.end18
  %p.2 = phi ptr [ %p.1, %if.end18 ], [ %spec.select88, %while.end.while.cond_crit_edge ]
  %offset.2 = phi i32 [ %offset.1, %if.end18 ], [ %call41, %while.end.while.cond_crit_edge ]
  %cmp19 = icmp ult ptr %p.2, %add.ptr
  br i1 %cmp19, label %while.cond.while.cond22_crit_edge, label %while.cond.cleanup50_crit_edge

while.cond.cleanup50_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

while.cond.while.cond22_crit_edge:                ; preds = %while.cond
  br label %while.cond22

while.cond22:                                     ; preds = %while.body26.while.cond22_crit_edge, %while.cond.while.cond22_crit_edge
  %p.3 = phi ptr [ %incdec.ptr, %while.body26.while.cond22_crit_edge ], [ %p.2, %while.cond.while.cond22_crit_edge ]
  %15 = ptrtoint ptr %p.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %p.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %16)
  %cmp24 = icmp eq i8 %16, 47
  br i1 %cmp24, label %while.body26, label %while.end

while.body26:                                     ; preds = %while.cond22
  %incdec.ptr = getelementptr i8, ptr %p.3, i32 1
  %cmp27 = icmp eq ptr %incdec.ptr, %add.ptr
  br i1 %cmp27, label %while.body26.cleanup50_crit_edge, label %while.body26.while.cond22_crit_edge

while.body26.while.cond22_crit_edge:              ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond22

while.body26.cleanup50_crit_edge:                 ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

while.end:                                        ; preds = %while.cond22
  %sub.ptr.rhs.cast32 = ptrtoint ptr %p.3 to i32
  %sub.ptr.sub33 = sub i32 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %call34 = call ptr @memchr(ptr noundef %p.3, i32 noundef 47, i32 noundef %sub.ptr.sub33) #11
  %tobool35.not = icmp eq ptr %call34, null
  %spec.select88 = select i1 %tobool35.not, ptr %add.ptr, ptr %call34
  %sub.ptr.lhs.cast38 = ptrtoint ptr %spec.select88 to i32
  %sub.ptr.sub40 = sub i32 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast32
  %call41 = call i32 @fdt_subnode_offset_namelen(ptr noundef %fdt, i32 noundef %offset.2, ptr noundef %p.3, i32 noundef %sub.ptr.sub40)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %while.end.cleanup50_crit_edge, label %while.end.while.cond_crit_edge

while.end.while.cond_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end.cleanup50_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

cleanup50:                                        ; preds = %while.end.cleanup50_crit_edge, %while.body26.cleanup50_crit_edge, %while.cond.cleanup50_crit_edge, %fdt_get_alias_namelen.exit.cleanup50_crit_edge, %fdt_get_alias_namelen.exit.thread99, %if.then3.cleanup50_crit_edge, %entry.cleanup50_crit_edge
  %retval.5 = phi i32 [ %call, %entry.cleanup50_crit_edge ], [ -5, %fdt_get_alias_namelen.exit.cleanup50_crit_edge ], [ -5, %fdt_get_alias_namelen.exit.thread99 ], [ -5, %if.then3.cleanup50_crit_edge ], [ %offset.2, %while.body26.cleanup50_crit_edge ], [ %offset.2, %while.cond.cleanup50_crit_edge ], [ %call41, %while.end.cleanup50_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fdt_get_alias_namelen(ptr noundef %fdt, ptr nocapture noundef readonly %name, i32 noundef %namelen) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef nonnull @.str.2, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i) #10
  %0 = ptrtoint ptr %poffset.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %poffset.i, align 4, !annotation !16
  %call.i4 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %call1.i, ptr noundef %name, i32 noundef %namelen, ptr noundef null, ptr noundef nonnull %poffset.i) #10
  %tobool.not.i = icmp eq ptr %call.i4, null
  br i1 %tobool.not.i, label %if.end.fdt_getprop_namelen.exit_crit_edge, label %if.end.i

if.end.fdt_getprop_namelen.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_getprop_namelen.exit

if.end.i:                                         ; preds = %if.end
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i.i)
  %cmp.i = icmp ult i32 %or10.i.i, 16
  br i1 %cmp.i, label %land.lhs.true3.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

land.lhs.true3.i:                                 ; preds = %if.end.i
  %9 = ptrtoint ptr %poffset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %poffset.i, align 4
  %add.i = add i32 %10, 4
  %rem.i = and i32 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool4.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.if.end9.i_crit_edge, label %land.lhs.true5.i

land.lhs.true3.i.if.end9.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %call.i4, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp7.i = icmp ugt i32 %12, 7
  br i1 %cmp7.i, label %if.then8.i, label %land.lhs.true5.i.if.end9.i_crit_edge

land.lhs.true5.i.if.end9.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then8.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr %struct.fdt_property, ptr %call.i4, i32 1, i32 1
  br label %fdt_getprop_namelen.exit

if.end9.i:                                        ; preds = %land.lhs.true5.i.if.end9.i_crit_edge, %land.lhs.true3.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %data10.i = getelementptr inbounds %struct.fdt_property, ptr %call.i4, i32 0, i32 3
  br label %fdt_getprop_namelen.exit

fdt_getprop_namelen.exit:                         ; preds = %if.end9.i, %if.then8.i, %if.end.fdt_getprop_namelen.exit_crit_edge
  %retval.0.i = phi ptr [ %data10.i, %if.end9.i ], [ %add.ptr.i, %if.then8.i ], [ null, %if.end.fdt_getprop_namelen.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i) #10
  br label %cleanup

cleanup:                                          ; preds = %fdt_getprop_namelen.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %fdt_getprop_namelen.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_path_offset(ptr noundef %fdt, ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @strlen(ptr noundef %path) #11
  %call1 = tail call i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef %path, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fdt_get_name(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef writeonly %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %off_dt_struct.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %0 = ptrtoint ptr %off_dt_struct.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %off_dt_struct.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr i8, ptr %off_dt_struct.i, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %3 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %off_dt_struct.i, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %5 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %off_dt_struct.i, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %7 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %add.ptr.i = getelementptr i8, ptr %fdt, i32 %or10.i.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %nodeoffset
  %call1 = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.fail_crit_edge, label %lor.lhs.false

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @fdt_check_node_offset_(ptr noundef %fdt, i32 noundef %nodeoffset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %lor.lhs.false.fail_crit_edge, label %if.end

lor.lhs.false.fail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end:                                           ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.fdt_node_header, ptr %add.ptr1.i, i32 0, i32 1
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %version, align 1
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %version, i32 1
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %11 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %version, i32 2
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %13 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %version, i32 3
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %15 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i)
  %cmp6 = icmp ult i32 %or10.i, 16
  br i1 %cmp6, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then7:                                         ; preds = %if.end
  %call8 = tail call ptr @strrchr(ptr noundef %name, i32 noundef 47)
  %cmp9 = icmp eq ptr %call8, null
  %add.ptr = getelementptr i8, ptr %call8, i32 1
  br i1 %cmp9, label %if.then7.fail_crit_edge, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then7.fail_crit_edge:                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %nameptr.1 = phi ptr [ %add.ptr, %if.then7.if.end12_crit_edge ], [ %name, %if.end.if.end12_crit_edge ]
  %tobool.not = icmp eq ptr %len, null
  br i1 %tobool.not, label %if.end12.cleanup19_crit_edge, label %if.then13

if.end12.cleanup19_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup19

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 @strlen(ptr noundef %nameptr.1) #11
  br label %cleanup19.sink.split

fail:                                             ; preds = %if.then7.fail_crit_edge, %lor.lhs.false.fail_crit_edge, %entry.fail_crit_edge
  %err.1 = phi i32 [ %call1, %entry.fail_crit_edge ], [ %call2, %lor.lhs.false.fail_crit_edge ], [ -11, %if.then7.fail_crit_edge ]
  %tobool16.not = icmp eq ptr %len, null
  br i1 %tobool16.not, label %fail.cleanup19_crit_edge, label %fail.cleanup19.sink.split_crit_edge

fail.cleanup19.sink.split_crit_edge:              ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup19.sink.split

fail.cleanup19_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup19

cleanup19.sink.split:                             ; preds = %fail.cleanup19.sink.split_crit_edge, %if.then13
  %err.1.sink = phi i32 [ %call14, %if.then13 ], [ %err.1, %fail.cleanup19.sink.split_crit_edge ]
  %retval.0.ph = phi ptr [ %nameptr.1, %if.then13 ], [ null, %fail.cleanup19.sink.split_crit_edge ]
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %err.1.sink, ptr %len, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %cleanup19.sink.split, %fail.cleanup19_crit_edge, %if.end12.cleanup19_crit_edge
  %retval.0 = phi ptr [ %nameptr.1, %if.end12.cleanup19_crit_edge ], [ null, %fail.cleanup19_crit_edge ], [ %retval.0.ph, %cleanup19.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_check_node_offset_(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_first_property_offset(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 align 64 {
entry:
  %nextoffset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @fdt_check_node_offset_(ptr noundef %fdt, i32 noundef %nodeoffset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i) #10
  %0 = ptrtoint ptr %nextoffset.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nextoffset.i, align 4, !annotation !16
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i.do.body.i_crit_edge, %if.end
  %offset.addr.0.i = phi i32 [ %call, %if.end ], [ %5, %sw.epilog.i.do.body.i_crit_edge ]
  %call.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0.i, ptr noundef nonnull %nextoffset.i) #10
  %1 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %call.i, label %sw.epilog.i [
    i32 9, label %sw.bb.i
    i32 3, label %do.body.i.nextprop_.exit_crit_edge
  ]

do.body.i.nextprop_.exit_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nextprop_.exit

sw.bb.i:                                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %nextoffset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nextoffset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  %..i = select i1 %cmp.i, i32 -11, i32 %3
  br label %nextprop_.exit

sw.epilog.i:                                      ; preds = %do.body.i
  %4 = ptrtoint ptr %nextoffset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nextoffset.i, align 4
  %cmp2.i = icmp eq i32 %call.i, 4
  br i1 %cmp2.i, label %sw.epilog.i.do.body.i_crit_edge, label %sw.epilog.i.nextprop_.exit_crit_edge

sw.epilog.i.nextprop_.exit_crit_edge:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nextprop_.exit

sw.epilog.i.do.body.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

nextprop_.exit:                                   ; preds = %sw.epilog.i.nextprop_.exit_crit_edge, %sw.bb.i, %do.body.i.nextprop_.exit_crit_edge
  %retval.0.i = phi i32 [ %..i, %sw.bb.i ], [ %offset.addr.0.i, %do.body.i.nextprop_.exit_crit_edge ], [ -1, %sw.epilog.i.nextprop_.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #10
  br label %cleanup

cleanup:                                          ; preds = %nextprop_.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %nextprop_.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_next_property_offset(ptr noundef %fdt, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %nextoffset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i) #10
  %0 = ptrtoint ptr %nextoffset.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nextoffset.i, align 4, !annotation !16
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i.do.body.i_crit_edge, %if.end
  %offset.addr.0.i = phi i32 [ %call, %if.end ], [ %5, %sw.epilog.i.do.body.i_crit_edge ]
  %call.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0.i, ptr noundef nonnull %nextoffset.i) #10
  %1 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call.i, label %sw.epilog.i [
    i32 9, label %sw.bb.i
    i32 3, label %do.body.i.nextprop_.exit_crit_edge
  ]

do.body.i.nextprop_.exit_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nextprop_.exit

sw.bb.i:                                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %nextoffset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nextoffset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  %..i = select i1 %cmp.i, i32 -11, i32 %3
  br label %nextprop_.exit

sw.epilog.i:                                      ; preds = %do.body.i
  %4 = ptrtoint ptr %nextoffset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nextoffset.i, align 4
  %cmp2.i = icmp eq i32 %call.i, 4
  br i1 %cmp2.i, label %sw.epilog.i.do.body.i_crit_edge, label %sw.epilog.i.nextprop_.exit_crit_edge

sw.epilog.i.nextprop_.exit_crit_edge:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nextprop_.exit

sw.epilog.i.do.body.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

nextprop_.exit:                                   ; preds = %sw.epilog.i.nextprop_.exit_crit_edge, %sw.bb.i, %do.body.i.nextprop_.exit_crit_edge
  %retval.0.i = phi i32 [ %..i, %sw.bb.i ], [ %offset.addr.0.i, %do.body.i.nextprop_.exit_crit_edge ], [ -1, %sw.epilog.i.nextprop_.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i) #10
  br label %return

return:                                           ; preds = %nextprop_.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %nextprop_.exit ], [ %call, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_check_prop_offset_(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fdt_get_property_by_offset(ptr noundef %fdt, i32 noundef %offset, ptr noundef writeonly %lenp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i)
  %cmp = icmp ult i32 %or10.i, 16
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %lenp, null
  br i1 %tobool.not, label %if.then.return_crit_edge, label %if.then.return.sink.split_crit_edge

if.then.return.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %entry
  %call1.i = tail call i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %if.end3
  %tobool.not.i = icmp eq ptr %lenp, null
  br i1 %tobool.not.i, label %if.then.i.return_crit_edge, label %if.then.i.return.sink.split_crit_edge

if.then.i.return.sink.split_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3.i:                                        ; preds = %if.end3
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %8 = ptrtoint ptr %off_dt_struct.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %off_dt_struct.i.i, align 1
  %conv.i.i.i = zext i8 %9 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %11 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %13 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 3
  %14 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %15 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %offset
  %tobool5.not.i = icmp eq ptr %lenp, null
  br i1 %tobool5.not.i, label %if.end3.i.return_crit_edge, label %if.then6.i

if.end3.i.return_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %add.ptr1.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then6.i, %if.then.i.return.sink.split_crit_edge, %if.then.return.sink.split_crit_edge
  %.sink.i.sink = phi i32 [ -10, %if.then.return.sink.split_crit_edge ], [ %17, %if.then6.i ], [ %call1.i, %if.then.i.return.sink.split_crit_edge ]
  %retval.0.ph = phi ptr [ null, %if.then.return.sink.split_crit_edge ], [ %add.ptr1.i.i, %if.then6.i ], [ null, %if.then.i.return.sink.split_crit_edge ]
  %18 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink.i.sink, ptr %lenp, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end3.i.return_crit_edge, %if.then.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi ptr [ null, %if.then.return_crit_edge ], [ null, %if.then.i.return_crit_edge ], [ %add.ptr1.i.i, %if.end3.i.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fdt_get_property_namelen(ptr noundef %fdt, i32 noundef %offset, ptr nocapture noundef readonly %name, i32 noundef %namelen, ptr noundef %lenp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i)
  %cmp = icmp ult i32 %or10.i, 16
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %lenp, null
  br i1 %tobool.not, label %if.then.return_crit_edge, label %if.then2

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -10, ptr %lenp, align 4
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %offset, ptr noundef %name, i32 noundef %namelen, ptr noundef %lenp, ptr noundef null)
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then.return_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end3 ], [ null, %if.then2 ], [ null, %if.then.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %offset, ptr nocapture noundef readonly %name, i32 noundef %namelen, ptr noundef writeonly %lenp, ptr noundef writeonly %poffset) unnamed_addr #0 align 64 {
entry:
  %nextoffset.i.i33 = alloca i32, align 4
  %slen.i = alloca i32, align 4
  %nextoffset.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @fdt_check_node_offset_(ptr noundef %fdt, i32 noundef %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.for.end_crit_edge, label %if.end.i

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i.i) #10
  %0 = ptrtoint ptr %nextoffset.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nextoffset.i.i, align 4, !annotation !16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %sw.epilog.i.i.do.body.i.i_crit_edge, %if.end.i
  %offset.addr.0.i.i = phi i32 [ %call.i, %if.end.i ], [ %5, %sw.epilog.i.i.do.body.i.i_crit_edge ]
  %call.i.i = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0.i.i, ptr noundef nonnull %nextoffset.i.i) #10
  %1 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call.i.i, label %sw.epilog.i.i [
    i32 9, label %sw.bb.i.i
    i32 3, label %fdt_first_property_offset.exit
  ]

sw.bb.i.i:                                        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %nextoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nextoffset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.i = icmp sgt i32 %3, -1
  %spec.select = select i1 %cmp.i.i, i32 -11, i32 %3
  br label %fdt_first_property_offset.exit.thread75

sw.epilog.i.i:                                    ; preds = %do.body.i.i
  %4 = ptrtoint ptr %nextoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nextoffset.i.i, align 4
  %cmp2.i.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp2.i.i, label %sw.epilog.i.i.do.body.i.i_crit_edge, label %sw.epilog.i.i.fdt_first_property_offset.exit.thread75_crit_edge

sw.epilog.i.i.fdt_first_property_offset.exit.thread75_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_first_property_offset.exit.thread75

sw.epilog.i.i.do.body.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

fdt_first_property_offset.exit.thread75:          ; preds = %sw.epilog.i.i.fdt_first_property_offset.exit.thread75_crit_edge, %sw.bb.i.i
  %retval.0.i.i.ph = phi i32 [ %spec.select, %sw.bb.i.i ], [ -1, %sw.epilog.i.i.fdt_first_property_offset.exit.thread75_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i.i) #10
  br label %for.end

fdt_first_property_offset.exit:                   ; preds = %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset.addr.0.i.i)
  %cmp65 = icmp sgt i32 %offset.addr.0.i.i, -1
  br i1 %cmp65, label %for.body.lr.ph, label %fdt_first_property_offset.exit.for.end_crit_edge

fdt_first_property_offset.exit.for.end_crit_edge: ; preds = %fdt_first_property_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %fdt_first_property_offset.exit
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 1
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 2
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 3
  %tobool5.not.i = icmp eq ptr %lenp, null
  br label %for.body

for.body:                                         ; preds = %fdt_next_property_offset.exit.for.body_crit_edge, %for.body.lr.ph
  %offset.addr.066 = phi i32 [ %offset.addr.0.i.i, %for.body.lr.ph ], [ %offset.addr.0.i.i37, %fdt_next_property_offset.exit.for.body_crit_edge ]
  %call1.i = call i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset.addr.066) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i28 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i28, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %for.body
  br i1 %tobool5.not.i, label %if.then.i.return_crit_edge, label %if.then.i.cleanup.sink.split.i_crit_edge

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3.i:                                        ; preds = %for.body
  %6 = ptrtoint ptr %off_dt_struct.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %off_dt_struct.i.i, align 1
  %conv.i.i.i = zext i8 %7 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %8 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %9 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %10 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %11 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %12 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %13 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %offset.addr.066
  br i1 %tobool5.not.i, label %if.end3.i.fdt_get_property_by_offset_.exit_crit_edge, label %if.then6.i

if.end3.i.fdt_get_property_by_offset_.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_get_property_by_offset_.exit

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %add.ptr1.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then6.i, %if.then.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %15, %if.then6.i ], [ %call1.i, %if.then.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi ptr [ %add.ptr1.i.i, %if.then6.i ], [ null, %if.then.i.cleanup.sink.split.i_crit_edge ]
  %16 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink.i, ptr %lenp, align 4
  br label %fdt_get_property_by_offset_.exit

fdt_get_property_by_offset_.exit:                 ; preds = %cleanup.sink.split.i, %if.end3.i.fdt_get_property_by_offset_.exit_crit_edge
  %retval.0.i29 = phi ptr [ %add.ptr1.i.i, %if.end3.i.fdt_get_property_by_offset_.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %tobool.not = icmp eq ptr %retval.0.i29, null
  br i1 %tobool.not, label %fdt_get_property_by_offset_.exit.for.end_crit_edge, label %if.end

fdt_get_property_by_offset_.exit.for.end_crit_edge: ; preds = %fdt_get_property_by_offset_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %fdt_get_property_by_offset_.exit
  %nameoff = getelementptr inbounds %struct.fdt_property, ptr %retval.0.i29, i32 0, i32 2
  %17 = ptrtoint ptr %nameoff to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nameoff, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slen.i) #10
  %19 = ptrtoint ptr %slen.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %slen.i, align 4, !annotation !16
  %call.i30 = call ptr @fdt_get_string(ptr noundef %fdt, i32 noundef %18, ptr noundef nonnull %slen.i) #10
  %tobool.not.i31 = icmp eq ptr %call.i30, null
  br i1 %tobool.not.i31, label %if.end.fdt_string_eq_.exit.thread_crit_edge, label %land.lhs.true.i

if.end.fdt_string_eq_.exit.thread_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_string_eq_.exit.thread

land.lhs.true.i:                                  ; preds = %if.end
  %20 = ptrtoint ptr %slen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %namelen)
  %cmp.i32 = icmp eq i32 %21, %namelen
  br i1 %cmp.i32, label %fdt_string_eq_.exit, label %land.lhs.true.i.fdt_string_eq_.exit.thread_crit_edge

land.lhs.true.i.fdt_string_eq_.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_string_eq_.exit.thread

fdt_string_eq_.exit.thread:                       ; preds = %land.lhs.true.i.fdt_string_eq_.exit.thread_crit_edge, %if.end.fdt_string_eq_.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slen.i) #10
  br label %for.inc

fdt_string_eq_.exit:                              ; preds = %land.lhs.true.i
  %bcmp.i = call i32 @bcmp(ptr nonnull %call.i30, ptr %name, i32 %namelen) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp2.i.not = icmp eq i32 %bcmp.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slen.i) #10
  br i1 %cmp2.i.not, label %if.then6, label %fdt_string_eq_.exit.for.inc_crit_edge

fdt_string_eq_.exit.for.inc_crit_edge:            ; preds = %fdt_string_eq_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then6:                                         ; preds = %fdt_string_eq_.exit
  %tobool7.not = icmp eq ptr %poffset, null
  br i1 %tobool7.not, label %if.then6.return_crit_edge, label %if.then8

if.then6.return_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %poffset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %offset.addr.066, ptr %poffset, align 4
  br label %return

for.inc:                                          ; preds = %fdt_string_eq_.exit.for.inc_crit_edge, %fdt_string_eq_.exit.thread
  %call.i34 = call i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset.addr.066) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp.i35 = icmp slt i32 %call.i34, 0
  br i1 %cmp.i35, label %for.inc.for.end_crit_edge, label %if.end.i36

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.i36:                                       ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextoffset.i.i33) #10
  %23 = ptrtoint ptr %nextoffset.i.i33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %nextoffset.i.i33, align 4, !annotation !16
  br label %do.body.i.i39

do.body.i.i39:                                    ; preds = %sw.epilog.i.i44.do.body.i.i39_crit_edge, %if.end.i36
  %offset.addr.0.i.i37 = phi i32 [ %call.i34, %if.end.i36 ], [ %28, %sw.epilog.i.i44.do.body.i.i39_crit_edge ]
  %call.i.i38 = call i32 @fdt_next_tag(ptr noundef %fdt, i32 noundef %offset.addr.0.i.i37, ptr noundef nonnull %nextoffset.i.i33) #10
  %24 = zext i32 %call.i.i38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %call.i.i38, label %sw.epilog.i.i44 [
    i32 9, label %sw.bb.i.i42
    i32 3, label %fdt_next_property_offset.exit
  ]

sw.bb.i.i42:                                      ; preds = %do.body.i.i39
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %nextoffset.i.i33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nextoffset.i.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.i40 = icmp sgt i32 %26, -1
  %spec.select95 = select i1 %cmp.i.i40, i32 -11, i32 %26
  br label %fdt_next_property_offset.exit.thread81

sw.epilog.i.i44:                                  ; preds = %do.body.i.i39
  %27 = ptrtoint ptr %nextoffset.i.i33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nextoffset.i.i33, align 4
  %cmp2.i.i43 = icmp eq i32 %call.i.i38, 4
  br i1 %cmp2.i.i43, label %sw.epilog.i.i44.do.body.i.i39_crit_edge, label %sw.epilog.i.i44.fdt_next_property_offset.exit.thread81_crit_edge

sw.epilog.i.i44.fdt_next_property_offset.exit.thread81_crit_edge: ; preds = %sw.epilog.i.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_next_property_offset.exit.thread81

sw.epilog.i.i44.do.body.i.i39_crit_edge:          ; preds = %sw.epilog.i.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i39

fdt_next_property_offset.exit.thread81:           ; preds = %sw.epilog.i.i44.fdt_next_property_offset.exit.thread81_crit_edge, %sw.bb.i.i42
  %retval.0.i.i45.ph = phi i32 [ %spec.select95, %sw.bb.i.i42 ], [ -1, %sw.epilog.i.i44.fdt_next_property_offset.exit.thread81_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i.i33) #10
  br label %for.end

fdt_next_property_offset.exit:                    ; preds = %do.body.i.i39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextoffset.i.i33) #10
  %cmp = icmp sgt i32 %offset.addr.0.i.i37, -1
  br i1 %cmp, label %fdt_next_property_offset.exit.for.body_crit_edge, label %fdt_next_property_offset.exit.for.end_crit_edge

fdt_next_property_offset.exit.for.end_crit_edge:  ; preds = %fdt_next_property_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

fdt_next_property_offset.exit.for.body_crit_edge: ; preds = %fdt_next_property_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %fdt_next_property_offset.exit.for.end_crit_edge, %fdt_next_property_offset.exit.thread81, %for.inc.for.end_crit_edge, %fdt_get_property_by_offset_.exit.for.end_crit_edge, %fdt_first_property_offset.exit.for.end_crit_edge, %fdt_first_property_offset.exit.thread75, %entry.for.end_crit_edge
  %offset.addr.2 = phi i32 [ %offset.addr.0.i.i, %fdt_first_property_offset.exit.for.end_crit_edge ], [ %retval.0.i.i.ph, %fdt_first_property_offset.exit.thread75 ], [ %retval.0.i.i45.ph, %fdt_next_property_offset.exit.thread81 ], [ %call.i, %entry.for.end_crit_edge ], [ %call.i34, %for.inc.for.end_crit_edge ], [ -13, %fdt_get_property_by_offset_.exit.for.end_crit_edge ], [ %offset.addr.0.i.i37, %fdt_next_property_offset.exit.for.end_crit_edge ]
  %tobool12.not = icmp eq ptr %lenp, null
  br i1 %tobool12.not, label %for.end.return_crit_edge, label %if.then13

for.end.return_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %offset.addr.2, ptr %lenp, align 4
  br label %return

return:                                           ; preds = %if.then13, %for.end.return_crit_edge, %if.then8, %if.then6.return_crit_edge, %if.then.i.return_crit_edge
  %retval.2 = phi ptr [ null, %if.then13 ], [ null, %for.end.return_crit_edge ], [ %retval.0.i29, %if.then8 ], [ %retval.0.i29, %if.then6.return_crit_edge ], [ null, %if.then.i.return_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fdt_get_property(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %name, ptr noundef %lenp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i.i)
  %cmp.i = icmp ult i32 %or10.i.i, 16
  br i1 %cmp.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %entry
  %tobool.not.i = icmp eq ptr %lenp, null
  br i1 %tobool.not.i, label %if.then.i.fdt_get_property_namelen.exit_crit_edge, label %if.then2.i

if.then.i.fdt_get_property_namelen.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_get_property_namelen.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -10, ptr %lenp, align 4
  br label %fdt_get_property_namelen.exit

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @strlen(ptr noundef %name) #11
  %call4.i = tail call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %call, ptr noundef %lenp, ptr noundef null) #10
  br label %fdt_get_property_namelen.exit

fdt_get_property_namelen.exit:                    ; preds = %if.end3.i, %if.then2.i, %if.then.i.fdt_get_property_namelen.exit_crit_edge
  %retval.0.i = phi ptr [ %call4.i, %if.end3.i ], [ null, %if.then2.i ], [ null, %if.then.i.fdt_get_property_namelen.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fdt_getprop_namelen(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %name, i32 noundef %namelen, ptr noundef %lenp) local_unnamed_addr #0 align 64 {
entry:
  %poffset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset) #10
  %0 = ptrtoint ptr %poffset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %poffset, align 4, !annotation !16
  %call = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %namelen, ptr noundef %lenp, ptr noundef nonnull %poffset)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %1 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %version, align 1
  %conv.i = zext i8 %2 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %version, i32 1
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %4 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %version, i32 2
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %6 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %version, i32 3
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %8 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i)
  %cmp = icmp ult i32 %or10.i, 16
  br i1 %cmp, label %land.lhs.true3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true3:                                   ; preds = %if.end
  %9 = ptrtoint ptr %poffset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %poffset, align 4
  %add = add i32 %10, 4
  %rem = and i32 %add, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool4.not = icmp eq i32 %rem, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end9_crit_edge, label %land.lhs.true5

land.lhs.true3.if.end9_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %len = getelementptr inbounds %struct.fdt_property, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp7 = icmp ugt i32 %12, 7
  br i1 %cmp7, label %if.then8, label %land.lhs.true5.if.end9_crit_edge

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.fdt_property, ptr %call, i32 1, i32 1
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true5.if.end9_crit_edge, %land.lhs.true3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %data10 = getelementptr inbounds %struct.fdt_property, ptr %call, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %data10, %if.end9 ], [ %add.ptr, %if.then8 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fdt_getprop_by_offset(ptr noundef %fdt, i32 noundef %offset, ptr noundef writeonly %namep, ptr noundef writeonly %lenp) local_unnamed_addr #0 align 64 {
entry:
  %namelen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @fdt_check_prop_offset_(ptr noundef %fdt, i32 noundef %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %entry
  %tobool.not.i = icmp eq ptr %lenp, null
  br i1 %tobool.not.i, label %if.then.i.cleanup30_crit_edge, label %if.then.i.cleanup.sink.split.i_crit_edge

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then.i.cleanup30_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

if.end3.i:                                        ; preds = %entry
  %off_dt_struct.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 2
  %0 = ptrtoint ptr %off_dt_struct.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %off_dt_struct.i.i, align 1
  %conv.i.i.i = zext i8 %1 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %3 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %5 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %off_dt_struct.i.i, i32 3
  %6 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %7 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdt, i32 %or10.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %offset
  %tobool5.not.i = icmp eq ptr %lenp, null
  br i1 %tobool5.not.i, label %if.end3.i.fdt_get_property_by_offset_.exit_crit_edge, label %if.then6.i

if.end3.i.fdt_get_property_by_offset_.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_get_property_by_offset_.exit

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %add.ptr1.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then6.i, %if.then.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %9, %if.then6.i ], [ %call1.i, %if.then.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi ptr [ %add.ptr1.i.i, %if.then6.i ], [ null, %if.then.i.cleanup.sink.split.i_crit_edge ]
  %10 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink.i, ptr %lenp, align 4
  br label %fdt_get_property_by_offset_.exit

fdt_get_property_by_offset_.exit:                 ; preds = %cleanup.sink.split.i, %if.end3.i.fdt_get_property_by_offset_.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr1.i.i, %if.end3.i.fdt_get_property_by_offset_.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %fdt_get_property_by_offset_.exit.cleanup30_crit_edge, label %if.end

fdt_get_property_by_offset_.exit.cleanup30_crit_edge: ; preds = %fdt_get_property_by_offset_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

if.end:                                           ; preds = %fdt_get_property_by_offset_.exit
  %tobool1.not = icmp eq ptr %namep, null
  br i1 %tobool1.not, label %if.end.if.end18_crit_edge, label %if.then2

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %namelen) #10
  %11 = ptrtoint ptr %namelen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %namelen, align 4, !annotation !16
  %nameoff = getelementptr inbounds %struct.fdt_property, ptr %retval.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %nameoff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nameoff, align 4
  %call6 = call ptr @fdt_get_string(ptr noundef %fdt, i32 noundef %13, ptr noundef nonnull %namelen)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then2
  %tobool9.not = icmp eq ptr %lenp, null
  br i1 %tobool9.not, label %cleanup30.critedge, label %if.then10

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %namelen, align 4
  %16 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %lenp, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen) #10
  br label %cleanup30

if.end12:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %namep to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call6, ptr %namep, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen) #10
  br label %if.end18

if.end18:                                         ; preds = %if.end12, %if.end.if.end18_crit_edge
  %version = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %18 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %version, align 1
  %conv.i = zext i8 %19 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %version, i32 1
  %20 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %21 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %version, i32 2
  %22 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %23 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %version, i32 3
  %24 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %25 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i)
  %cmp = icmp ult i32 %or10.i, 16
  br i1 %cmp, label %land.lhs.true21, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true21:                                  ; preds = %if.end18
  %add = add i32 %offset, 4
  %rem = and i32 %add, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool22.not = icmp eq i32 %rem, 0
  br i1 %tobool22.not, label %land.lhs.true21.if.end27_crit_edge, label %land.lhs.true23

land.lhs.true21.if.end27_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %len = getelementptr inbounds %struct.fdt_property, ptr %retval.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %27)
  %cmp25 = icmp ugt i32 %27, 7
  br i1 %cmp25, label %if.then26, label %land.lhs.true23.if.end27_crit_edge

land.lhs.true23.if.end27_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.fdt_property, ptr %retval.0.i, i32 1, i32 1
  br label %cleanup30

if.end27:                                         ; preds = %land.lhs.true23.if.end27_crit_edge, %land.lhs.true21.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %data28 = getelementptr inbounds %struct.fdt_property, ptr %retval.0.i, i32 0, i32 3
  br label %cleanup30

cleanup30.critedge:                               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen) #10
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup30.critedge, %if.end27, %if.then26, %if.then10, %fdt_get_property_by_offset_.exit.cleanup30_crit_edge, %if.then.i.cleanup30_crit_edge
  %retval.1 = phi ptr [ %data28, %if.end27 ], [ %add.ptr, %if.then26 ], [ null, %fdt_get_property_by_offset_.exit.cleanup30_crit_edge ], [ null, %cleanup30.critedge ], [ null, %if.then10 ], [ null, %if.then.i.cleanup30_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %name, ptr noundef %lenp) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @strlen(ptr noundef %name) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i) #10
  %0 = ptrtoint ptr %poffset.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %poffset.i, align 4, !annotation !16
  %call.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, i32 noundef %call, ptr noundef %lenp, ptr noundef nonnull %poffset.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.fdt_getprop_namelen.exit_crit_edge, label %if.end.i

entry.fdt_getprop_namelen.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_getprop_namelen.exit

if.end.i:                                         ; preds = %entry
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i.i)
  %cmp.i = icmp ult i32 %or10.i.i, 16
  br i1 %cmp.i, label %land.lhs.true3.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

land.lhs.true3.i:                                 ; preds = %if.end.i
  %9 = ptrtoint ptr %poffset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %poffset.i, align 4
  %add.i = add i32 %10, 4
  %rem.i = and i32 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool4.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.if.end9.i_crit_edge, label %land.lhs.true5.i

land.lhs.true3.i.if.end9.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %len.i = getelementptr inbounds %struct.fdt_property, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp7.i = icmp ugt i32 %12, 7
  br i1 %cmp7.i, label %if.then8.i, label %land.lhs.true5.i.if.end9.i_crit_edge

land.lhs.true5.i.if.end9.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then8.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr %struct.fdt_property, ptr %call.i, i32 1, i32 1
  br label %fdt_getprop_namelen.exit

if.end9.i:                                        ; preds = %land.lhs.true5.i.if.end9.i_crit_edge, %land.lhs.true3.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %data10.i = getelementptr inbounds %struct.fdt_property, ptr %call.i, i32 0, i32 3
  br label %fdt_getprop_namelen.exit

fdt_getprop_namelen.exit:                         ; preds = %if.end9.i, %if.then8.i, %entry.fdt_getprop_namelen.exit_crit_edge
  %retval.0.i = phi ptr [ %data10.i, %if.end9.i ], [ %add.ptr.i, %if.then8.i ], [ null, %entry.fdt_getprop_namelen.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i) #10
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fdt_get_alias(ptr noundef %fdt, ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @strlen(ptr noundef %name) #11
  %call1.i.i = tail call i32 @fdt_path_offset_namelen(ptr noundef %fdt, ptr noundef nonnull @.str.2, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i, label %entry.fdt_get_alias_namelen.exit_crit_edge, label %if.end.i

entry.fdt_get_alias_namelen.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_get_alias_namelen.exit

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #10
  %0 = ptrtoint ptr %poffset.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %poffset.i.i, align 4, !annotation !16
  %call.i4.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %call1.i.i, ptr noundef %name, i32 noundef %call, ptr noundef null, ptr noundef nonnull %poffset.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i4.i, null
  br i1 %tobool.not.i.i, label %if.end.i.fdt_getprop_namelen.exit.i_crit_edge, label %if.end.i.i

if.end.i.fdt_getprop_namelen.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_getprop_namelen.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %1 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %version.i.i, align 1
  %conv.i.i.i = zext i8 %2 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %version.i.i, i32 1
  %3 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %4 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %version.i.i, i32 2
  %5 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %6 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %version.i.i, i32 3
  %7 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %8 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i.i.i)
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end.i.i.if.end9.i.i_crit_edge

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %9 = ptrtoint ptr %poffset.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %poffset.i.i, align 4
  %add.i.i = add i32 %10, 4
  %rem.i.i = and i32 %add.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true3.i.i.if.end9.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true3.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i4.i, i32 0, i32 1
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp7.i.i = icmp ugt i32 %12, 7
  br i1 %cmp7.i.i, label %if.then8.i.i, label %land.lhs.true5.i.i.if.end9.i.i_crit_edge

land.lhs.true5.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr %struct.fdt_property, ptr %call.i4.i, i32 1, i32 1
  br label %fdt_getprop_namelen.exit.i

if.end9.i.i:                                      ; preds = %land.lhs.true5.i.i.if.end9.i.i_crit_edge, %land.lhs.true3.i.i.if.end9.i.i_crit_edge, %if.end.i.i.if.end9.i.i_crit_edge
  %data10.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i4.i, i32 0, i32 3
  br label %fdt_getprop_namelen.exit.i

fdt_getprop_namelen.exit.i:                       ; preds = %if.end9.i.i, %if.then8.i.i, %if.end.i.fdt_getprop_namelen.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %data10.i.i, %if.end9.i.i ], [ %add.ptr.i.i, %if.then8.i.i ], [ null, %if.end.i.fdt_getprop_namelen.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #10
  br label %fdt_get_alias_namelen.exit

fdt_get_alias_namelen.exit:                       ; preds = %fdt_getprop_namelen.exit.i, %entry.fdt_get_alias_namelen.exit_crit_edge
  %retval.0.i = phi ptr [ %retval.0.i.i, %fdt_getprop_namelen.exit.i ], [ null, %entry.fdt_get_alias_namelen.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_get_path(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  %depth = alloca i32, align 4
  %namelen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %namelen) #10
  %0 = ptrtoint ptr %namelen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %namelen, align 4, !annotation !16
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup51_crit_edge, label %cleanup.cont

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

cleanup.cont:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %buflen)
  %cmp1 = icmp slt i32 %buflen, 2
  br i1 %cmp1, label %cleanup.cont.cleanup51_crit_edge, label %if.end3

cleanup.cont.cleanup51_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

if.end3:                                          ; preds = %cleanup.cont
  %1 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nodeoffset)
  %cmp5.not92 = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp5.not92, label %if.end3.while.cond.preheader_crit_edge, label %if.end3.cleanup51_crit_edge

if.end3.cleanup51_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

if.end3.while.cond.preheader_crit_edge:           ; preds = %if.end3
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %if.end3.while.cond.preheader_crit_edge
  %offset.095 = phi i32 [ %call40, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3.while.cond.preheader_crit_edge ]
  %p.094 = phi i32 [ %p.3, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3.while.cond.preheader_crit_edge ]
  %pdepth.093 = phi i32 [ %pdepth.2, %for.inc.while.cond.preheader_crit_edge ], [ 0, %if.end3.while.cond.preheader_crit_edge ]
  %2 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pdepth.093, i32 %3)
  %cmp687 = icmp sgt i32 %pdepth.093, %3
  br i1 %cmp687, label %while.cond.preheader.do.body.preheader_crit_edge, label %while.end

while.cond.preheader.do.body.preheader_crit_edge: ; preds = %while.cond.preheader
  br label %do.body.preheader

do.body.preheader:                                ; preds = %do.end.do.body.preheader_crit_edge, %while.cond.preheader.do.body.preheader_crit_edge
  %p.189 = phi i32 [ %dec, %do.end.do.body.preheader_crit_edge ], [ %p.094, %while.cond.preheader.do.body.preheader_crit_edge ]
  %pdepth.188 = phi i32 [ %dec9, %do.end.do.body.preheader_crit_edge ], [ %pdepth.093, %while.cond.preheader.do.body.preheader_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %p.2 = phi i32 [ %dec, %do.body.do.body_crit_edge ], [ %p.189, %do.body.preheader ]
  %dec = add i32 %p.2, -1
  %sub = add i32 %p.2, -2
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %cmp7.not = icmp eq i8 %5, 47
  br i1 %cmp7.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %do.body
  %dec9 = add nsw i32 %pdepth.188, -1
  %cmp6 = icmp sgt i32 %dec9, %3
  br i1 %cmp6, label %do.end.do.body.preheader_crit_edge, label %do.end.if.then12_crit_edge

do.end.if.then12_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

do.end.do.body.preheader_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.preheader

while.end:                                        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_cmp4(i32 %pdepth.093, i32 %3)
  %cmp10.not = icmp slt i32 %pdepth.093, %3
  br i1 %cmp10.not, label %while.end.if.end24_crit_edge, label %while.end.if.then12_crit_edge

while.end.if.then12_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

while.end.if.end24_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then12:                                        ; preds = %while.end.if.then12_crit_edge, %do.end.if.then12_crit_edge
  %p.1.lcssa103 = phi i32 [ %p.094, %while.end.if.then12_crit_edge ], [ %dec, %do.end.if.then12_crit_edge ]
  %pdepth.1.lcssa102 = phi i32 [ %pdepth.093, %while.end.if.then12_crit_edge ], [ %3, %do.end.if.then12_crit_edge ]
  %call13 = call ptr @fdt_get_name(ptr noundef %fdt, i32 noundef %offset.095, ptr noundef nonnull %namelen)
  %tobool.not = icmp eq ptr %call13, null
  %6 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %namelen, align 4
  br i1 %tobool.not, label %if.then12.cleanup51_crit_edge, label %if.end15

if.then12.cleanup51_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

if.end15:                                         ; preds = %if.then12
  %add = add i32 %7, %p.1.lcssa103
  %add16 = add i32 %add, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add16, i32 %buflen)
  %cmp17.not = icmp sgt i32 %add16, %buflen
  br i1 %cmp17.not, label %if.end15.if.end24_crit_edge, label %if.then19

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %buf, i32 %p.1.lcssa103
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %call13, i32 %7)
  %arrayidx21 = getelementptr i8, ptr %buf, i32 %add
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 47, ptr %arrayidx21, align 1
  %inc22 = add i32 %pdepth.1.lcssa102, 1
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end15.if.end24_crit_edge, %while.end.if.end24_crit_edge
  %pdepth.2 = phi i32 [ %inc22, %if.then19 ], [ %pdepth.1.lcssa102, %if.end15.if.end24_crit_edge ], [ %pdepth.093, %while.end.if.end24_crit_edge ]
  %p.3 = phi i32 [ %add16, %if.then19 ], [ %p.1.lcssa103, %if.end15.if.end24_crit_edge ], [ %p.094, %while.end.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.095, i32 %nodeoffset)
  %cmp25 = icmp eq i32 %offset.095, %nodeoffset
  br i1 %cmp25, label %if.then27, label %for.inc

if.then27:                                        ; preds = %if.end24
  %10 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %depth, align 4
  %add28 = add i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %pdepth.2, i32 %add28)
  %cmp29 = icmp slt i32 %pdepth.2, %add28
  br i1 %cmp29, label %if.then27.cleanup51_crit_edge, label %if.end32

if.then27.cleanup51_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

if.end32:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %p.3)
  %cmp33 = icmp sgt i32 %p.3, 1
  %dec36 = sext i1 %cmp33 to i32
  %spec.select = add i32 %p.3, %dec36
  %arrayidx38 = getelementptr i8, ptr %buf, i32 %spec.select
  %12 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx38, align 1
  br label %cleanup51

for.inc:                                          ; preds = %if.end24
  %call40 = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.095, ptr noundef nonnull %depth) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call40)
  %cmp4 = icmp sgt i32 %call40, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call40, i32 %nodeoffset)
  %cmp5.not = icmp sle i32 %call40, %nodeoffset
  %13 = and i1 %cmp4, %cmp5.not
  br i1 %13, label %for.inc.while.cond.preheader_crit_edge, label %for.end

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call40)
  %14 = icmp sgt i32 %call40, -2
  br i1 %14, label %for.end.cleanup51_crit_edge, label %if.else

for.end.cleanup51_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call40)
  %cmp46 = icmp eq i32 %call40, -4
  %.offset.0 = select i1 %cmp46, i32 -11, i32 %call40
  br label %cleanup51

cleanup51:                                        ; preds = %if.else, %for.end.cleanup51_crit_edge, %if.end32, %if.then27.cleanup51_crit_edge, %if.then12.cleanup51_crit_edge, %if.end3.cleanup51_crit_edge, %cleanup.cont.cleanup51_crit_edge, %entry.cleanup51_crit_edge
  %retval.1 = phi i32 [ 0, %if.end32 ], [ %call, %entry.cleanup51_crit_edge ], [ -3, %cleanup.cont.cleanup51_crit_edge ], [ -3, %if.then27.cleanup51_crit_edge ], [ -4, %for.end.cleanup51_crit_edge ], [ %.offset.0, %if.else ], [ -4, %if.end3.cleanup51_crit_edge ], [ %7, %if.then12.cleanup51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_supernode_atdepth_offset(ptr noundef %fdt, i32 noundef %nodeoffset, i32 noundef %supernodedepth, ptr noundef writeonly %nodedepth) local_unnamed_addr #0 align 64 {
entry:
  %depth = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth) #10
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup28_crit_edge, label %cleanup.cont

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

cleanup.cont:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %supernodedepth)
  %cmp1 = icmp slt i32 %supernodedepth, 0
  br i1 %cmp1, label %cleanup.cont.cleanup28_crit_edge, label %if.end3

cleanup.cont.cleanup28_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

if.end3:                                          ; preds = %cleanup.cont
  %0 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nodeoffset)
  %cmp5.not45 = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp5.not45, label %if.end3.for.body_crit_edge, label %if.end3.cleanup28_crit_edge

if.end3.cleanup28_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %supernodeoffset.047 = phi i32 [ %spec.select, %for.inc.for.body_crit_edge ], [ -13, %if.end3.for.body_crit_edge ]
  %offset.046 = phi i32 [ %call16, %for.inc.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %1 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %supernodedepth)
  %cmp6 = icmp eq i32 %2, %supernodedepth
  %spec.select = select i1 %cmp6, i32 %offset.046, i32 %supernodeoffset.047
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.046, i32 %nodeoffset)
  %cmp9 = icmp eq i32 %offset.046, %nodeoffset
  br i1 %cmp9, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  %tobool.not = icmp eq ptr %nodedepth, null
  br i1 %tobool.not, label %if.then10.if.end12_crit_edge, label %if.then11

if.then10.if.end12_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %nodedepth to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %nodedepth, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then10.if.end12_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %supernodedepth)
  %cmp13 = icmp slt i32 %2, %supernodedepth
  %.spec.select = select i1 %cmp13, i32 -1, i32 %spec.select
  br label %cleanup28

for.inc:                                          ; preds = %for.body
  %call16 = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.046, ptr noundef nonnull %depth) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16)
  %cmp4 = icmp sgt i32 %call16, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %nodeoffset)
  %cmp5.not = icmp sle i32 %call16, %nodeoffset
  %4 = and i1 %cmp4, %cmp5.not
  br i1 %4, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call16)
  %5 = icmp sgt i32 %call16, -2
  br i1 %5, label %for.end.cleanup28_crit_edge, label %if.else22

for.end.cleanup28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

if.else22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call16)
  %cmp23 = icmp eq i32 %call16, -4
  %.offset.0 = select i1 %cmp23, i32 -11, i32 %call16
  br label %cleanup28

cleanup28:                                        ; preds = %if.else22, %for.end.cleanup28_crit_edge, %if.end12, %if.end3.cleanup28_crit_edge, %cleanup.cont.cleanup28_crit_edge, %entry.cleanup28_crit_edge
  %retval.1 = phi i32 [ %call, %entry.cleanup28_crit_edge ], [ -1, %cleanup.cont.cleanup28_crit_edge ], [ %.spec.select, %if.end12 ], [ -4, %for.end.cleanup28_crit_edge ], [ %.offset.0, %if.else22 ], [ -4, %if.end3.cleanup28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_node_depth(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 align 64 {
entry:
  %depth.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth.i) #10
  %call.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.fdt_supernode_atdepth_offset.exit.thread_crit_edge, label %cleanup.cont.i

entry.fdt_supernode_atdepth_offset.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_supernode_atdepth_offset.exit.thread

cleanup.cont.i:                                   ; preds = %entry
  %0 = ptrtoint ptr %depth.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nodeoffset)
  %cmp5.not45.i = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp5.not45.i, label %for.body.i.preheader, label %cleanup.cont.i.fdt_supernode_atdepth_offset.exit.thread_crit_edge

cleanup.cont.i.fdt_supernode_atdepth_offset.exit.thread_crit_edge: ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_supernode_atdepth_offset.exit.thread

for.body.i.preheader:                             ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nodeoffset)
  %cmp9.i11 = icmp eq i32 %nodeoffset, 0
  br i1 %cmp9.i11, label %fdt_supernode_atdepth_offset.exit.thread22, label %for.body.i.preheader.for.inc.i_crit_edge

for.body.i.preheader.for.inc.i_crit_edge:         ; preds = %for.body.i.preheader
  br label %for.inc.i

fdt_supernode_atdepth_offset.exit.thread22:       ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #10
  br label %cleanup

for.body.ithread-pre-split:                       ; preds = %for.inc.i
  %1 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pr = load i32, ptr %depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp6.i = icmp eq i32 %.pr, 0
  %spec.select.i = select i1 %cmp6.i, i32 %call16.i, i32 %spec.select.i13
  %cmp9.i = icmp eq i32 %call16.i, %nodeoffset
  br i1 %cmp9.i, label %if.then10.i, label %for.body.ithread-pre-split.for.inc.i_crit_edge

for.body.ithread-pre-split.for.inc.i_crit_edge:   ; preds = %for.body.ithread-pre-split
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.ithread-pre-split
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp13.i = icmp slt i32 %.pr, 0
  br i1 %cmp13.i, label %if.then10.i.fdt_supernode_atdepth_offset.exit.thread_crit_edge, label %fdt_supernode_atdepth_offset.exit

if.then10.i.fdt_supernode_atdepth_offset.exit.thread_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_supernode_atdepth_offset.exit.thread

for.inc.i:                                        ; preds = %for.body.ithread-pre-split.for.inc.i_crit_edge, %for.body.i.preheader.for.inc.i_crit_edge
  %spec.select.i13 = phi i32 [ %spec.select.i, %for.body.ithread-pre-split.for.inc.i_crit_edge ], [ 0, %for.body.i.preheader.for.inc.i_crit_edge ]
  %offset.046.i12 = phi i32 [ %call16.i, %for.body.ithread-pre-split.for.inc.i_crit_edge ], [ 0, %for.body.i.preheader.for.inc.i_crit_edge ]
  %call16.i = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.046.i12, ptr noundef nonnull %depth.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %cmp4.i = icmp sgt i32 %call16.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %nodeoffset)
  %cmp5.not.i = icmp sle i32 %call16.i, %nodeoffset
  %2 = and i1 %cmp4.i, %cmp5.not.i
  br i1 %2, label %for.body.ithread-pre-split, label %for.end.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call16.i)
  %3 = icmp sgt i32 %call16.i, -2
  br i1 %3, label %for.end.i.fdt_supernode_atdepth_offset.exit.thread_crit_edge, label %if.else22.i

for.end.i.fdt_supernode_atdepth_offset.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_supernode_atdepth_offset.exit.thread

if.else22.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call16.i)
  %cmp23.i = icmp eq i32 %call16.i, -4
  %.offset.0.i = select i1 %cmp23.i, i32 -11, i32 %call16.i
  br label %fdt_supernode_atdepth_offset.exit.thread

fdt_supernode_atdepth_offset.exit.thread:         ; preds = %if.else22.i, %for.end.i.fdt_supernode_atdepth_offset.exit.thread_crit_edge, %if.then10.i.fdt_supernode_atdepth_offset.exit.thread_crit_edge, %cleanup.cont.i.fdt_supernode_atdepth_offset.exit.thread_crit_edge, %entry.fdt_supernode_atdepth_offset.exit.thread_crit_edge
  %retval.1.i.ph = phi i32 [ -4, %cleanup.cont.i.fdt_supernode_atdepth_offset.exit.thread_crit_edge ], [ %.offset.0.i, %if.else22.i ], [ -4, %for.end.i.fdt_supernode_atdepth_offset.exit.thread_crit_edge ], [ %call.i, %entry.fdt_supernode_atdepth_offset.exit.thread_crit_edge ], [ -1, %if.then10.i.fdt_supernode_atdepth_offset.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #10
  br label %if.then

fdt_supernode_atdepth_offset.exit:                ; preds = %if.then10.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not, label %fdt_supernode_atdepth_offset.exit.cleanup_crit_edge, label %fdt_supernode_atdepth_offset.exit.if.then_crit_edge

fdt_supernode_atdepth_offset.exit.if.then_crit_edge: ; preds = %fdt_supernode_atdepth_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

fdt_supernode_atdepth_offset.exit.cleanup_crit_edge: ; preds = %fdt_supernode_atdepth_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %fdt_supernode_atdepth_offset.exit.if.then_crit_edge, %fdt_supernode_atdepth_offset.exit.thread
  %retval.1.i8 = phi i32 [ %retval.1.i.ph, %fdt_supernode_atdepth_offset.exit.thread ], [ %spec.select.i, %fdt_supernode_atdepth_offset.exit.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i8)
  %cmp = icmp slt i32 %retval.1.i8, 0
  %cond = select i1 %cmp, i32 %retval.1.i8, i32 -13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %fdt_supernode_atdepth_offset.exit.cleanup_crit_edge, %fdt_supernode_atdepth_offset.exit.thread22
  %retval.0 = phi i32 [ %cond, %if.then ], [ %.pr, %fdt_supernode_atdepth_offset.exit.cleanup_crit_edge ], [ 0, %fdt_supernode_atdepth_offset.exit.thread22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_parent_offset(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 align 64 {
entry:
  %depth.i = alloca i32, align 4
  %depth.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth.i.i) #10
  %call.i.i = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.if.then.i.thread_crit_edge, label %cleanup.cont.i.i

entry.if.then.i.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.thread

cleanup.cont.i.i:                                 ; preds = %entry
  %0 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nodeoffset)
  %cmp5.not45.i.i = icmp sgt i32 %nodeoffset, -1
  br i1 %cmp5.not45.i.i, label %for.body.i.preheader.i, label %cleanup.cont.i.i.if.then.i.thread_crit_edge

cleanup.cont.i.i.if.then.i.thread_crit_edge:      ; preds = %cleanup.cont.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.thread

for.body.i.preheader.i:                           ; preds = %cleanup.cont.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nodeoffset)
  %cmp9.i11.i = icmp eq i32 %nodeoffset, 0
  br i1 %cmp9.i11.i, label %fdt_supernode_atdepth_offset.exit.thread22.i, label %for.body.i.preheader.i.for.inc.i.i_crit_edge

for.body.i.preheader.i.for.inc.i.i_crit_edge:     ; preds = %for.body.i.preheader.i
  br label %for.inc.i.i

fdt_supernode_atdepth_offset.exit.thread22.i:     ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i.i) #10
  br label %if.end

for.body.ithread-pre-split.i:                     ; preds = %for.inc.i.i
  %1 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pr.i = load i32, ptr %depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp6.i.i = icmp eq i32 %.pr.i, 0
  %spec.select.i.i = select i1 %cmp6.i.i, i32 %call16.i.i, i32 %spec.select.i13.i
  %cmp9.i.i = icmp eq i32 %call16.i.i, %nodeoffset
  br i1 %cmp9.i.i, label %if.then10.i.i, label %for.body.ithread-pre-split.i.for.inc.i.i_crit_edge

for.body.ithread-pre-split.i.for.inc.i.i_crit_edge: ; preds = %for.body.ithread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then10.i.i:                                    ; preds = %for.body.ithread-pre-split.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp13.i.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp13.i.i, label %if.then10.i.i.if.then.i.thread_crit_edge, label %fdt_supernode_atdepth_offset.exit.i

if.then10.i.i.if.then.i.thread_crit_edge:         ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.thread

for.inc.i.i:                                      ; preds = %for.body.ithread-pre-split.i.for.inc.i.i_crit_edge, %for.body.i.preheader.i.for.inc.i.i_crit_edge
  %spec.select.i13.i = phi i32 [ %spec.select.i.i, %for.body.ithread-pre-split.i.for.inc.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.for.inc.i.i_crit_edge ]
  %offset.046.i12.i = phi i32 [ %call16.i.i, %for.body.ithread-pre-split.i.for.inc.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.for.inc.i.i_crit_edge ]
  %call16.i.i = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.046.i12.i, ptr noundef nonnull %depth.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i.i)
  %cmp4.i.i = icmp sgt i32 %call16.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i.i, i32 %nodeoffset)
  %cmp5.not.i.i = icmp sle i32 %call16.i.i, %nodeoffset
  %2 = and i1 %cmp4.i.i, %cmp5.not.i.i
  br i1 %2, label %for.body.ithread-pre-split.i, label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call16.i.i)
  %3 = icmp sgt i32 %call16.i.i, -2
  br i1 %3, label %for.end.i.i.if.then.i.thread_crit_edge, label %if.else22.i.i

for.end.i.i.if.then.i.thread_crit_edge:           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.thread

if.else22.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call16.i.i)
  %cmp23.i.i = icmp eq i32 %call16.i.i, -4
  %.offset.0.i.i = select i1 %cmp23.i.i, i32 -11, i32 %call16.i.i
  br label %if.then.i.thread

if.then.i.thread:                                 ; preds = %if.else22.i.i, %for.end.i.i.if.then.i.thread_crit_edge, %if.then10.i.i.if.then.i.thread_crit_edge, %cleanup.cont.i.i.if.then.i.thread_crit_edge, %entry.if.then.i.thread_crit_edge
  %retval.1.i.ph.i = phi i32 [ -4, %cleanup.cont.i.i.if.then.i.thread_crit_edge ], [ %.offset.0.i.i, %if.else22.i.i ], [ -4, %for.end.i.i.if.then.i.thread_crit_edge ], [ %call.i.i, %entry.if.then.i.thread_crit_edge ], [ -1, %if.then10.i.i.if.then.i.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i.i) #10
  br label %select.unfold

fdt_supernode_atdepth_offset.exit.i:              ; preds = %if.then10.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %tobool.not.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %tobool.not.i, label %fdt_supernode_atdepth_offset.exit.i.if.end_crit_edge, label %if.then.i

fdt_supernode_atdepth_offset.exit.i.if.end_crit_edge: ; preds = %fdt_supernode_atdepth_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %fdt_supernode_atdepth_offset.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %cmp.i = icmp slt i32 %spec.select.i.i, 0
  br i1 %cmp.i, label %if.then.i.select.unfold_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.select.unfold_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select.unfold

select.unfold:                                    ; preds = %if.then.i.select.unfold_crit_edge, %if.then.i.thread
  %retval.1.i8.i11 = phi i32 [ %retval.1.i.ph.i, %if.then.i.thread ], [ %spec.select.i.i, %if.then.i.select.unfold_crit_edge ]
  br label %cleanup

if.end:                                           ; preds = %fdt_supernode_atdepth_offset.exit.i.if.end_crit_edge, %fdt_supernode_atdepth_offset.exit.thread22.i
  %retval.0.i = phi i32 [ %.pr.i, %fdt_supernode_atdepth_offset.exit.i.if.end_crit_edge ], [ 0, %fdt_supernode_atdepth_offset.exit.thread22.i ]
  %sub = add nsw i32 %retval.0.i, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %depth.i) #10
  %call.i = call i32 @fdt_ro_probe_(ptr noundef %fdt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i6 = icmp slt i32 %call.i, 0
  br i1 %cmp.i6, label %if.end.fdt_supernode_atdepth_offset.exit_crit_edge, label %cleanup.cont.i

if.end.fdt_supernode_atdepth_offset.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_supernode_atdepth_offset.exit

cleanup.cont.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp1.i = icmp eq i32 %retval.0.i, 0
  br i1 %cmp1.i, label %cleanup.cont.i.fdt_supernode_atdepth_offset.exit_crit_edge, label %for.body.i.preheader

cleanup.cont.i.fdt_supernode_atdepth_offset.exit_crit_edge: ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_supernode_atdepth_offset.exit

for.body.i.preheader:                             ; preds = %cleanup.cont.i
  %4 = ptrtoint ptr %depth.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %depth.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %supernodeoffset.047.i = phi i32 [ %spec.select.i, %for.inc.i.for.body.i_crit_edge ], [ -13, %for.body.i.preheader ]
  %offset.046.i = phi i32 [ %call16.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %5 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %depth.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub)
  %cmp6.i = icmp eq i32 %6, %sub
  %spec.select.i = select i1 %cmp6.i, i32 %offset.046.i, i32 %supernodeoffset.047.i
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.046.i, i32 %nodeoffset)
  %cmp9.i = icmp eq i32 %offset.046.i, %nodeoffset
  br i1 %cmp9.i, label %if.then10.i, label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub)
  %cmp13.i = icmp slt i32 %6, %sub
  %.spec.select.i = select i1 %cmp13.i, i32 -1, i32 %spec.select.i
  br label %fdt_supernode_atdepth_offset.exit

for.inc.i:                                        ; preds = %for.body.i
  %call16.i = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.046.i, ptr noundef nonnull %depth.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %cmp4.i = icmp sgt i32 %call16.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %nodeoffset)
  %cmp5.not.i = icmp sle i32 %call16.i, %nodeoffset
  %7 = and i1 %cmp4.i, %cmp5.not.i
  br i1 %7, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call16.i)
  %8 = icmp sgt i32 %call16.i, -2
  br i1 %8, label %for.end.i.fdt_supernode_atdepth_offset.exit_crit_edge, label %if.else22.i

for.end.i.fdt_supernode_atdepth_offset.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fdt_supernode_atdepth_offset.exit

if.else22.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call16.i)
  %cmp23.i = icmp eq i32 %call16.i, -4
  %.offset.0.i = select i1 %cmp23.i, i32 -11, i32 %call16.i
  br label %fdt_supernode_atdepth_offset.exit

fdt_supernode_atdepth_offset.exit:                ; preds = %if.else22.i, %for.end.i.fdt_supernode_atdepth_offset.exit_crit_edge, %if.then10.i, %cleanup.cont.i.fdt_supernode_atdepth_offset.exit_crit_edge, %if.end.fdt_supernode_atdepth_offset.exit_crit_edge
  %retval.1.i = phi i32 [ %call.i, %if.end.fdt_supernode_atdepth_offset.exit_crit_edge ], [ -1, %cleanup.cont.i.fdt_supernode_atdepth_offset.exit_crit_edge ], [ %.spec.select.i, %if.then10.i ], [ -4, %for.end.i.fdt_supernode_atdepth_offset.exit_crit_edge ], [ %.offset.0.i, %if.else22.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %depth.i) #10
  br label %cleanup

cleanup:                                          ; preds = %fdt_supernode_atdepth_offset.exit, %select.unfold, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i, %fdt_supernode_atdepth_offset.exit ], [ %retval.1.i8.i11, %select.unfold ], [ -13, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_node_offset_by_prop_value(ptr noundef %fdt, i32 noundef %startoffset, ptr nocapture noundef readonly %propname, ptr nocapture noundef readonly %propval, i32 noundef %proplen) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i.i = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !16
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup11_crit_edge, label %cleanup.cont

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

cleanup.cont:                                     ; preds = %entry
  %call1 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %startoffset, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp224 = icmp sgt i32 %call1, -1
  br i1 %cmp224, label %for.body.lr.ph, label %cleanup.cont.cleanup11_crit_edge

cleanup.cont.cleanup11_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

for.body.lr.ph:                                   ; preds = %cleanup.cont
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %arrayidx1.i.i.i = getelementptr i8, ptr %version.i.i, i32 1
  %arrayidx4.i.i.i = getelementptr i8, ptr %version.i.i, i32 2
  %arrayidx8.i.i.i = getelementptr i8, ptr %version.i.i, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %offset.025 = phi i32 [ %call1, %for.body.lr.ph ], [ %call10, %for.inc.for.body_crit_edge ]
  %call.i = call i32 @strlen(ptr noundef %propname) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #10
  %1 = ptrtoint ptr %poffset.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %poffset.i.i, align 4, !annotation !16
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %offset.025, ptr noundef %propname, i32 noundef %call.i, ptr noundef nonnull %len, ptr noundef nonnull %poffset.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop.exit.thread, label %if.end.i.i

fdt_getprop.exit.thread:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #10
  br label %for.inc

if.end.i.i:                                       ; preds = %for.body
  %2 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version.i.i, align 1
  %conv.i.i.i = zext i8 %3 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %4 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %5 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %6 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %7 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %8 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %9 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i.i.i)
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end.i.i.if.end9.i.i_crit_edge

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %10 = ptrtoint ptr %poffset.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %poffset.i.i, align 4
  %add.i.i = add i32 %11, 4
  %rem.i.i = and i32 %add.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true3.i.i.if.end9.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true3.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp7.i.i = icmp ugt i32 %13, 7
  br i1 %cmp7.i.i, label %if.then8.i.i, label %land.lhs.true5.i.i.if.end9.i.i_crit_edge

land.lhs.true5.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr %struct.fdt_property, ptr %call.i.i, i32 1, i32 1
  br label %fdt_getprop.exit

if.end9.i.i:                                      ; preds = %land.lhs.true5.i.i.if.end9.i.i_crit_edge, %land.lhs.true3.i.i.if.end9.i.i_crit_edge, %if.end.i.i.if.end9.i.i_crit_edge
  %data10.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 3
  br label %fdt_getprop.exit

fdt_getprop.exit:                                 ; preds = %if.end9.i.i, %if.then8.i.i
  %retval.0.i.i = phi ptr [ %data10.i.i, %if.end9.i.i ], [ %add.ptr.i.i, %if.then8.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #10
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %fdt_getprop.exit.for.inc_crit_edge, label %land.lhs.true

fdt_getprop.exit.for.inc_crit_edge:               ; preds = %fdt_getprop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %fdt_getprop.exit
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %proplen)
  %cmp4 = icmp eq i32 %15, %proplen
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %bcmp = call i32 @bcmp(ptr nonnull %retval.0.i.i, ptr %propval, i32 %proplen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp7 = icmp eq i32 %bcmp, 0
  br i1 %cmp7, label %land.lhs.true5.cleanup11_crit_edge, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true5.cleanup11_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

for.inc:                                          ; preds = %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %fdt_getprop.exit.for.inc_crit_edge, %fdt_getprop.exit.thread
  %call10 = call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.025, ptr noundef null) #10
  %cmp2 = icmp sgt i32 %call10, -1
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.cleanup11_crit_edge

for.inc.cleanup11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup11:                                        ; preds = %for.inc.cleanup11_crit_edge, %land.lhs.true5.cleanup11_crit_edge, %cleanup.cont.cleanup11_crit_edge, %entry.cleanup11_crit_edge
  %retval.1 = phi i32 [ %call, %entry.cleanup11_crit_edge ], [ %call1, %cleanup.cont.cleanup11_crit_edge ], [ %offset.025, %land.lhs.true5.cleanup11_crit_edge ], [ %call10, %for.inc.cleanup11_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_node_offset_by_phandle(ptr noundef %fdt, i32 noundef %phandle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = zext i32 %phandle to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %phandle, label %if.end [
    i32 0, label %entry.cleanup12_crit_edge
    i32 -1, label %entry.cleanup12_crit_edge25
  ]

entry.cleanup12_crit_edge25:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

if.end:                                           ; preds = %entry
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup12_crit_edge, label %cleanup.cont

if.end.cleanup12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

cleanup.cont:                                     ; preds = %if.end
  %call5 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef -1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp622 = icmp sgt i32 %call5, -1
  br i1 %cmp622, label %cleanup.cont.for.body_crit_edge, label %cleanup.cont.cleanup12_crit_edge

cleanup.cont.cleanup12_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

cleanup.cont.for.body_crit_edge:                  ; preds = %cleanup.cont
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cleanup.cont.for.body_crit_edge
  %offset.023 = phi i32 [ %call11, %for.inc.for.body_crit_edge ], [ %call5, %cleanup.cont.for.body_crit_edge ]
  %call7 = tail call i32 @fdt_get_phandle(ptr noundef %fdt, i32 noundef %offset.023)
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %phandle)
  %cmp8 = icmp eq i32 %call7, %phandle
  br i1 %cmp8, label %for.body.cleanup12_crit_edge, label %for.inc

for.body.cleanup12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

for.inc:                                          ; preds = %for.body
  %call11 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.023, ptr noundef null) #10
  %cmp6 = icmp sgt i32 %call11, -1
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.cleanup12_crit_edge

for.inc.cleanup12_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup12:                                        ; preds = %for.inc.cleanup12_crit_edge, %for.body.cleanup12_crit_edge, %cleanup.cont.cleanup12_crit_edge, %if.end.cleanup12_crit_edge, %entry.cleanup12_crit_edge, %entry.cleanup12_crit_edge25
  %retval.1 = phi i32 [ %call, %if.end.cleanup12_crit_edge ], [ -6, %entry.cleanup12_crit_edge ], [ -6, %entry.cleanup12_crit_edge25 ], [ %call5, %cleanup.cont.cleanup12_crit_edge ], [ %offset.023, %for.body.cleanup12_crit_edge ], [ %call11, %for.inc.cleanup12_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_stringlist_contains(ptr noundef %strlist, i32 noundef %listlen, ptr nocapture noundef readonly %str) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @strlen(ptr noundef %str) #11
  %add = add i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %listlen)
  %cmp.not16 = icmp sgt i32 %call, %listlen
  br i1 %cmp.not16, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %entry.while.body_crit_edge
  %listlen.addr.018 = phi i32 [ %sub, %if.end5.while.body_crit_edge ], [ %listlen, %entry.while.body_crit_edge ]
  %strlist.addr.017 = phi ptr [ %add.ptr, %if.end5.while.body_crit_edge ], [ %strlist, %entry.while.body_crit_edge ]
  %bcmp = tail call i32 @bcmp(ptr %str, ptr %strlist.addr.017, i32 %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp2 = icmp eq i32 %bcmp, 0
  br i1 %cmp2, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %while.body
  %call3 = tail call ptr @memchr(ptr noundef %strlist.addr.017, i32 noundef 0, i32 noundef %listlen.addr.018) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint ptr %call3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %strlist.addr.017 to i32
  %0 = xor i32 %sub.ptr.lhs.cast, -1
  %add6.neg = add i32 %listlen.addr.018, %sub.ptr.rhs.cast
  %sub = add i32 %add6.neg, %0
  %add.ptr = getelementptr i8, ptr %call3, i32 1
  %cmp.not = icmp slt i32 %sub, %call
  br i1 %cmp.not, label %if.end5.cleanup_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_stringlist_count(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %property) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i.i = alloca i32, align 4
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #10
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %length, align 4, !annotation !16
  %call.i = tail call i32 @strlen(ptr noundef %property) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #10
  %1 = ptrtoint ptr %poffset.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %poffset.i.i, align 4, !annotation !16
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %property, i32 noundef %call.i, ptr noundef nonnull %length, ptr noundef nonnull %poffset.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop.exit.thread, label %if.end.i.i

fdt_getprop.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #10
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %2 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version.i.i, align 1
  %conv.i.i.i = zext i8 %3 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %version.i.i, i32 1
  %4 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %5 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %version.i.i, i32 2
  %6 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %7 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %version.i.i, i32 3
  %8 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %9 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i.i.i)
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end.i.i.if.end9.i.i_crit_edge

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %10 = ptrtoint ptr %poffset.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %poffset.i.i, align 4
  %add.i.i = add i32 %11, 4
  %rem.i.i = and i32 %add.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true3.i.i.if.end9.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true3.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp7.i.i = icmp ugt i32 %13, 7
  br i1 %cmp7.i.i, label %if.then8.i.i, label %land.lhs.true5.i.i.if.end9.i.i_crit_edge

land.lhs.true5.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr %struct.fdt_property, ptr %call.i.i, i32 1, i32 1
  br label %fdt_getprop.exit

if.end9.i.i:                                      ; preds = %land.lhs.true5.i.i.if.end9.i.i_crit_edge, %land.lhs.true3.i.i.if.end9.i.i_crit_edge, %if.end.i.i.if.end9.i.i_crit_edge
  %data10.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 3
  br label %fdt_getprop.exit

fdt_getprop.exit:                                 ; preds = %if.end9.i.i, %if.then8.i.i
  %retval.0.i.i = phi ptr [ %data10.i.i, %if.end9.i.i ], [ %add.ptr.i.i, %if.then8.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #10
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %fdt_getprop.exit.if.then_crit_edge, label %if.end

fdt_getprop.exit.if.then_crit_edge:               ; preds = %fdt_getprop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %fdt_getprop.exit.if.then_crit_edge, %fdt_getprop.exit.thread
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  br label %cleanup

if.end:                                           ; preds = %fdt_getprop.exit
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i.i, i32 %17
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %cmp21 = icmp ult ptr %retval.0.i.i, %add.ptr
  br i1 %cmp21, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %if.end.while.body_crit_edge
  %count.023 = phi i32 [ %inc, %if.end5.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %list.022 = phi ptr [ %add.ptr2, %if.end5.while.body_crit_edge ], [ %retval.0.i.i, %if.end.while.body_crit_edge ]
  %sub.ptr.rhs.cast = ptrtoint ptr %list.022 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call1 = call i32 @strnlen(ptr noundef %list.022, i32 noundef %sub.ptr.sub) #11
  %add = add i32 %call1, 1
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %length, align 4
  %add.ptr2 = getelementptr i8, ptr %list.022, i32 %add
  %cmp3 = icmp ugt ptr %add.ptr2, %add.ptr
  br i1 %cmp3, label %while.body.cleanup_crit_edge, label %if.end5

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %while.body
  %inc = add i32 %count.023, 1
  %cmp = icmp ult ptr %add.ptr2, %add.ptr
  br i1 %cmp, label %if.end5.while.body_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ -15, %while.body.cleanup_crit_edge ], [ %inc, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_stringlist_search(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %property, ptr nocapture noundef readonly %string) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i.i = alloca i32, align 4
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #10
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %length, align 4, !annotation !16
  %call.i = tail call i32 @strlen(ptr noundef %property) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #10
  %1 = ptrtoint ptr %poffset.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %poffset.i.i, align 4, !annotation !16
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %property, i32 noundef %call.i, ptr noundef nonnull %length, ptr noundef nonnull %poffset.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop.exit.thread, label %if.end.i.i

fdt_getprop.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #10
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %2 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version.i.i, align 1
  %conv.i.i.i = zext i8 %3 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %version.i.i, i32 1
  %4 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %5 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %version.i.i, i32 2
  %6 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %7 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %version.i.i, i32 3
  %8 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %9 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i.i.i)
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end.i.i.if.end9.i.i_crit_edge

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %10 = ptrtoint ptr %poffset.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %poffset.i.i, align 4
  %add.i.i = add i32 %11, 4
  %rem.i.i = and i32 %add.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true3.i.i.if.end9.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true3.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp7.i.i = icmp ugt i32 %13, 7
  br i1 %cmp7.i.i, label %if.then8.i.i, label %land.lhs.true5.i.i.if.end9.i.i_crit_edge

land.lhs.true5.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr %struct.fdt_property, ptr %call.i.i, i32 1, i32 1
  br label %fdt_getprop.exit

if.end9.i.i:                                      ; preds = %land.lhs.true5.i.i.if.end9.i.i_crit_edge, %land.lhs.true3.i.i.if.end9.i.i_crit_edge, %if.end.i.i.if.end9.i.i_crit_edge
  %data10.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 3
  br label %fdt_getprop.exit

fdt_getprop.exit:                                 ; preds = %if.end9.i.i, %if.then8.i.i
  %retval.0.i.i = phi ptr [ %data10.i.i, %if.end9.i.i ], [ %add.ptr.i.i, %if.then8.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #10
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %fdt_getprop.exit.if.then_crit_edge, label %if.end

fdt_getprop.exit.if.then_crit_edge:               ; preds = %fdt_getprop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %fdt_getprop.exit.if.then_crit_edge, %fdt_getprop.exit.thread
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  br label %cleanup

if.end:                                           ; preds = %fdt_getprop.exit
  %call1 = call i32 @strlen(ptr noundef %string) #11
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i.i, i32 %17
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %cmp31 = icmp ult ptr %retval.0.i.i, %add.ptr
  br i1 %cmp31, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %if.end.while.body_crit_edge
  %list.034 = phi ptr [ %add.ptr4, %if.end12.while.body_crit_edge ], [ %retval.0.i.i, %if.end.while.body_crit_edge ]
  %idx.032 = phi i32 [ %inc, %if.end12.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %sub.ptr.rhs.cast = ptrtoint ptr %list.034 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call2 = call i32 @strnlen(ptr noundef %list.034, i32 noundef %sub.ptr.sub) #11
  %add3 = add i32 %call2, 1
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add3, ptr %length, align 4
  %add.ptr4 = getelementptr i8, ptr %list.034, i32 %add3
  %cmp5 = icmp ugt ptr %add.ptr4, %add.ptr
  br i1 %cmp5, label %while.body.cleanup_crit_edge, label %if.end7

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %call1)
  %cmp8 = icmp eq i32 %call2, %call1
  br i1 %cmp8, label %land.lhs.true, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end7
  %bcmp = call i32 @bcmp(ptr %list.034, ptr %string, i32 %add3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp10 = icmp eq i32 %bcmp, 0
  br i1 %cmp10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  %inc = add i32 %idx.032, 1
  %cmp = icmp ult ptr %add.ptr4, %add.ptr
  br i1 %cmp, label %if.end12.while.body_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ -1, %if.end.cleanup_crit_edge ], [ -15, %while.body.cleanup_crit_edge ], [ %idx.032, %land.lhs.true.cleanup_crit_edge ], [ -1, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fdt_stringlist_get(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %property, i32 noundef %idx, ptr noundef writeonly %lenp) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i.i = alloca i32, align 4
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #10
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %length, align 4, !annotation !16
  %call.i = tail call i32 @strlen(ptr noundef %property) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #10
  %1 = ptrtoint ptr %poffset.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %poffset.i.i, align 4, !annotation !16
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %property, i32 noundef %call.i, ptr noundef nonnull %length, ptr noundef nonnull %poffset.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop.exit.thread, label %if.end.i.i

fdt_getprop.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #10
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %2 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version.i.i, align 1
  %conv.i.i.i = zext i8 %3 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %version.i.i, i32 1
  %4 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %5 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %version.i.i, i32 2
  %6 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %7 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %version.i.i, i32 3
  %8 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %9 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i.i.i)
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end.i.i.if.end9.i.i_crit_edge

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %10 = ptrtoint ptr %poffset.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %poffset.i.i, align 4
  %add.i.i = add i32 %11, 4
  %rem.i.i = and i32 %add.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true3.i.i.if.end9.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true3.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp7.i.i = icmp ugt i32 %13, 7
  br i1 %cmp7.i.i, label %if.then8.i.i, label %land.lhs.true5.i.i.if.end9.i.i_crit_edge

land.lhs.true5.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr %struct.fdt_property, ptr %call.i.i, i32 1, i32 1
  br label %fdt_getprop.exit

if.end9.i.i:                                      ; preds = %land.lhs.true5.i.i.if.end9.i.i_crit_edge, %land.lhs.true3.i.i.if.end9.i.i_crit_edge, %if.end.i.i.if.end9.i.i_crit_edge
  %data10.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 3
  br label %fdt_getprop.exit

fdt_getprop.exit:                                 ; preds = %if.end9.i.i, %if.then8.i.i
  %retval.0.i.i = phi ptr [ %data10.i.i, %if.end9.i.i ], [ %add.ptr.i.i, %if.then8.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #10
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %fdt_getprop.exit.if.then_crit_edge, label %if.end3

fdt_getprop.exit.if.then_crit_edge:               ; preds = %fdt_getprop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %fdt_getprop.exit.if.then_crit_edge, %fdt_getprop.exit.thread
  %tobool1.not = icmp eq ptr %lenp, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  br label %cleanup.sink.split

if.end3:                                          ; preds = %fdt_getprop.exit
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i.i, i32 %17
  %cmp46 = icmp ult ptr %retval.0.i.i, %add.ptr
  br i1 %cmp46, label %while.body.lr.ph, label %if.end3.while.end_crit_edge

if.end3.while.end_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end3
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  br label %while.body

while.cond:                                       ; preds = %if.end11
  %dec = add i32 %idx.addr.047, -1
  %cmp = icmp ult ptr %add.ptr5, %add.ptr
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %list.048 = phi ptr [ %retval.0.i.i, %while.body.lr.ph ], [ %add.ptr5, %while.cond.while.body_crit_edge ]
  %idx.addr.047 = phi i32 [ %idx, %while.body.lr.ph ], [ %dec, %while.cond.while.body_crit_edge ]
  %sub.ptr.rhs.cast = ptrtoint ptr %list.048 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call4 = call i32 @strnlen(ptr noundef %list.048, i32 noundef %sub.ptr.sub) #11
  %add = add i32 %call4, 1
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %length, align 4
  %add.ptr5 = getelementptr i8, ptr %list.048, i32 %add
  %cmp6 = icmp ugt ptr %add.ptr5, %add.ptr
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %while.body
  %tobool8.not = icmp eq ptr %lenp, null
  br i1 %tobool8.not, label %if.then7.cleanup_crit_edge, label %if.then7.cleanup.sink.split_crit_edge

if.then7.cleanup.sink.split_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.addr.047)
  %cmp12 = icmp eq i32 %idx.addr.047, 0
  br i1 %cmp12, label %if.then13, label %while.cond

if.then13:                                        ; preds = %if.end11
  %tobool14.not = icmp eq ptr %lenp, null
  br i1 %tobool14.not, label %if.then13.cleanup_crit_edge, label %if.then13.cleanup.sink.split_crit_edge

if.then13.cleanup.sink.split_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end3.while.end_crit_edge
  %tobool19.not = icmp eq ptr %lenp, null
  br i1 %tobool19.not, label %while.end.cleanup_crit_edge, label %while.end.cleanup.sink.split_crit_edge

while.end.cleanup.sink.split_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %while.end.cleanup.sink.split_crit_edge, %if.then13.cleanup.sink.split_crit_edge, %if.then7.cleanup.sink.split_crit_edge, %if.then2
  %.sink = phi i32 [ %15, %if.then2 ], [ -15, %if.then7.cleanup.sink.split_crit_edge ], [ %call4, %if.then13.cleanup.sink.split_crit_edge ], [ -1, %while.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi ptr [ null, %if.then2 ], [ null, %if.then7.cleanup.sink.split_crit_edge ], [ %list.048, %if.then13.cleanup.sink.split_crit_edge ], [ null, %while.end.cleanup.sink.split_crit_edge ]
  %19 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %lenp, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ null, %if.then7.cleanup_crit_edge ], [ %list.048, %if.then13.cleanup_crit_edge ], [ null, %while.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_node_check_compatible(ptr noundef %fdt, i32 noundef %nodeoffset, ptr nocapture noundef readonly %compatible) local_unnamed_addr #0 align 64 {
entry:
  %poffset.i.i = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poffset.i.i) #10
  %1 = ptrtoint ptr %poffset.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %poffset.i.i, align 4, !annotation !16
  %call.i.i = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull @.str.3, i32 noundef 10, ptr noundef nonnull %len, ptr noundef nonnull %poffset.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %fdt_getprop.exit.thread, label %if.end.i.i

fdt_getprop.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #10
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %version.i.i = getelementptr inbounds %struct.fdt_header, ptr %fdt, i32 0, i32 5
  %2 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version.i.i, align 1
  %conv.i.i.i = zext i8 %3 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr i8, ptr %version.i.i, i32 1
  %4 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %5 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr i8, ptr %version.i.i, i32 2
  %6 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %7 to i32
  %shl6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 8
  %or7.i.i.i = or i32 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %version.i.i, i32 3
  %8 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %9 to i32
  %or10.i.i.i = or i32 %or7.i.i.i, %conv9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or10.i.i.i)
  %cmp.i.i = icmp ult i32 %or10.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true3.i.i, label %if.end.i.i.if.end9.i.i_crit_edge

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

land.lhs.true3.i.i:                               ; preds = %if.end.i.i
  %10 = ptrtoint ptr %poffset.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %poffset.i.i, align 4
  %add.i.i = add i32 %11, 4
  %rem.i.i = and i32 %add.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true3.i.i.if.end9.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true3.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %len.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp7.i.i = icmp ugt i32 %13, 7
  br i1 %cmp7.i.i, label %if.then8.i.i, label %land.lhs.true5.i.i.if.end9.i.i_crit_edge

land.lhs.true5.i.i.if.end9.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr %struct.fdt_property, ptr %call.i.i, i32 1, i32 1
  br label %fdt_getprop.exit

if.end9.i.i:                                      ; preds = %land.lhs.true5.i.i.if.end9.i.i_crit_edge, %land.lhs.true3.i.i.if.end9.i.i_crit_edge, %if.end.i.i.if.end9.i.i_crit_edge
  %data10.i.i = getelementptr inbounds %struct.fdt_property, ptr %call.i.i, i32 0, i32 3
  br label %fdt_getprop.exit

fdt_getprop.exit:                                 ; preds = %if.end9.i.i, %if.then8.i.i
  %retval.0.i.i = phi ptr [ %data10.i.i, %if.end9.i.i ], [ %add.ptr.i.i, %if.then8.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poffset.i.i) #10
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %fdt_getprop.exit.if.then_crit_edge, label %if.end

fdt_getprop.exit.if.then_crit_edge:               ; preds = %fdt_getprop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %fdt_getprop.exit.if.then_crit_edge, %fdt_getprop.exit.thread
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  br label %cleanup

if.end:                                           ; preds = %fdt_getprop.exit
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %call.i5 = call i32 @strlen(ptr noundef %compatible) #12
  %add.i = add i32 %call.i5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i5, i32 %17)
  %cmp.not16.i = icmp sgt i32 %call.i5, %17
  br i1 %cmp.not16.i, label %if.end.cleanup_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %listlen.addr.018.i = phi i32 [ %sub.i, %if.end5.i.while.body.i_crit_edge ], [ %17, %if.end.while.body.i_crit_edge ]
  %strlist.addr.017.i = phi ptr [ %add.ptr.i, %if.end5.i.while.body.i_crit_edge ], [ %retval.0.i.i, %if.end.while.body.i_crit_edge ]
  %bcmp.i = call i32 @bcmp(ptr %compatible, ptr %strlist.addr.017.i, i32 %add.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp2.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp2.i, label %while.body.i.cleanup_crit_edge, label %if.end.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  %call3.i = call ptr @memchr(ptr noundef %strlist.addr.017.i, i32 noundef 0, i32 noundef %listlen.addr.018.i) #12
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %strlist.addr.017.i to i32
  %18 = xor i32 %sub.ptr.lhs.cast.i, -1
  %add6.neg.i = add i32 %listlen.addr.018.i, %sub.ptr.rhs.cast.i
  %sub.i = add i32 %add6.neg.i, %18
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 1
  %cmp.not.i = icmp slt i32 %sub.i, %call.i5
  br i1 %cmp.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end5.i.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 0, %while.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_node_offset_by_compatible(ptr noundef %fdt, i32 noundef %startoffset, ptr nocapture noundef readonly %compatible) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup12_crit_edge, label %cleanup.cont

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

cleanup.cont:                                     ; preds = %entry
  %call1 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %startoffset, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp224 = icmp sgt i32 %call1, -1
  br i1 %cmp224, label %cleanup.cont.for.body_crit_edge, label %cleanup.cont.cleanup12_crit_edge

cleanup.cont.cleanup12_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

cleanup.cont.for.body_crit_edge:                  ; preds = %cleanup.cont
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cleanup.cont.for.body_crit_edge
  %offset.025 = phi i32 [ %call11, %for.inc.for.body_crit_edge ], [ %call1, %cleanup.cont.for.body_crit_edge ]
  %call3 = tail call i32 @fdt_node_check_compatible(ptr noundef %fdt, i32 noundef %offset.025, ptr noundef %compatible)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call3)
  %0 = icmp sgt i32 %call3, -2
  br i1 %0, label %if.else, label %for.body.cleanup12_crit_edge

for.body.cleanup12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp7 = icmp eq i32 %call3, 0
  br i1 %cmp7, label %if.else.cleanup12_crit_edge, label %for.inc

if.else.cleanup12_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

for.inc:                                          ; preds = %if.else
  %call11 = tail call i32 @fdt_next_node(ptr noundef %fdt, i32 noundef %offset.025, ptr noundef null) #10
  %cmp2 = icmp sgt i32 %call11, -1
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.cleanup12_crit_edge

for.inc.cleanup12_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup12:                                        ; preds = %for.inc.cleanup12_crit_edge, %if.else.cleanup12_crit_edge, %for.body.cleanup12_crit_edge, %cleanup.cont.cleanup12_crit_edge, %entry.cleanup12_crit_edge
  %retval.1 = phi i32 [ %call, %entry.cleanup12_crit_edge ], [ %call1, %cleanup.cont.cleanup12_crit_edge ], [ %call3, %for.body.cleanup12_crit_edge ], [ %offset.025, %if.else.cleanup12_crit_edge ], [ %call11, %for.inc.cleanup12_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind uwtable(sync) }
attributes #9 = { nomerge }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/../scripts/dtc/libfdt/fdt_ro.c", i32 515, i32 37}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/../scripts/dtc/libfdt/fdt_ro.c", i32 517, i32 38}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/../scripts/dtc/libfdt/fdt_ro.c", i32 530, i32 37}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/../scripts/dtc/libfdt/fdt_ro.c", i32 829, i32 38}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"auto-init"}
