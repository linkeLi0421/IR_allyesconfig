; ModuleID = '/llk/IR_all_yes/fs/quota/kqid.c_pt.bc'
source_filename = "../fs/quota/kqid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qid_eq\22, \22a\22\09"
module asm "\09.weak\09__crc_qid_eq\09\09\09\09"
module asm "\09.long\09__crc_qid_eq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qid_eq:\09\09\09\09\09"
module asm "\09.asciz \09\22qid_eq\22\09\09\09\09\09"
module asm "__kstrtabns_qid_eq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qid_lt\22, \22a\22\09"
module asm "\09.weak\09__crc_qid_lt\09\09\09\09"
module asm "\09.long\09__crc_qid_lt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qid_lt:\09\09\09\09\09"
module asm "\09.asciz \09\22qid_lt\22\09\09\09\09\09"
module asm "__kstrtabns_qid_lt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+from_kqid\22, \22a\22\09"
module asm "\09.weak\09__crc_from_kqid\09\09\09\09"
module asm "\09.long\09__crc_from_kqid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_from_kqid:\09\09\09\09\09"
module asm "\09.asciz \09\22from_kqid\22\09\09\09\09\09"
module asm "__kstrtabns_from_kqid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+from_kqid_munged\22, \22a\22\09"
module asm "\09.weak\09__crc_from_kqid_munged\09\09\09\09"
module asm "\09.long\09__crc_from_kqid_munged\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_from_kqid_munged:\09\09\09\09\09"
module asm "\09.asciz \09\22from_kqid_munged\22\09\09\09\09\09"
module asm "__kstrtabns_from_kqid_munged:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qid_valid\22, \22a\22\09"
module asm "\09.weak\09__crc_qid_valid\09\09\09\09"
module asm "\09.long\09__crc_qid_valid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qid_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22qid_valid\22\09\09\09\09\09"
module asm "__kstrtabns_qid_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_qid_eq = external dso_local constant [0 x i8], align 1
@__kstrtabns_qid_eq = external dso_local constant [0 x i8], align 1
@__ksymtab_qid_eq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qid_eq to i32), ptr @__kstrtab_qid_eq, ptr @__kstrtabns_qid_eq }, section "___ksymtab+qid_eq", align 4
@__kstrtab_qid_lt = external dso_local constant [0 x i8], align 1
@__kstrtabns_qid_lt = external dso_local constant [0 x i8], align 1
@__ksymtab_qid_lt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qid_lt to i32), ptr @__kstrtab_qid_lt, ptr @__kstrtabns_qid_lt }, section "___ksymtab+qid_lt", align 4
@__kstrtab_from_kqid = external dso_local constant [0 x i8], align 1
@__kstrtabns_from_kqid = external dso_local constant [0 x i8], align 1
@__ksymtab_from_kqid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @from_kqid to i32), ptr @__kstrtab_from_kqid, ptr @__kstrtabns_from_kqid }, section "___ksymtab+from_kqid", align 4
@__kstrtab_from_kqid_munged = external dso_local constant [0 x i8], align 1
@__kstrtabns_from_kqid_munged = external dso_local constant [0 x i8], align 1
@__ksymtab_from_kqid_munged = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @from_kqid_munged to i32), ptr @__kstrtab_from_kqid_munged, ptr @__kstrtabns_from_kqid_munged }, section "___ksymtab+from_kqid_munged", align 4
@__kstrtab_qid_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_qid_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_qid_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qid_valid to i32), ptr @__kstrtab_qid_valid, ptr @__kstrtabns_qid_valid }, section "___ksymtab+qid_valid", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_from_kqid, ptr @__ksymtab_from_kqid_munged, ptr @__ksymtab_qid_eq, ptr @__ksymtab_qid_lt, ptr @__ksymtab_qid_valid], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @qid_eq([2 x i32] %left.coerce, [2 x i32] %right.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %left.coerce.fca.0.extract = extractvalue [2 x i32] %left.coerce, 0
  %left.coerce.fca.1.extract = extractvalue [2 x i32] %left.coerce, 1
  %right.coerce.fca.0.extract = extractvalue [2 x i32] %right.coerce, 0
  %right.coerce.fca.1.extract = extractvalue [2 x i32] %right.coerce, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %left.coerce.fca.1.extract, i32 %right.coerce.fca.1.extract)
  %cmp.not = icmp eq i32 %left.coerce.fca.1.extract, %right.coerce.fca.1.extract
  br i1 %cmp.not, label %if.end, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %0 = zext i32 %left.coerce.fca.1.extract to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %left.coerce.fca.1.extract, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_cmp4(i32 %left.coerce.fca.0.extract, i32 %right.coerce.fca.0.extract)
  %cmp.i = icmp eq i32 %left.coerce.fca.0.extract, %right.coerce.fca.0.extract
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_cmp4(i32 %left.coerce.fca.0.extract, i32 %right.coerce.fca.0.extract)
  %cmp.i32 = icmp eq i32 %left.coerce.fca.0.extract, %right.coerce.fca.0.extract
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_cmp4(i32 %left.coerce.fca.0.extract, i32 %right.coerce.fca.0.extract)
  %cmp.i33 = icmp eq i32 %left.coerce.fca.0.extract, %right.coerce.fca.0.extract
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/kqid.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 25, 0\0A.popsection", ""() #2, !srcloc !19
  unreachable

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %retval.0 = phi i1 [ %cmp.i33, %sw.bb8 ], [ %cmp.i32, %sw.bb4 ], [ %cmp.i, %sw.bb ], [ false, %entry.sw.epilog_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @qid_lt([2 x i32] %left.coerce, [2 x i32] %right.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %left.coerce.fca.0.extract = extractvalue [2 x i32] %left.coerce, 0
  %left.coerce.fca.1.extract = extractvalue [2 x i32] %left.coerce, 1
  %right.coerce.fca.0.extract = extractvalue [2 x i32] %right.coerce, 0
  %right.coerce.fca.1.extract = extractvalue [2 x i32] %right.coerce, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %left.coerce.fca.1.extract, i32 %right.coerce.fca.1.extract)
  %cmp = icmp ult i32 %left.coerce.fca.1.extract, %right.coerce.fca.1.extract
  br i1 %cmp, label %entry.sw.epilog_crit_edge, label %if.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %left.coerce.fca.1.extract, i32 %right.coerce.fca.1.extract)
  %cmp4 = icmp ugt i32 %left.coerce.fca.1.extract, %right.coerce.fca.1.extract
  br i1 %cmp4, label %if.end.sw.epilog_crit_edge, label %if.end6

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end6:                                          ; preds = %if.end
  %0 = zext i32 %left.coerce.fca.1.extract to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %left.coerce.fca.1.extract, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_cmp4(i32 %left.coerce.fca.0.extract, i32 %right.coerce.fca.0.extract)
  %cmp.i = icmp ult i32 %left.coerce.fca.0.extract, %right.coerce.fca.0.extract
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_cmp4(i32 %left.coerce.fca.0.extract, i32 %right.coerce.fca.0.extract)
  %cmp.i39 = icmp ult i32 %left.coerce.fca.0.extract, %right.coerce.fca.0.extract
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_cmp4(i32 %left.coerce.fca.0.extract, i32 %right.coerce.fca.0.extract)
  %cmp.i40 = icmp ult i32 %left.coerce.fca.0.extract, %right.coerce.fca.0.extract
  br label %sw.epilog

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/kqid.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 51, 0\0A.popsection", ""() #2, !srcloc !20
  unreachable

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb9, %sw.bb, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %retval.0 = phi i1 [ %cmp.i40, %sw.bb13 ], [ %cmp.i39, %sw.bb9 ], [ %cmp.i, %sw.bb ], [ true, %entry.sw.epilog_crit_edge ], [ false, %if.end.sw.epilog_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @from_kqid(ptr noundef %targ, [2 x i32] %kqid.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %kqid.coerce.fca.0.extract = extractvalue [2 x i32] %kqid.coerce, 0
  %kqid.coerce.fca.1.extract = extractvalue [2 x i32] %kqid.coerce, 1
  %0 = zext i32 %kqid.coerce.fca.1.extract to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %kqid.coerce.fca.1.extract, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %kqid.coerce.fca.0.extract, 0
  %call = tail call i32 @from_kuid(ptr noundef %targ, [1 x i32] %.fca.0.insert) #2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %.fca.0.insert13 = insertvalue [1 x i32] poison, i32 %kqid.coerce.fca.0.extract, 0
  %call3 = tail call i32 @from_kgid(ptr noundef %targ, [1 x i32] %.fca.0.insert13) #2
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %.fca.0.insert16 = insertvalue [1 x i32] poison, i32 %kqid.coerce.fca.0.extract, 0
  %call6 = tail call i32 @from_kprojid(ptr noundef %targ, [1 x i32] %.fca.0.insert16) #2
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/kqid.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 78, 0\0A.popsection", ""() #2, !srcloc !21
  unreachable

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call6, %sw.bb4 ], [ %call3, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kprojid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @from_kqid_munged(ptr noundef %targ, [2 x i32] %kqid.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %kqid.coerce.fca.0.extract = extractvalue [2 x i32] %kqid.coerce, 0
  %kqid.coerce.fca.1.extract = extractvalue [2 x i32] %kqid.coerce, 1
  %0 = zext i32 %kqid.coerce.fca.1.extract to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %kqid.coerce.fca.1.extract, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %kqid.coerce.fca.0.extract, 0
  %call = tail call i32 @from_kuid_munged(ptr noundef %targ, [1 x i32] %.fca.0.insert) #2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %.fca.0.insert13 = insertvalue [1 x i32] poison, i32 %kqid.coerce.fca.0.extract, 0
  %call3 = tail call i32 @from_kgid_munged(ptr noundef %targ, [1 x i32] %.fca.0.insert13) #2
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %.fca.0.insert16 = insertvalue [1 x i32] poison, i32 %kqid.coerce.fca.0.extract, 0
  %call6 = tail call i32 @from_kprojid_munged(ptr noundef %targ, [1 x i32] %.fca.0.insert16) #2
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/kqid.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 111, 0\0A.popsection", ""() #2, !srcloc !22
  unreachable

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call6, %sw.bb4 ], [ %call3, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kprojid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @qid_valid([2 x i32] %qid.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %qid.coerce.fca.1.extract = extractvalue [2 x i32] %qid.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %qid.coerce.fca.1.extract)
  %switch = icmp ult i32 %qid.coerce.fca.1.extract, 3
  br i1 %switch, label %sw.epilog, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/kqid.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #2, !srcloc !23
  unreachable

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %qid.coerce.fca.0.extract = extractvalue [2 x i32] %qid.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %qid.coerce.fca.0.extract)
  %retval.0 = icmp ne i32 %qid.coerce.fca.0.extract, -1
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_qid_eq, !1, !"__ksymtab_qid_eq", i1 false, i1 false}
!1 = !{!"../fs/quota/kqid.c", i32 28, i32 1}
!2 = !{ptr @__ksymtab_qid_lt, !3, !"__ksymtab_qid_lt", i1 false, i1 false}
!3 = !{!"../fs/quota/kqid.c", i32 54, i32 1}
!4 = !{ptr @__ksymtab_from_kqid, !5, !"__ksymtab_from_kqid", i1 false, i1 false}
!5 = !{!"../fs/quota/kqid.c", i32 81, i32 1}
!6 = !{ptr @__ksymtab_from_kqid_munged, !7, !"__ksymtab_from_kqid_munged", i1 false, i1 false}
!7 = !{!"../fs/quota/kqid.c", i32 114, i32 1}
!8 = !{ptr @__ksymtab_qid_valid, !9, !"__ksymtab_qid_valid", i1 false, i1 false}
!9 = !{!"../fs/quota/kqid.c", i32 133, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2152539809, i64 2152540288, i64 2152539846, i64 2152539902, i64 2152539936, i64 2152539960, i64 2152540001, i64 2152540022, i64 2152540050, i64 2152540084}
!20 = !{i64 2152542464, i64 2152542943, i64 2152542501, i64 2152542557, i64 2152542591, i64 2152542615, i64 2152542656, i64 2152542677, i64 2152542705, i64 2152542739}
!21 = !{i64 2152545119, i64 2152545598, i64 2152545156, i64 2152545212, i64 2152545246, i64 2152545270, i64 2152545311, i64 2152545332, i64 2152545360, i64 2152545394}
!22 = !{i64 2152547851, i64 2152548331, i64 2152547888, i64 2152547944, i64 2152547978, i64 2152548002, i64 2152548043, i64 2152548064, i64 2152548092, i64 2152548126}
!23 = !{i64 2152554820, i64 2152555300, i64 2152554857, i64 2152554913, i64 2152554947, i64 2152554971, i64 2152555012, i64 2152555033, i64 2152555061, i64 2152555095}
