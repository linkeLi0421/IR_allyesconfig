; ModuleID = '/llk/IR_all_yes/lib/xxhash.c_pt.bc'
source_filename = "../lib/xxhash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xxh32_copy_state\22, \22a\22\09"
module asm "\09.weak\09__crc_xxh32_copy_state\09\09\09\09"
module asm "\09.long\09__crc_xxh32_copy_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh32_copy_state:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh32_copy_state\22\09\09\09\09\09"
module asm "__kstrtabns_xxh32_copy_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xxh64_copy_state\22, \22a\22\09"
module asm "\09.weak\09__crc_xxh64_copy_state\09\09\09\09"
module asm "\09.long\09__crc_xxh64_copy_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh64_copy_state:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh64_copy_state\22\09\09\09\09\09"
module asm "__kstrtabns_xxh64_copy_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xxh32\22, \22a\22\09"
module asm "\09.weak\09__crc_xxh32\09\09\09\09"
module asm "\09.long\09__crc_xxh32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh32:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh32\22\09\09\09\09\09"
module asm "__kstrtabns_xxh32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xxh64\22, \22a\22\09"
module asm "\09.weak\09__crc_xxh64\09\09\09\09"
module asm "\09.long\09__crc_xxh64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh64:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh64\22\09\09\09\09\09"
module asm "__kstrtabns_xxh64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xxh32_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_xxh32_reset\09\09\09\09"
module asm "\09.long\09__crc_xxh32_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh32_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh32_reset\22\09\09\09\09\09"
module asm "__kstrtabns_xxh32_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xxh64_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_xxh64_reset\09\09\09\09"
module asm "\09.long\09__crc_xxh64_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh64_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh64_reset\22\09\09\09\09\09"
module asm "__kstrtabns_xxh64_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xxh32_update\22, \22a\22\09"
module asm "\09.weak\09__crc_xxh32_update\09\09\09\09"
module asm "\09.long\09__crc_xxh32_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh32_update:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh32_update\22\09\09\09\09\09"
module asm "__kstrtabns_xxh32_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xxh32_digest\22, \22a\22\09"
module asm "\09.weak\09__crc_xxh32_digest\09\09\09\09"
module asm "\09.long\09__crc_xxh32_digest\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh32_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh32_digest\22\09\09\09\09\09"
module asm "__kstrtabns_xxh32_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xxh64_update\22, \22a\22\09"
module asm "\09.weak\09__crc_xxh64_update\09\09\09\09"
module asm "\09.long\09__crc_xxh64_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh64_update:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh64_update\22\09\09\09\09\09"
module asm "__kstrtabns_xxh64_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xxh64_digest\22, \22a\22\09"
module asm "\09.weak\09__crc_xxh64_digest\09\09\09\09"
module asm "\09.long\09__crc_xxh64_digest\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh64_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh64_digest\22\09\09\09\09\09"
module asm "__kstrtabns_xxh64_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xxh32_state = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32 }
%struct.xxh64_state = type { i64, i64, i64, i64, i64, [4 x i64], i32 }

@__kstrtab_xxh32_copy_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh32_copy_state = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh32_copy_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh32_copy_state to i32), ptr @__kstrtab_xxh32_copy_state, ptr @__kstrtabns_xxh32_copy_state }, section "___ksymtab+xxh32_copy_state", align 4
@__kstrtab_xxh64_copy_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh64_copy_state = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh64_copy_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh64_copy_state to i32), ptr @__kstrtab_xxh64_copy_state, ptr @__kstrtabns_xxh64_copy_state }, section "___ksymtab+xxh64_copy_state", align 4
@__kstrtab_xxh32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh32 = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh32 to i32), ptr @__kstrtab_xxh32, ptr @__kstrtabns_xxh32 }, section "___ksymtab+xxh32", align 4
@__kstrtab_xxh64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh64 = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh64 to i32), ptr @__kstrtab_xxh64, ptr @__kstrtabns_xxh64 }, section "___ksymtab+xxh64", align 4
@__kstrtab_xxh32_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh32_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh32_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh32_reset to i32), ptr @__kstrtab_xxh32_reset, ptr @__kstrtabns_xxh32_reset }, section "___ksymtab+xxh32_reset", align 4
@__kstrtab_xxh64_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh64_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh64_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh64_reset to i32), ptr @__kstrtab_xxh64_reset, ptr @__kstrtabns_xxh64_reset }, section "___ksymtab+xxh64_reset", align 4
@__kstrtab_xxh32_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh32_update = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh32_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh32_update to i32), ptr @__kstrtab_xxh32_update, ptr @__kstrtabns_xxh32_update }, section "___ksymtab+xxh32_update", align 4
@__kstrtab_xxh32_digest = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh32_digest = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh32_digest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh32_digest to i32), ptr @__kstrtab_xxh32_digest, ptr @__kstrtabns_xxh32_digest }, section "___ksymtab+xxh32_digest", align 4
@__kstrtab_xxh64_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh64_update = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh64_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh64_update to i32), ptr @__kstrtab_xxh64_update, ptr @__kstrtabns_xxh64_update }, section "___ksymtab+xxh64_update", align 4
@__kstrtab_xxh64_digest = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh64_digest = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh64_digest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh64_digest to i32), ptr @__kstrtab_xxh64_digest, ptr @__kstrtabns_xxh64_digest }, section "___ksymtab+xxh64_digest", align 4
@__UNIQUE_ID_file106 = internal constant [23 x i8] c"xxhash.file=lib/xxhash\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [28 x i8] c"xxhash.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description108 = internal constant [26 x i8] c"xxhash.description=xxHash\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_description108, ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_xxh32, ptr @__ksymtab_xxh32_copy_state, ptr @__ksymtab_xxh32_digest, ptr @__ksymtab_xxh32_reset, ptr @__ksymtab_xxh32_update, ptr @__ksymtab_xxh64, ptr @__ksymtab_xxh64_copy_state, ptr @__ksymtab_xxh64_digest, ptr @__ksymtab_xxh64_reset, ptr @__ksymtab_xxh64_update], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xxh32_copy_state(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = call ptr @memcpy(ptr %dst, ptr %src, i32 44)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xxh64_copy_state(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = call ptr @memcpy(ptr %dst, ptr %src, i32 80)
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xxh32(ptr noundef readonly %input, i32 noundef %len, i32 noundef %seed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %input125 = ptrtoint ptr %input to i32
  %add.ptr = getelementptr i8, ptr %input, i32 %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %len)
  %cmp = icmp ugt i32 %len, 15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -16
  %add2 = add i32 %seed, 606290984
  %add3 = add i32 %seed, -2048144777
  %sub = add i32 %seed, 1640531535
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then
  %p.0 = phi ptr [ %input, %if.then ], [ %add.ptr15, %do.body.do.body_crit_edge ]
  %v1.0 = phi i32 [ %add2, %if.then ], [ %mul1.i, %do.body.do.body_crit_edge ]
  %v2.0 = phi i32 [ %add3, %if.then ], [ %mul1.i106, %do.body.do.body_crit_edge ]
  %v3.0 = phi i32 [ %seed, %if.then ], [ %mul1.i110, %do.body.do.body_crit_edge ]
  %v4.0 = phi i32 [ %sub, %if.then ], [ %mul1.i114, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p.0 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %p.0, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %mul.i = mul i32 %2, -2048144777
  %add.i = add i32 %mul.i, %v1.0
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add.i, i32 %add.i, i32 13) #6
  %mul1.i = mul i32 %or.i, -1640531535
  %add.ptr6 = getelementptr i8, ptr %p.0, i32 4
  %3 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr6, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %mul.i103 = mul i32 %5, -2048144777
  %add.i104 = add i32 %mul.i103, %v2.0
  %or.i105 = tail call i32 @llvm.fshl.i32(i32 %add.i104, i32 %add.i104, i32 13) #6
  %mul1.i106 = mul i32 %or.i105, -1640531535
  %add.ptr9 = getelementptr i8, ptr %p.0, i32 8
  %6 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr9, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %mul.i107 = mul i32 %8, -2048144777
  %add.i108 = add i32 %mul.i107, %v3.0
  %or.i109 = tail call i32 @llvm.fshl.i32(i32 %add.i108, i32 %add.i108, i32 13) #6
  %mul1.i110 = mul i32 %or.i109, -1640531535
  %add.ptr12 = getelementptr i8, ptr %p.0, i32 12
  %9 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr12, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %mul.i111 = mul i32 %11, -2048144777
  %add.i112 = add i32 %mul.i111, %v4.0
  %or.i113 = tail call i32 @llvm.fshl.i32(i32 %add.i112, i32 %add.i112, i32 13) #6
  %mul1.i114 = mul i32 %or.i113, -1640531535
  %add.ptr15 = getelementptr i8, ptr %p.0, i32 16
  %cmp16.not = icmp ugt ptr %add.ptr15, %add.ptr1
  br i1 %cmp16.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %or = tail call i32 @llvm.fshl.i32(i32 %mul1.i, i32 %mul1.i, i32 1)
  %or19 = tail call i32 @llvm.fshl.i32(i32 %mul1.i106, i32 %mul1.i106, i32 7)
  %add20 = add i32 %or19, %or
  %or23 = tail call i32 @llvm.fshl.i32(i32 %mul1.i110, i32 %mul1.i110, i32 12)
  %add24 = add i32 %add20, %or23
  %or27 = tail call i32 @llvm.fshl.i32(i32 %mul1.i114, i32 %mul1.i114, i32 18)
  %add28 = add i32 %add24, %or27
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add29 = add i32 %seed, 374761393
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %p.1 = phi ptr [ %add.ptr15, %do.end ], [ %input, %if.else ]
  %h32.0 = phi i32 [ %add28, %do.end ], [ %add29, %if.else ]
  %add30 = add i32 %h32.0, %len
  %add.ptr31115 = getelementptr i8, ptr %p.1, i32 4
  %cmp32.not116 = icmp ugt ptr %add.ptr31115, %add.ptr
  br i1 %cmp32.not116, label %if.end.while.cond40.preheader_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.cond40.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond40.preheader

