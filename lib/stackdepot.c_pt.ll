; ModuleID = '/llk/IR_all_yes/lib/stackdepot.c_pt.bc'
source_filename = "../lib/stackdepot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+stack_depot_init\22, \22a\22\09"
module asm "\09.weak\09__crc_stack_depot_init\09\09\09\09"
module asm "\09.long\09__crc_stack_depot_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stack_depot_init:\09\09\09\09\09"
module asm "\09.asciz \09\22stack_depot_init\22\09\09\09\09\09"
module asm "__kstrtabns_stack_depot_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stack_depot_snprint\22, \22a\22\09"
module asm "\09.weak\09__crc_stack_depot_snprint\09\09\09\09"
module asm "\09.long\09__crc_stack_depot_snprint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stack_depot_snprint:\09\09\09\09\09"
module asm "\09.asciz \09\22stack_depot_snprint\22\09\09\09\09\09"
module asm "__kstrtabns_stack_depot_snprint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stack_depot_print\22, \22a\22\09"
module asm "\09.weak\09__crc_stack_depot_print\09\09\09\09"
module asm "\09.long\09__crc_stack_depot_print\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stack_depot_print:\09\09\09\09\09"
module asm "\09.asciz \09\22stack_depot_print\22\09\09\09\09\09"
module asm "__kstrtabns_stack_depot_print:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stack_depot_fetch\22, \22a\22\09"
module asm "\09.weak\09__crc_stack_depot_fetch\09\09\09\09"
module asm "\09.long\09__crc_stack_depot_fetch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stack_depot_fetch:\09\09\09\09\09"
module asm "\09.asciz \09\22stack_depot_fetch\22\09\09\09\09\09"
module asm "__kstrtabns_stack_depot_fetch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__stack_depot_save\22, \22a\22\09"
module asm "\09.weak\09__crc___stack_depot_save\09\09\09\09"
module asm "\09.long\09__crc___stack_depot_save\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___stack_depot_save:\09\09\09\09\09"
module asm "\09.asciz \09\22__stack_depot_save\22\09\09\09\09\09"
module asm "__kstrtabns___stack_depot_save:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stack_depot_save\22, \22a\22\09"
module asm "\09.weak\09__crc_stack_depot_save\09\09\09\09"
module asm "\09.long\09__crc_stack_depot_save\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stack_depot_save:\09\09\09\09\09"
module asm "\09.asciz \09\22stack_depot_save\22\09\09\09\09\09"
module asm "__kstrtabns_stack_depot_save:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stack_record = type { ptr, i32, i32, %union.handle_parts, [0 x i32] }
%union.handle_parts = type { i32 }

