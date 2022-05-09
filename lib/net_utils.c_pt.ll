; ModuleID = '/llk/IR_all_yes/lib/net_utils.c_pt.bc'
source_filename = "../lib/net_utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mac_pton\22, \22a\22\09"
module asm "\09.weak\09__crc_mac_pton\09\09\09\09"
module asm "\09.long\09__crc_mac_pton\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mac_pton:\09\09\09\09\09"
module asm "\09.asciz \09\22mac_pton\22\09\09\09\09\09"
module asm "__kstrtabns_mac_pton:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_mac_pton = external dso_local constant [0 x i8], align 1
@__kstrtabns_mac_pton = external dso_local constant [0 x i8], align 1
@__ksymtab_mac_pton = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mac_pton to i32), ptr @__kstrtab_mac_pton, ptr @__kstrtabns_mac_pton }, section "___ksymtab+mac_pton", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mac_pton], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mac_pton(ptr nocapture noundef readonly %s, ptr nocapture noundef writeonly %mac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 @strlen(ptr noundef %s) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call)
  %cmp = icmp ult i32 %call, 17
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s, align 1
  %conv = zext i8 %1 to i32
  %arrayidx2 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %4 = and i8 %3, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp4.not = icmp eq i8 %4, 0
  br i1 %cmp4.not, label %for.body.preheader.cleanup_crit_edge, label %lor.lhs.false

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body.preheader
  %arrayidx7 = getelementptr i8, ptr %s, i32 1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  %arrayidx9 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv8
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9, align 1
  %9 = and i8 %8, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp12.not = icmp eq i8 %9, 0
  br i1 %cmp12.not, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx20 = getelementptr i8, ptr %s, i32 2
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %11)
  %cmp22.not = icmp eq i8 %11, 58
  br i1 %cmp22.not, label %for.inc, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true
  %arrayidx.1 = getelementptr i8, ptr %s, i32 3
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %13 to i32
  %arrayidx2.1 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.1
  %14 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.1, align 1
  %16 = and i8 %15, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp4.not.1 = icmp eq i8 %16, 0
  br i1 %cmp4.not.1, label %for.inc.cleanup_crit_edge, label %lor.lhs.false.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false.1:                                  ; preds = %for.inc
  %arrayidx7.1 = getelementptr i8, ptr %s, i32 4
  %17 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7.1, align 1
  %conv8.1 = zext i8 %18 to i32
  %arrayidx9.1 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv8.1
  %19 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx9.1, align 1
  %21 = and i8 %20, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp12.not.1 = icmp eq i8 %21, 0
  br i1 %cmp12.not.1, label %lor.lhs.false.1.cleanup_crit_edge, label %land.lhs.true.1

lor.lhs.false.1.cleanup_crit_edge:                ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.1:                                  ; preds = %lor.lhs.false.1
  %arrayidx20.1 = getelementptr i8, ptr %s, i32 5
  %22 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx20.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %23)
  %cmp22.not.1 = icmp eq i8 %23, 58
  br i1 %cmp22.not.1, label %for.inc.1, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true.1
  %arrayidx.2 = getelementptr i8, ptr %s, i32 6
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %25 to i32
  %arrayidx2.2 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.2
  %26 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2.2, align 1
  %28 = and i8 %27, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp4.not.2 = icmp eq i8 %28, 0
  br i1 %cmp4.not.2, label %for.inc.1.cleanup_crit_edge, label %lor.lhs.false.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %arrayidx7.2 = getelementptr i8, ptr %s, i32 7
  %29 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx7.2, align 1
  %conv8.2 = zext i8 %30 to i32
  %arrayidx9.2 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv8.2
  %31 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx9.2, align 1
  %33 = and i8 %32, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp12.not.2 = icmp eq i8 %33, 0
  br i1 %cmp12.not.2, label %lor.lhs.false.2.cleanup_crit_edge, label %land.lhs.true.2

