; ModuleID = '/llk/IR_all_yes/lib/crypto/libchacha.c_pt.bc'
source_filename = "../lib/crypto/libchacha.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+chacha_crypt_generic\22, \22a\22\09"
module asm "\09.weak\09__crc_chacha_crypt_generic\09\09\09\09"
module asm "\09.long\09__crc_chacha_crypt_generic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_chacha_crypt_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22chacha_crypt_generic\22\09\09\09\09\09"
module asm "__kstrtabns_chacha_crypt_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_chacha_crypt_generic = external dso_local constant [0 x i8], align 1
@__kstrtabns_chacha_crypt_generic = external dso_local constant [0 x i8], align 1
@__ksymtab_chacha_crypt_generic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @chacha_crypt_generic to i32), ptr @__kstrtab_chacha_crypt_generic, ptr @__kstrtabns_chacha_crypt_generic }, section "___ksymtab+chacha_crypt_generic", align 4
@__UNIQUE_ID_file173 = internal constant [36 x i8] c"libchacha.file=lib/crypto/libchacha\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [22 x i8] c"libchacha.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__ksymtab_chacha_crypt_generic], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chacha_crypt_generic(ptr noundef %state, ptr noundef %dst, ptr noundef %src, i32 noundef %bytes, i32 noundef %nrounds) #0 align 64 {
entry:
  %stream = alloca [64 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %stream) #3
  %0 = call ptr @memset(ptr %stream, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %bytes)
  %cmp26 = icmp ugt i32 %bytes, 63
  br i1 %cmp26, label %while.body.preheader, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %incdec.ptr2.i = getelementptr inbounds i32, ptr %stream, i32 1
  %incdec.ptr2.i.1 = getelementptr inbounds i32, ptr %stream, i32 2
  %incdec.ptr2.i.2 = getelementptr inbounds i32, ptr %stream, i32 3
  %incdec.ptr2.i.3 = getelementptr inbounds i32, ptr %stream, i32 4
  %incdec.ptr2.i.4 = getelementptr inbounds i32, ptr %stream, i32 5
  %incdec.ptr2.i.5 = getelementptr inbounds i32, ptr %stream, i32 6
  %incdec.ptr2.i.6 = getelementptr inbounds i32, ptr %stream, i32 7
  %incdec.ptr2.i.7 = getelementptr inbounds i32, ptr %stream, i32 8
  %incdec.ptr2.i.8 = getelementptr inbounds i32, ptr %stream, i32 9
  %incdec.ptr2.i.9 = getelementptr inbounds i32, ptr %stream, i32 10
  %incdec.ptr2.i.10 = getelementptr inbounds i32, ptr %stream, i32 11
  %incdec.ptr2.i.11 = getelementptr inbounds i32, ptr %stream, i32 12
  %incdec.ptr2.i.12 = getelementptr inbounds i32, ptr %stream, i32 13
  %incdec.ptr2.i.13 = getelementptr inbounds i32, ptr %stream, i32 14
  %incdec.ptr2.i.14 = getelementptr inbounds i32, ptr %stream, i32 15
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %dst.addr.029 = phi ptr [ %add.ptr, %while.body.while.body_crit_edge ], [ %dst, %while.body.preheader ]
  %bytes.addr.028 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %bytes, %while.body.preheader ]
  %src.addr.027 = phi ptr [ %add.ptr2, %while.body.while.body_crit_edge ], [ %src, %while.body.preheader ]
  call void @chacha_block_generic(ptr noundef %state, ptr noundef nonnull %stream, i32 noundef %nrounds) #3
  %incdec.ptr.i = getelementptr i32, ptr %src.addr.027, i32 1
  %1 = ptrtoint ptr %src.addr.027 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %src.addr.027, align 4
  %3 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stream, align 4
  %xor.i = xor i32 %4, %2
  %incdec.ptr3.i = getelementptr i32, ptr %dst.addr.029, i32 1
  %5 = ptrtoint ptr %dst.addr.029 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %xor.i, ptr %dst.addr.029, align 4
  %incdec.ptr.i.1 = getelementptr i32, ptr %src.addr.027, i32 2
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.i, align 4
  %8 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr2.i, align 4
  %xor.i.1 = xor i32 %9, %7
  %incdec.ptr3.i.1 = getelementptr i32, ptr %dst.addr.029, i32 2
  %10 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %xor.i.1, ptr %incdec.ptr3.i, align 4
  %incdec.ptr.i.2 = getelementptr i32, ptr %src.addr.027, i32 3
  %11 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr.i.1, align 4
  %13 = ptrtoint ptr %incdec.ptr2.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr2.i.1, align 4
  %xor.i.2 = xor i32 %14, %12
  %incdec.ptr3.i.2 = getelementptr i32, ptr %dst.addr.029, i32 3
  %15 = ptrtoint ptr %incdec.ptr3.i.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %xor.i.2, ptr %incdec.ptr3.i.1, align 4
  %incdec.ptr.i.3 = getelementptr i32, ptr %src.addr.027, i32 4
  %16 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.i.2, align 4
  %18 = ptrtoint ptr %incdec.ptr2.i.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr2.i.2, align 4
  %xor.i.3 = xor i32 %19, %17
  %incdec.ptr3.i.3 = getelementptr i32, ptr %dst.addr.029, i32 4
  %20 = ptrtoint ptr %incdec.ptr3.i.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %xor.i.3, ptr %incdec.ptr3.i.2, align 4
  %incdec.ptr.i.4 = getelementptr i32, ptr %src.addr.027, i32 5
  %21 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.i.3, align 4
  %23 = ptrtoint ptr %incdec.ptr2.i.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %incdec.ptr2.i.3, align 4
  %xor.i.4 = xor i32 %24, %22
  %incdec.ptr3.i.4 = getelementptr i32, ptr %dst.addr.029, i32 5
  %25 = ptrtoint ptr %incdec.ptr3.i.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %xor.i.4, ptr %incdec.ptr3.i.3, align 4
  %incdec.ptr.i.5 = getelementptr i32, ptr %src.addr.027, i32 6
  %26 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr.i.4, align 4
  %28 = ptrtoint ptr %incdec.ptr2.i.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incdec.ptr2.i.4, align 4
  %xor.i.5 = xor i32 %29, %27
  %incdec.ptr3.i.5 = getelementptr i32, ptr %dst.addr.029, i32 6
  %30 = ptrtoint ptr %incdec.ptr3.i.4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %xor.i.5, ptr %incdec.ptr3.i.4, align 4
  %incdec.ptr.i.6 = getelementptr i32, ptr %src.addr.027, i32 7
  %31 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %incdec.ptr.i.5, align 4
  %33 = ptrtoint ptr %incdec.ptr2.i.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %incdec.ptr2.i.5, align 4
  %xor.i.6 = xor i32 %34, %32
  %incdec.ptr3.i.6 = getelementptr i32, ptr %dst.addr.029, i32 7
  %35 = ptrtoint ptr %incdec.ptr3.i.5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %xor.i.6, ptr %incdec.ptr3.i.5, align 4
  %incdec.ptr.i.7 = getelementptr i32, ptr %src.addr.027, i32 8
  %36 = ptrtoint ptr %incdec.ptr.i.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %incdec.ptr.i.6, align 4
  %38 = ptrtoint ptr %incdec.ptr2.i.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %incdec.ptr2.i.6, align 4
  %xor.i.7 = xor i32 %39, %37
  %incdec.ptr3.i.7 = getelementptr i32, ptr %dst.addr.029, i32 8
  %40 = ptrtoint ptr %incdec.ptr3.i.6 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %xor.i.7, ptr %incdec.ptr3.i.6, align 4
  %incdec.ptr.i.8 = getelementptr i32, ptr %src.addr.027, i32 9
  %41 = ptrtoint ptr %incdec.ptr.i.7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %incdec.ptr.i.7, align 4
  %43 = ptrtoint ptr %incdec.ptr2.i.7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %incdec.ptr2.i.7, align 4
  %xor.i.8 = xor i32 %44, %42
  %incdec.ptr3.i.8 = getelementptr i32, ptr %dst.addr.029, i32 9
  %45 = ptrtoint ptr %incdec.ptr3.i.7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %xor.i.8, ptr %incdec.ptr3.i.7, align 4
  %incdec.ptr.i.9 = getelementptr i32, ptr %src.addr.027, i32 10
  %46 = ptrtoint ptr %incdec.ptr.i.8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %incdec.ptr.i.8, align 4
  %48 = ptrtoint ptr %incdec.ptr2.i.8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %incdec.ptr2.i.8, align 4
  %xor.i.9 = xor i32 %49, %47
  %incdec.ptr3.i.9 = getelementptr i32, ptr %dst.addr.029, i32 10
  %50 = ptrtoint ptr %incdec.ptr3.i.8 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %xor.i.9, ptr %incdec.ptr3.i.8, align 4
  %incdec.ptr.i.10 = getelementptr i32, ptr %src.addr.027, i32 11
  %51 = ptrtoint ptr %incdec.ptr.i.9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %incdec.ptr.i.9, align 4
  %53 = ptrtoint ptr %incdec.ptr2.i.9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %incdec.ptr2.i.9, align 4
  %xor.i.10 = xor i32 %54, %52
  %incdec.ptr3.i.10 = getelementptr i32, ptr %dst.addr.029, i32 11
  %55 = ptrtoint ptr %incdec.ptr3.i.9 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %xor.i.10, ptr %incdec.ptr3.i.9, align 4
  %incdec.ptr.i.11 = getelementptr i32, ptr %src.addr.027, i32 12
  %56 = ptrtoint ptr %incdec.ptr.i.10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %incdec.ptr.i.10, align 4
  %58 = ptrtoint ptr %incdec.ptr2.i.10 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %incdec.ptr2.i.10, align 4
  %xor.i.11 = xor i32 %59, %57
  %incdec.ptr3.i.11 = getelementptr i32, ptr %dst.addr.029, i32 12
  %60 = ptrtoint ptr %incdec.ptr3.i.10 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %xor.i.11, ptr %incdec.ptr3.i.10, align 4
  %incdec.ptr.i.12 = getelementptr i32, ptr %src.addr.027, i32 13
  %61 = ptrtoint ptr %incdec.ptr.i.11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %incdec.ptr.i.11, align 4
  %63 = ptrtoint ptr %incdec.ptr2.i.11 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %incdec.ptr2.i.11, align 4
  %xor.i.12 = xor i32 %64, %62
  %incdec.ptr3.i.12 = getelementptr i32, ptr %dst.addr.029, i32 13
  %65 = ptrtoint ptr %incdec.ptr3.i.11 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %xor.i.12, ptr %incdec.ptr3.i.11, align 4
  %incdec.ptr.i.13 = getelementptr i32, ptr %src.addr.027, i32 14
  %66 = ptrtoint ptr %incdec.ptr.i.12 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %incdec.ptr.i.12, align 4
  %68 = ptrtoint ptr %incdec.ptr2.i.12 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %incdec.ptr2.i.12, align 4
  %xor.i.13 = xor i32 %69, %67
  %incdec.ptr3.i.13 = getelementptr i32, ptr %dst.addr.029, i32 14
  %70 = ptrtoint ptr %incdec.ptr3.i.12 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %xor.i.13, ptr %incdec.ptr3.i.12, align 4
  %incdec.ptr.i.14 = getelementptr i32, ptr %src.addr.027, i32 15
  %71 = ptrtoint ptr %incdec.ptr.i.13 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %incdec.ptr.i.13, align 4
  %73 = ptrtoint ptr %incdec.ptr2.i.13 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %incdec.ptr2.i.13, align 4
  %xor.i.14 = xor i32 %74, %72
  %incdec.ptr3.i.14 = getelementptr i32, ptr %dst.addr.029, i32 15
  %75 = ptrtoint ptr %incdec.ptr3.i.13 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %xor.i.14, ptr %incdec.ptr3.i.13, align 4
  %76 = ptrtoint ptr %incdec.ptr.i.14 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %incdec.ptr.i.14, align 4
  %78 = ptrtoint ptr %incdec.ptr2.i.14 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %incdec.ptr2.i.14, align 4
  %xor.i.15 = xor i32 %79, %77
  %80 = ptrtoint ptr %incdec.ptr3.i.14 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %xor.i.15, ptr %incdec.ptr3.i.14, align 4
  %sub = add i32 %bytes.addr.028, -64
  %add.ptr = getelementptr i8, ptr %dst.addr.029, i32 64
  %add.ptr2 = getelementptr i8, ptr %src.addr.027, i32 64
  %cmp = icmp ugt i32 %sub, 63
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %src.addr.0.lcssa = phi ptr [ %src, %entry.while.end_crit_edge ], [ %add.ptr2, %while.body.while.end_crit_edge ]
  %bytes.addr.0.lcssa = phi i32 [ %bytes, %entry.while.end_crit_edge ], [ %sub, %while.body.while.end_crit_edge ]
  %dst.addr.0.lcssa = phi ptr [ %dst, %entry.while.end_crit_edge ], [ %add.ptr, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.addr.0.lcssa)
  %tobool.not = icmp eq i32 %bytes.addr.0.lcssa, 0
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @chacha_block_generic(ptr noundef %state, ptr noundef nonnull %stream, i32 noundef %nrounds) #3
  call void @__crypto_xor(ptr noundef %dst.addr.0.lcssa, ptr noundef %src.addr.0.lcssa, ptr noundef nonnull %stream, i32 noundef %bytes.addr.0.lcssa) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %stream) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha_block_generic(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @__ksymtab_chacha_crypt_generic, !1, !"__ksymtab_chacha_crypt_generic", i1 false, i1 false}
!1 = !{!"../lib/crypto/libchacha.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_file173, !3, !"__UNIQUE_ID_file173", i1 false, i1 false}
!3 = !{!"../lib/crypto/libchacha.c", i32 35, i32 1}
!4 = !{ptr @__UNIQUE_ID_license174, !3, !"__UNIQUE_ID_license174", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
