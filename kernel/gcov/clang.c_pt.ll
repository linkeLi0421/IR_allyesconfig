; ModuleID = '/llk/IR_all_yes/kernel/gcov/clang.c_pt.bc'
source_filename = "../kernel/gcov/clang.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+llvm_gcov_init\22, \22a\22\09"
module asm "\09.weak\09__crc_llvm_gcov_init\09\09\09\09"
module asm "\09.long\09__crc_llvm_gcov_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llvm_gcov_init:\09\09\09\09\09"
module asm "\09.asciz \09\22llvm_gcov_init\22\09\09\09\09\09"
module asm "__kstrtabns_llvm_gcov_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+llvm_gcda_start_file\22, \22a\22\09"
module asm "\09.weak\09__crc_llvm_gcda_start_file\09\09\09\09"
module asm "\09.long\09__crc_llvm_gcda_start_file\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llvm_gcda_start_file:\09\09\09\09\09"
module asm "\09.asciz \09\22llvm_gcda_start_file\22\09\09\09\09\09"
module asm "__kstrtabns_llvm_gcda_start_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+llvm_gcda_emit_function\22, \22a\22\09"
module asm "\09.weak\09__crc_llvm_gcda_emit_function\09\09\09\09"
module asm "\09.long\09__crc_llvm_gcda_emit_function\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llvm_gcda_emit_function:\09\09\09\09\09"
module asm "\09.asciz \09\22llvm_gcda_emit_function\22\09\09\09\09\09"
module asm "__kstrtabns_llvm_gcda_emit_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+llvm_gcda_emit_arcs\22, \22a\22\09"
module asm "\09.weak\09__crc_llvm_gcda_emit_arcs\09\09\09\09"
module asm "\09.long\09__crc_llvm_gcda_emit_arcs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llvm_gcda_emit_arcs:\09\09\09\09\09"
module asm "\09.asciz \09\22llvm_gcda_emit_arcs\22\09\09\09\09\09"
module asm "__kstrtabns_llvm_gcda_emit_arcs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+llvm_gcda_summary_info\22, \22a\22\09"
module asm "\09.weak\09__crc_llvm_gcda_summary_info\09\09\09\09"
module asm "\09.long\09__crc_llvm_gcda_summary_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llvm_gcda_summary_info:\09\09\09\09\09"
module asm "\09.asciz \09\22llvm_gcda_summary_info\22\09\09\09\09\09"
module asm "__kstrtabns_llvm_gcda_summary_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+llvm_gcda_end_file\22, \22a\22\09"
module asm "\09.weak\09__crc_llvm_gcda_end_file\09\09\09\09"
module asm "\09.long\09__crc_llvm_gcda_end_file\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llvm_gcda_end_file:\09\09\09\09\09"
module asm "\09.asciz \09\22llvm_gcda_end_file\22\09\09\09\09\09"
module asm "__kstrtabns_llvm_gcda_end_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcov_link = type { i32, ptr }
%struct.gcov_info = type { %struct.list_head, ptr, i32, i32, %struct.list_head }
%struct.gcov_fn_info = type { %struct.list_head, i32, i32, i32, i32, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }

