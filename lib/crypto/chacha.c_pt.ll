; ModuleID = '/llk/IR_all_yes/lib/crypto/chacha.c_pt.bc'
source_filename = "../lib/crypto/chacha.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+chacha_block_generic\22, \22a\22\09"
module asm "\09.weak\09__crc_chacha_block_generic\09\09\09\09"
module asm "\09.long\09__crc_chacha_block_generic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_chacha_block_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22chacha_block_generic\22\09\09\09\09\09"
module asm "__kstrtabns_chacha_block_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hchacha_block_generic\22, \22a\22\09"
module asm "\09.weak\09__crc_hchacha_block_generic\09\09\09\09"
module asm "\09.long\09__crc_hchacha_block_generic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hchacha_block_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22hchacha_block_generic\22\09\09\09\09\09"
module asm "__kstrtabns_hchacha_block_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_chacha_block_generic = external dso_local constant [0 x i8], align 1
@__kstrtabns_chacha_block_generic = external dso_local constant [0 x i8], align 1
@__ksymtab_chacha_block_generic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @chacha_block_generic to i32), ptr @__kstrtab_chacha_block_generic, ptr @__kstrtabns_chacha_block_generic }, section "___ksymtab+chacha_block_generic", align 4
@__kstrtab_hchacha_block_generic = external dso_local constant [0 x i8], align 1
@__kstrtabns_hchacha_block_generic = external dso_local constant [0 x i8], align 1
@__ksymtab_hchacha_block_generic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hchacha_block_generic to i32), ptr @__kstrtab_hchacha_block_generic, ptr @__kstrtabns_hchacha_block_generic }, section "___ksymtab+hchacha_block_generic", align 4
@chacha_permute.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib/crypto/chacha.c\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 20]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [23 x i8] c"../lib/crypto/chacha.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 21, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_chacha_block_generic, ptr @__ksymtab_hchacha_block_generic, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chacha_block_generic(ptr nocapture noundef %state, ptr nocapture noundef writeonly %stream, i32 noundef %nrounds) #0 align 64 {
entry:
  %x = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %x) #4
  %0 = call ptr @memcpy(ptr %x, ptr %state, i32 64)
  call fastcc void @chacha_permute(ptr noundef nonnull %x, i32 noundef %nrounds)
  %1 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x, align 4
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %add = add i32 %4, %2
  %5 = call i32 @llvm.bswap.i32(i32 %add) #4
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %stream, align 1
  %arrayidx.1 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr i32, ptr %state, i32 1
  %9 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.1, align 4
  %add.1 = add i32 %10, %8
  %arrayidx3.1 = getelementptr i8, ptr %stream, i32 4
  %11 = call i32 @llvm.bswap.i32(i32 %add.1) #4
  %12 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %arrayidx3.1, align 1
  %arrayidx.2 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr i32, ptr %state, i32 2
  %15 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.2, align 4
  %add.2 = add i32 %16, %14
  %arrayidx3.2 = getelementptr i8, ptr %stream, i32 8
  %17 = call i32 @llvm.bswap.i32(i32 %add.2) #4
  %18 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %arrayidx3.2, align 1
  %arrayidx.3 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr i32, ptr %state, i32 3
  %21 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2.3, align 4
  %add.3 = add i32 %22, %20
  %arrayidx3.3 = getelementptr i8, ptr %stream, i32 12
  %23 = call i32 @llvm.bswap.i32(i32 %add.3) #4
  %24 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %arrayidx3.3, align 1
  %arrayidx.4 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.4, align 4
  %arrayidx2.4 = getelementptr i32, ptr %state, i32 4
  %27 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx2.4, align 4
  %add.4 = add i32 %28, %26
  %arrayidx3.4 = getelementptr i8, ptr %stream, i32 16
  %29 = call i32 @llvm.bswap.i32(i32 %add.4) #4
  %30 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %arrayidx3.4, align 1
  %arrayidx.5 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.5, align 4
  %arrayidx2.5 = getelementptr i32, ptr %state, i32 5
  %33 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.5, align 4
  %add.5 = add i32 %34, %32
  %arrayidx3.5 = getelementptr i8, ptr %stream, i32 20
  %35 = call i32 @llvm.bswap.i32(i32 %add.5) #4
  %36 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %arrayidx3.5, align 1
  %arrayidx.6 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 6
  %37 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.6, align 4
  %arrayidx2.6 = getelementptr i32, ptr %state, i32 6
  %39 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx2.6, align 4
  %add.6 = add i32 %40, %38
  %arrayidx3.6 = getelementptr i8, ptr %stream, i32 24
  %41 = call i32 @llvm.bswap.i32(i32 %add.6) #4
  %42 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %arrayidx3.6, align 1
  %arrayidx.7 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 7
  %43 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.7, align 4
  %arrayidx2.7 = getelementptr i32, ptr %state, i32 7
  %45 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx2.7, align 4
  %add.7 = add i32 %46, %44
  %arrayidx3.7 = getelementptr i8, ptr %stream, i32 28
  %47 = call i32 @llvm.bswap.i32(i32 %add.7) #4
  %48 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %arrayidx3.7, align 1
  %arrayidx.8 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 8
  %49 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.8, align 4
  %arrayidx2.8 = getelementptr i32, ptr %state, i32 8
  %51 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx2.8, align 4
  %add.8 = add i32 %52, %50
  %arrayidx3.8 = getelementptr i8, ptr %stream, i32 32
  %53 = call i32 @llvm.bswap.i32(i32 %add.8) #4
  %54 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %arrayidx3.8, align 1
  %arrayidx.9 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 9
  %55 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.9, align 4
  %arrayidx2.9 = getelementptr i32, ptr %state, i32 9
  %57 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx2.9, align 4
  %add.9 = add i32 %58, %56
  %arrayidx3.9 = getelementptr i8, ptr %stream, i32 36
  %59 = call i32 @llvm.bswap.i32(i32 %add.9) #4
  %60 = ptrtoint ptr %arrayidx3.9 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %arrayidx3.9, align 1
  %arrayidx.10 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 10
  %61 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.10, align 4
  %arrayidx2.10 = getelementptr i32, ptr %state, i32 10
  %63 = ptrtoint ptr %arrayidx2.10 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx2.10, align 4
  %add.10 = add i32 %64, %62
  %arrayidx3.10 = getelementptr i8, ptr %stream, i32 40
  %65 = call i32 @llvm.bswap.i32(i32 %add.10) #4
  %66 = ptrtoint ptr %arrayidx3.10 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %arrayidx3.10, align 1
  %arrayidx.11 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 11
  %67 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.11, align 4
  %arrayidx2.11 = getelementptr i32, ptr %state, i32 11
  %69 = ptrtoint ptr %arrayidx2.11 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx2.11, align 4
  %add.11 = add i32 %70, %68
  %arrayidx3.11 = getelementptr i8, ptr %stream, i32 44
  %71 = call i32 @llvm.bswap.i32(i32 %add.11) #4
  %72 = ptrtoint ptr %arrayidx3.11 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %71, ptr %arrayidx3.11, align 1
  %arrayidx.12 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 12
  %73 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.12, align 4
  %arrayidx2.12 = getelementptr i32, ptr %state, i32 12
  %75 = ptrtoint ptr %arrayidx2.12 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx2.12, align 4
  %add.12 = add i32 %76, %74
  %arrayidx3.12 = getelementptr i8, ptr %stream, i32 48
  %77 = call i32 @llvm.bswap.i32(i32 %add.12) #4
  %78 = ptrtoint ptr %arrayidx3.12 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %77, ptr %arrayidx3.12, align 1
  %arrayidx.13 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 13
  %79 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.13, align 4
  %arrayidx2.13 = getelementptr i32, ptr %state, i32 13
  %81 = ptrtoint ptr %arrayidx2.13 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx2.13, align 4
  %add.13 = add i32 %82, %80
  %arrayidx3.13 = getelementptr i8, ptr %stream, i32 52
  %83 = call i32 @llvm.bswap.i32(i32 %add.13) #4
  %84 = ptrtoint ptr %arrayidx3.13 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %83, ptr %arrayidx3.13, align 1
  %arrayidx.14 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 14
  %85 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.14, align 4
  %arrayidx2.14 = getelementptr i32, ptr %state, i32 14
  %87 = ptrtoint ptr %arrayidx2.14 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx2.14, align 4
  %add.14 = add i32 %88, %86
  %arrayidx3.14 = getelementptr i8, ptr %stream, i32 56
  %89 = call i32 @llvm.bswap.i32(i32 %add.14) #4
  %90 = ptrtoint ptr %arrayidx3.14 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %89, ptr %arrayidx3.14, align 1
  %arrayidx.15 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 15
  %91 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.15, align 4
  %arrayidx2.15 = getelementptr i32, ptr %state, i32 15
  %93 = ptrtoint ptr %arrayidx2.15 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx2.15, align 4
  %add.15 = add i32 %94, %92
  %arrayidx3.15 = getelementptr i8, ptr %stream, i32 60
  %95 = call i32 @llvm.bswap.i32(i32 %add.15) #4
  %96 = ptrtoint ptr %arrayidx3.15 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %95, ptr %arrayidx3.15, align 1
  %97 = ptrtoint ptr %arrayidx2.12 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx2.12, align 4
  %inc5 = add i32 %98, 1
  store i32 %inc5, ptr %arrayidx2.12, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %x) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chacha_permute(ptr noundef %x, i32 noundef %nrounds) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %nrounds to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %nrounds, label %land.rhs3 [
    i32 20, label %entry.for.body.lr.ph_crit_edge
    i32 12, label %entry.for.body.lr.ph_crit_edge507
  ]

