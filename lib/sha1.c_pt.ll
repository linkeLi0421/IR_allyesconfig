; ModuleID = '/llk/IR_all_yes/lib/sha1.c_pt.bc'
source_filename = "../lib/sha1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sha1_transform\22, \22a\22\09"
module asm "\09.weak\09__crc_sha1_transform\09\09\09\09"
module asm "\09.long\09__crc_sha1_transform\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha1_transform:\09\09\09\09\09"
module asm "\09.asciz \09\22sha1_transform\22\09\09\09\09\09"
module asm "__kstrtabns_sha1_transform:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sha1_init\22, \22a\22\09"
module asm "\09.weak\09__crc_sha1_init\09\09\09\09"
module asm "\09.long\09__crc_sha1_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha1_init:\09\09\09\09\09"
module asm "\09.asciz \09\22sha1_init\22\09\09\09\09\09"
module asm "__kstrtabns_sha1_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_sha1_transform = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha1_transform = external dso_local constant [0 x i8], align 1
@__ksymtab_sha1_transform = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha1_transform to i32), ptr @__kstrtab_sha1_transform, ptr @__kstrtabns_sha1_transform }, section "___ksymtab+sha1_transform", align 4
@__kstrtab_sha1_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha1_init = external dso_local constant [0 x i8], align 1
@__ksymtab_sha1_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha1_init to i32), ptr @__kstrtab_sha1_init, ptr @__kstrtabns_sha1_init }, section "___ksymtab+sha1_init", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_sha1_init, ptr @__ksymtab_sha1_transform], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sha1_transform(ptr nocapture noundef %digest, ptr nocapture noundef readonly %data, ptr nocapture noundef %array) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %digest, align 4
  %arrayidx1 = getelementptr i32, ptr %digest, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %digest, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %digest, i32 3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %digest, i32 4
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %A.0328 = phi i32 [ %1, %entry ], [ %add12, %do.body.do.body_crit_edge ]
  %B.0327 = phi i32 [ %3, %entry ], [ %A.0328, %do.body.do.body_crit_edge ]
  %C.0326 = phi i32 [ %5, %entry ], [ %or.i310, %do.body.do.body_crit_edge ]
  %D.0325 = phi i32 [ %7, %entry ], [ %C.0326, %do.body.do.body_crit_edge ]
  %E.0324 = phi i32 [ %9, %entry ], [ %D.0325, %do.body.do.body_crit_edge ]
  %i.0323 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %add.ptr = getelementptr i32, ptr %data, i32 %i.0323
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr, align 1
  %arrayidx6 = getelementptr i32, ptr %array, i32 %i.0323
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx6, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %or.i = tail call i32 @llvm.fshl.i32(i32 %A.0328, i32 %A.0328, i32 5) #5
  %xor = xor i32 %C.0326, %D.0325
  %and8 = and i32 %xor, %B.0327
  %xor9 = xor i32 %and8, %D.0325
  %add = add i32 %E.0324, 1518500249
  %add10 = add i32 %add, %or.i
  %add11 = add i32 %add10, %xor9
  %add12 = add i32 %add11, %11
  %or.i310 = tail call i32 @llvm.fshl.i32(i32 %B.0327, i32 %B.0327, i32 30) #5
  %inc = add nuw nsw i32 %i.0323, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body58.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

