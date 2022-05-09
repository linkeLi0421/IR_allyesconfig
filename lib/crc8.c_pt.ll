; ModuleID = '/llk/IR_all_yes/lib/crc8.c_pt.bc'
source_filename = "../lib/crc8.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+crc8_populate_msb\22, \22a\22\09"
module asm "\09.weak\09__crc_crc8_populate_msb\09\09\09\09"
module asm "\09.long\09__crc_crc8_populate_msb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc8_populate_msb:\09\09\09\09\09"
module asm "\09.asciz \09\22crc8_populate_msb\22\09\09\09\09\09"
module asm "__kstrtabns_crc8_populate_msb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crc8_populate_lsb\22, \22a\22\09"
module asm "\09.weak\09__crc_crc8_populate_lsb\09\09\09\09"
module asm "\09.long\09__crc_crc8_populate_lsb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc8_populate_lsb:\09\09\09\09\09"
module asm "\09.asciz \09\22crc8_populate_lsb\22\09\09\09\09\09"
module asm "__kstrtabns_crc8_populate_lsb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crc8\22, \22a\22\09"
module asm "\09.weak\09__crc_crc8\09\09\09\09"
module asm "\09.long\09__crc_crc8\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc8:\09\09\09\09\09"
module asm "\09.asciz \09\22crc8\22\09\09\09\09\09"
module asm "__kstrtabns_crc8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_crc8_populate_msb = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc8_populate_msb = external dso_local constant [0 x i8], align 1
@__ksymtab_crc8_populate_msb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc8_populate_msb to i32), ptr @__kstrtab_crc8_populate_msb, ptr @__kstrtabns_crc8_populate_msb }, section "___ksymtab+crc8_populate_msb", align 4
@__kstrtab_crc8_populate_lsb = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc8_populate_lsb = external dso_local constant [0 x i8], align 1
@__ksymtab_crc8_populate_lsb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc8_populate_lsb to i32), ptr @__kstrtab_crc8_populate_lsb, ptr @__kstrtabns_crc8_populate_lsb }, section "___ksymtab+crc8_populate_lsb", align 4
@__kstrtab_crc8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc8 = external dso_local constant [0 x i8], align 1
@__ksymtab_crc8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc8 to i32), ptr @__kstrtab_crc8, ptr @__kstrtabns_crc8 }, section "___ksymtab+crc8", align 4
@__UNIQUE_ID_description106 = internal constant [54 x i8] c"crc8.description=CRC8 (by Williams, Ross N.) function\00", section ".modinfo", align 1
@__UNIQUE_ID_author107 = internal constant [33 x i8] c"crc8.author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file108 = internal constant [19 x i8] c"crc8.file=lib/crc8\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [26 x i8] c"crc8.license=Dual BSD/GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author107, ptr @__UNIQUE_ID_description106, ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__ksymtab_crc8, ptr @__ksymtab_crc8_populate_lsb, ptr @__ksymtab_crc8_populate_msb], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crc8_populate_msb(ptr nocapture noundef %table, i8 noundef zeroext %polynomial) #0 align 64 {
for.body7.lr.ph.5:
  call void @__sanitizer_cov_trace_pc() #3
  %0 = ptrtoint ptr %table to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %table, align 1
  %conv2 = zext i8 %polynomial to i32
  %arrayidx13 = getelementptr i8, ptr %table, i32 1
  %1 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %polynomial, ptr %arrayidx13, align 1
  %conv.1 = shl nuw nsw i32 %conv2, 1
  %and.1 = and i32 %conv2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %spec.select.1 = select i1 %tobool.not.1, i32 0, i32 %conv2
  %xor.1 = xor i32 %spec.select.1, %conv.1
  %2 = trunc i32 %xor.1 to i8
  %3 = ptrtoint ptr %table to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %table, align 1
  %conv12.1 = xor i8 %4, %2
  %arrayidx13.1 = getelementptr i8, ptr %table, i32 2
  %5 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv12.1, ptr %arrayidx13.1, align 1
  %arrayidx8.1.1 = getelementptr i8, ptr %table, i32 1
  %6 = ptrtoint ptr %arrayidx8.1.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.1.1, align 1
  %conv12.1.1 = xor i8 %7, %2
  %arrayidx13.1.1 = getelementptr i8, ptr %table, i32 3
  %8 = ptrtoint ptr %arrayidx13.1.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv12.1.1, ptr %arrayidx13.1.1, align 1
  %conv.2 = shl nuw nsw i32 %xor.1, 1
  %shl.2 = and i32 %conv.2, 510
  %and.2 = and i32 %xor.1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %spec.select.2 = select i1 %tobool.not.2, i32 0, i32 %conv2
  %xor.2 = xor i32 %spec.select.2, %shl.2
  %9 = trunc i32 %xor.2 to i8
  %10 = ptrtoint ptr %table to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %table, align 1
  %conv12.2 = xor i8 %11, %9
  %arrayidx13.2 = getelementptr i8, ptr %table, i32 4
  %12 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv12.2, ptr %arrayidx13.2, align 1
  %arrayidx8.2.1 = getelementptr i8, ptr %table, i32 1
  %13 = ptrtoint ptr %arrayidx8.2.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8.2.1, align 1
  %conv12.2.1 = xor i8 %14, %9
  %arrayidx13.2.1 = getelementptr i8, ptr %table, i32 5
  %15 = ptrtoint ptr %arrayidx13.2.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv12.2.1, ptr %arrayidx13.2.1, align 1
  %arrayidx8.2.2 = getelementptr i8, ptr %table, i32 2
  %16 = ptrtoint ptr %arrayidx8.2.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx8.2.2, align 1
  %conv12.2.2 = xor i8 %17, %9
  %arrayidx13.2.2 = getelementptr i8, ptr %table, i32 6
  %18 = ptrtoint ptr %arrayidx13.2.2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv12.2.2, ptr %arrayidx13.2.2, align 1
  %arrayidx8.2.3 = getelementptr i8, ptr %table, i32 3
  %19 = ptrtoint ptr %arrayidx8.2.3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx8.2.3, align 1
  %conv12.2.3 = xor i8 %20, %9
  %arrayidx13.2.3 = getelementptr i8, ptr %table, i32 7
  %21 = ptrtoint ptr %arrayidx13.2.3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv12.2.3, ptr %arrayidx13.2.3, align 1
  %conv.3 = shl nuw nsw i32 %xor.2, 1
  %shl.3 = and i32 %conv.3, 510
  %and.3 = and i32 %xor.2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %spec.select.3 = select i1 %tobool.not.3, i32 0, i32 %conv2
  %xor.3 = xor i32 %spec.select.3, %shl.3
  %22 = trunc i32 %xor.3 to i8
  %23 = ptrtoint ptr %table to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %table, align 1
  %conv12.3 = xor i8 %24, %22
  %arrayidx13.3 = getelementptr i8, ptr %table, i32 8
  %25 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv12.3, ptr %arrayidx13.3, align 1
  %arrayidx8.3.1 = getelementptr i8, ptr %table, i32 1
  %26 = ptrtoint ptr %arrayidx8.3.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx8.3.1, align 1
  %conv12.3.1 = xor i8 %27, %22
  %arrayidx13.3.1 = getelementptr i8, ptr %table, i32 9
  %28 = ptrtoint ptr %arrayidx13.3.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv12.3.1, ptr %arrayidx13.3.1, align 1
  %arrayidx8.3.2 = getelementptr i8, ptr %table, i32 2
  %29 = ptrtoint ptr %arrayidx8.3.2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx8.3.2, align 1
  %conv12.3.2 = xor i8 %30, %22
  %arrayidx13.3.2 = getelementptr i8, ptr %table, i32 10
  %31 = ptrtoint ptr %arrayidx13.3.2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv12.3.2, ptr %arrayidx13.3.2, align 1
  %arrayidx8.3.3 = getelementptr i8, ptr %table, i32 3
  %32 = ptrtoint ptr %arrayidx8.3.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx8.3.3, align 1
  %conv12.3.3 = xor i8 %33, %22
  %arrayidx13.3.3 = getelementptr i8, ptr %table, i32 11
  %34 = ptrtoint ptr %arrayidx13.3.3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv12.3.3, ptr %arrayidx13.3.3, align 1
  %arrayidx8.3.4 = getelementptr i8, ptr %table, i32 4
  %35 = ptrtoint ptr %arrayidx8.3.4 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx8.3.4, align 1
  %conv12.3.4 = xor i8 %36, %22
  %arrayidx13.3.4 = getelementptr i8, ptr %table, i32 12
  %37 = ptrtoint ptr %arrayidx13.3.4 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv12.3.4, ptr %arrayidx13.3.4, align 1
  %arrayidx8.3.5 = getelementptr i8, ptr %table, i32 5
  %38 = ptrtoint ptr %arrayidx8.3.5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx8.3.5, align 1
  %conv12.3.5 = xor i8 %39, %22
  %arrayidx13.3.5 = getelementptr i8, ptr %table, i32 13
  %40 = ptrtoint ptr %arrayidx13.3.5 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv12.3.5, ptr %arrayidx13.3.5, align 1
  %arrayidx8.3.6 = getelementptr i8, ptr %table, i32 6
  %41 = ptrtoint ptr %arrayidx8.3.6 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx8.3.6, align 1
  %conv12.3.6 = xor i8 %42, %22
  %arrayidx13.3.6 = getelementptr i8, ptr %table, i32 14
  %43 = ptrtoint ptr %arrayidx13.3.6 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv12.3.6, ptr %arrayidx13.3.6, align 1
  %arrayidx8.3.7 = getelementptr i8, ptr %table, i32 7
  %44 = ptrtoint ptr %arrayidx8.3.7 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx8.3.7, align 1
  %conv12.3.7 = xor i8 %45, %22
  %arrayidx13.3.7 = getelementptr i8, ptr %table, i32 15
  %46 = ptrtoint ptr %arrayidx13.3.7 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv12.3.7, ptr %arrayidx13.3.7, align 1
  %conv.4 = shl nuw nsw i32 %xor.3, 1
  %shl.4 = and i32 %conv.4, 510
  %and.4 = and i32 %xor.3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  %spec.select.4 = select i1 %tobool.not.4, i32 0, i32 %conv2
  %xor.4 = xor i32 %spec.select.4, %shl.4
  %47 = trunc i32 %xor.4 to i8
  %48 = ptrtoint ptr %table to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %table, align 1
  %conv12.4 = xor i8 %49, %47
  %arrayidx13.4 = getelementptr i8, ptr %table, i32 16
  %50 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv12.4, ptr %arrayidx13.4, align 1
  %arrayidx8.4.1 = getelementptr i8, ptr %table, i32 1
  %51 = ptrtoint ptr %arrayidx8.4.1 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx8.4.1, align 1
  %conv12.4.1 = xor i8 %52, %47
  %arrayidx13.4.1 = getelementptr i8, ptr %table, i32 17
  %53 = ptrtoint ptr %arrayidx13.4.1 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv12.4.1, ptr %arrayidx13.4.1, align 1
  %arrayidx8.4.2 = getelementptr i8, ptr %table, i32 2
  %54 = ptrtoint ptr %arrayidx8.4.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx8.4.2, align 1
  %conv12.4.2 = xor i8 %55, %47
  %arrayidx13.4.2 = getelementptr i8, ptr %table, i32 18
  %56 = ptrtoint ptr %arrayidx13.4.2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv12.4.2, ptr %arrayidx13.4.2, align 1
  %arrayidx8.4.3 = getelementptr i8, ptr %table, i32 3
  %57 = ptrtoint ptr %arrayidx8.4.3 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx8.4.3, align 1
  %conv12.4.3 = xor i8 %58, %47
  %arrayidx13.4.3 = getelementptr i8, ptr %table, i32 19
  %59 = ptrtoint ptr %arrayidx13.4.3 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv12.4.3, ptr %arrayidx13.4.3, align 1
  %arrayidx8.4.4 = getelementptr i8, ptr %table, i32 4
  %60 = ptrtoint ptr %arrayidx8.4.4 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx8.4.4, align 1
  %conv12.4.4 = xor i8 %61, %47
  %arrayidx13.4.4 = getelementptr i8, ptr %table, i32 20
  %62 = ptrtoint ptr %arrayidx13.4.4 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv12.4.4, ptr %arrayidx13.4.4, align 1
  %arrayidx8.4.5 = getelementptr i8, ptr %table, i32 5
  %63 = ptrtoint ptr %arrayidx8.4.5 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx8.4.5, align 1
  %conv12.4.5 = xor i8 %64, %47
  %arrayidx13.4.5 = getelementptr i8, ptr %table, i32 21
  %65 = ptrtoint ptr %arrayidx13.4.5 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv12.4.5, ptr %arrayidx13.4.5, align 1
  %arrayidx8.4.6 = getelementptr i8, ptr %table, i32 6
  %66 = ptrtoint ptr %arrayidx8.4.6 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx8.4.6, align 1
  %conv12.4.6 = xor i8 %67, %47
  %arrayidx13.4.6 = getelementptr i8, ptr %table, i32 22
  %68 = ptrtoint ptr %arrayidx13.4.6 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv12.4.6, ptr %arrayidx13.4.6, align 1
  %arrayidx8.4.7 = getelementptr i8, ptr %table, i32 7
  %69 = ptrtoint ptr %arrayidx8.4.7 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx8.4.7, align 1
  %conv12.4.7 = xor i8 %70, %47
  %arrayidx13.4.7 = getelementptr i8, ptr %table, i32 23
  %71 = ptrtoint ptr %arrayidx13.4.7 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv12.4.7, ptr %arrayidx13.4.7, align 1
  %arrayidx8.4.8 = getelementptr i8, ptr %table, i32 8
  %72 = ptrtoint ptr %arrayidx8.4.8 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx8.4.8, align 1
  %conv12.4.8 = xor i8 %73, %47
  %arrayidx13.4.8 = getelementptr i8, ptr %table, i32 24
  %74 = ptrtoint ptr %arrayidx13.4.8 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv12.4.8, ptr %arrayidx13.4.8, align 1
  %arrayidx8.4.9 = getelementptr i8, ptr %table, i32 9
  %75 = ptrtoint ptr %arrayidx8.4.9 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx8.4.9, align 1
  %conv12.4.9 = xor i8 %76, %47
  %arrayidx13.4.9 = getelementptr i8, ptr %table, i32 25
  %77 = ptrtoint ptr %arrayidx13.4.9 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv12.4.9, ptr %arrayidx13.4.9, align 1
  %arrayidx8.4.10 = getelementptr i8, ptr %table, i32 10
  %78 = ptrtoint ptr %arrayidx8.4.10 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx8.4.10, align 1
  %conv12.4.10 = xor i8 %79, %47
  %arrayidx13.4.10 = getelementptr i8, ptr %table, i32 26
  %80 = ptrtoint ptr %arrayidx13.4.10 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv12.4.10, ptr %arrayidx13.4.10, align 1
  %arrayidx8.4.11 = getelementptr i8, ptr %table, i32 11
  %81 = ptrtoint ptr %arrayidx8.4.11 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx8.4.11, align 1
  %conv12.4.11 = xor i8 %82, %47
  %arrayidx13.4.11 = getelementptr i8, ptr %table, i32 27
  %83 = ptrtoint ptr %arrayidx13.4.11 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv12.4.11, ptr %arrayidx13.4.11, align 1
  %arrayidx8.4.12 = getelementptr i8, ptr %table, i32 12
  %84 = ptrtoint ptr %arrayidx8.4.12 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx8.4.12, align 1
  %conv12.4.12 = xor i8 %85, %47
  %arrayidx13.4.12 = getelementptr i8, ptr %table, i32 28
  %86 = ptrtoint ptr %arrayidx13.4.12 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv12.4.12, ptr %arrayidx13.4.12, align 1
  %arrayidx8.4.13 = getelementptr i8, ptr %table, i32 13
  %87 = ptrtoint ptr %arrayidx8.4.13 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx8.4.13, align 1
  %conv12.4.13 = xor i8 %88, %47
  %arrayidx13.4.13 = getelementptr i8, ptr %table, i32 29
  %89 = ptrtoint ptr %arrayidx13.4.13 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv12.4.13, ptr %arrayidx13.4.13, align 1
  %arrayidx8.4.14 = getelementptr i8, ptr %table, i32 14
  %90 = ptrtoint ptr %arrayidx8.4.14 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx8.4.14, align 1
  %conv12.4.14 = xor i8 %91, %47
  %arrayidx13.4.14 = getelementptr i8, ptr %table, i32 30
  %92 = ptrtoint ptr %arrayidx13.4.14 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv12.4.14, ptr %arrayidx13.4.14, align 1
  %arrayidx8.4.15 = getelementptr i8, ptr %table, i32 15
  %93 = ptrtoint ptr %arrayidx8.4.15 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx8.4.15, align 1
  %conv12.4.15 = xor i8 %94, %47
  %arrayidx13.4.15 = getelementptr i8, ptr %table, i32 31
  %95 = ptrtoint ptr %arrayidx13.4.15 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv12.4.15, ptr %arrayidx13.4.15, align 1
  %conv.5 = shl nuw nsw i32 %xor.4, 1
  %shl.5 = and i32 %conv.5, 510
  %and.5 = and i32 %xor.4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  %spec.select.5 = select i1 %tobool.not.5, i32 0, i32 %conv2
  %xor.5 = xor i32 %spec.select.5, %shl.5
  %96 = trunc i32 %xor.5 to i8
  br label %for.body7.5

