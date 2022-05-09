; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_addr.c_pt.bc'
source_filename = "../net/ax25/ax25_addr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ax25_bcast\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_bcast\09\09\09\09"
module asm "\09.long\09__crc_ax25_bcast\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_bcast:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_bcast\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_bcast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ax25_defaddr\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_defaddr\09\09\09\09"
module asm "\09.long\09__crc_ax25_defaddr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_defaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_defaddr\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_defaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+null_ax25_address\22, \22a\22\09"
module asm "\09.weak\09__crc_null_ax25_address\09\09\09\09"
module asm "\09.long\09__crc_null_ax25_address\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_null_ax25_address:\09\09\09\09\09"
module asm "\09.asciz \09\22null_ax25_address\22\09\09\09\09\09"
module asm "__kstrtabns_null_ax25_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ax2asc\22, \22a\22\09"
module asm "\09.weak\09__crc_ax2asc\09\09\09\09"
module asm "\09.long\09__crc_ax2asc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax2asc:\09\09\09\09\09"
module asm "\09.asciz \09\22ax2asc\22\09\09\09\09\09"
module asm "__kstrtabns_ax2asc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+asc2ax\22, \22a\22\09"
module asm "\09.weak\09__crc_asc2ax\09\09\09\09"
module asm "\09.long\09__crc_asc2ax\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asc2ax:\09\09\09\09\09"
module asm "\09.asciz \09\22asc2ax\22\09\09\09\09\09"
module asm "__kstrtabns_asc2ax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ax25cmp\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25cmp\09\09\09\09"
module asm "\09.long\09__crc_ax25cmp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25cmp:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25cmp\22\09\09\09\09\09"
module asm "__kstrtabns_ax25cmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ax25_address = type { [7 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ax25_digi = type { [8 x %struct.ax25_address], [8 x i8], i8, i8 }

