; ModuleID = '/llk/IR_all_yes/fs/unicode/utf8-core.c_pt.bc'
source_filename = "../fs/unicode/utf8-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+utf8_validate\22, \22a\22\09"
module asm "\09.weak\09__crc_utf8_validate\09\09\09\09"
module asm "\09.long\09__crc_utf8_validate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf8_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22utf8_validate\22\09\09\09\09\09"
module asm "__kstrtabns_utf8_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+utf8_strncmp\22, \22a\22\09"
module asm "\09.weak\09__crc_utf8_strncmp\09\09\09\09"
module asm "\09.long\09__crc_utf8_strncmp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf8_strncmp:\09\09\09\09\09"
module asm "\09.asciz \09\22utf8_strncmp\22\09\09\09\09\09"
module asm "__kstrtabns_utf8_strncmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+utf8_strncasecmp\22, \22a\22\09"
module asm "\09.weak\09__crc_utf8_strncasecmp\09\09\09\09"
module asm "\09.long\09__crc_utf8_strncasecmp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf8_strncasecmp:\09\09\09\09\09"
module asm "\09.asciz \09\22utf8_strncasecmp\22\09\09\09\09\09"
module asm "__kstrtabns_utf8_strncasecmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+utf8_strncasecmp_folded\22, \22a\22\09"
module asm "\09.weak\09__crc_utf8_strncasecmp_folded\09\09\09\09"
module asm "\09.long\09__crc_utf8_strncasecmp_folded\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf8_strncasecmp_folded:\09\09\09\09\09"
module asm "\09.asciz \09\22utf8_strncasecmp_folded\22\09\09\09\09\09"
module asm "__kstrtabns_utf8_strncasecmp_folded:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+utf8_casefold\22, \22a\22\09"
module asm "\09.weak\09__crc_utf8_casefold\09\09\09\09"
module asm "\09.long\09__crc_utf8_casefold\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf8_casefold:\09\09\09\09\09"
module asm "\09.asciz \09\22utf8_casefold\22\09\09\09\09\09"
module asm "__kstrtabns_utf8_casefold:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+utf8_casefold_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_utf8_casefold_hash\09\09\09\09"
module asm "\09.long\09__crc_utf8_casefold_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf8_casefold_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22utf8_casefold_hash\22\09\09\09\09\09"
module asm "__kstrtabns_utf8_casefold_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+utf8_normalize\22, \22a\22\09"
module asm "\09.weak\09__crc_utf8_normalize\09\09\09\09"
module asm "\09.long\09__crc_utf8_normalize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf8_normalize:\09\09\09\09\09"
module asm "\09.asciz \09\22utf8_normalize\22\09\09\09\09\09"
module asm "__kstrtabns_utf8_normalize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+utf8_load\22, \22a\22\09"
module asm "\09.weak\09__crc_utf8_load\09\09\09\09"
module asm "\09.long\09__crc_utf8_load\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf8_load:\09\09\09\09\09"
module asm "\09.asciz \09\22utf8_load\22\09\09\09\09\09"
module asm "__kstrtabns_utf8_load:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+utf8_unload\22, \22a\22\09"
module asm "\09.weak\09__crc_utf8_unload\09\09\09\09"
module asm "\09.long\09__crc_utf8_unload\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf8_unload:\09\09\09\09\09"
module asm "\09.asciz \09\22utf8_unload\22\09\09\09\09\09"
module asm "__kstrtabns_utf8_unload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.utf8cursor = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i16, i16, [12 x i8] }
%struct.anon = type { i32, i32 }
%struct.unicode_map = type { i32, [2 x ptr], ptr }
%struct.utf8data_table = type { ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.utf8data = type { i32, i32 }

@__kstrtab_utf8_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf8_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_utf8_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf8_validate to i32), ptr @__kstrtab_utf8_validate, ptr @__kstrtabns_utf8_validate }, section "___ksymtab+utf8_validate", align 4
@__kstrtab_utf8_strncmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf8_strncmp = external dso_local constant [0 x i8], align 1
@__ksymtab_utf8_strncmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf8_strncmp to i32), ptr @__kstrtab_utf8_strncmp, ptr @__kstrtabns_utf8_strncmp }, section "___ksymtab+utf8_strncmp", align 4
@__kstrtab_utf8_strncasecmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf8_strncasecmp = external dso_local constant [0 x i8], align 1
@__ksymtab_utf8_strncasecmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf8_strncasecmp to i32), ptr @__kstrtab_utf8_strncasecmp, ptr @__kstrtabns_utf8_strncasecmp }, section "___ksymtab+utf8_strncasecmp", align 4
@__kstrtab_utf8_strncasecmp_folded = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf8_strncasecmp_folded = external dso_local constant [0 x i8], align 1
@__ksymtab_utf8_strncasecmp_folded = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf8_strncasecmp_folded to i32), ptr @__kstrtab_utf8_strncasecmp_folded, ptr @__kstrtabns_utf8_strncasecmp_folded }, section "___ksymtab+utf8_strncasecmp_folded", align 4
@__kstrtab_utf8_casefold = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf8_casefold = external dso_local constant [0 x i8], align 1
@__ksymtab_utf8_casefold = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf8_casefold to i32), ptr @__kstrtab_utf8_casefold, ptr @__kstrtabns_utf8_casefold }, section "___ksymtab+utf8_casefold", align 4
@__kstrtab_utf8_casefold_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf8_casefold_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_utf8_casefold_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf8_casefold_hash to i32), ptr @__kstrtab_utf8_casefold_hash, ptr @__kstrtabns_utf8_casefold_hash }, section "___ksymtab+utf8_casefold_hash", align 4
@__kstrtab_utf8_normalize = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf8_normalize = external dso_local constant [0 x i8], align 1
@__ksymtab_utf8_normalize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf8_normalize to i32), ptr @__kstrtab_utf8_normalize, ptr @__kstrtabns_utf8_normalize }, section "___ksymtab+utf8_normalize", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"utf8_data_table\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:utf8_data_table\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"um->tables\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_utf8_load = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf8_load = external dso_local constant [0 x i8], align 1
@__ksymtab_utf8_load = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf8_load to i32), ptr @__kstrtab_utf8_load, ptr @__kstrtabns_utf8_load }, section "___ksymtab+utf8_load", align 4
@__kstrtab_utf8_unload = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf8_unload = external dso_local constant [0 x i8], align 1
@__ksymtab_utf8_unload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf8_unload to i32), ptr @__kstrtab_utf8_unload, ptr @__kstrtabns_utf8_unload }, section "___ksymtab+utf8_unload", align 4
@__UNIQUE_ID_file182 = internal constant [32 x i8] c"unicode.file=fs/unicode/unicode\00", section ".modinfo", align 1
@__UNIQUE_ID_license183 = internal constant [23 x i8] c"unicode.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 184, i32 15 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [26 x i8] c"../fs/unicode/utf8-core.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 201, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_file182, ptr @__UNIQUE_ID_license183, ptr @__ksymtab_utf8_casefold, ptr @__ksymtab_utf8_casefold_hash, ptr @__ksymtab_utf8_load, ptr @__ksymtab_utf8_normalize, ptr @__ksymtab_utf8_strncasecmp, ptr @__ksymtab_utf8_strncasecmp_folded, ptr @__ksymtab_utf8_strncmp, ptr @__ksymtab_utf8_unload, ptr @__ksymtab_utf8_validate, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @utf8_validate(ptr noundef %um, ptr nocapture noundef readonly %str) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.qstr, ptr %str, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %2 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %str, align 8
  %call = tail call i32 @utf8nlen(ptr noundef %um, i32 noundef 0, ptr noundef %1, i32 noundef %3) #4
  %call.lobit = ashr i32 %call, 31
  ret i32 %call.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8nlen(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @utf8_strncmp(ptr noundef %um, ptr nocapture noundef readonly %s1, ptr nocapture noundef readonly %s2) #0 align 64 {
entry:
  %cur1 = alloca %struct.utf8cursor, align 4
  %cur2 = alloca %struct.utf8cursor, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cur1) #4
  %0 = call ptr @memset(ptr %cur1, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cur2) #4
  %1 = call ptr @memset(ptr %cur2, i32 255, i32 48)
  %name = getelementptr inbounds %struct.qstr, ptr %s1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %4 = ptrtoint ptr %s1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s1, align 8
  %call = call i32 @utf8ncursor(ptr noundef nonnull %cur1, ptr noundef %um, i32 noundef 0, ptr noundef %3, i32 noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1 = getelementptr inbounds %struct.qstr, ptr %s2, i32 0, i32 1
  %6 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name1, align 8
  %8 = ptrtoint ptr %s2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s2, align 8
  %call3 = call i32 @utf8ncursor(ptr noundef nonnull %cur2, ptr noundef %um, i32 noundef 0, ptr noundef %7, i32 noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end.do.body_crit_edge
  %call7 = call i32 @utf8byte(ptr noundef nonnull %cur1) #4
  %call8 = call i32 @utf8byte(ptr noundef nonnull %cur2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp9 = icmp slt i32 %call7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp10 = icmp slt i32 %call8, 0
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp10
  br i1 %or.cond, label %do.body.cleanup_crit_edge, label %if.end12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %call8)
  %cmp13.not = icmp eq i32 %call7, %call8
  br i1 %cmp13.not, label %do.cond, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond:                                          ; preds = %if.end12
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.cond.cleanup_crit_edge ], [ 1, %if.end12.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cur2) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cur1) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8ncursor(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @utf8_strncasecmp(ptr noundef %um, ptr nocapture noundef readonly %s1, ptr nocapture noundef readonly %s2) #0 align 64 {
entry:
  %cur1 = alloca %struct.utf8cursor, align 4
  %cur2 = alloca %struct.utf8cursor, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cur1) #4
  %0 = call ptr @memset(ptr %cur1, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cur2) #4
  %1 = call ptr @memset(ptr %cur2, i32 255, i32 48)
  %name = getelementptr inbounds %struct.qstr, ptr %s1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %4 = ptrtoint ptr %s1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s1, align 8
  %call = call i32 @utf8ncursor(ptr noundef nonnull %cur1, ptr noundef %um, i32 noundef 1, ptr noundef %3, i32 noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1 = getelementptr inbounds %struct.qstr, ptr %s2, i32 0, i32 1
  %6 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name1, align 8
  %8 = ptrtoint ptr %s2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s2, align 8
  %call3 = call i32 @utf8ncursor(ptr noundef nonnull %cur2, ptr noundef %um, i32 noundef 1, ptr noundef %7, i32 noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end.do.body_crit_edge
  %call7 = call i32 @utf8byte(ptr noundef nonnull %cur1) #4
  %call8 = call i32 @utf8byte(ptr noundef nonnull %cur2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp9 = icmp slt i32 %call7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp10 = icmp slt i32 %call8, 0
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp10
  br i1 %or.cond, label %do.body.cleanup_crit_edge, label %if.end12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %call8)
  %cmp13.not = icmp eq i32 %call7, %call8
  br i1 %cmp13.not, label %do.cond, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond:                                          ; preds = %if.end12
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.cond.cleanup_crit_edge ], [ 1, %if.end12.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cur2) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cur1) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @utf8_strncasecmp_folded(ptr noundef %um, ptr nocapture noundef readonly %cf, ptr nocapture noundef readonly %s1) #0 align 64 {
entry:
  %cur1 = alloca %struct.utf8cursor, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cur1) #4
  %0 = call ptr @memset(ptr %cur1, i32 255, i32 48)
  %name = getelementptr inbounds %struct.qstr, ptr %s1, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 8
  %3 = ptrtoint ptr %s1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s1, align 8
  %call = call i32 @utf8ncursor(ptr noundef nonnull %cur1, ptr noundef %um, i32 noundef 1, ptr noundef %2, i32 noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %name2 = getelementptr inbounds %struct.qstr, ptr %cf, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %i.0 = phi i32 [ %inc, %do.cond.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %call1 = call i32 @utf8byte(ptr noundef nonnull %cur1) #4
  %inc = add i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp3 = icmp slt i32 %call1, 0
  br i1 %cmp3, label %do.body.cleanup_crit_edge, label %if.end6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %do.body
  %5 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name2, align 8
  %arrayidx = getelementptr i8, ptr %6, i32 %i.0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %conv)
  %cmp7.not = icmp eq i32 %call1, %conv
  br i1 %cmp7.not, label %do.cond, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond:                                          ; preds = %if.end6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.cond.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cur1) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @utf8_casefold(ptr noundef %um, ptr nocapture noundef readonly %str, ptr nocapture noundef writeonly %dest, i32 noundef %dlen) #0 align 64 {
