; ModuleID = '/llk/IR_all_yes/lib/parser.c_pt.bc'
source_filename = "../lib/parser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+match_token\22, \22a\22\09"
module asm "\09.weak\09__crc_match_token\09\09\09\09"
module asm "\09.long\09__crc_match_token\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_token:\09\09\09\09\09"
module asm "\09.asciz \09\22match_token\22\09\09\09\09\09"
module asm "__kstrtabns_match_token:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+match_int\22, \22a\22\09"
module asm "\09.weak\09__crc_match_int\09\09\09\09"
module asm "\09.long\09__crc_match_int\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_int:\09\09\09\09\09"
module asm "\09.asciz \09\22match_int\22\09\09\09\09\09"
module asm "__kstrtabns_match_int:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+match_uint\22, \22a\22\09"
module asm "\09.weak\09__crc_match_uint\09\09\09\09"
module asm "\09.long\09__crc_match_uint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_uint:\09\09\09\09\09"
module asm "\09.asciz \09\22match_uint\22\09\09\09\09\09"
module asm "__kstrtabns_match_uint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+match_u64\22, \22a\22\09"
module asm "\09.weak\09__crc_match_u64\09\09\09\09"
module asm "\09.long\09__crc_match_u64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22match_u64\22\09\09\09\09\09"
module asm "__kstrtabns_match_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+match_octal\22, \22a\22\09"
module asm "\09.weak\09__crc_match_octal\09\09\09\09"
module asm "\09.long\09__crc_match_octal\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_octal:\09\09\09\09\09"
module asm "\09.asciz \09\22match_octal\22\09\09\09\09\09"
module asm "__kstrtabns_match_octal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+match_hex\22, \22a\22\09"
module asm "\09.weak\09__crc_match_hex\09\09\09\09"
module asm "\09.long\09__crc_match_hex\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_hex:\09\09\09\09\09"
module asm "\09.asciz \09\22match_hex\22\09\09\09\09\09"
module asm "__kstrtabns_match_hex:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+match_wildcard\22, \22a\22\09"
module asm "\09.weak\09__crc_match_wildcard\09\09\09\09"
module asm "\09.long\09__crc_match_wildcard\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_wildcard:\09\09\09\09\09"
module asm "\09.asciz \09\22match_wildcard\22\09\09\09\09\09"
module asm "__kstrtabns_match_wildcard:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+match_strlcpy\22, \22a\22\09"
module asm "\09.weak\09__crc_match_strlcpy\09\09\09\09"
module asm "\09.long\09__crc_match_strlcpy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_strlcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22match_strlcpy\22\09\09\09\09\09"
module asm "__kstrtabns_match_strlcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+match_strdup\22, \22a\22\09"
module asm "\09.weak\09__crc_match_strdup\09\09\09\09"
module asm "\09.long\09__crc_match_strdup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_strdup:\09\09\09\09\09"
module asm "\09.asciz \09\22match_strdup\22\09\09\09\09\09"
module asm "__kstrtabns_match_strdup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.substring_t = type { ptr, ptr }