for.body7.5:                                      ; preds = %for.body7.5.for.body7.5_crit_edge, %for.body7.lr.ph.5
  %j.027.5 = phi i32 [ 0, %for.body7.lr.ph.5 ], [ %inc.5, %for.body7.5.for.body7.5_crit_edge ]
  %arrayidx8.5 = getelementptr i8, ptr %table, i32 %j.027.5
  %97 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx8.5, align 1
  %conv12.5 = xor i8 %98, %96
  %add.5 = add nuw nsw i32 %j.027.5, 32
  %arrayidx13.5 = getelementptr i8, ptr %table, i32 %add.5
  %99 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv12.5, ptr %arrayidx13.5, align 1
  %inc.5 = add nuw nsw i32 %j.027.5, 1
  %exitcond.5.not = icmp eq i32 %inc.5, 32
  br i1 %exitcond.5.not, label %for.body7.lr.ph.6, label %for.body7.5.for.body7.5_crit_edge

for.body7.5.for.body7.5_crit_edge:                ; preds = %for.body7.5
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body7.5

for.body7.lr.ph.6:                                ; preds = %for.body7.5
  %conv.6 = shl nuw nsw i32 %xor.5, 1
  %shl.6 = and i32 %conv.6, 510
  %and.6 = and i32 %xor.5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  %spec.select.6 = select i1 %tobool.not.6, i32 0, i32 %conv2
  %xor.6 = xor i32 %spec.select.6, %shl.6
  %100 = trunc i32 %xor.6 to i8
  br label %for.body7.6