while.cond40.preheader:                           ; preds = %while.body.while.cond40.preheader_crit_edge, %if.end.while.cond40.preheader_crit_edge
  %p.2.lcssa = phi ptr [ %p.1, %if.end.while.cond40.preheader_crit_edge ], [ %add.ptr31119, %while.body.while.cond40.preheader_crit_edge ]
  %h32.1.lcssa = phi i32 [ %add30, %if.end.while.cond40.preheader_crit_edge ], [ %mul38, %while.body.while.cond40.preheader_crit_edge ]
  %cmp41121 = icmp ult ptr %p.2.lcssa, %add.ptr
  br i1 %cmp41121, label %while.body42.preheader, label %while.cond40.preheader.while.end49_crit_edge

while.cond40.preheader.while.end49_crit_edge:     ; preds = %while.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end49

while.body42.preheader:                           ; preds = %while.cond40.preheader
  %p.2.lcssa126 = ptrtoint ptr %p.2.lcssa to i32
  %12 = add i32 %input125, %len
  %13 = sub i32 %12, %p.2.lcssa126
  %uglygep = getelementptr i8, ptr %p.2.lcssa, i32 %13
  br label %while.body42

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %add.ptr31119 = phi ptr [ %add.ptr31, %while.body.while.body_crit_edge ], [ %add.ptr31115, %if.end.while.body_crit_edge ]
  %h32.1118 = phi i32 [ %mul38, %while.body.while.body_crit_edge ], [ %add30, %if.end.while.body_crit_edge ]
  %p.2117 = phi ptr [ %add.ptr31119, %while.body.while.body_crit_edge ], [ %p.1, %if.end.while.body_crit_edge ]
  %14 = ptrtoint ptr %p.2117 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %p.2117, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %mul = mul i32 %16, -1028477379
  %add34 = add i32 %mul, %h32.1118
  %or37 = tail call i32 @llvm.fshl.i32(i32 %add34, i32 %add34, i32 17)
  %mul38 = mul i32 %or37, 668265263
  %add.ptr31 = getelementptr i8, ptr %add.ptr31119, i32 4
  %cmp32.not = icmp ugt ptr %add.ptr31, %add.ptr
  br i1 %cmp32.not, label %while.body.while.cond40.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.cond40.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond40.preheader

while.body42:                                     ; preds = %while.body42.while.body42_crit_edge, %while.body42.preheader
  %h32.2123 = phi i32 [ %mul48, %while.body42.while.body42_crit_edge ], [ %h32.1.lcssa, %while.body42.preheader ]
  %p.3122 = phi ptr [ %incdec.ptr, %while.body42.while.body42_crit_edge ], [ %p.2.lcssa, %while.body42.preheader ]
  %17 = ptrtoint ptr %p.3122 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %p.3122, align 1
  %conv = zext i8 %18 to i32
  %mul43 = mul i32 %conv, 374761393
  %add44 = add i32 %mul43, %h32.2123
  %or47 = tail call i32 @llvm.fshl.i32(i32 %add44, i32 %add44, i32 11)
  %mul48 = mul i32 %or47, -1640531535
  %incdec.ptr = getelementptr i8, ptr %p.3122, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr, %uglygep
  br i1 %exitcond.not, label %while.body42.while.end49_crit_edge, label %while.body42.while.body42_crit_edge

while.body42.while.body42_crit_edge:              ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body42

while.body42.while.end49_crit_edge:               ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end49

