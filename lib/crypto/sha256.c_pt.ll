; ModuleID = '/llk/IR_all_yes/lib/crypto/sha256.c_pt.bc'
source_filename = "../lib/crypto/sha256.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sha256_update\22, \22a\22\09"
module asm "\09.weak\09__crc_sha256_update\09\09\09\09"
module asm "\09.long\09__crc_sha256_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha256_update:\09\09\09\09\09"
module asm "\09.asciz \09\22sha256_update\22\09\09\09\09\09"
module asm "__kstrtabns_sha256_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sha224_update\22, \22a\22\09"
module asm "\09.weak\09__crc_sha224_update\09\09\09\09"
module asm "\09.long\09__crc_sha224_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha224_update:\09\09\09\09\09"
module asm "\09.asciz \09\22sha224_update\22\09\09\09\09\09"
module asm "__kstrtabns_sha224_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sha256_final\22, \22a\22\09"
module asm "\09.weak\09__crc_sha256_final\09\09\09\09"
module asm "\09.long\09__crc_sha256_final\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha256_final:\09\09\09\09\09"
module asm "\09.asciz \09\22sha256_final\22\09\09\09\09\09"
module asm "__kstrtabns_sha256_final:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sha224_final\22, \22a\22\09"
module asm "\09.weak\09__crc_sha224_final\09\09\09\09"
module asm "\09.long\09__crc_sha224_final\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha224_final:\09\09\09\09\09"
module asm "\09.asciz \09\22sha224_final\22\09\09\09\09\09"
module asm "__kstrtabns_sha224_final:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sha256\22, \22a\22\09"
module asm "\09.weak\09__crc_sha256\09\09\09\09"
module asm "\09.long\09__crc_sha256\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha256:\09\09\09\09\09"
module asm "\09.asciz \09\22sha256\22\09\09\09\09\09"
module asm "__kstrtabns_sha256:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sha256_state = type { [8 x i32], i64, [64 x i8] }

@__kstrtab_sha256_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha256_update = external dso_local constant [0 x i8], align 1
@__ksymtab_sha256_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha256_update to i32), ptr @__kstrtab_sha256_update, ptr @__kstrtabns_sha256_update }, section "___ksymtab+sha256_update", align 4
@__kstrtab_sha224_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha224_update = external dso_local constant [0 x i8], align 1
@__ksymtab_sha224_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha224_update to i32), ptr @__kstrtab_sha224_update, ptr @__kstrtabns_sha224_update }, section "___ksymtab+sha224_update", align 4
@__kstrtab_sha256_final = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha256_final = external dso_local constant [0 x i8], align 1
@__ksymtab_sha256_final = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha256_final to i32), ptr @__kstrtab_sha256_final, ptr @__kstrtabns_sha256_final }, section "___ksymtab+sha256_final", align 4
@__kstrtab_sha224_final = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha224_final = external dso_local constant [0 x i8], align 1
@__ksymtab_sha224_final = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha224_final to i32), ptr @__kstrtab_sha224_final, ptr @__kstrtabns_sha224_final }, section "___ksymtab+sha224_final", align 4
@__kstrtab_sha256 = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha256 = external dso_local constant [0 x i8], align 1
@__ksymtab_sha256 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha256 to i32), ptr @__kstrtab_sha256, ptr @__kstrtabns_sha256 }, section "___ksymtab+sha256", align 4
@__UNIQUE_ID_file106 = internal constant [36 x i8] c"libsha256.file=lib/crypto/libsha256\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [22 x i8] c"libsha256.license=GPL\00", section ".modinfo", align 1
@SHA256_K = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], [64 x i8] zeroinitializer }, align 32
@__sha256_final.padding = internal constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 1
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"SHA256_K\00", align 1
@___asan_gen_.2 = private constant [23 x i8] c"../lib/crypto/sha256.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 21, i32 18 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_sha224_final, ptr @__ksymtab_sha224_update, ptr @__ksymtab_sha256, ptr @__ksymtab_sha256_final, ptr @__ksymtab_sha256_update, ptr @SHA256_K], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SHA256_K to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sha256_update(ptr nocapture noundef %sctx, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  %W = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %W) #3
  %0 = call ptr @memset(ptr %W, i32 255, i32 256)
  %count = getelementptr inbounds %struct.sha256_state, ptr %sctx, i32 0, i32 1
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %count, align 8
  %3 = trunc i64 %2 to i32
  %conv = and i32 %3, 63
  %conv1 = zext i32 %len to i64
  %add = add i64 %2, %conv1
  store i64 %add, ptr %count, align 8
  %add3 = add i32 %conv, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add3)
  %cmp = icmp ugt i32 %add3, 63
  br i1 %cmp, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %sub = sub nsw i32 0, %conv
  %buf = getelementptr inbounds %struct.sha256_state, ptr %sctx, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %buf, i32 %conv
  %add6 = sub nuw nsw i32 64, %conv
  %4 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %add6)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %done.0 = phi i32 [ %sub, %if.then5 ], [ 0, %if.then.if.end_crit_edge ]
  %src.0 = phi ptr [ %buf, %if.then5 ], [ %data, %if.then.if.end_crit_edge ]
  %arrayidx.i472.i = getelementptr inbounds i32, ptr %W, i32 1
  %arrayidx.i474.i = getelementptr inbounds i32, ptr %W, i32 2
  %arrayidx.i476.i = getelementptr inbounds i32, ptr %W, i32 3
  %arrayidx.i478.i = getelementptr inbounds i32, ptr %W, i32 4
  %arrayidx.i480.i = getelementptr inbounds i32, ptr %W, i32 5
  %arrayidx.i482.i = getelementptr inbounds i32, ptr %W, i32 6
  %arrayidx.i484.i = getelementptr inbounds i32, ptr %W, i32 7
  %arrayidx.i.1.i = getelementptr inbounds i32, ptr %W, i32 8
  %arrayidx.i472.1.i = getelementptr inbounds i32, ptr %W, i32 9
  %arrayidx.i474.1.i = getelementptr inbounds i32, ptr %W, i32 10
  %arrayidx.i476.1.i = getelementptr inbounds i32, ptr %W, i32 11
  %arrayidx.i478.1.i = getelementptr inbounds i32, ptr %W, i32 12
  %arrayidx.i480.1.i = getelementptr inbounds i32, ptr %W, i32 13
  %arrayidx.i482.1.i = getelementptr inbounds i32, ptr %W, i32 14
  %arrayidx.i484.1.i = getelementptr inbounds i32, ptr %W, i32 15
  %arrayidx23.i = getelementptr i32, ptr %sctx, i32 1
  %arrayidx24.i = getelementptr i32, ptr %sctx, i32 2
  %arrayidx25.i = getelementptr i32, ptr %sctx, i32 3
  %arrayidx26.i = getelementptr i32, ptr %sctx, i32 4
  %arrayidx27.i = getelementptr i32, ptr %sctx, i32 5
  %arrayidx28.i = getelementptr i32, ptr %sctx, i32 6
  %arrayidx29.i = getelementptr i32, ptr %sctx, i32 7
  br label %do.body

