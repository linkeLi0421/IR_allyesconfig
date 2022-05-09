; ModuleID = '/llk/IR_all_yes/lib/math/div64.c_pt.bc'
source_filename = "../lib/math/div64.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+div_s64_rem\22, \22a\22\09"
module asm "\09.weak\09__crc_div_s64_rem\09\09\09\09"
module asm "\09.long\09__crc_div_s64_rem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_div_s64_rem:\09\09\09\09\09"
module asm "\09.asciz \09\22div_s64_rem\22\09\09\09\09\09"
module asm "__kstrtabns_div_s64_rem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+div64_u64_rem\22, \22a\22\09"
module asm "\09.weak\09__crc_div64_u64_rem\09\09\09\09"
module asm "\09.long\09__crc_div64_u64_rem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_div64_u64_rem:\09\09\09\09\09"
module asm "\09.asciz \09\22div64_u64_rem\22\09\09\09\09\09"
module asm "__kstrtabns_div64_u64_rem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+div64_u64\22, \22a\22\09"
module asm "\09.weak\09__crc_div64_u64\09\09\09\09"
module asm "\09.long\09__crc_div64_u64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_div64_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22div64_u64\22\09\09\09\09\09"
module asm "__kstrtabns_div64_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+div64_s64\22, \22a\22\09"
module asm "\09.weak\09__crc_div64_s64\09\09\09\09"
module asm "\09.long\09__crc_div64_s64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_div64_s64:\09\09\09\09\09"
module asm "\09.asciz \09\22div64_s64\22\09\09\09\09\09"
module asm "__kstrtabns_div64_s64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iter_div_u64_rem\22, \22a\22\09"
module asm "\09.weak\09__crc_iter_div_u64_rem\09\09\09\09"
module asm "\09.long\09__crc_iter_div_u64_rem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iter_div_u64_rem:\09\09\09\09\09"
module asm "\09.asciz \09\22iter_div_u64_rem\22\09\09\09\09\09"
module asm "__kstrtabns_iter_div_u64_rem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mul_u64_u64_div_u64\22, \22a\22\09"
module asm "\09.weak\09__crc_mul_u64_u64_div_u64\09\09\09\09"
module asm "\09.long\09__crc_mul_u64_u64_div_u64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mul_u64_u64_div_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22mul_u64_u64_div_u64\22\09\09\09\09\09"
module asm "__kstrtabns_mul_u64_u64_div_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_div_s64_rem = external dso_local constant [0 x i8], align 1
@__kstrtabns_div_s64_rem = external dso_local constant [0 x i8], align 1
@__ksymtab_div_s64_rem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @div_s64_rem to i32), ptr @__kstrtab_div_s64_rem, ptr @__kstrtabns_div_s64_rem }, section "___ksymtab+div_s64_rem", align 4
@__kstrtab_div64_u64_rem = external dso_local constant [0 x i8], align 1
@__kstrtabns_div64_u64_rem = external dso_local constant [0 x i8], align 1
@__ksymtab_div64_u64_rem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @div64_u64_rem to i32), ptr @__kstrtab_div64_u64_rem, ptr @__kstrtabns_div64_u64_rem }, section "___ksymtab+div64_u64_rem", align 4
@__kstrtab_div64_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_div64_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_div64_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @div64_u64 to i32), ptr @__kstrtab_div64_u64, ptr @__kstrtabns_div64_u64 }, section "___ksymtab+div64_u64", align 4
@__kstrtab_div64_s64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_div64_s64 = external dso_local constant [0 x i8], align 1
@__ksymtab_div64_s64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @div64_s64 to i32), ptr @__kstrtab_div64_s64, ptr @__kstrtabns_div64_s64 }, section "___ksymtab+div64_s64", align 4
@__kstrtab_iter_div_u64_rem = external dso_local constant [0 x i8], align 1
@__kstrtabns_iter_div_u64_rem = external dso_local constant [0 x i8], align 1
@__ksymtab_iter_div_u64_rem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iter_div_u64_rem to i32), ptr @__kstrtab_iter_div_u64_rem, ptr @__kstrtabns_iter_div_u64_rem }, section "___ksymtab+iter_div_u64_rem", align 4
@__kstrtab_mul_u64_u64_div_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_mul_u64_u64_div_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_mul_u64_u64_div_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mul_u64_u64_div_u64 to i32), ptr @__kstrtab_mul_u64_u64_div_u64, ptr @__kstrtabns_mul_u64_u64_div_u64 }, section "___ksymtab+mul_u64_u64_div_u64", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_div64_s64, ptr @__ksymtab_div64_u64, ptr @__ksymtab_div64_u64_rem, ptr @__ksymtab_div_s64_rem, ptr @__ksymtab_iter_div_u64_rem, ptr @__ksymtab_mul_u64_u64_div_u64], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @div_s64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr nocapture noundef %remainder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dividend)
  %cmp = icmp slt i64 %dividend, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = sub i64 0, %dividend
  %0 = tail call i32 @llvm.abs.i32(i32 %divisor, i1 false)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp164.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !21