lor.lhs.false.2.cleanup_crit_edge:                ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.2:                                  ; preds = %lor.lhs.false.2
  %arrayidx20.2 = getelementptr i8, ptr %s, i32 8
  %34 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx20.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %35)
  %cmp22.not.2 = icmp eq i8 %35, 58
  br i1 %cmp22.not.2, label %for.inc.2, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true.2
  %arrayidx.3 = getelementptr i8, ptr %s, i32 9
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %37 to i32
  %arrayidx2.3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.3
  %38 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx2.3, align 1
  %40 = and i8 %39, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp4.not.3 = icmp eq i8 %40, 0
  br i1 %cmp4.not.3, label %for.inc.2.cleanup_crit_edge, label %lor.lhs.false.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false.3:                                  ; preds = %for.inc.2
  %arrayidx7.3 = getelementptr i8, ptr %s, i32 10
  %41 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx7.3, align 1
  %conv8.3 = zext i8 %42 to i32
  %arrayidx9.3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv8.3
  %43 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx9.3, align 1
  %45 = and i8 %44, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp12.not.3 = icmp eq i8 %45, 0
  br i1 %cmp12.not.3, label %lor.lhs.false.3.cleanup_crit_edge, label %land.lhs.true.3

lor.lhs.false.3.cleanup_crit_edge:                ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.3:                                  ; preds = %lor.lhs.false.3
  %arrayidx20.3 = getelementptr i8, ptr %s, i32 11
  %46 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx20.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %47)
  %cmp22.not.3 = icmp eq i8 %47, 58
  br i1 %cmp22.not.3, label %for.inc.3, label %land.lhs.true.3.cleanup_crit_edge

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.3:                                        ; preds = %land.lhs.true.3
  %arrayidx.4 = getelementptr i8, ptr %s, i32 12
  %48 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %49 to i32
  %arrayidx2.4 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.4
  %50 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx2.4, align 1
  %52 = and i8 %51, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp4.not.4 = icmp eq i8 %52, 0
  br i1 %cmp4.not.4, label %for.inc.3.cleanup_crit_edge, label %lor.lhs.false.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false.4:                                  ; preds = %for.inc.3
  %arrayidx7.4 = getelementptr i8, ptr %s, i32 13
  %53 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx7.4, align 1
  %conv8.4 = zext i8 %54 to i32
  %arrayidx9.4 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv8.4
  %55 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx9.4, align 1
  %57 = and i8 %56, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp12.not.4 = icmp eq i8 %57, 0
  br i1 %cmp12.not.4, label %lor.lhs.false.4.cleanup_crit_edge, label %land.lhs.true.4

lor.lhs.false.4.cleanup_crit_edge:                ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.4:                                  ; preds = %lor.lhs.false.4
  %arrayidx20.4 = getelementptr i8, ptr %s, i32 14
  %58 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx20.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %59)
  %cmp22.not.4 = icmp eq i8 %59, 58
  br i1 %cmp22.not.4, label %for.inc.4, label %land.lhs.true.4.cleanup_crit_edge

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.4:                                        ; preds = %land.lhs.true.4
  %arrayidx.5 = getelementptr i8, ptr %s, i32 15
  %60 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %61 to i32
  %arrayidx2.5 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.5
  %62 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx2.5, align 1
  %64 = and i8 %63, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp4.not.5 = icmp eq i8 %64, 0
  br i1 %cmp4.not.5, label %for.inc.4.cleanup_crit_edge, label %lor.lhs.false.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false.5:                                  ; preds = %for.inc.4
  %arrayidx7.5 = getelementptr i8, ptr %s, i32 16
  %65 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx7.5, align 1
  %conv8.5 = zext i8 %66 to i32
  %arrayidx9.5 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv8.5
  %67 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx9.5, align 1
  %69 = and i8 %68, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp12.not.5 = icmp eq i8 %69, 0
  br i1 %cmp12.not.5, label %lor.lhs.false.5.cleanup_crit_edge, label %for.inc.5

