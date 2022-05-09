; ModuleID = '/llk/IR_all_yes/lib/dynamic_queue_limits.c_pt.bc'
source_filename = "../lib/dynamic_queue_limits.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dql_completed\22, \22a\22\09"
module asm "\09.weak\09__crc_dql_completed\09\09\09\09"
module asm "\09.long\09__crc_dql_completed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dql_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22dql_completed\22\09\09\09\09\09"
module asm "__kstrtabns_dql_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dql_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_dql_reset\09\09\09\09"
module asm "\09.long\09__crc_dql_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dql_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22dql_reset\22\09\09\09\09\09"
module asm "__kstrtabns_dql_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dql_init\22, \22a\22\09"
module asm "\09.weak\09__crc_dql_init\09\09\09\09"
module asm "\09.long\09__crc_dql_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dql_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dql_init\22\09\09\09\09\09"
module asm "__kstrtabns_dql_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_dql_completed = external dso_local constant [0 x i8], align 1
@__kstrtabns_dql_completed = external dso_local constant [0 x i8], align 1
@__ksymtab_dql_completed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dql_completed to i32), ptr @__kstrtab_dql_completed, ptr @__kstrtabns_dql_completed }, section "___ksymtab+dql_completed", align 4
@__kstrtab_dql_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_dql_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_dql_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dql_reset to i32), ptr @__kstrtab_dql_reset, ptr @__kstrtabns_dql_reset }, section "___ksymtab+dql_reset", align 4
@__kstrtab_dql_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dql_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dql_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dql_init to i32), ptr @__kstrtab_dql_init, ptr @__kstrtabns_dql_init }, section "___ksymtab+dql_init", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_dql_completed, ptr @__ksymtab_dql_init, ptr @__ksymtab_dql_reset], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dql_completed(ptr noundef %dql, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %dql to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dql, align 128
  %num_completed = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 5
  %2 = ptrtoint ptr %num_completed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_completed, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count)
  %cmp = icmp ult i32 %sub, %count
  br i1 %cmp, label %do.body4, label %do.end11, !prof !14

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/dynamic_queue_limits.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 27, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

do.end11:                                         ; preds = %entry
  %add = add i32 %3, %count
  %limit13 = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 4
  %4 = ptrtoint ptr %limit13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %limit13, align 128
  %sub16 = sub i32 %sub, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub16)
  %cmp17 = icmp sgt i32 %sub16, 0
  %6 = tail call i32 @llvm.smax.i32(i32 %sub16, i32 0)
  %prev_num_queued = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 7
  %7 = ptrtoint ptr %prev_num_queued to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prev_num_queued, align 4
  %sub25 = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub25)
  %cmp26 = icmp sgt i32 %sub25, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %tobool28.not = icmp eq i32 %1, %add
  %or.cond = select i1 %cmp17, i1 %tobool28.not, i1 false
  br i1 %or.cond, label %do.end11.if.then32_crit_edge, label %lor.lhs.false

do.end11.if.then32_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then32

lor.lhs.false:                                    ; preds = %do.end11
  %prev_ovlimit = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 6
  %9 = ptrtoint ptr %prev_ovlimit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prev_ovlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool29.not = icmp eq i32 %10, 0
  %cmp26.not = xor i1 %cmp26, true
  %brmerge = select i1 %tobool29.not, i1 true, i1 %cmp26.not
  br i1 %brmerge, label %if.else, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %do.end11.if.then32_crit_edge
  %11 = tail call i32 @llvm.smax.i32(i32 %sub25, i32 0)
  %prev_ovlimit42 = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 6
  %12 = ptrtoint ptr %prev_ovlimit42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prev_ovlimit42, align 8
  %add43 = add i32 %11, %5
  %add44 = add i32 %add43, %13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %slack_start_time = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 10
  %15 = ptrtoint ptr %slack_start_time to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %slack_start_time, align 8
  %lowest_slack = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 9
  br label %if.end112.sink.split

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %tobool47.not = icmp eq i32 %8, %3
  %or.cond212 = select i1 %tobool28.not, i1 true, i1 %tobool47.not
  %brmerge213 = select i1 %or.cond212, i1 true, i1 %cmp26
  br i1 %brmerge213, label %if.else.if.end112_crit_edge, label %if.then50

if.else.if.end112_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end112

if.then50:                                        ; preds = %if.else
  %.neg = mul i32 %count, -2
  %add52 = add i32 %5, %.neg
  %sub55 = add i32 %add52, %10
  %16 = tail call i32 @llvm.smax.i32(i32 %sub55, i32 0)
  br i1 %tobool29.not, label %if.then50.cond.end81_crit_edge, label %cond.true69

if.then50.cond.end81_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end81

cond.true69:                                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #5
  %prev_last_obj_cnt = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 8
  %17 = ptrtoint ptr %prev_last_obj_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prev_last_obj_cnt, align 16
  %sub71 = sub i32 %18, %10
  %19 = tail call i32 @llvm.smax.i32(i32 %sub71, i32 0)
  br label %cond.end81

cond.end81:                                       ; preds = %cond.true69, %if.then50.cond.end81_crit_edge
  %cond82 = phi i32 [ 0, %if.then50.cond.end81_crit_edge ], [ %19, %cond.true69 ]
  %20 = tail call i32 @llvm.umax.i32(i32 %16, i32 %cond82)
  %lowest_slack89 = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 9
  %21 = ptrtoint ptr %lowest_slack89 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lowest_slack89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp90 = icmp ult i32 %20, %22
  br i1 %cmp90, label %if.then91, label %cond.end81.if.end93_crit_edge

cond.end81.if.end93_crit_edge:                    ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end93