@__kstrtab_match_token = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_token = external dso_local constant [0 x i8], align 1
@__ksymtab_match_token = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_token to i32), ptr @__kstrtab_match_token, ptr @__kstrtabns_match_token }, section "___ksymtab+match_token", align 4
@__kstrtab_match_int = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_int = external dso_local constant [0 x i8], align 1
@__ksymtab_match_int = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_int to i32), ptr @__kstrtab_match_int, ptr @__kstrtabns_match_int }, section "___ksymtab+match_int", align 4
@__kstrtab_match_uint = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_uint = external dso_local constant [0 x i8], align 1
@__ksymtab_match_uint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_uint to i32), ptr @__kstrtab_match_uint, ptr @__kstrtabns_match_uint }, section "___ksymtab+match_uint", align 4
@__kstrtab_match_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_match_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_u64 to i32), ptr @__kstrtab_match_u64, ptr @__kstrtabns_match_u64 }, section "___ksymtab+match_u64", align 4
@__kstrtab_match_octal = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_octal = external dso_local constant [0 x i8], align 1
@__ksymtab_match_octal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_octal to i32), ptr @__kstrtab_match_octal, ptr @__kstrtabns_match_octal }, section "___ksymtab+match_octal", align 4
@__kstrtab_match_hex = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_hex = external dso_local constant [0 x i8], align 1
@__ksymtab_match_hex = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_hex to i32), ptr @__kstrtab_match_hex, ptr @__kstrtabns_match_hex }, section "___ksymtab+match_hex", align 4
@__kstrtab_match_wildcard = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_wildcard = external dso_local constant [0 x i8], align 1
@__ksymtab_match_wildcard = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_wildcard to i32), ptr @__kstrtab_match_wildcard, ptr @__kstrtabns_match_wildcard }, section "___ksymtab+match_wildcard", align 4
@__kstrtab_match_strlcpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_strlcpy = external dso_local constant [0 x i8], align 1
@__ksymtab_match_strlcpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_strlcpy to i32), ptr @__kstrtab_match_strlcpy, ptr @__kstrtabns_match_strlcpy }, section "___ksymtab+match_strlcpy", align 4
@__kstrtab_match_strdup = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_strdup = external dso_local constant [0 x i8], align 1
@__ksymtab_match_strdup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_strdup to i32), ptr @__kstrtab_match_strdup, ptr @__kstrtabns_match_strdup }, section "___ksymtab+match_strdup", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 100, i64 111, i64 115, i64 117, i64 120]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 42, i64 63]
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_match_hex, ptr @__ksymtab_match_int, ptr @__ksymtab_match_octal, ptr @__ksymtab_match_strdup, ptr @__ksymtab_match_strlcpy, ptr @__ksymtab_match_token, ptr @__ksymtab_match_u64, ptr @__ksymtab_match_uint, ptr @__ksymtab_match_wildcard], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @match_token(ptr noundef %s, ptr nocapture noundef readonly %table, ptr noundef %args) #0 align 64 {
entry:
  %p.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  %pattern10 = getelementptr inbounds %struct.match_token, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %pattern10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pattern10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.addr.i)
  %2 = ptrtoint ptr %p.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %p.addr.i, align 4
  %tobool.not.i11 = icmp eq ptr %1, null
  br i1 %tobool.not.i11, label %entry.match_one.exit.thread5_crit_edge, label %entry.while.cond.preheader.i_crit_edge

entry.while.cond.preheader.i_crit_edge:           ; preds = %entry
  br label %while.cond.preheader.i

entry.match_one.exit.thread5_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_one.exit.thread5

match_one.exit.thread5:                           ; preds = %for.inc.match_one.exit.thread5_crit_edge, %entry.match_one.exit.thread5_crit_edge
  %p.0.lcssa = phi ptr [ %table, %entry.match_one.exit.thread5_crit_edge ], [ %incdec.ptr, %for.inc.match_one.exit.thread5_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.addr.i)
  br label %for.end

while.cond.preheader.i:                           ; preds = %for.inc.while.cond.preheader.i_crit_edge, %entry.while.cond.preheader.i_crit_edge
  %3 = phi ptr [ %29, %for.inc.while.cond.preheader.i_crit_edge ], [ %1, %entry.while.cond.preheader.i_crit_edge ]
  %p.012 = phi ptr [ %incdec.ptr, %for.inc.while.cond.preheader.i_crit_edge ], [ %table, %entry.while.cond.preheader.i_crit_edge ]
  %call123.i = call ptr @strchr(ptr noundef nonnull %3, i32 noundef 37) #8
  %tobool1.not124.i = icmp eq ptr %call123.i, null
  br i1 %tobool1.not124.i, label %while.cond.preheader.i.match_one.exit_crit_edge, label %while.cond.preheader.i.if.end4.i_crit_edge

while.cond.preheader.i.if.end4.i_crit_edge:       ; preds = %while.cond.preheader.i
  br label %if.end4.i

while.cond.preheader.i.match_one.exit_crit_edge:  ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_one.exit