entry:
  %cur = alloca %struct.utf8cursor, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cur) #4
  %0 = call ptr @memset(ptr %cur, i32 255, i32 48)
  %name = getelementptr inbounds %struct.qstr, ptr %str, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 8
  %3 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %str, align 8
  %call = call i32 @utf8ncursor(ptr noundef nonnull %cur, ptr noundef %um, i32 noundef 1, ptr noundef %2, i32 noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dlen)
  %cmp124.not = icmp eq i32 %dlen, 0
  %or.cond = or i1 %cmp, %cmp124.not
  br i1 %or.cond, label %entry.cleanup9_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup9

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %nlen.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call2 = call i32 @utf8byte(ptr noundef nonnull %cur) #4
  %conv = trunc i32 %call2 to i8
  %arrayidx = getelementptr i8, ptr %dest, i32 %nlen.025
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx, align 1
  %6 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %for.inc [
    i32 0, label %for.body.cleanup9_crit_edge
    i32 -1, label %for.body.cleanup9.loopexit_crit_edge
  ]

for.body.cleanup9.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup9.loopexit

for.body.cleanup9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup9

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %nlen.025, 1
  %exitcond.not = icmp eq i32 %inc, %dlen
  br i1 %exitcond.not, label %for.inc.cleanup9.loopexit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup9.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup9.loopexit