entry.for.body.lr.ph_crit_edge507:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.lr.ph

entry.for.body.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.lr.ph

land.rhs3:                                        ; preds = %entry
  %.b456 = load i1, ptr @chacha_permute.__already_done, align 1
  br i1 %.b456, label %land.rhs3.if.end30_crit_edge, label %if.then, !prof !16

land.rhs3.if.end30_crit_edge:                     ; preds = %land.rhs3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then:                                          ; preds = %land.rhs3
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @chacha_permute.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 21, i32 noundef 9, ptr noundef null) #4
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs3.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nrounds)
  %cmp38488 = icmp sgt i32 %nrounds, 0
  br i1 %cmp38488, label %if.end30.for.body.lr.ph_crit_edge, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end30.for.body.lr.ph_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end30.for.body.lr.ph_crit_edge, %entry.for.body.lr.ph_crit_edge, %entry.for.body.lr.ph_crit_edge507
  %arrayidx = getelementptr i32, ptr %x, i32 4
  %arrayidx40 = getelementptr i32, ptr %x, i32 12
  %arrayidx43 = getelementptr i32, ptr %x, i32 5
  %arrayidx44 = getelementptr i32, ptr %x, i32 1
  %arrayidx46 = getelementptr i32, ptr %x, i32 13
  %arrayidx51 = getelementptr i32, ptr %x, i32 6
  %arrayidx52 = getelementptr i32, ptr %x, i32 2
  %arrayidx54 = getelementptr i32, ptr %x, i32 14
  %arrayidx59 = getelementptr i32, ptr %x, i32 7
  %arrayidx60 = getelementptr i32, ptr %x, i32 3
  %arrayidx62 = getelementptr i32, ptr %x, i32 15
  %arrayidx68 = getelementptr i32, ptr %x, i32 8
  %arrayidx76 = getelementptr i32, ptr %x, i32 9
  %arrayidx84 = getelementptr i32, ptr %x, i32 10
  %arrayidx92 = getelementptr i32, ptr %x, i32 11
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %arrayidx.promoted = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %2)
  %x.promoted = load i32, ptr %x, align 4
  %3 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %3)
  %arrayidx40.promoted = load i32, ptr %arrayidx40, align 4
  %4 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %4)
  %arrayidx43.promoted = load i32, ptr %arrayidx43, align 4
  %5 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %5)
  %arrayidx44.promoted = load i32, ptr %arrayidx44, align 4
  %6 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %6)
  %arrayidx46.promoted = load i32, ptr %arrayidx46, align 4
  %7 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %7)
  %arrayidx51.promoted = load i32, ptr %arrayidx51, align 4
  %8 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %8)
  %arrayidx52.promoted = load i32, ptr %arrayidx52, align 4
  %9 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %9)
  %arrayidx54.promoted = load i32, ptr %arrayidx54, align 4
  %10 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %10)
  %arrayidx59.promoted = load i32, ptr %arrayidx59, align 4
  %11 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %11)
  %arrayidx60.promoted = load i32, ptr %arrayidx60, align 4
  %12 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %12)
  %arrayidx62.promoted = load i32, ptr %arrayidx62, align 4
  %13 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %13)
  %arrayidx68.promoted = load i32, ptr %arrayidx68, align 4
  %14 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %14)
  %arrayidx76.promoted = load i32, ptr %arrayidx76, align 4
  %15 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %15)
  %arrayidx84.promoted = load i32, ptr %arrayidx84, align 4
  %16 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %16)
  %arrayidx92.promoted = load i32, ptr %arrayidx92, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %add269505 = phi i32 [ %arrayidx92.promoted, %for.body.lr.ph ], [ %add269, %for.body.for.body_crit_edge ]
  %add261504 = phi i32 [ %arrayidx84.promoted, %for.body.lr.ph ], [ %add261, %for.body.for.body_crit_edge ]
  %add285503 = phi i32 [ %arrayidx76.promoted, %for.body.lr.ph ], [ %add285, %for.body.for.body_crit_edge ]
  %add277502 = phi i32 [ %arrayidx68.promoted, %for.body.lr.ph ], [ %add277, %for.body.for.body_crit_edge ]
  %or.i480501 = phi i32 [ %arrayidx62.promoted, %for.body.lr.ph ], [ %or.i480, %for.body.for.body_crit_edge ]
  %add253500 = phi i32 [ %arrayidx60.promoted, %for.body.lr.ph ], [ %add253, %for.body.for.body_crit_edge ]
  %or.i486499 = phi i32 [ %arrayidx59.promoted, %for.body.lr.ph ], [ %or.i486, %for.body.for.body_crit_edge ]
  %or.i483498 = phi i32 [ %arrayidx54.promoted, %for.body.lr.ph ], [ %or.i483, %for.body.for.body_crit_edge ]
  %add245497 = phi i32 [ %arrayidx52.promoted, %for.body.lr.ph ], [ %add245, %for.body.for.body_crit_edge ]
  %or.i485496 = phi i32 [ %arrayidx51.promoted, %for.body.lr.ph ], [ %or.i485, %for.body.for.body_crit_edge ]
  %or.i482495 = phi i32 [ %arrayidx46.promoted, %for.body.lr.ph ], [ %or.i482, %for.body.for.body_crit_edge ]
  %add237494 = phi i32 [ %arrayidx44.promoted, %for.body.lr.ph ], [ %add237, %for.body.for.body_crit_edge ]
  %or.i484493 = phi i32 [ %arrayidx43.promoted, %for.body.lr.ph ], [ %or.i484, %for.body.for.body_crit_edge ]
  %or.i481492 = phi i32 [ %arrayidx40.promoted, %for.body.lr.ph ], [ %or.i481, %for.body.for.body_crit_edge ]
  %add229491 = phi i32 [ %x.promoted, %for.body.lr.ph ], [ %add229, %for.body.for.body_crit_edge ]
  %or.i487490 = phi i32 [ %arrayidx.promoted, %for.body.lr.ph ], [ %or.i487, %for.body.for.body_crit_edge ]
  %i.0489 = phi i32 [ 0, %for.body.lr.ph ], [ %add291, %for.body.for.body_crit_edge ]
  %add = add i32 %add229491, %or.i487490
  %xor = xor i32 %or.i481492, %add
  %or.i = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 16) #4
  %add45 = add i32 %add237494, %or.i484493
  %xor48 = xor i32 %or.i482495, %add45
  %or.i457 = tail call i32 @llvm.fshl.i32(i32 %xor48, i32 %xor48, i32 16) #4
  %add53 = add i32 %add245497, %or.i485496
  %xor56 = xor i32 %or.i483498, %add53
  %or.i458 = tail call i32 @llvm.fshl.i32(i32 %xor56, i32 %xor56, i32 16) #4
  %add61 = add i32 %add253500, %or.i486499
  %xor64 = xor i32 %or.i480501, %add61
  %or.i459 = tail call i32 @llvm.fshl.i32(i32 %xor64, i32 %xor64, i32 16) #4
  %add69 = add i32 %add277502, %or.i
  %xor72 = xor i32 %add69, %or.i487490
  %or.i460 = tail call i32 @llvm.fshl.i32(i32 %xor72, i32 %xor72, i32 12) #4
  %add77 = add i32 %add285503, %or.i457
  %xor80 = xor i32 %add77, %or.i484493
  %or.i461 = tail call i32 @llvm.fshl.i32(i32 %xor80, i32 %xor80, i32 12) #4
  %add85 = add i32 %add261504, %or.i458
  %xor88 = xor i32 %add85, %or.i485496
  %or.i462 = tail call i32 @llvm.fshl.i32(i32 %xor88, i32 %xor88, i32 12) #4
  %add93 = add i32 %add269505, %or.i459
  %xor96 = xor i32 %add93, %or.i486499
  %or.i463 = tail call i32 @llvm.fshl.i32(i32 %xor96, i32 %xor96, i32 12) #4
  %add101 = add i32 %or.i460, %add
  %xor104 = xor i32 %add101, %or.i
  %or.i464 = tail call i32 @llvm.fshl.i32(i32 %xor104, i32 %xor104, i32 8) #4
  %add109 = add i32 %or.i461, %add45
  %xor112 = xor i32 %add109, %or.i457
  %or.i465 = tail call i32 @llvm.fshl.i32(i32 %xor112, i32 %xor112, i32 8) #4
  %add117 = add i32 %or.i462, %add53
  %xor120 = xor i32 %add117, %or.i458
  %or.i466 = tail call i32 @llvm.fshl.i32(i32 %xor120, i32 %xor120, i32 8) #4
  %add125 = add i32 %or.i463, %add61
  %xor128 = xor i32 %add125, %or.i459
  %or.i467 = tail call i32 @llvm.fshl.i32(i32 %xor128, i32 %xor128, i32 8) #4
  %add133 = add i32 %or.i464, %add69
  %xor136 = xor i32 %add133, %or.i460
  %or.i468 = tail call i32 @llvm.fshl.i32(i32 %xor136, i32 %xor136, i32 7) #4
  %add141 = add i32 %or.i465, %add77
  %xor144 = xor i32 %add141, %or.i461
  %or.i469 = tail call i32 @llvm.fshl.i32(i32 %xor144, i32 %xor144, i32 7) #4
  %add149 = add i32 %or.i466, %add85
  %xor152 = xor i32 %add149, %or.i462
  %or.i470 = tail call i32 @llvm.fshl.i32(i32 %xor152, i32 %xor152, i32 7) #4
  %add157 = add i32 %or.i467, %add93
  %xor160 = xor i32 %add157, %or.i463
  %or.i471 = tail call i32 @llvm.fshl.i32(i32 %xor160, i32 %xor160, i32 7) #4
  %add165 = add i32 %or.i469, %add101
  %xor168 = xor i32 %or.i467, %add165
  %or.i472 = tail call i32 @llvm.fshl.i32(i32 %xor168, i32 %xor168, i32 16) #4
  %add173 = add i32 %or.i470, %add109
  %xor176 = xor i32 %add173, %or.i464
  %or.i473 = tail call i32 @llvm.fshl.i32(i32 %xor176, i32 %xor176, i32 16) #4
  %add181 = add i32 %or.i471, %add117
  %xor184 = xor i32 %add181, %or.i465
  %or.i474 = tail call i32 @llvm.fshl.i32(i32 %xor184, i32 %xor184, i32 16) #4
  %add189 = add i32 %add125, %or.i468
  %xor192 = xor i32 %add189, %or.i466
  %or.i475 = tail call i32 @llvm.fshl.i32(i32 %xor192, i32 %xor192, i32 16) #4
  %add197 = add i32 %or.i472, %add149
  %xor200 = xor i32 %add197, %or.i469
  %or.i476 = tail call i32 @llvm.fshl.i32(i32 %xor200, i32 %xor200, i32 12) #4
  %add205 = add i32 %or.i473, %add157
  %xor208 = xor i32 %add205, %or.i470
  %or.i477 = tail call i32 @llvm.fshl.i32(i32 %xor208, i32 %xor208, i32 12) #4
  %add213 = add i32 %or.i474, %add133
  %xor216 = xor i32 %add213, %or.i471
  %or.i478 = tail call i32 @llvm.fshl.i32(i32 %xor216, i32 %xor216, i32 12) #4
  %add221 = add i32 %or.i475, %add141
  %xor224 = xor i32 %add221, %or.i468
  %or.i479 = tail call i32 @llvm.fshl.i32(i32 %xor224, i32 %xor224, i32 12) #4
  %add229 = add i32 %or.i476, %add165
  %xor232 = xor i32 %add229, %or.i472
  %or.i480 = tail call i32 @llvm.fshl.i32(i32 %xor232, i32 %xor232, i32 8) #4
  %add237 = add i32 %or.i477, %add173
  %xor240 = xor i32 %add237, %or.i473
  %or.i481 = tail call i32 @llvm.fshl.i32(i32 %xor240, i32 %xor240, i32 8) #4
  %add245 = add i32 %or.i478, %add181
  %xor248 = xor i32 %add245, %or.i474
  %or.i482 = tail call i32 @llvm.fshl.i32(i32 %xor248, i32 %xor248, i32 8) #4
  %add253 = add i32 %or.i479, %add189
  %xor256 = xor i32 %add253, %or.i475
  %or.i483 = tail call i32 @llvm.fshl.i32(i32 %xor256, i32 %xor256, i32 8) #4
  %add261 = add i32 %or.i480, %add197
  %xor264 = xor i32 %add261, %or.i476
  %or.i484 = tail call i32 @llvm.fshl.i32(i32 %xor264, i32 %xor264, i32 7) #4
  %add269 = add i32 %or.i481, %add205
  %xor272 = xor i32 %add269, %or.i477
  %or.i485 = tail call i32 @llvm.fshl.i32(i32 %xor272, i32 %xor272, i32 7) #4
  %add277 = add i32 %or.i482, %add213
  %xor280 = xor i32 %add277, %or.i478
  %or.i486 = tail call i32 @llvm.fshl.i32(i32 %xor280, i32 %xor280, i32 7) #4
  %add285 = add i32 %or.i483, %add221
  %xor288 = xor i32 %add285, %or.i479
  %or.i487 = tail call i32 @llvm.fshl.i32(i32 %xor288, i32 %xor288, i32 7) #4
  %add291 = add i32 %i.0489, 2
  %cmp38 = icmp slt i32 %add291, %nrounds
  br i1 %cmp38, label %for.body.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i487, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add229, ptr %x, align 4
  %19 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i481, ptr %arrayidx40, align 4
  %20 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i484, ptr %arrayidx43, align 4
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add237, ptr %arrayidx44, align 4
  %22 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i482, ptr %arrayidx46, align 4
  %23 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i485, ptr %arrayidx51, align 4
  %24 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add245, ptr %arrayidx52, align 4
  %25 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i483, ptr %arrayidx54, align 4
  %26 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i486, ptr %arrayidx59, align 4
  %27 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add253, ptr %arrayidx60, align 4
  %28 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i480, ptr %arrayidx62, align 4
  %29 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add277, ptr %arrayidx68, align 4
  %30 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add285, ptr %arrayidx76, align 4
  %31 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add261, ptr %arrayidx84, align 4
  %32 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add269, ptr %arrayidx92, align 4
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end30.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hchacha_block_generic(ptr nocapture noundef readonly %state, ptr nocapture noundef writeonly %stream, i32 noundef %nrounds) #0 align 64 {
entry:
  %x = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %x) #4
  %0 = call ptr @memcpy(ptr %x, ptr %state, i32 64)
  call fastcc void @chacha_permute(ptr noundef nonnull %x, i32 noundef %nrounds)
  %1 = call ptr @memcpy(ptr %stream, ptr %x, i32 16)
  %arrayidx3 = getelementptr i32, ptr %stream, i32 4
  %arrayidx4 = getelementptr inbounds [16 x i32], ptr %x, i32 0, i32 12
  %2 = call ptr @memcpy(ptr %arrayidx3, ptr %arrayidx4, i32 16)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %x) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__ksymtab_chacha_block_generic, !1, !"__ksymtab_chacha_block_generic", i1 false, i1 false}
!1 = !{!"../lib/crypto/chacha.c", i32 90, i32 1}
!2 = !{ptr @__ksymtab_hchacha_block_generic, !3, !"__ksymtab_hchacha_block_generic", i1 false, i1 false}
!3 = !{!"../lib/crypto/chacha.c", i32 114, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../lib/crypto/chacha.c", i32 21, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 2000, i32 1}