for.body7.6:                                      ; preds = %for.body7.6.for.body7.6_crit_edge, %for.body7.lr.ph.6
  %j.027.6 = phi i32 [ 0, %for.body7.lr.ph.6 ], [ %inc.6, %for.body7.6.for.body7.6_crit_edge ]
  %arrayidx8.6 = getelementptr i8, ptr %table, i32 %j.027.6
  %101 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx8.6, align 1
  %conv12.6 = xor i8 %102, %100
  %add.6 = add nuw nsw i32 %j.027.6, 64
  %arrayidx13.6 = getelementptr i8, ptr %table, i32 %add.6
  %103 = ptrtoint ptr %arrayidx13.6 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv12.6, ptr %arrayidx13.6, align 1
  %inc.6 = add nuw nsw i32 %j.027.6, 1
  %exitcond.6.not = icmp eq i32 %inc.6, 64
  br i1 %exitcond.6.not, label %for.body7.lr.ph.7, label %for.body7.6.for.body7.6_crit_edge

for.body7.6.for.body7.6_crit_edge:                ; preds = %for.body7.6
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body7.6

for.body7.lr.ph.7:                                ; preds = %for.body7.6
  %and.7 = and i32 %xor.6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  %spec.select.7 = select i1 %tobool.not.7, i32 0, i32 %conv2
  %conv.7 = shl nuw nsw i32 %xor.6, 1
  %xor.7 = xor i32 %spec.select.7, %conv.7
  %104 = trunc i32 %xor.7 to i8
  br label %for.body7.7