@gcov_lock = external dso_local global %struct.mutex, align 4
@clang_gcov_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @clang_gcov_list, ptr @clang_gcov_list }, [24 x i8] zeroinitializer }, align 32
@current_info = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gcov_events_enabled = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_llvm_gcov_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_llvm_gcov_init = external dso_local constant [0 x i8], align 1
@__ksymtab_llvm_gcov_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llvm_gcov_init to i32), ptr @__kstrtab_llvm_gcov_init, ptr @__kstrtabns_llvm_gcov_init }, section "___ksymtab+llvm_gcov_init", align 4
@__kstrtab_llvm_gcda_start_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_llvm_gcda_start_file = external dso_local constant [0 x i8], align 1
@__ksymtab_llvm_gcda_start_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llvm_gcda_start_file to i32), ptr @__kstrtab_llvm_gcda_start_file, ptr @__kstrtabns_llvm_gcda_start_file }, section "___ksymtab+llvm_gcda_start_file", align 4
@__kstrtab_llvm_gcda_emit_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_llvm_gcda_emit_function = external dso_local constant [0 x i8], align 1
@__ksymtab_llvm_gcda_emit_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llvm_gcda_emit_function to i32), ptr @__kstrtab_llvm_gcda_emit_function, ptr @__kstrtabns_llvm_gcda_emit_function }, section "___ksymtab+llvm_gcda_emit_function", align 4
@__kstrtab_llvm_gcda_emit_arcs = external dso_local constant [0 x i8], align 1
@__kstrtabns_llvm_gcda_emit_arcs = external dso_local constant [0 x i8], align 1
@__ksymtab_llvm_gcda_emit_arcs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llvm_gcda_emit_arcs to i32), ptr @__kstrtab_llvm_gcda_emit_arcs, ptr @__kstrtabns_llvm_gcda_emit_arcs }, section "___ksymtab+llvm_gcda_emit_arcs", align 4
@__kstrtab_llvm_gcda_summary_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_llvm_gcda_summary_info = external dso_local constant [0 x i8], align 1
@__ksymtab_llvm_gcda_summary_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llvm_gcda_summary_info to i32), ptr @__kstrtab_llvm_gcda_summary_info, ptr @__kstrtabns_llvm_gcda_summary_info }, section "___ksymtab+llvm_gcda_summary_info", align 4
@__kstrtab_llvm_gcda_end_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_llvm_gcda_end_file = external dso_local constant [0 x i8], align 1
@__ksymtab_llvm_gcda_end_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llvm_gcda_end_file to i32), ptr @__kstrtab_llvm_gcda_end_file, ptr @__kstrtabns_llvm_gcda_end_file }, section "___ksymtab+llvm_gcda_end_file", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gcno\00", [27 x i8] zeroinitializer }, align 32
@gcov_link = dso_local constant { [2 x %struct.gcov_link], [16 x i8] } { [2 x %struct.gcov_link] [%struct.gcov_link { i32 0, ptr @.str }, %struct.gcov_link zeroinitializer], [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"clang_gcov_list\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 80, i32 8 }
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"current_info\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 78, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 217, i32 14 }
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"gcov_link\00", align 1
@___asan_gen_.11 = private constant [23 x i8] c"../kernel/gcov/clang.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 216, i32 24 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_llvm_gcda_emit_arcs, ptr @__ksymtab_llvm_gcda_emit_function, ptr @__ksymtab_llvm_gcda_end_file, ptr @__ksymtab_llvm_gcda_start_file, ptr @__ksymtab_llvm_gcda_summary_info, ptr @__ksymtab_llvm_gcov_init, ptr @clang_gcov_list, ptr @current_info, ptr @.str, ptr @gcov_link], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clang_gcov_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcov_link to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llvm_gcov_init(ptr nocapture noundef readonly %writeout, ptr nocapture readnone %flush) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %functions = getelementptr inbounds %struct.gcov_info, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %functions to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %functions, ptr %functions, align 4
  %prev.i10 = getelementptr inbounds %struct.gcov_info, ptr %call7.i.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %functions, ptr %prev.i10, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @gcov_lock, i32 noundef 0) #10
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @clang_gcov_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %5, ptr noundef nonnull @clang_gcov_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @clang_gcov_list, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @clang_gcov_list, ptr %call7.i.i, align 8
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i.i, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  store ptr %call7.i.i, ptr @current_info, align 4
  tail call void %writeout() #10
  store ptr null, ptr @current_info, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gcov_events_enabled to i32))
  %9 = load i32, ptr @gcov_events_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %list_add_tail.exit.if.end4_crit_edge, label %if.then3