if.end4.i:                                        ; preds = %cleanup75.i.if.end4.i_crit_edge, %while.cond.preheader.i.if.end4.i_crit_edge
  %call130.i = phi ptr [ %call.i, %cleanup75.i.if.end4.i_crit_edge ], [ %call123.i, %while.cond.preheader.i.if.end4.i_crit_edge ]
  %4 = phi ptr [ %27, %cleanup75.i.if.end4.i_crit_edge ], [ %3, %while.cond.preheader.i.if.end4.i_crit_edge ]
  %argc.0126.i = phi i32 [ %argc.1.i, %cleanup75.i.if.end4.i_crit_edge ], [ 0, %while.cond.preheader.i.if.end4.i_crit_edge ]
  %s.addr.0125.i = phi ptr [ %s.addr.1.i, %cleanup75.i.if.end4.i_crit_edge ], [ %s, %while.cond.preheader.i.if.end4.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call130.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call5.i = call i32 @strncmp(ptr noundef %4, ptr noundef %s.addr.0125.i, i32 noundef %sub.ptr.sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.match_one.exit.thread_crit_edge

if.end4.i.match_one.exit.thread_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_one.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %add.ptr.i = getelementptr i8, ptr %s.addr.0125.i, i32 %sub.ptr.sub.i
  %add.ptr12.i = getelementptr i8, ptr %call130.i, i32 1
  %5 = ptrtoint ptr %p.addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr12.i, ptr %p.addr.i, align 4
  %6 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr12.i, align 1
  %conv13.i = zext i8 %7 to i32
  %8 = add nsw i32 %conv13.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %8)
  %9 = icmp ult i32 %8, -10
  br i1 %9, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i = call i32 @simple_strtoul(ptr noundef %add.ptr12.i, ptr noundef nonnull %p.addr.i, i32 noundef 10) #8
  br label %if.end29.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %7)
  %cmp19.i = icmp eq i8 %7, 37
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i.if.end29.i_crit_edge

if.else.i.if.end29.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then21.i:                                      ; preds = %if.else.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %11)
  %cmp23.not.i = icmp eq i8 %11, 37
  br i1 %cmp23.not.i, label %if.end26.i, label %if.then21.i.match_one.exit.thread_crit_edge

if.then21.i.match_one.exit.thread_crit_edge:      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_one.exit.thread

if.end26.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %incdec.ptr27.i = getelementptr i8, ptr %call130.i, i32 2
  %12 = ptrtoint ptr %p.addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %incdec.ptr27.i, ptr %p.addr.i, align 4
  br label %cleanup75.i

if.end29.i:                                       ; preds = %if.else.i.if.end29.i_crit_edge, %if.then16.i
  %len.0.i = phi i32 [ %call17.i, %if.then16.i ], [ -1, %if.else.i.if.end29.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc.0126.i)
  %cmp30.i = icmp sgt i32 %argc.0126.i, 2
  br i1 %cmp30.i, label %if.end29.i.match_one.exit.thread_crit_edge, label %if.end33.i

if.end29.i.match_one.exit.thread_crit_edge:       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_one.exit.thread

if.end33.i:                                       ; preds = %if.end29.i
  %arrayidx.i = getelementptr %struct.substring_t, ptr %args, i32 %argc.0126.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %p.addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p.addr.i, align 4
  %incdec.ptr34.i = getelementptr i8, ptr %15, i32 1
  store ptr %incdec.ptr34.i, ptr %p.addr.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %if.end33.i.match_one.exit.thread_crit_edge [
    i8 115, label %sw.bb.i
    i8 100, label %sw.bb49.i
    i8 117, label %sw.bb53.i
    i8 111, label %sw.bb57.i
    i8 120, label %sw.bb61.i
  ]

if.end33.i.match_one.exit.thread_crit_edge:       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_one.exit.thread

sw.bb.i:                                          ; preds = %if.end33.i
  %call36.i = call i32 @strlen(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp eq i32 %call36.i, 0
  br i1 %cmp37.i, label %sw.bb.i.match_one.exit.thread_crit_edge, label %cleanup.i

sw.bb.i.match_one.exit.thread_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_one.exit.thread

cleanup.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %len.0.i)
  %cmp41.i = icmp eq i32 %len.0.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.i, i32 %call36.i)
  %cmp43.i = icmp ugt i32 %len.0.i, %call36.i
  %or.cond.i = select i1 %cmp41.i, i1 true, i1 %cmp43.i
  %len.1.i = select i1 %or.cond.i, i32 %call36.i, i32 %len.0.i
  %add.ptr47.i = getelementptr i8, ptr %add.ptr.i, i32 %len.1.i
  %to.i = getelementptr %struct.substring_t, ptr %args, i32 %argc.0126.i, i32 1
  %19 = ptrtoint ptr %to.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr47.i, ptr %to.i, align 4
  br label %sw.epilog.i

