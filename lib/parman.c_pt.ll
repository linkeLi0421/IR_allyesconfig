; ModuleID = '/llk/IR_all_yes/lib/parman.c_pt.bc'
source_filename = "../lib/parman.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+parman_create\22, \22a\22\09"
module asm "\09.weak\09__crc_parman_create\09\09\09\09"
module asm "\09.long\09__crc_parman_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parman_create:\09\09\09\09\09"
module asm "\09.asciz \09\22parman_create\22\09\09\09\09\09"
module asm "__kstrtabns_parman_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parman_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_parman_destroy\09\09\09\09"
module asm "\09.long\09__crc_parman_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parman_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22parman_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_parman_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parman_prio_init\22, \22a\22\09"
module asm "\09.weak\09__crc_parman_prio_init\09\09\09\09"
module asm "\09.long\09__crc_parman_prio_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parman_prio_init:\09\09\09\09\09"
module asm "\09.asciz \09\22parman_prio_init\22\09\09\09\09\09"
module asm "__kstrtabns_parman_prio_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parman_prio_fini\22, \22a\22\09"
module asm "\09.weak\09__crc_parman_prio_fini\09\09\09\09"
module asm "\09.long\09__crc_parman_prio_fini\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parman_prio_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22parman_prio_fini\22\09\09\09\09\09"
module asm "__kstrtabns_parman_prio_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parman_item_add\22, \22a\22\09"
module asm "\09.weak\09__crc_parman_item_add\09\09\09\09"
module asm "\09.long\09__crc_parman_item_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parman_item_add:\09\09\09\09\09"
module asm "\09.asciz \09\22parman_item_add\22\09\09\09\09\09"
module asm "__kstrtabns_parman_item_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parman_item_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_parman_item_remove\09\09\09\09"
module asm "\09.long\09__crc_parman_item_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parman_item_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22parman_item_remove\22\09\09\09\09\09"
module asm "__kstrtabns_parman_item_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.parman_algo = type { ptr, ptr }
%struct.parman = type { ptr, ptr, ptr, i32, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.parman_prio = type { %struct.list_head, %struct.list_head, i32 }
%struct.parman_ops = type { i32, i32, ptr, ptr, i32 }
%struct.parman_item = type { %struct.list_head, i32 }

@__kstrtab_parman_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_parman_create = external dso_local constant [0 x i8], align 1
@__ksymtab_parman_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parman_create to i32), ptr @__kstrtab_parman_create, ptr @__kstrtabns_parman_create }, section "___ksymtab+parman_create", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lib/parman.c\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_parman_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_parman_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_parman_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parman_destroy to i32), ptr @__kstrtab_parman_destroy, ptr @__kstrtabns_parman_destroy }, section "___ksymtab+parman_destroy", align 4
@__kstrtab_parman_prio_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_parman_prio_init = external dso_local constant [0 x i8], align 1
@__ksymtab_parman_prio_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parman_prio_init to i32), ptr @__kstrtab_parman_prio_init, ptr @__kstrtabns_parman_prio_init }, section "___ksymtab+parman_prio_init", align 4
@__kstrtab_parman_prio_fini = external dso_local constant [0 x i8], align 1
@__kstrtabns_parman_prio_fini = external dso_local constant [0 x i8], align 1
@__ksymtab_parman_prio_fini = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parman_prio_fini to i32), ptr @__kstrtab_parman_prio_fini, ptr @__kstrtabns_parman_prio_fini }, section "___ksymtab+parman_prio_fini", align 4
@__kstrtab_parman_item_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_parman_item_add = external dso_local constant [0 x i8], align 1
@__ksymtab_parman_item_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parman_item_add to i32), ptr @__kstrtab_parman_item_add, ptr @__kstrtabns_parman_item_add }, section "___ksymtab+parman_item_add", align 4
@__kstrtab_parman_item_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_parman_item_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_parman_item_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parman_item_remove to i32), ptr @__kstrtab_parman_item_remove, ptr @__kstrtabns_parman_item_remove }, section "___ksymtab+parman_item_remove", align 4
@__UNIQUE_ID_file173 = internal constant [23 x i8] c"parman.file=lib/parman\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [28 x i8] c"parman.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [45 x i8] c"parman.author=Jiri Pirko <jiri@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [48 x i8] c"parman.description=Priority-based array manager\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@parman_lsort = internal constant { %struct.parman_algo, [24 x i8] } { %struct.parman_algo { ptr @parman_lsort_item_add, ptr @parman_lsort_item_remove }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 291, i32 2 }
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"parman_lsort\00", align 1
@___asan_gen_.5 = private constant [16 x i8] c"../lib/parman.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 219, i32 33 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__ksymtab_parman_create, ptr @__ksymtab_parman_destroy, ptr @__ksymtab_parman_item_add, ptr @__ksymtab_parman_item_remove, ptr @__ksymtab_parman_prio_fini, ptr @__ksymtab_parman_prio_init, ptr @.str, ptr @parman_lsort], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parman_lsort to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @parman_create(ptr noundef %ops, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #5
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %prio_list = getelementptr inbounds %struct.parman, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %prio_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %prio_list, ptr %prio_list, align 4
  %prev.i = getelementptr inbounds %struct.parman, ptr %call7.i.i, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %prio_list, ptr %prev.i, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ops, ptr %call7.i.i, align 8
  %priv2 = getelementptr inbounds %struct.parman, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %priv2, align 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ops, align 4
  %limit_count = getelementptr inbounds %struct.parman, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %limit_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %limit_count, align 8
  %algo3 = getelementptr inbounds %struct.parman, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %algo3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @parman_lsort, ptr %algo3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parman_destroy(ptr noundef %parman) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %prio_list = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 5
  %0 = ptrtoint ptr %prio_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %prio_list, align 4
  %cmp.i.not = icmp eq ptr %1, %prio_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !33

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %parman) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parman_prio_init(ptr noundef readonly %parman, ptr noundef %prio, i32 noundef %priority) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %item_list = getelementptr inbounds %struct.parman_prio, ptr %prio, i32 0, i32 1
  %0 = ptrtoint ptr %item_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %item_list, ptr %item_list, align 4
  %prev.i = getelementptr inbounds %struct.parman_prio, ptr %prio, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %item_list, ptr %prev.i, align 4
  %priority1 = getelementptr inbounds %struct.parman_prio, ptr %prio, i32 0, i32 2
  %2 = ptrtoint ptr %priority1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %priority, ptr %priority1, align 4
  %prio_list = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %pos.0.in = phi ptr [ %prio_list, %entry ], [ %pos.0, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %prio_list
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.cond
  %priority3 = getelementptr inbounds %struct.parman_prio, ptr %pos.0, i32 0, i32 2
  %4 = ptrtoint ptr %priority3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priority3, align 4
  %cmp = icmp ugt i32 %5, %priority
  br i1 %cmp, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %pos.0.lcssa = phi ptr [ %pos.0, %for.body.for.end_crit_edge ], [ %prio_list, %for.cond.for.end_crit_edge ]
  %prev.i13 = getelementptr inbounds %struct.list_head, ptr %pos.0.lcssa, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i13, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %prio, ptr noundef %7, ptr noundef %pos.0.lcssa) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  %8 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %prio, ptr %prev.i13, align 4
  %9 = ptrtoint ptr %prio to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pos.0.lcssa, ptr %prio, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %prio, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %prio, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parman_prio_fini(ptr noundef %prio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %item_list.i = getelementptr inbounds %struct.parman_prio, ptr %prio, i32 0, i32 1
  %0 = ptrtoint ptr %item_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %item_list.i, align 4
  %cmp.i.i.not = icmp eq ptr %1, %item_list.i
  br i1 %cmp.i.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !33

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 334, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %prio) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %prio, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prio, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %prio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %prio, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %prio, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parman_item_add(ptr noundef %parman, ptr noundef %prio, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %algo = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 2
  %0 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %parman, ptr noundef %prio, ptr noundef %item) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parman_item_remove(ptr noundef %parman, ptr noundef %prio, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %algo = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 2
  %0 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo, align 4
  %item_remove = getelementptr inbounds %struct.parman_algo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %item_remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %item_remove, align 4
  tail call void %3(ptr noundef %parman, ptr noundef %prio, ptr noundef %item) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parman_lsort_item_add(ptr noundef %parman, ptr noundef %prio, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %count = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 3
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %add = add i32 %1, 1
  %limit_count = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 4
  %2 = ptrtoint ptr %limit_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %limit_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %parman to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parman, align 4
  %resize_step.i = getelementptr inbounds %struct.parman_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %resize_step.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resize_step.i, align 4
  %add.i = add i32 %7, %3
  %resize.i = getelementptr inbounds %struct.parman_ops, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %resize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resize.i, align 4
  %priv.i = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 1
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 4
  %call.i = tail call i32 %9(ptr noundef %11, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %parman_enlarge.exit.thread, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

parman_enlarge.exit.thread:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %12 = ptrtoint ptr %limit_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %limit_count, align 4
  br label %if.end2

if.end2:                                          ; preds = %parman_enlarge.exit.thread, %entry.if.end2_crit_edge
  %prio_list.i = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 5
  %cmp.not7.i = icmp eq ptr %prio_list.i, %prio
  br i1 %cmp.not7.i, label %if.end2.parman_lsort_new_index_find.exit_crit_edge, label %if.end2.for.body.i_crit_edge

if.end2.for.body.i_crit_edge:                     ; preds = %if.end2
  br label %for.body.i

if.end2.parman_lsort_new_index_find.exit_crit_edge: ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #4
  br label %parman_lsort_new_index_find.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end2.for.body.i_crit_edge
  %prio.addr.08.i = phi ptr [ %20, %for.inc.i.for.body.i_crit_edge ], [ %prio, %if.end2.for.body.i_crit_edge ]
  %item_list.i.i = getelementptr inbounds %struct.parman_prio, ptr %prio.addr.08.i, i32 0, i32 1
  %13 = ptrtoint ptr %item_list.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %item_list.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %14, %item_list.i.i
  br i1 %cmp.i.i.not.i, label %for.inc.i, label %if.end.i33

if.end.i33:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i.i = getelementptr inbounds %struct.parman_prio, ptr %prio.addr.08.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.parman_item, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i.i, align 4
  %add.i32 = add i32 %18, 1
  br label %parman_lsort_new_index_find.exit

for.inc.i:                                        ; preds = %for.body.i
  %prev.i = getelementptr inbounds %struct.list_head, ptr %prio.addr.08.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %cmp.not.i = icmp eq ptr %20, %prio_list.i
  br i1 %cmp.not.i, label %for.inc.i.parman_lsort_new_index_find.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.inc.i.parman_lsort_new_index_find.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %parman_lsort_new_index_find.exit

parman_lsort_new_index_find.exit:                 ; preds = %for.inc.i.parman_lsort_new_index_find.exit_crit_edge, %if.end.i33, %if.end2.parman_lsort_new_index_find.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i32, %if.end.i33 ], [ 0, %if.end2.parman_lsort_new_index_find.exit_crit_edge ], [ 0, %for.inc.i.parman_lsort_new_index_find.exit_crit_edge ]
  %prev = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %21)
  %prio2.042 = load ptr, ptr %prev, align 4
  %cmp5.not43 = icmp eq ptr %prio2.042, %prio_list.i
  %cmp644 = icmp eq ptr %prio2.042, %prio
  %or.cond45 = or i1 %cmp5.not43, %cmp644
  br i1 %or.cond45, label %parman_lsort_new_index_find.exit.for.end_crit_edge, label %if.end8.lr.ph

parman_lsort_new_index_find.exit.for.end_crit_edge: ; preds = %parman_lsort_new_index_find.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.end8.lr.ph:                                    ; preds = %parman_lsort_new_index_find.exit
  %priv.i.i = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 1
  br label %if.end8

if.end8:                                          ; preds = %parman_prio_shift_down.exit.if.end8_crit_edge, %if.end8.lr.ph
  %prio2.046 = phi ptr [ %prio2.042, %if.end8.lr.ph ], [ %prio2.0, %parman_prio_shift_down.exit.if.end8_crit_edge ]
  %item_list.i.i34 = getelementptr inbounds %struct.parman_prio, ptr %prio2.046, i32 0, i32 1
  %22 = ptrtoint ptr %item_list.i.i34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %item_list.i.i34, align 4
  %cmp.i.i.not.i35 = icmp eq ptr %23, %item_list.i.i34
  br i1 %cmp.i.i.not.i35, label %if.end8.parman_prio_shift_down.exit_crit_edge, label %if.end.i39

if.end8.parman_prio_shift_down.exit_crit_edge:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %parman_prio_shift_down.exit

if.end.i39:                                       ; preds = %if.end8
  %prev.i.i.i36 = getelementptr inbounds %struct.parman_prio, ptr %prio2.046, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i36, align 4
  %index.i.i37 = getelementptr inbounds %struct.parman_item, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %index.i.i37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i.i37, align 4
  %add.i38 = add i32 %27, 1
  %28 = ptrtoint ptr %parman to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parman, align 4
  %move.i.i = getelementptr inbounds %struct.parman_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %move.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %move.i.i, align 4
  %32 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i.i, align 4
  %index.i12.i = getelementptr inbounds %struct.parman_item, ptr %23, i32 0, i32 1
  %34 = ptrtoint ptr %index.i12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i12.i, align 4
  tail call void %31(ptr noundef %33, i32 noundef %35, i32 noundef %add.i38, i32 noundef 1) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i39.__list_del_entry.exit.i.i_crit_edge

if.end.i39.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #4
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i13.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i13.i, align 4
  %38 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %23, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end.i39.__list_del_entry.exit.i.i_crit_edge
  %42 = ptrtoint ptr %prev.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i36, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %23, ptr noundef %43, ptr noundef %item_list.i.i34) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %44 = ptrtoint ptr %prev.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %23, ptr %prev.i.i.i36, align 4
  %45 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %item_list.i.i34, ptr %23, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %23, ptr %43, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %48 = ptrtoint ptr %index.i12.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add.i38, ptr %index.i12.i, align 4
  br label %parman_prio_shift_down.exit