@ax25_bcast = dso_local constant { %struct.ax25_address, [25 x i8] } { %struct.ax25_address { [7 x i8] c"\A2\A6\A8@@@\00" }, [25 x i8] zeroinitializer }, align 32
@ax25_defaddr = dso_local constant { %struct.ax25_address, [25 x i8] } { %struct.ax25_address { [7 x i8] c"\98\92\9C\AA\B0@\02" }, [25 x i8] zeroinitializer }, align 32
@null_ax25_address = dso_local constant { %struct.ax25_address, [25 x i8] } { %struct.ax25_address { [7 x i8] c"@@@@@@\00" }, [25 x i8] zeroinitializer }, align 32
@__kstrtab_ax25_bcast = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_bcast = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_bcast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_bcast to i32), ptr @__kstrtab_ax25_bcast, ptr @__kstrtabns_ax25_bcast }, section "___ksymtab_gpl+ax25_bcast", align 4
@__kstrtab_ax25_defaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_defaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_defaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_defaddr to i32), ptr @__kstrtab_ax25_defaddr, ptr @__kstrtabns_ax25_defaddr }, section "___ksymtab_gpl+ax25_defaddr", align 4
@__kstrtab_null_ax25_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_null_ax25_address = external dso_local constant [0 x i8], align 1
@__ksymtab_null_ax25_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @null_ax25_address to i32), ptr @__kstrtab_null_ax25_address, ptr @__kstrtabns_null_ax25_address }, section "___ksymtab+null_ax25_address", align 4
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@__kstrtab_ax2asc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax2asc = external dso_local constant [0 x i8], align 1
@__ksymtab_ax2asc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax2asc to i32), ptr @__kstrtab_ax2asc, ptr @__kstrtabns_ax2asc }, section "___ksymtab+ax2asc", align 4
@__kstrtab_asc2ax = external dso_local constant [0 x i8], align 1
@__kstrtabns_asc2ax = external dso_local constant [0 x i8], align 1
@__ksymtab_asc2ax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asc2ax to i32), ptr @__kstrtab_asc2ax, ptr @__kstrtabns_asc2ax }, section "___ksymtab+asc2ax", align 4
@__kstrtab_ax25cmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25cmp = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25cmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25cmp to i32), ptr @__kstrtab_ax25cmp, ptr @__kstrtabns_ax25cmp }, section "___ksymtab+ax25cmp", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 45]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 45]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 45]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 45]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 45]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 45]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 45]
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"ax25_bcast\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 32, i32 20 }
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"ax25_defaddr\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 34, i32 20 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"null_ax25_address\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 36, i32 20 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [24 x i8] c"../net/ax25/ax25_addr.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 68, i32 12 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_asc2ax, ptr @__ksymtab_ax25_bcast, ptr @__ksymtab_ax25_defaddr, ptr @__ksymtab_ax25cmp, ptr @__ksymtab_ax2asc, ptr @__ksymtab_null_ax25_address, ptr @ax25_bcast, ptr @ax25_defaddr, ptr @null_ax25_address, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_bcast to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_defaddr to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_ax25_address to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ax2asc(ptr noundef %buf, ptr nocapture noundef readonly %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %a, align 1
  %2 = lshr i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %2)
  %cmp3.not = icmp eq i8 %2, 32
  br i1 %cmp3.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %buf, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %s.1 = phi ptr [ %incdec.ptr, %if.then ], [ %buf, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr [7 x i8], ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %6 = lshr i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %6)
  %cmp3.not.1 = icmp eq i8 %6, 32
  br i1 %cmp3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.1 = getelementptr i8, ptr %s.1, i32 1
  %7 = ptrtoint ptr %s.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %s.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %s.1.1 = phi ptr [ %incdec.ptr.1, %if.then.1 ], [ %s.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr [7 x i8], ptr %a, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %10 = lshr i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %10)
  %cmp3.not.2 = icmp eq i8 %10, 32
  br i1 %cmp3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.2 = getelementptr i8, ptr %s.1.1, i32 1
  %11 = ptrtoint ptr %s.1.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %s.1.1, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %s.1.2 = phi ptr [ %incdec.ptr.2, %if.then.2 ], [ %s.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr [7 x i8], ptr %a, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3, align 1
  %14 = lshr i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %cmp3.not.3 = icmp eq i8 %14, 32
  br i1 %cmp3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.3 = getelementptr i8, ptr %s.1.2, i32 1
  %15 = ptrtoint ptr %s.1.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %s.1.2, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %s.1.3 = phi ptr [ %incdec.ptr.3, %if.then.3 ], [ %s.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr [7 x i8], ptr %a, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.4, align 1
  %18 = lshr i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %18)
  %cmp3.not.4 = icmp eq i8 %18, 32
  br i1 %cmp3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.4 = getelementptr i8, ptr %s.1.3, i32 1
  %19 = ptrtoint ptr %s.1.3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %s.1.3, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %s.1.4 = phi ptr [ %incdec.ptr.4, %if.then.4 ], [ %s.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx.5 = getelementptr [7 x i8], ptr %a, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.5, align 1
  %22 = lshr i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %22)
  %cmp3.not.5 = icmp eq i8 %22, 32
  br i1 %cmp3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.5 = getelementptr i8, ptr %s.1.4, i32 1
  %23 = ptrtoint ptr %s.1.4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %s.1.4, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %s.1.5 = phi ptr [ %incdec.ptr.5, %if.then.5 ], [ %s.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %incdec.ptr5 = getelementptr i8, ptr %s.1.5, i32 1
  %24 = ptrtoint ptr %s.1.5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 45, ptr %s.1.5, align 1
  %arrayidx7 = getelementptr [7 x i8], ptr %a, i32 0, i32 6
  %25 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx7, align 1
  %27 = lshr i8 %26, 1
  %28 = and i8 %27, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %28)
  %cmp11 = icmp ugt i8 %28, 9
  br i1 %cmp11, label %if.then13, label %for.inc.5.if.end15_crit_edge

for.inc.5.if.end15_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr14 = getelementptr i8, ptr %s.1.5, i32 2
  %29 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 49, ptr %incdec.ptr5, align 1
  %sub = add nsw i8 %28, -10
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %for.inc.5.if.end15_crit_edge
  %s.2 = phi ptr [ %incdec.ptr14, %if.then13 ], [ %incdec.ptr5, %for.inc.5.if.end15_crit_edge ]
  %n.1 = phi i8 [ %sub, %if.then13 ], [ %28, %for.inc.5.if.end15_crit_edge ]
  %add = add nuw nsw i8 %n.1, 48
  %incdec.ptr17 = getelementptr i8, ptr %s.2, i32 1
  %30 = ptrtoint ptr %s.2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %add, ptr %s.2, align 1
  %31 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %incdec.ptr17, align 1
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buf, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i8 %33, label %if.end26 [
    i8 0, label %if.end15.cleanup_crit_edge
    i8 45, label %if.end15.cleanup_crit_edge44
  ]

if.end15.cleanup_crit_edge44:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end15.cleanup_crit_edge, %if.end15.cleanup_crit_edge44
  %retval.0 = phi ptr [ %buf, %if.end26 ], [ @.str, %if.end15.cleanup_crit_edge ], [ @.str, %if.end15.cleanup_crit_edge44 ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asc2ax(ptr nocapture noundef %addr, ptr nocapture noundef readonly %callsign) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %callsign to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %callsign, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %1, label %if.then [
    i8 0, label %entry.if.end_crit_edge
    i8 45, label %entry.if.end_crit_edge88
  ]

entry.if.end_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i8, ptr %callsign, i32 1
  %phi.bo = shl i8 %1, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge88
  %storemerge = phi i8 [ %phi.bo, %if.then ], [ 64, %entry.if.end_crit_edge ], [ 64, %entry.if.end_crit_edge88 ]
  %s.1 = phi ptr [ %incdec.ptr, %if.then ], [ %callsign, %entry.if.end_crit_edge ], [ %callsign, %entry.if.end_crit_edge88 ]
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %storemerge, ptr %addr, align 1
  %4 = ptrtoint ptr %s.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s.1, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %5, label %if.then.1 [
    i8 0, label %if.end.if.end.1_crit_edge
    i8 45, label %if.end.if.end.1_crit_edge89
  ]

if.end.if.end.1_crit_edge89:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.1 = getelementptr i8, ptr %s.1, i32 1
  %phi.bo83 = shl i8 %5, 1
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge, %if.end.if.end.1_crit_edge89
  %.sink = phi i8 [ %phi.bo83, %if.then.1 ], [ 64, %if.end.if.end.1_crit_edge ], [ 64, %if.end.if.end.1_crit_edge89 ]
  %s.1.1 = phi ptr [ %incdec.ptr.1, %if.then.1 ], [ %s.1, %if.end.if.end.1_crit_edge ], [ %s.1, %if.end.if.end.1_crit_edge89 ]
  %arrayidx9.1 = getelementptr [7 x i8], ptr %addr, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %arrayidx9.1, align 1
  %8 = ptrtoint ptr %s.1.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s.1.1, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %9, label %if.then.2 [
    i8 0, label %if.end.1.if.end.2_crit_edge
    i8 45, label %if.end.1.if.end.2_crit_edge90
  ]

if.end.1.if.end.2_crit_edge90:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.2 = getelementptr i8, ptr %s.1.1, i32 1
  %phi.bo84 = shl i8 %9, 1
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge, %if.end.1.if.end.2_crit_edge90
  %.sink79 = phi i8 [ %phi.bo84, %if.then.2 ], [ 64, %if.end.1.if.end.2_crit_edge ], [ 64, %if.end.1.if.end.2_crit_edge90 ]
  %s.1.2 = phi ptr [ %incdec.ptr.2, %if.then.2 ], [ %s.1.1, %if.end.1.if.end.2_crit_edge ], [ %s.1.1, %if.end.1.if.end.2_crit_edge90 ]
  %arrayidx9.2 = getelementptr [7 x i8], ptr %addr, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink79, ptr %arrayidx9.2, align 1
  %12 = ptrtoint ptr %s.1.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s.1.2, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %13, label %if.then.3 [
    i8 0, label %if.end.2.if.end.3_crit_edge
    i8 45, label %if.end.2.if.end.3_crit_edge91
  ]

if.end.2.if.end.3_crit_edge91:                    ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.3 = getelementptr i8, ptr %s.1.2, i32 1
  %phi.bo85 = shl i8 %13, 1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge, %if.end.2.if.end.3_crit_edge91
  %.sink80 = phi i8 [ %phi.bo85, %if.then.3 ], [ 64, %if.end.2.if.end.3_crit_edge ], [ 64, %if.end.2.if.end.3_crit_edge91 ]
  %s.1.3 = phi ptr [ %incdec.ptr.3, %if.then.3 ], [ %s.1.2, %if.end.2.if.end.3_crit_edge ], [ %s.1.2, %if.end.2.if.end.3_crit_edge91 ]
  %arrayidx9.3 = getelementptr [7 x i8], ptr %addr, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink80, ptr %arrayidx9.3, align 1
  %16 = ptrtoint ptr %s.1.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %s.1.3, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %17, label %if.then.4 [
    i8 0, label %if.end.3.if.end.4_crit_edge
    i8 45, label %if.end.3.if.end.4_crit_edge92
  ]

if.end.3.if.end.4_crit_edge92:                    ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.4 = getelementptr i8, ptr %s.1.3, i32 1
  %phi.bo86 = shl i8 %17, 1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge, %if.end.3.if.end.4_crit_edge92
  %.sink81 = phi i8 [ %phi.bo86, %if.then.4 ], [ 64, %if.end.3.if.end.4_crit_edge ], [ 64, %if.end.3.if.end.4_crit_edge92 ]
  %s.1.4 = phi ptr [ %incdec.ptr.4, %if.then.4 ], [ %s.1.3, %if.end.3.if.end.4_crit_edge ], [ %s.1.3, %if.end.3.if.end.4_crit_edge92 ]
  %arrayidx9.4 = getelementptr [7 x i8], ptr %addr, i32 0, i32 4
  %19 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink81, ptr %arrayidx9.4, align 1
  %20 = ptrtoint ptr %s.1.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s.1.4, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %21, label %if.then.5 [
    i8 0, label %if.end.4.if.end.5_crit_edge
    i8 45, label %if.end.4.if.end.5_crit_edge93
  ]

if.end.4.if.end.5_crit_edge93:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.5 = getelementptr i8, ptr %s.1.4, i32 1
  %phi.bo87 = shl i8 %21, 1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge, %if.end.4.if.end.5_crit_edge93
  %.sink82 = phi i8 [ %phi.bo87, %if.then.5 ], [ 64, %if.end.4.if.end.5_crit_edge ], [ 64, %if.end.4.if.end.5_crit_edge93 ]
  %s.1.5 = phi ptr [ %incdec.ptr.5, %if.then.5 ], [ %s.1.4, %if.end.4.if.end.5_crit_edge ], [ %s.1.4, %if.end.4.if.end.5_crit_edge93 ]
  %arrayidx9.5 = getelementptr [7 x i8], ptr %addr, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink82, ptr %arrayidx9.5, align 1
  %24 = ptrtoint ptr %s.1.5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %s.1.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp18 = icmp eq i8 %25, 0
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx22 = getelementptr [7 x i8], ptr %addr, i32 0, i32 6
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx22, align 1
  br label %cleanup

if.end23:                                         ; preds = %if.end.5
  %incdec.ptr16 = getelementptr i8, ptr %s.1.5, i32 1
  %incdec.ptr24 = getelementptr i8, ptr %s.1.5, i32 2
  %27 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr16, align 1
  %sub = add i8 %28, -48
  %arrayidx28 = getelementptr [7 x i8], ptr %addr, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %sub, ptr %arrayidx28, align 1
  %30 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp30.not = icmp eq i8 %31, 0
  br i1 %cmp30.not, label %if.end23.if.end44_crit_edge, label %if.then32

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then32:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %mul = mul i8 %sub, 10
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %mul, ptr %arrayidx28, align 1
  %33 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr24, align 1
  %sub39 = add i8 %mul, -48
  %add = add i8 %sub39, %34
  store i8 %add, ptr %arrayidx28, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then32, %if.end23.if.end44_crit_edge
  %35 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx28, align 1
  %shl48 = shl i8 %36, 1
  %37 = and i8 %shl48, 30
  store i8 %37, ptr %arrayidx28, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then20
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %a, align 1
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b, align 1
  %4 = xor i8 %3, %1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp5.not = icmp ult i8 %4, 2
  br i1 %cmp5.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.1 = getelementptr [7 x i8], ptr %a, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  %arrayidx2.1 = getelementptr [7 x i8], ptr %b, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2.1, align 1
  %9 = xor i8 %8, %6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp5.not.1 = icmp ult i8 %9, 2
  br i1 %cmp5.not.1, label %if.end.1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %arrayidx.2 = getelementptr [7 x i8], ptr %a, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2, align 1
  %arrayidx2.2 = getelementptr [7 x i8], ptr %b, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.2, align 1
  %14 = xor i8 %13, %11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp5.not.2 = icmp ult i8 %14, 2
  br i1 %cmp5.not.2, label %if.end.2, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %arrayidx.3 = getelementptr [7 x i8], ptr %a, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.3, align 1
  %arrayidx2.3 = getelementptr [7 x i8], ptr %b, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx2.3, align 1
  %19 = xor i8 %18, %16
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp5.not.3 = icmp ult i8 %19, 2
  br i1 %cmp5.not.3, label %if.end.3, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  %arrayidx.4 = getelementptr [7 x i8], ptr %a, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4, align 1
  %arrayidx2.4 = getelementptr [7 x i8], ptr %b, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.4, align 1
  %24 = xor i8 %23, %21
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp5.not.4 = icmp ult i8 %24, 2
  br i1 %cmp5.not.4, label %if.end.4, label %if.end.3.cleanup_crit_edge

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  %arrayidx.5 = getelementptr [7 x i8], ptr %a, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.5, align 1
  %arrayidx2.5 = getelementptr [7 x i8], ptr %b, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx2.5, align 1
  %29 = xor i8 %28, %26
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp5.not.5 = icmp ult i8 %29, 2
  br i1 %cmp5.not.5, label %if.end.5, label %if.end.4.cleanup_crit_edge

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8 = getelementptr [7 x i8], ptr %a, i32 0, i32 6
  %30 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx8, align 1
  %arrayidx12 = getelementptr [7 x i8], ptr %b, i32 0, i32 6
  %32 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx12, align 1
  %34 = xor i8 %33, %31
  %35 = and i8 %34, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp15 = icmp eq i8 %35, 0
  %. = select i1 %cmp15, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end.5 ], [ 1, %if.end.4.cleanup_crit_edge ], [ 1, %if.end.3.cleanup_crit_edge ], [ 1, %if.end.2.cleanup_crit_edge ], [ 1, %if.end.1.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25digicmp(ptr nocapture noundef readonly %digi1, ptr nocapture noundef readonly %digi2) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %digi1, i32 0, i32 2
  %0 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ndigi, align 1
  %ndigi1 = getelementptr inbounds %struct.ax25_digi, ptr %digi2, i32 0, i32 2
  %2 = ptrtoint ptr %ndigi1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ndigi1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lastrepeat = getelementptr inbounds %struct.ax25_digi, ptr %digi1, i32 0, i32 3
  %4 = ptrtoint ptr %lastrepeat to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lastrepeat, align 1
  %lastrepeat5 = getelementptr inbounds %struct.ax25_digi, ptr %digi2, i32 0, i32 3
  %6 = ptrtoint ptr %lastrepeat5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lastrepeat5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp7.not = icmp eq i8 %5, %7
  br i1 %cmp7.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %conv12 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1331.not = icmp eq i8 %1, 0
  br i1 %cmp1331.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %if.end.5.i
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %conv12
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.ax25_address], ptr %digi1, i32 0, i32 %i.032
  %arrayidx16 = getelementptr [8 x %struct.ax25_address], ptr %digi2, i32 0, i32 %i.032
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16, align 1
  %12 = xor i8 %11, %9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp5.not.i = icmp ult i8 %12, 2
  br i1 %cmp5.not.i, label %if.end.i, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %arrayidx.1.i = getelementptr [7 x i8], ptr %arrayidx, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx2.1.i = getelementptr [7 x i8], ptr %arrayidx16, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.1.i, align 1
  %17 = xor i8 %16, %14
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp5.not.1.i = icmp ult i8 %17, 2
  br i1 %cmp5.not.1.i, label %if.end.1.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.i:                                       ; preds = %if.end.i
  %arrayidx.2.i = getelementptr [7 x i8], ptr %arrayidx, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx2.2.i = getelementptr [7 x i8], ptr %arrayidx16, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx2.2.i, align 1
  %22 = xor i8 %21, %19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp5.not.2.i = icmp ult i8 %22, 2
  br i1 %cmp5.not.2.i, label %if.end.2.i, label %if.end.1.i.cleanup_crit_edge

if.end.1.i.cleanup_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.i:                                       ; preds = %if.end.1.i
  %arrayidx.3.i = getelementptr [7 x i8], ptr %arrayidx, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx2.3.i = getelementptr [7 x i8], ptr %arrayidx16, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx2.3.i, align 1
  %27 = xor i8 %26, %24
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp5.not.3.i = icmp ult i8 %27, 2
  br i1 %cmp5.not.3.i, label %if.end.3.i, label %if.end.2.i.cleanup_crit_edge

if.end.2.i.cleanup_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.i:                                       ; preds = %if.end.2.i
  %arrayidx.4.i = getelementptr [7 x i8], ptr %arrayidx, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx2.4.i = getelementptr [7 x i8], ptr %arrayidx16, i32 0, i32 4
  %30 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx2.4.i, align 1
  %32 = xor i8 %31, %29
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp5.not.4.i = icmp ult i8 %32, 2
  br i1 %cmp5.not.4.i, label %if.end.4.i, label %if.end.3.i.cleanup_crit_edge

if.end.3.i.cleanup_crit_edge:                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.i:                                       ; preds = %if.end.3.i
  %arrayidx.5.i = getelementptr [7 x i8], ptr %arrayidx, i32 0, i32 5
  %33 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.5.i, align 1
  %arrayidx2.5.i = getelementptr [7 x i8], ptr %arrayidx16, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx2.5.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx2.5.i, align 1
  %37 = xor i8 %36, %34
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp5.not.5.i = icmp ult i8 %37, 2
  br i1 %cmp5.not.5.i, label %if.end.5.i, label %if.end.4.i.cleanup_crit_edge

if.end.4.i.cleanup_crit_edge:                     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.i:                                       ; preds = %if.end.4.i
  %arrayidx8.i = getelementptr [7 x i8], ptr %arrayidx, i32 0, i32 6
  %38 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx8.i, align 1
  %arrayidx12.i = getelementptr [7 x i8], ptr %arrayidx16, i32 0, i32 6
  %40 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx12.i, align 1
  %42 = xor i8 %41, %39
  %43 = and i8 %42, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp15.i = icmp eq i8 %43, 0
  br i1 %cmp15.i, label %for.cond, label %if.end.5.i.cleanup_crit_edge

if.end.5.i.cleanup_crit_edge:                     ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.5.i.cleanup_crit_edge, %if.end.4.i.cleanup_crit_edge, %if.end.3.i.cleanup_crit_edge, %if.end.2.i.cleanup_crit_edge, %if.end.1.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 1, %if.end.5.i.cleanup_crit_edge ], [ 1, %if.end.4.i.cleanup_crit_edge ], [ 1, %if.end.3.i.cleanup_crit_edge ], [ 1, %if.end.2.i.cleanup_crit_edge ], [ 1, %if.end.1.i.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ax25_addr_parse(ptr noundef readonly %buf, i32 noundef %len, ptr noundef writeonly %src, ptr noundef writeonly %dest, ptr nocapture noundef writeonly %digi, ptr noundef writeonly %flags, ptr noundef writeonly %dama) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %len)
  %cmp = icmp slt i32 %len, 14
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq ptr %flags, null
  br i1 %cmp1.not, label %if.end.if.end11_crit_edge, label %if.then2

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flags, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 6
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %.lobit = lshr i8 %2, 7
  %3 = zext i8 %.lobit to i32
  store i32 %3, ptr %flags, align 4
  %arrayidx5 = getelementptr i8, ptr %buf, i32 13
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool8.not = icmp sgt i8 %5, -1
  %spec.store.select88 = select i1 %tobool8.not, i32 %3, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.store.select88, ptr %flags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then2, %if.end.if.end11_crit_edge
  %cmp12.not = icmp eq ptr %dama, null
  br i1 %cmp12.not, label %if.end11.if.end18_crit_edge, label %if.then14

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx15 = getelementptr i8, ptr %buf, i32 13
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx15, align 1
  %9 = and i8 %8, 32
  %10 = xor i8 %9, 32
  %and17 = zext i8 %10 to i32
  %11 = ptrtoint ptr %dama to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and17, ptr %dama, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end11.if.end18_crit_edge
  %cmp19.not = icmp eq ptr %dest, null
  br i1 %cmp19.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %12 = call ptr @memcpy(ptr %dest, ptr %buf, i32 7)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %cmp23.not = icmp eq ptr %src, null
  br i1 %cmp23.not, label %if.end22.if.end27_crit_edge, label %if.then25

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr26 = getelementptr i8, ptr %buf, i32 7
  %13 = call ptr @memcpy(ptr %src, ptr %add.ptr26, i32 7)
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  %add.ptr28 = getelementptr i8, ptr %buf, i32 14
  %lastrepeat = getelementptr inbounds %struct.ax25_digi, ptr %digi, i32 0, i32 3
  %14 = ptrtoint ptr %lastrepeat to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %lastrepeat, align 1
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %digi, i32 0, i32 2
  %15 = ptrtoint ptr %ndigi to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %ndigi, align 1
  %arrayidx2989 = getelementptr i8, ptr %buf, i32 13
  %16 = ptrtoint ptr %arrayidx2989 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2989, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool32.not90 = icmp eq i8 %18, 0
  br i1 %tobool32.not90, label %while.body.preheader, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.preheader:                             ; preds = %if.end27
  %sub = add nsw i32 %len, -14
  br label %while.body

