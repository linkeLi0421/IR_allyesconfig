; ModuleID = '/llk/IR_all_yes/lib/cmdline.c_pt.bc'
source_filename = "../lib/cmdline.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+get_option\22, \22a\22\09"
module asm "\09.weak\09__crc_get_option\09\09\09\09"
module asm "\09.long\09__crc_get_option\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_option:\09\09\09\09\09"
module asm "\09.asciz \09\22get_option\22\09\09\09\09\09"
module asm "__kstrtabns_get_option:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_options\22, \22a\22\09"
module asm "\09.weak\09__crc_get_options\09\09\09\09"
module asm "\09.long\09__crc_get_options\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_options:\09\09\09\09\09"
module asm "\09.asciz \09\22get_options\22\09\09\09\09\09"
module asm "__kstrtabns_get_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memparse\22, \22a\22\09"
module asm "\09.weak\09__crc_memparse\09\09\09\09"
module asm "\09.long\09__crc_memparse\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memparse:\09\09\09\09\09"
module asm "\09.asciz \09\22memparse\22\09\09\09\09\09"
module asm "__kstrtabns_memparse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+next_arg\22, \22a\22\09"
module asm "\09.weak\09__crc_next_arg\09\09\09\09"
module asm "\09.long\09__crc_next_arg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_next_arg:\09\09\09\09\09"
module asm "\09.asciz \09\22next_arg\22\09\09\09\09\09"
module asm "__kstrtabns_next_arg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_get_option = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_option = external dso_local constant [0 x i8], align 1
@__ksymtab_get_option = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_option to i32), ptr @__kstrtab_get_option, ptr @__kstrtabns_get_option }, section "___ksymtab+get_option", align 4
@__kstrtab_get_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_options = external dso_local constant [0 x i8], align 1
@__ksymtab_get_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_options to i32), ptr @__kstrtab_get_options, ptr @__kstrtabns_get_options }, section "___ksymtab+get_options", align 4
@__kstrtab_memparse = external dso_local constant [0 x i8], align 1
@__kstrtabns_memparse = external dso_local constant [0 x i8], align 1
@__ksymtab_memparse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memparse to i32), ptr @__kstrtab_memparse, ptr @__kstrtabns_memparse }, section "___ksymtab+memparse", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_next_arg = external dso_local constant [0 x i8], align 1
@__kstrtabns_next_arg = external dso_local constant [0 x i8], align 1
@__ksymtab_next_arg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @next_arg to i32), ptr @__kstrtab_next_arg, ptr @__kstrtabns_next_arg }, section "___ksymtab+next_arg", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 45]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 44, i64 45]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 45]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 44, i64 45]
@__sancov_gen_cov_switch_values.4 = internal global [14 x i64] [i64 12, i64 8, i64 69, i64 71, i64 75, i64 77, i64 80, i64 84, i64 101, i64 103, i64 107, i64 109, i64 112, i64 116]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_get_option, ptr @__ksymtab_get_options, ptr @__ksymtab_memparse, ptr @__ksymtab_next_arg], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_option(ptr noundef %str, ptr noundef writeonly %pint) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %str, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.else [
    i8 0, label %lor.lhs.false.cleanup_crit_edge
    i8 45, label %if.then3
  ]

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i8, ptr %1, i32 1
  %call = tail call i64 @simple_strtoull(ptr noundef %incdec.ptr, ptr noundef %str, i32 noundef 0) #8
  %5 = trunc i64 %call to i32
  %conv4 = sub i32 0, %5
  br label %if.end7

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i64 @simple_strtoull(ptr noundef nonnull %1, ptr noundef %str, i32 noundef 0) #8
  %conv6 = trunc i64 %call5 to i32
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %cur.0 = phi ptr [ %incdec.ptr, %if.then3 ], [ %1, %if.else ]
  %value.0 = phi i32 [ %conv4, %if.then3 ], [ %conv6, %if.else ]
  %tobool8.not = icmp eq ptr %pint, null
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %pint to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %value.0, ptr %pint, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %7 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %str, align 4
  %cmp11 = icmp eq ptr %cur.0, %8
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %10, label %if.end25 [
    i8 44, label %if.then18
    i8 45, label %if.end14.cleanup_crit_edge
  ]

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr19 = getelementptr i8, ptr %8, i32 1
  %12 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %incdec.ptr19, ptr %str, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then18, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then18 ], [ 1, %if.end25 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 3, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_options(ptr noundef %str, i32 noundef %nints, ptr noundef %ints) #0 align 64 {
entry:
  %str.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nints)
  %cmp = icmp eq i32 %nints, 0
  %not.cmp = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nints)
  %cmp172 = icmp sgt i32 %nints, 1
  %brmerge73 = or i1 %cmp, %cmp172
  br i1 %brmerge73, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %i.074 = phi i32 [ %i.0.be, %while.cond.backedge.while.body_crit_edge ], [ 1, %entry.while.body_crit_edge ]
  %cond.idx = select i1 %cmp, i32 0, i32 %i.074
  %cond = getelementptr i32, ptr %ints, i32 %cond.idx
  %1 = ptrtoint ptr %str.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %str.addr, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %lor.lhs.false.i

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