@__setup_str_is_stack_depot_disabled = internal constant [20 x i8] c"stack_depot_disable\00", section ".init.rodata", align 1
@__setup_is_stack_depot_disabled = internal global %struct.obs_kernel_param { ptr @__setup_str_is_stack_depot_disabled, ptr @is_stack_depot_disabled, i32 1 }, section ".init.setup", align 4
@stack_depot_init.stack_depot_init_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @stack_depot_init.stack_depot_init_mutex, i64 52), ptr getelementptr (i8, ptr @stack_depot_init.stack_depot_init_mutex, i64 52) }, ptr @stack_depot_init.stack_depot_init_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, align 4
@.str = private unnamed_addr constant [33 x i8] c"stack_depot_init_mutex.wait_lock\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"stack_depot_init_mutex\00", align 1
@stack_depot_disable = internal global i8 0, align 1
@stack_table = internal unnamed_addr global ptr null, align 4
@stack_depot_init._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 179, ptr null, ptr null }, align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\016Stack Depot allocating hash table with kvmalloc\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"stack_depot_init\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"lib/stackdepot.c\00", align 1
@stack_depot_init._entry_ptr = internal global ptr @stack_depot_init._entry, section ".printk_index", align 4
@stack_depot_init._entry.5 = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 182, ptr null, ptr null }, align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"\016Stack Depot allocating hash table with memblock_alloc\0A\00", align 1
@stack_depot_init._entry_ptr.7 = internal global ptr @stack_depot_init._entry.5, section ".printk_index", align 4
@stack_depot_init._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 189, ptr null, ptr null }, align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"\013Stack Depot hash table allocation failed, disabling\0A\00", align 1
@stack_depot_init._entry_ptr.10 = internal global ptr @stack_depot_init._entry.8, section ".printk_index", align 4
@__kstrtab_stack_depot_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_stack_depot_init = external dso_local constant [0 x i8], align 1
@__ksymtab_stack_depot_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stack_depot_init to i32), ptr @__kstrtab_stack_depot_init, ptr @__kstrtabns_stack_depot_init }, section "___ksymtab_gpl+stack_depot_init", align 4
@__kstrtab_stack_depot_snprint = external dso_local constant [0 x i8], align 1
@__kstrtabns_stack_depot_snprint = external dso_local constant [0 x i8], align 1
@__ksymtab_stack_depot_snprint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stack_depot_snprint to i32), ptr @__kstrtab_stack_depot_snprint, ptr @__kstrtabns_stack_depot_snprint }, section "___ksymtab_gpl+stack_depot_snprint", align 4
@__kstrtab_stack_depot_print = external dso_local constant [0 x i8], align 1
@__kstrtabns_stack_depot_print = external dso_local constant [0 x i8], align 1
@__ksymtab_stack_depot_print = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stack_depot_print to i32), ptr @__kstrtab_stack_depot_print, ptr @__kstrtabns_stack_depot_print }, section "___ksymtab_gpl+stack_depot_print", align 4
@depot_index = internal unnamed_addr global i32 0, align 4
@.str.11 = private unnamed_addr constant [52 x i8] c"slab index %d out of bounds (%d) for stack id %08x\0A\00", align 1
@stack_slabs = internal unnamed_addr global [8192 x ptr] zeroinitializer, align 4
@__kstrtab_stack_depot_fetch = external dso_local constant [0 x i8], align 1
@__kstrtabns_stack_depot_fetch = external dso_local constant [0 x i8], align 1
@__ksymtab_stack_depot_fetch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stack_depot_fetch to i32), ptr @__kstrtab_stack_depot_fetch, ptr @__kstrtabns_stack_depot_fetch }, section "___ksymtab_gpl+stack_depot_fetch", align 4
@next_slab_inited = internal global i32 0, align 4
@depot_lock = internal global %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, align 4
@__kstrtab___stack_depot_save = external dso_local constant [0 x i8], align 1
@__kstrtabns___stack_depot_save = external dso_local constant [0 x i8], align 1
@__ksymtab___stack_depot_save = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__stack_depot_save to i32), ptr @__kstrtab___stack_depot_save, ptr @__kstrtabns___stack_depot_save }, section "___ksymtab_gpl+__stack_depot_save", align 4
@__kstrtab_stack_depot_save = external dso_local constant [0 x i8], align 1
@__kstrtabns_stack_depot_save = external dso_local constant [0 x i8], align 1
@__ksymtab_stack_depot_save = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stack_depot_save to i32), ptr @__kstrtab_stack_depot_save, ptr @__kstrtabns_stack_depot_save }, section "___ksymtab_gpl+stack_depot_save", align 4
@is_stack_depot_disabled._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 158, ptr null, ptr null }, align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"\016Stack Depot is disabled\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"is_stack_depot_disabled\00", align 1
@is_stack_depot_disabled._entry_ptr = internal global ptr @is_stack_depot_disabled._entry, section ".printk_index", align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"depot_lock\00", align 1
@depot_offset = internal unnamed_addr global i32 0, align 4
@depot_alloc_stack.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Stack depot reached limit capacity\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab___stack_depot_save, ptr @__ksymtab_stack_depot_fetch, ptr @__ksymtab_stack_depot_init, ptr @__ksymtab_stack_depot_print, ptr @__ksymtab_stack_depot_save, ptr @__ksymtab_stack_depot_snprint, ptr @__setup_is_stack_depot_disabled, ptr @is_stack_depot_disabled._entry, ptr @is_stack_depot_disabled._entry_ptr, ptr @stack_depot_init._entry, ptr @stack_depot_init._entry.5, ptr @stack_depot_init._entry.8, ptr @stack_depot_init._entry_ptr, ptr @stack_depot_init._entry_ptr.10, ptr @stack_depot_init._entry_ptr.7], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @is_stack_depot_disabled(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  %call = tail call i32 @kstrtobool(ptr noundef %str, ptr noundef nonnull @stack_depot_disable) #7
  %tobool.not = icmp ne i32 %call, 0
  %0 = load i8, ptr @stack_depot_disable, align 1
  %tobool1.not = icmp eq i8 %0, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  store ptr null, ptr @stack_table, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stack_depot_init() #1 section ".ref.text" align 64 {
entry:
  tail call void @mutex_lock_nested(ptr noundef nonnull @stack_depot_init.stack_depot_init_mutex, i32 noundef 0) #7
  %0 = load i8, ptr @stack_depot_disable, align 1, !range !9
  %tobool = icmp ne i8 %0, 0
  %1 = load ptr, ptr @stack_table, align 4
  %tobool1 = icmp ne ptr %1, null
  %or.cond = select i1 %tobool, i1 true, i1 %tobool1
  br i1 %or.cond, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call zeroext i1 @slab_is_available() #7
  br i1 %call, label %do.end, label %do.end7

do.end:                                           ; preds = %if.then
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  %call.i25 = tail call noalias ptr @kvmalloc_node(i32 noundef 4194304, i32 noundef 3264, i32 noundef -1) #9
  br label %if.end

do.end7:                                          ; preds = %if.then
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef 4194304, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #7
  br label %if.end

if.end:                                           ; preds = %do.end7, %do.end
  %storemerge = phi ptr [ %call.i, %do.end7 ], [ %call.i25, %do.end ]
  store ptr %storemerge, ptr @stack_table, align 4
  %tobool11.not = icmp eq ptr %storemerge, null
  br i1 %tobool11.not, label %cleanup.thread, label %for.body

for.body:                                         ; preds = %for.body, %if.end
  %i.027 = phi i32 [ %inc, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr ptr, ptr %storemerge, i32 %i.027
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 1048576
  br i1 %exitcond.not, label %return, label %for.body

cleanup.thread:                                   ; preds = %if.end
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  store i8 1, ptr @stack_depot_disable, align 1
  br label %return

return:                                           ; preds = %cleanup.thread, %for.body, %entry
  %retval.1 = phi i32 [ -12, %cleanup.thread ], [ 0, %entry ], [ 0, %for.body ]
  tail call void @mutex_unlock(ptr noundef nonnull @stack_depot_init.stack_depot_init_mutex) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @slab_is_available() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stack_depot_snprint(i32 noundef %handle, ptr noundef %buf, i32 noundef %size, i32 noundef %spaces) #4 align 64 {
entry:
  %0 = shl i32 %handle, 3
  %shl.i = and i32 %0, 16368
  %tobool.not.i = icmp eq i32 %handle, 0
  br i1 %tobool.not.i, label %cond.end, label %if.end.i

if.end.i:                                         ; preds = %entry
  %bf.lshr2.i = lshr i32 %handle, 11
  %1 = load i32, ptr @depot_index, align 4
  %cmp.i = icmp sgt i32 %bf.lshr2.i, %1
  br i1 %cmp.i, label %do.end.i, label %if.end23.i

do.end.i:                                         ; preds = %if.end.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 305, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %bf.lshr2.i, i32 noundef %1, i32 noundef %handle) #7
  br label %cond.end

if.end23.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr [8192 x ptr], ptr @stack_slabs, i32 0, i32 %bf.lshr2.i
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool26.not.i = icmp eq ptr %2, null
  br i1 %tobool26.not.i, label %cond.end, label %stack_depot_fetch.exit

stack_depot_fetch.exit:                           ; preds = %if.end23.i
  %add.ptr.i = getelementptr i8, ptr %2, i32 %shl.i
  %size.i = getelementptr inbounds %struct.stack_record, ptr %add.ptr.i, i32 0, i32 2
  %3 = load i32, ptr %size.i, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %stack_depot_fetch.exit
  %entries29.i = getelementptr inbounds %struct.stack_record, ptr %add.ptr.i, i32 0, i32 4
  %call1 = tail call i32 @stack_trace_snprint(ptr noundef %buf, i32 noundef %size, ptr noundef %entries29.i, i32 noundef %3, i32 noundef %spaces) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %stack_depot_fetch.exit, %if.end23.i, %do.end.i, %entry
  %cond = phi i32 [ %call1, %cond.true ], [ 0, %stack_depot_fetch.exit ], [ 0, %do.end.i ], [ 0, %entry ], [ 0, %if.end23.i ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stack_depot_fetch(i32 noundef %handle, ptr nocapture noundef writeonly %entries) #4 align 64 {
entry:
  %0 = shl i32 %handle, 3
  %shl = and i32 %0, 16368
  store ptr null, ptr %entries, align 4
  %tobool.not = icmp eq i32 %handle, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bf.lshr2 = lshr i32 %handle, 11
  %1 = load i32, ptr @depot_index, align 4
  %cmp = icmp sgt i32 %bf.lshr2, %1
  br i1 %cmp, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 305, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %bf.lshr2, i32 noundef %1, i32 noundef %handle) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %arrayidx = getelementptr [8192 x ptr], ptr @stack_slabs, i32 0, i32 %bf.lshr2
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool26.not = icmp eq ptr %2, null
  br i1 %tobool26.not, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end23
  %add.ptr = getelementptr i8, ptr %2, i32 %shl
  %entries29 = getelementptr inbounds %struct.stack_record, ptr %add.ptr, i32 0, i32 4
  store ptr %entries29, ptr %entries, align 4
  %size = getelementptr inbounds %struct.stack_record, ptr %add.ptr, i32 0, i32 2
  %3 = load i32, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end23, %do.end, %entry
  %retval.0 = phi i32 [ 0, %do.end ], [ %3, %if.end28 ], [ 0, %entry ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_snprint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stack_depot_print(i32 noundef %stack) #4 align 64 {
entry:
  %0 = shl i32 %stack, 3
  %shl.i = and i32 %0, 16368
  %tobool.not.i = icmp eq i32 %stack, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %entry
  %bf.lshr2.i = lshr i32 %stack, 11
  %1 = load i32, ptr @depot_index, align 4
  %cmp.i = icmp sgt i32 %bf.lshr2.i, %1
  br i1 %cmp.i, label %do.end.i, label %if.end23.i

do.end.i:                                         ; preds = %if.end.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 305, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %bf.lshr2.i, i32 noundef %1, i32 noundef %stack) #7
  br label %if.end

if.end23.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr [8192 x ptr], ptr @stack_slabs, i32 0, i32 %bf.lshr2.i
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool26.not.i = icmp eq ptr %2, null
  br i1 %tobool26.not.i, label %if.end, label %stack_depot_fetch.exit

stack_depot_fetch.exit:                           ; preds = %if.end23.i
  %add.ptr.i = getelementptr i8, ptr %2, i32 %shl.i
  %size.i = getelementptr inbounds %struct.stack_record, ptr %add.ptr.i, i32 0, i32 2
  %3 = load i32, ptr %size.i, align 4
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %stack_depot_fetch.exit
  %entries29.i = getelementptr inbounds %struct.stack_record, ptr %add.ptr.i, i32 0, i32 4
  tail call void @stack_trace_print(ptr noundef %entries29.i, i32 noundef %3, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %stack_depot_fetch.exit, %if.end23.i, %do.end.i, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stack_trace_print(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__stack_depot_save(ptr noundef %entries, i32 noundef %nr_entries, i32 noundef %alloc_flags, i1 noundef zeroext %can_alloc) #4 align 64 {
entry:
  %call = tail call i32 @filter_irq_stacks(ptr noundef %entries, i32 noundef %nr_entries) #7
  %cmp = icmp ne i32 %call, 0
  %0 = load i8, ptr @stack_depot_disable, align 1
  %tobool3.not = icmp eq i8 %0, 0
  %or.cond = select i1 %cmp, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.end, label %fast_exit, !prof !10

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 4) #10
  %2 = extractvalue { i32, i1 } %1, 1
  %3 = extractvalue { i32, i1 } %1, 0
  %.op.i = lshr exact i32 %3, 2
  %div2.i = select i1 %2, i32 1073741823, i32 %.op.i
  %shl.i.i = shl nuw i32 %div2.i, 2
  %add1.i.i = add i32 %shl.i.i, 1979019643
  %cmp13.i.i = icmp ugt i32 %div2.i, 3
  br i1 %cmp13.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %if.end
  %c.018.i.i = phi i32 [ %xor26.i.i, %while.body.i.i ], [ %add1.i.i, %if.end ]
  %b.017.i.i = phi i32 [ %add27.i.i, %while.body.i.i ], [ %add1.i.i, %if.end ]
  %a.016.i.i = phi i32 [ %add23.i.i, %while.body.i.i ], [ %add1.i.i, %if.end ]
  %k.addr.015.i.i = phi ptr [ %add.ptr.i.i, %while.body.i.i ], [ %entries, %if.end ]
  %length.addr.014.i.i = phi i32 [ %sub28.i.i, %while.body.i.i ], [ %div2.i, %if.end ]
  %4 = load i32, ptr %k.addr.015.i.i, align 4
  %add2.i.i = add i32 %4, %a.016.i.i
  %arrayidx3.i.i = getelementptr i32, ptr %k.addr.015.i.i, i32 1
  %5 = load i32, ptr %arrayidx3.i.i, align 4
  %add4.i.i = add i32 %5, %b.017.i.i
  %arrayidx5.i.i = getelementptr i32, ptr %k.addr.015.i.i, i32 2
  %6 = load i32, ptr %arrayidx5.i.i, align 4
  %add6.i.i = add i32 %6, %c.018.i.i
  %sub.i.i = sub i32 %add2.i.i, %add6.i.i
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i.i, i32 %add6.i.i, i32 4) #10
  %xor.i.i = xor i32 %sub.i.i, %or.i.i.i
  %add7.i.i = add i32 %add6.i.i, %add4.i.i
  %sub8.i.i = sub i32 %add4.i.i, %xor.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 6) #10
  %xor10.i.i = xor i32 %sub8.i.i, %or.i1.i.i
  %add11.i.i = add i32 %xor.i.i, %add7.i.i
  %sub12.i.i = sub i32 %add7.i.i, %xor10.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i.i, i32 %xor10.i.i, i32 8) #10
  %xor14.i.i = xor i32 %sub12.i.i, %or.i2.i.i
  %add15.i.i = add i32 %xor10.i.i, %add11.i.i
  %sub16.i.i = sub i32 %add11.i.i, %xor14.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i.i, i32 %xor14.i.i, i32 16) #10
  %xor18.i.i = xor i32 %sub16.i.i, %or.i3.i.i
  %add19.i.i = add i32 %xor14.i.i, %add15.i.i
  %sub20.i.i = sub i32 %add15.i.i, %xor18.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i.i, i32 %xor18.i.i, i32 19) #10
  %xor22.i.i = xor i32 %sub20.i.i, %or.i4.i.i
  %add23.i.i = add i32 %xor18.i.i, %add19.i.i
  %sub24.i.i = sub i32 %add19.i.i, %xor22.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i.i, i32 %xor22.i.i, i32 4) #10
  %xor26.i.i = xor i32 %sub24.i.i, %or.i5.i.i
  %add27.i.i = add i32 %xor22.i.i, %add23.i.i
  %sub28.i.i = add i32 %length.addr.014.i.i, -3
  %add.ptr.i.i = getelementptr i32, ptr %k.addr.015.i.i, i32 3
  %cmp.i.i = icmp ugt i32 %sub28.i.i, 3
  br i1 %cmp.i.i, label %while.body.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i, %if.end
  %length.addr.0.lcssa.i.i = phi i32 [ %.op.i, %if.end ], [ %sub28.i.i, %while.body.i.i ]
  %k.addr.0.lcssa.i.i = phi ptr [ %entries, %if.end ], [ %add.ptr.i.i, %while.body.i.i ]
  %a.0.lcssa.i.i = phi i32 [ %add1.i.i, %if.end ], [ %add23.i.i, %while.body.i.i ]
  %b.0.lcssa.i.i = phi i32 [ %add1.i.i, %if.end ], [ %add27.i.i, %while.body.i.i ]
  %c.0.lcssa.i.i = phi i32 [ %add1.i.i, %if.end ], [ %xor26.i.i, %while.body.i.i ]
  switch i32 %length.addr.0.lcssa.i.i, label %hash_stack.exit [
    i32 3, label %sw.bb.i.i
    i32 2, label %sw.bb31.i.i
    i32 1, label %sw.bb34.i.i
  ]