cleanup9.loopexit:                                ; preds = %for.inc.cleanup9.loopexit_crit_edge, %for.body.cleanup9.loopexit_crit_edge
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup9.loopexit, %for.body.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup9_crit_edge ], [ -22, %cleanup9.loopexit ], [ %nlen.025, %for.body.cleanup9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cur) #4
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @utf8_casefold_hash(ptr noundef %um, ptr noundef %salt, ptr nocapture noundef %str) #0 align 64 {
entry:
  %cur = alloca %struct.utf8cursor, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cur) #4
  %0 = call ptr @memset(ptr %cur, i32 255, i32 48)
  %name = getelementptr inbounds %struct.qstr, ptr %str, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 8
  %3 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %str, align 8
  %call = call i32 @utf8ncursor(ptr noundef nonnull %cur, ptr noundef %um, i32 noundef 1, ptr noundef %2, i32 noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %5 = ptrtoint ptr %salt to i32
  %call116 = call i32 @utf8byte(ptr noundef nonnull %cur) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool.not17 = icmp eq i32 %call116, 0
  br i1 %tobool.not17, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %if.end4.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call119 = phi i32 [ %call1, %if.end4.while.body_crit_edge ], [ %call116, %while.cond.preheader.while.body_crit_edge ]
  %hash.018 = phi i32 [ %mul.i, %if.end4.while.body_crit_edge ], [ %5, %while.cond.preheader.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp2 = icmp slt i32 %call119, 0
  br i1 %cmp2, label %while.body.cleanup_crit_edge, label %if.end4

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %while.body
  %conv5 = and i32 %call119, 255
  %shl.i = shl nuw nsw i32 %conv5, 4
  %add.i = add i32 %shl.i, %hash.018
  %shr.i = lshr i32 %conv5, 4
  %add1.i = add i32 %add.i, %shr.i
  %mul.i = mul i32 %add1.i, 11
  %call1 = call i32 @utf8byte(ptr noundef nonnull %cur) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end4.while.end_crit_edge, label %if.end4.while.body_crit_edge

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end4.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %hash.0.lcssa = phi i32 [ %5, %while.cond.preheader.while.end_crit_edge ], [ %mul.i, %if.end4.while.end_crit_edge ]
  %mul.i.i.i = mul i32 %hash.0.lcssa, 1640531527
  %hash8 = getelementptr inbounds %struct.anon, ptr %str, i32 0, i32 1
  %6 = ptrtoint ptr %hash8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul.i.i.i, ptr %hash8, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cur) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @utf8_normalize(ptr noundef %um, ptr nocapture noundef readonly %str, ptr nocapture noundef writeonly %dest, i32 noundef %dlen) #0 align 64 {
entry:
  %cur = alloca %struct.utf8cursor, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cur) #4
  %0 = call ptr @memset(ptr %cur, i32 255, i32 48)
  %name = getelementptr inbounds %struct.qstr, ptr %str, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 8
  %3 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %str, align 8
  %call = call i32 @utf8ncursor(ptr noundef nonnull %cur, ptr noundef %um, i32 noundef 0, ptr noundef %2, i32 noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dlen)
  %cmp124.not = icmp eq i32 %dlen, 0
  %or.cond = or i1 %cmp, %cmp124.not
  br i1 %or.cond, label %entry.cleanup9_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup9

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %nlen.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call2 = call i32 @utf8byte(ptr noundef nonnull %cur) #4
  %conv = trunc i32 %call2 to i8
  %arrayidx = getelementptr i8, ptr %dest, i32 %nlen.025
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx, align 1
  %6 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %call2, label %for.inc [
    i32 0, label %for.body.cleanup9_crit_edge
    i32 -1, label %for.body.cleanup9.loopexit_crit_edge
  ]