while.end49:                                      ; preds = %while.body42.while.end49_crit_edge, %while.cond40.preheader.while.end49_crit_edge
  %h32.2.lcssa = phi i32 [ %h32.1.lcssa, %while.cond40.preheader.while.end49_crit_edge ], [ %mul48, %while.body42.while.end49_crit_edge ]
  %shr50 = lshr i32 %h32.2.lcssa, 15
  %xor = xor i32 %shr50, %h32.2.lcssa
  %mul51 = mul i32 %xor, -2048144777
  %shr52 = lshr i32 %mul51, 13
  %xor53 = xor i32 %shr52, %mul51
  %mul54 = mul i32 %xor53, -1028477379
  %shr55 = lshr i32 %mul54, 16
  %xor56 = xor i32 %shr55, %mul54
  ret i32 %xor56
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @xxh64(ptr noundef readonly %input, i32 noundef %len, i64 noundef %seed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %input186 = ptrtoint ptr %input to i32
  %add.ptr = getelementptr i8, ptr %input, i32 %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %len)
  %cmp = icmp ugt i32 %len, 31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -32
  %add2 = add i64 %seed, 6983438078262162902
  %add3 = add i64 %seed, -4417276706812531889
  %sub = add i64 %seed, 7046029288634856825
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then
  %v1.0 = phi i64 [ %add2, %if.then ], [ %mul1.i, %do.body.do.body_crit_edge ]
  %v2.0 = phi i64 [ %add3, %if.then ], [ %mul1.i144, %do.body.do.body_crit_edge ]
  %v3.0 = phi i64 [ %seed, %if.then ], [ %mul1.i148, %do.body.do.body_crit_edge ]
  %v4.0 = phi i64 [ %sub, %if.then ], [ %mul1.i152, %do.body.do.body_crit_edge ]
  %p.0 = phi ptr [ %input, %if.then ], [ %add.ptr15, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p.0 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %p.0, align 1
  %2 = tail call i64 @llvm.bswap.i64(i64 %1) #6
  %mul.i = mul i64 %2, -4417276706812531889
  %add.i = add i64 %mul.i, %v1.0
  %or.i = tail call i64 @llvm.fshl.i64(i64 %add.i, i64 %add.i, i64 31) #6
  %mul1.i = mul i64 %or.i, -7046029288634856825
  %add.ptr6 = getelementptr i8, ptr %p.0, i32 8
  %3 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %add.ptr6, align 1
  %5 = tail call i64 @llvm.bswap.i64(i64 %4) #6
  %mul.i141 = mul i64 %5, -4417276706812531889
  %add.i142 = add i64 %mul.i141, %v2.0
  %or.i143 = tail call i64 @llvm.fshl.i64(i64 %add.i142, i64 %add.i142, i64 31) #6
  %mul1.i144 = mul i64 %or.i143, -7046029288634856825
  %add.ptr9 = getelementptr i8, ptr %p.0, i32 16
  %6 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %add.ptr9, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #6
  %mul.i145 = mul i64 %8, -4417276706812531889
  %add.i146 = add i64 %mul.i145, %v3.0
  %or.i147 = tail call i64 @llvm.fshl.i64(i64 %add.i146, i64 %add.i146, i64 31) #6
  %mul1.i148 = mul i64 %or.i147, -7046029288634856825
  %add.ptr12 = getelementptr i8, ptr %p.0, i32 24
  %9 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %add.ptr12, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %10) #6
  %mul.i149 = mul i64 %11, -4417276706812531889
  %add.i150 = add i64 %mul.i149, %v4.0
  %or.i151 = tail call i64 @llvm.fshl.i64(i64 %add.i150, i64 %add.i150, i64 31) #6
  %mul1.i152 = mul i64 %or.i151, -7046029288634856825
  %add.ptr15 = getelementptr i8, ptr %p.0, i32 32
  %cmp16.not = icmp ugt ptr %add.ptr15, %add.ptr1
  br i1 %cmp16.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %or = tail call i64 @llvm.fshl.i64(i64 %mul1.i, i64 %mul1.i, i64 1)
  %or19 = tail call i64 @llvm.fshl.i64(i64 %mul1.i144, i64 %mul1.i144, i64 7)
  %add20 = add i64 %or19, %or
  %or23 = tail call i64 @llvm.fshl.i64(i64 %mul1.i148, i64 %mul1.i148, i64 12)
  %add24 = add i64 %add20, %or23
  %or27 = tail call i64 @llvm.fshl.i64(i64 %mul1.i152, i64 %mul1.i152, i64 18)
  %add28 = add i64 %add24, %or27
  %mul.i.i = mul i64 %or.i, -2381459717836149591
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %mul.i.i, i64 %mul.i.i, i64 31) #6
  %mul1.i.i = mul i64 %or.i.i, -7046029288634856825
  %xor.i = xor i64 %add28, %mul1.i.i
  %mul.i153 = mul i64 %xor.i, -7046029288634856825
  %add.i154 = add i64 %mul.i153, -8796714831421723037
  %mul.i.i155 = mul i64 %or.i143, -2381459717836149591
  %or.i.i156 = tail call i64 @llvm.fshl.i64(i64 %mul.i.i155, i64 %mul.i.i155, i64 31) #6
  %mul1.i.i157 = mul i64 %or.i.i156, -7046029288634856825
  %xor.i158 = xor i64 %add.i154, %mul1.i.i157
  %mul.i159 = mul i64 %xor.i158, -7046029288634856825
  %add.i160 = add i64 %mul.i159, -8796714831421723037
  %mul.i.i161 = mul i64 %or.i147, -2381459717836149591
  %or.i.i162 = tail call i64 @llvm.fshl.i64(i64 %mul.i.i161, i64 %mul.i.i161, i64 31) #6
  %mul1.i.i163 = mul i64 %or.i.i162, -7046029288634856825
  %xor.i164 = xor i64 %add.i160, %mul1.i.i163
  %mul.i165 = mul i64 %xor.i164, -7046029288634856825
  %add.i166 = add i64 %mul.i165, -8796714831421723037
  %mul.i.i167 = mul i64 %or.i151, -2381459717836149591
  %or.i.i168 = tail call i64 @llvm.fshl.i64(i64 %mul.i.i167, i64 %mul.i.i167, i64 31) #6
  %mul1.i.i169 = mul i64 %or.i.i168, -7046029288634856825
  %xor.i170 = xor i64 %add.i166, %mul1.i.i169
  %mul.i171 = mul i64 %xor.i170, -7046029288634856825
  %add.i172 = add i64 %mul.i171, -8796714831421723037
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add33 = add i64 %seed, 2870177450012600261
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %h64.0 = phi i64 [ %add.i172, %do.end ], [ %add33, %if.else ]
  %p.1 = phi ptr [ %add.ptr15, %do.end ], [ %input, %if.else ]
  %conv = zext i32 %len to i64
  %add34 = add i64 %h64.0, %conv
  %add.ptr35176 = getelementptr i8, ptr %p.1, i32 8
  %cmp36.not177 = icmp ugt ptr %add.ptr35176, %add.ptr
  br i1 %cmp36.not177, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %add.ptr35180 = phi ptr [ %add.ptr35, %while.body.while.body_crit_edge ], [ %add.ptr35176, %if.end.while.body_crit_edge ]
  %p.2179 = phi ptr [ %add.ptr35180, %while.body.while.body_crit_edge ], [ %p.1, %if.end.while.body_crit_edge ]
  %h64.1178 = phi i64 [ %add43, %while.body.while.body_crit_edge ], [ %add34, %if.end.while.body_crit_edge ]
  %12 = ptrtoint ptr %p.2179 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %p.2179, align 1
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #6
  %mul.i173 = mul i64 %14, -4417276706812531889
  %or.i174 = tail call i64 @llvm.fshl.i64(i64 %mul.i173, i64 %mul.i173, i64 31) #6
  %mul1.i175 = mul i64 %or.i174, -7046029288634856825
  %xor = xor i64 %mul1.i175, %h64.1178
  %or42 = tail call i64 @llvm.fshl.i64(i64 %xor, i64 %xor, i64 27)
  %mul = mul i64 %or42, -7046029288634856825
  %add43 = add i64 %mul, -8796714831421723037
  %add.ptr35 = getelementptr i8, ptr %add.ptr35180, i32 8
  %cmp36.not = icmp ugt ptr %add.ptr35, %add.ptr
  br i1 %cmp36.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %h64.1.lcssa = phi i64 [ %add34, %if.end.while.end_crit_edge ], [ %add43, %while.body.while.end_crit_edge ]
  %p.2.lcssa = phi ptr [ %p.1, %if.end.while.end_crit_edge ], [ %add.ptr35180, %while.body.while.end_crit_edge ]
  %add.ptr45 = getelementptr i8, ptr %p.2.lcssa, i32 4
  %cmp46.not = icmp ugt ptr %add.ptr45, %add.ptr
  br i1 %cmp46.not, label %while.end.if.end59_crit_edge, label %if.then48

while.end.if.end59_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end59

if.then48:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %p.2.lcssa to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %p.2.lcssa, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %conv50 = zext i32 %17 to i64
  %mul51 = mul i64 %conv50, -7046029288634856825
  %xor52 = xor i64 %mul51, %h64.1.lcssa
  %or55 = tail call i64 @llvm.fshl.i64(i64 %xor52, i64 %xor52, i64 23)
  %mul56 = mul i64 %or55, -4417276706812531889
  %add57 = add i64 %mul56, 1609587929392839161
  br label %if.end59