sw.bb.i.i:                                        ; preds = %while.end.i.i
  %arrayidx29.i.i = getelementptr i32, ptr %k.addr.0.lcssa.i.i, i32 2
  %7 = load i32, ptr %arrayidx29.i.i, align 4
  %add30.i.i = add i32 %7, %c.0.lcssa.i.i
  br label %sw.bb31.i.i

sw.bb31.i.i:                                      ; preds = %sw.bb.i.i, %while.end.i.i
  %c.1.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i ], [ %add30.i.i, %sw.bb.i.i ]
  %arrayidx32.i.i = getelementptr i32, ptr %k.addr.0.lcssa.i.i, i32 1
  %8 = load i32, ptr %arrayidx32.i.i, align 4
  %add33.i.i = add i32 %8, %b.0.lcssa.i.i
  br label %sw.bb34.i.i

sw.bb34.i.i:                                      ; preds = %sw.bb31.i.i, %while.end.i.i
  %b.1.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i ], [ %add33.i.i, %sw.bb31.i.i ]
  %c.2.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i ], [ %c.1.i.i, %sw.bb31.i.i ]
  %9 = load i32, ptr %k.addr.0.lcssa.i.i, align 4
  %add36.i.i = add i32 %9, %a.0.lcssa.i.i
  %xor37.i.i = xor i32 %c.2.i.i, %b.1.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %b.1.i.i, i32 %b.1.i.i, i32 14) #10
  %sub39.i.i = sub i32 %xor37.i.i, %or.i6.i.i
  %xor40.i.i = xor i32 %add36.i.i, %sub39.i.i
  %or.i7.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i, i32 %sub39.i.i, i32 11) #10
  %sub42.i.i = sub i32 %xor40.i.i, %or.i7.i.i
  %xor43.i.i = xor i32 %sub42.i.i, %b.1.i.i
  %or.i8.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i, i32 %sub42.i.i, i32 25) #10
  %sub45.i.i = sub i32 %xor43.i.i, %or.i8.i.i
  %xor46.i.i = xor i32 %sub45.i.i, %sub39.i.i
  %or.i9.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i, i32 %sub45.i.i, i32 16) #10
  %sub48.i.i = sub i32 %xor46.i.i, %or.i9.i.i
  %xor49.i.i = xor i32 %sub48.i.i, %sub42.i.i
  %or.i10.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i, i32 %sub48.i.i, i32 4) #10
  %sub51.i.i = sub i32 %xor49.i.i, %or.i10.i.i
  %xor52.i.i = xor i32 %sub51.i.i, %sub45.i.i
  %or.i11.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i, i32 %sub51.i.i, i32 14) #10
  %sub54.i.i = sub i32 %xor52.i.i, %or.i11.i.i
  %xor55.i.i = xor i32 %sub54.i.i, %sub48.i.i
  %or.i12.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i, i32 %sub54.i.i, i32 24) #10
  %sub57.i.i = sub i32 %xor55.i.i, %or.i12.i.i
  br label %hash_stack.exit