lor.lhs.false.i:                                  ; preds = %while.body
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %4, label %if.else.i [
    i8 0, label %lor.lhs.false.i.while.end_crit_edge
    i8 45, label %if.then3.i
  ]

lor.lhs.false.i.while.end_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.then3.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i = getelementptr i8, ptr %2, i32 1
  %call.i = call i64 @simple_strtoull(ptr noundef %incdec.ptr.i, ptr noundef nonnull %str.addr, i32 noundef 0) #8
  %6 = trunc i64 %call.i to i32
  %conv4.i = sub i32 0, %6
  br label %if.end7.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = call i64 @simple_strtoull(ptr noundef nonnull %2, ptr noundef nonnull %str.addr, i32 noundef 0) #8
  %conv6.i = trunc i64 %call5.i to i32
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then3.i
  %cur.0.i = phi ptr [ %incdec.ptr.i, %if.then3.i ], [ %2, %if.else.i ]
  %value.0.i = phi i32 [ %conv4.i, %if.then3.i ], [ %conv6.i, %if.else.i ]
  %tobool8.not.i = icmp eq ptr %cond, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end10.i_crit_edge, label %if.then9.i

if.end7.i.if.end10.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %value.0.i, ptr %cond, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end10.i_crit_edge
  %8 = ptrtoint ptr %str.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %str.addr, align 4
  %cmp11.i = icmp eq ptr %cur.0.i, %9
  br i1 %cmp11.i, label %if.end10.i.while.end_crit_edge, label %if.end14.i

if.end10.i.while.end_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end14.i:                                       ; preds = %if.end10.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %11, label %19 [
    i8 44, label %if.end17
    i8 45, label %if.then5
  ]

if.then5:                                         ; preds = %if.end14.i
  %sub = sub i32 %nints, %i.074
  %13 = ptrtoint ptr %str.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %str.addr, align 4
  %incdec.ptr.i45 = getelementptr i8, ptr %14, i32 1
  store ptr %incdec.ptr.i45, ptr %str.addr, align 4
  %call.i46 = call i32 @simple_strtol(ptr noundef %incdec.ptr.i45, ptr noundef null, i32 noundef 0) #8
  %15 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not9.i66 = icmp ne i32 %sub, 0
  %tobool.not9.i = select i1 %not.cmp, i1 %tobool.not9.i66, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i46, i32 %16)
  %cmp10.i = icmp sgt i32 %call.i46, %16
  %or.cond11.i = select i1 %tobool.not9.i, i1 %cmp10.i, i1 false
  br i1 %or.cond11.i, label %if.then5.for.body.i_crit_edge, label %if.then5.cleanup21_crit_edge

if.then5.cleanup21_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