list_add_tail.exit.if.end4_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gcov_event(i32 noundef 0, ptr noundef nonnull %call7.i.i) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %list_add_tail.exit.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @gcov_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gcov_event(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llvm_gcda_start_file(ptr noundef %orig_filename, i32 noundef %version, i32 noundef %checksum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @current_info, align 4
  %filename = getelementptr inbounds %struct.gcov_info, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %filename to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %orig_filename, ptr %filename, align 4
  %version1 = getelementptr inbounds %struct.gcov_info, ptr %0, i32 0, i32 2
  %2 = ptrtoint ptr %version1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %version, ptr %version1, align 4
  %checksum2 = getelementptr inbounds %struct.gcov_info, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %checksum2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %checksum, ptr %checksum2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llvm_gcda_emit_function(i32 noundef %ident, i32 noundef %func_checksum, i32 noundef %cfg_checksum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %ident1 = getelementptr inbounds %struct.gcov_fn_info, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %ident1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ident, ptr %ident1, align 8
  %checksum = getelementptr inbounds %struct.gcov_fn_info, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %checksum to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %func_checksum, ptr %checksum, align 4
  %cfg_checksum2 = getelementptr inbounds %struct.gcov_fn_info, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %cfg_checksum2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cfg_checksum, ptr %cfg_checksum2, align 8
  %6 = load ptr, ptr @current_info, align 4
  %functions = getelementptr inbounds %struct.gcov_info, ptr %6, i32 0, i32 4
  %prev.i9 = getelementptr inbounds %struct.gcov_info, ptr %6, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i9, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %8, ptr noundef %functions) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %prev.i9, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %functions, ptr %call7.i.i, align 8
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i, ptr %8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llvm_gcda_emit_arcs(i32 noundef %num_counters, ptr noundef %counters) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @current_info, align 4
  %prev = getelementptr inbounds %struct.gcov_info, ptr %0, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev, align 4
  %num_counters1 = getelementptr inbounds %struct.gcov_fn_info, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %num_counters1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %num_counters, ptr %num_counters1, align 4
  %counters2 = getelementptr inbounds %struct.gcov_fn_info, ptr %2, i32 0, i32 5
  %4 = ptrtoint ptr %counters2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %counters, ptr %counters2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llvm_gcda_summary_info() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llvm_gcda_end_file() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @gcov_info_filename(ptr nocapture noundef readonly %info) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %filename = getelementptr inbounds %struct.gcov_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filename, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gcov_info_version(ptr nocapture noundef readonly %info) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.gcov_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @gcov_info_next(ptr noundef readonly %info) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load volatile ptr, ptr @clang_gcov_list, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %.sink16 = phi ptr [ %2, %if.end ], [ %0, %if.then ]
  %cmp.i.not = icmp eq ptr %.sink16, @clang_gcov_list
  %spec.select15 = select i1 %cmp.i.not, ptr null, ptr %.sink16
  ret ptr %spec.select15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gcov_info_link(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @clang_gcov_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %info, ptr noundef %0, ptr noundef nonnull @clang_gcov_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %info, ptr getelementptr inbounds (%struct.list_head, ptr @clang_gcov_list, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @clang_gcov_list, ptr %info, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %info, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gcov_info_unlink(ptr nocapture noundef readnone %prev, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %info) #10
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i = getelementptr inbounds %struct.list_head, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @gcov_info_within_module(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %mod) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %filename = getelementptr inbounds %struct.gcov_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filename, align 4
  %2 = ptrtoint ptr %1 to i32
  %init_layout.i.i = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 26
  %3 = ptrtoint ptr %init_layout.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_layout.i.i, align 16
  %cmp.not.i.i = icmp ugt ptr %4, %1
  br i1 %cmp.not.i.i, label %entry.lor.rhs.i_crit_edge, label %within_module_init.exit.i

entry.lor.rhs.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

within_module_init.exit.i:                        ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  %size.i.i = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 26, i32 1
  %6 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %2)
  %cmp4.i.i = icmp ugt i32 %add.i.i, %2
  br i1 %cmp4.i.i, label %within_module_init.exit.i.within_module.exit_crit_edge, label %within_module_init.exit.i.lor.rhs.i_crit_edge

within_module_init.exit.i.lor.rhs.i_crit_edge:    ; preds = %within_module_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

within_module_init.exit.i.within_module.exit_crit_edge: ; preds = %within_module_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %within_module.exit

lor.rhs.i:                                        ; preds = %within_module_init.exit.i.lor.rhs.i_crit_edge, %entry.lor.rhs.i_crit_edge
  %core_layout.i.i = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 25
  %8 = ptrtoint ptr %core_layout.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_layout.i.i, align 128
  %cmp.not.i4.i = icmp ugt ptr %9, %1
  br i1 %cmp.not.i4.i, label %lor.rhs.i.within_module.exit_crit_edge, label %land.rhs.i8.i

lor.rhs.i.within_module.exit_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %within_module.exit

land.rhs.i8.i:                                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %9 to i32
  %size.i5.i = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 25, i32 1
  %11 = ptrtoint ptr %size.i5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i5.i, align 4
  %add.i6.i = add i32 %12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i6.i, i32 %2)
  %cmp4.i7.i = icmp ugt i32 %add.i6.i, %2
  br label %within_module.exit

within_module.exit:                               ; preds = %land.rhs.i8.i, %lor.rhs.i.within_module.exit_crit_edge, %within_module_init.exit.i.within_module.exit_crit_edge
  %13 = phi i1 [ true, %within_module_init.exit.i.within_module.exit_crit_edge ], [ false, %lor.rhs.i.within_module.exit_crit_edge ], [ %cmp4.i7.i, %land.rhs.i8.i ]
  ret i1 %13
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gcov_info_reset(ptr noundef readonly %info) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %functions = getelementptr inbounds %struct.gcov_info, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %fn.011 = load ptr, ptr %functions, align 4
  %cmp.not12 = icmp eq ptr %fn.011, %functions
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %fn.013 = phi ptr [ %fn.0, %for.body.for.body_crit_edge ], [ %fn.011, %entry.for.body_crit_edge ]
  %counters = getelementptr inbounds %struct.gcov_fn_info, ptr %fn.013, i32 0, i32 5
  %1 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %counters, align 4
  %num_counters = getelementptr inbounds %struct.gcov_fn_info, ptr %fn.013, i32 0, i32 4
  %3 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_counters, align 4
  %mul = shl i32 %4, 3
  %5 = call ptr @memset(ptr %2, i32 0, i32 %mul)
  %6 = ptrtoint ptr %fn.013 to i32
  call void @__asan_load4_noabort(i32 %6)
  %fn.0 = load ptr, ptr %fn.013, align 4
  %cmp.not = icmp eq ptr %fn.0, %functions
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gcov_info_is_compatible(ptr noundef %info1, ptr noundef %info2) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %functions = getelementptr inbounds %struct.gcov_info, ptr %info1, i32 0, i32 4
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %functions, align 4
  %functions4 = getelementptr inbounds %struct.gcov_info, ptr %info2, i32 0, i32 4
  %2 = ptrtoint ptr %functions4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %functions4, align 4
  %cmp12.not = icmp eq ptr %3, %functions4
  %cond19 = select i1 %cmp12.not, ptr null, ptr %3
  %checksum = getelementptr inbounds %struct.gcov_info, ptr %info1, i32 0, i32 3
  %4 = ptrtoint ptr %checksum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %checksum, align 4
  %checksum20 = getelementptr inbounds %struct.gcov_info, ptr %info2, i32 0, i32 3
  %6 = ptrtoint ptr %checksum20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %checksum20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp21.not = icmp eq i32 %5, %7
  br i1 %cmp21.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq ptr %1, %functions
  %tobool.not91 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.not, %tobool.not91
  br i1 %tobool.not, label %if.then22, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cmp23 = icmp eq ptr %cond19, null
  br label %cleanup

while.cond:                                       ; preds = %if.end36.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %fn_ptr2.0 = phi ptr [ %11, %if.end36.while.cond_crit_edge ], [ %cond19, %if.end.while.cond_crit_edge ]
  %fn_ptr1.0 = phi ptr [ %9, %if.end36.while.cond_crit_edge ], [ %1, %if.end.while.cond_crit_edge ]
  %8 = ptrtoint ptr %fn_ptr1.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fn_ptr1.0, align 4
  %cmp.i.not = icmp eq ptr %9, %functions
  %10 = ptrtoint ptr %fn_ptr2.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fn_ptr2.0, align 4
  %cmp.i89 = icmp eq ptr %11, %functions4
  %brmerge = select i1 %cmp.i.not, i1 true, i1 %cmp.i89
  br i1 %brmerge, label %cleanup.loopexit.split.loop.exit98, label %while.body

while.body:                                       ; preds = %while.cond
  %checksum31 = getelementptr inbounds %struct.gcov_fn_info, ptr %fn_ptr1.0, i32 0, i32 2
  %12 = ptrtoint ptr %checksum31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %checksum31, align 4
  %checksum32 = getelementptr inbounds %struct.gcov_fn_info, ptr %fn_ptr2.0, i32 0, i32 2
  %14 = ptrtoint ptr %checksum32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %checksum32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp33.not = icmp eq i32 %13, %15
  br i1 %cmp33.not, label %if.end36, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %while.body
  %cfg_checksum = getelementptr inbounds %struct.gcov_fn_info, ptr %fn_ptr1.0, i32 0, i32 3
  %16 = ptrtoint ptr %cfg_checksum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg_checksum, align 4
  %cfg_checksum37 = getelementptr inbounds %struct.gcov_fn_info, ptr %fn_ptr2.0, i32 0, i32 3
  %18 = ptrtoint ptr %cfg_checksum37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cfg_checksum37, align 4
  %cmp38.not = icmp eq i32 %17, %19
  br i1 %cmp38.not, label %if.end36.while.cond_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36.while.cond_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

cleanup.loopexit.split.loop.exit98:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %cmp.i89.mux.le = select i1 %cmp.i.not, i1 %cmp.i89, i1 false
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit98, %if.end36.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.then22, %entry.cleanup_crit_edge
  %retval.0.shrunk = phi i1 [ %cmp23, %if.then22 ], [ false, %entry.cleanup_crit_edge ], [ %cmp.i89.mux.le, %cleanup.loopexit.split.loop.exit98 ], [ false, %while.body.cleanup_crit_edge ], [ false, %if.end36.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gcov_info_add(ptr noundef readonly %dst, ptr noundef %src) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %functions = getelementptr inbounds %struct.gcov_info, ptr %src, i32 0, i32 4
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %functions, align 4
  %functions4 = getelementptr inbounds %struct.gcov_info, ptr %dst, i32 0, i32 4
  %2 = ptrtoint ptr %functions4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %dfn_ptr.033 = load ptr, ptr %functions4, align 4
  %cmp9.not34 = icmp eq ptr %dfn_ptr.033, %functions4
  br i1 %cmp9.not34, label %entry.for.end21_crit_edge, label %for.cond10.preheader.lr.ph

entry.for.end21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.cond10.preheader.lr.ph:                       ; preds = %entry
  %cmp.not = icmp eq ptr %1, %functions
  %spec.select = select i1 %cmp.not, ptr null, ptr %1
  %num_counters = getelementptr inbounds %struct.gcov_fn_info, ptr %spec.select, i32 0, i32 4
  %counters = getelementptr inbounds %struct.gcov_fn_info, ptr %spec.select, i32 0, i32 5
  br label %for.cond10.preheader

for.cond.loopexit:                                ; preds = %for.body12.for.cond.loopexit_crit_edge, %for.cond10.preheader.for.cond.loopexit_crit_edge
  %3 = ptrtoint ptr %dfn_ptr.035 to i32
  call void @__asan_load4_noabort(i32 %3)
  %dfn_ptr.0 = load ptr, ptr %dfn_ptr.035, align 4
  %cmp9.not = icmp eq ptr %dfn_ptr.0, %functions4
  br i1 %cmp9.not, label %for.cond.loopexit.for.end21_crit_edge, label %for.cond.loopexit.for.cond10.preheader_crit_edge

for.cond.loopexit.for.cond10.preheader_crit_edge: ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond10.preheader

for.cond.loopexit.for.end21_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.cond10.preheader:                             ; preds = %for.cond.loopexit.for.cond10.preheader_crit_edge, %for.cond10.preheader.lr.ph
  %dfn_ptr.035 = phi ptr [ %dfn_ptr.033, %for.cond10.preheader.lr.ph ], [ %dfn_ptr.0, %for.cond.loopexit.for.cond10.preheader_crit_edge ]
  %4 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_counters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1131.not = icmp eq i32 %5, 0
  br i1 %cmp1131.not, label %for.cond10.preheader.for.cond.loopexit_crit_edge, label %for.body12.lr.ph

for.cond10.preheader.for.cond.loopexit_crit_edge: ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body12.lr.ph:                                 ; preds = %for.cond10.preheader
  %counters13 = getelementptr inbounds %struct.gcov_fn_info, ptr %dfn_ptr.035, i32 0, i32 5
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body12.lr.ph
  %i.032 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc, %for.body12.for.body12_crit_edge ]
  %6 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %counters, align 4
  %arrayidx = getelementptr i64, ptr %7, i32 %i.032
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %counters13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %counters13, align 4
  %arrayidx14 = getelementptr i64, ptr %11, i32 %i.032
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx14, align 8
  %add = add i64 %13, %9
  store i64 %add, ptr %arrayidx14, align 8
  %inc = add nuw i32 %i.032, 1
  %14 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_counters, align 4
  %cmp11 = icmp ult i32 %inc, %15
  br i1 %cmp11, label %for.body12.for.body12_crit_edge, label %for.body12.for.cond.loopexit_crit_edge

for.body12.for.cond.loopexit_crit_edge:           ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12

for.end21:                                        ; preds = %for.cond.loopexit.for.end21_crit_edge, %entry.for.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gcov_info_dup(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %info, i32 noundef 28, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup21_crit_edge, label %if.end

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %prev.i, align 4
  %functions = getelementptr inbounds %struct.gcov_info, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %functions, ptr %functions, align 4
  %prev.i37 = getelementptr inbounds %struct.gcov_info, ptr %call, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %functions, ptr %prev.i37, align 4
  %filename = getelementptr inbounds %struct.gcov_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filename, align 4
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %5, i32 noundef 3264) #10
  %filename2 = getelementptr inbounds %struct.gcov_info, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %filename2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %filename2, align 4
  %tobool4.not = icmp eq ptr %call1, null
  br i1 %tobool4.not, label %if.end.err_crit_edge, label %if.end6

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end6:                                          ; preds = %if.end
  %functions7 = getelementptr inbounds %struct.gcov_info, ptr %info, i32 0, i32 4
  %7 = ptrtoint ptr %functions7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %fn.047 = load ptr, ptr %functions7, align 4
  %cmp.not48 = icmp eq ptr %fn.047, %functions7
  br i1 %cmp.not48, label %if.end6.cleanup21_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.cleanup21_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end6.for.body_crit_edge
  %fn.049 = phi ptr [ %fn.0, %cleanup.for.body_crit_edge ], [ %fn.047, %if.end6.for.body_crit_edge ]
  %call.i = tail call ptr @kmemdup(ptr noundef %fn.049, i32 noundef 28, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.err_crit_edge, label %if.end.i

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end.i:                                         ; preds = %for.body
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %prev.i.i, align 4
  %num_counters.i = getelementptr inbounds %struct.gcov_fn_info, ptr %fn.049, i32 0, i32 4
  %10 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_counters.i, align 4
  %mul.i = shl i32 %11, 3
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul.i, i32 noundef 3264, i32 noundef -1) #14
  %counters.i = getelementptr inbounds %struct.gcov_fn_info, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %counters.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %counters.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end13

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call.i) #10
  br label %err

if.end13:                                         ; preds = %if.end.i
  %counters7.i = getelementptr inbounds %struct.gcov_fn_info, ptr %fn.049, i32 0, i32 5
  %13 = ptrtoint ptr %counters7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %counters7.i, align 4
  %15 = call ptr @memcpy(ptr %call.i.i, ptr %14, i32 %mul.i)
  %16 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i37, align 4
  %call.i.i39 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %17, ptr noundef %functions) #10
  br i1 %call.i.i39, label %if.end.i.i, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %prev.i37, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %functions, ptr %call.i, align 4
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call.i, ptr %17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end13.cleanup_crit_edge
  %22 = ptrtoint ptr %fn.049 to i32
  call void @__asan_load4_noabort(i32 %22)
  %fn.0 = load ptr, ptr %fn.049, align 4
  %cmp.not = icmp eq ptr %fn.0, %functions7
  br i1 %cmp.not, label %cleanup.cleanup21_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.cleanup21_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