sw.bb49.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  %to51.i = getelementptr %struct.substring_t, ptr %args, i32 %argc.0126.i, i32 1
  %call52.i = call i32 @simple_strtol(ptr noundef %add.ptr.i, ptr noundef %to51.i, i32 noundef 0) #8
  br label %num.i

sw.bb53.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  %to55.i = getelementptr %struct.substring_t, ptr %args, i32 %argc.0126.i, i32 1
  %call56.i = call i32 @simple_strtoul(ptr noundef %add.ptr.i, ptr noundef %to55.i, i32 noundef 0) #8
  br label %num.i

sw.bb57.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  %to59.i = getelementptr %struct.substring_t, ptr %args, i32 %argc.0126.i, i32 1
  %call60.i = call i32 @simple_strtoul(ptr noundef %add.ptr.i, ptr noundef %to59.i, i32 noundef 8) #8
  br label %num.i

sw.bb61.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  %to63.i = getelementptr %struct.substring_t, ptr %args, i32 %argc.0126.i, i32 1
  %call64.i = call i32 @simple_strtoul(ptr noundef %add.ptr.i, ptr noundef %to63.i, i32 noundef 16) #8
  br label %num.i

num.i:                                            ; preds = %sw.bb61.i, %sw.bb57.i, %sw.bb53.i, %sw.bb49.i
  %to66.i = getelementptr %struct.substring_t, ptr %args, i32 %argc.0126.i, i32 1
  %20 = ptrtoint ptr %to66.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %to66.i, align 4
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %cmp69.i = icmp eq ptr %21, %23
  br i1 %cmp69.i, label %num.i.match_one.exit.thread_crit_edge, label %num.i.sw.epilog.i_crit_edge

num.i.sw.epilog.i_crit_edge:                      ; preds = %num.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

num.i.match_one.exit.thread_crit_edge:            ; preds = %num.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_one.exit.thread

sw.epilog.i:                                      ; preds = %num.i.sw.epilog.i_crit_edge, %cleanup.i
  %to74.i = getelementptr %struct.substring_t, ptr %args, i32 %argc.0126.i, i32 1
  %24 = ptrtoint ptr %to74.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %to74.i, align 4
  %inc.i = add nsw i32 %argc.0126.i, 1
  br label %cleanup75.i

cleanup75.i:                                      ; preds = %sw.epilog.i, %if.end26.i
  %s.addr.1.i = phi ptr [ %25, %sw.epilog.i ], [ %incdec.ptr.i, %if.end26.i ]
  %argc.1.i = phi i32 [ %inc.i, %sw.epilog.i ], [ %argc.0126.i, %if.end26.i ]
  %26 = ptrtoint ptr %p.addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p.addr.i, align 4
  %call.i = call ptr @strchr(ptr noundef %27, i32 noundef 37) #8
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %cleanup75.i.match_one.exit_crit_edge, label %cleanup75.i.if.end4.i_crit_edge

cleanup75.i.if.end4.i_crit_edge:                  ; preds = %cleanup75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

cleanup75.i.match_one.exit_crit_edge:             ; preds = %cleanup75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_one.exit

match_one.exit.thread:                            ; preds = %num.i.match_one.exit.thread_crit_edge, %sw.bb.i.match_one.exit.thread_crit_edge, %if.end33.i.match_one.exit.thread_crit_edge, %if.end29.i.match_one.exit.thread_crit_edge, %if.then21.i.match_one.exit.thread_crit_edge, %if.end4.i.match_one.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.addr.i)
  br label %for.inc

match_one.exit:                                   ; preds = %cleanup75.i.match_one.exit_crit_edge, %while.cond.preheader.i.match_one.exit_crit_edge
  %s.addr.0.lcssa.i = phi ptr [ %s, %while.cond.preheader.i.match_one.exit_crit_edge ], [ %s.addr.1.i, %cleanup75.i.match_one.exit_crit_edge ]
  %.lcssa.i = phi ptr [ %3, %while.cond.preheader.i.match_one.exit_crit_edge ], [ %27, %cleanup75.i.match_one.exit_crit_edge ]
  %call3.i = call i32 @strcmp(ptr noundef %.lcssa.i, ptr noundef %s.addr.0.lcssa.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i.not = icmp eq i32 %call3.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.addr.i)
  br i1 %cmp.i.not, label %match_one.exit.for.end_crit_edge, label %match_one.exit.for.inc_crit_edge

