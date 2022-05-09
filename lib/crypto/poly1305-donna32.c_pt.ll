; ModuleID = '/llk/IR_all_yes/lib/crypto/poly1305-donna32.c_pt.bc'
source_filename = "../lib/crypto/poly1305-donna32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+poly1305_core_setkey\22, \22a\22\09"
module asm "\09.weak\09__crc_poly1305_core_setkey\09\09\09\09"
module asm "\09.long\09__crc_poly1305_core_setkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poly1305_core_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22poly1305_core_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_poly1305_core_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+poly1305_core_blocks\22, \22a\22\09"
module asm "\09.weak\09__crc_poly1305_core_blocks\09\09\09\09"
module asm "\09.long\09__crc_poly1305_core_blocks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poly1305_core_blocks:\09\09\09\09\09"
module asm "\09.asciz \09\22poly1305_core_blocks\22\09\09\09\09\09"
module asm "__kstrtabns_poly1305_core_blocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+poly1305_core_emit\22, \22a\22\09"
module asm "\09.weak\09__crc_poly1305_core_emit\09\09\09\09"
module asm "\09.long\09__crc_poly1305_core_emit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poly1305_core_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22poly1305_core_emit\22\09\09\09\09\09"
module asm "__kstrtabns_poly1305_core_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.poly1305_core_key = type { %struct.poly1305_key, %struct.poly1305_key }
%struct.poly1305_key = type { %union.anon }
%union.anon = type { [3 x i64] }