parman_prio_shift_down.exit:                      ; preds = %list_move_tail.exit.i, %if.end8.parman_prio_shift_down.exit_crit_edge
  %prev11 = getelementptr inbounds %struct.list_head, ptr %prio2.046, i32 0, i32 1
  %49 = ptrtoint ptr %prev11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %prio2.0 = load ptr, ptr %prev11, align 4
  %cmp5.not = icmp eq ptr %prio2.0, %prio_list.i
  %cmp6 = icmp eq ptr %prio2.0, %prio
  %or.cond = or i1 %cmp5.not, %cmp6
  br i1 %or.cond, label %parman_prio_shift_down.exit.for.end_crit_edge, label %parman_prio_shift_down.exit.if.end8_crit_edge

parman_prio_shift_down.exit.if.end8_crit_edge:    ; preds = %parman_prio_shift_down.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

parman_prio_shift_down.exit.for.end_crit_edge:    ; preds = %parman_prio_shift_down.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %parman_prio_shift_down.exit.for.end_crit_edge, %parman_lsort_new_index_find.exit.for.end_crit_edge
  %index = getelementptr inbounds %struct.parman_item, ptr %item, i32 0, i32 1
  %50 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i, ptr %index, align 4
  %item_list = getelementptr inbounds %struct.parman_prio, ptr %prio, i32 0, i32 1
  %prev.i40 = getelementptr inbounds %struct.parman_prio, ptr %prio, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %prev.i40 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i40, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %item, ptr noundef %52, ptr noundef %item_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  %53 = ptrtoint ptr %prev.i40 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %item, ptr %prev.i40, align 4
  %54 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %item_list, ptr %item, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %item, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %item, ptr %52, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  %57 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count, align 4
  %inc = add i32 %58, 1
  store i32 %inc, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parman_lsort_item_remove(ptr noundef %parman, ptr nocapture noundef readonly %prio, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i = getelementptr inbounds %struct.parman_prio, ptr %prio, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %cmp.i = icmp eq ptr %1, %item
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %item) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %item, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %8 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %item, align 4
  %prev.i15.i = getelementptr inbounds %struct.list_head, ptr %item, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i15.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i15.i, align 4
  br label %parman_prio_item_remove.exit