while.body:                                       ; preds = %if.end54.while.body_crit_edge, %while.body.preheader
  %d.093 = phi i32 [ %add, %if.end54.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %buf.addr.092 = phi ptr [ %add.ptr55, %if.end54.while.body_crit_edge ], [ %add.ptr28, %while.body.preheader ]
  %len.addr.091 = phi i32 [ %sub56, %if.end54.while.body_crit_edge ], [ %sub, %while.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %d.093)
  %cmp33 = icmp ugt i32 %d.093, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len.addr.091)
  %cmp37 = icmp slt i32 %len.addr.091, 7
  %or.cond = select i1 %cmp33, i1 true, i1 %cmp37
  br i1 %or.cond, label %while.body.cleanup_crit_edge, label %if.end40

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %while.body
  %arrayidx41 = getelementptr [8 x %struct.ax25_address], ptr %digi, i32 0, i32 %d.093
  %19 = call ptr @memcpy(ptr %arrayidx41, ptr %buf.addr.092, i32 7)
  %add = add nuw nsw i32 %d.093, 1
  %conv42 = trunc i32 %add to i8
  %20 = ptrtoint ptr %ndigi to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv42, ptr %ndigi, align 1
  %arrayidx44 = getelementptr i8, ptr %buf.addr.092, i32 6
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool47.not = icmp sgt i8 %22, -1
  %arrayidx53 = getelementptr %struct.ax25_digi, ptr %digi, i32 0, i32 1, i32 %d.093
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %arrayidx53, align 1
  %conv50 = trunc i32 %d.093 to i8
  %24 = ptrtoint ptr %lastrepeat to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv50, ptr %lastrepeat, align 1
  br label %if.end54

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx53, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then48
  %add.ptr55 = getelementptr i8, ptr %buf.addr.092, i32 7
  %sub56 = add nsw i32 %len.addr.091, -7
  %26 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx44, align 1
  %28 = and i8 %27, 1
  %tobool32.not = icmp eq i8 %28, 0
  br i1 %tobool32.not, label %if.end54.while.body_crit_edge, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54.while.body_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup:                                          ; preds = %if.end54.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %add.ptr28, %if.end27.cleanup_crit_edge ], [ null, %while.body.cleanup_crit_edge ], [ %add.ptr55, %if.end54.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_addr_build(ptr nocapture noundef %buf, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dest, ptr noundef readonly %d, i32 noundef %flag, i32 noundef %modulus) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr %dest, i32 7)
  %arrayidx = getelementptr i8, ptr %buf, i32 6
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = and i8 %2, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flag)
  %cmp = icmp eq i32 %flag, 1
  %spec.select.v = select i1 %cmp, i8 -32, i8 96
  %spec.select = or i8 %3, %spec.select.v
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %spec.select, ptr %arrayidx, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 7
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %src, i32 7)
  %arrayidx10 = getelementptr i8, ptr %buf, i32 13
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  %8 = and i8 %7, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %modulus)
  %cmp18 = icmp eq i32 %modulus, 8
  %storemerge.v = select i1 %cmp18, i8 96, i8 32
  %storemerge = or i8 %8, %storemerge.v
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flag)
  %cmp30 = icmp eq i32 %flag, 2
  %9 = or i8 %storemerge, -128
  %spec.select115 = select i1 %cmp30, i8 %9, i8 %storemerge
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select115, ptr %arrayidx10, align 1
  %cmp38 = icmp eq ptr %d, null
  br i1 %cmp38, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %d, i32 0, i32 2
  %11 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ndigi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp41 = icmp eq i8 %12, 0
  br i1 %cmp41, label %lor.lhs.false.cleanup_crit_edge, label %if.end48

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end48:                                         ; preds = %lor.lhs.false
  %add.ptr49 = getelementptr i8, ptr %buf, i32 14
  %13 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ndigi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp53117.not = icmp eq i8 %14, 0
  br i1 %cmp53117.not, label %if.end48.while.end_crit_edge, label %if.end48.while.body_crit_edge

