; ModuleID = '/llk/IR_all_yes/lib/dim/dim.c_pt.bc'
source_filename = "../lib/dim/dim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dim_on_top\22, \22a\22\09"
module asm "\09.weak\09__crc_dim_on_top\09\09\09\09"
module asm "\09.long\09__crc_dim_on_top\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dim_on_top:\09\09\09\09\09"
module asm "\09.asciz \09\22dim_on_top\22\09\09\09\09\09"
module asm "__kstrtabns_dim_on_top:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dim_turn\22, \22a\22\09"
module asm "\09.weak\09__crc_dim_turn\09\09\09\09"
module asm "\09.long\09__crc_dim_turn\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dim_turn:\09\09\09\09\09"
module asm "\09.asciz \09\22dim_turn\22\09\09\09\09\09"
module asm "__kstrtabns_dim_turn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dim_park_on_top\22, \22a\22\09"
module asm "\09.weak\09__crc_dim_park_on_top\09\09\09\09"
module asm "\09.long\09__crc_dim_park_on_top\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dim_park_on_top:\09\09\09\09\09"
module asm "\09.asciz \09\22dim_park_on_top\22\09\09\09\09\09"
module asm "__kstrtabns_dim_park_on_top:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dim_park_tired\22, \22a\22\09"
module asm "\09.weak\09__crc_dim_park_tired\09\09\09\09"
module asm "\09.long\09__crc_dim_park_tired\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dim_park_tired:\09\09\09\09\09"
module asm "\09.asciz \09\22dim_park_tired\22\09\09\09\09\09"
module asm "__kstrtabns_dim_park_tired:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dim_calc_stats\22, \22a\22\09"
module asm "\09.weak\09__crc_dim_calc_stats\09\09\09\09"
module asm "\09.long\09__crc_dim_calc_stats\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dim_calc_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22dim_calc_stats\22\09\09\09\09\09"
module asm "__kstrtabns_dim_calc_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__kstrtab_dim_on_top = external dso_local constant [0 x i8], align 1
@__kstrtabns_dim_on_top = external dso_local constant [0 x i8], align 1
@__ksymtab_dim_on_top = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dim_on_top to i32), ptr @__kstrtab_dim_on_top, ptr @__kstrtabns_dim_on_top }, section "___ksymtab+dim_on_top", align 4
@__kstrtab_dim_turn = external dso_local constant [0 x i8], align 1
@__kstrtabns_dim_turn = external dso_local constant [0 x i8], align 1
@__ksymtab_dim_turn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dim_turn to i32), ptr @__kstrtab_dim_turn, ptr @__kstrtabns_dim_turn }, section "___ksymtab+dim_turn", align 4
@__kstrtab_dim_park_on_top = external dso_local constant [0 x i8], align 1
@__kstrtabns_dim_park_on_top = external dso_local constant [0 x i8], align 1
@__ksymtab_dim_park_on_top = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dim_park_on_top to i32), ptr @__kstrtab_dim_park_on_top, ptr @__kstrtabns_dim_park_on_top }, section "___ksymtab+dim_park_on_top", align 4
@__kstrtab_dim_park_tired = external dso_local constant [0 x i8], align 1
@__kstrtabns_dim_park_tired = external dso_local constant [0 x i8], align 1
@__ksymtab_dim_park_tired = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dim_park_tired to i32), ptr @__kstrtab_dim_park_tired, ptr @__kstrtabns_dim_park_tired }, section "___ksymtab+dim_park_tired", align 4
@__kstrtab_dim_calc_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_dim_calc_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_dim_calc_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dim_calc_stats to i32), ptr @__kstrtab_dim_calc_stats, ptr @__kstrtabns_dim_calc_stats }, section "___ksymtab+dim_calc_stats", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_dim_calc_stats, ptr @__ksymtab_dim_on_top, ptr @__ksymtab_dim_park_on_top, ptr @__ksymtab_dim_park_tired, ptr @__ksymtab_dim_turn], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dim_on_top(ptr nocapture noundef readonly %dim) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tune_state = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 8
  %0 = ptrtoint ptr %tune_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tune_state, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 0, label %entry.return_crit_edge
    i8 1, label %entry.return_crit_edge21
    i8 2, label %sw.bb1
  ]

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  %steps_left = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 10
  %3 = ptrtoint ptr %steps_left to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %steps_left, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp = icmp ugt i8 %4, 1
  br i1 %cmp, label %land.rhs, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.rhs:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %steps_right = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 9
  %5 = ptrtoint ptr %steps_right to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %steps_right, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp5 = icmp eq i8 %6, 1
  br label %return