if.then168.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i = trunc i64 %sub to i32
  %.frozen = freeze i32 %0
  %div172.i = udiv i32 %conv169.i, %.frozen
  %1 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i, %1
  %conv173.i = zext i32 %div172.i to i64
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %0, i64 %sub) #9, !srcloc !22
  %asmresult.i263.i = extractvalue { i64, i64 } %2, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %2, 1
  %shr.i.i = lshr i64 %asmresult.i263.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i = phi i64 [ %conv173.i, %if.then168.i ], [ %asmresult1.i.i, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %sub3 = sub i32 0, %__rem.0.i
  %3 = ptrtoint ptr %remainder to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub3, ptr %remainder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %divisor)
  %cmp4 = icmp sgt i32 %divisor, 0
  %sub6 = sub i64 0, %dividend.addr.0.i
  %spec.select = select i1 %cmp4, i64 %sub6, i64 %dividend.addr.0.i
  br label %if.end20

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %divisor)
  %cmp9 = icmp slt i32 %divisor, 0
  %4 = tail call i32 @llvm.abs.i32(i32 %divisor, i1 false)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend)
  %cmp164.i149 = icmp ult i64 %dividend, 4294967296
  br i1 %cmp164.i149, label %if.then168.i155, label %if.else174.i160, !prof !21

if.then168.i155:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i151 = trunc i64 %dividend to i32
  %.frozen164 = freeze i32 %4
  %div172.i153 = udiv i32 %conv169.i151, %.frozen164
  %5 = mul i32 %div172.i153, %.frozen164
  %rem170.i152.decomposed = sub i32 %conv169.i151, %5
  %conv173.i154 = zext i32 %div172.i153 to i64
  br label %div_u64_rem.exit163

if.else174.i160:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %dividend) #9, !srcloc !22
  %asmresult.i263.i156 = extractvalue { i64, i64 } %6, 0
  %asmresult1.i.i157 = extractvalue { i64, i64 } %6, 1
  %shr.i.i158 = lshr i64 %asmresult.i263.i156, 32
  %conv.i.i159 = trunc i64 %shr.i.i158 to i32
  br label %div_u64_rem.exit163

div_u64_rem.exit163:                              ; preds = %if.else174.i160, %if.then168.i155
  %dividend.addr.0.i161 = phi i64 [ %conv173.i154, %if.then168.i155 ], [ %asmresult1.i.i157, %if.else174.i160 ]
  %__rem.0.i162 = phi i32 [ %rem170.i152.decomposed, %if.then168.i155 ], [ %conv.i.i159, %if.else174.i160 ]
  %7 = ptrtoint ptr %remainder to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %__rem.0.i162, ptr %remainder, align 4
  %sub18 = sub i64 0, %dividend.addr.0.i161
  %spec.select35 = select i1 %cmp9, i64 %sub18, i64 %dividend.addr.0.i161
  br label %if.end20

if.end20:                                         ; preds = %div_u64_rem.exit163, %div_u64_rem.exit
  %quotient.0 = phi i64 [ %spec.select, %div_u64_rem.exit ], [ %spec.select35, %div_u64_rem.exit163 ]
  ret i64 %quotient.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i64 @div64_u64_rem(i64 noundef %dividend, i64 noundef %divisor, ptr nocapture noundef writeonly %remainder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %divisor, 32
  %conv = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv2 = trunc i64 %divisor to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend)
  %cmp164.i = icmp ult i64 %dividend, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !21