do.body:                                          ; preds = %sha256_transform.exit.do.body_crit_edge, %if.end
  %done.1 = phi i32 [ %done.0, %if.end ], [ %add11, %sha256_transform.exit.do.body_crit_edge ]
  %src.1 = phi ptr [ %src.0, %if.end ], [ %add.ptr12, %sha256_transform.exit.do.body_crit_edge ]
  %5 = ptrtoint ptr %src.1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %src.1, align 1
  %7 = ptrtoint ptr %W to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %W, align 4
  %add.ptr.i471.i = getelementptr i32, ptr %src.1, i32 1
  %8 = ptrtoint ptr %add.ptr.i471.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr.i471.i, align 1
  %10 = ptrtoint ptr %arrayidx.i472.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx.i472.i, align 4
  %add.ptr.i473.i = getelementptr i32, ptr %src.1, i32 2
  %11 = ptrtoint ptr %add.ptr.i473.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %add.ptr.i473.i, align 1
  %13 = ptrtoint ptr %arrayidx.i474.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx.i474.i, align 4
  %add.ptr.i475.i = getelementptr i32, ptr %src.1, i32 3
  %14 = ptrtoint ptr %add.ptr.i475.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr.i475.i, align 1
  %16 = ptrtoint ptr %arrayidx.i476.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx.i476.i, align 4
  %add.ptr.i477.i = getelementptr i32, ptr %src.1, i32 4
  %17 = ptrtoint ptr %add.ptr.i477.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr.i477.i, align 1
  %19 = ptrtoint ptr %arrayidx.i478.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.i478.i, align 4
  %add.ptr.i479.i = getelementptr i32, ptr %src.1, i32 5
  %20 = ptrtoint ptr %add.ptr.i479.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %add.ptr.i479.i, align 1
  %22 = ptrtoint ptr %arrayidx.i480.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i480.i, align 4
  %add.ptr.i481.i = getelementptr i32, ptr %src.1, i32 6
  %23 = ptrtoint ptr %add.ptr.i481.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %add.ptr.i481.i, align 1
  %25 = ptrtoint ptr %arrayidx.i482.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx.i482.i, align 4
  %add.ptr.i483.i = getelementptr i32, ptr %src.1, i32 7
  %26 = ptrtoint ptr %add.ptr.i483.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %add.ptr.i483.i, align 1
  %28 = ptrtoint ptr %arrayidx.i484.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i484.i, align 4
  %add.ptr.i.1.i = getelementptr i32, ptr %src.1, i32 8
  %29 = ptrtoint ptr %add.ptr.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %add.ptr.i.1.i, align 1
  %31 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx.i.1.i, align 4
  %add.ptr.i471.1.i = getelementptr i32, ptr %src.1, i32 9
  %32 = ptrtoint ptr %add.ptr.i471.1.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %add.ptr.i471.1.i, align 1
  %34 = ptrtoint ptr %arrayidx.i472.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx.i472.1.i, align 4
  %add.ptr.i473.1.i = getelementptr i32, ptr %src.1, i32 10
  %35 = ptrtoint ptr %add.ptr.i473.1.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %add.ptr.i473.1.i, align 1
  %37 = ptrtoint ptr %arrayidx.i474.1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx.i474.1.i, align 4
  %add.ptr.i475.1.i = getelementptr i32, ptr %src.1, i32 11
  %38 = ptrtoint ptr %add.ptr.i475.1.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %add.ptr.i475.1.i, align 1
  %40 = ptrtoint ptr %arrayidx.i476.1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx.i476.1.i, align 4
  %add.ptr.i477.1.i = getelementptr i32, ptr %src.1, i32 12
  %41 = ptrtoint ptr %add.ptr.i477.1.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %add.ptr.i477.1.i, align 1
  %43 = ptrtoint ptr %arrayidx.i478.1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx.i478.1.i, align 4
  %add.ptr.i479.1.i = getelementptr i32, ptr %src.1, i32 13
  %44 = ptrtoint ptr %add.ptr.i479.1.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %add.ptr.i479.1.i, align 1
  %46 = ptrtoint ptr %arrayidx.i480.1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx.i480.1.i, align 4
  %add.ptr.i481.1.i = getelementptr i32, ptr %src.1, i32 14
  %47 = ptrtoint ptr %add.ptr.i481.1.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %add.ptr.i481.1.i, align 1
  %49 = ptrtoint ptr %arrayidx.i482.1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx.i482.1.i, align 4
  %add.ptr.i483.1.i = getelementptr i32, ptr %src.1, i32 15
  %50 = ptrtoint ptr %add.ptr.i483.1.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %add.ptr.i483.1.i, align 1
  %52 = ptrtoint ptr %arrayidx.i484.1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx.i484.1.i, align 4
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %do.body
  %i.1740.i = phi i32 [ %add21.i, %for.body11.i.for.body11.i_crit_edge ], [ 16, %do.body ]
  %sub.i.i = add nsw i32 %i.1740.i, -2
  %arrayidx.i485.i = getelementptr i32, ptr %W, i32 %sub.i.i
  %53 = ptrtoint ptr %arrayidx.i485.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i485.i, align 4
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 15) #3
  %or.i41.i.i = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 13) #3
  %xor.i.i = xor i32 %or.i.i.i, %or.i41.i.i
  %shr.i.i = lshr i32 %54, 10
  %xor6.i.i = xor i32 %xor.i.i, %shr.i.i
  %sub7.i.i = add nsw i32 %i.1740.i, -7
  %arrayidx8.i.i = getelementptr i32, ptr %W, i32 %sub7.i.i
  %55 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx8.i.i, align 4
  %add.i.i = add i32 %xor6.i.i, %56
  %sub9.i.i = add nsw i32 %i.1740.i, -15
  %arrayidx10.i.i = getelementptr i32, ptr %W, i32 %sub9.i.i
  %57 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx10.i.i, align 4
  %or.i42.i.i = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 25) #3
  %or.i43.i.i = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 14) #3
  %xor15.i.i = xor i32 %or.i42.i.i, %or.i43.i.i
  %shr18.i.i = lshr i32 %58, 3
  %xor19.i.i = xor i32 %xor15.i.i, %shr18.i.i
  %sub21.i.i = add nsw i32 %i.1740.i, -16
  %arrayidx22.i.i = getelementptr i32, ptr %W, i32 %sub21.i.i
  %59 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx22.i.i, align 4
  %add20.i.i = add i32 %add.i.i, %60
  %add23.i.i = add i32 %add20.i.i, %xor19.i.i
  %arrayidx24.i.i = getelementptr i32, ptr %W, i32 %i.1740.i
  %61 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add23.i.i, ptr %arrayidx24.i.i, align 4
  %add13.i = or i32 %i.1740.i, 1
  %sub.i486.i = add nsw i32 %i.1740.i, -1
  %arrayidx.i487.i = getelementptr i32, ptr %W, i32 %sub.i486.i
  %62 = ptrtoint ptr %arrayidx.i487.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i487.i, align 4
  %or.i.i488.i = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 15) #3
  %or.i41.i489.i = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 13) #3
  %xor.i490.i = xor i32 %or.i.i488.i, %or.i41.i489.i
  %shr.i491.i = lshr i32 %63, 10
  %xor6.i492.i = xor i32 %xor.i490.i, %shr.i491.i
  %sub7.i493.i = add nsw i32 %i.1740.i, -6
  %arrayidx8.i494.i = getelementptr i32, ptr %W, i32 %sub7.i493.i
  %64 = ptrtoint ptr %arrayidx8.i494.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx8.i494.i, align 4
  %sub9.i496.i = add nsw i32 %i.1740.i, -14
  %arrayidx10.i497.i = getelementptr i32, ptr %W, i32 %sub9.i496.i
  %66 = ptrtoint ptr %arrayidx10.i497.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx10.i497.i, align 4
  %or.i42.i498.i = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 25) #3
  %or.i43.i499.i = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 14) #3
  %xor15.i500.i = xor i32 %or.i42.i498.i, %or.i43.i499.i
  %shr18.i501.i = lshr i32 %67, 3
  %xor19.i502.i = xor i32 %xor15.i500.i, %shr18.i501.i
  %add.i495.i = add i32 %65, %58
  %add20.i505.i = add i32 %add.i495.i, %xor6.i492.i
  %add23.i506.i = add i32 %add20.i505.i, %xor19.i502.i
  %arrayidx24.i507.i = getelementptr i32, ptr %W, i32 %add13.i
  %68 = ptrtoint ptr %arrayidx24.i507.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add23.i506.i, ptr %arrayidx24.i507.i, align 4
  %add14.i = or i32 %i.1740.i, 2
  %or.i.i510.i = tail call i32 @llvm.fshl.i32(i32 %add23.i.i, i32 %add23.i.i, i32 15) #3
  %or.i41.i511.i = tail call i32 @llvm.fshl.i32(i32 %add23.i.i, i32 %add23.i.i, i32 13) #3
  %xor.i512.i = xor i32 %or.i.i510.i, %or.i41.i511.i
  %shr.i513.i = lshr i32 %add23.i.i, 10
  %xor6.i514.i = xor i32 %xor.i512.i, %shr.i513.i
  %sub7.i515.i = add nsw i32 %i.1740.i, -5
  %arrayidx8.i516.i = getelementptr i32, ptr %W, i32 %sub7.i515.i
  %69 = ptrtoint ptr %arrayidx8.i516.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx8.i516.i, align 4
  %sub9.i518.i = add nsw i32 %i.1740.i, -13
  %arrayidx10.i519.i = getelementptr i32, ptr %W, i32 %sub9.i518.i
  %71 = ptrtoint ptr %arrayidx10.i519.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx10.i519.i, align 4
  %or.i42.i520.i = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 25) #3
  %or.i43.i521.i = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 14) #3
  %xor15.i522.i = xor i32 %or.i42.i520.i, %or.i43.i521.i
  %shr18.i523.i = lshr i32 %72, 3
  %xor19.i524.i = xor i32 %xor15.i522.i, %shr18.i523.i
  %add.i517.i = add i32 %70, %67
  %add20.i527.i = add i32 %add.i517.i, %xor6.i514.i
  %add23.i528.i = add i32 %add20.i527.i, %xor19.i524.i
  %arrayidx24.i529.i = getelementptr i32, ptr %W, i32 %add14.i
  %73 = ptrtoint ptr %arrayidx24.i529.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add23.i528.i, ptr %arrayidx24.i529.i, align 4
  %add15.i = or i32 %i.1740.i, 3
  %or.i.i532.i = tail call i32 @llvm.fshl.i32(i32 %add23.i506.i, i32 %add23.i506.i, i32 15) #3
  %or.i41.i533.i = tail call i32 @llvm.fshl.i32(i32 %add23.i506.i, i32 %add23.i506.i, i32 13) #3
  %xor.i534.i = xor i32 %or.i.i532.i, %or.i41.i533.i
  %shr.i535.i = lshr i32 %add23.i506.i, 10
  %xor6.i536.i = xor i32 %xor.i534.i, %shr.i535.i
  %sub7.i537.i = add nsw i32 %i.1740.i, -4
  %arrayidx8.i538.i = getelementptr i32, ptr %W, i32 %sub7.i537.i
  %74 = ptrtoint ptr %arrayidx8.i538.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx8.i538.i, align 4
  %sub9.i540.i = add nsw i32 %i.1740.i, -12
  %arrayidx10.i541.i = getelementptr i32, ptr %W, i32 %sub9.i540.i
  %76 = ptrtoint ptr %arrayidx10.i541.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx10.i541.i, align 4
  %or.i42.i542.i = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 25) #3
  %or.i43.i543.i = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 14) #3
  %xor15.i544.i = xor i32 %or.i42.i542.i, %or.i43.i543.i
  %shr18.i545.i = lshr i32 %77, 3
  %xor19.i546.i = xor i32 %xor15.i544.i, %shr18.i545.i
  %add.i539.i = add i32 %75, %72
  %add20.i549.i = add i32 %add.i539.i, %xor6.i536.i
  %add23.i550.i = add i32 %add20.i549.i, %xor19.i546.i
  %arrayidx24.i551.i = getelementptr i32, ptr %W, i32 %add15.i
  %78 = ptrtoint ptr %arrayidx24.i551.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add23.i550.i, ptr %arrayidx24.i551.i, align 4
  %add16.i = or i32 %i.1740.i, 4
  %or.i.i554.i = tail call i32 @llvm.fshl.i32(i32 %add23.i528.i, i32 %add23.i528.i, i32 15) #3
  %or.i41.i555.i = tail call i32 @llvm.fshl.i32(i32 %add23.i528.i, i32 %add23.i528.i, i32 13) #3
  %xor.i556.i = xor i32 %or.i.i554.i, %or.i41.i555.i
  %shr.i557.i = lshr i32 %add23.i528.i, 10
  %xor6.i558.i = xor i32 %xor.i556.i, %shr.i557.i
  %sub7.i559.i = add nsw i32 %i.1740.i, -3
  %arrayidx8.i560.i = getelementptr i32, ptr %W, i32 %sub7.i559.i
  %79 = ptrtoint ptr %arrayidx8.i560.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx8.i560.i, align 4
  %sub9.i562.i = add nsw i32 %i.1740.i, -11
  %arrayidx10.i563.i = getelementptr i32, ptr %W, i32 %sub9.i562.i
  %81 = ptrtoint ptr %arrayidx10.i563.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx10.i563.i, align 4
  %or.i42.i564.i = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 25) #3
  %or.i43.i565.i = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 14) #3
  %xor15.i566.i = xor i32 %or.i42.i564.i, %or.i43.i565.i
  %shr18.i567.i = lshr i32 %82, 3
  %xor19.i568.i = xor i32 %xor15.i566.i, %shr18.i567.i
  %add.i561.i = add i32 %80, %77
  %add20.i571.i = add i32 %add.i561.i, %xor6.i558.i
  %add23.i572.i = add i32 %add20.i571.i, %xor19.i568.i
  %arrayidx24.i573.i = getelementptr i32, ptr %W, i32 %add16.i
  %83 = ptrtoint ptr %arrayidx24.i573.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add23.i572.i, ptr %arrayidx24.i573.i, align 4
  %add17.i = or i32 %i.1740.i, 5
  %or.i.i576.i = tail call i32 @llvm.fshl.i32(i32 %add23.i550.i, i32 %add23.i550.i, i32 15) #3
  %or.i41.i577.i = tail call i32 @llvm.fshl.i32(i32 %add23.i550.i, i32 %add23.i550.i, i32 13) #3
  %xor.i578.i = xor i32 %or.i.i576.i, %or.i41.i577.i
  %shr.i579.i = lshr i32 %add23.i550.i, 10
  %xor6.i580.i = xor i32 %xor.i578.i, %shr.i579.i
  %sub9.i584.i = add nsw i32 %i.1740.i, -10
  %arrayidx10.i585.i = getelementptr i32, ptr %W, i32 %sub9.i584.i
  %84 = ptrtoint ptr %arrayidx10.i585.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx10.i585.i, align 4
  %or.i42.i586.i = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 25) #3
  %or.i43.i587.i = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 14) #3
  %xor15.i588.i = xor i32 %or.i42.i586.i, %or.i43.i587.i
  %shr18.i589.i = lshr i32 %85, 3
  %xor19.i590.i = xor i32 %xor15.i588.i, %shr18.i589.i
  %add.i583.i = add i32 %82, %54
  %add20.i593.i = add i32 %add.i583.i, %xor6.i580.i
  %add23.i594.i = add i32 %add20.i593.i, %xor19.i590.i
  %arrayidx24.i595.i = getelementptr i32, ptr %W, i32 %add17.i
  %86 = ptrtoint ptr %arrayidx24.i595.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add23.i594.i, ptr %arrayidx24.i595.i, align 4
  %add18.i = or i32 %i.1740.i, 6
  %or.i.i598.i = tail call i32 @llvm.fshl.i32(i32 %add23.i572.i, i32 %add23.i572.i, i32 15) #3
  %or.i41.i599.i = tail call i32 @llvm.fshl.i32(i32 %add23.i572.i, i32 %add23.i572.i, i32 13) #3
  %xor.i600.i = xor i32 %or.i.i598.i, %or.i41.i599.i
  %shr.i601.i = lshr i32 %add23.i572.i, 10
  %xor6.i602.i = xor i32 %xor.i600.i, %shr.i601.i
  %sub9.i606.i = add nsw i32 %i.1740.i, -9
  %arrayidx10.i607.i = getelementptr i32, ptr %W, i32 %sub9.i606.i
  %87 = ptrtoint ptr %arrayidx10.i607.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx10.i607.i, align 4
  %or.i42.i608.i = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 25) #3
  %or.i43.i609.i = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 14) #3
  %xor15.i610.i = xor i32 %or.i42.i608.i, %or.i43.i609.i
  %shr18.i611.i = lshr i32 %88, 3
  %xor19.i612.i = xor i32 %xor15.i610.i, %shr18.i611.i
  %add.i605.i = add i32 %85, %63
  %add20.i615.i = add i32 %add.i605.i, %xor6.i602.i
  %add23.i616.i = add i32 %add20.i615.i, %xor19.i612.i
  %arrayidx24.i617.i = getelementptr i32, ptr %W, i32 %add18.i
  %89 = ptrtoint ptr %arrayidx24.i617.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add23.i616.i, ptr %arrayidx24.i617.i, align 4
  %add19.i = or i32 %i.1740.i, 7
  %or.i.i620.i = tail call i32 @llvm.fshl.i32(i32 %add23.i594.i, i32 %add23.i594.i, i32 15) #3
  %or.i41.i621.i = tail call i32 @llvm.fshl.i32(i32 %add23.i594.i, i32 %add23.i594.i, i32 13) #3
  %xor.i622.i = xor i32 %or.i.i620.i, %or.i41.i621.i
  %shr.i623.i = lshr i32 %add23.i594.i, 10
  %xor6.i624.i = xor i32 %xor.i622.i, %shr.i623.i
  %sub9.i628.i = add nsw i32 %i.1740.i, -8
  %arrayidx10.i629.i = getelementptr i32, ptr %W, i32 %sub9.i628.i
  %90 = ptrtoint ptr %arrayidx10.i629.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx10.i629.i, align 4
  %or.i42.i630.i = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 25) #3
  %or.i43.i631.i = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 14) #3
  %xor15.i632.i = xor i32 %or.i42.i630.i, %or.i43.i631.i
  %shr18.i633.i = lshr i32 %91, 3
  %xor19.i634.i = xor i32 %xor15.i632.i, %shr18.i633.i
  %add.i627.i = add i32 %88, %add23.i.i
  %add20.i637.i = add i32 %add.i627.i, %xor19.i634.i
  %add23.i638.i = add i32 %add20.i637.i, %xor6.i624.i
  %arrayidx24.i639.i = getelementptr i32, ptr %W, i32 %add19.i
  %92 = ptrtoint ptr %arrayidx24.i639.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add23.i638.i, ptr %arrayidx24.i639.i, align 4
  %add21.i = add nuw nsw i32 %i.1740.i, 8
  %cmp10.i = icmp ult i32 %i.1740.i, 56
  br i1 %cmp10.i, label %for.body11.i.for.body11.i_crit_edge, label %for.end22.i

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body11.i

