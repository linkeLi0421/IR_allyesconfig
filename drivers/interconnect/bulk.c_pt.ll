; ModuleID = '/llk/IR_all_yes/drivers/interconnect/bulk.c_pt.bc'
source_filename = "../drivers/interconnect/bulk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_icc_bulk_get\22, \22a\22\09"
module asm "\09.weak\09__crc_of_icc_bulk_get\09\09\09\09"
module asm "\09.long\09__crc_of_icc_bulk_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_icc_bulk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_icc_bulk_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_icc_bulk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+icc_bulk_put\22, \22a\22\09"
module asm "\09.weak\09__crc_icc_bulk_put\09\09\09\09"
module asm "\09.long\09__crc_icc_bulk_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_bulk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_bulk_put\22\09\09\09\09\09"
module asm "__kstrtabns_icc_bulk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+icc_bulk_set_bw\22, \22a\22\09"
module asm "\09.weak\09__crc_icc_bulk_set_bw\09\09\09\09"
module asm "\09.long\09__crc_icc_bulk_set_bw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_bulk_set_bw:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_bulk_set_bw\22\09\09\09\09\09"
module asm "__kstrtabns_icc_bulk_set_bw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+icc_bulk_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_icc_bulk_enable\09\09\09\09"
module asm "\09.long\09__crc_icc_bulk_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_bulk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_bulk_enable\22\09\09\09\09\09"
module asm "__kstrtabns_icc_bulk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+icc_bulk_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_icc_bulk_disable\09\09\09\09"
module asm "\09.long\09__crc_icc_bulk_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_bulk_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_bulk_disable\22\09\09\09\09\09"
module asm "__kstrtabns_icc_bulk_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.icc_bulk_data = type { ptr, ptr, i32, i32 }

@of_icc_bulk_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 26, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"of_icc_get() failed on path %s (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"of_icc_bulk_get\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/interconnect/bulk.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_icc_bulk_get._entry_ptr = internal global ptr @of_icc_bulk_get._entry, section ".printk_index", align 4
@__kstrtab_of_icc_bulk_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_icc_bulk_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_icc_bulk_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_icc_bulk_get to i32), ptr @__kstrtab_of_icc_bulk_get, ptr @__kstrtabns_of_icc_bulk_get }, section "___ksymtab_gpl+of_icc_bulk_get", align 4
@__kstrtab_icc_bulk_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_bulk_put = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_bulk_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_bulk_put to i32), ptr @__kstrtab_icc_bulk_put, ptr @__kstrtabns_icc_bulk_put }, section "___ksymtab_gpl+icc_bulk_put", align 4
@icc_bulk_set_bw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013icc_set_bw() failed on path %s (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"icc_bulk_set_bw\00", [16 x i8] zeroinitializer }, align 32
@icc_bulk_set_bw._entry_ptr = internal global ptr @icc_bulk_set_bw._entry, section ".printk_index", align 4
@__kstrtab_icc_bulk_set_bw = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_bulk_set_bw = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_bulk_set_bw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_bulk_set_bw to i32), ptr @__kstrtab_icc_bulk_set_bw, ptr @__kstrtabns_icc_bulk_set_bw }, section "___ksymtab_gpl+icc_bulk_set_bw", align 4
@icc_bulk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013icc_enable() failed on path %s (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"icc_bulk_enable\00", [16 x i8] zeroinitializer }, align 32
@icc_bulk_enable._entry_ptr = internal global ptr @icc_bulk_enable._entry, section ".printk_index", align 4
@__kstrtab_icc_bulk_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_bulk_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_bulk_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_bulk_enable to i32), ptr @__kstrtab_icc_bulk_enable, ptr @__kstrtabns_icc_bulk_enable }, section "___ksymtab_gpl+icc_bulk_enable", align 4
@__kstrtab_icc_bulk_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_bulk_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_bulk_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_bulk_disable to i32), ptr @__kstrtab_icc_bulk_disable, ptr @__kstrtabns_icc_bulk_disable }, section "___ksymtab_gpl+icc_bulk_disable", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 25, i32 5 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 70, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [31 x i8] c"../drivers/interconnect/bulk.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 93, i32 4 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_icc_bulk_disable, ptr @__ksymtab_icc_bulk_enable, ptr @__ksymtab_icc_bulk_put, ptr @__ksymtab_icc_bulk_set_bw, ptr @__ksymtab_of_icc_bulk_get, ptr @icc_bulk_enable._entry, ptr @icc_bulk_enable._entry_ptr, ptr @icc_bulk_set_bw._entry, ptr @icc_bulk_set_bw._entry_ptr, ptr @of_icc_bulk_get._entry, ptr @of_icc_bulk_get._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_icc_bulk_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icc_bulk_set_bw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icc_bulk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_icc_bulk_get(ptr noundef %dev, i32 noundef %num_paths, ptr nocapture noundef %paths) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_paths)
  %cmp36 = icmp sgt i32 %num_paths, 0
  br i1 %cmp36, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.icc_bulk_data, ptr %paths, i32 %i.037
  %name = getelementptr %struct.icc_bulk_data, ptr %paths, i32 %i.037, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call ptr @of_icc_get(ptr noundef %dev, ptr noundef %1) #3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %3 = ptrtoint ptr %call to i32
  %cmp8.not = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp8.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %5, i32 noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.037)
  %cmp7.i.not = icmp eq i32 %i.037, 0
  br i1 %cmp7.i.not, label %if.end.cleanup_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %dec8.i.in = phi i32 [ %dec8.i, %while.body.i.while.body.i_crit_edge ], [ %i.037, %if.end.while.body.i_crit_edge ]
  %dec8.i = add nsw i32 %dec8.i.in, -1
  %arrayidx.i = getelementptr %struct.icc_bulk_data, ptr %paths, i32 %dec8.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call void @icc_put(ptr noundef %8) #3
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx.i, align 4
  %cmp.i33.not = icmp eq i32 %dec8.i, 0
  br i1 %cmp.i33.not, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %num_paths
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %3, %while.body.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @icc_bulk_put(i32 noundef %num_paths, ptr nocapture noundef %paths) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dec6 = add i32 %num_paths, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec6)
  %cmp7 = icmp sgt i32 %dec6, -1
  br i1 %cmp7, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %dec8 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec6, %entry.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.icc_bulk_data, ptr %paths, i32 %dec8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @icc_put(ptr noundef %1) #3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  %dec = add nsw i32 %dec8, -1
  %cmp = icmp sgt i32 %dec8, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @icc_bulk_set_bw(i32 noundef %num_paths, ptr nocapture noundef readonly %paths) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_paths)
  %cmp18 = icmp sgt i32 %num_paths, 0
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.icc_bulk_data, ptr %paths, i32 %i.019
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %avg_bw = getelementptr %struct.icc_bulk_data, ptr %paths, i32 %i.019, i32 2
  %2 = ptrtoint ptr %avg_bw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %avg_bw, align 4
  %peak_bw = getelementptr %struct.icc_bulk_data, ptr %paths, i32 %i.019, i32 3
  %4 = ptrtoint ptr %peak_bw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %peak_bw, align 4
  %call = tail call i32 @icc_set_bw(ptr noundef %1, i32 noundef %3, i32 noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %name = getelementptr %struct.icc_bulk_data, ptr %paths, i32 %i.019, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %7, i32 noundef %call) #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %num_paths
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @icc_bulk_enable(i32 noundef %num_paths, ptr nocapture noundef readonly %paths) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_paths)
  %cmp14 = icmp sgt i32 %num_paths, 0
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.icc_bulk_data, ptr %paths, i32 %i.015
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @icc_enable(ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %do.end

do.end:                                           ; preds = %for.body
  %name = getelementptr %struct.icc_bulk_data, ptr %paths, i32 %i.015, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %3, i32 noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.015)
  %cmp3.i.not = icmp eq i32 %i.015, 0
  br i1 %cmp3.i.not, label %do.end.cleanup_crit_edge, label %do.end.while.body.i_crit_edge