match_one.exit.for.inc_crit_edge:                 ; preds = %match_one.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

match_one.exit.for.end_crit_edge:                 ; preds = %match_one.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %match_one.exit.for.inc_crit_edge, %match_one.exit.thread
  %incdec.ptr = getelementptr %struct.match_token, ptr %p.012, i32 1
  %pattern = getelementptr %struct.match_token, ptr %p.012, i32 1, i32 1
  %28 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pattern, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.addr.i)
  %30 = ptrtoint ptr %p.addr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %p.addr.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %for.inc.match_one.exit.thread5_crit_edge, label %for.inc.while.cond.preheader.i_crit_edge

for.inc.while.cond.preheader.i_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader.i

for.inc.match_one.exit.thread5_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_one.exit.thread5

for.end:                                          ; preds = %match_one.exit.for.end_crit_edge, %match_one.exit.thread5
  %p.09 = phi ptr [ %p.0.lcssa, %match_one.exit.thread5 ], [ %p.012, %match_one.exit.for.end_crit_edge ]
  %31 = ptrtoint ptr %p.09 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %p.09, align 4
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @match_int(ptr nocapture noundef readonly %s, ptr nocapture noundef writeonly %result) #0 align 64 {
entry:
  %endp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp.i) #8
  %0 = ptrtoint ptr %endp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp.i, align 4, !annotation !26
  %1 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s, align 4
  %to.i.i = getelementptr inbounds %struct.substring_t, ptr %s, i32 0, i32 1
  %3 = ptrtoint ptr %to.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %to.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @kmemdup_nul(ptr noundef %2, i32 noundef %sub.ptr.sub.i.i, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.match_number.exit_crit_edge, label %if.end.i

entry.match_number.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_number.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @simple_strtol(ptr noundef nonnull %call.i.i, ptr noundef nonnull %endp.i, i32 noundef 0) #8
  %5 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %endp.i, align 4
  %cmp.i = icmp eq ptr %6, %call.i.i
  br i1 %cmp.i, label %if.end.i.if.end8.i_crit_edge, label %if.else6.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.else6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call1.i, ptr %result, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else6.i, %if.end.i.if.end8.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.else6.i ], [ -22, %if.end.i.if.end8.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call.i.i) #8
  br label %match_number.exit