if.end.i:                                         ; preds = %entry
  %index.i = getelementptr inbounds %struct.parman_item, ptr %item, i32 0, i32 1
  %10 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i, align 4
  %12 = ptrtoint ptr %parman to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parman, align 4
  %move.i.i = getelementptr inbounds %struct.parman_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %move.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %move.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 1
  %16 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.parman_item, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %19, i32 noundef %11, i32 noundef 1) #6
  %call.i.i16.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i16.i, label %if.end.i.i19.i, label %if.end.i.list_del.exit21.i_crit_edge

if.end.i.list_del.exit21.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_del.exit21.i

if.end.i.i19.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i17.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i17.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %prev1.i.i.i18.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i18.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit21.i

list_del.exit21.i:                                ; preds = %if.end.i.i19.i, %if.end.i.list_del.exit21.i_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i20.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i20.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i20.i, align 4
  %28 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %item, align 4
  store ptr %29, ptr %1, align 4
  %prev.i22.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i22.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %1, ptr %prev.i22.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %item, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev3.i.i, align 4
  store ptr %32, ptr %prev.i20.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %1, ptr %32, align 4
  %34 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %11, ptr %index.i.i, align 4
  br label %parman_prio_item_remove.exit

parman_prio_item_remove.exit:                     ; preds = %list_del.exit21.i, %list_del.exit.i
  %prio_list = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 5
  %35 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %35)
  %prio.addr.032 = load ptr, ptr %prio, align 4
  %cmp.not33 = icmp eq ptr %prio.addr.032, %prio_list
  br i1 %cmp.not33, label %parman_prio_item_remove.exit.for.end_crit_edge, label %for.body.lr.ph

