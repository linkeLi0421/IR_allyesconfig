; ModuleID = '/llk/IR_all_yes/lib/fdt_addresses.c_pt.bc'
source_filename = "../lib/fdt_addresses.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#address-cells\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#size-cells\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_ = private constant [23 x i8] c"../lib/fdt_addresses.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 38, i32 35 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [45 x i8] c"../lib/../scripts/dtc/libfdt/fdt_addresses.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 50, i32 35 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_address_cells(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #5
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len.i, align 4, !annotation !12
  %call.i = call ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull @.str, ptr noundef nonnull %len.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i, align 4
  br i1 %tobool.not.i, label %entry.fdt_cells.exit_crit_edge, label %if.end.i

entry.fdt_cells.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %fdt_cells.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 4
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.fdt_cells.exit.thread_crit_edge

if.end.i.fdt_cells.exit.thread_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %fdt_cells.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp3.i = icmp ugt i32 %4, 4
  br i1 %cmp3.i, label %if.end2.i.fdt_cells.exit.thread_crit_edge, label %if.end2.i.fdt_cells.exit_crit_edge

if.end2.i.fdt_cells.exit_crit_edge:               ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %fdt_cells.exit

if.end2.i.fdt_cells.exit.thread_crit_edge:        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %fdt_cells.exit.thread

fdt_cells.exit.thread:                            ; preds = %if.end2.i.fdt_cells.exit.thread_crit_edge, %if.end.i.fdt_cells.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #5
  br label %if.end3