@__kstrtab_poly1305_core_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_poly1305_core_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_poly1305_core_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poly1305_core_setkey to i32), ptr @__kstrtab_poly1305_core_setkey, ptr @__kstrtabns_poly1305_core_setkey }, section "___ksymtab+poly1305_core_setkey", align 4
@__kstrtab_poly1305_core_blocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_poly1305_core_blocks = external dso_local constant [0 x i8], align 1
@__ksymtab_poly1305_core_blocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poly1305_core_blocks to i32), ptr @__kstrtab_poly1305_core_blocks, ptr @__kstrtabns_poly1305_core_blocks }, section "___ksymtab+poly1305_core_blocks", align 4
@__kstrtab_poly1305_core_emit = external dso_local constant [0 x i8], align 1
@__kstrtabns_poly1305_core_emit = external dso_local constant [0 x i8], align 1
@__ksymtab_poly1305_core_emit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poly1305_core_emit to i32), ptr @__kstrtab_poly1305_core_emit, ptr @__kstrtabns_poly1305_core_emit }, section "___ksymtab+poly1305_core_emit", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_poly1305_core_blocks, ptr @__ksymtab_poly1305_core_emit, ptr @__ksymtab_poly1305_core_setkey], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @poly1305_core_setkey(ptr nocapture noundef %key, ptr nocapture noundef readonly %raw_key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %raw_key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %raw_key, align 1
  %2 = and i32 %1, -253
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %key, align 8
  %arrayidx3 = getelementptr i8, ptr %raw_key, i32 3
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %arrayidx3, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  %shr = lshr i32 %7, 2
  %and5 = and i32 %shr, 67108611
  %arrayidx7 = getelementptr [5 x i32], ptr %key, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and5, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i8, ptr %raw_key, i32 6
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %arrayidx8, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #3
  %shr10 = lshr i32 %11, 4
  %and11 = and i32 %shr10, 67092735
  %arrayidx13 = getelementptr [5 x i32], ptr %key, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and11, ptr %arrayidx13, align 8
  %arrayidx14 = getelementptr i8, ptr %raw_key, i32 9
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %arrayidx14, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #3
  %shr16 = lshr i32 %15, 6
  %and17 = and i32 %shr16, 66076671
  %arrayidx19 = getelementptr [5 x i32], ptr %key, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and17, ptr %arrayidx19, align 4
  %arrayidx20 = getelementptr i8, ptr %raw_key, i32 12
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %arrayidx20, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %shr22 = lshr i32 %19, 8
  %and23 = and i32 %shr22, 1048575
  %arrayidx25 = getelementptr [5 x i32], ptr %key, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and23, ptr %arrayidx25, align 8
  %mul = mul nuw nsw i32 %and5, 5
  %precomputed_s = getelementptr inbounds %struct.poly1305_core_key, ptr %key, i32 0, i32 1
  %21 = ptrtoint ptr %precomputed_s to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul, ptr %precomputed_s, align 8
  %mul31 = mul nuw nsw i32 %and11, 5
  %arrayidx33 = getelementptr [5 x i32], ptr %precomputed_s, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul31, ptr %arrayidx33, align 4
  %mul36 = mul nuw nsw i32 %and17, 5
  %arrayidx38 = getelementptr %struct.poly1305_core_key, ptr %key, i32 0, i32 1, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul36, ptr %arrayidx38, align 8
  %mul41 = mul nuw nsw i32 %and23, 5
  %arrayidx43 = getelementptr [5 x i32], ptr %precomputed_s, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul41, ptr %arrayidx43, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @poly1305_core_blocks(ptr nocapture noundef %state, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %src, i32 noundef %nblocks, i32 noundef %hibit) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nblocks)
  %tobool.not = icmp eq i32 %nblocks, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 8
  %arrayidx3 = getelementptr [5 x i32], ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr [5 x i32], ptr %key, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 8
  %arrayidx7 = getelementptr [5 x i32], ptr %key, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr [5 x i32], ptr %key, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 8
  %precomputed_s = getelementptr inbounds %struct.poly1305_core_key, ptr %key, i32 0, i32 1
  %10 = ptrtoint ptr %precomputed_s to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %precomputed_s, align 8
  %arrayidx12 = getelementptr [5 x i32], ptr %precomputed_s, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr %struct.poly1305_core_key, ptr %key, i32 0, i32 1, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr [5 x i32], ptr %precomputed_s, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx16, align 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 8
  %arrayidx18 = getelementptr [5 x i32], ptr %state, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr [5 x i32], ptr %state, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx19, align 8
  %arrayidx20 = getelementptr [5 x i32], ptr %state, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr [5 x i32], ptr %state, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx21, align 8
  %conv41 = zext i32 %1 to i64
  %conv43 = zext i32 %17 to i64
  %conv47 = zext i32 %15 to i64
  %conv51 = zext i32 %13 to i64
  %conv55 = zext i32 %11 to i64
  %conv59 = zext i32 %3 to i64
  %conv78 = zext i32 %5 to i64
  %conv97 = zext i32 %7 to i64
  %conv116 = zext i32 %9 to i64
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end
  %nblocks.addr.0 = phi i32 [ %nblocks, %if.end ], [ %dec, %do.body.do.body_crit_edge ]
  %input.0 = phi ptr [ %src, %if.end ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %h0.0 = phi i32 [ %19, %if.end ], [ %and165, %do.body.do.body_crit_edge ]
  %h1.0 = phi i32 [ %21, %if.end ], [ %add166, %do.body.do.body_crit_edge ]
  %h2.0 = phi i32 [ %23, %if.end ], [ %and149, %do.body.do.body_crit_edge ]
  %h3.0 = phi i32 [ %25, %if.end ], [ %and155, %do.body.do.body_crit_edge ]
  %h4.0 = phi i32 [ %27, %if.end ], [ %and161, %do.body.do.body_crit_edge ]
  %28 = ptrtoint ptr %input.0 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %input.0, align 1
  %30 = and i32 %29, -253
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %add = add i32 %31, %h0.0
  %arrayidx23 = getelementptr i8, ptr %input.0, i32 3
  %32 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %arrayidx23, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #3
  %shr = lshr i32 %34, 2
  %and25 = and i32 %shr, 67108863
  %add26 = add i32 %and25, %h1.0
  %arrayidx27 = getelementptr i8, ptr %input.0, i32 6
  %35 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %arrayidx27, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #3
  %shr29 = lshr i32 %37, 4
  %and30 = and i32 %shr29, 67108863
  %add31 = add i32 %and30, %h2.0
  %arrayidx32 = getelementptr i8, ptr %input.0, i32 9
  %38 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %arrayidx32, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #3
  %shr34 = lshr i32 %40, 6
  %add36 = add i32 %shr34, %h3.0
  %arrayidx37 = getelementptr i8, ptr %input.0, i32 12
  %41 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %arrayidx37, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #3
  %or = tail call i32 @llvm.fshl.i32(i32 %hibit, i32 %43, i32 24)
  %add40 = add i32 %or, %h4.0
  %conv = zext i32 %add to i64
  %mul = mul nuw i64 %conv, %conv41
  %conv42 = zext i32 %add26 to i64
  %mul44 = mul nuw i64 %conv42, %conv43
  %add45 = add i64 %mul44, %mul
  %conv46 = zext i32 %add31 to i64
  %mul48 = mul nuw i64 %conv46, %conv47
  %add49 = add i64 %add45, %mul48
  %conv50 = zext i32 %add36 to i64
  %mul52 = mul nuw i64 %conv50, %conv51
  %add53 = add i64 %add49, %mul52
  %conv54 = zext i32 %add40 to i64
  %mul56 = mul nuw i64 %conv54, %conv55
  %add57 = add i64 %add53, %mul56
  %mul60 = mul nuw i64 %conv, %conv59
  %mul63 = mul nuw i64 %conv42, %conv41
  %add64 = add i64 %mul63, %mul60
  %mul67 = mul nuw i64 %conv46, %conv43
  %add68 = add i64 %add64, %mul67
  %mul71 = mul nuw i64 %conv50, %conv47
  %add72 = add i64 %add68, %mul71
  %mul75 = mul nuw i64 %conv54, %conv51
  %add76 = add i64 %add72, %mul75
  %mul79 = mul nuw i64 %conv, %conv78
  %mul82 = mul nuw i64 %conv42, %conv59
  %add83 = add i64 %mul82, %mul79
  %mul86 = mul nuw i64 %conv46, %conv41
  %add87 = add i64 %add83, %mul86
  %mul90 = mul nuw i64 %conv50, %conv43
  %add91 = add i64 %add87, %mul90
  %mul94 = mul nuw i64 %conv54, %conv47
  %add95 = add i64 %add91, %mul94
  %mul98 = mul nuw i64 %conv, %conv97
  %mul101 = mul nuw i64 %conv42, %conv78
  %add102 = add i64 %mul101, %mul98
  %mul105 = mul nuw i64 %conv46, %conv59
  %add106 = add i64 %add102, %mul105
  %mul109 = mul nuw i64 %conv50, %conv41
  %add110 = add i64 %add106, %mul109
  %mul113 = mul nuw i64 %conv54, %conv43
  %add114 = add i64 %add110, %mul113
  %mul117 = mul nuw i64 %conv, %conv116
  %mul120 = mul nuw i64 %conv42, %conv97
  %add121 = add i64 %mul120, %mul117
  %mul124 = mul nuw i64 %conv46, %conv78
  %add125 = add i64 %add121, %mul124
  %mul128 = mul nuw i64 %conv50, %conv59
  %add129 = add i64 %add125, %mul128
  %mul132 = mul nuw i64 %conv54, %conv41
  %add133 = add i64 %add129, %mul132
  %shr134 = lshr i64 %add57, 26
  %conv136 = trunc i64 %add57 to i32
  %and137 = and i32 %conv136, 67108863
  %conv138 = and i64 %shr134, 4294967295
  %add139 = add i64 %add76, %conv138
  %shr140 = lshr i64 %add139, 26
  %conv142 = trunc i64 %add139 to i32
  %and143 = and i32 %conv142, 67108863
  %conv144 = and i64 %shr140, 4294967295
  %add145 = add i64 %add95, %conv144
  %shr146 = lshr i64 %add145, 26
  %conv148 = trunc i64 %add145 to i32
  %and149 = and i32 %conv148, 67108863
  %conv150 = and i64 %shr146, 4294967295
  %add151 = add i64 %add114, %conv150
  %shr152 = lshr i64 %add151, 26
  %conv154 = trunc i64 %add151 to i32
  %and155 = and i32 %conv154, 67108863
  %conv156 = and i64 %shr152, 4294967295
  %add157 = add i64 %add133, %conv156
  %shr158 = lshr i64 %add157, 26
  %conv159 = trunc i64 %shr158 to i32
  %conv160 = trunc i64 %add157 to i32
  %and161 = and i32 %conv160, 67108863
  %mul162 = mul i32 %conv159, 5
  %add163 = add i32 %mul162, %and137
  %shr164 = lshr i32 %add163, 26
  %and165 = and i32 %add163, 67108863
  %add166 = add nuw nsw i32 %shr164, %and143
  %add.ptr = getelementptr i8, ptr %input.0, i32 16
  %dec = add i32 %nblocks.addr.0, -1
  %tobool167.not = icmp eq i32 %dec, 0
  br i1 %tobool167.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and165, ptr %state, align 8
  %45 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add166, ptr %arrayidx18, align 4
  %46 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and149, ptr %arrayidx19, align 8
  %47 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and155, ptr %arrayidx20, align 4
  %48 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and161, ptr %arrayidx21, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @poly1305_core_emit(ptr nocapture noundef readonly %state, ptr noundef readonly %nonce, ptr nocapture noundef writeonly %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %arrayidx1 = getelementptr [5 x i32], ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr [5 x i32], ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 8
  %arrayidx3 = getelementptr [5 x i32], ptr %state, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr [5 x i32], ptr %state, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 8
  %shr = lshr i32 %3, 26
  %and = and i32 %3, 67108863
  %add = add i32 %5, %shr
  %shr5 = lshr i32 %add, 26
  %and6 = and i32 %add, 67108863
  %add7 = add i32 %shr5, %7
  %shr8 = lshr i32 %add7, 26
  %and9 = and i32 %add7, 67108863
  %add10 = add i32 %shr8, %9
  %shr11 = lshr i32 %add10, 26
  %mul = mul nuw nsw i32 %shr11, 5
  %add13 = add i32 %mul, %1
  %shr14 = lshr i32 %add13, 26
  %and15 = and i32 %add13, 67108863
  %add16 = add nuw nsw i32 %shr14, %and
  %add17 = add nuw nsw i32 %and15, 5
  %shr18 = lshr i32 %add17, 26
  %add20 = add nuw nsw i32 %shr18, %add16
  %shr21 = lshr i32 %add20, 26
  %add23 = add nuw nsw i32 %shr21, %and6
  %shr24 = lshr i32 %add23, 26
  %add26 = add nuw nsw i32 %shr24, %and9
  %shr27 = lshr i32 %add26, 26
  %add29 = or i32 %add10, -67108864
  %sub = add nsw i32 %add29, %shr27
  %shr30.neg = ashr i32 %sub, 31
  %shr30 = lshr i32 %sub, 31
  %sub31 = add nsw i32 %shr30, -1
  %and19 = and i32 %sub31, 67108863
  %and32 = and i32 %and19, %add17
  %and33 = and i32 %and19, %add20
  %and34 = and i32 %and19, %add23
  %and35 = and i32 %and19, %add26
  %and36 = and i32 %sub31, %sub
  %and37 = and i32 %shr30.neg, %and15
  %or = or i32 %and32, %and37
  %and38 = and i32 %shr30.neg, %add16
  %or39 = or i32 %and38, %and33
  %and40 = and i32 %shr30.neg, %and6
  %or41 = or i32 %and40, %and34
  %and42 = and i32 %shr30.neg, %and9
  %or43 = or i32 %and42, %and35
  %and44 = and i32 %shr30.neg, %add10
  %or45 = or i32 %and36, %and44
  %shl = shl i32 %or39, 26
  %or46 = or i32 %shl, %or
  %shr48 = lshr i32 %or39, 6
  %shl49 = shl i32 %or41, 20
  %or50 = or i32 %shr48, %shl49
  %shr52 = lshr i32 %or41, 12
  %shl53 = shl i32 %or43, 14
  %or54 = or i32 %shr52, %shl53
  %shr56 = lshr i32 %or43, 18
  %shl57 = shl i32 %or45, 8
  %or58 = or i32 %shl57, %shr56
  %tobool.not = icmp eq ptr %nonce, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !15

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i32 %or46 to i64
  %10 = ptrtoint ptr %nonce to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nonce, align 4
  %conv63 = zext i32 %11 to i64
  %add64 = add nuw nsw i64 %conv63, %conv
  %conv65 = trunc i64 %add64 to i32
  %conv66 = zext i32 %or50 to i64
  %arrayidx67 = getelementptr i32, ptr %nonce, i32 1
  %12 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx67, align 4
  %conv68 = zext i32 %13 to i64
  %add69 = add nuw nsw i64 %conv68, %conv66
  %shr70 = lshr i64 %add64, 32
  %add71 = add nuw nsw i64 %add69, %shr70
  %conv72 = trunc i64 %add71 to i32
  %conv73 = zext i32 %or54 to i64
  %arrayidx74 = getelementptr i32, ptr %nonce, i32 2
  %14 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx74, align 4
  %conv75 = zext i32 %15 to i64
  %add76 = add nuw nsw i64 %conv75, %conv73
  %shr77 = lshr i64 %add71, 32
  %add78 = add nuw nsw i64 %add76, %shr77
  %conv79 = trunc i64 %add78 to i32
  %conv80 = zext i32 %or58 to i64
  %arrayidx81 = getelementptr i32, ptr %nonce, i32 3
  %16 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx81, align 4
  %conv82 = zext i32 %17 to i64
  %add83 = add nuw nsw i64 %conv82, %conv80
  %shr84 = lshr i64 %add78, 32
  %add85 = add nuw nsw i64 %add83, %shr84
  %conv86 = trunc i64 %add85 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %h3.0 = phi i32 [ %conv86, %if.then ], [ %or58, %entry.if.end_crit_edge ]
  %h2.0 = phi i32 [ %conv79, %if.then ], [ %or54, %entry.if.end_crit_edge ]
  %h1.0 = phi i32 [ %conv72, %if.then ], [ %or50, %entry.if.end_crit_edge ]
  %h0.0 = phi i32 [ %conv65, %if.then ], [ %or46, %entry.if.end_crit_edge ]
  %18 = tail call i32 @llvm.bswap.i32(i32 %h0.0) #3
  %19 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %dst, align 1
  %arrayidx88 = getelementptr i8, ptr %dst, i32 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %h1.0) #3
  %21 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %arrayidx88, align 1
  %arrayidx89 = getelementptr i8, ptr %dst, i32 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %h2.0) #3
  %23 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %arrayidx89, align 1
  %arrayidx90 = getelementptr i8, ptr %dst, i32 12
  %24 = tail call i32 @llvm.bswap.i32(i32 %h3.0) #3
  %25 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %arrayidx90, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_poly1305_core_setkey, !1, !"__ksymtab_poly1305_core_setkey", i1 false, i1 false}
!1 = !{!"../lib/crypto/poly1305-donna32.c", i32 29, i32 1}
!2 = !{ptr @__ksymtab_poly1305_core_blocks, !3, !"__ksymtab_poly1305_core_blocks", i1 false, i1 false}
!3 = !{!"../lib/crypto/poly1305-donna32.c", i32 118, i32 1}
!4 = !{ptr @__ksymtab_poly1305_core_emit, !5, !"__ksymtab_poly1305_core_emit", i1 false, i1 false}
!5 = !{!"../lib/crypto/poly1305-donna32.c", i32 205, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