do.body58.preheader:                              ; preds = %do.body
  %arrayidx23 = getelementptr i32, ptr %array, i32 13
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx23, align 4
  %arrayidx26 = getelementptr i32, ptr %array, i32 8
  %15 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx26, align 4
  %xor27 = xor i32 %16, %14
  %arrayidx30 = getelementptr i32, ptr %array, i32 2
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx30, align 4
  %xor31 = xor i32 %xor27, %18
  %19 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %array, align 4
  %xor34 = xor i32 %xor31, %20
  %or.i311 = tail call i32 @llvm.fshl.i32(i32 %xor34, i32 %xor34, i32 1) #5
  %21 = ptrtoint ptr %array to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i311, ptr %array, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %or.i312 = tail call i32 @llvm.fshl.i32(i32 %add12, i32 %add12, i32 5) #5
  %xor43 = xor i32 %or.i310, %C.0326
  %and44 = and i32 %xor43, %A.0328
  %xor45 = xor i32 %and44, %C.0326
  %add42 = add i32 %D.0325, 1518500249
  %add46 = add i32 %add42, %or.i312
  %add47 = add i32 %add46, %xor45
  %add48 = add i32 %add47, %or.i311
  %or.i313 = tail call i32 @llvm.fshl.i32(i32 %A.0328, i32 %A.0328, i32 30) #5
  %arrayidx23.1 = getelementptr i32, ptr %array, i32 14
  %22 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx23.1, align 4
  %arrayidx26.1 = getelementptr i32, ptr %array, i32 9
  %24 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26.1, align 4
  %xor27.1 = xor i32 %25, %23
  %arrayidx30.1 = getelementptr i32, ptr %array, i32 3
  %26 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx30.1, align 4
  %xor31.1 = xor i32 %xor27.1, %27
  %arrayidx33.1 = getelementptr i32, ptr %array, i32 1
  %28 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx33.1, align 4
  %xor34.1 = xor i32 %xor31.1, %29
  %or.i311.1 = tail call i32 @llvm.fshl.i32(i32 %xor34.1, i32 %xor34.1, i32 1) #5
  %30 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i311.1, ptr %arrayidx33.1, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %or.i312.1 = tail call i32 @llvm.fshl.i32(i32 %add48, i32 %add48, i32 5) #5
  %xor43.1 = xor i32 %or.i313, %or.i310
  %and44.1 = and i32 %xor43.1, %add12
  %xor45.1 = xor i32 %and44.1, %or.i310
  %add42.1 = add i32 %C.0326, 1518500249
  %add46.1 = add i32 %add42.1, %or.i312.1
  %add47.1 = add i32 %add46.1, %xor45.1
  %add48.1 = add i32 %add47.1, %or.i311.1
  %or.i313.1 = tail call i32 @llvm.fshl.i32(i32 %add12, i32 %add12, i32 30) #5
  %arrayidx23.2 = getelementptr i32, ptr %array, i32 15
  %31 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx23.2, align 4
  %arrayidx26.2 = getelementptr i32, ptr %array, i32 10
  %33 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx26.2, align 4
  %xor27.2 = xor i32 %34, %32
  %arrayidx30.2 = getelementptr i32, ptr %array, i32 4
  %35 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx30.2, align 4
  %xor31.2 = xor i32 %xor27.2, %36
  %37 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx30, align 4
  %xor34.2 = xor i32 %xor31.2, %38
  %or.i311.2 = tail call i32 @llvm.fshl.i32(i32 %xor34.2, i32 %xor34.2, i32 1) #5
  %39 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i311.2, ptr %arrayidx30, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %or.i312.2 = tail call i32 @llvm.fshl.i32(i32 %add48.1, i32 %add48.1, i32 5) #5
  %xor43.2 = xor i32 %or.i313.1, %or.i313
  %and44.2 = and i32 %xor43.2, %add48
  %xor45.2 = xor i32 %and44.2, %or.i313
  %add42.2 = add i32 %or.i310, 1518500249
  %add46.2 = add i32 %add42.2, %or.i312.2
  %add47.2 = add i32 %add46.2, %xor45.2
  %add48.2 = add i32 %add47.2, %or.i311.2
  %or.i313.2 = tail call i32 @llvm.fshl.i32(i32 %add48, i32 %add48, i32 30) #5
  %40 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %array, align 4
  %arrayidx26.3 = getelementptr i32, ptr %array, i32 11
  %42 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx26.3, align 4
  %xor27.3 = xor i32 %43, %41
  %arrayidx30.3 = getelementptr i32, ptr %array, i32 5
  %44 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx30.3, align 4
  %xor31.3 = xor i32 %xor27.3, %45
  %46 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx30.1, align 4
  %xor34.3 = xor i32 %xor31.3, %47
  %or.i311.3 = tail call i32 @llvm.fshl.i32(i32 %xor34.3, i32 %xor34.3, i32 1) #5
  %48 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i311.3, ptr %arrayidx30.1, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %or.i312.3 = tail call i32 @llvm.fshl.i32(i32 %add48.2, i32 %add48.2, i32 5) #5
  %xor43.3 = xor i32 %or.i313.2, %or.i313.1
  %and44.3 = and i32 %xor43.3, %add48.1
  %xor45.3 = xor i32 %and44.3, %or.i313.1
  %add42.3 = add i32 %or.i313, 1518500249
  %add46.3 = add i32 %add42.3, %or.i312.3
  %add47.3 = add i32 %add46.3, %xor45.3
  %add48.3 = add i32 %add47.3, %or.i311.3
  %or.i313.3 = tail call i32 @llvm.fshl.i32(i32 %add48.1, i32 %add48.1, i32 30) #5
  br label %do.body58