fdt_cells.exit:                                   ; preds = %if.end2.i.fdt_cells.exit_crit_edge, %entry.fdt_cells.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.end2.i.fdt_cells.exit_crit_edge ], [ %2, %entry.fdt_cells.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #5
  %5 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %fdt_cells.exit.if.end3_crit_edge [
    i32 0, label %fdt_cells.exit.cleanup_crit_edge
    i32 -1, label %if.then2
  ]

fdt_cells.exit.cleanup_crit_edge:                 ; preds = %fdt_cells.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

fdt_cells.exit.if.end3_crit_edge:                 ; preds = %fdt_cells.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end3

if.then2:                                         ; preds = %fdt_cells.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end3:                                          ; preds = %fdt_cells.exit.if.end3_crit_edge, %fdt_cells.exit.thread
  %retval.0.i7 = phi i32 [ -14, %fdt_cells.exit.thread ], [ %retval.0.i, %fdt_cells.exit.if.end3_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %fdt_cells.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then2 ], [ %retval.0.i7, %if.end3 ], [ -14, %fdt_cells.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_size_cells(ptr noundef %fdt, i32 noundef %nodeoffset) local_unnamed_addr #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #5
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len.i, align 4, !annotation !12
  %call.i = call ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef nonnull @.str.1, ptr noundef nonnull %len.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i, align 4
  br i1 %tobool.not.i, label %fdt_cells.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 4
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.fdt_cells.exit.thread_crit_edge

if.end.i.fdt_cells.exit.thread_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %fdt_cells.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp3.i = icmp ugt i32 %4, 4
  %spec.select = select i1 %cmp3.i, i32 -14, i32 %4
  br label %fdt_cells.exit.thread

fdt_cells.exit.thread:                            ; preds = %if.end2.i, %if.end.i.fdt_cells.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %if.end.i.fdt_cells.exit.thread_crit_edge ], [ %spec.select, %if.end2.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #5
  br label %5

fdt_cells.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  %spec.select4 = select i1 %cmp, i32 1, i32 %2
  br label %5

5:                                                ; preds = %fdt_cells.exit, %fdt_cells.exit.thread
  %6 = phi i32 [ %retval.0.i.ph, %fdt_cells.exit.thread ], [ %spec.select4, %fdt_cells.exit ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fdt_appendprop_addrrange(ptr noundef %fdt, i32 noundef %parent, i32 noundef %nodeoffset, ptr noundef %name, i64 noundef %addr, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %len.i.i62 = alloca i32, align 4
  %len.i.i = alloca i32, align 4
  %data = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #5
  %0 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 7
  %7 = call ptr @memset(ptr %data, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #5
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %len.i.i, align 4, !annotation !12
  %call.i.i = call ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %parent, ptr noundef nonnull @.str, ptr noundef nonnull %len.i.i) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  br i1 %tobool.not.i.i, label %entry.fdt_cells.exit.i_crit_edge, label %if.end.i.i

entry.fdt_cells.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %fdt_cells.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp.not.i.i = icmp eq i32 %10, 4
  br i1 %cmp.not.i.i, label %if.end2.i.i, label %if.end.i.i.fdt_address_cells.exit.thread117_crit_edge

if.end.i.i.fdt_address_cells.exit.thread117_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %fdt_address_cells.exit.thread117

if.end2.i.i:                                      ; preds = %if.end.i.i
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp3.i.i = icmp ugt i32 %12, 4
  br i1 %cmp3.i.i, label %if.end2.i.i.fdt_address_cells.exit.thread117_crit_edge, label %if.end2.i.i.fdt_cells.exit.i_crit_edge

if.end2.i.i.fdt_cells.exit.i_crit_edge:           ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %fdt_cells.exit.i

if.end2.i.i.fdt_address_cells.exit.thread117_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %fdt_address_cells.exit.thread117

fdt_address_cells.exit.thread117:                 ; preds = %if.end2.i.i.fdt_address_cells.exit.thread117_crit_edge, %if.end.i.i.fdt_address_cells.exit.thread117_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #5
  br label %cleanup

fdt_cells.exit.i:                                 ; preds = %if.end2.i.i.fdt_cells.exit.i_crit_edge, %entry.fdt_cells.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %12, %if.end2.i.i.fdt_cells.exit.i_crit_edge ], [ %10, %entry.fdt_cells.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #5
  %13 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %retval.0.i.i, label %fdt_address_cells.exit [
    i32 0, label %fdt_cells.exit.i.cleanup_crit_edge
    i32 -1, label %fdt_cells.exit.i.if.end_crit_edge
  ]

fdt_cells.exit.i.if.end_crit_edge:                ; preds = %fdt_cells.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

fdt_cells.exit.i.cleanup_crit_edge:               ; preds = %fdt_cells.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

fdt_address_cells.exit:                           ; preds = %fdt_cells.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp, label %fdt_address_cells.exit.cleanup_crit_edge, label %fdt_address_cells.exit.if.end_crit_edge

fdt_address_cells.exit.if.end_crit_edge:          ; preds = %fdt_address_cells.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

fdt_address_cells.exit.cleanup_crit_edge:         ; preds = %fdt_address_cells.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %fdt_address_cells.exit.if.end_crit_edge, %fdt_cells.exit.i.if.end_crit_edge
  %retval.0.i116 = phi i32 [ %retval.0.i.i, %fdt_address_cells.exit.if.end_crit_edge ], [ 2, %fdt_cells.exit.i.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i62) #5
  %14 = ptrtoint ptr %len.i.i62 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %len.i.i62, align 4, !annotation !12
  %call.i.i63 = call ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %parent, ptr noundef nonnull @.str.1, ptr noundef nonnull %len.i.i62) #5
  %tobool.not.i.i64 = icmp eq ptr %call.i.i63, null
  %15 = ptrtoint ptr %len.i.i62 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i62, align 4
  br i1 %tobool.not.i.i64, label %fdt_cells.exit.i70, label %if.end.i.i66

if.end.i.i66:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp.not.i.i65 = icmp eq i32 %16, 4
  br i1 %cmp.not.i.i65, label %if.end2.i.i68, label %if.end.i.i66.fdt_cells.exit.thread.i69_crit_edge

if.end.i.i66.fdt_cells.exit.thread.i69_crit_edge: ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #4
  br label %fdt_cells.exit.thread.i69

if.end2.i.i68:                                    ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #4
  %17 = ptrtoint ptr %call.i.i63 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp3.i.i67 = icmp ugt i32 %18, 4
  %spec.select.i = select i1 %cmp3.i.i67, i32 -14, i32 %18
  br label %fdt_cells.exit.thread.i69

fdt_cells.exit.thread.i69:                        ; preds = %if.end2.i.i68, %if.end.i.i66.fdt_cells.exit.thread.i69_crit_edge
  %retval.0.i.ph.i = phi i32 [ -14, %if.end.i.i66.fdt_cells.exit.thread.i69_crit_edge ], [ %spec.select.i, %if.end2.i.i68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i62) #5
  br label %fdt_size_cells.exit

fdt_cells.exit.i70:                               ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i62) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i = icmp eq i32 %16, -1
  br i1 %cmp.i, label %fdt_cells.exit.i70.if.end4_crit_edge, label %fdt_cells.exit.i70.fdt_size_cells.exit_crit_edge

fdt_cells.exit.i70.fdt_size_cells.exit_crit_edge: ; preds = %fdt_cells.exit.i70
  call void @__sanitizer_cov_trace_pc() #4
  br label %fdt_size_cells.exit

fdt_cells.exit.i70.if.end4_crit_edge:             ; preds = %fdt_cells.exit.i70
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4

fdt_size_cells.exit:                              ; preds = %fdt_cells.exit.i70.fdt_size_cells.exit_crit_edge, %fdt_cells.exit.thread.i69
  %19 = phi i32 [ %retval.0.i.ph.i, %fdt_cells.exit.thread.i69 ], [ %16, %fdt_cells.exit.i70.fdt_size_cells.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2 = icmp slt i32 %19, 0
  br i1 %cmp2, label %fdt_size_cells.exit.cleanup_crit_edge, label %fdt_size_cells.exit.if.end4_crit_edge

fdt_size_cells.exit.if.end4_crit_edge:            ; preds = %fdt_size_cells.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4

fdt_size_cells.exit.cleanup_crit_edge:            ; preds = %fdt_size_cells.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end4:                                          ; preds = %fdt_size_cells.exit.if.end4_crit_edge, %fdt_cells.exit.i70.if.end4_crit_edge
  %20 = phi i32 [ %19, %fdt_size_cells.exit.if.end4_crit_edge ], [ 1, %fdt_cells.exit.i70.if.end4_crit_edge ]
  %21 = zext i32 %retval.0.i116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %retval.0.i116, label %if.end4.cleanup_crit_edge [
    i32 1, label %if.then6
    i32 2, label %if.then13
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %addr)
  %cmp7 = icmp ugt i64 %addr, 4294967295
  %sub = sub i64 0, %addr
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %size)
  %cmp8 = icmp ult i64 %sub, %size
  %or.cond = or i1 %cmp7, %cmp8
  br i1 %or.cond, label %if.then6.cleanup_crit_edge, label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #4
  %shr.i124 = lshr i64 %addr, 24
  %conv.i = trunc i64 %shr.i124 to i8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %data, align 1
  br label %if.end16

if.then13:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  %shr.i71 = lshr i64 %addr, 56
  %conv.i72 = trunc i64 %shr.i71 to i8
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i72, ptr %data, align 1
  %shr1.i73 = lshr i64 %addr, 48
  %conv2.i74 = trunc i64 %shr1.i73 to i8
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv2.i74, ptr %0, align 1
  %shr4.i76 = lshr i64 %addr, 40
  %conv6.i77 = trunc i64 %shr4.i76 to i8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv6.i77, ptr %1, align 1
  %shr8.i = lshr i64 %addr, 32
  %conv10.i = trunc i64 %shr8.i to i8
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv10.i, ptr %2, align 1
  %shr12.i = lshr i64 %addr, 24
  %conv14.i = trunc i64 %shr12.i to i8
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv14.i, ptr %3, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10
  %.sink128 = phi ptr [ %4, %if.then13 ], [ %0, %if.end10 ]
  %.sink127 = phi ptr [ %5, %if.then13 ], [ %1, %if.end10 ]
  %.sink = phi ptr [ %6, %if.then13 ], [ %2, %if.end10 ]
  %shr16.i = lshr i64 %addr, 16
  %conv18.i = trunc i64 %shr16.i to i8
  %28 = ptrtoint ptr %.sink128 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv18.i, ptr %.sink128, align 1
  %shr20.i = lshr i64 %addr, 8
  %conv22.i = trunc i64 %shr20.i to i8
  %29 = ptrtoint ptr %.sink127 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv22.i, ptr %.sink127, align 1
  %conv25.i = trunc i64 %addr to i8
  %30 = ptrtoint ptr %.sink to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv25.i, ptr %.sink, align 1
  %mul = shl nuw nsw i32 %retval.0.i116, 2
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %31 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %20, label %if.end16.cleanup_crit_edge [
    i32 1, label %if.then19
    i32 2, label %if.then28
  ]

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %size)
  %cmp20 = icmp ugt i64 %size, 4294967295
  br i1 %cmp20, label %if.then19.cleanup_crit_edge, label %if.end23

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end23:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #4
  %shr.i79121 = lshr i64 %size, 24
  %conv.i80 = trunc i64 %shr.i79121 to i8
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i80, ptr %add.ptr, align 1
  br label %if.end31

if.then28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  %shr.i89 = lshr i64 %size, 56
  %conv.i90 = trunc i64 %shr.i89 to i8
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i90, ptr %add.ptr, align 1
  %shr1.i91 = lshr i64 %size, 48
  %conv2.i92 = trunc i64 %shr1.i91 to i8
  %arrayidx3.i93 = getelementptr i8, ptr %add.ptr, i32 1
  %34 = ptrtoint ptr %arrayidx3.i93 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv2.i92, ptr %arrayidx3.i93, align 1
  %shr4.i94 = lshr i64 %size, 40
  %conv6.i95 = trunc i64 %shr4.i94 to i8
  %arrayidx7.i96 = getelementptr i8, ptr %add.ptr, i32 2
  %35 = ptrtoint ptr %arrayidx7.i96 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv6.i95, ptr %arrayidx7.i96, align 1
  %shr8.i97 = lshr i64 %size, 32
  %conv10.i98 = trunc i64 %shr8.i97 to i8
  %arrayidx11.i99 = getelementptr i8, ptr %add.ptr, i32 3
  %36 = ptrtoint ptr %arrayidx11.i99 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv10.i98, ptr %arrayidx11.i99, align 1
  %shr12.i100 = lshr i64 %size, 24
  %conv14.i101 = trunc i64 %shr12.i100 to i8
  %arrayidx15.i102 = getelementptr i8, ptr %add.ptr, i32 4
  %37 = ptrtoint ptr %arrayidx15.i102 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv14.i101, ptr %arrayidx15.i102, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end23
  %.sink131 = phi i32 [ 5, %if.then28 ], [ 1, %if.end23 ]
  %.sink130 = phi i32 [ 6, %if.then28 ], [ 2, %if.end23 ]
  %.sink129 = phi i32 [ 7, %if.then28 ], [ 3, %if.end23 ]
  %shr16.i103 = lshr i64 %size, 16
  %conv18.i104 = trunc i64 %shr16.i103 to i8
  %arrayidx19.i105 = getelementptr i8, ptr %add.ptr, i32 %.sink131
  %38 = ptrtoint ptr %arrayidx19.i105 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv18.i104, ptr %arrayidx19.i105, align 1
  %shr20.i106 = lshr i64 %size, 8
  %conv22.i107 = trunc i64 %shr20.i106 to i8
  %arrayidx23.i108 = getelementptr i8, ptr %add.ptr, i32 %.sink130
  %39 = ptrtoint ptr %arrayidx23.i108 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv22.i107, ptr %arrayidx23.i108, align 1
  %conv25.i109 = trunc i64 %size to i8
  %arrayidx26.i110 = getelementptr i8, ptr %add.ptr, i32 %.sink129
  %40 = ptrtoint ptr %arrayidx26.i110 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv25.i109, ptr %arrayidx26.i110, align 1
  %add = add nuw nsw i32 %20, %retval.0.i116
  %mul33 = shl nuw nsw i32 %add, 2
  %call34 = call i32 @fdt_appendprop(ptr noundef %fdt, i32 noundef %nodeoffset, ptr noundef %name, ptr noundef nonnull %data, i32 noundef %mul33) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then19.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %fdt_size_cells.exit.cleanup_crit_edge, %fdt_address_cells.exit.cleanup_crit_edge, %fdt_cells.exit.i.cleanup_crit_edge, %fdt_address_cells.exit.thread117
  %retval.0 = phi i32 [ %call34, %if.end31 ], [ %retval.0.i.i, %fdt_address_cells.exit.cleanup_crit_edge ], [ %19, %fdt_size_cells.exit.cleanup_crit_edge ], [ -15, %if.then6.cleanup_crit_edge ], [ -14, %if.end4.cleanup_crit_edge ], [ -15, %if.then19.cleanup_crit_edge ], [ -14, %if.end16.cleanup_crit_edge ], [ -14, %fdt_address_cells.exit.thread117 ], [ -14, %fdt_cells.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_appendprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/../scripts/dtc/libfdt/fdt_addresses.c", i32 38, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/../scripts/dtc/libfdt/fdt_addresses.c", i32 50, i32 35}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"auto-init"}