if.then168.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i = trunc i64 %dividend to i32
  %div172.i = udiv i32 %conv169.i, %conv2
  %0 = mul i32 %div172.i, %conv2
  %rem170.i.decomposed = sub i32 %conv169.i, %0
  %conv173.i = zext i32 %div172.i to i64
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %1 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv2, i64 %dividend) #9, !srcloc !22
  %asmresult.i263.i = extractvalue { i64, i64 } %1, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %1, 1
  %shr.i.i = lshr i64 %asmresult.i263.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i = phi i64 [ %conv173.i, %if.then168.i ], [ %asmresult1.i.i, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %conv3 = zext i32 %__rem.0.i to i64
  br label %if.end18

if.else:                                          ; preds = %entry
  %2 = tail call i32 @llvm.ctlz.i32(i32 %conv, i1 true) #6, !range !23
  %sub.i = sub nuw nsw i32 32, %2
  %sh_prom = zext i32 %sub.i to i64
  %shr5 = lshr i64 %dividend, %sh_prom
  %shr7 = lshr i64 %divisor, %sh_prom
  %conv8 = trunc i64 %shr7 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr5)
  %cmp164.i.i = icmp ult i64 %shr5, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !21

if.then168.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %shr5 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %conv8
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv8, i64 %shr5) #9, !srcloc !22
  %asmresult1.i.i.i = extractvalue { i64, i64 } %3, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dividend.addr.0.i.i)
  %cmp10.not = icmp eq i64 %dividend.addr.0.i.i, 0
  %dec = add i64 %dividend.addr.0.i.i, -1
  %spec.select = select i1 %cmp10.not, i64 0, i64 %dec
  %mul = mul i64 %spec.select, %divisor
  %sub = sub i64 %dividend, %mul
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %divisor)
  %cmp13.not = icmp ult i64 %sub, %divisor
  %sub16 = select i1 %cmp13.not, i64 0, i64 %divisor
  %storemerge = sub i64 %sub, %sub16
  %not.cmp13.not = xor i1 %cmp13.not, true
  %inc = zext i1 %not.cmp13.not to i64
  %quot.1 = add nuw i64 %spec.select, %inc
  br label %if.end18

if.end18:                                         ; preds = %div_u64.exit, %div_u64_rem.exit
  %storemerge38 = phi i64 [ %storemerge, %div_u64.exit ], [ %conv3, %div_u64_rem.exit ]
  %quot.2 = phi i64 [ %quot.1, %div_u64.exit ], [ %dividend.addr.0.i, %div_u64_rem.exit ]
  %4 = ptrtoint ptr %remainder to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %storemerge38, ptr %remainder, align 8
  ret i64 %quot.2
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i64 @div64_u64(i64 noundef %dividend, i64 noundef %divisor) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %divisor, 32
  %conv = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv2 = trunc i64 %divisor to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend)
  %cmp164.i.i = icmp ult i64 %dividend, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !21

if.then168.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %dividend to i32
  %div172.i.i = udiv i32 %conv169.i.i, %conv2
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %if.end16

if.else174.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv2, i64 %dividend) #9, !srcloc !22
  %asmresult1.i.i.i = extractvalue { i64, i64 } %0, 1
  br label %if.end16

if.else:                                          ; preds = %entry
  %1 = tail call i32 @llvm.ctlz.i32(i32 %conv, i1 true) #6, !range !23
  %sub.i = sub nuw nsw i32 32, %1
  %sh_prom = zext i32 %sub.i to i64
  %shr4 = lshr i64 %dividend, %sh_prom
  %shr6 = lshr i64 %divisor, %sh_prom
  %conv7 = trunc i64 %shr6 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr4)
  %cmp164.i.i133 = icmp ult i64 %shr4, 4294967296
  br i1 %cmp164.i.i133, label %if.then168.i.i138, label %if.else174.i.i140, !prof !21

if.then168.i.i138:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i135 = trunc i64 %shr4 to i32
  %div172.i.i136 = udiv i32 %conv169.i.i135, %conv7
  %conv173.i.i137 = zext i32 %div172.i.i136 to i64
  br label %div_u64.exit142

if.else174.i.i140:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv7, i64 %shr4) #9, !srcloc !22
  %asmresult1.i.i.i139 = extractvalue { i64, i64 } %2, 1
  br label %div_u64.exit142