lor.lhs.false.5.cleanup_crit_edge:                ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.5:                                        ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #4
  %70 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %s, align 1
  %call32 = tail call i32 @hex_to_bin(i8 noundef zeroext %71) #6
  %shl = shl i32 %call32, 4
  %72 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx7, align 1
  %call36 = tail call i32 @hex_to_bin(i8 noundef zeroext %73) #6
  %or = or i32 %call36, %shl
  %conv37 = trunc i32 %or to i8
  %74 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv37, ptr %mac, align 1
  %75 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.1, align 1
  %call32.1 = tail call i32 @hex_to_bin(i8 noundef zeroext %76) #6
  %shl.1 = shl i32 %call32.1, 4
  %77 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx7.1, align 1
  %call36.1 = tail call i32 @hex_to_bin(i8 noundef zeroext %78) #6
  %or.1 = or i32 %call36.1, %shl.1
  %conv37.1 = trunc i32 %or.1 to i8
  %arrayidx38.1 = getelementptr i8, ptr %mac, i32 1
  %79 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv37.1, ptr %arrayidx38.1, align 1
  %80 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.2, align 1
  %call32.2 = tail call i32 @hex_to_bin(i8 noundef zeroext %81) #6
  %shl.2 = shl i32 %call32.2, 4
  %82 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx7.2, align 1
  %call36.2 = tail call i32 @hex_to_bin(i8 noundef zeroext %83) #6
  %or.2 = or i32 %call36.2, %shl.2
  %conv37.2 = trunc i32 %or.2 to i8
  %arrayidx38.2 = getelementptr i8, ptr %mac, i32 2
  %84 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv37.2, ptr %arrayidx38.2, align 1
  %85 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.3, align 1
  %call32.3 = tail call i32 @hex_to_bin(i8 noundef zeroext %86) #6
  %shl.3 = shl i32 %call32.3, 4
  %87 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx7.3, align 1
  %call36.3 = tail call i32 @hex_to_bin(i8 noundef zeroext %88) #6
  %or.3 = or i32 %call36.3, %shl.3
  %conv37.3 = trunc i32 %or.3 to i8
  %arrayidx38.3 = getelementptr i8, ptr %mac, i32 3
  %89 = ptrtoint ptr %arrayidx38.3 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv37.3, ptr %arrayidx38.3, align 1
  %90 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.4, align 1
  %call32.4 = tail call i32 @hex_to_bin(i8 noundef zeroext %91) #6
  %shl.4 = shl i32 %call32.4, 4
  %92 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx7.4, align 1
  %call36.4 = tail call i32 @hex_to_bin(i8 noundef zeroext %93) #6
  %or.4 = or i32 %call36.4, %shl.4
  %conv37.4 = trunc i32 %or.4 to i8
  %arrayidx38.4 = getelementptr i8, ptr %mac, i32 4
  %94 = ptrtoint ptr %arrayidx38.4 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv37.4, ptr %arrayidx38.4, align 1
  %95 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.5, align 1
  %call32.5 = tail call i32 @hex_to_bin(i8 noundef zeroext %96) #6
  %shl.5 = shl i32 %call32.5, 4
  %97 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx7.5, align 1
  %call36.5 = tail call i32 @hex_to_bin(i8 noundef zeroext %98) #6
  %or.5 = or i32 %call36.5, %shl.5
  %conv37.5 = trunc i32 %or.5 to i8
  %arrayidx38.5 = getelementptr i8, ptr %mac, i32 5
  %99 = ptrtoint ptr %arrayidx38.5 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv37.5, ptr %arrayidx38.5, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.inc.5, %lor.lhs.false.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge, %lor.lhs.false.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %lor.lhs.false.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %lor.lhs.false.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %lor.lhs.false.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %for.inc.5 ], [ false, %lor.lhs.false.5.cleanup_crit_edge ], [ false, %for.inc.4.cleanup_crit_edge ], [ false, %land.lhs.true.4.cleanup_crit_edge ], [ false, %lor.lhs.false.4.cleanup_crit_edge ], [ false, %for.inc.3.cleanup_crit_edge ], [ false, %land.lhs.true.3.cleanup_crit_edge ], [ false, %lor.lhs.false.3.cleanup_crit_edge ], [ false, %for.inc.2.cleanup_crit_edge ], [ false, %land.lhs.true.2.cleanup_crit_edge ], [ false, %lor.lhs.false.2.cleanup_crit_edge ], [ false, %for.inc.1.cleanup_crit_edge ], [ false, %land.lhs.true.1.cleanup_crit_edge ], [ false, %lor.lhs.false.1.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %for.body.preheader.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nobuiltin }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{ptr @__ksymtab_mac_pton, !1, !"__ksymtab_mac_pton", i1 false, i1 false}
!1 = !{!"../lib/net_utils.c", i32 27, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