if.end48.while.body_crit_edge:                    ; preds = %if.end48
  br label %while.body

if.end48.while.end_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end48.while.body_crit_edge
  %ct.0121 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.end48.while.body_crit_edge ]
  %len.0120 = phi i32 [ %add77, %while.body.while.body_crit_edge ], [ 14, %if.end48.while.body_crit_edge ]
  %buf.addr.0118 = phi ptr [ %add.ptr76, %while.body.while.body_crit_edge ], [ %add.ptr49, %if.end48.while.body_crit_edge ]
  %arrayidx55 = getelementptr [8 x %struct.ax25_address], ptr %d, i32 0, i32 %ct.0121
  %15 = call ptr @memcpy(ptr %buf.addr.0118, ptr %arrayidx55, i32 7)
  %arrayidx56 = getelementptr %struct.ax25_digi, ptr %d, i32 0, i32 1, i32 %ct.0121
  %16 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %arrayidx63 = getelementptr i8, ptr %buf.addr.0118, i32 6
  %18 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx63, align 1
  %20 = and i8 %19, 30
  %masksel = select i1 %tobool.not, i8 0, i8 -128
  %.sink = or i8 %20, %masksel
  %arrayidx68 = getelementptr i8, ptr %buf.addr.0118, i32 6
  %21 = or i8 %.sink, 96
  %22 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx68, align 1
  %add.ptr76 = getelementptr i8, ptr %buf.addr.0118, i32 7
  %add77 = add nuw nsw i32 %len.0120, 7
  %inc = add nuw nsw i32 %ct.0121, 1
  %23 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ndigi, align 1
  %conv52 = zext i8 %24 to i32
  %cmp53 = icmp ult i32 %inc, %conv52
  br i1 %cmp53, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end48.while.end_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %add.ptr49, %if.end48.while.end_crit_edge ], [ %add.ptr76, %while.body.while.end_crit_edge ]
  %len.0.lcssa = phi i32 [ 14, %if.end48.while.end_crit_edge ], [ %add77, %while.body.while.end_crit_edge ]
  %arrayidx78 = getelementptr i8, ptr %buf.addr.0.lcssa, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %arrayidx78.sink125 = phi ptr [ %arrayidx78, %while.end ], [ %arrayidx10, %lor.lhs.false.cleanup_crit_edge ], [ %arrayidx10, %entry.cleanup_crit_edge ]
  %retval.0 = phi i32 [ %len.0.lcssa, %while.end ], [ 14, %lor.lhs.false.cleanup_crit_edge ], [ 14, %entry.cleanup_crit_edge ]
  %25 = ptrtoint ptr %arrayidx78.sink125 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx78.sink125, align 1
  %27 = or i8 %26, 1
  store i8 %27, ptr %arrayidx78.sink125, align 1
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ax25_addr_size(ptr noundef readonly %dp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dp, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %dp, i32 0, i32 2
  %0 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ndigi, align 1
  %conv = zext i8 %1 to i32
  %2 = mul nuw nsw i32 %conv, 7
  %mul = add nuw nsw i32 %2, 14
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end ], [ 14, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_digi_invert(ptr nocapture noundef readonly %in, ptr nocapture noundef %out) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %in, i32 0, i32 2
  %0 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ndigi, align 1
  %ndigi1 = getelementptr inbounds %struct.ax25_digi, ptr %out, i32 0, i32 2
  %2 = ptrtoint ptr %ndigi1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %ndigi1, align 1
  %3 = load i8, ptr %ndigi, align 1
  %lastrepeat = getelementptr inbounds %struct.ax25_digi, ptr %in, i32 0, i32 3
  %4 = ptrtoint ptr %lastrepeat to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lastrepeat, align 1
  %sub = add i8 %3, -2
  %sub4 = sub i8 %sub, %5
  %lastrepeat6 = getelementptr inbounds %struct.ax25_digi, ptr %out, i32 0, i32 3
  %6 = ptrtoint ptr %lastrepeat6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %sub4, ptr %lastrepeat6, align 1
  %7 = load i8, ptr %ndigi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp55.not = icmp eq i8 %7, 0
  br i1 %cmp55.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %conv854 = zext i8 %7 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %conv858 = phi i32 [ %conv8, %for.body.for.body_crit_edge ], [ %conv854, %for.body.preheader ]
  %ct.056 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [8 x %struct.ax25_address], ptr %out, i32 0, i32 %ct.056
  %8 = xor i32 %ct.056, -1
  %sub14 = add nsw i32 %conv858, %8
  %arrayidx15 = getelementptr [8 x %struct.ax25_address], ptr %in, i32 0, i32 %sub14
  %9 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx15, i32 7)
  %10 = ptrtoint ptr %lastrepeat6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lastrepeat6, align 1
  %conv17 = sext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ct.056, i32 %conv17)
  %cmp18.not = icmp sgt i32 %ct.056, %conv17
  %arrayidx29 = getelementptr [7 x i8], ptr %arrayidx, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx29, align 1
  %14 = and i8 %13, 127
  %masksel = select i1 %cmp18.not, i8 0, i8 -128
  %.sink59 = or i8 %14, %masksel
  %not.cmp18.not = xor i1 %cmp18.not, true
  %.sink = zext i1 %not.cmp18.not to i8
  store i8 %.sink59, ptr %arrayidx29, align 1
  %15 = getelementptr %struct.ax25_digi, ptr %out, i32 0, i32 1, i32 %ct.056
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %15, align 1
  %inc = add nuw nsw i32 %ct.056, 1
  %17 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ndigi, align 1
  %conv8 = zext i8 %18 to i32
  %cmp = icmp ult i32 %inc, %conv8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @ax25_bcast, !1, !"ax25_bcast", i1 false, i1 false}