div_u64.exit142:                                  ; preds = %if.else174.i.i140, %if.then168.i.i138
  %dividend.addr.0.i.i141 = phi i64 [ %conv173.i.i137, %if.then168.i.i138 ], [ %asmresult1.i.i.i139, %if.else174.i.i140 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dividend.addr.0.i.i141)
  %cmp9.not = icmp eq i64 %dividend.addr.0.i.i141, 0
  %dec = add i64 %dividend.addr.0.i.i141, -1
  %spec.select = select i1 %cmp9.not, i64 0, i64 %dec
  %mul = mul i64 %spec.select, %divisor
  %sub = sub i64 %dividend, %mul
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %divisor)
  %cmp12.not = icmp uge i64 %sub, %divisor
  %inc = zext i1 %cmp12.not to i64
  %quot.1 = add nuw i64 %spec.select, %inc
  br label %if.end16

if.end16:                                         ; preds = %div_u64.exit142, %if.else174.i.i, %if.then168.i.i
  %quot.2 = phi i64 [ %quot.1, %div_u64.exit142 ], [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  ret i64 %quot.2
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i64 @div64_s64(i64 noundef %dividend, i64 noundef %divisor) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 @llvm.abs.i64(i64 %dividend, i1 false)
  %1 = tail call i64 @llvm.abs.i64(i64 %divisor, i1 false)
  %shr.i = lshr i64 %1, 32
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp.i = icmp eq i32 %conv.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %conv2.i = trunc i64 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %0)
  %cmp164.i.i.i = icmp ult i64 %0, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !21

if.then168.i.i.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i = trunc i64 %0 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %conv2.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div64_u64.exit

if.else174.i.i.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv2.i, i64 %0) #9, !srcloc !22
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %2, 1
  br label %div64_u64.exit

if.else.i:                                        ; preds = %entry
  %3 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #6, !range !23
  %sub.i.i = sub nuw nsw i32 32, %3
  %sh_prom.i = zext i32 %sub.i.i to i64
  %shr4.i = lshr i64 %0, %sh_prom.i
  %shr6.i = lshr i64 %1, %sh_prom.i
  %conv7.i = trunc i64 %shr6.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr4.i)
  %cmp164.i.i133.i = icmp ult i64 %shr4.i, 4294967296
  br i1 %cmp164.i.i133.i, label %if.then168.i.i138.i, label %if.else174.i.i140.i, !prof !21

if.then168.i.i138.i:                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i135.i = trunc i64 %shr4.i to i32
  %div172.i.i136.i = udiv i32 %conv169.i.i135.i, %conv7.i
  %conv173.i.i137.i = zext i32 %div172.i.i136.i to i64
  br label %div_u64.exit142.i

if.else174.i.i140.i:                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv7.i, i64 %shr4.i) #9, !srcloc !22
  %asmresult1.i.i.i139.i = extractvalue { i64, i64 } %4, 1
  br label %div_u64.exit142.i

div_u64.exit142.i:                                ; preds = %if.else174.i.i140.i, %if.then168.i.i138.i
  %dividend.addr.0.i.i141.i = phi i64 [ %conv173.i.i137.i, %if.then168.i.i138.i ], [ %asmresult1.i.i.i139.i, %if.else174.i.i140.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dividend.addr.0.i.i141.i)
  %cmp9.not.i = icmp eq i64 %dividend.addr.0.i.i141.i, 0
  %dec.i = add i64 %dividend.addr.0.i.i141.i, -1
  %spec.select.i = select i1 %cmp9.not.i, i64 0, i64 %dec.i
  %mul.i = mul i64 %spec.select.i, %1
  %sub.i = sub i64 %0, %mul.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %1)
  %cmp12.not.i = icmp uge i64 %sub.i, %1
  %inc.i = zext i1 %cmp12.not.i to i64
  %quot.1.i = add nuw i64 %spec.select.i, %inc.i
  br label %div64_u64.exit

div64_u64.exit:                                   ; preds = %div_u64.exit142.i, %if.else174.i.i.i, %if.then168.i.i.i
  %quot.2.i = phi i64 [ %quot.1.i, %div_u64.exit142.i ], [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %xor = xor i64 %divisor, %dividend
  %shr = ashr i64 %xor, 63
  %xor9 = xor i64 %quot.2.i, %shr
  %sub10 = sub i64 %xor9, %shr
  ret i64 %sub10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iter_div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr nocapture noundef writeonly %remainder) #4 align 64 {