sw.default:                                       ; preds = %entry
  %steps_right7 = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 9
  %7 = ptrtoint ptr %steps_right7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %steps_right7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp9 = icmp ugt i8 %8, 1
  br i1 %cmp9, label %land.rhs11, label %sw.default.return_crit_edge

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.rhs11:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %steps_left12 = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 10
  %9 = ptrtoint ptr %steps_left12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %steps_left12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp14 = icmp eq i8 %10, 1
  br label %return

return:                                           ; preds = %land.rhs11, %sw.default.return_crit_edge, %land.rhs, %sw.bb1.return_crit_edge, %entry.return_crit_edge, %entry.return_crit_edge21
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge21 ], [ false, %sw.bb1.return_crit_edge ], [ %cmp5, %land.rhs ], [ false, %sw.default.return_crit_edge ], [ %cmp14, %land.rhs11 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dim_turn(ptr nocapture noundef %dim) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tune_state = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 8
  %0 = ptrtoint ptr %tune_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tune_state, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 3, label %sw.bb3
    i8 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %tune_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %tune_state, align 2
  %steps_left = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 10
  %4 = ptrtoint ptr %steps_left to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %steps_left, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %tune_state to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %tune_state, align 2
  %steps_right = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 9
  %6 = ptrtoint ptr %steps_right to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %steps_right, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb1, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dim_park_on_top(ptr nocapture noundef writeonly %dim) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tune_state = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 8
  %0 = ptrtoint ptr %tune_state to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 0, ptr %tune_state, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dim_park_tired(ptr nocapture noundef writeonly %dim) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %steps_right = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 9
  %0 = ptrtoint ptr %steps_right to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %steps_right, align 1
  %steps_left = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 10
  %1 = ptrtoint ptr %steps_left to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %steps_left, align 4
  %tune_state = getelementptr inbounds %struct.dim, ptr %dim, i32 0, i32 8
  %2 = ptrtoint ptr %tune_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %tune_state, align 2
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dim_calc_stats(ptr nocapture noundef readonly %start, ptr nocapture noundef readonly %end, ptr nocapture noundef %curr_stats) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %end, align 8
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start, align 8
  %sub.i = sub i64 %1, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #5
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #8, !srcloc !19
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #8, !srcloc !20
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  %conv = trunc i64 %cond213.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %comp_ctr = getelementptr inbounds %struct.dim_sample, ptr %end, i32 0, i32 4
  %7 = ptrtoint ptr %comp_ctr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %comp_ctr, align 4
  %comp_ctr11 = getelementptr inbounds %struct.dim_sample, ptr %start, i32 0, i32 4
  %9 = ptrtoint ptr %comp_ctr11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %comp_ctr11, align 4
  %sub12 = sub i32 %8, %10
  %byte_ctr = getelementptr inbounds %struct.dim_sample, ptr %end, i32 0, i32 2
  %11 = ptrtoint ptr %byte_ctr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %byte_ctr, align 4
  %byte_ctr5 = getelementptr inbounds %struct.dim_sample, ptr %start, i32 0, i32 2
  %13 = ptrtoint ptr %byte_ctr5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %byte_ctr5, align 4
  %sub6 = sub i32 %12, %14
  %pkt_ctr = getelementptr inbounds %struct.dim_sample, ptr %end, i32 0, i32 1
  %15 = ptrtoint ptr %pkt_ctr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pkt_ctr, align 8
  %pkt_ctr2 = getelementptr inbounds %struct.dim_sample, ptr %start, i32 0, i32 1
  %17 = ptrtoint ptr %pkt_ctr2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pkt_ctr2, align 8
  %sub = sub i32 %16, %18
  %mul = mul i32 %sub, 1000
  %add17 = add i32 %conv, -1
  %sub18 = add i32 %add17, %mul
  %div = udiv i32 %sub18, %conv
  %19 = ptrtoint ptr %curr_stats to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div, ptr %curr_stats, align 4
  %mul19 = mul i32 %sub6, 1000
  %sub21 = add i32 %add17, %mul19
  %div22 = udiv i32 %sub21, %conv
  %bpms = getelementptr inbounds %struct.dim_stats, ptr %curr_stats, i32 0, i32 1
  %20 = ptrtoint ptr %bpms to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div22, ptr %bpms, align 4
  %sub24 = add i32 %conv, 63999
  %div25 = udiv i32 %sub24, %conv
  %epms = getelementptr inbounds %struct.dim_stats, ptr %curr_stats, i32 0, i32 2
  %21 = ptrtoint ptr %epms to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div25, ptr %epms, align 4
  %mul26 = mul i32 %sub12, 1000
  %sub28 = add i32 %add17, %mul26
  %div29 = udiv i32 %sub28, %conv
  %cpms = getelementptr inbounds %struct.dim_stats, ptr %curr_stats, i32 0, i32 3
  %22 = ptrtoint ptr %cpms to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div29, ptr %cpms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64000, i32 %conv)
  %cmp.not = icmp ugt i32 %conv, -64000
  br i1 %cmp.not, label %if.end.cleanup.sink.split_crit_edge, label %if.then32

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then32:                                        ; preds = %if.end
  %mul34 = mul i32 %div29, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul34)
  %cmp212 = icmp sgt i32 %mul34, -1
  br i1 %cmp212, label %if.then216, label %if.else222, !prof !21

