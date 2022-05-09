; ModuleID = '/llk/IR_all_yes/arch/arm/lib/xor-neon.c_pt.bc'
source_filename = "../arch/arm/lib/xor-neon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xor_block_neon_inner\22, \22a\22\09"
module asm "\09.weak\09__crc_xor_block_neon_inner\09\09\09\09"
module asm "\09.long\09__crc_xor_block_neon_inner\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xor_block_neon_inner:\09\09\09\09\09"
module asm "\09.asciz \09\22xor_block_neon_inner\22\09\09\09\09\09"
module asm "__kstrtabns_xor_block_neon_inner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.xor_block_template = type { ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@__UNIQUE_ID_file106 = internal constant [36 x i8] c"xor_neon.file=arch/arm/lib/xor-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [21 x i8] c"xor_neon.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__inner_neon__\00", [17 x i8] zeroinitializer }, align 32
@xor_block_neon_inner = dso_local constant { %struct.xor_block_template, [36 x i8] } { %struct.xor_block_template { ptr null, ptr @.str, i32 0, ptr @xor_8regs_2, ptr @xor_8regs_3, ptr @xor_8regs_4, ptr @xor_8regs_5 }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_xor_block_neon_inner = external dso_local constant [0 x i8], align 1
@__kstrtabns_xor_block_neon_inner = external dso_local constant [0 x i8], align 1
@__ksymtab_xor_block_neon_inner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xor_block_neon_inner to i32), ptr @__kstrtab_xor_block_neon_inner, ptr @__kstrtabns_xor_block_neon_inner }, section "___ksymtab+xor_block_neon_inner", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 37, i32 10 }
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"xor_block_neon_inner\00", align 1
@___asan_gen_.5 = private constant [27 x i8] c"../arch/arm/lib/xor-neon.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 36, i32 33 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_xor_block_neon_inner, ptr @.str, ptr @xor_block_neon_inner], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xor_block_neon_inner to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_8regs_2(i32 noundef %bytes, ptr nocapture noundef %p1, ptr nocapture noundef readonly %p2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %div142 = lshr i32 %bytes, 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %add.ptr24, %do.body.do.body_crit_edge ]
  %lines.0 = phi i32 [ %div142, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p2.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2.addr.0, align 4
  %2 = ptrtoint ptr %p1.addr.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p1.addr.0, align 4
  %xor = xor i32 %3, %1
  store i32 %xor, ptr %p1.addr.0, align 4
  %arrayidx3 = getelementptr i32, ptr %p2.addr.0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %p1.addr.0, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %xor5 = xor i32 %7, %5
  store i32 %xor5, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr i32, ptr %p2.addr.0, i32 2
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i32, ptr %p1.addr.0, i32 2
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7, align 4
  %xor8 = xor i32 %11, %9
  store i32 %xor8, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr i32, ptr %p2.addr.0, i32 3
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i32, ptr %p1.addr.0, i32 3
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  %xor11 = xor i32 %15, %13
  store i32 %xor11, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr i32, ptr %p2.addr.0, i32 4
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr i32, ptr %p1.addr.0, i32 4
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13, align 4
  %xor14 = xor i32 %19, %17
  store i32 %xor14, ptr %arrayidx13, align 4
  %arrayidx15 = getelementptr i32, ptr %p2.addr.0, i32 5
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr i32, ptr %p1.addr.0, i32 5
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %23, %21
  store i32 %xor17, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr i32, ptr %p2.addr.0, i32 6
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr i32, ptr %p1.addr.0, i32 6
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx19, align 4
  %xor20 = xor i32 %27, %25
  store i32 %xor20, ptr %arrayidx19, align 4
  %arrayidx21 = getelementptr i32, ptr %p2.addr.0, i32 7
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx21, align 4
  %arrayidx22 = getelementptr i32, ptr %p1.addr.0, i32 7
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx22, align 4
  %xor23 = xor i32 %31, %29
  store i32 %xor23, ptr %arrayidx22, align 4
  %add.ptr = getelementptr i32, ptr %p1.addr.0, i32 8
  %add.ptr24 = getelementptr i32, ptr %p2.addr.0, i32 8
  %dec = add nsw i32 %lines.0, -1
  %cmp = icmp ugt i32 %lines.0, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_8regs_3(i32 noundef %bytes, ptr nocapture noundef %p1, ptr nocapture noundef readonly %p2, ptr nocapture noundef readonly %p3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %div167 = lshr i32 %bytes, 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %add.ptr40, %do.body.do.body_crit_edge ]
  %p3.addr.0 = phi ptr [ %p3, %entry ], [ %add.ptr41, %do.body.do.body_crit_edge ]
  %lines.0 = phi i32 [ %div167, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p2.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2.addr.0, align 4
  %2 = ptrtoint ptr %p3.addr.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p3.addr.0, align 4
  %xor = xor i32 %3, %1
  %4 = ptrtoint ptr %p1.addr.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p1.addr.0, align 4
  %xor4 = xor i32 %xor, %5
  store i32 %xor4, ptr %p1.addr.0, align 4
  %arrayidx5 = getelementptr i32, ptr %p2.addr.0, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %p3.addr.0, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %xor7 = xor i32 %9, %7
  %arrayidx8 = getelementptr i32, ptr %p1.addr.0, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  %xor9 = xor i32 %xor7, %11
  store i32 %xor9, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr i32, ptr %p2.addr.0, i32 2
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr i32, ptr %p3.addr.0, i32 2
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11, align 4
  %xor12 = xor i32 %15, %13
  %arrayidx13 = getelementptr i32, ptr %p1.addr.0, i32 2
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13, align 4
  %xor14 = xor i32 %xor12, %17
  store i32 %xor14, ptr %arrayidx13, align 4
  %arrayidx15 = getelementptr i32, ptr %p2.addr.0, i32 3
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr i32, ptr %p3.addr.0, i32 3
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %21, %19
  %arrayidx18 = getelementptr i32, ptr %p1.addr.0, i32 3
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx18, align 4
  %xor19 = xor i32 %xor17, %23
  store i32 %xor19, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr i32, ptr %p2.addr.0, i32 4
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr i32, ptr %p3.addr.0, i32 4
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx21, align 4
  %xor22 = xor i32 %27, %25
  %arrayidx23 = getelementptr i32, ptr %p1.addr.0, i32 4
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx23, align 4
  %xor24 = xor i32 %xor22, %29
  store i32 %xor24, ptr %arrayidx23, align 4
  %arrayidx25 = getelementptr i32, ptr %p2.addr.0, i32 5
  %30 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx25, align 4
  %arrayidx26 = getelementptr i32, ptr %p3.addr.0, i32 5
  %32 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx26, align 4
  %xor27 = xor i32 %33, %31
  %arrayidx28 = getelementptr i32, ptr %p1.addr.0, i32 5
  %34 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx28, align 4
  %xor29 = xor i32 %xor27, %35
  store i32 %xor29, ptr %arrayidx28, align 4
  %arrayidx30 = getelementptr i32, ptr %p2.addr.0, i32 6
  %36 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx30, align 4
  %arrayidx31 = getelementptr i32, ptr %p3.addr.0, i32 6
  %38 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx31, align 4
  %xor32 = xor i32 %39, %37
  %arrayidx33 = getelementptr i32, ptr %p1.addr.0, i32 6
  %40 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx33, align 4
  %xor34 = xor i32 %xor32, %41
  store i32 %xor34, ptr %arrayidx33, align 4
  %arrayidx35 = getelementptr i32, ptr %p2.addr.0, i32 7
  %42 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx35, align 4
  %arrayidx36 = getelementptr i32, ptr %p3.addr.0, i32 7
  %44 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx36, align 4
  %xor37 = xor i32 %45, %43
  %arrayidx38 = getelementptr i32, ptr %p1.addr.0, i32 7
  %46 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx38, align 4
  %xor39 = xor i32 %xor37, %47
  store i32 %xor39, ptr %arrayidx38, align 4
  %add.ptr = getelementptr i32, ptr %p1.addr.0, i32 8
  %add.ptr40 = getelementptr i32, ptr %p2.addr.0, i32 8
  %add.ptr41 = getelementptr i32, ptr %p3.addr.0, i32 8
  %dec = add nsw i32 %lines.0, -1
  %cmp = icmp ugt i32 %lines.0, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_8regs_4(i32 noundef %bytes, ptr nocapture noundef %p1, ptr nocapture noundef readonly %p2, ptr nocapture noundef readonly %p3, ptr nocapture noundef readonly %p4) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %div192 = lshr i32 %bytes, 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %add.ptr56, %do.body.do.body_crit_edge ]
  %p3.addr.0 = phi ptr [ %p3, %entry ], [ %add.ptr57, %do.body.do.body_crit_edge ]
  %p4.addr.0 = phi ptr [ %p4, %entry ], [ %add.ptr58, %do.body.do.body_crit_edge ]
  %lines.0 = phi i32 [ %div192, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p2.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2.addr.0, align 4
  %2 = ptrtoint ptr %p3.addr.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p3.addr.0, align 4
  %xor = xor i32 %3, %1
  %4 = ptrtoint ptr %p4.addr.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p4.addr.0, align 4
  %xor4 = xor i32 %xor, %5
  %6 = ptrtoint ptr %p1.addr.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p1.addr.0, align 4
  %xor6 = xor i32 %xor4, %7
  store i32 %xor6, ptr %p1.addr.0, align 4
  %arrayidx7 = getelementptr i32, ptr %p2.addr.0, i32 1
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %p3.addr.0, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  %xor9 = xor i32 %11, %9
  %arrayidx10 = getelementptr i32, ptr %p4.addr.0, i32 1
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %xor11 = xor i32 %xor9, %13
  %arrayidx12 = getelementptr i32, ptr %p1.addr.0, i32 1
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %xor11, %15
  store i32 %xor13, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr i32, ptr %p2.addr.0, i32 2
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr i32, ptr %p3.addr.0, i32 2
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15, align 4
  %xor16 = xor i32 %19, %17
  %arrayidx17 = getelementptr i32, ptr %p4.addr.0, i32 2
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx17, align 4
  %xor18 = xor i32 %xor16, %21
  %arrayidx19 = getelementptr i32, ptr %p1.addr.0, i32 2
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx19, align 4
  %xor20 = xor i32 %xor18, %23
  store i32 %xor20, ptr %arrayidx19, align 4
  %arrayidx21 = getelementptr i32, ptr %p2.addr.0, i32 3
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx21, align 4
  %arrayidx22 = getelementptr i32, ptr %p3.addr.0, i32 3
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx22, align 4
  %xor23 = xor i32 %27, %25
  %arrayidx24 = getelementptr i32, ptr %p4.addr.0, i32 3
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx24, align 4
  %xor25 = xor i32 %xor23, %29
  %arrayidx26 = getelementptr i32, ptr %p1.addr.0, i32 3
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx26, align 4
  %xor27 = xor i32 %xor25, %31
  store i32 %xor27, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr i32, ptr %p2.addr.0, i32 4
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx28, align 4
  %arrayidx29 = getelementptr i32, ptr %p3.addr.0, i32 4
  %34 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx29, align 4
  %xor30 = xor i32 %35, %33
  %arrayidx31 = getelementptr i32, ptr %p4.addr.0, i32 4
  %36 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx31, align 4
  %xor32 = xor i32 %xor30, %37
  %arrayidx33 = getelementptr i32, ptr %p1.addr.0, i32 4
  %38 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx33, align 4
  %xor34 = xor i32 %xor32, %39
  store i32 %xor34, ptr %arrayidx33, align 4
  %arrayidx35 = getelementptr i32, ptr %p2.addr.0, i32 5
  %40 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx35, align 4
  %arrayidx36 = getelementptr i32, ptr %p3.addr.0, i32 5
  %42 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx36, align 4
  %xor37 = xor i32 %43, %41
  %arrayidx38 = getelementptr i32, ptr %p4.addr.0, i32 5
  %44 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx38, align 4
  %xor39 = xor i32 %xor37, %45
  %arrayidx40 = getelementptr i32, ptr %p1.addr.0, i32 5
  %46 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx40, align 4
  %xor41 = xor i32 %xor39, %47
  store i32 %xor41, ptr %arrayidx40, align 4
  %arrayidx42 = getelementptr i32, ptr %p2.addr.0, i32 6
  %48 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx42, align 4
  %arrayidx43 = getelementptr i32, ptr %p3.addr.0, i32 6
  %50 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx43, align 4
  %xor44 = xor i32 %51, %49
  %arrayidx45 = getelementptr i32, ptr %p4.addr.0, i32 6
  %52 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx45, align 4
  %xor46 = xor i32 %xor44, %53
  %arrayidx47 = getelementptr i32, ptr %p1.addr.0, i32 6
  %54 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx47, align 4
  %xor48 = xor i32 %xor46, %55
  store i32 %xor48, ptr %arrayidx47, align 4
  %arrayidx49 = getelementptr i32, ptr %p2.addr.0, i32 7
  %56 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx49, align 4
  %arrayidx50 = getelementptr i32, ptr %p3.addr.0, i32 7
  %58 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx50, align 4
  %xor51 = xor i32 %59, %57
  %arrayidx52 = getelementptr i32, ptr %p4.addr.0, i32 7
  %60 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx52, align 4
  %xor53 = xor i32 %xor51, %61
  %arrayidx54 = getelementptr i32, ptr %p1.addr.0, i32 7
  %62 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx54, align 4
  %xor55 = xor i32 %xor53, %63
  store i32 %xor55, ptr %arrayidx54, align 4
  %add.ptr = getelementptr i32, ptr %p1.addr.0, i32 8
  %add.ptr56 = getelementptr i32, ptr %p2.addr.0, i32 8
  %add.ptr57 = getelementptr i32, ptr %p3.addr.0, i32 8
  %add.ptr58 = getelementptr i32, ptr %p4.addr.0, i32 8
  %dec = add nsw i32 %lines.0, -1
  %cmp = icmp ugt i32 %lines.0, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_8regs_5(i32 noundef %bytes, ptr nocapture noundef %p1, ptr nocapture noundef readonly %p2, ptr nocapture noundef readonly %p3, ptr nocapture noundef readonly %p4, ptr nocapture noundef readonly %p5) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %div1117 = lshr i32 %bytes, 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %add.ptr72, %do.body.do.body_crit_edge ]
  %p3.addr.0 = phi ptr [ %p3, %entry ], [ %add.ptr73, %do.body.do.body_crit_edge ]
  %p4.addr.0 = phi ptr [ %p4, %entry ], [ %add.ptr74, %do.body.do.body_crit_edge ]
  %p5.addr.0 = phi ptr [ %p5, %entry ], [ %add.ptr75, %do.body.do.body_crit_edge ]
  %lines.0 = phi i32 [ %div1117, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p2.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2.addr.0, align 4
  %2 = ptrtoint ptr %p3.addr.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p3.addr.0, align 4
  %xor = xor i32 %3, %1
  %4 = ptrtoint ptr %p4.addr.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p4.addr.0, align 4
  %xor4 = xor i32 %xor, %5
  %6 = ptrtoint ptr %p5.addr.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p5.addr.0, align 4
  %xor6 = xor i32 %xor4, %7
  %8 = ptrtoint ptr %p1.addr.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p1.addr.0, align 4
  %xor8 = xor i32 %xor6, %9
  store i32 %xor8, ptr %p1.addr.0, align 4
  %arrayidx9 = getelementptr i32, ptr %p2.addr.0, i32 1
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i32, ptr %p3.addr.0, i32 1
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %xor11 = xor i32 %13, %11
  %arrayidx12 = getelementptr i32, ptr %p4.addr.0, i32 1
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %xor11, %15
  %arrayidx14 = getelementptr i32, ptr %p5.addr.0, i32 1
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %xor15 = xor i32 %xor13, %17
  %arrayidx16 = getelementptr i32, ptr %p1.addr.0, i32 1
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %xor15, %19
  store i32 %xor17, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr i32, ptr %p2.addr.0, i32 2
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr i32, ptr %p3.addr.0, i32 2
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx19, align 4
  %xor20 = xor i32 %23, %21
  %arrayidx21 = getelementptr i32, ptr %p4.addr.0, i32 2
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx21, align 4
  %xor22 = xor i32 %xor20, %25
  %arrayidx23 = getelementptr i32, ptr %p5.addr.0, i32 2
  %26 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx23, align 4
  %xor24 = xor i32 %xor22, %27
  %arrayidx25 = getelementptr i32, ptr %p1.addr.0, i32 2
  %28 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx25, align 4
  %xor26 = xor i32 %xor24, %29
  store i32 %xor26, ptr %arrayidx25, align 4
  %arrayidx27 = getelementptr i32, ptr %p2.addr.0, i32 3
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr i32, ptr %p3.addr.0, i32 3
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx28, align 4
  %xor29 = xor i32 %33, %31
  %arrayidx30 = getelementptr i32, ptr %p4.addr.0, i32 3
  %34 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx30, align 4
  %xor31 = xor i32 %xor29, %35
  %arrayidx32 = getelementptr i32, ptr %p5.addr.0, i32 3
  %36 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx32, align 4
  %xor33 = xor i32 %xor31, %37
  %arrayidx34 = getelementptr i32, ptr %p1.addr.0, i32 3
  %38 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx34, align 4
  %xor35 = xor i32 %xor33, %39
  store i32 %xor35, ptr %arrayidx34, align 4
  %arrayidx36 = getelementptr i32, ptr %p2.addr.0, i32 4
  %40 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx36, align 4
  %arrayidx37 = getelementptr i32, ptr %p3.addr.0, i32 4
  %42 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx37, align 4
  %xor38 = xor i32 %43, %41
  %arrayidx39 = getelementptr i32, ptr %p4.addr.0, i32 4
  %44 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx39, align 4
  %xor40 = xor i32 %xor38, %45
  %arrayidx41 = getelementptr i32, ptr %p5.addr.0, i32 4
  %46 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx41, align 4
  %xor42 = xor i32 %xor40, %47
  %arrayidx43 = getelementptr i32, ptr %p1.addr.0, i32 4
  %48 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx43, align 4
  %xor44 = xor i32 %xor42, %49
  store i32 %xor44, ptr %arrayidx43, align 4
  %arrayidx45 = getelementptr i32, ptr %p2.addr.0, i32 5
  %50 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx45, align 4
  %arrayidx46 = getelementptr i32, ptr %p3.addr.0, i32 5
  %52 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx46, align 4
  %xor47 = xor i32 %53, %51
  %arrayidx48 = getelementptr i32, ptr %p4.addr.0, i32 5
  %54 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx48, align 4
  %xor49 = xor i32 %xor47, %55
  %arrayidx50 = getelementptr i32, ptr %p5.addr.0, i32 5
  %56 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx50, align 4
  %xor51 = xor i32 %xor49, %57
  %arrayidx52 = getelementptr i32, ptr %p1.addr.0, i32 5
  %58 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx52, align 4
  %xor53 = xor i32 %xor51, %59
  store i32 %xor53, ptr %arrayidx52, align 4
  %arrayidx54 = getelementptr i32, ptr %p2.addr.0, i32 6
  %60 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx54, align 4
  %arrayidx55 = getelementptr i32, ptr %p3.addr.0, i32 6
  %62 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx55, align 4
  %xor56 = xor i32 %63, %61
  %arrayidx57 = getelementptr i32, ptr %p4.addr.0, i32 6
  %64 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx57, align 4
  %xor58 = xor i32 %xor56, %65
  %arrayidx59 = getelementptr i32, ptr %p5.addr.0, i32 6
  %66 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx59, align 4
  %xor60 = xor i32 %xor58, %67
  %arrayidx61 = getelementptr i32, ptr %p1.addr.0, i32 6
  %68 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx61, align 4
  %xor62 = xor i32 %xor60, %69
  store i32 %xor62, ptr %arrayidx61, align 4
  %arrayidx63 = getelementptr i32, ptr %p2.addr.0, i32 7
  %70 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx63, align 4
  %arrayidx64 = getelementptr i32, ptr %p3.addr.0, i32 7
  %72 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx64, align 4
  %xor65 = xor i32 %73, %71
  %arrayidx66 = getelementptr i32, ptr %p4.addr.0, i32 7
  %74 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx66, align 4
  %xor67 = xor i32 %xor65, %75
  %arrayidx68 = getelementptr i32, ptr %p5.addr.0, i32 7
  %76 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx68, align 4
  %xor69 = xor i32 %xor67, %77
  %arrayidx70 = getelementptr i32, ptr %p1.addr.0, i32 7
  %78 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx70, align 4
  %xor71 = xor i32 %xor69, %79
  store i32 %xor71, ptr %arrayidx70, align 4
  %add.ptr = getelementptr i32, ptr %p1.addr.0, i32 8
  %add.ptr72 = getelementptr i32, ptr %p2.addr.0, i32 8
  %add.ptr73 = getelementptr i32, ptr %p3.addr.0, i32 8
  %add.ptr74 = getelementptr i32, ptr %p4.addr.0, i32 8
  %add.ptr75 = getelementptr i32, ptr %p5.addr.0, i32 8
  %dec = add nsw i32 %lines.0, -1
  %cmp = icmp ugt i32 %lines.0, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__UNIQUE_ID_file106, !1, !"__UNIQUE_ID_file106", i1 false, i1 false}
!1 = !{!"../arch/arm/lib/xor-neon.c", i32 11, i32 1}
!2 = !{ptr @__UNIQUE_ID_license107, !1, !"__UNIQUE_ID_license107", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../arch/arm/lib/xor-neon.c", i32 37, i32 10}
!5 = !{ptr @xor_block_neon_inner, !6, !"xor_block_neon_inner", i1 false, i1 false}
!6 = !{!"../arch/arm/lib/xor-neon.c", i32 36, i32 33}
!7 = !{ptr @__ksymtab_xor_block_neon_inner, !8, !"__ksymtab_xor_block_neon_inner", i1 false, i1 false}
!8 = !{!"../arch/arm/lib/xor-neon.c", i32 43, i32 1}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