hash_stack.exit:                                  ; preds = %sw.bb34.i.i, %while.end.i.i
  %c.3.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i ], [ %sub57.i.i, %sw.bb34.i.i ]
  %10 = load ptr, ptr @stack_table, align 4
  %and = and i32 %c.3.i.i, 1048575
  %arrayidx = getelementptr ptr, ptr %10, i32 %and
  %11 = load volatile ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !11
  %tobool.not18.i = icmp eq ptr %11, null
  br i1 %tobool.not18.i, label %if.end12, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %hash_stack.exit
  %found.019.i = phi ptr [ %16, %for.inc.i ], [ %11, %hash_stack.exit ]
  %hash1.i = getelementptr inbounds %struct.stack_record, ptr %found.019.i, i32 0, i32 1
  %12 = load i32, ptr %hash1.i, align 4
  %cmp.i = icmp eq i32 %12, %c.3.i.i
  br i1 %cmp.i, label %land.lhs.true.i, label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %size2.i = getelementptr inbounds %struct.stack_record, ptr %found.019.i, i32 0, i32 2
  %13 = load i32, ptr %size2.i, align 4
  %cmp3.i = icmp eq i32 %13, %call
  br i1 %cmp3.i, label %for.body.i.preheader.i, label %for.inc.i

for.body.i.preheader.i:                           ; preds = %land.lhs.true.i
  %entries5.i = getelementptr inbounds %struct.stack_record, ptr %found.019.i, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.i.preheader.i
  %dec8.in.i.i = phi i32 [ %dec8.i.i, %for.inc.i.i ], [ %call, %for.body.i.preheader.i ]
  %u2.addr.07.i.i = phi ptr [ %incdec.ptr1.i.i, %for.inc.i.i ], [ %entries5.i, %for.body.i.preheader.i ]
  %u1.addr.06.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i ], [ %entries, %for.body.i.preheader.i ]
  %14 = load i32, ptr %u1.addr.06.i.i, align 4
  %15 = load i32, ptr %u2.addr.07.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %14, %15
  br i1 %cmp.not.i.i, label %for.inc.i.i, label %for.inc.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec8.i.i = add i32 %dec8.in.i.i, -1
  %incdec.ptr.i.i = getelementptr i32, ptr %u1.addr.06.i.i, i32 1
  %incdec.ptr1.i.i = getelementptr i32, ptr %u2.addr.07.i.i, i32 1
  %tobool.not.i.i = icmp eq i32 %dec8.i.i, 0
  br i1 %tobool.not.i.i, label %find_stack.exit, label %for.body.i.i