for.body7.7:                                      ; preds = %for.body7.7.for.body7.7_crit_edge, %for.body7.lr.ph.7
  %j.027.7 = phi i32 [ 0, %for.body7.lr.ph.7 ], [ %inc.7, %for.body7.7.for.body7.7_crit_edge ]
  %arrayidx8.7 = getelementptr i8, ptr %table, i32 %j.027.7
  %105 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx8.7, align 1
  %conv12.7 = xor i8 %106, %104
  %add.7 = add nuw nsw i32 %j.027.7, 128
  %arrayidx13.7 = getelementptr i8, ptr %table, i32 %add.7
  %107 = ptrtoint ptr %arrayidx13.7 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv12.7, ptr %arrayidx13.7, align 1
  %inc.7 = add nuw nsw i32 %j.027.7, 1
  %exitcond.7.not = icmp eq i32 %inc.7, 128
  br i1 %exitcond.7.not, label %for.inc14.7, label %for.body7.7.for.body7.7_crit_edge

for.body7.7.for.body7.7_crit_edge:                ; preds = %for.body7.7
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body7.7

for.inc14.7:                                      ; preds = %for.body7.7
  call void @__sanitizer_cov_trace_pc() #3
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crc8_populate_lsb(ptr nocapture noundef %table, i8 noundef zeroext %polynomial) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %0 = ptrtoint ptr %table to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %table, align 1
  %conv3 = zext i8 %polynomial to i32
  %arrayidx13 = getelementptr i8, ptr %table, i32 128
  %1 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %polynomial, ptr %arrayidx13, align 1
  %conv.1 = lshr i32 %conv3, 1
  %and.1 = and i32 %conv3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool2.not.1 = icmp eq i32 %and.1, 0
  %spec.select.1 = select i1 %tobool2.not.1, i32 0, i32 %conv3
  %xor.1 = xor i32 %spec.select.1, %conv.1
  %2 = trunc i32 %xor.1 to i8
  %arrayidx13.1 = getelementptr i8, ptr %table, i32 64
  %3 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %arrayidx13.1, align 1
  %conv12.1.1 = xor i8 %2, %polynomial
  %arrayidx13.1.1 = getelementptr i8, ptr %table, i32 192
  %4 = ptrtoint ptr %arrayidx13.1.1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv12.1.1, ptr %arrayidx13.1.1, align 1
  %conv.2 = lshr i32 %xor.1, 1
  %and.2 = and i32 %xor.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool2.not.2 = icmp eq i32 %and.2, 0
  %spec.select.2 = select i1 %tobool2.not.2, i32 0, i32 %conv3
  %xor.2 = xor i32 %spec.select.2, %conv.2
  %5 = trunc i32 %xor.2 to i8
  %arrayidx13.2 = getelementptr i8, ptr %table, i32 32
  %6 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx13.2, align 1
  %conv12.2.131 = xor i32 %xor.1, %xor.2
  %conv12.2.1 = trunc i32 %conv12.2.131 to i8
  %arrayidx13.2.1 = getelementptr i8, ptr %table, i32 96
  %7 = ptrtoint ptr %arrayidx13.2.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv12.2.1, ptr %arrayidx13.2.1, align 1
  %conv12.2.2 = xor i8 %5, %polynomial
  %arrayidx13.2.2 = getelementptr i8, ptr %table, i32 160
  %8 = ptrtoint ptr %arrayidx13.2.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv12.2.2, ptr %arrayidx13.2.2, align 1
  %conv12.2.3 = xor i8 %conv12.1.1, %5
  %arrayidx13.2.3 = getelementptr i8, ptr %table, i32 224
  %9 = ptrtoint ptr %arrayidx13.2.3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv12.2.3, ptr %arrayidx13.2.3, align 1
  %conv.3 = lshr i32 %xor.2, 1
  %10 = and i32 %conv.3, 127
  %and.3 = and i32 %xor.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool2.not.3 = icmp eq i32 %and.3, 0
  %spec.select.3 = select i1 %tobool2.not.3, i32 0, i32 %conv3
  %xor.3 = xor i32 %spec.select.3, %10
  %11 = trunc i32 %xor.3 to i8
  %arrayidx13.3 = getelementptr i8, ptr %table, i32 16
  %12 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx13.3, align 1
  %conv12.3.132 = xor i32 %xor.2, %xor.3
  %conv12.3.1 = trunc i32 %conv12.3.132 to i8
  %arrayidx13.3.1 = getelementptr i8, ptr %table, i32 48
  %13 = ptrtoint ptr %arrayidx13.3.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv12.3.1, ptr %arrayidx13.3.1, align 1
  %conv12.3.233 = xor i32 %xor.1, %xor.3
  %conv12.3.2 = trunc i32 %conv12.3.233 to i8
  %arrayidx13.3.2 = getelementptr i8, ptr %table, i32 80
  %14 = ptrtoint ptr %arrayidx13.3.2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv12.3.2, ptr %arrayidx13.3.2, align 1
  %conv12.3.334 = xor i32 %conv12.2.131, %xor.3
  %conv12.3.3 = trunc i32 %conv12.3.334 to i8
  %arrayidx13.3.3 = getelementptr i8, ptr %table, i32 112
  %15 = ptrtoint ptr %arrayidx13.3.3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv12.3.3, ptr %arrayidx13.3.3, align 1
  %conv12.3.4 = xor i8 %11, %polynomial
  %arrayidx13.3.4 = getelementptr i8, ptr %table, i32 144
  %16 = ptrtoint ptr %arrayidx13.3.4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv12.3.4, ptr %arrayidx13.3.4, align 1
  %conv12.3.5 = xor i8 %conv12.2.2, %11
  %arrayidx13.3.5 = getelementptr i8, ptr %table, i32 176
  %17 = ptrtoint ptr %arrayidx13.3.5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv12.3.5, ptr %arrayidx13.3.5, align 1
  %conv12.3.6 = xor i8 %conv12.1.1, %11
  %arrayidx13.3.6 = getelementptr i8, ptr %table, i32 208
  %18 = ptrtoint ptr %arrayidx13.3.6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv12.3.6, ptr %arrayidx13.3.6, align 1
  %conv12.3.7 = xor i8 %conv12.2.3, %11
  %arrayidx13.3.7 = getelementptr i8, ptr %table, i32 240
  %19 = ptrtoint ptr %arrayidx13.3.7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv12.3.7, ptr %arrayidx13.3.7, align 1
  %conv.4 = lshr i32 %xor.3, 1
  %and.4 = and i32 %xor.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool2.not.4 = icmp eq i32 %and.4, 0
  %spec.select.4 = select i1 %tobool2.not.4, i32 0, i32 %conv3
  %xor.4 = xor i32 %spec.select.4, %conv.4
  %20 = trunc i32 %xor.4 to i8
  %arrayidx13.4 = getelementptr i8, ptr %table, i32 8
  %21 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx13.4, align 1
  %conv12.4.135 = xor i32 %xor.3, %xor.4
  %conv12.4.1 = trunc i32 %conv12.4.135 to i8
  %arrayidx13.4.1 = getelementptr i8, ptr %table, i32 24
  %22 = ptrtoint ptr %arrayidx13.4.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv12.4.1, ptr %arrayidx13.4.1, align 1
  %conv12.4.236 = xor i32 %xor.2, %xor.4
  %conv12.4.2 = trunc i32 %conv12.4.236 to i8
  %arrayidx13.4.2 = getelementptr i8, ptr %table, i32 40
  %23 = ptrtoint ptr %arrayidx13.4.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv12.4.2, ptr %arrayidx13.4.2, align 1
  %conv12.4.337 = xor i32 %conv12.3.132, %xor.4
  %conv12.4.3 = trunc i32 %conv12.4.337 to i8
  %arrayidx13.4.3 = getelementptr i8, ptr %table, i32 56
  %24 = ptrtoint ptr %arrayidx13.4.3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv12.4.3, ptr %arrayidx13.4.3, align 1
  %conv12.4.438 = xor i32 %xor.1, %xor.4
  %conv12.4.4 = trunc i32 %conv12.4.438 to i8
  %arrayidx13.4.4 = getelementptr i8, ptr %table, i32 72
  %25 = ptrtoint ptr %arrayidx13.4.4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv12.4.4, ptr %arrayidx13.4.4, align 1
  %conv12.4.539 = xor i32 %conv12.3.233, %xor.4
  %conv12.4.5 = trunc i32 %conv12.4.539 to i8
  %arrayidx13.4.5 = getelementptr i8, ptr %table, i32 88
  %26 = ptrtoint ptr %arrayidx13.4.5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv12.4.5, ptr %arrayidx13.4.5, align 1
  %conv12.4.640 = xor i32 %conv12.2.131, %xor.4
  %conv12.4.6 = trunc i32 %conv12.4.640 to i8
  %arrayidx13.4.6 = getelementptr i8, ptr %table, i32 104
  %27 = ptrtoint ptr %arrayidx13.4.6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv12.4.6, ptr %arrayidx13.4.6, align 1
  %conv12.4.741 = xor i32 %conv12.3.334, %xor.4
  %conv12.4.7 = trunc i32 %conv12.4.741 to i8
  %arrayidx13.4.7 = getelementptr i8, ptr %table, i32 120
  %28 = ptrtoint ptr %arrayidx13.4.7 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv12.4.7, ptr %arrayidx13.4.7, align 1
  %conv12.4.8 = xor i8 %20, %polynomial
  %arrayidx13.4.8 = getelementptr i8, ptr %table, i32 136
  %29 = ptrtoint ptr %arrayidx13.4.8 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv12.4.8, ptr %arrayidx13.4.8, align 1
  %conv12.4.9 = xor i8 %conv12.3.4, %20
  %arrayidx13.4.9 = getelementptr i8, ptr %table, i32 152
  %30 = ptrtoint ptr %arrayidx13.4.9 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv12.4.9, ptr %arrayidx13.4.9, align 1
  %conv12.4.10 = xor i8 %conv12.2.2, %20
  %arrayidx13.4.10 = getelementptr i8, ptr %table, i32 168
  %31 = ptrtoint ptr %arrayidx13.4.10 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv12.4.10, ptr %arrayidx13.4.10, align 1
  %conv12.4.11 = xor i8 %conv12.3.5, %20
  %arrayidx13.4.11 = getelementptr i8, ptr %table, i32 184
  %32 = ptrtoint ptr %arrayidx13.4.11 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv12.4.11, ptr %arrayidx13.4.11, align 1
  %conv12.4.12 = xor i8 %conv12.1.1, %20
  %arrayidx13.4.12 = getelementptr i8, ptr %table, i32 200
  %33 = ptrtoint ptr %arrayidx13.4.12 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv12.4.12, ptr %arrayidx13.4.12, align 1
  %conv12.4.13 = xor i8 %conv12.3.6, %20
  %arrayidx13.4.13 = getelementptr i8, ptr %table, i32 216
  %34 = ptrtoint ptr %arrayidx13.4.13 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv12.4.13, ptr %arrayidx13.4.13, align 1
  %conv12.4.14 = xor i8 %conv12.2.3, %20
  %arrayidx13.4.14 = getelementptr i8, ptr %table, i32 232
  %35 = ptrtoint ptr %arrayidx13.4.14 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv12.4.14, ptr %arrayidx13.4.14, align 1
  %conv12.4.15 = xor i8 %conv12.3.7, %20
  %arrayidx13.4.15 = getelementptr i8, ptr %table, i32 248
  %36 = ptrtoint ptr %arrayidx13.4.15 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv12.4.15, ptr %arrayidx13.4.15, align 1
  %conv.5 = lshr i32 %xor.4, 1
  %37 = and i32 %conv.5, 127
  %and.5 = and i32 %xor.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool2.not.5 = icmp eq i32 %and.5, 0
  %spec.select.5 = select i1 %tobool2.not.5, i32 0, i32 %conv3
  %xor.5 = xor i32 %spec.select.5, %37
  %38 = trunc i32 %xor.5 to i8
  br label %for.body7.5