parman_prio_item_remove.exit.for.end_crit_edge:   ; preds = %parman_prio_item_remove.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.lr.ph:                                   ; preds = %parman_prio_item_remove.exit
  %priv.i.i23 = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %parman_prio_shift_up.exit.for.body_crit_edge, %for.body.lr.ph
  %prio.addr.034 = phi ptr [ %prio.addr.032, %for.body.lr.ph ], [ %prio.addr.0, %parman_prio_shift_up.exit.for.body_crit_edge ]
  %item_list.i.i = getelementptr inbounds %struct.parman_prio, ptr %prio.addr.034, i32 0, i32 1
  %36 = ptrtoint ptr %item_list.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %item_list.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %37, %item_list.i.i
  br i1 %cmp.i.i.not.i, label %for.body.parman_prio_shift_up.exit_crit_edge, label %if.end.i25

for.body.parman_prio_shift_up.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %parman_prio_shift_up.exit

if.end.i25:                                       ; preds = %for.body
  %prev.i.i20 = getelementptr inbounds %struct.parman_prio, ptr %prio.addr.034, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i.i20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i20, align 4
  %index.i.i21 = getelementptr inbounds %struct.parman_item, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %index.i.i21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i.i21, align 4
  %sub.i = add i32 %41, -1
  %42 = ptrtoint ptr %parman to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parman, align 4
  %move.i.i22 = getelementptr inbounds %struct.parman_ops, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %move.i.i22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %move.i.i22, align 4
  %46 = ptrtoint ptr %priv.i.i23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv.i.i23, align 4
  %index.i11.i = getelementptr inbounds %struct.parman_item, ptr %39, i32 0, i32 1
  %48 = ptrtoint ptr %index.i11.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index.i11.i, align 4
  tail call void %45(ptr noundef %47, i32 noundef %49, i32 noundef %sub.i, i32 noundef 1) #6
  %call.i.i.i24 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %39) #6
  br i1 %call.i.i.i24, label %if.end.i.i.i28, label %if.end.i25.__list_del_entry.exit.i.i_crit_edge