for.body.cleanup9.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup9.loopexit

for.body.cleanup9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup9

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %nlen.025, 1
  %exitcond.not = icmp eq i32 %inc, %dlen
  br i1 %exitcond.not, label %for.inc.cleanup9.loopexit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup9.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup9.loopexit

cleanup9.loopexit:                                ; preds = %for.inc.cleanup9.loopexit_crit_edge, %for.body.cleanup9.loopexit_crit_edge
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup9.loopexit, %for.body.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup9_crit_edge ], [ -22, %cleanup9.loopexit ], [ %nlen.025, %for.body.cleanup9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cur) #4
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @utf8_load(i32 noundef %version) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %version, ptr %call7.i.i, align 8
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %tables62 = getelementptr inbounds %struct.unicode_map, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %tables62 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %tables62, align 4
  br label %if.end10

cond.end:                                         ; preds = %if.end
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1) #4
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str) #4
  %tables = getelementptr inbounds %struct.unicode_map, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %tables to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %tables, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %cond.end.out_free_um_crit_edge, label %cond.end.if.end10_crit_edge

cond.end.if.end10_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

cond.end.out_free_um_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_um

if.end10:                                         ; preds = %cond.end.if.end10_crit_edge, %cond.end.thread
  %tables64 = phi ptr [ %tables62, %cond.end.thread ], [ %tables, %cond.end.if.end10_crit_edge ]
  %call11 = tail call i32 @utf8version_is_supported(ptr noundef nonnull %call7.i.i, i32 noundef %version) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.out_symbol_put_crit_edge, label %if.end14

