; ModuleID = '/llk/IR_all_yes/lib/win_minmax.c_pt.bc'
source_filename = "../lib/win_minmax.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+minmax_running_max\22, \22a\22\09"
module asm "\09.weak\09__crc_minmax_running_max\09\09\09\09"
module asm "\09.long\09__crc_minmax_running_max\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_minmax_running_max:\09\09\09\09\09"
module asm "\09.asciz \09\22minmax_running_max\22\09\09\09\09\09"
module asm "__kstrtabns_minmax_running_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.minmax_sample = type { i32, i32 }

@__kstrtab_minmax_running_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_minmax_running_max = external dso_local constant [0 x i8], align 1
@__ksymtab_minmax_running_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @minmax_running_max to i32), ptr @__kstrtab_minmax_running_max, ptr @__kstrtabns_minmax_running_max }, section "___ksymtab+minmax_running_max", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_minmax_running_max], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @minmax_running_max(ptr nocapture noundef %m, i32 noundef %win, i32 noundef %t, i32 noundef %meas) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  %v3 = getelementptr inbounds %struct.minmax_sample, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %v3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %meas)
  %cmp.not = icmp ugt i32 %1, %meas
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge, !prof !10

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx7 = getelementptr [3 x %struct.minmax_sample], ptr %m, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx7, align 4
  %sub = sub i32 %t, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %win)
  %cmp9 = icmp ugt i32 %sub, %win
  br i1 %cmp9, label %lor.lhs.false.if.then_crit_edge, label %if.end, !prof !11

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx.i = getelementptr [3 x %struct.minmax_sample], ptr %m, i32 0, i32 2
  %arrayidx3.i = getelementptr [3 x %struct.minmax_sample], ptr %m, i32 0, i32 1
  %4 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %t, ptr %m, align 4
  %5 = ptrtoint ptr %v3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %meas, ptr %v3, align 4
  %6 = load i64, ptr %m, align 4
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %arrayidx3.i, align 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %6, ptr %arrayidx.i, align 4
  %9 = trunc i64 %6 to i32
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %v19 = getelementptr [3 x %struct.minmax_sample], ptr %m, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %v19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %meas)
  %cmp20.not = icmp ugt i32 %11, %meas
  br i1 %cmp20.not, label %if.else, label %if.then27, !prof !10

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #2
  %arrayidx18 = getelementptr [3 x %struct.minmax_sample], ptr %m, i32 0, i32 1
  %val.sroa.13.0.insert.ext89 = zext i32 %meas to i64
  %val.sroa.0.0.insert.ext64 = zext i32 %t to i64
  %val.sroa.0.0.insert.shift65 = shl nuw i64 %val.sroa.0.0.insert.ext64, 32
  %val.sroa.0.0.insert.insert67 = or i64 %val.sroa.0.0.insert.shift65, %val.sroa.13.0.insert.ext89
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %val.sroa.0.0.insert.insert67, ptr %arrayidx18, align 4
  br label %if.end47.sink.split

if.else:                                          ; preds = %if.end
  %v35 = getelementptr [3 x %struct.minmax_sample], ptr %m, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %v35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %meas)
  %cmp36.not = icmp ugt i32 %14, %meas
  br i1 %cmp36.not, label %if.else.if.end47_crit_edge, label %if.then43, !prof !10

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.end47

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #2
  %val.sroa.13.0.insert.ext = zext i32 %meas to i64
  %val.sroa.0.0.insert.ext = zext i32 %t to i64
  %val.sroa.0.0.insert.shift = shl nuw i64 %val.sroa.0.0.insert.ext, 32
  %val.sroa.0.0.insert.insert = or i64 %val.sroa.0.0.insert.shift, %val.sroa.13.0.insert.ext
  br label %if.end47.sink.split

if.end47.sink.split:                              ; preds = %if.then43, %if.then27
  %val.sroa.0.0.insert.insert.sink = phi i64 [ %val.sroa.0.0.insert.insert, %if.then43 ], [ %val.sroa.0.0.insert.insert67, %if.then27 ]
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %val.sroa.0.0.insert.insert.sink, ptr %arrayidx7, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end47.sink.split, %if.else.if.end47_crit_edge
  %16 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m, align 4
  %sub.i = sub i32 %t, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %win)
  %cmp.i = icmp ugt i32 %sub.i, %win
  %arrayidx6.i = getelementptr [3 x %struct.minmax_sample], ptr %m, i32 0, i32 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !prof !11