entry:
  %dividend.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i)
  %0 = ptrtoint ptr %dividend.addr.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %dividend, ptr %dividend.addr.i, align 8
  %conv.i = zext i32 %divisor to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %dividend)
  %cmp.not5.i = icmp ugt i64 %conv.i, %dividend
  br i1 %cmp.not5.i, label %entry.__iter_div_u64_rem.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.__iter_div_u64_rem.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__iter_div_u64_rem.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %1 = phi i64 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %dividend, %entry.while.body.i_crit_edge ]
  %ret.06.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i, i64 %1) #6, !srcloc !24
  %2 = ptrtoint ptr %dividend.addr.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dividend.addr.i, align 8
  %sub.i = sub i64 %3, %conv.i
  store i64 %sub.i, ptr %dividend.addr.i, align 8
  %inc.i = add i32 %ret.06.i, 1
  %cmp.not.i = icmp ult i64 %sub.i, %conv.i
  br i1 %cmp.not.i, label %while.body.i.__iter_div_u64_rem.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.__iter_div_u64_rem.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__iter_div_u64_rem.exit

__iter_div_u64_rem.exit:                          ; preds = %while.body.i.__iter_div_u64_rem.exit_crit_edge, %entry.__iter_div_u64_rem.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %entry.__iter_div_u64_rem.exit_crit_edge ], [ %inc.i, %while.body.i.__iter_div_u64_rem.exit_crit_edge ]
  %.lcssa.i = phi i64 [ %dividend, %entry.__iter_div_u64_rem.exit_crit_edge ], [ %sub.i, %while.body.i.__iter_div_u64_rem.exit_crit_edge ]
  %4 = ptrtoint ptr %remainder to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %.lcssa.i, ptr %remainder, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i)
  ret i32 %ret.0.lcssa.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i64 @mul_u64_u64_div_u64(i64 noundef %a, i64 noundef %b, i64 noundef %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i.i = lshr i64 %a, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #6, !range !23
  %add.i.i = sub nuw nsw i32 64, %0
  br label %cond.false13

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i = trunc i64 %a to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %1 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #6, !range !23
  %sub.i6.i.i = sub nuw nsw i32 32, %1
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %cond.false13

cond.false13:                                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %shr.i.i83 = lshr i64 %b, 32
  %conv.i.i84 = trunc i64 %shr.i.i83 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i84)
  %tobool.not.i.i85 = icmp eq i32 %conv.i.i84, 0
  br i1 %tobool.not.i.i85, label %if.end.i.i92, label %if.then.i.i87

if.then.i.i87:                                    ; preds = %cond.false13
  call void @__sanitizer_cov_trace_pc() #8
  %2 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i84, i1 true) #6, !range !23
  %add.i.i86 = sub nuw nsw i32 64, %2
  br label %cond.end15

if.end.i.i92:                                     ; preds = %cond.false13
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i88 = trunc i64 %b to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i88)
  %tobool.not.i5.i.i89 = icmp eq i32 %conv1.i.i88, 0
  %3 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i88, i1 true) #6, !range !23
  %sub.i6.i.i90 = sub nuw nsw i32 32, %3
  %cond.i7.i.i91 = select i1 %tobool.not.i5.i.i89, i32 0, i32 %sub.i6.i.i90
  br label %cond.end15

cond.end15:                                       ; preds = %if.end.i.i92, %if.then.i.i87
  %retval.0.i.i93 = phi i32 [ %add.i.i86, %if.then.i.i87 ], [ %cond.i7.i.i91, %if.end.i.i92 ]
  %sub.i = add nsw i32 %retval.0.i.i93, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i)
  %cmp17 = icmp sgt i32 %sub.i, 64
  br i1 %cmp17, label %if.then, label %cond.end15.if.end51_crit_edge

cond.end15.if.end51_crit_edge:                    ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then:                                          ; preds = %cond.end15
  %shr.i = lshr i64 %c, 32
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp.i = icmp eq i32 %conv.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  %conv2.i = trunc i64 %c to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %b)
  %cmp164.i.i = icmp ult i64 %b, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !21