err:                                              ; preds = %if.then4.i, %for.body.err_crit_edge, %if.end.err_crit_edge
  %23 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %functions, align 4
  %cmp.not22.i = icmp eq ptr %24, %functions
  br i1 %cmp.not22.i, label %err.gcov_info_free.exit_crit_edge, label %err.for.body.i_crit_edge

err.for.body.i_crit_edge:                         ; preds = %err
  br label %for.body.i

err.gcov_info_free.exit_crit_edge:                ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %gcov_info_free.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %err.for.body.i_crit_edge
  %fn.023.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %24, %err.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %fn.023.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %tmp.0.i = load ptr, ptr %fn.023.i, align 4
  %counters.i40 = getelementptr inbounds %struct.gcov_fn_info, ptr %fn.023.i, i32 0, i32 5
  %26 = ptrtoint ptr %counters.i40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %counters.i40, align 4
  tail call void @kvfree(ptr noundef %27) #10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fn.023.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %fn.023.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %fn.023.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fn.023.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %34 = ptrtoint ptr %fn.023.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %fn.023.i, align 4
  %prev.i.i41 = getelementptr inbounds %struct.list_head, ptr %fn.023.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i41 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i41, align 4
  tail call void @kfree(ptr noundef %fn.023.i) #10
  %cmp.not.i = icmp eq ptr %tmp.0.i, %functions
  br i1 %cmp.not.i, label %list_del.exit.i.gcov_info_free.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.gcov_info_free.exit_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gcov_info_free.exit