if.then.i:                                        ; preds = %if.end47
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %arrayidx6.i, align 4
  %20 = ptrtoint ptr %m to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %m, align 4
  %21 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %arrayidx7, align 4
  store i64 %22, ptr %arrayidx6.i, align 4
  %val.sroa.13.0.insert.ext101 = zext i32 %meas to i64
  %val.sroa.0.0.insert.ext79 = zext i32 %t to i64
  %val.sroa.0.0.insert.shift80 = shl nuw i64 %val.sroa.0.0.insert.ext79, 32
  %val.sroa.0.0.insert.insert82 = or i64 %val.sroa.0.0.insert.shift80, %val.sroa.13.0.insert.ext101
  store i64 %val.sroa.0.0.insert.insert82, ptr %arrayidx7, align 4
  %23 = lshr i64 %19, 32
  %24 = trunc i64 %23 to i32
  %sub17.i = sub i32 %t, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17.i, i32 %win)
  %cmp18.i = icmp ugt i32 %sub17.i, %win
  br i1 %cmp18.i, label %if.then25.i, label %if.then.i.minmax_subwin_update.exit_crit_edge, !prof !11

if.then.i.minmax_subwin_update.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %minmax_subwin_update.exit

if.then25.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #2
  %25 = ptrtoint ptr %m to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %22, ptr %m, align 4
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %val.sroa.0.0.insert.insert82, ptr %arrayidx6.i, align 4
  br label %minmax_subwin_update.exit

if.else.i:                                        ; preds = %if.end47
  %27 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %17)
  %cmp42.i = icmp eq i32 %28, %17
  br i1 %cmp42.i, label %land.lhs.true.i, label %if.else.i.if.else55.i_crit_edge, !prof !11

if.else.i.if.else55.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.else55.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %div110.i = lshr i32 %win, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div110.i)
  %cmp49.i = icmp ugt i32 %sub.i, %div110.i
  br i1 %cmp49.i, label %if.then50.i, label %land.lhs.true.i.if.else55.i_crit_edge

land.lhs.true.i.if.else55.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.else55.i

if.then50.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #2
  %val.sroa.13.0.insert.ext97 = zext i32 %meas to i64
  %val.sroa.0.0.insert.ext74 = zext i32 %t to i64
  %val.sroa.0.0.insert.shift75 = shl nuw i64 %val.sroa.0.0.insert.ext74, 32
  %val.sroa.0.0.insert.insert77 = or i64 %val.sroa.0.0.insert.shift75, %val.sroa.13.0.insert.ext97
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %val.sroa.0.0.insert.insert77, ptr %arrayidx6.i, align 4
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %val.sroa.0.0.insert.insert77, ptr %arrayidx7, align 4
  br label %minmax_subwin_update.exit

if.else55.i:                                      ; preds = %land.lhs.true.i.if.else55.i_crit_edge, %if.else.i.if.else55.i_crit_edge
  %31 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %28)
  %cmp62.i = icmp eq i32 %32, %28
  br i1 %cmp62.i, label %land.lhs.true69.i, label %if.else55.i.minmax_subwin_update.exit_crit_edge, !prof !11

if.else55.i.minmax_subwin_update.exit_crit_edge:  ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %minmax_subwin_update.exit

land.lhs.true69.i:                                ; preds = %if.else55.i
  %div70109.i = lshr i32 %win, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div70109.i)
  %cmp71.i = icmp ugt i32 %sub.i, %div70109.i
  br i1 %cmp71.i, label %if.then72.i, label %land.lhs.true69.i.minmax_subwin_update.exit_crit_edge

land.lhs.true69.i.minmax_subwin_update.exit_crit_edge: ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %minmax_subwin_update.exit

if.then72.i:                                      ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #2
  %val.sroa.13.0.insert.ext93 = zext i32 %meas to i64
  %val.sroa.0.0.insert.ext69 = zext i32 %t to i64
  %val.sroa.0.0.insert.shift70 = shl nuw i64 %val.sroa.0.0.insert.ext69, 32
  %val.sroa.0.0.insert.insert72 = or i64 %val.sroa.0.0.insert.shift70, %val.sroa.13.0.insert.ext93
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %val.sroa.0.0.insert.insert72, ptr %arrayidx7, align 4
  br label %minmax_subwin_update.exit