for.body7.5:                                      ; preds = %for.body7.5.for.body7.5_crit_edge, %entry
  %j.028.5 = phi i32 [ 0, %entry ], [ %add14.5, %for.body7.5.for.body7.5_crit_edge ]
  %arrayidx8.5 = getelementptr i8, ptr %table, i32 %j.028.5
  %39 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx8.5, align 1
  %conv12.5 = xor i8 %40, %38
  %add.5 = or i32 %j.028.5, 4
  %arrayidx13.5 = getelementptr i8, ptr %table, i32 %add.5
  %41 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv12.5, ptr %arrayidx13.5, align 1
  %add14.5 = add nuw nsw i32 %j.028.5, 8
  %cmp.5 = icmp ult i32 %j.028.5, 248
  br i1 %cmp.5, label %for.body7.5.for.body7.5_crit_edge, label %for.inc15.5

for.body7.5.for.body7.5_crit_edge:                ; preds = %for.body7.5
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body7.5

for.inc15.5:                                      ; preds = %for.body7.5
  %conv.6 = lshr i32 %xor.5, 1
  %and.6 = and i32 %xor.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool2.not.6 = icmp eq i32 %and.6, 0
  %spec.select.6 = select i1 %tobool2.not.6, i32 0, i32 %conv3
  %xor.6 = xor i32 %spec.select.6, %conv.6
  %42 = trunc i32 %xor.6 to i8
  br label %for.body7.6