gcov_info_free.exit:                              ; preds = %list_del.exit.i.gcov_info_free.exit_crit_edge, %err.gcov_info_free.exit_crit_edge
  %36 = ptrtoint ptr %filename2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %filename2, align 4
  tail call void @kfree(ptr noundef %37) #10
  tail call void @kfree(ptr noundef nonnull %call) #10
  br label %cleanup21

cleanup21:                                        ; preds = %gcov_info_free.exit, %cleanup.cleanup21_crit_edge, %if.end6.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  %retval.0 = phi ptr [ null, %gcov_info_free.exit ], [ null, %entry.cleanup21_crit_edge ], [ %call, %if.end6.cleanup21_crit_edge ], [ %call, %cleanup.cleanup21_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gcov_info_free(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %functions = getelementptr inbounds %struct.gcov_info, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %cmp.not22 = icmp eq ptr %1, %functions
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %fn.023 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %fn.023 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %fn.023, align 4
  %counters = getelementptr inbounds %struct.gcov_fn_info, ptr %fn.023, i32 0, i32 5
  %3 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %counters, align 4
  tail call void @kvfree(ptr noundef %4) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fn.023) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fn.023, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %fn.023 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fn.023, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %fn.023 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %fn.023, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fn.023, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %fn.023) #10
  %cmp.not = icmp eq ptr %tmp.0, %functions
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %filename = getelementptr inbounds %struct.gcov_info, ptr %info, i32 0, i32 1
  %13 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %filename, align 4
  tail call void @kfree(ptr noundef %14) #10
  tail call void @kfree(ptr noundef %info) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @convert_to_gcda(ptr noundef %buffer, ptr noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @store_gcov_u32(ptr noundef %buffer, i32 noundef 0, i32 noundef 1734567009) #10
  %version = getelementptr inbounds %struct.gcov_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  %call1 = tail call i32 @store_gcov_u32(ptr noundef %buffer, i32 noundef %call, i32 noundef %1) #10
  %add2 = add i32 %call1, %call
  %checksum = getelementptr inbounds %struct.gcov_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %checksum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %checksum, align 4
  %call3 = tail call i32 @store_gcov_u32(ptr noundef %buffer, i32 noundef %add2, i32 noundef %3) #10
  %add4 = add i32 %call3, %add2
  %functions = getelementptr inbounds %struct.gcov_info, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %4)
  %fi_ptr.081 = load ptr, ptr %functions, align 4
  %cmp.not82 = icmp eq ptr %fi_ptr.081, %functions
  br i1 %cmp.not82, label %entry.for.end33_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end33

