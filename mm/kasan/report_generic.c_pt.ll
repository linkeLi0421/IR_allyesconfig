; ModuleID = '/llk/IR_all_yes/mm/kasan/report_generic.c_pt.bc'
source_filename = "../mm/kasan/report_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__asan_report_load1_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_report_load1_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_report_load1_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_report_load1_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_report_load1_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_report_load1_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_report_load2_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_report_load2_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_report_load2_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_report_load2_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_report_load2_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_report_load2_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_report_load4_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_report_load4_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_report_load4_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_report_load4_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_report_load4_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_report_load4_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_report_load8_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_report_load8_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_report_load8_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_report_load8_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_report_load8_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_report_load8_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_report_load16_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_report_load16_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_report_load16_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_report_load16_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_report_load16_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_report_load16_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_report_store1_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_report_store1_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_report_store1_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_report_store1_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_report_store1_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_report_store1_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_report_store2_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_report_store2_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_report_store2_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_report_store2_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_report_store2_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_report_store2_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_report_store4_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_report_store4_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_report_store4_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_report_store4_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_report_store4_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_report_store4_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_report_store8_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_report_store8_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_report_store8_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_report_store8_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_report_store8_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_report_store8_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_report_store16_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_report_store16_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_report_store16_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_report_store16_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_report_store16_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_report_store16_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_report_load_n_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_report_load_n_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_report_load_n_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_report_load_n_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_report_load_n_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_report_load_n_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_report_store_n_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_report_store_n_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_report_store_n_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_report_store_n_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_report_store_n_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_report_store_n_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kasan_access_info = type { ptr, ptr, i32, i8, i32 }