if.then168.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %b to i32
  %div172.i.i = udiv i32 %conv169.i.i, %conv2.i
  %4 = mul i32 %div172.i.i, %conv2.i
  %rem170.i.i.decomposed = sub i32 %conv169.i.i, %4
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64_rem.exit.i

if.else174.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv2.i, i64 %b) #9, !srcloc !22
  %asmresult.i263.i.i = extractvalue { i64, i64 } %5, 0
  %asmresult1.i.i.i = extractvalue { i64, i64 } %5, 1
  %shr.i.i.i = lshr i64 %asmresult.i263.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %div_u64_rem.exit.i

div_u64_rem.exit.i:                               ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %__rem.0.i.i = phi i32 [ %rem170.i.i.decomposed, %if.then168.i.i ], [ %conv.i.i.i, %if.else174.i.i ]
  %conv3.i = zext i32 %__rem.0.i.i to i64
  br label %div64_u64_rem.exit

if.else.i:                                        ; preds = %if.then
  %6 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #6, !range !23
  %sub.i.i = sub nuw nsw i32 32, %6
  %sh_prom.i = zext i32 %sub.i.i to i64
  %shr5.i = lshr i64 %b, %sh_prom.i
  %shr7.i = lshr i64 %c, %sh_prom.i
  %conv8.i = trunc i64 %shr7.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr5.i)
  %cmp164.i.i.i = icmp ult i64 %shr5.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !21

if.then168.i.i.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i = trunc i64 %shr5.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %conv8.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv8.i, i64 %shr5.i) #9, !srcloc !22
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %7, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dividend.addr.0.i.i.i)
  %cmp10.not.i = icmp eq i64 %dividend.addr.0.i.i.i, 0
  %dec.i = add i64 %dividend.addr.0.i.i.i, -1
  %spec.select.i = select i1 %cmp10.not.i, i64 0, i64 %dec.i
  %mul.i = mul i64 %spec.select.i, %c
  %sub.i100 = sub i64 %b, %mul.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i100, i64 %c)
  %cmp13.not.i = icmp ult i64 %sub.i100, %c
  %sub16.i = select i1 %cmp13.not.i, i64 0, i64 %c
  %storemerge.i = sub i64 %sub.i100, %sub16.i
  %not.cmp13.not.i = xor i1 %cmp13.not.i, true
  %inc.i = zext i1 %not.cmp13.not.i to i64
  %quot.1.i = add nuw i64 %spec.select.i, %inc.i
  br label %div64_u64_rem.exit

div64_u64_rem.exit:                               ; preds = %div_u64.exit.i, %div_u64_rem.exit.i
  %storemerge38.i = phi i64 [ %storemerge.i, %div_u64.exit.i ], [ %conv3.i, %div_u64_rem.exit.i ]
  %quot.2.i = phi i64 [ %quot.1.i, %div_u64.exit.i ], [ %dividend.addr.0.i.i, %div_u64_rem.exit.i ]
  %mul = mul i64 %quot.2.i, %a
  %shr.i.i101 = lshr i64 %a, 32
  %conv.i.i102 = trunc i64 %shr.i.i101 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i102)
  %tobool.not.i.i103 = icmp eq i32 %conv.i.i102, 0
  br i1 %tobool.not.i.i103, label %if.end.i.i110, label %if.then.i.i105

if.then.i.i105:                                   ; preds = %div64_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #8
  %8 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i102, i1 true) #6, !range !23
  %add.i.i104 = sub nuw nsw i32 64, %8
  br label %cond.false39

if.end.i.i110:                                    ; preds = %div64_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i106 = trunc i64 %a to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i106)
  %tobool.not.i5.i.i107 = icmp eq i32 %conv1.i.i106, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i106, i1 true) #6, !range !23
  %sub.i6.i.i108 = sub nuw nsw i32 32, %9
  %cond.i7.i.i109 = select i1 %tobool.not.i5.i.i107, i32 0, i32 %sub.i6.i.i108
  br label %cond.false39

cond.false39:                                     ; preds = %if.end.i.i110, %if.then.i.i105
  %retval.0.i.i111 = phi i32 [ %add.i.i104, %if.then.i.i105 ], [ %cond.i7.i.i109, %if.end.i.i110 ]
  %shr.i.i114 = lshr i64 %storemerge38.i, 32
  %conv.i.i115 = trunc i64 %shr.i.i114 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i115)
  %tobool.not.i.i116 = icmp eq i32 %conv.i.i115, 0
  br i1 %tobool.not.i.i116, label %if.end.i.i123, label %if.then.i.i118