for.cond.loopexit:                                ; preds = %for.body24.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %pos.1.lcssa = phi i32 [ %add20, %for.body.for.cond.loopexit_crit_edge ], [ %add26, %for.body24.for.cond.loopexit_crit_edge ]
  %5 = ptrtoint ptr %fi_ptr.084 to i32
  call void @__asan_load4_noabort(i32 %5)
  %fi_ptr.0 = load ptr, ptr %fi_ptr.084, align 4
  %cmp.not = icmp eq ptr %fi_ptr.0, %functions
  br i1 %cmp.not, label %for.cond.loopexit.for.end33_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.loopexit.for.end33_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end33

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %fi_ptr.084 = phi ptr [ %fi_ptr.0, %for.cond.loopexit.for.body_crit_edge ], [ %fi_ptr.081, %entry.for.body_crit_edge ]
  %pos.083 = phi i32 [ %pos.1.lcssa, %for.cond.loopexit.for.body_crit_edge ], [ %add4, %entry.for.body_crit_edge ]
  %call6 = tail call i32 @store_gcov_u32(ptr noundef %buffer, i32 noundef %pos.083, i32 noundef 16777216) #10
  %add7 = add i32 %call6, %pos.083
  %call8 = tail call i32 @store_gcov_u32(ptr noundef %buffer, i32 noundef %add7, i32 noundef 3) #10
  %add9 = add i32 %add7, %call8
  %ident = getelementptr inbounds %struct.gcov_fn_info, ptr %fi_ptr.084, i32 0, i32 1
  %6 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ident, align 4
  %call10 = tail call i32 @store_gcov_u32(ptr noundef %buffer, i32 noundef %add9, i32 noundef %7) #10
  %add11 = add i32 %call10, %add9
  %checksum12 = getelementptr inbounds %struct.gcov_fn_info, ptr %fi_ptr.084, i32 0, i32 2
  %8 = ptrtoint ptr %checksum12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %checksum12, align 4
  %call13 = tail call i32 @store_gcov_u32(ptr noundef %buffer, i32 noundef %add11, i32 noundef %9) #10
  %add14 = add i32 %call13, %add11
  %cfg_checksum = getelementptr inbounds %struct.gcov_fn_info, ptr %fi_ptr.084, i32 0, i32 3
  %10 = ptrtoint ptr %cfg_checksum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg_checksum, align 4
  %call15 = tail call i32 @store_gcov_u32(ptr noundef %buffer, i32 noundef %add14, i32 noundef %11) #10
  %add16 = add i32 %call15, %add14
  %call17 = tail call i32 @store_gcov_u32(ptr noundef %buffer, i32 noundef %add16, i32 noundef 27328512) #10
  %add18 = add i32 %add16, %call17
  %num_counters = getelementptr inbounds %struct.gcov_fn_info, ptr %fi_ptr.084, i32 0, i32 4
  %12 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_counters, align 4
  %mul = shl i32 %13, 1
  %call19 = tail call i32 @store_gcov_u32(ptr noundef %buffer, i32 noundef %add18, i32 noundef %mul) #10
  %add20 = add i32 %call19, %add18
  %14 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_counters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2378.not = icmp eq i32 %15, 0
  br i1 %cmp2378.not, label %for.body.for.cond.loopexit_crit_edge, label %for.body24.lr.ph

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body24.lr.ph:                                 ; preds = %for.body
  %counters = getelementptr inbounds %struct.gcov_fn_info, ptr %fi_ptr.084, i32 0, i32 5
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.body24.lr.ph
  %pos.180 = phi i32 [ %add20, %for.body24.lr.ph ], [ %add26, %for.body24.for.body24_crit_edge ]
  %i.079 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc, %for.body24.for.body24_crit_edge ]
  %16 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %counters, align 4
  %arrayidx = getelementptr i64, ptr %17, i32 %i.079
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx, align 8
  %call25 = tail call i32 @store_gcov_u64(ptr noundef %buffer, i32 noundef %pos.180, i64 noundef %19) #10
  %add26 = add i32 %call25, %pos.180
  %inc = add nuw i32 %i.079, 1
  %20 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_counters, align 4
  %cmp23 = icmp ult i32 %inc, %21
  br i1 %cmp23, label %for.body24.for.body24_crit_edge, label %for.body24.for.cond.loopexit_crit_edge