if.end59:                                         ; preds = %if.then48, %while.end.if.end59_crit_edge
  %h64.2 = phi i64 [ %add57, %if.then48 ], [ %h64.1.lcssa, %while.end.if.end59_crit_edge ]
  %p.3 = phi ptr [ %add.ptr45, %if.then48 ], [ %p.2.lcssa, %while.end.if.end59_crit_edge ]
  %cmp61182 = icmp ult ptr %p.3, %add.ptr
  br i1 %cmp61182, label %while.body63.preheader, label %if.end59.while.end71_crit_edge

if.end59.while.end71_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end71

while.body63.preheader:                           ; preds = %if.end59
  %p.3187 = ptrtoint ptr %p.3 to i32
  %18 = add i32 %input186, %len
  %19 = sub i32 %18, %p.3187
  %uglygep = getelementptr i8, ptr %p.3, i32 %19
  br label %while.body63

while.body63:                                     ; preds = %while.body63.while.body63_crit_edge, %while.body63.preheader
  %p.4184 = phi ptr [ %incdec.ptr, %while.body63.while.body63_crit_edge ], [ %p.3, %while.body63.preheader ]
  %h64.3183 = phi i64 [ %mul70, %while.body63.while.body63_crit_edge ], [ %h64.2, %while.body63.preheader ]
  %20 = ptrtoint ptr %p.4184 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %p.4184, align 1
  %conv64 = zext i8 %21 to i64
  %mul65 = mul i64 %conv64, 2870177450012600261
  %xor66 = xor i64 %mul65, %h64.3183
  %or69 = tail call i64 @llvm.fshl.i64(i64 %xor66, i64 %xor66, i64 11)
  %mul70 = mul i64 %or69, -7046029288634856825
  %incdec.ptr = getelementptr i8, ptr %p.4184, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr, %uglygep
  br i1 %exitcond.not, label %while.body63.while.end71_crit_edge, label %while.body63.while.body63_crit_edge

while.body63.while.body63_crit_edge:              ; preds = %while.body63
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body63

while.body63.while.end71_crit_edge:               ; preds = %while.body63
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end71

while.end71:                                      ; preds = %while.body63.while.end71_crit_edge, %if.end59.while.end71_crit_edge
  %h64.3.lcssa = phi i64 [ %h64.2, %if.end59.while.end71_crit_edge ], [ %mul70, %while.body63.while.end71_crit_edge ]
  %shr72 = lshr i64 %h64.3.lcssa, 33
  %xor73 = xor i64 %shr72, %h64.3.lcssa
  %mul74 = mul i64 %xor73, -4417276706812531889
  %shr75 = lshr i64 %mul74, 29
  %xor76 = xor i64 %shr75, %mul74
  %mul77 = mul i64 %xor76, 1609587929392839161
  %shr78 = lshr i64 %mul77, 32
  %xor79 = xor i64 %shr78, %mul77
  ret i64 %xor79
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xxh32_reset(ptr nocapture noundef writeonly %statePtr, i32 noundef %seed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %add1 = add i32 %seed, 606290984
  %add2 = add i32 %seed, -2048144777
  %sub = add i32 %seed, 1640531535
  %0 = ptrtoint ptr %statePtr to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %statePtr, align 4
  %state.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i32 8
  %1 = ptrtoint ptr %state.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add1, ptr %state.sroa.5.0..sroa_idx, align 4
  %state.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i32 12
  %2 = ptrtoint ptr %state.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add2, ptr %state.sroa.6.0..sroa_idx, align 4
  %state.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i32 16
  %3 = ptrtoint ptr %state.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %seed, ptr %state.sroa.7.0..sroa_idx, align 4
  %state.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i32 20
  %4 = ptrtoint ptr %state.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %state.sroa.8.0..sroa_idx, align 4
  %state.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i32 24
  %5 = call ptr @memset(ptr %state.sroa.9.0..sroa_idx, i32 0, i32 20)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xxh64_reset(ptr nocapture noundef writeonly %statePtr, i64 noundef %seed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %add1 = add i64 %seed, 6983438078262162902
  %add2 = add i64 %seed, -4417276706812531889
  %sub = add i64 %seed, 7046029288634856825
  %0 = ptrtoint ptr %statePtr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %statePtr, align 8
  %state.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i32 8
  %1 = ptrtoint ptr %state.sroa.5.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %add1, ptr %state.sroa.5.0..sroa_idx, align 8
  %state.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i32 16
  %2 = ptrtoint ptr %state.sroa.6.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %add2, ptr %state.sroa.6.0..sroa_idx, align 8
  %state.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i32 24
  %3 = ptrtoint ptr %state.sroa.7.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %seed, ptr %state.sroa.7.0..sroa_idx, align 8
  %state.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i32 32
  %4 = ptrtoint ptr %state.sroa.8.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sub, ptr %state.sroa.8.0..sroa_idx, align 8
  %state.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %statePtr, i32 40
  %5 = call ptr @memset(ptr %state.sroa.9.0..sroa_idx, i32 0, i32 40)
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xxh32_update(ptr nocapture noundef %state, ptr noundef %input, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %input, i32 %len
  %cmp = icmp eq ptr %input, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %add = add i32 %1, %len
  store i32 %add, ptr %state, align 4
  %2 = or i32 %add, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %2)
  %3 = icmp ugt i32 %2, 15
  %or = zext i1 %3 to i32
  %large_len = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %large_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %large_len, align 4
  %or5 = or i32 %5, %or
  store i32 %or5, ptr %large_len, align 4
  %memsize = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 7
  %6 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %memsize, align 4
  %add6 = add i32 %7, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add6)
  %cmp7 = icmp ult i32 %add6, 16
  br i1 %cmp7, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %mem32 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 6
  %add.ptr11 = getelementptr i8, ptr %mem32, i32 %7
  %8 = call ptr @memcpy(ptr %add.ptr11, ptr %input, i32 %len)
  %9 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %memsize, align 4
  %add13 = add i32 %10, %len
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end14.if.end42_crit_edge, label %if.then16

if.end14.if.end42_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %mem3217 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 6
  %add.ptr22 = getelementptr i8, ptr %mem3217, i32 %7
  %sub = sub i32 16, %7
  %11 = call ptr @memcpy(ptr %add.ptr22, ptr %input, i32 %sub)
  %v1 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 2
  %12 = ptrtoint ptr %v1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %v1, align 4
  %14 = ptrtoint ptr %mem3217 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %mem3217, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %mul.i = mul i32 %16, -2048144777
  %add.i = add i32 %mul.i, %13
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add.i, i32 %add.i, i32 13) #6
  %mul1.i = mul i32 %or.i, -1640531535
  %17 = ptrtoint ptr %v1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul1.i, ptr %v1, align 4
  %incdec.ptr = getelementptr %struct.xxh32_state, ptr %state, i32 0, i32 6, i32 1
  %v2 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 3
  %18 = ptrtoint ptr %v2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %v2, align 4
  %20 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %incdec.ptr, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %mul.i156 = mul i32 %22, -2048144777
  %add.i157 = add i32 %mul.i156, %19
  %or.i158 = tail call i32 @llvm.fshl.i32(i32 %add.i157, i32 %add.i157, i32 13) #6
  %mul1.i159 = mul i32 %or.i158, -1640531535
  %23 = ptrtoint ptr %v2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul1.i159, ptr %v2, align 4
  %incdec.ptr29 = getelementptr %struct.xxh32_state, ptr %state, i32 0, i32 6, i32 2
  %v3 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 4
  %24 = ptrtoint ptr %v3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %v3, align 4
  %26 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %incdec.ptr29, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %mul.i160 = mul i32 %28, -2048144777
  %add.i161 = add i32 %mul.i160, %25
  %or.i162 = tail call i32 @llvm.fshl.i32(i32 %add.i161, i32 %add.i161, i32 13) #6
  %mul1.i163 = mul i32 %or.i162, -1640531535
  %29 = ptrtoint ptr %v3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul1.i163, ptr %v3, align 4
  %incdec.ptr33 = getelementptr %struct.xxh32_state, ptr %state, i32 0, i32 6, i32 3
  %v4 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 5
  %30 = ptrtoint ptr %v4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %v4, align 4
  %32 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %incdec.ptr33, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #6
  %mul.i164 = mul i32 %34, -2048144777
  %add.i165 = add i32 %mul.i164, %31
  %or.i166 = tail call i32 @llvm.fshl.i32(i32 %add.i165, i32 %add.i165, i32 13) #6
  %mul1.i167 = mul i32 %or.i166, -1640531535
  %35 = ptrtoint ptr %v4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul1.i167, ptr %v4, align 4
  %36 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %memsize, align 4
  %sub39 = sub i32 16, %37
  %add.ptr40 = getelementptr i8, ptr %input, i32 %sub39
  store i32 0, ptr %memsize, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then16, %if.end14.if.end42_crit_edge
  %p.0 = phi ptr [ %add.ptr40, %if.then16 ], [ %input, %if.end14.if.end42_crit_edge ]
  %add.ptr43 = getelementptr i8, ptr %add.ptr, i32 -16
  %cmp44.not = icmp ugt ptr %p.0, %add.ptr43
  br i1 %cmp44.not, label %if.end42.if.end74_crit_edge, label %if.then46