for.end22.i:                                      ; preds = %for.body11.i
  %93 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sctx, align 4
  %95 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx23.i, align 4
  %97 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx24.i, align 4
  %99 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx25.i, align 4
  %101 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx26.i, align 4
  %103 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx27.i, align 4
  %105 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx28.i, align 4
  %107 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx29.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.end22.i
  %a.0749.i = phi i32 [ %94, %for.end22.i ], [ %add247.i, %do.body.i.do.body.i_crit_edge ]
  %b.0748.i = phi i32 [ %96, %for.end22.i ], [ %add219.i, %do.body.i.do.body.i_crit_edge ]
  %c.0747.i = phi i32 [ %98, %for.end22.i ], [ %add191.i, %do.body.i.do.body.i_crit_edge ]
  %d.0746.i = phi i32 [ %100, %for.end22.i ], [ %add163.i, %do.body.i.do.body.i_crit_edge ]
  %e.0745.i = phi i32 [ %102, %for.end22.i ], [ %add246.i, %do.body.i.do.body.i_crit_edge ]
  %f.0744.i = phi i32 [ %104, %for.end22.i ], [ %add218.i, %do.body.i.do.body.i_crit_edge ]
  %g.0743.i = phi i32 [ %106, %for.end22.i ], [ %add190.i, %do.body.i.do.body.i_crit_edge ]
  %h.0742.i = phi i32 [ %108, %for.end22.i ], [ %add162.i, %do.body.i.do.body.i_crit_edge ]
  %i.2741.i = phi i32 [ 0, %for.end22.i ], [ %add251.i, %do.body.i.do.body.i_crit_edge ]
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %e.0745.i, i32 %e.0745.i, i32 26) #3
  %or.i640.i = tail call i32 @llvm.fshl.i32(i32 %e.0745.i, i32 %e.0745.i, i32 21) #3
  %xor.i = xor i32 %or.i.i, %or.i640.i
  %or.i641.i = tail call i32 @llvm.fshl.i32(i32 %e.0745.i, i32 %e.0745.i, i32 7) #3
  %xor35.i = xor i32 %xor.i, %or.i641.i
  %xor.i642.i = xor i32 %g.0743.i, %f.0744.i
  %and.i.i = and i32 %xor.i642.i, %e.0745.i
  %xor1.i.i = xor i32 %and.i.i, %g.0743.i
  %arrayidx40.i = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %i.2741.i
  %109 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx40.i, align 4
  %arrayidx43.i = getelementptr i32, ptr %W, i32 %i.2741.i
  %111 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx43.i, align 4
  %add36.i = add i32 %xor35.i, %h.0742.i
  %add38.i = add i32 %add36.i, %xor1.i.i
  %add41.i = add i32 %add38.i, %110
  %add44.i = add i32 %add41.i, %112
  %or.i643.i = tail call i32 @llvm.fshl.i32(i32 %a.0749.i, i32 %a.0749.i, i32 30) #3
  %or.i644.i = tail call i32 @llvm.fshl.i32(i32 %a.0749.i, i32 %a.0749.i, i32 19) #3
  %xor47.i = xor i32 %or.i643.i, %or.i644.i
  %or.i645.i = tail call i32 @llvm.fshl.i32(i32 %a.0749.i, i32 %a.0749.i, i32 10) #3
  %xor49.i = xor i32 %xor47.i, %or.i645.i
  %and.i646.i = and i32 %b.0748.i, %a.0749.i
  %or.i647.i = or i32 %b.0748.i, %a.0749.i
  %and1.i.i = and i32 %or.i647.i, %c.0747.i
  %or2.i.i = or i32 %and1.i.i, %and.i646.i
  %add51.i = add i32 %or2.i.i, %xor49.i
  %add52.i = add i32 %add44.i, %d.0746.i
  %add53.i = add i32 %add51.i, %add44.i
  %or.i648.i = tail call i32 @llvm.fshl.i32(i32 %add52.i, i32 %add52.i, i32 26) #3
  %or.i649.i = tail call i32 @llvm.fshl.i32(i32 %add52.i, i32 %add52.i, i32 21) #3
  %xor59.i = xor i32 %or.i648.i, %or.i649.i
  %or.i650.i = tail call i32 @llvm.fshl.i32(i32 %add52.i, i32 %add52.i, i32 7) #3
  %xor61.i = xor i32 %xor59.i, %or.i650.i
  %xor.i651.i = xor i32 %f.0744.i, %e.0745.i
  %and.i652.i = and i32 %add52.i, %xor.i651.i
  %xor1.i653.i = xor i32 %and.i652.i, %f.0744.i
  %add65.i = or i32 %i.2741.i, 1
  %arrayidx66.i = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %add65.i
  %113 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx66.i, align 4
  %arrayidx69.i = getelementptr i32, ptr %W, i32 %add65.i
  %115 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx69.i, align 4
  %add62.i = add i32 %114, %g.0743.i
  %add64.i = add i32 %add62.i, %116
  %add67.i = add i32 %add64.i, %xor1.i653.i
  %add70.i = add i32 %add67.i, %xor61.i
  %or.i654.i = tail call i32 @llvm.fshl.i32(i32 %add53.i, i32 %add53.i, i32 30) #3
  %or.i655.i = tail call i32 @llvm.fshl.i32(i32 %add53.i, i32 %add53.i, i32 19) #3
  %xor73.i = xor i32 %or.i654.i, %or.i655.i
  %or.i656.i = tail call i32 @llvm.fshl.i32(i32 %add53.i, i32 %add53.i, i32 10) #3
  %xor75.i = xor i32 %xor73.i, %or.i656.i
  %and.i657.i = and i32 %add53.i, %a.0749.i
  %or.i658.i = or i32 %add53.i, %a.0749.i
  %and1.i659.i = and i32 %or.i658.i, %b.0748.i
  %or2.i660.i = or i32 %and1.i659.i, %and.i657.i
  %add77.i = add i32 %xor75.i, %or2.i660.i
  %add78.i = add i32 %add70.i, %c.0747.i
  %add79.i = add i32 %add77.i, %add70.i
  %or.i661.i = tail call i32 @llvm.fshl.i32(i32 %add78.i, i32 %add78.i, i32 26) #3
  %or.i662.i = tail call i32 @llvm.fshl.i32(i32 %add78.i, i32 %add78.i, i32 21) #3
  %xor87.i = xor i32 %or.i661.i, %or.i662.i
  %or.i663.i = tail call i32 @llvm.fshl.i32(i32 %add78.i, i32 %add78.i, i32 7) #3
  %xor89.i = xor i32 %xor87.i, %or.i663.i
  %xor.i664.i = xor i32 %add52.i, %e.0745.i
  %and.i665.i = and i32 %add78.i, %xor.i664.i
  %xor1.i666.i = xor i32 %and.i665.i, %e.0745.i
  %add93.i = or i32 %i.2741.i, 2
  %arrayidx94.i = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %add93.i
  %117 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx94.i, align 4
  %arrayidx97.i = getelementptr i32, ptr %W, i32 %add93.i
  %119 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx97.i, align 4
  %add90.i = add i32 %118, %f.0744.i
  %add92.i = add i32 %add90.i, %120
  %add95.i = add i32 %add92.i, %xor1.i666.i
  %add98.i = add i32 %add95.i, %xor89.i
  %or.i667.i = tail call i32 @llvm.fshl.i32(i32 %add79.i, i32 %add79.i, i32 30) #3
  %or.i668.i = tail call i32 @llvm.fshl.i32(i32 %add79.i, i32 %add79.i, i32 19) #3
  %xor101.i = xor i32 %or.i667.i, %or.i668.i
  %or.i669.i = tail call i32 @llvm.fshl.i32(i32 %add79.i, i32 %add79.i, i32 10) #3
  %xor103.i = xor i32 %xor101.i, %or.i669.i
  %and.i670.i = and i32 %add79.i, %add53.i
  %or.i671.i = or i32 %add79.i, %add53.i
  %and1.i672.i = and i32 %or.i671.i, %a.0749.i
  %or2.i673.i = or i32 %and1.i672.i, %and.i670.i
  %add105.i = add i32 %xor103.i, %or2.i673.i
  %add106.i = add i32 %add98.i, %b.0748.i
  %add107.i = add i32 %add105.i, %add98.i
  %or.i674.i = tail call i32 @llvm.fshl.i32(i32 %add106.i, i32 %add106.i, i32 26) #3
  %or.i675.i = tail call i32 @llvm.fshl.i32(i32 %add106.i, i32 %add106.i, i32 21) #3
  %xor115.i = xor i32 %or.i674.i, %or.i675.i
  %or.i676.i = tail call i32 @llvm.fshl.i32(i32 %add106.i, i32 %add106.i, i32 7) #3
  %xor117.i = xor i32 %xor115.i, %or.i676.i
  %xor.i677.i = xor i32 %add78.i, %add52.i
  %and.i678.i = and i32 %add106.i, %xor.i677.i
  %xor1.i679.i = xor i32 %and.i678.i, %add52.i
  %add121.i = or i32 %i.2741.i, 3
  %arrayidx122.i = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %add121.i
  %121 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx122.i, align 4
  %arrayidx125.i = getelementptr i32, ptr %W, i32 %add121.i
  %123 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx125.i, align 4
  %add118.i = add i32 %122, %e.0745.i
  %add120.i = add i32 %add118.i, %124
  %add123.i = add i32 %add120.i, %xor1.i679.i
  %add126.i = add i32 %add123.i, %xor117.i
  %or.i680.i = tail call i32 @llvm.fshl.i32(i32 %add107.i, i32 %add107.i, i32 30) #3
  %or.i681.i = tail call i32 @llvm.fshl.i32(i32 %add107.i, i32 %add107.i, i32 19) #3
  %xor129.i = xor i32 %or.i680.i, %or.i681.i
  %or.i682.i = tail call i32 @llvm.fshl.i32(i32 %add107.i, i32 %add107.i, i32 10) #3
  %xor131.i = xor i32 %xor129.i, %or.i682.i
  %and.i683.i = and i32 %add107.i, %add79.i
  %or.i684.i = or i32 %add107.i, %add79.i
  %and1.i685.i = and i32 %or.i684.i, %add53.i
  %or2.i686.i = or i32 %and1.i685.i, %and.i683.i
  %add133.i = add i32 %xor131.i, %or2.i686.i
  %add134.i = add i32 %add126.i, %a.0749.i
  %add135.i = add i32 %add133.i, %add126.i
  %or.i687.i = tail call i32 @llvm.fshl.i32(i32 %add134.i, i32 %add134.i, i32 26) #3
  %or.i688.i = tail call i32 @llvm.fshl.i32(i32 %add134.i, i32 %add134.i, i32 21) #3
  %xor143.i = xor i32 %or.i687.i, %or.i688.i
  %or.i689.i = tail call i32 @llvm.fshl.i32(i32 %add134.i, i32 %add134.i, i32 7) #3
  %xor145.i = xor i32 %xor143.i, %or.i689.i
  %xor.i690.i = xor i32 %add106.i, %add78.i
  %and.i691.i = and i32 %add134.i, %xor.i690.i
  %xor1.i692.i = xor i32 %and.i691.i, %add78.i
  %add149.i = or i32 %i.2741.i, 4
  %arrayidx150.i = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %add149.i
  %125 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx150.i, align 4
  %arrayidx153.i = getelementptr i32, ptr %W, i32 %add149.i
  %127 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx153.i, align 4
  %add146.i = add i32 %126, %add52.i
  %add148.i = add i32 %add146.i, %128
  %add151.i = add i32 %add148.i, %xor1.i692.i
  %add154.i = add i32 %add151.i, %xor145.i
  %or.i693.i = tail call i32 @llvm.fshl.i32(i32 %add135.i, i32 %add135.i, i32 30) #3
  %or.i694.i = tail call i32 @llvm.fshl.i32(i32 %add135.i, i32 %add135.i, i32 19) #3
  %xor157.i = xor i32 %or.i693.i, %or.i694.i
  %or.i695.i = tail call i32 @llvm.fshl.i32(i32 %add135.i, i32 %add135.i, i32 10) #3
  %xor159.i = xor i32 %xor157.i, %or.i695.i
  %and.i696.i = and i32 %add135.i, %add107.i
  %or.i697.i = or i32 %add135.i, %add107.i
  %and1.i698.i = and i32 %or.i697.i, %add79.i
  %or2.i699.i = or i32 %and1.i698.i, %and.i696.i
  %add161.i = add i32 %xor159.i, %or2.i699.i
  %add162.i = add i32 %add154.i, %add53.i
  %add163.i = add i32 %add161.i, %add154.i
  %or.i700.i = tail call i32 @llvm.fshl.i32(i32 %add162.i, i32 %add162.i, i32 26) #3
  %or.i701.i = tail call i32 @llvm.fshl.i32(i32 %add162.i, i32 %add162.i, i32 21) #3
  %xor171.i = xor i32 %or.i700.i, %or.i701.i
  %or.i702.i = tail call i32 @llvm.fshl.i32(i32 %add162.i, i32 %add162.i, i32 7) #3
  %xor173.i = xor i32 %xor171.i, %or.i702.i
  %xor.i703.i = xor i32 %add134.i, %add106.i
  %and.i704.i = and i32 %add162.i, %xor.i703.i
  %xor1.i705.i = xor i32 %and.i704.i, %add106.i
  %add177.i = or i32 %i.2741.i, 5
  %arrayidx178.i = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %add177.i
  %129 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx178.i, align 4
  %arrayidx181.i = getelementptr i32, ptr %W, i32 %add177.i
  %131 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx181.i, align 4
  %add174.i = add i32 %add78.i, %130
  %add176.i = add i32 %add174.i, %132
  %add179.i = add i32 %add176.i, %xor1.i705.i
  %add182.i = add i32 %add179.i, %xor173.i
  %or.i706.i = tail call i32 @llvm.fshl.i32(i32 %add163.i, i32 %add163.i, i32 30) #3
  %or.i707.i = tail call i32 @llvm.fshl.i32(i32 %add163.i, i32 %add163.i, i32 19) #3
  %xor185.i = xor i32 %or.i706.i, %or.i707.i
  %or.i708.i = tail call i32 @llvm.fshl.i32(i32 %add163.i, i32 %add163.i, i32 10) #3
  %xor187.i = xor i32 %xor185.i, %or.i708.i
  %and.i709.i = and i32 %add163.i, %add135.i
  %or.i710.i = or i32 %add163.i, %add135.i
  %and1.i711.i = and i32 %or.i710.i, %add107.i
  %or2.i712.i = or i32 %and1.i711.i, %and.i709.i
  %add189.i = add i32 %xor187.i, %or2.i712.i
  %add190.i = add i32 %add182.i, %add79.i
  %add191.i = add i32 %add189.i, %add182.i
  %or.i713.i = tail call i32 @llvm.fshl.i32(i32 %add190.i, i32 %add190.i, i32 26) #3
  %or.i714.i = tail call i32 @llvm.fshl.i32(i32 %add190.i, i32 %add190.i, i32 21) #3
  %xor199.i = xor i32 %or.i713.i, %or.i714.i
  %or.i715.i = tail call i32 @llvm.fshl.i32(i32 %add190.i, i32 %add190.i, i32 7) #3
  %xor201.i = xor i32 %xor199.i, %or.i715.i
  %xor.i716.i = xor i32 %add162.i, %add134.i
  %and.i717.i = and i32 %add190.i, %xor.i716.i
  %xor1.i718.i = xor i32 %and.i717.i, %add134.i
  %add205.i = or i32 %i.2741.i, 6
  %arrayidx206.i = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %add205.i
  %133 = ptrtoint ptr %arrayidx206.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx206.i, align 4
  %arrayidx209.i = getelementptr i32, ptr %W, i32 %add205.i
  %135 = ptrtoint ptr %arrayidx209.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx209.i, align 4
  %add202.i = add i32 %136, %134
  %add204.i = add i32 %add202.i, %add106.i
  %add207.i = add i32 %add204.i, %xor1.i718.i
  %add210.i = add i32 %add207.i, %xor201.i
  %or.i719.i = tail call i32 @llvm.fshl.i32(i32 %add191.i, i32 %add191.i, i32 30) #3
  %or.i720.i = tail call i32 @llvm.fshl.i32(i32 %add191.i, i32 %add191.i, i32 19) #3
  %xor213.i = xor i32 %or.i719.i, %or.i720.i
  %or.i721.i = tail call i32 @llvm.fshl.i32(i32 %add191.i, i32 %add191.i, i32 10) #3
  %xor215.i = xor i32 %xor213.i, %or.i721.i
  %and.i722.i = and i32 %add191.i, %add163.i
  %or.i723.i = or i32 %add191.i, %add163.i
  %and1.i724.i = and i32 %or.i723.i, %add135.i
  %or2.i725.i = or i32 %and1.i724.i, %and.i722.i
  %add217.i = add i32 %xor215.i, %or2.i725.i
  %add218.i = add i32 %add210.i, %add107.i
  %add219.i = add i32 %add217.i, %add210.i
  %or.i726.i = tail call i32 @llvm.fshl.i32(i32 %add218.i, i32 %add218.i, i32 26) #3
  %or.i727.i = tail call i32 @llvm.fshl.i32(i32 %add218.i, i32 %add218.i, i32 21) #3
  %xor227.i = xor i32 %or.i726.i, %or.i727.i
  %or.i728.i = tail call i32 @llvm.fshl.i32(i32 %add218.i, i32 %add218.i, i32 7) #3
  %xor229.i = xor i32 %xor227.i, %or.i728.i
  %xor.i729.i = xor i32 %add190.i, %add162.i
  %and.i730.i = and i32 %add218.i, %xor.i729.i
  %xor1.i731.i = xor i32 %and.i730.i, %add162.i
  %add233.i = or i32 %i.2741.i, 7
  %arrayidx234.i = getelementptr [64 x i32], ptr @SHA256_K, i32 0, i32 %add233.i
  %137 = ptrtoint ptr %arrayidx234.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx234.i, align 4
  %arrayidx237.i = getelementptr i32, ptr %W, i32 %add233.i
  %139 = ptrtoint ptr %arrayidx237.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx237.i, align 4
  %add230.i = add i32 %140, %138
  %add232.i = add i32 %add230.i, %add134.i
  %add235.i = add i32 %add232.i, %xor1.i731.i
  %add238.i = add i32 %add235.i, %xor229.i
  %or.i732.i = tail call i32 @llvm.fshl.i32(i32 %add219.i, i32 %add219.i, i32 30) #3
  %or.i733.i = tail call i32 @llvm.fshl.i32(i32 %add219.i, i32 %add219.i, i32 19) #3
  %xor241.i = xor i32 %or.i732.i, %or.i733.i
  %or.i734.i = tail call i32 @llvm.fshl.i32(i32 %add219.i, i32 %add219.i, i32 10) #3
  %xor243.i = xor i32 %xor241.i, %or.i734.i
  %and.i735.i = and i32 %add219.i, %add191.i
  %or.i736.i = or i32 %add219.i, %add191.i
  %and1.i737.i = and i32 %or.i736.i, %add163.i
  %or2.i738.i = or i32 %and1.i737.i, %and.i735.i
  %add245.i = add i32 %xor243.i, %or2.i738.i
  %add246.i = add i32 %add238.i, %add135.i
  %add247.i = add i32 %add245.i, %add238.i
  %add251.i = add nuw nsw i32 %i.2741.i, 8
  %cmp31.i = icmp ult i32 %i.2741.i, 56
  br i1 %cmp31.i, label %do.body.i.do.body.i_crit_edge, label %sha256_transform.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