for.body24.for.cond.loopexit_crit_edge:           ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24

for.end33:                                        ; preds = %for.cond.loopexit.for.end33_crit_edge, %entry.for.end33_crit_edge
  %pos.0.lcssa = phi i32 [ %add4, %entry.for.end33_crit_edge ], [ %pos.1.lcssa, %for.cond.loopexit.for.end33_crit_edge ]
  ret i32 %pos.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @store_gcov_u32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @store_gcov_u64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__ksymtab_llvm_gcov_init, !1, !"__ksymtab_llvm_gcov_init", i1 false, i1 false}
!1 = !{!"../kernel/gcov/clang.c", i32 103, i32 1}
!2 = !{ptr @__ksymtab_llvm_gcda_start_file, !3, !"__ksymtab_llvm_gcda_start_file", i1 false, i1 false}
!3 = !{!"../kernel/gcov/clang.c", i32 111, i32 1}
!4 = !{ptr @__ksymtab_llvm_gcda_emit_function, !5, !"__ksymtab_llvm_gcda_emit_function", i1 false, i1 false}
!5 = !{!"../kernel/gcov/clang.c", i32 126, i32 1}
!6 = !{ptr @__ksymtab_llvm_gcda_emit_arcs, !7, !"__ksymtab_llvm_gcda_emit_arcs", i1 false, i1 false}
!7 = !{!"../kernel/gcov/clang.c", i32 136, i32 1}
!8 = !{ptr @__ksymtab_llvm_gcda_summary_info, !9, !"__ksymtab_llvm_gcda_summary_info", i1 false, i1 false}
!9 = !{!"../kernel/gcov/clang.c", i32 141, i32 1}
!10 = !{ptr @__ksymtab_llvm_gcda_end_file, !11, !"__ksymtab_llvm_gcda_end_file", i1 false, i1 false}
!11 = !{!"../kernel/gcov/clang.c", i32 146, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/gcov/clang.c", i32 217, i32 14}
!14 = !{ptr @gcov_link, !15, !"gcov_link", i1 false, i1 false}
!15 = !{!"../kernel/gcov/clang.c", i32 216, i32 24}
!16 = !{ptr @current_info, !17, !"current_info", i1 false, i1 false}
!17 = !{!"../kernel/gcov/clang.c", i32 78, i32 26}
!18 = !{ptr @clang_gcov_list, !19, !"clang_gcov_list", i1 false, i1 false}
!19 = !{!"../kernel/gcov/clang.c", i32 80, i32 8}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