if.then91:                                        ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %lowest_slack89 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %lowest_slack89, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %cond.end81.if.end93_crit_edge
  %slack_start_time94 = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 10
  %24 = ptrtoint ptr %slack_start_time94 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slack_start_time94, align 8
  %slack_hold_time = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 13
  %26 = ptrtoint ptr %slack_hold_time to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slack_hold_time, align 4
  %add95 = add i32 %27, %25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub96 = sub i32 %add95, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub96)
  %cmp97 = icmp slt i32 %sub96, 0
  br i1 %cmp97, label %if.then98, label %if.end93.if.end112_crit_edge

if.end93.if.end112_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end112

if.then98:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %lowest_slack89 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lowest_slack89, align 4
  %sub100 = sub i32 %5, %30
  %31 = tail call i32 @llvm.smax.i32(i32 %sub100, i32 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %33 = ptrtoint ptr %slack_start_time94 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %slack_start_time94, align 8
  br label %if.end112.sink.split

if.end112.sink.split:                             ; preds = %if.then98, %if.then32
  %lowest_slack89.sink = phi ptr [ %lowest_slack89, %if.then98 ], [ %lowest_slack, %if.then32 ]
  %limit.1.ph = phi i32 [ %31, %if.then98 ], [ %add44, %if.then32 ]
  %34 = ptrtoint ptr %lowest_slack89.sink to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %lowest_slack89.sink, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.end112.sink.split, %if.end93.if.end112_crit_edge, %if.else.if.end112_crit_edge
  %limit.1 = phi i32 [ %5, %if.else.if.end112_crit_edge ], [ %5, %if.end93.if.end112_crit_edge ], [ %limit.1.ph, %if.end112.sink.split ]
  %min_limit = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 12
  %35 = ptrtoint ptr %min_limit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %min_limit, align 32
  %37 = tail call i32 @llvm.umax.i32(i32 %limit.1, i32 %36)
  %max_limit = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 11
  %38 = ptrtoint ptr %max_limit to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_limit, align 4
  %40 = tail call i32 @llvm.umin.i32(i32 %37, i32 %39)
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %5)
  %cmp126.not = icmp eq i32 %40, %5
  br i1 %cmp126.not, label %if.end112.if.end129_crit_edge, label %if.then127

if.end112.if.end129_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end129

if.then127:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %limit13 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %limit13, align 128
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.end112.if.end129_crit_edge
  %ovlimit.0 = phi i32 [ 0, %if.then127 ], [ %6, %if.end112.if.end129_crit_edge ]
  %add130 = add i32 %40, %add
  %adj_limit = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 1
  %42 = ptrtoint ptr %adj_limit to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add130, ptr %adj_limit, align 4
  %prev_ovlimit131 = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 6
  %43 = ptrtoint ptr %prev_ovlimit131 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %ovlimit.0, ptr %prev_ovlimit131, align 8
  %last_obj_cnt = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 2
  %44 = ptrtoint ptr %last_obj_cnt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %last_obj_cnt, align 8
  %prev_last_obj_cnt132 = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 8
  %46 = ptrtoint ptr %prev_last_obj_cnt132 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %prev_last_obj_cnt132, align 16
  %47 = ptrtoint ptr %num_completed to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add, ptr %num_completed, align 4
  %48 = ptrtoint ptr %prev_num_queued to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %1, ptr %prev_num_queued, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dql_reset(ptr nocapture noundef writeonly %dql) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %limit = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 4
  %0 = ptrtoint ptr %dql to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dql, align 128
  %last_obj_cnt = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 2
  %1 = ptrtoint ptr %last_obj_cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %last_obj_cnt, align 8
  %lowest_slack = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 9
  %2 = call ptr @memset(ptr %limit, i32 0, i32 20)
  %3 = ptrtoint ptr %lowest_slack to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %lowest_slack, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %slack_start_time = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 10
  %5 = ptrtoint ptr %slack_start_time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %slack_start_time, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dql_init(ptr nocapture noundef writeonly %dql, i32 noundef %hold_time) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %max_limit = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 11
  %0 = ptrtoint ptr %max_limit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1879048192, ptr %max_limit, align 4
  %min_limit = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 12
  %1 = ptrtoint ptr %min_limit to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %min_limit, align 32
  %slack_hold_time = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 13
  %2 = ptrtoint ptr %slack_hold_time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %hold_time, ptr %slack_hold_time, align 4
  %limit.i = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 4
  %3 = ptrtoint ptr %dql to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dql, align 128
  %last_obj_cnt.i = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 2
  %4 = ptrtoint ptr %last_obj_cnt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %last_obj_cnt.i, align 8
  %lowest_slack.i = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 9
  %5 = call ptr @memset(ptr %limit.i, i32 0, i32 20)
  %6 = ptrtoint ptr %lowest_slack.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %lowest_slack.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %slack_start_time.i = getelementptr inbounds %struct.dql, ptr %dql, i32 0, i32 10
  %8 = ptrtoint ptr %slack_start_time.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %slack_start_time.i, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @__ksymtab_dql_completed, !1, !"__ksymtab_dql_completed", i1 false, i1 false}
!1 = !{!"../lib/dynamic_queue_limits.c", i32 114, i32 1}
!2 = !{ptr @__ksymtab_dql_reset, !3, !"__ksymtab_dql_reset", i1 false, i1 false}
!3 = !{!"../lib/dynamic_queue_limits.c", i32 129, i32 1}
!4 = !{ptr @__ksymtab_dql_init, !5, !"__ksymtab_dql_init", i1 false, i1 false}
!5 = !{!"../lib/dynamic_queue_limits.c", i32 138, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2148820541, i64 2148821031, i64 2148820578, i64 2148820634, i64 2148820668, i64 2148820692, i64 2148820733, i64 2148820754, i64 2148820782, i64 2148820816}