if.then5.for.body.i_crit_edge:                    ; preds = %if.then5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then5.for.body.i_crit_edge
  %x.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %16, %if.then5.for.body.i_crit_edge ]
  %n.addr.013.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %sub, %if.then5.for.body.i_crit_edge ]
  %pint.addr.012.i = phi ptr [ %incdec.ptr1.i, %for.body.i.for.body.i_crit_edge ], [ %cond, %if.then5.for.body.i_crit_edge ]
  %incdec.ptr1.i = getelementptr i32, ptr %pint.addr.012.i, i32 1
  %17 = ptrtoint ptr %pint.addr.012.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %x.014.i, ptr %pint.addr.012.i, align 4
  %inc.i = add nsw i32 %x.014.i, 1
  %dec.i = add i32 %n.addr.013.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i47 = icmp ne i32 %dec.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %call.i46)
  %cmp.i = icmp slt i32 %inc.i, %call.i46
  %or.cond.i = select i1 %tobool.not.i47, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup21_crit_edge

for.body.i.cleanup21_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end17:                                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr19.i = getelementptr i8, ptr %9, i32 1
  %18 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %incdec.ptr19.i, ptr %str.addr, align 4
  %inc = add i32 %i.074, 1
  br label %while.cond.backedge

19:                                               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc60 = add i32 %i.074, 1
  br label %while.end

cleanup21:                                        ; preds = %for.body.i.cleanup21_crit_edge, %if.then5.cleanup21_crit_edge
  %sub.i = sub i32 %call.i46, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp12 = icmp sgt i32 %sub.i, -1
  %20 = call i32 @llvm.smax.i32(i32 %sub.i, i32 0)
  %spec.select = add i32 %i.074, %20
  br i1 %cmp12, label %cleanup21.while.cond.backedge_crit_edge, label %cleanup21.while.end_crit_edge

cleanup21.while.end_crit_edge:                    ; preds = %cleanup21
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

cleanup21.while.cond.backedge_crit_edge:          ; preds = %cleanup21
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cleanup21.while.cond.backedge_crit_edge, %if.end17
  %i.0.be = phi i32 [ %spec.select, %cleanup21.while.cond.backedge_crit_edge ], [ %inc, %if.end17 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.be, i32 %nints)
  %cmp1 = icmp slt i32 %i.0.be, %nints
  %brmerge = or i1 %cmp, %cmp1
  br i1 %brmerge, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %cleanup21.while.end_crit_edge, %19, %if.end10.i.while.end_crit_edge, %lor.lhs.false.i.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %i.4 = phi i32 [ %inc60, %19 ], [ 1, %entry.while.end_crit_edge ], [ %i.074, %if.end10.i.while.end_crit_edge ], [ %i.074, %while.body.while.end_crit_edge ], [ %i.074, %lor.lhs.false.i.while.end_crit_edge ], [ %spec.select, %cleanup21.while.end_crit_edge ], [ %i.0.be, %while.cond.backedge.while.end_crit_edge ]
  %sub24 = add i32 %i.4, -1
  %21 = ptrtoint ptr %ints to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub24, ptr %ints, align 4
  %22 = ptrtoint ptr %str.addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %str.addr, align 4
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @memparse(ptr noundef %ptr, ptr noundef writeonly %retptr) #0 align 64 {
entry:
  %endptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endptr) #8
  %0 = ptrtoint ptr %endptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endptr, align 4, !annotation !16
  %call = call i64 @simple_strtoull(ptr noundef %ptr, ptr noundef nonnull %endptr, i32 noundef 0) #8
  %1 = ptrtoint ptr %endptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %endptr, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %4, label %entry.sw.epilog_crit_edge [
    i8 69, label %entry.sw.bb_crit_edge
    i8 101, label %entry.sw.bb_crit_edge18
    i8 80, label %entry.sw.bb1_crit_edge
    i8 112, label %entry.sw.bb1_crit_edge19
    i8 84, label %entry.sw.bb3_crit_edge
    i8 116, label %entry.sw.bb3_crit_edge20
    i8 71, label %entry.sw.bb5_crit_edge
    i8 103, label %entry.sw.bb5_crit_edge21
    i8 77, label %entry.sw.bb7_crit_edge
    i8 109, label %entry.sw.bb7_crit_edge22
    i8 75, label %entry.sw.bb9_crit_edge
    i8 107, label %entry.sw.bb9_crit_edge23
  ]