if.then216:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %div220 = udiv i32 %mul34, %div25
  br label %cleanup.sink.split

if.else222:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %conv35 = sext i32 %mul34 to i64
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div25, i64 %conv35) #8, !srcloc !22
  %asmresult1.i = extractvalue { i64, i64 } %23, 1
  %extract.t363 = trunc i64 %asmresult1.i to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else222, %if.then216, %if.end.cleanup.sink.split_crit_edge
  %_tmp.0.off0.sink = phi i32 [ %div220, %if.then216 ], [ %extract.t363, %if.else222 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %cpe_ratio = getelementptr inbounds %struct.dim_stats, ptr %curr_stats, i32 0, i32 4
  %24 = ptrtoint ptr %cpe_ratio to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %_tmp.0.off0.sink, ptr %cpe_ratio, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_dim_on_top, !1, !"__ksymtab_dim_on_top", i1 false, i1 false}
!1 = !{!"../lib/dim/dim.c", i32 20, i32 1}
!2 = !{ptr @__ksymtab_dim_turn, !3, !"__ksymtab_dim_turn", i1 false, i1 false}
!3 = !{!"../lib/dim/dim.c", i32 38, i32 1}
!4 = !{ptr @__ksymtab_dim_park_on_top, !5, !"__ksymtab_dim_park_on_top", i1 false, i1 false}
!5 = !{!"../lib/dim/dim.c", i32 47, i32 1}
!6 = !{ptr @__ksymtab_dim_park_tired, !7, !"__ksymtab_dim_park_tired", i1 false, i1 false}
!7 = !{!"../lib/dim/dim.c", i32 55, i32 1}
!8 = !{ptr @__ksymtab_dim_calc_stats, !9, !"__ksymtab_dim_calc_stats", i1 false, i1 false}
!9 = !{!"../lib/dim/dim.c", i32 83, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 1124213, i64 1124240, i64 1124262, i64 1124290}
!20 = !{i64 1124621, i64 1124648, i64 1124681, i64 1124702, i64 1124729, i64 1124755}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2148609757, i64 2148610037, i64 2148610371, i64 2148610705}