if.end42.if.end74_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end74

if.then46:                                        ; preds = %if.end42
  %v149 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 2
  %38 = ptrtoint ptr %v149 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %v149, align 4
  %v251 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 3
  %40 = ptrtoint ptr %v251 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %v251, align 4
  %v353 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 4
  %42 = ptrtoint ptr %v353 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %v353, align 4
  %v455 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 5
  %44 = ptrtoint ptr %v455 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %v455, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then46
  %p.1 = phi ptr [ %p.0, %if.then46 ], [ %add.ptr67, %do.body.do.body_crit_edge ]
  %v148.0 = phi i32 [ %39, %if.then46 ], [ %mul1.i171, %do.body.do.body_crit_edge ]
  %v250.0 = phi i32 [ %41, %if.then46 ], [ %mul1.i175, %do.body.do.body_crit_edge ]
  %v352.0 = phi i32 [ %43, %if.then46 ], [ %mul1.i179, %do.body.do.body_crit_edge ]
  %v454.0 = phi i32 [ %45, %if.then46 ], [ %mul1.i183, %do.body.do.body_crit_edge ]
  %46 = ptrtoint ptr %p.1 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %p.1, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  %mul.i168 = mul i32 %48, -2048144777
  %add.i169 = add i32 %mul.i168, %v148.0
  %or.i170 = tail call i32 @llvm.fshl.i32(i32 %add.i169, i32 %add.i169, i32 13) #6
  %mul1.i171 = mul i32 %or.i170, -1640531535
  %add.ptr58 = getelementptr i8, ptr %p.1, i32 4
  %49 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %add.ptr58, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  %mul.i172 = mul i32 %51, -2048144777
  %add.i173 = add i32 %mul.i172, %v250.0
  %or.i174 = tail call i32 @llvm.fshl.i32(i32 %add.i173, i32 %add.i173, i32 13) #6
  %mul1.i175 = mul i32 %or.i174, -1640531535
  %add.ptr61 = getelementptr i8, ptr %p.1, i32 8
  %52 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %add.ptr61, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #6
  %mul.i176 = mul i32 %54, -2048144777
  %add.i177 = add i32 %mul.i176, %v352.0
  %or.i178 = tail call i32 @llvm.fshl.i32(i32 %add.i177, i32 %add.i177, i32 13) #6
  %mul1.i179 = mul i32 %or.i178, -1640531535
  %add.ptr64 = getelementptr i8, ptr %p.1, i32 12
  %55 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %add.ptr64, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #6
  %mul.i180 = mul i32 %57, -2048144777
  %add.i181 = add i32 %mul.i180, %v454.0
  %or.i182 = tail call i32 @llvm.fshl.i32(i32 %add.i181, i32 %add.i181, i32 13) #6
  %mul1.i183 = mul i32 %or.i182, -1640531535
  %add.ptr67 = getelementptr i8, ptr %p.1, i32 16
  %cmp68.not = icmp ugt ptr %add.ptr67, %add.ptr43
  br i1 %cmp68.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %58 = ptrtoint ptr %v149 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul1.i171, ptr %v149, align 4
  %59 = ptrtoint ptr %v251 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul1.i175, ptr %v251, align 4
  %60 = ptrtoint ptr %v353 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul1.i179, ptr %v353, align 4
  %61 = ptrtoint ptr %v455 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul1.i183, ptr %v455, align 4
  br label %if.end74

if.end74:                                         ; preds = %do.end, %if.end42.if.end74_crit_edge
  %p.2 = phi ptr [ %add.ptr67, %do.end ], [ %p.0, %if.end42.if.end74_crit_edge ]
  %cmp75 = icmp ult ptr %p.2, %add.ptr
  br i1 %cmp75, label %if.then77, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  %mem3278 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 6
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %p.2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %62 = call ptr @memcpy(ptr %mem3278, ptr %p.2, i32 %sub.ptr.sub)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then77, %if.then9
  %sub.ptr.sub.sink = phi i32 [ %sub.ptr.sub, %if.then77 ], [ %add13, %if.then9 ]
  %63 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub.ptr.sub.sink, ptr %memsize, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end74.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end74.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xxh32_digest(ptr noundef readonly %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %state89 = ptrtoint ptr %state to i32
  %mem32 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 6
  %memsize = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 7
  %0 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %memsize, align 4
  %add.ptr = getelementptr i8, ptr %mem32, i32 %1
  %large_len = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %large_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %large_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %v1 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %v1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v1, align 4
  %or = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 1)
  %v2 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 3
  %6 = ptrtoint ptr %v2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v2, align 4
  %or7 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 7)
  %add = add i32 %or7, %or
  %v3 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 4
  %8 = ptrtoint ptr %v3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v3, align 4
  %or11 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 12)
  %add12 = add i32 %add, %or11
  %v4 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 5
  %10 = ptrtoint ptr %v4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v4, align 4
  %or16 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 18)
  %add17 = add i32 %add12, %or16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %v318 = getelementptr inbounds %struct.xxh32_state, ptr %state, i32 0, i32 4
  %12 = ptrtoint ptr %v318 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %v318, align 4
  %add19 = add i32 %13, 374761393
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %h32.0 = phi i32 [ %add17, %if.then ], [ %add19, %if.else ]
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  %add20 = add i32 %15, %h32.0
  %add.ptr2179 = getelementptr %struct.xxh32_state, ptr %state, i32 0, i32 6, i32 1
  %cmp.not80 = icmp ugt ptr %add.ptr2179, %add.ptr
  br i1 %cmp.not80, label %if.end.while.cond28.preheader_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.cond28.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond28.preheader

while.cond28.preheader:                           ; preds = %while.body.while.cond28.preheader_crit_edge, %if.end.while.cond28.preheader_crit_edge
  %p.0.lcssa = phi ptr [ %mem32, %if.end.while.cond28.preheader_crit_edge ], [ %add.ptr2183, %while.body.while.cond28.preheader_crit_edge ]
  %h32.1.lcssa = phi i32 [ %add20, %if.end.while.cond28.preheader_crit_edge ], [ %mul26, %while.body.while.cond28.preheader_crit_edge ]
  %cmp2985 = icmp ult ptr %p.0.lcssa, %add.ptr
  br i1 %cmp2985, label %while.body30.preheader, label %while.cond28.preheader.while.end37_crit_edge

while.cond28.preheader.while.end37_crit_edge:     ; preds = %while.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end37