for.inc.i:                                        ; preds = %for.body.i.i, %land.lhs.true.i, %for.body.i
  %16 = load ptr, ptr %found.019.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end12, label %for.body.i

find_stack.exit:                                  ; preds = %for.inc.i.i
  %tobool10.not = icmp eq ptr %found.019.i, null
  br i1 %tobool10.not, label %if.end12, label %if.then123

if.end12:                                         ; preds = %find_stack.exit, %for.inc.i, %hash_stack.exit
  br i1 %can_alloc, label %land.rhs, label %do.body41

land.rhs:                                         ; preds = %if.end12
  %17 = load volatile i32, ptr @next_slab_inited, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !12
  %tobool23.not = icmp eq i32 %17, 0
  br i1 %tobool23.not, label %if.then32, label %do.body41, !prof !13

if.then32:                                        ; preds = %land.rhs
  %and34 = and i32 %alloc_flags, 3808
  %or = or i32 %and34, 8192
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or, i32 noundef 2, i32 noundef 0, ptr noundef null) #7
  %tobool36.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool36.not, label %do.body41, label %if.then37

if.then37:                                        ; preds = %if.then32
  %call38 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #7
  br label %do.body41

do.body41:                                        ; preds = %if.then37, %if.then32, %land.rhs, %if.end12
  %prealloc.0 = phi ptr [ null, %if.then32 ], [ %call38, %if.then37 ], [ null, %land.rhs ], [ null, %if.end12 ]
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @depot_lock) #7
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool.not18.i151 = icmp eq ptr %18, null
  br i1 %tobool.not18.i151, label %if.then49, label %for.body.i157