match_number.exit:                                ; preds = %if.end8.i, %entry.match_number.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %if.end8.i ], [ -12, %entry.match_number.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @match_uint(ptr nocapture noundef readonly %s, ptr noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s, align 4
  %to.i = getelementptr inbounds %struct.substring_t, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %to.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %to.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call.i = tail call ptr @kmemdup_nul(ptr noundef %1, i32 noundef %sub.ptr.sub.i, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @kstrtouint(ptr noundef nonnull %call.i, i32 noundef 10, ptr noundef %result) #8
  tail call void @kfree(ptr noundef nonnull %call.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call1, %if.then ], [ -12, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @match_strdup(ptr nocapture noundef readonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s, align 4
  %to = getelementptr inbounds %struct.substring_t, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %to, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = tail call ptr @kmemdup_nul(ptr noundef %1, i32 noundef %sub.ptr.sub, i32 noundef 3264) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @match_u64(ptr nocapture noundef readonly %s, ptr nocapture noundef writeonly %result) #0 align 64 {
entry:
  %val.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i) #8
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %val.i, align 8, !annotation !26
  %1 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s, align 4
  %to.i.i = getelementptr inbounds %struct.substring_t, ptr %s, i32 0, i32 1
  %3 = ptrtoint ptr %to.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %to.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @kmemdup_nul(ptr noundef %2, i32 noundef %sub.ptr.sub.i.i, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.match_u64int.exit_crit_edge, label %if.end.i

entry.match_u64int.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_u64int.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtoull(ptr noundef nonnull %call.i.i, i32 noundef 0, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %val.i, align 8
  %7 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %result, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  call void @kfree(ptr noundef nonnull %call.i.i) #8
  br label %match_u64int.exit

match_u64int.exit:                                ; preds = %if.end4.i, %entry.match_u64int.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end4.i ], [ -12, %entry.match_u64int.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @match_octal(ptr nocapture noundef readonly %s, ptr nocapture noundef writeonly %result) #0 align 64 {
entry:
  %endp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp.i) #8
  %0 = ptrtoint ptr %endp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp.i, align 4, !annotation !26
  %1 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s, align 4
  %to.i.i = getelementptr inbounds %struct.substring_t, ptr %s, i32 0, i32 1
  %3 = ptrtoint ptr %to.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %to.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @kmemdup_nul(ptr noundef %2, i32 noundef %sub.ptr.sub.i.i, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.match_number.exit_crit_edge, label %if.end.i

entry.match_number.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_number.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @simple_strtol(ptr noundef nonnull %call.i.i, ptr noundef nonnull %endp.i, i32 noundef 8) #8
  %5 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %endp.i, align 4
  %cmp.i = icmp eq ptr %6, %call.i.i
  br i1 %cmp.i, label %if.end.i.if.end8.i_crit_edge, label %if.else6.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.else6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call1.i, ptr %result, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else6.i, %if.end.i.if.end8.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.else6.i ], [ -22, %if.end.i.if.end8.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call.i.i) #8
  br label %match_number.exit

match_number.exit:                                ; preds = %if.end8.i, %entry.match_number.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %if.end8.i ], [ -12, %entry.match_number.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @match_hex(ptr nocapture noundef readonly %s, ptr nocapture noundef writeonly %result) #0 align 64 {
entry:
  %endp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp.i) #8
  %0 = ptrtoint ptr %endp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp.i, align 4, !annotation !26
  %1 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s, align 4
  %to.i.i = getelementptr inbounds %struct.substring_t, ptr %s, i32 0, i32 1
  %3 = ptrtoint ptr %to.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %to.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @kmemdup_nul(ptr noundef %2, i32 noundef %sub.ptr.sub.i.i, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.match_number.exit_crit_edge, label %if.end.i

entry.match_number.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_number.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @simple_strtol(ptr noundef nonnull %call.i.i, ptr noundef nonnull %endp.i, i32 noundef 16) #8
  %5 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %endp.i, align 4
  %cmp.i = icmp eq ptr %6, %call.i.i
  br i1 %cmp.i, label %if.end.i.if.end8.i_crit_edge, label %if.else6.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.else6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call1.i, ptr %result, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else6.i, %if.end.i.if.end8.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.else6.i ], [ -22, %if.end.i.if.end8.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call.i.i) #8
  br label %match_number.exit

match_number.exit:                                ; preds = %if.end8.i, %entry.match_number.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %if.end8.i ], [ -12, %entry.match_number.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @match_wildcard(ptr nocapture noundef readonly %pattern, ptr nocapture noundef readonly %str) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not44 = icmp eq i8 %1, 0
  br i1 %tobool.not44, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i8 [ %9, %sw.epilog.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %star.0.off049 = phi i1 [ %star.1.off0, %sw.epilog.while.body_crit_edge ], [ false, %entry.while.body_crit_edge ]
  %p.048 = phi ptr [ %p.1, %sw.epilog.while.body_crit_edge ], [ %pattern, %entry.while.body_crit_edge ]
  %s.047 = phi ptr [ %s.1, %sw.epilog.while.body_crit_edge ], [ %str, %entry.while.body_crit_edge ]
  %str.addr.046 = phi ptr [ %str.addr.1, %sw.epilog.while.body_crit_edge ], [ %str, %entry.while.body_crit_edge ]
  %pattern.addr.045 = phi ptr [ %pattern.addr.1, %sw.epilog.while.body_crit_edge ], [ %pattern, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %p.048 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %p.048, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %4, label %sw.default [
    i8 63, label %sw.bb
    i8 42, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i8, ptr %s.047, i32 1
  %incdec.ptr1 = getelementptr i8, ptr %p.048, i32 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %incdec.ptr3 = getelementptr i8, ptr %p.048, i32 1
  %6 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %sw.bb2.cleanup_crit_edge, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.default:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp = icmp eq i8 %2, %4
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr9 = getelementptr i8, ptr %s.047, i32 1
  %incdec.ptr10 = getelementptr i8, ptr %p.048, i32 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  br i1 %star.0.off049, label %if.end13, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr14 = getelementptr i8, ptr %str.addr.046, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13, %if.then8, %sw.bb2.sw.epilog_crit_edge, %sw.bb
  %pattern.addr.1 = phi ptr [ %pattern.addr.045, %if.then8 ], [ %pattern.addr.045, %if.end13 ], [ %pattern.addr.045, %sw.bb ], [ %incdec.ptr3, %sw.bb2.sw.epilog_crit_edge ]
  %str.addr.1 = phi ptr [ %str.addr.046, %if.then8 ], [ %incdec.ptr14, %if.end13 ], [ %str.addr.046, %sw.bb ], [ %s.047, %sw.bb2.sw.epilog_crit_edge ]
  %s.1 = phi ptr [ %incdec.ptr9, %if.then8 ], [ %incdec.ptr14, %if.end13 ], [ %incdec.ptr, %sw.bb ], [ %s.047, %sw.bb2.sw.epilog_crit_edge ]
  %p.1 = phi ptr [ %incdec.ptr10, %if.then8 ], [ %pattern.addr.045, %if.end13 ], [ %incdec.ptr1, %sw.bb ], [ %incdec.ptr3, %sw.bb2.sw.epilog_crit_edge ]
  %star.1.off0 = phi i1 [ %star.0.off049, %if.then8 ], [ true, %if.end13 ], [ %star.0.off049, %sw.bb ], [ true, %sw.bb2.sw.epilog_crit_edge ]
  %8 = ptrtoint ptr %s.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s.1, align 1
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %pattern, %entry.while.end_crit_edge ], [ %p.1, %sw.epilog.while.end_crit_edge ]
  %10 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %p.0.lcssa, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %11)
  %cmp17 = icmp eq i8 %11, 42
  %spec.select.idx = zext i1 %cmp17 to i32
  %spec.select = getelementptr i8, ptr %p.0.lcssa, i32 %spec.select.idx
  %12 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %spec.select, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not = icmp eq i8 %13, 0
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool22.not, %while.end ], [ false, %if.else.cleanup_crit_edge ], [ true, %sw.bb2.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @match_strlcpy(ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src, i32 noundef %size) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %to = getelementptr inbounds %struct.substring_t, ptr %src, i32 0, i32 1
  %0 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %to, align 4
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %size)
  %cmp.not = icmp ult i32 %sub.ptr.sub, %size
  %sub = add i32 %size, -1
  %cond = select i1 %cmp.not, i32 %sub.ptr.sub, i32 %sub
  %4 = call ptr @memcpy(ptr %dest, ptr %3, i32 %cond)
  %arrayidx = getelementptr i8, ptr %dest, i32 %cond
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %sub.ptr.sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_match_token, !1, !"__ksymtab_match_token", i1 false, i1 false}
!1 = !{!"../lib/parser.c", i32 115, i32 1}
!2 = !{ptr @__ksymtab_match_int, !3, !"__ksymtab_match_int", i1 false, i1 false}
!3 = !{!"../lib/parser.c", i32 195, i32 1}
!4 = !{ptr @__ksymtab_match_uint, !5, !"__ksymtab_match_uint", i1 false, i1 false}
!5 = !{!"../lib/parser.c", i32 218, i32 1}
!6 = !{ptr @__ksymtab_match_u64, !7, !"__ksymtab_match_u64", i1 false, i1 false}
!7 = !{!"../lib/parser.c", i32 236, i32 1}
!8 = !{ptr @__ksymtab_match_octal, !9, !"__ksymtab_match_octal", i1 false, i1 false}
!9 = !{!"../lib/parser.c", i32 252, i32 1}
!10 = !{ptr @__ksymtab_match_hex, !11, !"__ksymtab_match_hex", i1 false, i1 false}
!11 = !{!"../lib/parser.c", i32 268, i32 1}
!12 = !{ptr @__ksymtab_match_wildcard, !13, !"__ksymtab_match_wildcard", i1 false, i1 false}
!13 = !{!"../lib/parser.c", i32 320, i32 1}
!14 = !{ptr @__ksymtab_match_strlcpy, !15, !"__ksymtab_match_strlcpy", i1 false, i1 false}
!15 = !{!"../lib/parser.c", i32 345, i32 1}
!16 = !{ptr @__ksymtab_match_strdup, !17, !"__ksymtab_match_strdup", i1 false, i1 false}
!17 = !{!"../lib/parser.c", i32 362, i32 1}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"auto-init"}