while.body30.preheader:                           ; preds = %while.cond28.preheader
  %p.0.lcssa90 = ptrtoint ptr %p.0.lcssa to i32
  %16 = add i32 %1, %state89
  %17 = add i32 %16, 24
  %18 = sub i32 %17, %p.0.lcssa90
  %uglygep = getelementptr i8, ptr %p.0.lcssa, i32 %18
  br label %while.body30

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %add.ptr2183 = phi ptr [ %add.ptr21, %while.body.while.body_crit_edge ], [ %add.ptr2179, %if.end.while.body_crit_edge ]
  %h32.182 = phi i32 [ %mul26, %while.body.while.body_crit_edge ], [ %add20, %if.end.while.body_crit_edge ]
  %p.081 = phi ptr [ %add.ptr2183, %while.body.while.body_crit_edge ], [ %mem32, %if.end.while.body_crit_edge ]
  %19 = ptrtoint ptr %p.081 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %p.081, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  %mul = mul i32 %21, -1028477379
  %add22 = add i32 %mul, %h32.182
  %or25 = tail call i32 @llvm.fshl.i32(i32 %add22, i32 %add22, i32 17)
  %mul26 = mul i32 %or25, 668265263
  %add.ptr21 = getelementptr i8, ptr %add.ptr2183, i32 4
  %cmp.not = icmp ugt ptr %add.ptr21, %add.ptr
  br i1 %cmp.not, label %while.body.while.cond28.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.cond28.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond28.preheader

while.body30:                                     ; preds = %while.body30.while.body30_crit_edge, %while.body30.preheader
  %h32.287 = phi i32 [ %mul36, %while.body30.while.body30_crit_edge ], [ %h32.1.lcssa, %while.body30.preheader ]
  %p.186 = phi ptr [ %incdec.ptr, %while.body30.while.body30_crit_edge ], [ %p.0.lcssa, %while.body30.preheader ]
  %22 = ptrtoint ptr %p.186 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %p.186, align 1
  %conv = zext i8 %23 to i32
  %mul31 = mul i32 %conv, 374761393
  %add32 = add i32 %mul31, %h32.287
  %or35 = tail call i32 @llvm.fshl.i32(i32 %add32, i32 %add32, i32 11)
  %mul36 = mul i32 %or35, -1640531535
  %incdec.ptr = getelementptr i8, ptr %p.186, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr, %uglygep
  br i1 %exitcond.not, label %while.body30.while.end37_crit_edge, label %while.body30.while.body30_crit_edge

while.body30.while.body30_crit_edge:              ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body30

while.body30.while.end37_crit_edge:               ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end37

while.end37:                                      ; preds = %while.body30.while.end37_crit_edge, %while.cond28.preheader.while.end37_crit_edge
  %h32.2.lcssa = phi i32 [ %h32.1.lcssa, %while.cond28.preheader.while.end37_crit_edge ], [ %mul36, %while.body30.while.end37_crit_edge ]
  %shr38 = lshr i32 %h32.2.lcssa, 15
  %xor = xor i32 %shr38, %h32.2.lcssa
  %mul39 = mul i32 %xor, -2048144777
  %shr40 = lshr i32 %mul39, 13
  %xor41 = xor i32 %shr40, %mul39
  %mul42 = mul i32 %xor41, -1028477379
  %shr43 = lshr i32 %mul42, 16
  %xor44 = xor i32 %shr43, %mul42
  ret i32 %xor44
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xxh64_update(ptr nocapture noundef %state, ptr noundef %input, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %input, i32 %len
  %cmp = icmp eq ptr %input, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %len to i64
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %state, align 8
  %add = add i64 %1, %conv
  store i64 %add, ptr %state, align 8
  %memsize = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 6
  %2 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %memsize, align 8
  %add1 = add i32 %3, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add1)
  %cmp2 = icmp ult i32 %add1, 32
  br i1 %cmp2, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %mem64 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 5
  %add.ptr6 = getelementptr i8, ptr %mem64, i32 %3
  %4 = call ptr @memcpy(ptr %add.ptr6, ptr %input, i32 %len)
  %5 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %memsize, align 8
  %add8 = add i32 %6, %len
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end9.if.end34_crit_edge, label %if.then11

if.end9.if.end34_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %mem6412 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 5
  %add.ptr15 = getelementptr i8, ptr %mem6412, i32 %3
  %sub = sub i32 32, %3
  %7 = call ptr @memcpy(ptr %add.ptr15, ptr %input, i32 %sub)
  %v1 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %v1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %v1, align 8
  %10 = ptrtoint ptr %mem6412 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %mem6412, align 1
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #6
  %mul.i = mul i64 %12, -4417276706812531889
  %add.i = add i64 %mul.i, %9
  %or.i = tail call i64 @llvm.fshl.i64(i64 %add.i, i64 %add.i, i64 31) #6
  %mul1.i = mul i64 %or.i, -7046029288634856825
  %13 = ptrtoint ptr %v1 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %mul1.i, ptr %v1, align 8
  %incdec.ptr = getelementptr %struct.xxh64_state, ptr %state, i32 0, i32 5, i32 1
  %v2 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 2
  %14 = ptrtoint ptr %v2 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %v2, align 8
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %incdec.ptr, align 1
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #6
  %mul.i143 = mul i64 %18, -4417276706812531889
  %add.i144 = add i64 %mul.i143, %15
  %or.i145 = tail call i64 @llvm.fshl.i64(i64 %add.i144, i64 %add.i144, i64 31) #6
  %mul1.i146 = mul i64 %or.i145, -7046029288634856825
  %19 = ptrtoint ptr %v2 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %mul1.i146, ptr %v2, align 8
  %incdec.ptr22 = getelementptr %struct.xxh64_state, ptr %state, i32 0, i32 5, i32 2
  %v3 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 3
  %20 = ptrtoint ptr %v3 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %v3, align 8
  %22 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %incdec.ptr22, align 1
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #6
  %mul.i147 = mul i64 %24, -4417276706812531889
  %add.i148 = add i64 %mul.i147, %21
  %or.i149 = tail call i64 @llvm.fshl.i64(i64 %add.i148, i64 %add.i148, i64 31) #6
  %mul1.i150 = mul i64 %or.i149, -7046029288634856825
  %25 = ptrtoint ptr %v3 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %mul1.i150, ptr %v3, align 8
  %incdec.ptr26 = getelementptr %struct.xxh64_state, ptr %state, i32 0, i32 5, i32 3
  %v4 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 4
  %26 = ptrtoint ptr %v4 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %v4, align 8
  %28 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %incdec.ptr26, align 1
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #6
  %mul.i151 = mul i64 %30, -4417276706812531889
  %add.i152 = add i64 %mul.i151, %27
  %or.i153 = tail call i64 @llvm.fshl.i64(i64 %add.i152, i64 %add.i152, i64 31) #6
  %mul1.i154 = mul i64 %or.i153, -7046029288634856825
  %31 = ptrtoint ptr %v4 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %mul1.i154, ptr %v4, align 8
  %32 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %memsize, align 8
  %sub31 = sub i32 32, %33
  %add.ptr32 = getelementptr i8, ptr %input, i32 %sub31
  store i32 0, ptr %memsize, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then11, %if.end9.if.end34_crit_edge
  %p.0 = phi ptr [ %add.ptr32, %if.then11 ], [ %input, %if.end9.if.end34_crit_edge ]
  %add.ptr35 = getelementptr i8, ptr %p.0, i32 32
  %cmp36.not = icmp ugt ptr %add.ptr35, %add.ptr
  br i1 %cmp36.not, label %if.end34.if.end66_crit_edge, label %if.then38

if.end34.if.end66_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66