for.body.i157:                                    ; preds = %for.inc.i175, %do.body41
  %found.019.i154 = phi ptr [ %23, %for.inc.i175 ], [ %18, %do.body41 ]
  %hash1.i155 = getelementptr inbounds %struct.stack_record, ptr %found.019.i154, i32 0, i32 1
  %19 = load i32, ptr %hash1.i155, align 4
  %cmp.i156 = icmp eq i32 %19, %c.3.i.i
  br i1 %cmp.i156, label %land.lhs.true.i160, label %for.inc.i175

land.lhs.true.i160:                               ; preds = %for.body.i157
  %size2.i158 = getelementptr inbounds %struct.stack_record, ptr %found.019.i154, i32 0, i32 2
  %20 = load i32, ptr %size2.i158, align 4
  %cmp3.i159 = icmp eq i32 %20, %call
  br i1 %cmp3.i159, label %for.body.i.preheader.i163, label %for.inc.i175

for.body.i.preheader.i163:                        ; preds = %land.lhs.true.i160
  %entries5.i162 = getelementptr inbounds %struct.stack_record, ptr %found.019.i154, i32 0, i32 4
  br label %for.body.i.i168

for.body.i.i168:                                  ; preds = %for.inc.i.i173, %for.body.i.preheader.i163
  %dec8.in.i.i164 = phi i32 [ %dec8.i.i169, %for.inc.i.i173 ], [ %call, %for.body.i.preheader.i163 ]
  %u2.addr.07.i.i165 = phi ptr [ %incdec.ptr1.i.i171, %for.inc.i.i173 ], [ %entries5.i162, %for.body.i.preheader.i163 ]
  %u1.addr.06.i.i166 = phi ptr [ %incdec.ptr.i.i170, %for.inc.i.i173 ], [ %entries, %for.body.i.preheader.i163 ]
  %21 = load i32, ptr %u1.addr.06.i.i166, align 4
  %22 = load i32, ptr %u2.addr.07.i.i165, align 4
  %cmp.not.i.i167 = icmp eq i32 %21, %22
  br i1 %cmp.not.i.i167, label %for.inc.i.i173, label %for.inc.i175

for.inc.i.i173:                                   ; preds = %for.body.i.i168
  %dec8.i.i169 = add i32 %dec8.in.i.i164, -1
  %incdec.ptr.i.i170 = getelementptr i32, ptr %u1.addr.06.i.i166, i32 1
  %incdec.ptr1.i.i171 = getelementptr i32, ptr %u2.addr.07.i.i165, i32 1
  %tobool.not.i.i172 = icmp eq i32 %dec8.i.i169, 0
  br i1 %tobool.not.i.i172, label %find_stack.exit177, label %for.body.i.i168

for.inc.i175:                                     ; preds = %for.body.i.i168, %land.lhs.true.i160, %for.body.i157
  %23 = load ptr, ptr %found.019.i154, align 4
  %tobool.not.i174 = icmp eq ptr %23, null
  br i1 %tobool.not.i174, label %if.then49, label %for.body.i157

find_stack.exit177:                               ; preds = %for.inc.i.i173
  %tobool48.not = icmp eq ptr %found.019.i154, null
  br i1 %tobool48.not, label %if.then49, label %if.else

if.then49:                                        ; preds = %find_stack.exit177, %for.inc.i175, %do.body41
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %3, i32 16) #10
  %spec.select.i.op.i = add i32 %spec.select.i.i, 15
  %spec.select.i.op.op.i = and i32 %spec.select.i.op.i, -16
  %and.i = select i1 %2, i32 0, i32 %spec.select.i.op.op.i
  %24 = load i32, ptr @depot_offset, align 4
  %add1.i = add i32 %24, %and.i
  %cmp.i178 = icmp ugt i32 %add1.i, 16384
  br i1 %cmp.i178, label %if.then.i, label %if.end83.i, !prof !13