if.end.i25.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #4
  br label %__list_del_entry.exit.i.i

if.end.i.i.i28:                                   ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i.i26 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i26, align 4
  %52 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %39, align 4
  %prev1.i.i.i.i27 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i.i27, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i28, %if.end.i25.__list_del_entry.exit.i.i_crit_edge
  %56 = ptrtoint ptr %item_list.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %item_list.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %39, ptr noundef %item_list.i.i, ptr noundef %57) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %39, ptr %prev1.i.i2.i.i, align 4
  %59 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %39, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %item_list.i.i, ptr %prev3.i.i.i.i, align 4
  %61 = ptrtoint ptr %item_list.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %39, ptr %item_list.i.i, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  %62 = ptrtoint ptr %index.i11.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub.i, ptr %index.i11.i, align 4
  br label %parman_prio_shift_up.exit

parman_prio_shift_up.exit:                        ; preds = %list_move.exit.i, %for.body.parman_prio_shift_up.exit_crit_edge
  %63 = ptrtoint ptr %prio.addr.034 to i32
  call void @__asan_load4_noabort(i32 %63)
  %prio.addr.0 = load ptr, ptr %prio.addr.034, align 4
  %cmp.not = icmp eq ptr %prio.addr.0, %prio_list
  br i1 %cmp.not, label %parman_prio_shift_up.exit.for.end_crit_edge, label %parman_prio_shift_up.exit.for.body_crit_edge