entry.sw.bb9_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb7_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

entry.sw.bb5_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb3_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb1_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge18
  %shl = shl i64 %call, 10
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge19
  %ret.0 = phi i64 [ %call, %entry.sw.bb1_crit_edge ], [ %call, %entry.sw.bb1_crit_edge19 ], [ %shl, %sw.bb ]
  %shl2 = shl i64 %ret.0, 10
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb1, %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge20
  %ret.1 = phi i64 [ %call, %entry.sw.bb3_crit_edge ], [ %call, %entry.sw.bb3_crit_edge20 ], [ %shl2, %sw.bb1 ]
  %shl4 = shl i64 %ret.1, 10
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb3, %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge21
  %ret.2 = phi i64 [ %call, %entry.sw.bb5_crit_edge ], [ %call, %entry.sw.bb5_crit_edge21 ], [ %shl4, %sw.bb3 ]
  %shl6 = shl i64 %ret.2, 10
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb5, %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge22
  %ret.3 = phi i64 [ %call, %entry.sw.bb7_crit_edge ], [ %call, %entry.sw.bb7_crit_edge22 ], [ %shl6, %sw.bb5 ]
  %shl8 = shl i64 %ret.3, 10
  br label %sw.bb9

sw.bb9:                                           ; preds = %sw.bb7, %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge23
  %ret.4 = phi i64 [ %call, %entry.sw.bb9_crit_edge ], [ %call, %entry.sw.bb9_crit_edge23 ], [ %shl8, %sw.bb7 ]
  %shl10 = shl i64 %ret.4, 10
  %incdec.ptr = getelementptr i8, ptr %2, i32 1
  %6 = ptrtoint ptr %endptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %incdec.ptr, ptr %endptr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %entry.sw.epilog_crit_edge
  %ret.5 = phi i64 [ %call, %entry.sw.epilog_crit_edge ], [ %shl10, %sw.bb9 ]
  %tobool.not = icmp eq ptr %retptr, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %endptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %endptr, align 4
  %9 = ptrtoint ptr %retptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %retptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endptr) #8
  ret i64 %ret.5
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @parse_option_str(ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %option) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not33 = icmp eq i8 %1, 0
  br i1 %tobool.not33, label %entry.return_crit_edge, label %while.body.lr.ph

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