if.then.i:                                        ; preds = %if.then49
  %25 = load i32, ptr @depot_index, align 4
  %add4.i = add i32 %25, 1
  %cmp6.i = icmp sgt i32 %add4.i, 8191
  br i1 %cmp6.i, label %if.then14.i, label %if.end55.i, !prof !13

if.then14.i:                                      ; preds = %if.then.i
  %.b119.i = load i1, ptr @depot_alloc_stack.__already_done, align 1
  br i1 %.b119.i, label %exit, label %if.then26.i, !prof !14

if.then26.i:                                      ; preds = %if.then14.i
  store i1 true, ptr @depot_alloc_stack.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.16) #7
  br label %exit

if.end55.i:                                       ; preds = %if.then.i
  store i32 %add4.i, ptr @depot_index, align 4
  store i32 0, ptr @depot_offset, align 4
  %add56.i = add i32 %25, 2
  %cmp58.i = icmp slt i32 %add56.i, 8192
  br i1 %cmp58.i, label %do.end68.i, label %if.end83.i

do.end68.i:                                       ; preds = %if.end55.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !15
  store volatile i32 0, ptr @next_slab_inited, align 4
  br label %if.end83.i

if.end83.i:                                       ; preds = %do.end68.i, %if.end55.i, %if.then49
  %tobool.not.i.i179 = icmp eq ptr %prealloc.0, null
  br i1 %tobool.not.i.i179, label %init_stack_slab.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end83.i
  %26 = load volatile i32, ptr @next_slab_inited, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !16
  %tobool5.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %init_stack_slab.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %27 = load i32, ptr @depot_index, align 4
  %arrayidx.i.i = getelementptr [8192 x ptr], ptr @stack_slabs, i32 0, i32 %27
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.i180 = icmp eq ptr %28, null
  br i1 %cmp.i.i180, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.end7.i.i
  store ptr %prealloc.0, ptr %arrayidx.i.i, align 4
  br label %init_stack_slab.exit.i

if.else.i.i:                                      ; preds = %if.end7.i.i
  %add.i.i = add i32 %27, 1
  %cmp10.i.i = icmp slt i32 %add.i.i, 8192
  br i1 %cmp10.i.i, label %if.then12.i.i, label %do.end23.i.i

if.then12.i.i:                                    ; preds = %if.else.i.i
  %arrayidx14.i.i = getelementptr [8192 x ptr], ptr @stack_slabs, i32 0, i32 %add.i.i
  store ptr %prealloc.0, ptr %arrayidx14.i.i, align 4
  br label %do.end23.i.i

do.end23.i.i:                                     ; preds = %if.then12.i.i, %if.else.i.i
  %prealloc.1 = phi ptr [ null, %if.then12.i.i ], [ %prealloc.0, %if.else.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !17
  store volatile i32 1, ptr @next_slab_inited, align 4
  br label %init_stack_slab.exit.i

init_stack_slab.exit.i:                           ; preds = %do.end23.i.i, %if.then8.i.i, %if.end.i.i, %if.end83.i
  %prealloc.2 = phi ptr [ null, %if.end83.i ], [ null, %if.then8.i.i ], [ %prealloc.1, %do.end23.i.i ], [ %prealloc.0, %if.end.i.i ]
  %29 = load i32, ptr @depot_index, align 4
  %arrayidx.i = getelementptr [8192 x ptr], ptr @stack_slabs, i32 0, i32 %29
  %30 = load ptr, ptr %arrayidx.i, align 4
  %cmp85.i = icmp eq ptr %30, null
  br i1 %cmp85.i, label %exit, label %depot_alloc_stack.exit

depot_alloc_stack.exit:                           ; preds = %init_stack_slab.exit.i
  %31 = load i32, ptr @depot_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 %31
  %hash90.i = getelementptr inbounds %struct.stack_record, ptr %add.ptr.i, i32 0, i32 1
  store i32 %c.3.i.i, ptr %hash90.i, align 4
  %size91.i = getelementptr inbounds %struct.stack_record, ptr %add.ptr.i, i32 0, i32 2
  store i32 %call, ptr %size91.i, align 4
  %handle.i = getelementptr inbounds %struct.stack_record, ptr %add.ptr.i, i32 0, i32 3
  %bf.shl.i = shl i32 %29, 11
  %32 = lshr i32 %31, 3
  %bf.shl95.i = and i32 %32, 2046
  %bf.set97.i = or i32 %bf.shl95.i, %bf.shl.i
  %bf.set101.i = or i32 %bf.set97.i, 1
  store i32 %bf.set101.i, ptr %handle.i, align 4
  %entries102.i = getelementptr inbounds %struct.stack_record, ptr %add.ptr.i, i32 0, i32 4
  %retval.0.i120.i = select i1 %2, i32 -1, i32 %3
  %call104.i = tail call ptr @__memcpy(ptr noundef %entries102.i, ptr noundef %entries, i32 noundef %retval.0.i120.i) #7
  %33 = load i32, ptr @depot_offset, align 4
  %add105.i = add i32 %33, %and.i
  store i32 %add105.i, ptr @depot_offset, align 4
  %tobool51.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool51.not, label %exit, label %if.then52

if.then52:                                        ; preds = %depot_alloc_stack.exit
  %34 = load ptr, ptr %arrayidx, align 4
  store ptr %34, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !18
  store volatile ptr %add.ptr.i, ptr %arrayidx, align 4
  br label %exit

if.else:                                          ; preds = %find_stack.exit177
  %tobool75.not = icmp eq ptr %prealloc.0, null
  br i1 %tobool75.not, label %if.then123.sink.split, label %if.end.i

if.end.i:                                         ; preds = %if.else
  %35 = load volatile i32, ptr @next_slab_inited, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !16
  %tobool5.not.i = icmp eq i32 %35, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %exit.thread213

exit.thread213:                                   ; preds = %if.end.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @depot_lock, i32 noundef %call44) #7
  br label %if.then120