!1 = !{!"../net/ax25/ax25_addr.c", i32 32, i32 20}
!2 = !{ptr @ax25_defaddr, !3, !"ax25_defaddr", i1 false, i1 false}
!3 = !{!"../net/ax25/ax25_addr.c", i32 34, i32 20}
!4 = !{ptr @null_ax25_address, !5, !"null_ax25_address", i1 false, i1 false}
!5 = !{!"../net/ax25/ax25_addr.c", i32 36, i32 20}
!6 = !{ptr @__ksymtab_ax25_bcast, !7, !"__ksymtab_ax25_bcast", i1 false, i1 false}
!7 = !{!"../net/ax25/ax25_addr.c", i32 39, i32 1}
!8 = !{ptr @__ksymtab_ax25_defaddr, !9, !"__ksymtab_ax25_defaddr", i1 false, i1 false}
!9 = !{!"../net/ax25/ax25_addr.c", i32 40, i32 1}
!10 = !{ptr @__ksymtab_null_ax25_address, !11, !"__ksymtab_null_ax25_address", i1 false, i1 false}
!11 = !{!"../net/ax25/ax25_addr.c", i32 41, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ax25/ax25_addr.c", i32 68, i32 12}
!14 = !{ptr @__ksymtab_ax2asc, !15, !"__ksymtab_ax2asc", i1 false, i1 false}
!15 = !{!"../net/ax25/ax25_addr.c", i32 74, i32 1}
!16 = !{ptr @__ksymtab_asc2ax, !17, !"__ksymtab_asc2ax", i1 false, i1 false}
!17 = !{!"../net/ax25/ax25_addr.c", i32 109, i32 1}
!18 = !{ptr @__ksymtab_ax25cmp, !19, !"__ksymtab_ax25cmp", i1 false, i1 false}
!19 = !{!"../net/ax25/ax25_addr.c", i32 130, i32 1}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