while.body.lr.ph:                                 ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef %option) #9
  br label %while.body

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.body.lr.ph
  %str.addr.034 = phi ptr [ %str, %while.body.lr.ph ], [ %spec.select, %while.end.while.body_crit_edge ]
  %call1 = tail call i32 @strncmp(ptr noundef %str.addr.034, ptr noundef %option, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %while.body.while.cond8.preheader_crit_edge

while.body.while.cond8.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.preheader

if.then:                                          ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %str.addr.034, i32 %call
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %3, label %if.then.while.cond8.preheader_crit_edge [
    i8 0, label %if.then.return_crit_edge
    i8 44, label %if.then.return_crit_edge39
  ]

if.then.return_crit_edge39:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then.while.cond8.preheader_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.preheader

while.cond8.preheader:                            ; preds = %if.then.while.cond8.preheader_crit_edge, %while.body.while.cond8.preheader_crit_edge
  %str.addr.2.ph = phi ptr [ %add.ptr, %if.then.while.cond8.preheader_crit_edge ], [ %str.addr.034, %while.body.while.cond8.preheader_crit_edge ]
  br label %while.cond8

while.cond8:                                      ; preds = %while.body14, %while.cond8.preheader
  %str.addr.2 = phi ptr [ %incdec.ptr, %while.body14 ], [ %str.addr.2.ph, %while.cond8.preheader ]
  %5 = ptrtoint ptr %str.addr.2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %str.addr.2, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %6, label %while.body14 [
    i8 0, label %while.cond8.while.end_crit_edge
    i8 44, label %while.cond8.while.end_crit_edge40
  ]

while.cond8.while.end_crit_edge40:                ; preds = %while.cond8
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond8.while.end_crit_edge:                  ; preds = %while.cond8
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body14:                                     ; preds = %while.cond8
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i8, ptr %str.addr.2, i32 1
  br label %while.cond8

while.end:                                        ; preds = %while.cond8.while.end_crit_edge, %while.cond8.while.end_crit_edge40
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %6)
  %cmp16 = icmp eq i8 %6, 44
  %spec.select.idx = zext i1 %cmp16 to i32
  %spec.select = getelementptr i8, ptr %str.addr.2, i32 %spec.select.idx
  %8 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %spec.select, align 1
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %while.end.return_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end.return_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %while.end.return_crit_edge, %if.then.return_crit_edge, %if.then.return_crit_edge39, %entry.return_crit_edge
  %tobool.not.lcssa = phi i1 [ false, %entry.return_crit_edge ], [ false, %while.end.return_crit_edge ], [ true, %if.then.return_crit_edge ], [ true, %if.then.return_crit_edge39 ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @next_arg(ptr noundef %args, ptr nocapture noundef writeonly %param, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %args, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %1)
  %cmp = icmp eq i8 %1, 34
  %spec.select.idx = zext i1 %cmp to i32
  %spec.select = getelementptr i8, ptr %args, i32 %spec.select.idx
  %2 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %spec.select, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not106 = icmp eq i8 %3, 0
  br i1 %tobool.not106, label %for.end.thread, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.select, ptr %param, align 4
  br label %if.then29

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %entry.for.body_crit_edge
  %5 = phi i8 [ %10, %if.end10.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %in_quote.1109 = phi i32 [ %in_quote.2, %if.end10.for.body_crit_edge ], [ %spec.select.idx, %entry.for.body_crit_edge ]
  %equals.0108 = phi i32 [ %equals.1, %if.end10.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.0107 = phi i32 [ %inc, %if.end10.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %conv3 = zext i8 %5 to i32
  %arrayidx4 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp6.not = icmp ne i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_quote.1109)
  %tobool8.not = icmp eq i32 %in_quote.1109, 0
  %or.cond = select i1 %cmp6.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %if.end10

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %equals.0108)
  %cmp11 = icmp eq i32 %equals.0108, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %5)
  %cmp16 = icmp eq i8 %5, 61
  %spec.select104 = select i1 %cmp16, i32 %i.0107, i32 0
  %equals.1 = select i1 %cmp11, i32 %spec.select104, i32 %equals.0108
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %5)
  %cmp23 = icmp eq i8 %5, 34
  %lnot.ext = zext i1 %tobool8.not to i32
  %in_quote.2 = select i1 %cmp23, i32 %lnot.ext, i32 %in_quote.1109
  %inc = add i32 %i.0107, 1
  %arrayidx = getelementptr i8, ptr %spec.select, i32 %inc
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa105 = phi i32 [ %inc, %if.end10.for.end_crit_edge ], [ %i.0107, %for.body.for.end_crit_edge ]
  %equals.0.lcssa = phi i32 [ %equals.1, %if.end10.for.end_crit_edge ], [ %equals.0108, %for.body.for.end_crit_edge ]
  %arrayidx.le = getelementptr i8, ptr %spec.select, i32 %i.0.lcssa105
  %11 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %equals.0.lcssa)
  %tobool28.not = icmp eq i32 %equals.0.lcssa, 0
  br i1 %tobool28.not, label %for.end.if.then29_crit_edge, label %if.else

for.end.if.then29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

if.then29:                                        ; preds = %for.end.if.then29_crit_edge, %for.end.thread
  %arrayidx.le122 = phi ptr [ %spec.select, %for.end.thread ], [ %arrayidx.le, %for.end.if.then29_crit_edge ]
  %i.0.lcssa105120 = phi i32 [ 0, %for.end.thread ], [ %i.0.lcssa105, %for.end.if.then29_crit_edge ]
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %val, align 4
  br label %if.end46