minmax_subwin_update.exit:                        ; preds = %if.then72.i, %land.lhs.true69.i.minmax_subwin_update.exit_crit_edge, %if.else55.i.minmax_subwin_update.exit_crit_edge, %if.then50.i, %if.then25.i, %if.then.i.minmax_subwin_update.exit_crit_edge
  %34 = ptrtoint ptr %v3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %v3, align 4
  br label %cleanup

cleanup:                                          ; preds = %minmax_subwin_update.exit, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %35, %minmax_subwin_update.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @minmax_running_min(ptr nocapture noundef %m, i32 noundef %win, i32 noundef %t, i32 noundef %meas) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  %v3 = getelementptr inbounds %struct.minmax_sample, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %v3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %meas)
  %cmp.not = icmp ult i32 %1, %meas
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge, !prof !10

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx7 = getelementptr [3 x %struct.minmax_sample], ptr %m, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx7, align 4
  %sub = sub i32 %t, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %win)
  %cmp9 = icmp ugt i32 %sub, %win
  br i1 %cmp9, label %lor.lhs.false.if.then_crit_edge, label %if.end, !prof !11

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx.i = getelementptr [3 x %struct.minmax_sample], ptr %m, i32 0, i32 2
  %arrayidx3.i = getelementptr [3 x %struct.minmax_sample], ptr %m, i32 0, i32 1
  %4 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %t, ptr %m, align 4
  %5 = ptrtoint ptr %v3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %meas, ptr %v3, align 4
  %6 = load i64, ptr %m, align 4
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %arrayidx3.i, align 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %6, ptr %arrayidx.i, align 4
  %9 = trunc i64 %6 to i32
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %v19 = getelementptr [3 x %struct.minmax_sample], ptr %m, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %v19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %meas)
  %cmp20.not = icmp ult i32 %11, %meas
  br i1 %cmp20.not, label %if.else, label %if.then27, !prof !10

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #2
  %arrayidx18 = getelementptr [3 x %struct.minmax_sample], ptr %m, i32 0, i32 1
  %val.sroa.13.0.insert.ext89 = zext i32 %meas to i64
  %val.sroa.0.0.insert.ext64 = zext i32 %t to i64
  %val.sroa.0.0.insert.shift65 = shl nuw i64 %val.sroa.0.0.insert.ext64, 32
  %val.sroa.0.0.insert.insert67 = or i64 %val.sroa.0.0.insert.shift65, %val.sroa.13.0.insert.ext89
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %val.sroa.0.0.insert.insert67, ptr %arrayidx18, align 4
  br label %if.end47.sink.split

if.else:                                          ; preds = %if.end
  %v35 = getelementptr [3 x %struct.minmax_sample], ptr %m, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %v35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %meas)
  %cmp36.not = icmp ult i32 %14, %meas
  br i1 %cmp36.not, label %if.else.if.end47_crit_edge, label %if.then43, !prof !10

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.end47

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #2
  %val.sroa.13.0.insert.ext = zext i32 %meas to i64
  %val.sroa.0.0.insert.ext = zext i32 %t to i64
  %val.sroa.0.0.insert.shift = shl nuw i64 %val.sroa.0.0.insert.ext, 32
  %val.sroa.0.0.insert.insert = or i64 %val.sroa.0.0.insert.shift, %val.sroa.13.0.insert.ext
  br label %if.end47.sink.split

if.end47.sink.split:                              ; preds = %if.then43, %if.then27
  %val.sroa.0.0.insert.insert.sink = phi i64 [ %val.sroa.0.0.insert.insert, %if.then43 ], [ %val.sroa.0.0.insert.insert67, %if.then27 ]
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %val.sroa.0.0.insert.insert.sink, ptr %arrayidx7, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end47.sink.split, %if.else.if.end47_crit_edge
  %16 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m, align 4
  %sub.i = sub i32 %t, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %win)
  %cmp.i = icmp ugt i32 %sub.i, %win
  %arrayidx6.i = getelementptr [3 x %struct.minmax_sample], ptr %m, i32 0, i32 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !prof !11

if.then.i:                                        ; preds = %if.end47
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %arrayidx6.i, align 4
  %20 = ptrtoint ptr %m to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %m, align 4
  %21 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %arrayidx7, align 4
  store i64 %22, ptr %arrayidx6.i, align 4
  %val.sroa.13.0.insert.ext101 = zext i32 %meas to i64
  %val.sroa.0.0.insert.ext79 = zext i32 %t to i64
  %val.sroa.0.0.insert.shift80 = shl nuw i64 %val.sroa.0.0.insert.ext79, 32
  %val.sroa.0.0.insert.insert82 = or i64 %val.sroa.0.0.insert.shift80, %val.sroa.13.0.insert.ext101
  store i64 %val.sroa.0.0.insert.insert82, ptr %arrayidx7, align 4
  %23 = lshr i64 %19, 32
  %24 = trunc i64 %23 to i32
  %sub17.i = sub i32 %t, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17.i, i32 %win)
  %cmp18.i = icmp ugt i32 %sub17.i, %win
  br i1 %cmp18.i, label %if.then25.i, label %if.then.i.minmax_subwin_update.exit_crit_edge, !prof !11