sha256_transform.exit:                            ; preds = %do.body.i
  %add254.i = add i32 %add247.i, %94
  %141 = ptrtoint ptr %sctx to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %add254.i, ptr %sctx, align 4
  %add256.i = add i32 %add219.i, %96
  %142 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %add256.i, ptr %arrayidx23.i, align 4
  %add258.i = add i32 %add191.i, %98
  %143 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %add258.i, ptr %arrayidx24.i, align 4
  %add260.i = add i32 %add163.i, %100
  %144 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %add260.i, ptr %arrayidx25.i, align 4
  %add262.i = add i32 %add246.i, %102
  %145 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %add262.i, ptr %arrayidx26.i, align 4
  %add264.i = add i32 %add218.i, %104
  %146 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %add264.i, ptr %arrayidx27.i, align 4
  %add266.i = add i32 %add190.i, %106
  %147 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %add266.i, ptr %arrayidx28.i, align 4
  %add268.i = add i32 %add162.i, %108
  %148 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %add268.i, ptr %arrayidx29.i, align 4
  %add11 = add i32 %done.1, 64
  %add.ptr12 = getelementptr i8, ptr %data, i32 %add11
  %add13 = add i32 %done.1, 127
  %cmp14 = icmp ult i32 %add13, %len
  br i1 %cmp14, label %sha256_transform.exit.do.body_crit_edge, label %do.end