if.then.i.i118:                                   ; preds = %cond.false39
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i115, i1 true) #6, !range !23
  %add.i.i117 = sub nuw nsw i32 64, %10
  br label %cond.end41

if.end.i.i123:                                    ; preds = %cond.false39
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i119 = trunc i64 %storemerge38.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i119)
  %tobool.not.i5.i.i120 = icmp eq i32 %conv1.i.i119, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i119, i1 true) #6, !range !23
  %sub.i6.i.i121 = sub nuw nsw i32 32, %11
  %cond.i7.i.i122 = select i1 %tobool.not.i5.i.i120, i32 0, i32 %sub.i6.i.i121
  br label %cond.end41

cond.end41:                                       ; preds = %if.end.i.i123, %if.then.i.i118
  %retval.0.i.i124 = phi i32 [ %add.i.i117, %if.then.i.i118 ], [ %cond.i7.i.i122, %if.end.i.i123 ]
  %sub.i125 = add nsw i32 %retval.0.i.i111, %retval.0.i.i124
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i125)
  %cmp45 = icmp sgt i32 %sub.i125, 64
  br i1 %cmp45, label %if.then46, label %cond.end41.if.end51_crit_edge

cond.end41.if.end51_crit_edge:                    ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then46:                                        ; preds = %cond.end41
  %sub44 = add nsw i32 %sub.i125, -64
  %sh_prom = zext i32 %sub44 to i64
  %shr = lshr i64 %storemerge38.i, %sh_prom
  %shr48 = lshr i64 %c, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr48)
  %tobool.not = icmp eq i64 %shr48, 0
  br i1 %tobool.not, label %if.then46.cleanup_crit_edge, label %if.then46.if.end51_crit_edge

if.then46.if.end51_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.then46.if.end51_crit_edge, %cond.end41.if.end51_crit_edge, %cond.end15.if.end51_crit_edge
  %b.addr.0 = phi i64 [ %shr, %if.then46.if.end51_crit_edge ], [ %storemerge38.i, %cond.end41.if.end51_crit_edge ], [ %b, %cond.end15.if.end51_crit_edge ]
  %c.addr.0 = phi i64 [ %shr48, %if.then46.if.end51_crit_edge ], [ %c, %cond.end41.if.end51_crit_edge ], [ %c, %cond.end15.if.end51_crit_edge ]
  %res.0 = phi i64 [ %mul, %if.then46.if.end51_crit_edge ], [ %mul, %cond.end41.if.end51_crit_edge ], [ 0, %cond.end15.if.end51_crit_edge ]
  %mul52 = mul i64 %b.addr.0, %a
  %shr.i127 = lshr i64 %c.addr.0, 32
  %conv.i128 = trunc i64 %shr.i127 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i128)
  %cmp.i129 = icmp eq i32 %conv.i128, 0
  br i1 %cmp.i129, label %if.then.i132, label %if.else.i246

if.then.i132:                                     ; preds = %if.end51
  %conv2.i130 = trunc i64 %c.addr.0 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul52)
  %cmp164.i.i.i236 = icmp ult i64 %mul52, 4294967296
  br i1 %cmp164.i.i.i236, label %if.then168.i.i.i241, label %if.else174.i.i.i243, !prof !21

if.then168.i.i.i241:                              ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i238 = trunc i64 %mul52 to i32
  %div172.i.i.i239 = udiv i32 %conv169.i.i.i238, %conv2.i130
  %conv173.i.i.i240 = zext i32 %div172.i.i.i239 to i64
  br label %div64_u64.exit

if.else174.i.i.i243:                              ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #8
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv2.i130, i64 %mul52) #9, !srcloc !22
  %asmresult1.i.i.i.i242 = extractvalue { i64, i64 } %12, 1
  br label %div64_u64.exit