if.then.i.minmax_subwin_update.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %minmax_subwin_update.exit

if.then25.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #2
  %25 = ptrtoint ptr %m to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %22, ptr %m, align 4
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %val.sroa.0.0.insert.insert82, ptr %arrayidx6.i, align 4
  br label %minmax_subwin_update.exit

if.else.i:                                        ; preds = %if.end47
  %27 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %17)
  %cmp42.i = icmp eq i32 %28, %17
  br i1 %cmp42.i, label %land.lhs.true.i, label %if.else.i.if.else55.i_crit_edge, !prof !11

if.else.i.if.else55.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.else55.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %div110.i = lshr i32 %win, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div110.i)
  %cmp49.i = icmp ugt i32 %sub.i, %div110.i
  br i1 %cmp49.i, label %if.then50.i, label %land.lhs.true.i.if.else55.i_crit_edge

land.lhs.true.i.if.else55.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.else55.i

if.then50.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #2
  %val.sroa.13.0.insert.ext97 = zext i32 %meas to i64
  %val.sroa.0.0.insert.ext74 = zext i32 %t to i64
  %val.sroa.0.0.insert.shift75 = shl nuw i64 %val.sroa.0.0.insert.ext74, 32
  %val.sroa.0.0.insert.insert77 = or i64 %val.sroa.0.0.insert.shift75, %val.sroa.13.0.insert.ext97
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %val.sroa.0.0.insert.insert77, ptr %arrayidx6.i, align 4
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %val.sroa.0.0.insert.insert77, ptr %arrayidx7, align 4
  br label %minmax_subwin_update.exit

if.else55.i:                                      ; preds = %land.lhs.true.i.if.else55.i_crit_edge, %if.else.i.if.else55.i_crit_edge
  %31 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %28)
  %cmp62.i = icmp eq i32 %32, %28
  br i1 %cmp62.i, label %land.lhs.true69.i, label %if.else55.i.minmax_subwin_update.exit_crit_edge, !prof !11

if.else55.i.minmax_subwin_update.exit_crit_edge:  ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %minmax_subwin_update.exit

land.lhs.true69.i:                                ; preds = %if.else55.i
  %div70109.i = lshr i32 %win, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div70109.i)
  %cmp71.i = icmp ugt i32 %sub.i, %div70109.i
  br i1 %cmp71.i, label %if.then72.i, label %land.lhs.true69.i.minmax_subwin_update.exit_crit_edge

land.lhs.true69.i.minmax_subwin_update.exit_crit_edge: ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %minmax_subwin_update.exit

if.then72.i:                                      ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #2
  %val.sroa.13.0.insert.ext93 = zext i32 %meas to i64
  %val.sroa.0.0.insert.ext69 = zext i32 %t to i64
  %val.sroa.0.0.insert.shift70 = shl nuw i64 %val.sroa.0.0.insert.ext69, 32
  %val.sroa.0.0.insert.insert72 = or i64 %val.sroa.0.0.insert.shift70, %val.sroa.13.0.insert.ext93
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %val.sroa.0.0.insert.insert72, ptr %arrayidx7, align 4
  br label %minmax_subwin_update.exit

minmax_subwin_update.exit:                        ; preds = %if.then72.i, %land.lhs.true69.i.minmax_subwin_update.exit_crit_edge, %if.else55.i.minmax_subwin_update.exit_crit_edge, %if.then50.i, %if.then25.i, %if.then.i.minmax_subwin_update.exit_crit_edge
  %34 = ptrtoint ptr %v3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %v3, align 4
  br label %cleanup

cleanup:                                          ; preds = %minmax_subwin_update.exit, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %35, %minmax_subwin_update.exit ]
  ret i32 %retval.0
}

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) }
attributes #2 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{ptr @__ksymtab_minmax_running_max, !1, !"__ksymtab_minmax_running_max", i1 false, i1 false}
!1 = !{!"../lib/win_minmax.c", i32 82, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