sha256_transform.exit.do.body_crit_edge:          ; preds = %sha256_transform.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %sha256_transform.exit
  call void @__sanitizer_cov_trace_pc() #5
  %149 = call ptr @memset(ptr %W, i32 0, i32 256)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %W) #3, !srcloc !26
  br label %if.end17

if.end17:                                         ; preds = %do.end, %entry.if.end17_crit_edge
  %partial.0 = phi i32 [ 0, %do.end ], [ %conv, %entry.if.end17_crit_edge ]
  %done.2 = phi i32 [ %add11, %do.end ], [ 0, %entry.if.end17_crit_edge ]
  %src.2 = phi ptr [ %add.ptr12, %do.end ], [ %data, %entry.if.end17_crit_edge ]
  %buf18 = getelementptr inbounds %struct.sha256_state, ptr %sctx, i32 0, i32 2
  %add.ptr20 = getelementptr i8, ptr %buf18, i32 %partial.0
  %sub21 = sub i32 %len, %done.2
  %150 = call ptr @memcpy(ptr %add.ptr20, ptr %src.2, i32 %sub21)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %W) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sha224_update(ptr nocapture noundef %sctx, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sha256_update(ptr noundef %sctx, ptr noundef %data, i32 noundef %len)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sha256_final(ptr noundef %sctx, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  %bits.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bits.i) #3
  %count.i = getelementptr inbounds %struct.sha256_state, ptr %sctx, i32 0, i32 1
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count.i, align 8
  %shl.i = shl i64 %1, 3
  %2 = ptrtoint ptr %bits.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %shl.i, ptr %bits.i, align 8
  %3 = trunc i64 %1 to i32
  %conv.i = and i32 %3, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %conv.i)
  %cmp.i = icmp ult i32 %conv.i, 56
  %..i = select i1 %cmp.i, i32 56, i32 120
  %cond.i = sub nsw i32 %..i, %conv.i
  tail call void @sha256_update(ptr noundef %sctx, ptr noundef nonnull @__sha256_final.padding, i32 noundef %cond.i) #3
  call void @sha256_update(ptr noundef %sctx, ptr noundef nonnull %bits.i, i32 noundef 8) #3
  %4 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sctx, align 4
  %6 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %out, align 1
  %arrayidx.i.1 = getelementptr [8 x i32], ptr %sctx, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.1, align 4
  %arrayidx6.i.1 = getelementptr i32, ptr %out, i32 1
  %9 = ptrtoint ptr %arrayidx6.i.1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %arrayidx6.i.1, align 1
  %arrayidx.i.2 = getelementptr [8 x i32], ptr %sctx, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.2, align 4
  %arrayidx6.i.2 = getelementptr i32, ptr %out, i32 2
  %12 = ptrtoint ptr %arrayidx6.i.2 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %arrayidx6.i.2, align 1
  %arrayidx.i.3 = getelementptr [8 x i32], ptr %sctx, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.3, align 4
  %arrayidx6.i.3 = getelementptr i32, ptr %out, i32 3
  %15 = ptrtoint ptr %arrayidx6.i.3 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %arrayidx6.i.3, align 1
  %arrayidx.i.4 = getelementptr [8 x i32], ptr %sctx, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.4, align 4
  %arrayidx6.i.4 = getelementptr i32, ptr %out, i32 4
  %18 = ptrtoint ptr %arrayidx6.i.4 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %arrayidx6.i.4, align 1
  %arrayidx.i.5 = getelementptr [8 x i32], ptr %sctx, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.5, align 4
  %arrayidx6.i.5 = getelementptr i32, ptr %out, i32 5
  %21 = ptrtoint ptr %arrayidx6.i.5 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %arrayidx6.i.5, align 1
  %arrayidx.i.6 = getelementptr [8 x i32], ptr %sctx, i32 0, i32 6
  %22 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.6, align 4
  %arrayidx6.i.6 = getelementptr i32, ptr %out, i32 6
  %24 = ptrtoint ptr %arrayidx6.i.6 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %arrayidx6.i.6, align 1
  %arrayidx.i.7 = getelementptr [8 x i32], ptr %sctx, i32 0, i32 7
  %25 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.7, align 4
  %arrayidx6.i.7 = getelementptr i32, ptr %out, i32 7
  %27 = ptrtoint ptr %arrayidx6.i.7 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %arrayidx6.i.7, align 1
  %28 = call ptr @memset(ptr %sctx, i32 0, i32 104)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %sctx) #3, !srcloc !26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bits.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sha224_final(ptr noundef %sctx, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  %bits.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bits.i) #3
  %count.i = getelementptr inbounds %struct.sha256_state, ptr %sctx, i32 0, i32 1
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count.i, align 8
  %shl.i = shl i64 %1, 3
  %2 = ptrtoint ptr %bits.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %shl.i, ptr %bits.i, align 8
  %3 = trunc i64 %1 to i32
  %conv.i = and i32 %3, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %conv.i)
  %cmp.i = icmp ult i32 %conv.i, 56
  %..i = select i1 %cmp.i, i32 56, i32 120
  %cond.i = sub nsw i32 %..i, %conv.i
  tail call void @sha256_update(ptr noundef %sctx, ptr noundef nonnull @__sha256_final.padding, i32 noundef %cond.i) #3
  call void @sha256_update(ptr noundef %sctx, ptr noundef nonnull %bits.i, i32 noundef 8) #3
  %4 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sctx, align 4
  %6 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %out, align 1
  %arrayidx.i.1 = getelementptr [8 x i32], ptr %sctx, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.1, align 4
  %arrayidx6.i.1 = getelementptr i32, ptr %out, i32 1
  %9 = ptrtoint ptr %arrayidx6.i.1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %arrayidx6.i.1, align 1
  %arrayidx.i.2 = getelementptr [8 x i32], ptr %sctx, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.2, align 4
  %arrayidx6.i.2 = getelementptr i32, ptr %out, i32 2
  %12 = ptrtoint ptr %arrayidx6.i.2 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %arrayidx6.i.2, align 1
  %arrayidx.i.3 = getelementptr [8 x i32], ptr %sctx, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.3, align 4
  %arrayidx6.i.3 = getelementptr i32, ptr %out, i32 3
  %15 = ptrtoint ptr %arrayidx6.i.3 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %arrayidx6.i.3, align 1
  %arrayidx.i.4 = getelementptr [8 x i32], ptr %sctx, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.4, align 4
  %arrayidx6.i.4 = getelementptr i32, ptr %out, i32 4
  %18 = ptrtoint ptr %arrayidx6.i.4 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %arrayidx6.i.4, align 1
  %arrayidx.i.5 = getelementptr [8 x i32], ptr %sctx, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.5, align 4
  %arrayidx6.i.5 = getelementptr i32, ptr %out, i32 5
  %21 = ptrtoint ptr %arrayidx6.i.5 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %arrayidx6.i.5, align 1
  %arrayidx.i.6 = getelementptr [8 x i32], ptr %sctx, i32 0, i32 6
  %22 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.6, align 4
  %arrayidx6.i.6 = getelementptr i32, ptr %out, i32 6
  %24 = ptrtoint ptr %arrayidx6.i.6 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %arrayidx6.i.6, align 1
  %25 = call ptr @memset(ptr %sctx, i32 0, i32 104)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %sctx) #3, !srcloc !26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bits.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sha256(ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  %bits.i.i = alloca i64, align 8
  %sctx = alloca %struct.sha256_state, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %sctx) #3
  %0 = getelementptr inbounds i8, ptr %sctx, i32 40
  %1 = call ptr @memset(ptr %0, i32 255, i32 64)
  %2 = ptrtoint ptr %sctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1779033703, ptr %sctx, align 8
  %arrayidx2.i = getelementptr inbounds [8 x i32], ptr %sctx, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1150833019, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr inbounds [8 x i32], ptr %sctx, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1013904242, ptr %arrayidx4.i, align 8
  %arrayidx6.i = getelementptr inbounds [8 x i32], ptr %sctx, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1521486534, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr inbounds [8 x i32], ptr %sctx, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1359893119, ptr %arrayidx8.i, align 8
  %arrayidx10.i = getelementptr inbounds [8 x i32], ptr %sctx, i32 0, i32 5
  %7 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1694144372, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr inbounds [8 x i32], ptr %sctx, i32 0, i32 6
  %8 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 528734635, ptr %arrayidx12.i, align 8
  %arrayidx14.i = getelementptr inbounds [8 x i32], ptr %sctx, i32 0, i32 7
  %9 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1541459225, ptr %arrayidx14.i, align 4
  %count.i = getelementptr inbounds %struct.sha256_state, ptr %sctx, i32 0, i32 1
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %count.i, align 8
  call void @sha256_update(ptr noundef nonnull %sctx, ptr noundef %data, i32 noundef %len)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bits.i.i) #3
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %count.i, align 8
  %shl.i.i = shl i64 %12, 3
  %13 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shl.i.i, ptr %bits.i.i, align 8
  %14 = trunc i64 %12 to i32
  %conv.i.i = and i32 %14, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %conv.i.i)
  %cmp.i.i = icmp ult i32 %conv.i.i, 56
  %..i.i = select i1 %cmp.i.i, i32 56, i32 120
  %cond.i.i = sub nsw i32 %..i.i, %conv.i.i
  call void @sha256_update(ptr noundef nonnull %sctx, ptr noundef nonnull @__sha256_final.padding, i32 noundef %cond.i.i) #3
  call void @sha256_update(ptr noundef nonnull %sctx, ptr noundef nonnull %bits.i.i, i32 noundef 8) #3
  %15 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sctx, align 8
  %17 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %out, align 1
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx6.i.1.i = getelementptr i32, ptr %out, i32 1
  %20 = ptrtoint ptr %arrayidx6.i.1.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %arrayidx6.i.1.i, align 1
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx4.i, align 8
  %arrayidx6.i.2.i = getelementptr i32, ptr %out, i32 2
  %23 = ptrtoint ptr %arrayidx6.i.2.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %arrayidx6.i.2.i, align 1
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx6.i.3.i = getelementptr i32, ptr %out, i32 3
  %26 = ptrtoint ptr %arrayidx6.i.3.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %arrayidx6.i.3.i, align 1
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx8.i, align 8
  %arrayidx6.i.4.i = getelementptr i32, ptr %out, i32 4
  %29 = ptrtoint ptr %arrayidx6.i.4.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %arrayidx6.i.4.i, align 1
  %30 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx6.i.5.i = getelementptr i32, ptr %out, i32 5
  %32 = ptrtoint ptr %arrayidx6.i.5.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %arrayidx6.i.5.i, align 1
  %33 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx12.i, align 8
  %arrayidx6.i.6.i = getelementptr i32, ptr %out, i32 6
  %35 = ptrtoint ptr %arrayidx6.i.6.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %arrayidx6.i.6.i, align 1
  %36 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx6.i.7.i = getelementptr i32, ptr %out, i32 7
  %38 = ptrtoint ptr %arrayidx6.i.7.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %arrayidx6.i.7.i, align 1
  %39 = call ptr @memset(ptr %sctx, i32 0, i32 104)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %sctx) #3, !srcloc !26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bits.i.i) #3
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %sctx) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_sha256_update, !1, !"__ksymtab_sha256_update", i1 false, i1 false}
!1 = !{!"../lib/crypto/sha256.c", i32 152, i32 1}
!2 = !{ptr @__ksymtab_sha224_update, !3, !"__ksymtab_sha224_update", i1 false, i1 false}
!3 = !{!"../lib/crypto/sha256.c", i32 158, i32 1}
!4 = !{ptr @__ksymtab_sha256_final, !5, !"__ksymtab_sha256_final", i1 false, i1 false}
!5 = !{!"../lib/crypto/sha256.c", i32 191, i32 1}
!6 = !{ptr @__ksymtab_sha224_final, !7, !"__ksymtab_sha224_final", i1 false, i1 false}
!7 = !{!"../lib/crypto/sha256.c", i32 197, i32 1}
!8 = !{ptr @__ksymtab_sha256, !9, !"__ksymtab_sha256", i1 false, i1 false}
!9 = !{!"../lib/crypto/sha256.c", i32 207, i32 1}
!10 = !{ptr @__UNIQUE_ID_file106, !11, !"__UNIQUE_ID_file106", i1 false, i1 false}
!11 = !{!"../lib/crypto/sha256.c", i32 209, i32 1}
!12 = !{ptr @__UNIQUE_ID_license107, !11, !"__UNIQUE_ID_license107", i1 false, i1 false}
!13 = !{ptr @SHA256_K, !14, !"SHA256_K", i1 false, i1 false}
!14 = !{!"../lib/crypto/sha256.c", i32 21, i32 18}
!15 = !{ptr @__sha256_final.padding, !16, !"padding", i1 false, i1 false}
!16 = !{!"../lib/crypto/sha256.c", i32 166, i32 18}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2149014101}