if.else.i246:                                     ; preds = %if.end51
  %13 = tail call i32 @llvm.ctlz.i32(i32 %conv.i128, i1 true) #6, !range !23
  %sub.i.i244 = sub nuw nsw i32 32, %13
  %sh_prom.i245 = zext i32 %sub.i.i244 to i64
  %shr4.i = lshr i64 %mul52, %sh_prom.i245
  %shr6.i = lshr i64 %c.addr.0, %sh_prom.i245
  %conv7.i = trunc i64 %shr6.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr4.i)
  %cmp164.i.i133.i = icmp ult i64 %shr4.i, 4294967296
  br i1 %cmp164.i.i133.i, label %if.then168.i.i138.i, label %if.else174.i.i140.i, !prof !21

if.then168.i.i138.i:                              ; preds = %if.else.i246
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i135.i = trunc i64 %shr4.i to i32
  %div172.i.i136.i = udiv i32 %conv169.i.i135.i, %conv7.i
  %conv173.i.i137.i = zext i32 %div172.i.i136.i to i64
  br label %div_u64.exit142.i

if.else174.i.i140.i:                              ; preds = %if.else.i246
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv7.i, i64 %shr4.i) #9, !srcloc !22
  %asmresult1.i.i.i139.i = extractvalue { i64, i64 } %14, 1
  br label %div_u64.exit142.i

div_u64.exit142.i:                                ; preds = %if.else174.i.i140.i, %if.then168.i.i138.i
  %dividend.addr.0.i.i141.i = phi i64 [ %conv173.i.i137.i, %if.then168.i.i138.i ], [ %asmresult1.i.i.i139.i, %if.else174.i.i140.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dividend.addr.0.i.i141.i)
  %cmp9.not.i = icmp eq i64 %dividend.addr.0.i.i141.i, 0
  %dec.i247 = add i64 %dividend.addr.0.i.i141.i, -1
  %spec.select.i248 = select i1 %cmp9.not.i, i64 0, i64 %dec.i247
  %mul.i249 = mul i64 %spec.select.i248, %c.addr.0
  %sub.i250 = sub i64 %mul52, %mul.i249
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i250, i64 %c.addr.0)
  %cmp12.not.i = icmp uge i64 %sub.i250, %c.addr.0
  %inc.i251 = zext i1 %cmp12.not.i to i64
  %quot.1.i252 = add nuw i64 %spec.select.i248, %inc.i251
  br label %div64_u64.exit

div64_u64.exit:                                   ; preds = %div_u64.exit142.i, %if.else174.i.i.i243, %if.then168.i.i.i241
  %quot.2.i253 = phi i64 [ %quot.1.i252, %div_u64.exit142.i ], [ %conv173.i.i.i240, %if.then168.i.i.i241 ], [ %asmresult1.i.i.i.i242, %if.else174.i.i.i243 ]
  %add54 = add i64 %quot.2.i253, %res.0
  br label %cleanup

cleanup:                                          ; preds = %div64_u64.exit, %if.then46.cleanup_crit_edge
  %retval.0 = phi i64 [ %add54, %div64_u64.exit ], [ %mul, %if.then46.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_div_s64_rem, !1, !"__ksymtab_div_s64_rem", i1 false, i1 false}
!1 = !{!"../lib/math/div64.c", i32 89, i32 1}
!2 = !{ptr @__ksymtab_div64_u64_rem, !3, !"__ksymtab_div64_u64_rem", i1 false, i1 false}
!3 = !{!"../lib/math/div64.c", i32 129, i32 1}
!4 = !{ptr @__ksymtab_div64_u64, !5, !"__ksymtab_div64_u64", i1 false, i1 false}
!5 = !{!"../lib/math/div64.c", i32 163, i32 1}
!6 = !{ptr @__ksymtab_div64_s64, !7, !"__ksymtab_div64_s64", i1 false, i1 false}
!7 = !{!"../lib/math/div64.c", i32 181, i32 1}
!8 = !{ptr @__ksymtab_iter_div_u64_rem, !9, !"__ksymtab_iter_div_u64_rem", i1 false, i1 false}
!9 = !{!"../lib/math/div64.c", i32 194, i32 1}
!10 = !{ptr @__ksymtab_mul_u64_u64_div_u64, !11, !"__ksymtab_mul_u64_u64_div_u64", i1 false, i1 false}
!11 = !{!"../lib/math/div64.c", i32 235, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2148543352, i64 2148543632, i64 2148543966, i64 2148544300}
!23 = !{i32 0, i32 33}
!24 = !{i64 1084957}