if.end10.out_symbol_put_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_symbol_put

if.end14:                                         ; preds = %if.end10
  %4 = ptrtoint ptr %tables64 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tables64, align 4
  %utf8nfdidata = getelementptr inbounds %struct.utf8data_table, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %utf8nfdidata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %utf8nfdidata, align 4
  %utf8nfdidata_size = getelementptr inbounds %struct.utf8data_table, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %utf8nfdidata_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %utf8nfdidata_size, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call7.i.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end14
  %i.0.in.i = phi i32 [ %9, %if.end14 ], [ %i.0.i, %while.cond.i.while.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, -1
  %arrayidx.i = getelementptr %struct.utf8data, ptr %7, i32 %i.0.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %cmp.i = icmp ugt i32 %13, %11
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %find_table_version.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

find_table_version.exit:                          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp3.i = icmp ult i32 %13, %11
  %.arrayidx.i = select i1 %cmp3.i, ptr null, ptr %arrayidx.i
  %ntab = getelementptr inbounds %struct.unicode_map, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %ntab to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.arrayidx.i, ptr %ntab, align 4
  %tobool21.not = icmp eq ptr %.arrayidx.i, null
  br i1 %tobool21.not, label %find_table_version.exit.out_symbol_put_crit_edge, label %if.end23

find_table_version.exit.out_symbol_put_crit_edge: ; preds = %find_table_version.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_symbol_put

if.end23:                                         ; preds = %find_table_version.exit
  %utf8nfdicfdata = getelementptr inbounds %struct.utf8data_table, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %utf8nfdicfdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %utf8nfdicfdata, align 4
  %utf8nfdicfdata_size = getelementptr inbounds %struct.utf8data_table, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %utf8nfdicfdata_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %utf8nfdicfdata_size, align 4
  br label %while.cond.i57

while.cond.i57:                                   ; preds = %while.cond.i57.while.cond.i57_crit_edge, %if.end23
  %i.0.in.i53 = phi i32 [ %18, %if.end23 ], [ %i.0.i54, %while.cond.i57.while.cond.i57_crit_edge ]
  %i.0.i54 = add i32 %i.0.in.i53, -1
  %arrayidx.i55 = getelementptr %struct.utf8data, ptr %16, i32 %i.0.i54
  %19 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i55, align 4
  %cmp.i56 = icmp ugt i32 %20, %11
  br i1 %cmp.i56, label %while.cond.i57.while.cond.i57_crit_edge, label %find_table_version.exit60

while.cond.i57.while.cond.i57_crit_edge:          ; preds = %while.cond.i57
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i57

find_table_version.exit60:                        ; preds = %while.cond.i57
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %11)
  %cmp3.i58 = icmp ult i32 %20, %11
  %.arrayidx.i59 = select i1 %cmp3.i58, ptr null, ptr %arrayidx.i55
  %arrayidx29 = getelementptr %struct.unicode_map, ptr %call7.i.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %.arrayidx.i59, ptr %arrayidx29, align 8
  %tobool32.not = icmp eq ptr %.arrayidx.i59, null
  br i1 %tobool32.not, label %find_table_version.exit60.out_symbol_put_crit_edge, label %find_table_version.exit60.cleanup_crit_edge