if.else:                                          ; preds = %for.end
  %arrayidx30 = getelementptr i8, ptr %spec.select, i32 %equals.0.lcssa
  %13 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx30, align 1
  %add.ptr31 = getelementptr i8, ptr %arrayidx30, i32 1
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr31, ptr %val, align 4
  %15 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %16)
  %cmp33 = icmp eq i8 %16, 34
  br i1 %cmp33, label %if.then35, label %if.else.if.end46_crit_edge

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then35:                                        ; preds = %if.else
  %incdec.ptr36 = getelementptr i8, ptr %add.ptr31, i32 1
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %incdec.ptr36, ptr %val, align 4
  %sub = add i32 %i.0.lcssa105, -1
  %arrayidx37 = getelementptr i8, ptr %spec.select, i32 %sub
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %19)
  %cmp39 = icmp eq i8 %19, 34
  br i1 %cmp39, label %if.then41, label %if.then35.if.end46_crit_edge

if.then35.if.end46_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then41:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx37, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.then35.if.end46_crit_edge, %if.else.if.end46_crit_edge, %if.then29
  %arrayidx.le121 = phi ptr [ %arrayidx.le, %if.else.if.end46_crit_edge ], [ %arrayidx.le, %if.then41 ], [ %arrayidx.le, %if.then35.if.end46_crit_edge ], [ %arrayidx.le122, %if.then29 ]
  %i.0.lcssa105119 = phi i32 [ %i.0.lcssa105, %if.else.if.end46_crit_edge ], [ %i.0.lcssa105, %if.then41 ], [ %i.0.lcssa105, %if.then35.if.end46_crit_edge ], [ %i.0.lcssa105120, %if.then29 ]
  br i1 %cmp, label %land.lhs.true48, label %if.end46.if.end57_crit_edge

if.end46.if.end57_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

land.lhs.true48:                                  ; preds = %if.end46
  %sub49 = add i32 %i.0.lcssa105119, -1
  %arrayidx50 = getelementptr i8, ptr %spec.select, i32 %sub49
  %21 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %22)
  %cmp52 = icmp eq i8 %22, 34
  br i1 %cmp52, label %if.then54, label %land.lhs.true48.if.end57_crit_edge

land.lhs.true48.if.end57_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then54:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx50, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %land.lhs.true48.if.end57_crit_edge, %if.end46.if.end57_crit_edge
  %24 = ptrtoint ptr %arrayidx.le121 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.le121, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool59.not = icmp eq i8 %25, 0
  br i1 %tobool59.not, label %if.end57.if.end65_crit_edge, label %if.then60

if.end57.if.end65_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %arrayidx.le121 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx.le121, align 1
  %add = add i32 %i.0.lcssa105119, 1
  %add.ptr62 = getelementptr i8, ptr %spec.select, i32 %add
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end57.if.end65_crit_edge
  %args.addr.1 = phi ptr [ %add.ptr62, %if.then60 ], [ %arrayidx.le121, %if.end57.if.end65_crit_edge ]
  %call = tail call ptr @skip_spaces(ptr noundef %args.addr.1) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__ksymtab_get_option, !1, !"__ksymtab_get_option", i1 false, i1 false}
!1 = !{!"../lib/cmdline.c", i32 80, i32 1}
!2 = !{ptr @__ksymtab_get_options, !3, !"__ksymtab_get_options", i1 false, i1 false}
!3 = !{!"../lib/cmdline.c", i32 139, i32 1}
!4 = !{ptr @__ksymtab_memparse, !5, !"__ksymtab_memparse", i1 false, i1 false}
!5 = !{!"../lib/cmdline.c", i32 191, i32 1}
!6 = !{ptr @__ksymtab_next_arg, !7, !"__ksymtab_next_arg", i1 false, i1 false}
!7 = !{!"../lib/cmdline.c", i32 275, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"auto-init"}