if.end7.i:                                        ; preds = %if.end.i
  %36 = load i32, ptr @depot_index, align 4
  %arrayidx.i182 = getelementptr [8192 x ptr], ptr @stack_slabs, i32 0, i32 %36
  %37 = load ptr, ptr %arrayidx.i182, align 4
  %cmp.i183 = icmp eq ptr %37, null
  br i1 %cmp.i183, label %if.end121.thread219, label %if.else.i

if.end121.thread219:                              ; preds = %if.end7.i
  store ptr %prealloc.0, ptr %arrayidx.i182, align 4
  br label %if.then123.sink.split

if.else.i:                                        ; preds = %if.end7.i
  %add.i = add i32 %36, 1
  %cmp10.i = icmp slt i32 %add.i, 8192
  br i1 %cmp10.i, label %if.then12.i, label %do.end23.i

if.then12.i:                                      ; preds = %if.else.i
  %arrayidx14.i = getelementptr [8192 x ptr], ptr @stack_slabs, i32 0, i32 %add.i
  store ptr %prealloc.0, ptr %arrayidx14.i, align 4
  br label %do.end23.i

do.end23.i:                                       ; preds = %if.then12.i, %if.else.i
  %prealloc.4 = phi ptr [ null, %if.then12.i ], [ %prealloc.0, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !17
  store volatile i32 1, ptr @next_slab_inited, align 4
  br label %exit

exit:                                             ; preds = %do.end23.i, %if.then52, %depot_alloc_stack.exit, %init_stack_slab.exit.i, %if.then26.i, %if.then14.i
  %prealloc.6 = phi ptr [ %prealloc.2, %depot_alloc_stack.exit ], [ %prealloc.2, %if.then52 ], [ %prealloc.2, %init_stack_slab.exit.i ], [ %prealloc.0, %if.then26.i ], [ %prealloc.0, %if.then14.i ], [ %prealloc.4, %do.end23.i ]
  %found.1 = phi ptr [ null, %depot_alloc_stack.exit ], [ %add.ptr.i, %if.then52 ], [ null, %init_stack_slab.exit.i ], [ null, %if.then26.i ], [ null, %if.then14.i ], [ %found.019.i154, %do.end23.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @depot_lock, i32 noundef %call44) #7
  %tobool119.not = icmp eq ptr %prealloc.6, null
  br i1 %tobool119.not, label %if.end121, label %if.then120

if.then120:                                       ; preds = %exit, %exit.thread213
  %found.1218 = phi ptr [ %found.019.i154, %exit.thread213 ], [ %found.1, %exit ]
  %prealloc.6217 = phi ptr [ %prealloc.0, %exit.thread213 ], [ %prealloc.6, %exit ]
  %38 = ptrtoint ptr %prealloc.6217 to i32
  tail call void @free_pages(i32 noundef %38, i32 noundef 2) #7
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %exit
  %found.2201 = phi ptr [ %found.1218, %if.then120 ], [ %found.1, %exit ]
  %tobool122.not = icmp eq ptr %found.2201, null
  br i1 %tobool122.not, label %fast_exit, label %if.then123

if.then123.sink.split:                            ; preds = %if.end121.thread219, %if.else
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @depot_lock, i32 noundef %call44) #7
  br label %if.then123

if.then123:                                       ; preds = %if.then123.sink.split, %if.end121, %find_stack.exit
  %found.2201208 = phi ptr [ %found.2201, %if.end121 ], [ %found.019.i, %find_stack.exit ], [ %found.019.i154, %if.then123.sink.split ]
  %handle = getelementptr inbounds %struct.stack_record, ptr %found.2201208, i32 0, i32 3
  %39 = load i32, ptr %handle, align 4
  br label %fast_exit

fast_exit:                                        ; preds = %if.then123, %if.end121, %entry
  %retval1.0 = phi i32 [ 0, %entry ], [ %39, %if.then123 ], [ 0, %if.end121 ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filter_irq_stacks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stack_depot_save(ptr noundef %entries, i32 noundef %nr_entries, i32 noundef %alloc_flags) #4 align 64 {
entry:
  %call = tail call i32 @__stack_depot_save(ptr noundef %entries, i32 noundef %nr_entries, i32 noundef %alloc_flags, i1 noundef zeroext true) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { cold nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind allocsize(0) "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin "no-builtins" }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 2002}
!11 = !{i64 2153384311}
!12 = !{i64 2153392398}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2153359104}
!16 = !{i64 2153348768}
!17 = !{i64 2153351469}
!18 = !{i64 2153395214}
