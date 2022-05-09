; ModuleID = '/llk/IR_all_yes/net/ceph/ceph_hash.c_pt.bc'
source_filename = "../net/ceph/ceph_hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ceph_str_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_str_hash\09\09\09\09"
module asm "\09.long\09__crc_ceph_str_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_str_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_str_hash\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_str_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_str_hash_name\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_str_hash_name\09\09\09\09"
module asm "\09.long\09__crc_ceph_str_hash_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_str_hash_name:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_str_hash_name\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_str_hash_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_ceph_str_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_str_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_str_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_str_hash to i32), ptr @__kstrtab_ceph_str_hash, ptr @__kstrtabns_ceph_str_hash }, section "___ksymtab+ceph_str_hash", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"linux\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rjenkins\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_str_hash_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_str_hash_name = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_str_hash_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_str_hash_name to i32), ptr @__kstrtab_ceph_str_hash_name, ptr @__kstrtabns_ceph_str_hash_name }, section "___ksymtab+ceph_str_hash_name", align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 124, i32 10 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 126, i32 10 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [24 x i8] c"../net/ceph/ceph_hash.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 128, i32 10 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_ceph_str_hash, ptr @__ksymtab_ceph_str_hash_name, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_str_hash_rjenkins(ptr noundef readonly %str, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %length)
  %cmp333 = icmp ugt i32 %length, 11
  br i1 %cmp333, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %len.0338 = phi i32 [ %sub75, %while.body.while.body_crit_edge ], [ %length, %entry.while.body_crit_edge ]
  %c.0337 = phi i32 [ %xor74, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %b.0336 = phi i32 [ %xor70, %while.body.while.body_crit_edge ], [ -1640531527, %entry.while.body_crit_edge ]
  %a.0335 = phi i32 [ %xor66, %while.body.while.body_crit_edge ], [ -1640531527, %entry.while.body_crit_edge ]
  %k.0334 = phi ptr [ %add.ptr, %while.body.while.body_crit_edge ], [ %str, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %k.0334 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %k.0334, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %k.0334, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %add = or i32 %shl, %conv
  %arrayidx3 = getelementptr i8, ptr %k.0334, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %add6 = or i32 %add, %shl5
  %arrayidx7 = getelementptr i8, ptr %k.0334, i32 3
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %add10 = or i32 %add6, %shl9
  %arrayidx12 = getelementptr i8, ptr %k.0334, i32 4
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %9 to i32
  %arrayidx14 = getelementptr i8, ptr %k.0334, i32 5
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %11 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %add17 = or i32 %shl16, %conv13
  %arrayidx18 = getelementptr i8, ptr %k.0334, i32 6
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %13 to i32
  %shl20 = shl nuw nsw i32 %conv19, 16
  %add21 = or i32 %add17, %shl20
  %arrayidx22 = getelementptr i8, ptr %k.0334, i32 7
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %15 to i32
  %shl24 = shl nuw i32 %conv23, 24
  %add25 = or i32 %add21, %shl24
  %add26 = add i32 %add25, %b.0336
  %arrayidx27 = getelementptr i8, ptr %k.0334, i32 8
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %17 to i32
  %arrayidx29 = getelementptr i8, ptr %k.0334, i32 9
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %19 to i32
  %shl31 = shl nuw nsw i32 %conv30, 8
  %add32 = or i32 %shl31, %conv28
  %arrayidx33 = getelementptr i8, ptr %k.0334, i32 10
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %21 to i32
  %shl35 = shl nuw nsw i32 %conv34, 16
  %add36 = or i32 %add32, %shl35
  %arrayidx37 = getelementptr i8, ptr %k.0334, i32 11
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %23 to i32
  %shl39 = shl nuw i32 %conv38, 24
  %add40 = or i32 %add36, %shl39
  %add41 = add i32 %add40, %c.0337
  %.neg324 = add i32 %add10, %a.0335
  %24 = add i32 %add26, %add41
  %sub42 = sub i32 %.neg324, %24
  %shr = lshr i32 %add41, 13
  %xor = xor i32 %sub42, %shr
  %25 = add i32 %add41, %xor
  %sub44 = sub i32 %add26, %25
  %shl45 = shl i32 %xor, 8
  %xor46 = xor i32 %sub44, %shl45
  %26 = add i32 %xor, %xor46
  %sub48 = sub i32 %add41, %26
  %shr49 = lshr i32 %xor46, 13
  %xor50 = xor i32 %sub48, %shr49
  %27 = add i32 %xor46, %xor50
  %sub52 = sub i32 %xor, %27
  %shr53 = lshr i32 %xor50, 12
  %xor54 = xor i32 %sub52, %shr53
  %28 = add i32 %xor50, %xor54
  %sub56 = sub i32 %xor46, %28
  %shl57 = shl i32 %xor54, 16
  %xor58 = xor i32 %sub56, %shl57
  %29 = add i32 %xor54, %xor58
  %sub60 = sub i32 %xor50, %29
  %shr61 = lshr i32 %xor58, 5
  %xor62 = xor i32 %sub60, %shr61
  %30 = add i32 %xor58, %xor62
  %sub64 = sub i32 %xor54, %30
  %shr65 = lshr i32 %xor62, 3
  %xor66 = xor i32 %sub64, %shr65
  %31 = add i32 %xor62, %xor66
  %sub68 = sub i32 %xor58, %31
  %shl69 = shl i32 %xor66, 10
  %xor70 = xor i32 %sub68, %shl69
  %32 = add i32 %xor66, %xor70
  %sub72 = sub i32 %xor62, %32
  %shr73 = lshr i32 %xor70, 15
  %xor74 = xor i32 %sub72, %shr73
  %add.ptr = getelementptr i8, ptr %k.0334, i32 12
  %sub75 = add i32 %len.0338, -12
  %cmp = icmp ugt i32 %sub75, 11
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %k.0.lcssa = phi ptr [ %str, %entry.while.end_crit_edge ], [ %add.ptr, %while.body.while.end_crit_edge ]
  %a.0.lcssa = phi i32 [ -1640531527, %entry.while.end_crit_edge ], [ %xor66, %while.body.while.end_crit_edge ]
  %b.0.lcssa = phi i32 [ -1640531527, %entry.while.end_crit_edge ], [ %xor70, %while.body.while.end_crit_edge ]
  %c.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %xor74, %while.body.while.end_crit_edge ]
  %len.0.lcssa = phi i32 [ %length, %entry.while.end_crit_edge ], [ %sub75, %while.body.while.end_crit_edge ]
  %add76 = add i32 %c.0.lcssa, %length
  %33 = zext i32 %len.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len.0.lcssa, label %while.end.do.body129_crit_edge [
    i32 11, label %sw.bb
    i32 10, label %while.end.sw.bb81_crit_edge
    i32 9, label %while.end.sw.bb86_crit_edge
    i32 8, label %while.end.sw.bb91_crit_edge
    i32 7, label %while.end.sw.bb96_crit_edge
    i32 6, label %while.end.sw.bb101_crit_edge
    i32 5, label %while.end.sw.bb106_crit_edge
    i32 4, label %while.end.sw.bb110_crit_edge
    i32 3, label %while.end.sw.bb115_crit_edge
    i32 2, label %while.end.sw.bb120_crit_edge
    i32 1, label %while.end.sw.bb125_crit_edge
  ]

while.end.sw.bb125_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb125

while.end.sw.bb120_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb120

while.end.sw.bb115_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb115

while.end.sw.bb110_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb110

while.end.sw.bb106_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb106

while.end.sw.bb101_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb101

while.end.sw.bb96_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb96

while.end.sw.bb91_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb91

while.end.sw.bb86_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb86

while.end.sw.bb81_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb81

while.end.do.body129_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body129

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx77 = getelementptr i8, ptr %k.0.lcssa, i32 10
  %34 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %35 to i32
  %shl79 = shl nuw i32 %conv78, 24
  %add80 = add i32 %shl79, %add76
  br label %sw.bb81

sw.bb81:                                          ; preds = %sw.bb, %while.end.sw.bb81_crit_edge
  %c.1 = phi i32 [ %add76, %while.end.sw.bb81_crit_edge ], [ %add80, %sw.bb ]
  %arrayidx82 = getelementptr i8, ptr %k.0.lcssa, i32 9
  %36 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %37 to i32
  %shl84 = shl nuw nsw i32 %conv83, 16
  %add85 = add i32 %shl84, %c.1
  br label %sw.bb86

sw.bb86:                                          ; preds = %sw.bb81, %while.end.sw.bb86_crit_edge
  %c.2 = phi i32 [ %add76, %while.end.sw.bb86_crit_edge ], [ %add85, %sw.bb81 ]
  %arrayidx87 = getelementptr i8, ptr %k.0.lcssa, i32 8
  %38 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %39 to i32
  %shl89 = shl nuw nsw i32 %conv88, 8
  %add90 = add i32 %shl89, %c.2
  br label %sw.bb91

sw.bb91:                                          ; preds = %sw.bb86, %while.end.sw.bb91_crit_edge
  %c.3 = phi i32 [ %add76, %while.end.sw.bb91_crit_edge ], [ %add90, %sw.bb86 ]
  %arrayidx92 = getelementptr i8, ptr %k.0.lcssa, i32 7
  %40 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %41 to i32
  %shl94 = shl nuw i32 %conv93, 24
  %add95 = add i32 %shl94, %b.0.lcssa
  br label %sw.bb96

sw.bb96:                                          ; preds = %sw.bb91, %while.end.sw.bb96_crit_edge
  %b.1 = phi i32 [ %b.0.lcssa, %while.end.sw.bb96_crit_edge ], [ %add95, %sw.bb91 ]
  %c.4 = phi i32 [ %add76, %while.end.sw.bb96_crit_edge ], [ %c.3, %sw.bb91 ]
  %arrayidx97 = getelementptr i8, ptr %k.0.lcssa, i32 6
  %42 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %43 to i32
  %shl99 = shl nuw nsw i32 %conv98, 16
  %add100 = add i32 %shl99, %b.1
  br label %sw.bb101

sw.bb101:                                         ; preds = %sw.bb96, %while.end.sw.bb101_crit_edge
  %b.2 = phi i32 [ %b.0.lcssa, %while.end.sw.bb101_crit_edge ], [ %add100, %sw.bb96 ]
  %c.5 = phi i32 [ %add76, %while.end.sw.bb101_crit_edge ], [ %c.4, %sw.bb96 ]
  %arrayidx102 = getelementptr i8, ptr %k.0.lcssa, i32 5
  %44 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %45 to i32
  %shl104 = shl nuw nsw i32 %conv103, 8
  %add105 = add i32 %shl104, %b.2
  br label %sw.bb106

sw.bb106:                                         ; preds = %sw.bb101, %while.end.sw.bb106_crit_edge
  %b.3 = phi i32 [ %b.0.lcssa, %while.end.sw.bb106_crit_edge ], [ %add105, %sw.bb101 ]
  %c.6 = phi i32 [ %add76, %while.end.sw.bb106_crit_edge ], [ %c.5, %sw.bb101 ]
  %arrayidx107 = getelementptr i8, ptr %k.0.lcssa, i32 4
  %46 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %47 to i32
  %add109 = add i32 %b.3, %conv108
  br label %sw.bb110

sw.bb110:                                         ; preds = %sw.bb106, %while.end.sw.bb110_crit_edge
  %b.4 = phi i32 [ %b.0.lcssa, %while.end.sw.bb110_crit_edge ], [ %add109, %sw.bb106 ]
  %c.7 = phi i32 [ %add76, %while.end.sw.bb110_crit_edge ], [ %c.6, %sw.bb106 ]
  %arrayidx111 = getelementptr i8, ptr %k.0.lcssa, i32 3
  %48 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %49 to i32
  %shl113 = shl nuw i32 %conv112, 24
  %add114 = add i32 %shl113, %a.0.lcssa
  br label %sw.bb115

sw.bb115:                                         ; preds = %sw.bb110, %while.end.sw.bb115_crit_edge
  %a.1 = phi i32 [ %a.0.lcssa, %while.end.sw.bb115_crit_edge ], [ %add114, %sw.bb110 ]
  %b.5 = phi i32 [ %b.0.lcssa, %while.end.sw.bb115_crit_edge ], [ %b.4, %sw.bb110 ]
  %c.8 = phi i32 [ %add76, %while.end.sw.bb115_crit_edge ], [ %c.7, %sw.bb110 ]
  %arrayidx116 = getelementptr i8, ptr %k.0.lcssa, i32 2
  %50 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %51 to i32
  %shl118 = shl nuw nsw i32 %conv117, 16
  %add119 = add i32 %shl118, %a.1
  br label %sw.bb120

sw.bb120:                                         ; preds = %sw.bb115, %while.end.sw.bb120_crit_edge
  %a.2 = phi i32 [ %a.0.lcssa, %while.end.sw.bb120_crit_edge ], [ %add119, %sw.bb115 ]
  %b.6 = phi i32 [ %b.0.lcssa, %while.end.sw.bb120_crit_edge ], [ %b.5, %sw.bb115 ]
  %c.9 = phi i32 [ %add76, %while.end.sw.bb120_crit_edge ], [ %c.8, %sw.bb115 ]
  %arrayidx121 = getelementptr i8, ptr %k.0.lcssa, i32 1
  %52 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %53 to i32
  %shl123 = shl nuw nsw i32 %conv122, 8
  %add124 = add i32 %shl123, %a.2
  br label %sw.bb125

sw.bb125:                                         ; preds = %sw.bb120, %while.end.sw.bb125_crit_edge
  %a.3 = phi i32 [ %a.0.lcssa, %while.end.sw.bb125_crit_edge ], [ %add124, %sw.bb120 ]
  %b.7 = phi i32 [ %b.0.lcssa, %while.end.sw.bb125_crit_edge ], [ %b.6, %sw.bb120 ]
  %c.10 = phi i32 [ %add76, %while.end.sw.bb125_crit_edge ], [ %c.9, %sw.bb120 ]
  %54 = ptrtoint ptr %k.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %k.0.lcssa, align 1
  %conv127 = zext i8 %55 to i32
  %add128 = add i32 %a.3, %conv127
  br label %do.body129

do.body129:                                       ; preds = %sw.bb125, %while.end.do.body129_crit_edge
  %a.4 = phi i32 [ %a.0.lcssa, %while.end.do.body129_crit_edge ], [ %add128, %sw.bb125 ]
  %b.8 = phi i32 [ %b.0.lcssa, %while.end.do.body129_crit_edge ], [ %b.7, %sw.bb125 ]
  %c.11 = phi i32 [ %add76, %while.end.do.body129_crit_edge ], [ %c.10, %sw.bb125 ]
  %56 = add i32 %b.8, %c.11
  %sub131 = sub i32 %a.4, %56
  %shr132 = lshr i32 %c.11, 13
  %xor133 = xor i32 %sub131, %shr132
  %57 = add i32 %c.11, %xor133
  %sub135 = sub i32 %b.8, %57
  %shl136 = shl i32 %xor133, 8
  %xor137 = xor i32 %sub135, %shl136
  %58 = add i32 %xor133, %xor137
  %sub139 = sub i32 %c.11, %58
  %shr140 = lshr i32 %xor137, 13
  %xor141 = xor i32 %sub139, %shr140
  %59 = add i32 %xor137, %xor141
  %sub143 = sub i32 %xor133, %59
  %shr144 = lshr i32 %xor141, 12
  %xor145 = xor i32 %sub143, %shr144
  %60 = add i32 %xor141, %xor145
  %sub147 = sub i32 %xor137, %60
  %shl148 = shl i32 %xor145, 16
  %xor149 = xor i32 %sub147, %shl148
  %61 = add i32 %xor145, %xor149
  %sub151 = sub i32 %xor141, %61
  %shr152 = lshr i32 %xor149, 5
  %xor153 = xor i32 %sub151, %shr152
  %62 = add i32 %xor149, %xor153
  %sub155 = sub i32 %xor145, %62
  %shr156 = lshr i32 %xor153, 3
  %xor157 = xor i32 %sub155, %shr156
  %63 = add i32 %xor153, %xor157
  %sub159 = sub i32 %xor149, %63
  %shl160 = shl i32 %xor157, 10
  %xor161 = xor i32 %sub159, %shl160
  %64 = add i32 %xor157, %xor161
  %sub163 = sub i32 %xor153, %64
  %shr164 = lshr i32 %xor161, 15
  %xor165 = xor i32 %sub163, %shr164
  ret i32 %xor165
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_str_hash_linux(ptr nocapture noundef readonly %str, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool.not5 = icmp eq i32 %length, 0
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %hash.08 = phi i32 [ %mul, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %length.addr.07 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %length, %entry.while.body_crit_edge ]
  %str.addr.06 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %str, %entry.while.body_crit_edge ]
  %dec = add i32 %length.addr.07, -1
  %incdec.ptr = getelementptr i8, ptr %str.addr.06, i32 1
  %0 = ptrtoint ptr %str.addr.06 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str.addr.06, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %add = add i32 %shl, %hash.08
  %2 = lshr i32 %conv, 4
  %add2 = add i32 %add, %2
  %mul = mul i32 %add2, 11
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %hash.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %mul, %while.body.while.end_crit_edge ]
  ret i32 %hash.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_str_hash(i32 noundef %type, ptr noundef readonly %s, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not5.i = icmp eq i32 %len, 0
  br i1 %tobool.not5.i, label %sw.bb.return_crit_edge, label %sw.bb.while.body.i_crit_edge

sw.bb.while.body.i_crit_edge:                     ; preds = %sw.bb
  br label %while.body.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %sw.bb.while.body.i_crit_edge
  %hash.08.i = phi i32 [ %mul.i, %while.body.i.while.body.i_crit_edge ], [ 0, %sw.bb.while.body.i_crit_edge ]
  %length.addr.07.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %len, %sw.bb.while.body.i_crit_edge ]
  %str.addr.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %s, %sw.bb.while.body.i_crit_edge ]
  %dec.i = add i32 %length.addr.07.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %str.addr.06.i, i32 1
  %1 = ptrtoint ptr %str.addr.06.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %str.addr.06.i, align 1
  %conv.i = zext i8 %2 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 4
  %add.i = add i32 %shl.i, %hash.08.i
  %3 = lshr i32 %conv.i, 4
  %add2.i = add i32 %add.i, %3
  %mul.i = mul i32 %add2.i, 11
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.return_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i

while.body.i.return_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call2 = tail call i32 @ceph_str_hash_rjenkins(ptr noundef %s, i32 noundef %len)
  br label %return

return:                                           ; preds = %sw.bb1, %while.body.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ -1, %entry.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ %mul.i, %while.body.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ceph_str_hash_name(i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %switch.selectcmp = icmp eq i32 %type, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.1, ptr @.str.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %switch.selectcmp2 = icmp eq i32 %type, 1
  %switch.select3 = select i1 %switch.selectcmp2, ptr @.str, ptr %switch.select
  ret ptr %switch.select3
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_ceph_str_hash, !1, !"__ksymtab_ceph_str_hash", i1 false, i1 false}
!1 = !{!"../net/ceph/ceph_hash.c", i32 118, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ceph/ceph_hash.c", i32 124, i32 10}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ceph/ceph_hash.c", i32 126, i32 10}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ceph/ceph_hash.c", i32 128, i32 10}
!8 = !{ptr @__ksymtab_ceph_str_hash_name, !9, !"__ksymtab_ceph_str_hash_name", i1 false, i1 false}
!9 = !{!"../net/ceph/ceph_hash.c", i32 131, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