do.body58:                                        ; preds = %do.body58.do.body58_crit_edge, %do.body58.preheader
  %A.2347 = phi i32 [ %add86, %do.body58.do.body58_crit_edge ], [ %add48.3, %do.body58.preheader ]
  %B.2346 = phi i32 [ %A.2347, %do.body58.do.body58_crit_edge ], [ %add48.2, %do.body58.preheader ]
  %C.2345 = phi i32 [ %or.i316, %do.body58.do.body58_crit_edge ], [ %or.i313.3, %do.body58.preheader ]
  %D.2344 = phi i32 [ %C.2345, %do.body58.do.body58_crit_edge ], [ %or.i313.2, %do.body58.preheader ]
  %E.2343 = phi i32 [ %D.2344, %do.body58.do.body58_crit_edge ], [ %or.i313.1, %do.body58.preheader ]
  %i.2342 = phi i32 [ %inc91, %do.body58.do.body58_crit_edge ], [ 20, %do.body58.preheader ]
  %add60 = add nuw nsw i32 %i.2342, 13
  %and61 = and i32 %add60, 15
  %arrayidx62 = getelementptr i32, ptr %array, i32 %and61
  %49 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx62, align 4
  %add63 = add nuw nsw i32 %i.2342, 8
  %and64 = and i32 %add63, 15
  %arrayidx65 = getelementptr i32, ptr %array, i32 %and64
  %51 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx65, align 4
  %xor66 = xor i32 %52, %50
  %add67 = add nuw nsw i32 %i.2342, 2
  %and68 = and i32 %add67, 15
  %arrayidx69 = getelementptr i32, ptr %array, i32 %and68
  %53 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx69, align 4
  %xor70 = xor i32 %xor66, %54
  %and71 = and i32 %i.2342, 15
  %arrayidx72 = getelementptr i32, ptr %array, i32 %and71
  %55 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx72, align 4
  %xor73 = xor i32 %xor70, %56
  %or.i314 = tail call i32 @llvm.fshl.i32(i32 %xor73, i32 %xor73, i32 1) #5
  %57 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or.i314, ptr %arrayidx72, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %or.i315 = tail call i32 @llvm.fshl.i32(i32 %A.2347, i32 %A.2347, i32 5) #5
  %xor82 = xor i32 %C.2345, %D.2344
  %xor83 = xor i32 %xor82, %B.2346
  %add81 = add i32 %E.2343, 1859775393
  %add84 = add i32 %add81, %or.i315
  %add85 = add i32 %add84, %xor83
  %add86 = add i32 %add85, %or.i314
  %or.i316 = tail call i32 @llvm.fshl.i32(i32 %B.2346, i32 %B.2346, i32 30) #5
  %inc91 = add nuw nsw i32 %i.2342, 1
  %exitcond380.not = icmp eq i32 %inc91, 40
  br i1 %exitcond380.not, label %do.body58.do.body96_crit_edge, label %do.body58.do.body58_crit_edge