if.then38:                                        ; preds = %if.end34
  %add.ptr39 = getelementptr i8, ptr %add.ptr, i32 -32
  %v141 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 1
  %34 = ptrtoint ptr %v141 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %v141, align 8
  %v243 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 2
  %36 = ptrtoint ptr %v243 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %v243, align 8
  %v345 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 3
  %38 = ptrtoint ptr %v345 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %v345, align 8
  %v447 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 4
  %40 = ptrtoint ptr %v447 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %v447, align 8
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then38
  %p.1 = phi ptr [ %p.0, %if.then38 ], [ %add.ptr59, %do.body.do.body_crit_edge ]
  %v140.0 = phi i64 [ %35, %if.then38 ], [ %mul1.i158, %do.body.do.body_crit_edge ]
  %v242.0 = phi i64 [ %37, %if.then38 ], [ %mul1.i162, %do.body.do.body_crit_edge ]
  %v344.0 = phi i64 [ %39, %if.then38 ], [ %mul1.i166, %do.body.do.body_crit_edge ]
  %v446.0 = phi i64 [ %41, %if.then38 ], [ %mul1.i170, %do.body.do.body_crit_edge ]
  %42 = ptrtoint ptr %p.1 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %p.1, align 1
  %44 = tail call i64 @llvm.bswap.i64(i64 %43) #6
  %mul.i155 = mul i64 %44, -4417276706812531889
  %add.i156 = add i64 %mul.i155, %v140.0
  %or.i157 = tail call i64 @llvm.fshl.i64(i64 %add.i156, i64 %add.i156, i64 31) #6
  %mul1.i158 = mul i64 %or.i157, -7046029288634856825
  %add.ptr50 = getelementptr i8, ptr %p.1, i32 8
  %45 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %add.ptr50, align 1
  %47 = tail call i64 @llvm.bswap.i64(i64 %46) #6
  %mul.i159 = mul i64 %47, -4417276706812531889
  %add.i160 = add i64 %mul.i159, %v242.0
  %or.i161 = tail call i64 @llvm.fshl.i64(i64 %add.i160, i64 %add.i160, i64 31) #6
  %mul1.i162 = mul i64 %or.i161, -7046029288634856825
  %add.ptr53 = getelementptr i8, ptr %p.1, i32 16
  %48 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %add.ptr53, align 1
  %50 = tail call i64 @llvm.bswap.i64(i64 %49) #6
  %mul.i163 = mul i64 %50, -4417276706812531889
  %add.i164 = add i64 %mul.i163, %v344.0
  %or.i165 = tail call i64 @llvm.fshl.i64(i64 %add.i164, i64 %add.i164, i64 31) #6
  %mul1.i166 = mul i64 %or.i165, -7046029288634856825
  %add.ptr56 = getelementptr i8, ptr %p.1, i32 24
  %51 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %add.ptr56, align 1
  %53 = tail call i64 @llvm.bswap.i64(i64 %52) #6
  %mul.i167 = mul i64 %53, -4417276706812531889
  %add.i168 = add i64 %mul.i167, %v446.0
  %or.i169 = tail call i64 @llvm.fshl.i64(i64 %add.i168, i64 %add.i168, i64 31) #6
  %mul1.i170 = mul i64 %or.i169, -7046029288634856825
  %add.ptr59 = getelementptr i8, ptr %p.1, i32 32
  %cmp60.not = icmp ugt ptr %add.ptr59, %add.ptr39
  br i1 %cmp60.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %54 = ptrtoint ptr %v141 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %mul1.i158, ptr %v141, align 8
  %55 = ptrtoint ptr %v243 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %mul1.i162, ptr %v243, align 8
  %56 = ptrtoint ptr %v345 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %mul1.i166, ptr %v345, align 8
  %57 = ptrtoint ptr %v447 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %mul1.i170, ptr %v447, align 8
  br label %if.end66

if.end66:                                         ; preds = %do.end, %if.end34.if.end66_crit_edge
  %p.2 = phi ptr [ %add.ptr59, %do.end ], [ %p.0, %if.end34.if.end66_crit_edge ]
  %cmp67 = icmp ult ptr %p.2, %add.ptr
  br i1 %cmp67, label %if.then69, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #5
  %mem6470 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 5
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %p.2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %58 = call ptr @memcpy(ptr %mem6470, ptr %p.2, i32 %sub.ptr.sub)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then69, %if.then4
  %sub.ptr.sub.sink = phi i32 [ %sub.ptr.sub, %if.then69 ], [ %add8, %if.then4 ]
  %59 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub.ptr.sub.sink, ptr %memsize, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end66.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @xxh64_digest(ptr noundef readonly %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %state145 = ptrtoint ptr %state to i32
  %mem64 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 5
  %memsize = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 6
  %0 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %memsize, align 8
  %add.ptr = getelementptr i8, ptr %mem64, i32 %1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 31, i64 %3)
  %cmp = icmp ugt i64 %3, 31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %v13 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %v13 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %v13, align 8
  %v24 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %v24 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %v24, align 8
  %v35 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 3
  %8 = ptrtoint ptr %v35 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %v35, align 8
  %v46 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %v46 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %v46, align 8
  %or = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 1)
  %or9 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 7)
  %add = add i64 %or9, %or
  %or12 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 12)
  %add13 = add i64 %add, %or12
  %or16 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 18)
  %add17 = add i64 %add13, %or16
  %mul.i.i = mul i64 %5, -4417276706812531889
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %mul.i.i, i64 %mul.i.i, i64 31) #6
  %mul1.i.i = mul i64 %or.i.i, -7046029288634856825
  %xor.i = xor i64 %add17, %mul1.i.i
  %mul.i = mul i64 %xor.i, -7046029288634856825
  %add.i = add i64 %mul.i, -8796714831421723037
  %mul.i.i116 = mul i64 %7, -4417276706812531889
  %or.i.i117 = tail call i64 @llvm.fshl.i64(i64 %mul.i.i116, i64 %mul.i.i116, i64 31) #6
  %mul1.i.i118 = mul i64 %or.i.i117, -7046029288634856825
  %xor.i119 = xor i64 %add.i, %mul1.i.i118
  %mul.i120 = mul i64 %xor.i119, -7046029288634856825
  %add.i121 = add i64 %mul.i120, -8796714831421723037
  %mul.i.i122 = mul i64 %9, -4417276706812531889
  %or.i.i123 = tail call i64 @llvm.fshl.i64(i64 %mul.i.i122, i64 %mul.i.i122, i64 31) #6
  %mul1.i.i124 = mul i64 %or.i.i123, -7046029288634856825
  %xor.i125 = xor i64 %add.i121, %mul1.i.i124
  %mul.i126 = mul i64 %xor.i125, -7046029288634856825
  %add.i127 = add i64 %mul.i126, -8796714831421723037
  %mul.i.i128 = mul i64 %11, -4417276706812531889
  %or.i.i129 = tail call i64 @llvm.fshl.i64(i64 %mul.i.i128, i64 %mul.i.i128, i64 31) #6
  %mul1.i.i130 = mul i64 %or.i.i129, -7046029288634856825
  %xor.i131 = xor i64 %add.i127, %mul1.i.i130
  %mul.i132 = mul i64 %xor.i131, -7046029288634856825
  %add.i133 = add i64 %mul.i132, -8796714831421723037
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %v321 = getelementptr inbounds %struct.xxh64_state, ptr %state, i32 0, i32 3
  %12 = ptrtoint ptr %v321 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %v321, align 8
  %add22 = add i64 %13, 2870177450012600261
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %h64.0 = phi i64 [ %add.i133, %if.then ], [ %add22, %if.else ]
  %add24 = add i64 %h64.0, %3
  %add.ptr25135 = getelementptr %struct.xxh64_state, ptr %state, i32 0, i32 5, i32 1
  %cmp26.not136 = icmp ugt ptr %add.ptr25135, %add.ptr
  br i1 %cmp26.not136, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %add.ptr25139 = phi ptr [ %add.ptr25, %while.body.while.body_crit_edge ], [ %add.ptr25135, %if.end.while.body_crit_edge ]
  %p.0138 = phi ptr [ %add.ptr25139, %while.body.while.body_crit_edge ], [ %mem64, %if.end.while.body_crit_edge ]
  %h64.1137 = phi i64 [ %add32, %while.body.while.body_crit_edge ], [ %add24, %if.end.while.body_crit_edge ]
  %14 = ptrtoint ptr %p.0138 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %p.0138, align 1
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #6
  %mul.i134 = mul i64 %16, -4417276706812531889
  %or.i = tail call i64 @llvm.fshl.i64(i64 %mul.i134, i64 %mul.i134, i64 31) #6
  %mul1.i = mul i64 %or.i, -7046029288634856825
  %xor = xor i64 %mul1.i, %h64.1137
  %or31 = tail call i64 @llvm.fshl.i64(i64 %xor, i64 %xor, i64 27)
  %mul = mul i64 %or31, -7046029288634856825
  %add32 = add i64 %mul, -8796714831421723037
  %add.ptr25 = getelementptr i8, ptr %add.ptr25139, i32 8
  %cmp26.not = icmp ugt ptr %add.ptr25, %add.ptr
  br i1 %cmp26.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %h64.1.lcssa = phi i64 [ %add24, %if.end.while.end_crit_edge ], [ %add32, %while.body.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %mem64, %if.end.while.end_crit_edge ], [ %add.ptr25139, %while.body.while.end_crit_edge ]
  %add.ptr34 = getelementptr i8, ptr %p.0.lcssa, i32 4
  %cmp35.not = icmp ugt ptr %add.ptr34, %add.ptr
  br i1 %cmp35.not, label %while.end.if.end46_crit_edge, label %if.then36