do.end.while.body.i_crit_edge:                    ; preds = %do.end
  br label %while.body.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.while.body.i_crit_edge
  %dec4.i.in = phi i32 [ %dec4.i, %while.body.i.while.body.i_crit_edge ], [ %i.015, %do.end.while.body.i_crit_edge ]
  %dec4.i = add nsw i32 %dec4.i.in, -1
  %arrayidx.i = getelementptr %struct.icc_bulk_data, ptr %paths, i32 %dec4.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @icc_disable(ptr noundef %5) #3
  %cmp.i.not = icmp eq i32 %dec4.i, 0
  br i1 %cmp.i.not, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %num_paths
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call, %while.body.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @icc_bulk_disable(i32 noundef %num_paths, ptr nocapture noundef readonly %paths) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dec2 = add i32 %num_paths, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec2)
  %cmp3 = icmp sgt i32 %dec2, -1
  br i1 %cmp3, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %dec4 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec2, %entry.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.icc_bulk_data, ptr %paths, i32 %dec4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @icc_disable(ptr noundef %1) #3
  %dec = add nsw i32 %dec4, -1
  %cmp = icmp sgt i32 %dec4, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/interconnect/bulk.c", i32 25, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @of_icc_bulk_get._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @of_icc_bulk_get._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_of_icc_bulk_get, !9, !"__ksymtab_of_icc_bulk_get", i1 false, i1 false}
!9 = !{!"../drivers/interconnect/bulk.c", i32 39, i32 1}
!10 = !{ptr @__ksymtab_icc_bulk_put, !11, !"__ksymtab_icc_bulk_put", i1 false, i1 false}
!11 = !{!"../drivers/interconnect/bulk.c", i32 53, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/interconnect/bulk.c", i32 70, i32 4}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @icc_bulk_set_bw._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @icc_bulk_set_bw._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_icc_bulk_set_bw, !18, !"__ksymtab_icc_bulk_set_bw", i1 false, i1 false}
!18 = !{!"../drivers/interconnect/bulk.c", i32 77, i32 1}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/interconnect/bulk.c", i32 93, i32 4}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @icc_bulk_enable._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @icc_bulk_enable._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_icc_bulk_enable, !25, !"__ksymtab_icc_bulk_enable", i1 false, i1 false}
!25 = !{!"../drivers/interconnect/bulk.c", i32 105, i32 1}
!26 = !{ptr @__ksymtab_icc_bulk_disable, !27, !"__ksymtab_icc_bulk_disable", i1 false, i1 false}
!27 = !{!"../drivers/interconnect/bulk.c", i32 117, i32 1}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