for.body7.6:                                      ; preds = %for.body7.6.for.body7.6_crit_edge, %for.inc15.5
  %j.028.6 = phi i32 [ 0, %for.inc15.5 ], [ %add14.6, %for.body7.6.for.body7.6_crit_edge ]
  %arrayidx8.6 = getelementptr i8, ptr %table, i32 %j.028.6
  %43 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx8.6, align 1
  %conv12.6 = xor i8 %44, %42
  %add.6 = or i32 %j.028.6, 2
  %arrayidx13.6 = getelementptr i8, ptr %table, i32 %add.6
  %45 = ptrtoint ptr %arrayidx13.6 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv12.6, ptr %arrayidx13.6, align 1
  %add14.6 = add nuw nsw i32 %j.028.6, 4
  %cmp.6 = icmp ult i32 %j.028.6, 252
  br i1 %cmp.6, label %for.body7.6.for.body7.6_crit_edge, label %for.inc15.6

for.body7.6.for.body7.6_crit_edge:                ; preds = %for.body7.6
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body7.6

for.inc15.6:                                      ; preds = %for.body7.6
  %conv.7 = lshr i32 %xor.6, 1
  %46 = and i32 %conv.7, 127
  %and.7 = and i32 %xor.6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool2.not.7 = icmp eq i32 %and.7, 0
  %spec.select.7 = select i1 %tobool2.not.7, i32 0, i32 %conv3
  %xor.7 = xor i32 %spec.select.7, %46
  %47 = trunc i32 %xor.7 to i8
  br label %for.body7.7