parman_prio_shift_up.exit.for.body_crit_edge:     ; preds = %parman_prio_shift_up.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

parman_prio_shift_up.exit.for.end_crit_edge:      ; preds = %parman_prio_shift_up.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %parman_prio_shift_up.exit.for.end_crit_edge, %parman_prio_item_remove.exit.for.end_crit_edge
  %count = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 3
  %64 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count, align 4
  %dec = add i32 %65, -1
  store i32 %dec, ptr %count, align 4
  %limit_count = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 4
  %66 = ptrtoint ptr %limit_count to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %limit_count, align 4
  %sub = sub i32 %67, %dec
  %68 = ptrtoint ptr %parman to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %parman, align 4
  %resize_step = getelementptr inbounds %struct.parman_ops, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %resize_step to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %resize_step, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %71)
  %cmp8.not = icmp ult i32 %sub, %71
  br i1 %cmp8.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %for.end
  %sub.i29 = sub i32 %67, %71
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i29, i32 %73)
  %cmp.i30 = icmp ult i32 %sub.i29, %73
  br i1 %cmp.i30, label %if.then.if.end_crit_edge, label %if.end.i31

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end.i31:                                       ; preds = %if.then
  %resize.i = getelementptr inbounds %struct.parman_ops, ptr %69, i32 0, i32 2
  %74 = ptrtoint ptr %resize.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %resize.i, align 4
  %priv.i = getelementptr inbounds %struct.parman, ptr %parman, i32 0, i32 1
  %76 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv.i, align 4
  %call.i = tail call i32 %75(ptr noundef %77, i32 noundef %sub.i29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i31.if.end_crit_edge

if.end.i31.if.end_crit_edge:                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #4
  %78 = ptrtoint ptr %limit_count to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub.i29, ptr %limit_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.end4.i, %if.end.i31.if.end_crit_edge, %if.then.if.end_crit_edge, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_parman_create, !1, !"__ksymtab_parman_create", i1 false, i1 false}
!1 = !{!"../lib/parman.c", i32 281, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/parman.c", i32 291, i32 2}
!4 = !{ptr @__ksymtab_parman_destroy, !5, !"__ksymtab_parman_destroy", i1 false, i1 false}
!5 = !{!"../lib/parman.c", i32 294, i32 1}
!6 = !{ptr @__ksymtab_parman_prio_init, !7, !"__ksymtab_parman_prio_init", i1 false, i1 false}
!7 = !{!"../lib/parman.c", i32 324, i32 1}
!8 = !{ptr @__ksymtab_parman_prio_fini, !9, !"__ksymtab_parman_prio_fini", i1 false, i1 false}
!9 = !{!"../lib/parman.c", i32 337, i32 1}
!10 = !{ptr @__ksymtab_parman_item_add, !11, !"__ksymtab_parman_item_add", i1 false, i1 false}
!11 = !{!"../lib/parman.c", i32 356, i32 1}
!12 = !{ptr @__ksymtab_parman_item_remove, !13, !"__ksymtab_parman_item_remove", i1 false, i1 false}
!13 = !{!"../lib/parman.c", i32 371, i32 1}
!14 = !{ptr @__UNIQUE_ID_file173, !15, !"__UNIQUE_ID_file173", i1 false, i1 false}
!15 = !{!"../lib/parman.c", i32 373, i32 1}
!16 = !{ptr @__UNIQUE_ID_license174, !15, !"__UNIQUE_ID_license174", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author175, !18, !"__UNIQUE_ID_author175", i1 false, i1 false}
!18 = !{!"../lib/parman.c", i32 374, i32 1}
!19 = !{ptr @__UNIQUE_ID_description176, !20, !"__UNIQUE_ID_description176", i1 false, i1 false}
!20 = !{!"../lib/parman.c", i32 375, i32 1}
!21 = distinct !{null, !22, !"parman_algos", i1 false, i1 false}
!22 = !{!"../lib/parman.c", i32 224, i32 34}
!23 = !{ptr @parman_lsort, !24, !"parman_lsort", i1 false, i1 false}
!24 = !{!"../lib/parman.c", i32 219, i32 33}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 2000, i32 1}