find_table_version.exit60.cleanup_crit_edge:      ; preds = %find_table_version.exit60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

find_table_version.exit60.out_symbol_put_crit_edge: ; preds = %find_table_version.exit60
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_symbol_put

out_symbol_put:                                   ; preds = %find_table_version.exit60.out_symbol_put_crit_edge, %find_table_version.exit.out_symbol_put_crit_edge, %if.end10.out_symbol_put_crit_edge
  tail call void @__symbol_put(ptr noundef nonnull @.str.2) #4
  br label %out_free_um

out_free_um:                                      ; preds = %out_symbol_put, %cond.end.out_free_um_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %out_free_um, %find_table_version.exit60.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %out_free_um ], [ %call7.i.i, %find_table_version.exit60.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8version_is_supported(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @utf8_unload(ptr noundef %um) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %um, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str) #4
  tail call void @kfree(ptr noundef nonnull %um) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__ksymtab_utf8_validate, !1, !"__ksymtab_utf8_validate", i1 false, i1 false}
!1 = !{!"../fs/unicode/utf8-core.c", i32 18, i32 1}
!2 = !{ptr @__ksymtab_utf8_strncmp, !3, !"__ksymtab_utf8_strncmp", i1 false, i1 false}
!3 = !{!"../fs/unicode/utf8-core.c", i32 44, i32 1}
!4 = !{ptr @__ksymtab_utf8_strncasecmp, !5, !"__ksymtab_utf8_strncasecmp", i1 false, i1 false}
!5 = !{!"../fs/unicode/utf8-core.c", i32 70, i32 1}
!6 = !{ptr @__ksymtab_utf8_strncasecmp_folded, !7, !"__ksymtab_utf8_strncasecmp_folded", i1 false, i1 false}
!7 = !{!"../fs/unicode/utf8-core.c", i32 97, i32 1}
!8 = !{ptr @__ksymtab_utf8_casefold, !9, !"__ksymtab_utf8_casefold", i1 false, i1 false}
!9 = !{!"../fs/unicode/utf8-core.c", i32 119, i32 1}
!10 = !{ptr @__ksymtab_utf8_casefold_hash, !11, !"__ksymtab_utf8_casefold_hash", i1 false, i1 false}
!11 = !{!"../fs/unicode/utf8-core.c", i32 139, i32 1}
!12 = !{ptr @__ksymtab_utf8_normalize, !13, !"__ksymtab_utf8_normalize", i1 false, i1 false}
!13 = !{!"../fs/unicode/utf8-core.c", i32 161, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/unicode/utf8-core.c", i32 184, i32 15}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/unicode/utf8-core.c", i32 201, i32 2}
!19 = !{ptr @__ksymtab_utf8_load, !20, !"__ksymtab_utf8_load", i1 false, i1 false}
!20 = !{!"../fs/unicode/utf8-core.c", i32 206, i32 1}
!21 = !{ptr @__ksymtab_utf8_unload, !22, !"__ksymtab_utf8_unload", i1 false, i1 false}
!22 = !{!"../fs/unicode/utf8-core.c", i32 215, i32 1}
!23 = !{ptr @__UNIQUE_ID_file182, !24, !"__UNIQUE_ID_file182", i1 false, i1 false}
!24 = !{!"../fs/unicode/utf8-core.c", i32 217, i32 1}
!25 = !{ptr @__UNIQUE_ID_license183, !24, !"__UNIQUE_ID_license183", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