for.body7.7:                                      ; preds = %for.body7.7.for.body7.7_crit_edge, %for.inc15.6
  %j.028.7 = phi i32 [ 0, %for.inc15.6 ], [ %add14.7, %for.body7.7.for.body7.7_crit_edge ]
  %arrayidx8.7 = getelementptr i8, ptr %table, i32 %j.028.7
  %48 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx8.7, align 1
  %conv12.7 = xor i8 %49, %47
  %add.7 = or i32 %j.028.7, 1
  %arrayidx13.7 = getelementptr i8, ptr %table, i32 %add.7
  %50 = ptrtoint ptr %arrayidx13.7 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv12.7, ptr %arrayidx13.7, align 1
  %add14.7 = add nuw nsw i32 %j.028.7, 2
  %cmp.7 = icmp ult i32 %j.028.7, 254
  br i1 %cmp.7, label %for.body7.7.for.body7.7_crit_edge, label %for.inc15.7

for.body7.7.for.body7.7_crit_edge:                ; preds = %for.body7.7
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body7.7

for.inc15.7:                                      ; preds = %for.body7.7
  call void @__sanitizer_cov_trace_pc() #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @crc8(ptr nocapture noundef readonly %table, ptr nocapture noundef readonly %pdata, i32 noundef %nbytes, i8 noundef zeroext %crc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %cmp.not4 = icmp eq i32 %nbytes, 0
  br i1 %cmp.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %crc.addr.07 = phi i8 [ %3, %while.body.while.body_crit_edge ], [ %crc, %entry.while.body_crit_edge ]
  %nbytes.addr.06 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %nbytes, %entry.while.body_crit_edge ]
  %pdata.addr.05 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %pdata, %entry.while.body_crit_edge ]
  %dec = add i32 %nbytes.addr.06, -1
  %incdec.ptr = getelementptr i8, ptr %pdata.addr.05, i32 1
  %0 = ptrtoint ptr %pdata.addr.05 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pdata.addr.05, align 1
  %xor3 = xor i8 %1, %crc.addr.07
  %xor = zext i8 %xor3 to i32
  %arrayidx = getelementptr i8, ptr %table, i32 %xor
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %crc.addr.0.lcssa = phi i8 [ %crc, %entry.while.end_crit_edge ], [ %3, %while.body.while.end_crit_edge ]
  ret i8 %crc.addr.0.lcssa
}

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind uwtable(sync) }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_crc8_populate_msb, !1, !"__ksymtab_crc8_populate_msb", i1 false, i1 false}
!1 = !{!"../lib/crc8.c", i32 43, i32 1}
!2 = !{ptr @__ksymtab_crc8_populate_lsb, !3, !"__ksymtab_crc8_populate_lsb", i1 false, i1 false}
!3 = !{!"../lib/crc8.c", i32 64, i32 1}
!4 = !{ptr @__ksymtab_crc8, !5, !"__ksymtab_crc8", i1 false, i1 false}
!5 = !{!"../lib/crc8.c", i32 82, i32 1}
!6 = !{ptr @__UNIQUE_ID_description106, !7, !"__UNIQUE_ID_description106", i1 false, i1 false}
!7 = !{!"../lib/crc8.c", i32 84, i32 1}
!8 = !{ptr @__UNIQUE_ID_author107, !9, !"__UNIQUE_ID_author107", i1 false, i1 false}
!9 = !{!"../lib/crc8.c", i32 85, i32 1}
!10 = !{ptr @__UNIQUE_ID_file108, !11, !"__UNIQUE_ID_file108", i1 false, i1 false}
!11 = !{!"../lib/crc8.c", i32 86, i32 1}
!12 = !{ptr @__UNIQUE_ID_license109, !11, !"__UNIQUE_ID_license109", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