do.body58.do.body58_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body58

do.body58.do.body96_crit_edge:                    ; preds = %do.body58
  br label %do.body96

do.body96:                                        ; preds = %do.body96.do.body96_crit_edge, %do.body58.do.body96_crit_edge
  %A.3360 = phi i32 [ %add126, %do.body96.do.body96_crit_edge ], [ %add86, %do.body58.do.body96_crit_edge ]
  %B.3359 = phi i32 [ %A.3360, %do.body96.do.body96_crit_edge ], [ %A.2347, %do.body58.do.body96_crit_edge ]
  %C.3358 = phi i32 [ %or.i319, %do.body96.do.body96_crit_edge ], [ %or.i316, %do.body58.do.body96_crit_edge ]
  %D.3357 = phi i32 [ %C.3358, %do.body96.do.body96_crit_edge ], [ %C.2345, %do.body58.do.body96_crit_edge ]
  %E.3356 = phi i32 [ %D.3357, %do.body96.do.body96_crit_edge ], [ %D.2344, %do.body58.do.body96_crit_edge ]
  %i.3355 = phi i32 [ %inc131, %do.body96.do.body96_crit_edge ], [ 40, %do.body58.do.body96_crit_edge ]
  %add98 = add nuw nsw i32 %i.3355, 13
  %and99 = and i32 %add98, 15
  %arrayidx100 = getelementptr i32, ptr %array, i32 %and99
  %58 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx100, align 4
  %add101 = add nuw nsw i32 %i.3355, 8
  %and102 = and i32 %add101, 15
  %arrayidx103 = getelementptr i32, ptr %array, i32 %and102
  %60 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx103, align 4
  %xor104 = xor i32 %61, %59
  %add105 = add nuw nsw i32 %i.3355, 2
  %and106 = and i32 %add105, 15
  %arrayidx107 = getelementptr i32, ptr %array, i32 %and106
  %62 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx107, align 4
  %xor108 = xor i32 %xor104, %63
  %and109 = and i32 %i.3355, 15
  %arrayidx110 = getelementptr i32, ptr %array, i32 %and109
  %64 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx110, align 4
  %xor111 = xor i32 %xor108, %65
  %or.i317 = tail call i32 @llvm.fshl.i32(i32 %xor111, i32 %xor111, i32 1) #5
  %66 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.i317, ptr %arrayidx110, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %or.i318 = tail call i32 @llvm.fshl.i32(i32 %A.3360, i32 %A.3360, i32 5) #5
  %and120 = and i32 %B.3359, %C.3358
  %xor121 = xor i32 %B.3359, %C.3358
  %and122 = and i32 %xor121, %D.3357
  %add119 = add i32 %E.3356, -1894007588
  %add123 = add i32 %add119, %and120
  %add124 = add i32 %add123, %and122
  %add125 = add i32 %add124, %or.i318
  %add126 = add i32 %add125, %or.i317
  %or.i319 = tail call i32 @llvm.fshl.i32(i32 %B.3359, i32 %B.3359, i32 30) #5
  %inc131 = add nuw nsw i32 %i.3355, 1
  %exitcond381.not = icmp eq i32 %inc131, 60
  br i1 %exitcond381.not, label %do.body96.do.body136_crit_edge, label %do.body96.do.body96_crit_edge

do.body96.do.body96_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body96

do.body96.do.body136_crit_edge:                   ; preds = %do.body96
  br label %do.body136