@.str = private unnamed_addr constant [14 x i8] c"out-of-bounds\00", align 1
@__kstrtab___asan_report_load1_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_report_load1_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_report_load1_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_report_load1_noabort to i32), ptr @__kstrtab___asan_report_load1_noabort, ptr @__kstrtabns___asan_report_load1_noabort }, section "___ksymtab+__asan_report_load1_noabort", align 4
@__kstrtab___asan_report_load2_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_report_load2_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_report_load2_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_report_load2_noabort to i32), ptr @__kstrtab___asan_report_load2_noabort, ptr @__kstrtabns___asan_report_load2_noabort }, section "___ksymtab+__asan_report_load2_noabort", align 4
@__kstrtab___asan_report_load4_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_report_load4_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_report_load4_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_report_load4_noabort to i32), ptr @__kstrtab___asan_report_load4_noabort, ptr @__kstrtabns___asan_report_load4_noabort }, section "___ksymtab+__asan_report_load4_noabort", align 4
@__kstrtab___asan_report_load8_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_report_load8_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_report_load8_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_report_load8_noabort to i32), ptr @__kstrtab___asan_report_load8_noabort, ptr @__kstrtabns___asan_report_load8_noabort }, section "___ksymtab+__asan_report_load8_noabort", align 4
@__kstrtab___asan_report_load16_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_report_load16_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_report_load16_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_report_load16_noabort to i32), ptr @__kstrtab___asan_report_load16_noabort, ptr @__kstrtabns___asan_report_load16_noabort }, section "___ksymtab+__asan_report_load16_noabort", align 4
@__kstrtab___asan_report_store1_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_report_store1_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_report_store1_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_report_store1_noabort to i32), ptr @__kstrtab___asan_report_store1_noabort, ptr @__kstrtabns___asan_report_store1_noabort }, section "___ksymtab+__asan_report_store1_noabort", align 4
@__kstrtab___asan_report_store2_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_report_store2_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_report_store2_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_report_store2_noabort to i32), ptr @__kstrtab___asan_report_store2_noabort, ptr @__kstrtabns___asan_report_store2_noabort }, section "___ksymtab+__asan_report_store2_noabort", align 4
@__kstrtab___asan_report_store4_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_report_store4_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_report_store4_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_report_store4_noabort to i32), ptr @__kstrtab___asan_report_store4_noabort, ptr @__kstrtabns___asan_report_store4_noabort }, section "___ksymtab+__asan_report_store4_noabort", align 4
@__kstrtab___asan_report_store8_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_report_store8_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_report_store8_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_report_store8_noabort to i32), ptr @__kstrtab___asan_report_store8_noabort, ptr @__kstrtabns___asan_report_store8_noabort }, section "___ksymtab+__asan_report_store8_noabort", align 4
@__kstrtab___asan_report_store16_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_report_store16_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_report_store16_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_report_store16_noabort to i32), ptr @__kstrtab___asan_report_store16_noabort, ptr @__kstrtabns___asan_report_store16_noabort }, section "___ksymtab+__asan_report_store16_noabort", align 4
@__kstrtab___asan_report_load_n_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_report_load_n_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_report_load_n_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_report_load_n_noabort to i32), ptr @__kstrtab___asan_report_load_n_noabort, ptr @__kstrtabns___asan_report_load_n_noabort }, section "___ksymtab+__asan_report_load_n_noabort", align 4
@__kstrtab___asan_report_store_n_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_report_store_n_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_report_store_n_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_report_store_n_noabort to i32), ptr @__kstrtab___asan_report_store_n_noabort, ptr @__kstrtabns___asan_report_store_n_noabort }, section "___ksymtab+__asan_report_store_n_noabort", align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"unknown-crash\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"slab-out-of-bounds\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"global-out-of-bounds\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"stack-out-of-bounds\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"use-after-free\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"alloca-out-of-bounds\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"vmalloc-out-of-bounds\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"null-ptr-deref\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"user-memory-access\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"wild-memory-access\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab___asan_report_load16_noabort, ptr @__ksymtab___asan_report_load1_noabort, ptr @__ksymtab___asan_report_load2_noabort, ptr @__ksymtab___asan_report_load4_noabort, ptr @__ksymtab___asan_report_load8_noabort, ptr @__ksymtab___asan_report_load_n_noabort, ptr @__ksymtab___asan_report_store16_noabort, ptr @__ksymtab___asan_report_store1_noabort, ptr @__ksymtab___asan_report_store2_noabort, ptr @__ksymtab___asan_report_store4_noabort, ptr @__ksymtab___asan_report_store8_noabort, ptr @__ksymtab___asan_report_store_n_noabort], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly uwtable(sync)
define dso_local ptr @kasan_find_first_bad_addr(ptr noundef %addr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %add.ptr = getelementptr i8, ptr %addr, i32 %size
  %cmp6 = icmp ugt ptr %add.ptr, %addr
  br i1 %cmp6, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.body, %entry
  %p.07 = phi ptr [ %add.ptr1, %while.body ], [ %addr, %entry ]
  %0 = ptrtoint ptr %p.07 to i32
  %shr.i = lshr i32 %0, 3
  %1 = inttoptr i32 %shr.i to ptr
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1627389952
  %2 = load i8, ptr %add.ptr.i, align 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %add.ptr1 = getelementptr i8, ptr %p.07, i32 8
  %cmp = icmp ult ptr %add.ptr1, %add.ptr
  br i1 %cmp, label %land.rhs, label %while.end

while.end:                                        ; preds = %while.body, %land.rhs, %entry
  %p.0.lcssa = phi ptr [ %addr, %entry ], [ %add.ptr1, %while.body ], [ %p.07, %land.rhs ]
  ret ptr %p.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync)