while.end.if.end46_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end46

if.then36:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %p.0.lcssa, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %conv = zext i32 %19 to i64
  %mul38 = mul i64 %conv, -7046029288634856825
  %xor39 = xor i64 %mul38, %h64.1.lcssa
  %or42 = tail call i64 @llvm.fshl.i64(i64 %xor39, i64 %xor39, i64 23)
  %mul43 = mul i64 %or42, -4417276706812531889
  %add44 = add i64 %mul43, 1609587929392839161
  br label %if.end46

if.end46:                                         ; preds = %if.then36, %while.end.if.end46_crit_edge
  %h64.2 = phi i64 [ %add44, %if.then36 ], [ %h64.1.lcssa, %while.end.if.end46_crit_edge ]
  %p.1 = phi ptr [ %add.ptr34, %if.then36 ], [ %p.0.lcssa, %while.end.if.end46_crit_edge ]
  %cmp48141 = icmp ult ptr %p.1, %add.ptr
  br i1 %cmp48141, label %while.body50.preheader, label %if.end46.while.end58_crit_edge

if.end46.while.end58_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end58

while.body50.preheader:                           ; preds = %if.end46
  %p.1146 = ptrtoint ptr %p.1 to i32
  %20 = add i32 %1, %state145
  %21 = add i32 %20, 40
  %22 = sub i32 %21, %p.1146
  %uglygep = getelementptr i8, ptr %p.1, i32 %22
  br label %while.body50

while.body50:                                     ; preds = %while.body50.while.body50_crit_edge, %while.body50.preheader
  %p.2143 = phi ptr [ %incdec.ptr, %while.body50.while.body50_crit_edge ], [ %p.1, %while.body50.preheader ]
  %h64.3142 = phi i64 [ %mul57, %while.body50.while.body50_crit_edge ], [ %h64.2, %while.body50.preheader ]
  %23 = ptrtoint ptr %p.2143 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %p.2143, align 1
  %conv51 = zext i8 %24 to i64
  %mul52 = mul i64 %conv51, 2870177450012600261
  %xor53 = xor i64 %mul52, %h64.3142
  %or56 = tail call i64 @llvm.fshl.i64(i64 %xor53, i64 %xor53, i64 11)
  %mul57 = mul i64 %or56, -7046029288634856825
  %incdec.ptr = getelementptr i8, ptr %p.2143, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr, %uglygep
  br i1 %exitcond.not, label %while.body50.while.end58_crit_edge, label %while.body50.while.body50_crit_edge

while.body50.while.body50_crit_edge:              ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body50

while.body50.while.end58_crit_edge:               ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end58

while.end58:                                      ; preds = %while.body50.while.end58_crit_edge, %if.end46.while.end58_crit_edge
  %h64.3.lcssa = phi i64 [ %h64.2, %if.end46.while.end58_crit_edge ], [ %mul57, %while.body50.while.end58_crit_edge ]
  %shr59 = lshr i64 %h64.3.lcssa, 33
  %xor60 = xor i64 %shr59, %h64.3.lcssa
  %mul61 = mul i64 %xor60, -4417276706812531889
  %shr62 = lshr i64 %mul61, 29
  %xor63 = xor i64 %shr62, %mul61
  %mul64 = mul i64 %xor63, 1609587929392839161
  %shr65 = lshr i64 %mul64, 32
  %xor66 = xor i64 %shr65, %mul64
  ret i64 %xor66
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_xxh32_copy_state, !1, !"__ksymtab_xxh32_copy_state", i1 false, i1 false}
!1 = !{!"../lib/xxhash.c", i32 83, i32 1}
!2 = !{ptr @__ksymtab_xxh64_copy_state, !3, !"__ksymtab_xxh64_copy_state", i1 false, i1 false}
!3 = !{!"../lib/xxhash.c", i32 89, i32 1}
!4 = !{ptr @__ksymtab_xxh32, !5, !"__ksymtab_xxh32", i1 false, i1 false}
!5 = !{!"../lib/xxhash.c", i32 154, i32 1}
!6 = !{ptr @__ksymtab_xxh64, !7, !"__ksymtab_xxh64", i1 false, i1 false}
!7 = !{!"../lib/xxhash.c", i32 237, i32 1}
!8 = !{ptr @__ksymtab_xxh32_reset, !9, !"__ksymtab_xxh32_reset", i1 false, i1 false}
!9 = !{!"../lib/xxhash.c", i32 254, i32 1}
!10 = !{ptr @__ksymtab_xxh64_reset, !11, !"__ksymtab_xxh64_reset", i1 false, i1 false}
!11 = !{!"../lib/xxhash.c", i32 268, i32 1}
!12 = !{ptr @__ksymtab_xxh32_update, !13, !"__ksymtab_xxh32_update", i1 false, i1 false}
!13 = !{!"../lib/xxhash.c", i32 337, i32 1}
!14 = !{ptr @__ksymtab_xxh32_digest, !15, !"__ksymtab_xxh32_digest", i1 false, i1 false}
!15 = !{!"../lib/xxhash.c", i32 375, i32 1}
!16 = !{ptr @__ksymtab_xxh64_update, !17, !"__ksymtab_xxh64_update", i1 false, i1 false}
!17 = !{!"../lib/xxhash.c", i32 442, i32 1}
!18 = !{ptr @__ksymtab_xxh64_digest, !19, !"__ksymtab_xxh64_digest", i1 false, i1 false}
!19 = !{!"../lib/xxhash.c", i32 497, i32 1}
!20 = !{ptr @__UNIQUE_ID_file106, !21, !"__UNIQUE_ID_file106", i1 false, i1 false}
!21 = !{!"../lib/xxhash.c", i32 499, i32 1}
!22 = !{ptr @__UNIQUE_ID_license107, !21, !"__UNIQUE_ID_license107", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_description108, !24, !"__UNIQUE_ID_description108", i1 false, i1 false}
!24 = !{!"../lib/xxhash.c", i32 500, i32 1}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