do.body136:                                       ; preds = %do.body136.do.body136_crit_edge, %do.body96.do.body136_crit_edge
  %A.4373 = phi i32 [ %add164, %do.body136.do.body136_crit_edge ], [ %add126, %do.body96.do.body136_crit_edge ]
  %B.4372 = phi i32 [ %A.4373, %do.body136.do.body136_crit_edge ], [ %A.3360, %do.body96.do.body136_crit_edge ]
  %C.4371 = phi i32 [ %or.i322, %do.body136.do.body136_crit_edge ], [ %or.i319, %do.body96.do.body136_crit_edge ]
  %D.4370 = phi i32 [ %C.4371, %do.body136.do.body136_crit_edge ], [ %C.3358, %do.body96.do.body136_crit_edge ]
  %E.4369 = phi i32 [ %D.4370, %do.body136.do.body136_crit_edge ], [ %D.3357, %do.body96.do.body136_crit_edge ]
  %i.4368 = phi i32 [ %inc169, %do.body136.do.body136_crit_edge ], [ 60, %do.body96.do.body136_crit_edge ]
  %add138 = add nuw nsw i32 %i.4368, 13
  %and139 = and i32 %add138, 15
  %arrayidx140 = getelementptr i32, ptr %array, i32 %and139
  %67 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx140, align 4
  %add141 = add nuw nsw i32 %i.4368, 8
  %and142 = and i32 %add141, 15
  %arrayidx143 = getelementptr i32, ptr %array, i32 %and142
  %69 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx143, align 4
  %xor144 = xor i32 %70, %68
  %add145 = add nuw nsw i32 %i.4368, 2
  %and146 = and i32 %add145, 15
  %arrayidx147 = getelementptr i32, ptr %array, i32 %and146
  %71 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx147, align 4
  %xor148 = xor i32 %xor144, %72
  %and149 = and i32 %i.4368, 15
  %arrayidx150 = getelementptr i32, ptr %array, i32 %and149
  %73 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx150, align 4
  %xor151 = xor i32 %xor148, %74
  %or.i320 = tail call i32 @llvm.fshl.i32(i32 %xor151, i32 %xor151, i32 1) #5
  %75 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or.i320, ptr %arrayidx150, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %or.i321 = tail call i32 @llvm.fshl.i32(i32 %A.4373, i32 %A.4373, i32 5) #5
  %xor160 = xor i32 %C.4371, %D.4370
  %xor161 = xor i32 %xor160, %B.4372
  %add159 = add i32 %E.4369, -899497514
  %add162 = add i32 %add159, %or.i321
  %add163 = add i32 %add162, %xor161
  %add164 = add i32 %add163, %or.i320
  %or.i322 = tail call i32 @llvm.fshl.i32(i32 %B.4372, i32 %B.4372, i32 30) #5
  %inc169 = add nuw nsw i32 %i.4368, 1
  %exitcond382.not = icmp eq i32 %inc169, 80
  br i1 %exitcond382.not, label %for.end170, label %do.body136.do.body136_crit_edge

do.body136.do.body136_crit_edge:                  ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body136

for.end170:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #4
  %76 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %digest, align 4
  %add172 = add i32 %77, %add164
  store i32 %add172, ptr %digest, align 4
  %78 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx1, align 4
  %add174 = add i32 %79, %A.4373
  store i32 %add174, ptr %arrayidx1, align 4
  %80 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx2, align 4
  %add176 = add i32 %81, %or.i322
  store i32 %add176, ptr %arrayidx2, align 4
  %82 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx3, align 4
  %add178 = add i32 %83, %C.4371
  store i32 %add178, ptr %arrayidx3, align 4
  %84 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx4, align 4
  %add180 = add i32 %85, %D.4370
  store i32 %add180, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @sha1_init(ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1732584193, ptr %buf, align 4
  %arrayidx1 = getelementptr i32, ptr %buf, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -271733879, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %buf, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1732584194, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %buf, i32 3
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 271733878, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %buf, i32 4
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1009589776, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @__ksymtab_sha1_transform, !1, !"__ksymtab_sha1_transform", i1 false, i1 false}
!1 = !{!"../lib/sha1.c", i32 123, i32 1}
!2 = !{ptr @__ksymtab_sha1_init, !3, !"__ksymtab_sha1_init", i1 false, i1 false}
!3 = !{!"../lib/sha1.c", i32 137, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i64 2148730520}
!13 = !{i64 2148731068}
!14 = !{i64 2148731600}
!15 = !{i64 2148732160}
!16 = !{i64 2148732693}