define dso_local nonnull ptr @kasan_get_bug_type(ptr nocapture noundef readonly %info) local_unnamed_addr #1 align 64 {
entry:
  %0 = load ptr, ptr %info, align 4
  %access_size = getelementptr inbounds %struct.kasan_access_info, ptr %info, i32 0, i32 2
  %1 = load i32, ptr %access_size, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 %1
  %cmp = icmp ult ptr %add.ptr, %0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp.i.not = icmp ult ptr %0, inttoptr (i32 -1090519040 to ptr)
  br i1 %cmp.i.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %first_bad_addr.i = getelementptr inbounds %struct.kasan_access_info, ptr %info, i32 0, i32 1
  %2 = load ptr, ptr %first_bad_addr.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %shr.i.i = lshr i32 %3, 3
  %4 = inttoptr i32 %shr.i.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 -1627389952
  %5 = load i8, ptr %add.ptr.i.i, align 1
  %6 = add i8 %5, -1
  %7 = icmp ult i8 %6, 7
  %incdec.ptr.i = getelementptr i8, ptr %4, i32 -1627389951
  %shadow_addr.0.i = select i1 %7, ptr %incdec.ptr.i, ptr %add.ptr.i.i
  %8 = load i8, ptr %shadow_addr.0.i, align 1
  switch i8 %8, label %return [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb.i
    i8 4, label %sw.bb.i
    i8 5, label %sw.bb.i
    i8 6, label %sw.bb.i
    i8 7, label %sw.bb.i
    i8 -2, label %sw.bb6.i
    i8 -4, label %sw.bb6.i
    i8 -7, label %sw.bb7.i
    i8 -15, label %sw.bb8.i
    i8 -14, label %sw.bb8.i
    i8 -13, label %sw.bb8.i
    i8 -12, label %sw.bb8.i
    i8 -1, label %sw.bb9.i
    i8 -5, label %sw.bb9.i
    i8 -6, label %sw.bb9.i
    i8 -54, label %sw.bb10.i
    i8 -53, label %sw.bb10.i
    i8 -8, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %if.then3, %if.then3, %if.then3, %if.then3, %if.then3, %if.then3, %if.then3, %if.then3
  br label %return

sw.bb6.i:                                         ; preds = %if.then3, %if.then3
  br label %return

sw.bb7.i:                                         ; preds = %if.then3
  br label %return

sw.bb8.i:                                         ; preds = %if.then3, %if.then3, %if.then3, %if.then3
  br label %return

sw.bb9.i:                                         ; preds = %if.then3, %if.then3, %if.then3
  br label %return

sw.bb10.i:                                        ; preds = %if.then3, %if.then3
  br label %return

sw.bb11.i:                                        ; preds = %if.then3
  br label %return

if.end5:                                          ; preds = %if.end
  %cmp.i12 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  %cmp2.i = icmp ult ptr %0, inttoptr (i32 -1226833920 to ptr)
  %.str.9..str.10.i = select i1 %cmp2.i, ptr @.str.9, ptr @.str.10
  %bug_type.0.i13 = select i1 %cmp.i12, ptr @.str.8, ptr %.str.9..str.10.i
  br label %return

return:                                           ; preds = %if.end5, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb.i, %if.then3, %entry
  %retval.0 = phi ptr [ %bug_type.0.i13, %if.end5 ], [ @.str, %entry ], [ @.str.1, %if.then3 ], [ @.str.7, %sw.bb11.i ], [ @.str.6, %sw.bb10.i ], [ @.str.5, %sw.bb9.i ], [ @.str.4, %sw.bb8.i ], [ @.str.3, %sw.bb7.i ], [ @.str.2, %sw.bb6.i ], [ @.str, %sw.bb.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_metadata_fetch_row(ptr noundef %buffer, ptr noundef %row) local_unnamed_addr #2 align 64 {
entry:
  %0 = ptrtoint ptr %row to i32
  %shr.i = lshr i32 %0, 3
  %1 = inttoptr i32 %shr.i to ptr
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1627389952
  %call1 = tail call ptr @__memcpy(ptr noundef %buffer, ptr noundef %add.ptr.i, i32 noundef 16) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_report_load1_noabort(i32 noundef %addr) #2 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 1, i1 noundef zeroext false, i32 noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kasan_report(i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_report_load2_noabort(i32 noundef %addr) #2 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 2, i1 noundef zeroext false, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_report_load4_noabort(i32 noundef %addr) #2 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 4, i1 noundef zeroext false, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_report_load8_noabort(i32 noundef %addr) #2 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 8, i1 noundef zeroext false, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_report_load16_noabort(i32 noundef %addr) #2 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 16, i1 noundef zeroext false, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_report_store1_noabort(i32 noundef %addr) #2 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 1, i1 noundef zeroext true, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_report_store2_noabort(i32 noundef %addr) #2 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 2, i1 noundef zeroext true, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_report_store4_noabort(i32 noundef %addr) #2 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 4, i1 noundef zeroext true, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_report_store8_noabort(i32 noundef %addr) #2 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 8, i1 noundef zeroext true, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_report_store16_noabort(i32 noundef %addr) #2 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 16, i1 noundef zeroext true, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_report_load_n_noabort(i32 noundef %addr, i32 noundef %size) #2 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef %size, i1 noundef zeroext false, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_report_store_n_noabort(i32 noundef %addr, i32 noundef %size) #2 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef %size, i1 noundef zeroext true, i32 noundef %1) #5
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }

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
