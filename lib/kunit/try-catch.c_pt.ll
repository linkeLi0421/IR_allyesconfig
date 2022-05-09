; ModuleID = '/llk/IR_all_yes/lib/kunit/try-catch.c_pt.bc'
source_filename = "../lib/kunit/try-catch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kunit_try_catch_throw\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_try_catch_throw\09\09\09\09"
module asm "\09.long\09__crc_kunit_try_catch_throw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_try_catch_throw:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_try_catch_throw\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_try_catch_throw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_try_catch_run\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_try_catch_run\09\09\09\09"
module asm "\09.long\09__crc_kunit_try_catch_run\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_try_catch_run:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_try_catch_run\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_try_catch_run:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kunit_try_catch = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kunit = type { ptr, ptr, ptr, %struct.kunit_try_catch, ptr, i32, %struct.spinlock, i32, %struct.list_head, [256 x i8] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }

@__kstrtab_kunit_try_catch_throw = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_try_catch_throw = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_try_catch_throw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_try_catch_throw to i32), ptr @__kstrtab_kunit_try_catch_throw, ptr @__kstrtabns_kunit_try_catch_throw }, section "___ksymtab_gpl+kunit_try_catch_throw", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kunit_try_catch_thread\00", [41 x i8] zeroinitializer }, align 32
@kunit_try_catch_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013    # %s: try timed out\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kunit_try_catch_run\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lib/kunit/try-catch.c\00", [42 x i8] zeroinitializer }, align 32
@kunit_try_catch_run._entry_ptr = internal global ptr @kunit_try_catch_run._entry, section ".printk_index", align 4
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"    # %s: try timed out\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@kunit_try_catch_run._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013    # %s: wake_up_process() was never called\0A\00", [48 x i8] zeroinitializer }, align 32
@kunit_try_catch_run._entry_ptr.7 = internal global ptr @kunit_try_catch_run._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"    # %s: wake_up_process() was never called\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@kunit_try_catch_run._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013    # %s: Unknown error: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@kunit_try_catch_run._entry_ptr.11 = internal global ptr @kunit_try_catch_run._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"    # %s: Unknown error: %d\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_kunit_try_catch_run = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_try_catch_run = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_try_catch_run = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_try_catch_run to i32), ptr @__kstrtab_kunit_try_catch_run, ptr @__kstrtabns_kunit_try_catch_run }, section "___ksymtab_gpl+kunit_try_catch_run", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967282, i64 4294967292]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 68, i32 16 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 79, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 91, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private constant [25 x i8] c"../lib/kunit/try-catch.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 93, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 87, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab_kunit_try_catch_run, ptr @__ksymtab_kunit_try_catch_throw, ptr @kunit_try_catch_run._entry, ptr @kunit_try_catch_run._entry.5, ptr @kunit_try_catch_run._entry.9, ptr @kunit_try_catch_run._entry_ptr, ptr @kunit_try_catch_run._entry_ptr.11, ptr @kunit_try_catch_run._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @init_completion.__key, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_try_catch_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_try_catch_run._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_try_catch_run._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kunit_try_catch_throw(ptr nocapture noundef %try_catch) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %try_result = getelementptr inbounds %struct.kunit_try_catch, ptr %try_catch, i32 0, i32 2
  %0 = ptrtoint ptr %try_result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -14, ptr %try_result, align 4
  %try_completion = getelementptr inbounds %struct.kunit_try_catch, ptr %try_catch, i32 0, i32 1
  %1 = ptrtoint ptr %try_completion to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %try_completion, align 4
  call void @__asan_handle_no_return()
  tail call void @kthread_complete_and_exit(ptr noundef %2, i32 noundef -14) #8
  unreachable
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @kthread_complete_and_exit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kunit_try_catch_run(ptr noundef %try_catch, ptr noundef %context) #2 align 64 {
entry:
  %try_completion = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %try_completion) #6
  %0 = getelementptr inbounds i8, ptr %try_completion, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %try_completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %try_completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %try_completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #6
  %3 = ptrtoint ptr %try_catch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %try_catch, align 4
  %context2 = getelementptr inbounds %struct.kunit_try_catch, ptr %try_catch, i32 0, i32 5
  %5 = ptrtoint ptr %context2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %context, ptr %context2, align 4
  %try_completion3 = getelementptr inbounds %struct.kunit_try_catch, ptr %try_catch, i32 0, i32 1
  %6 = ptrtoint ptr %try_completion3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %try_completion, ptr %try_completion3, align 4
  %try_result = getelementptr inbounds %struct.kunit_try_catch, ptr %try_catch, i32 0, i32 2
  %7 = ptrtoint ptr %try_result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %try_result, align 4
  %call = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kunit_generic_run_threadfn_adapter, ptr noundef %try_catch, i32 noundef -1, ptr noundef nonnull @.str) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup.sink.split_crit_edge, label %if.end10

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end10:                                         ; preds = %entry
  %call5 = call i32 @wake_up_process(ptr noundef %call) #6
  %call12 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %try_completion, i32 noundef 300000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp eq i32 %call12, 0
  br i1 %cmp, label %if.end21.thread, label %if.end21

if.end21.thread:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.kunit, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9) #10
  %log = getelementptr inbounds %struct.kunit, ptr %4, i32 0, i32 2
  %10 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %log, align 4
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef %13) #6
  %14 = ptrtoint ptr %try_result to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -110, ptr %try_result, align 4
  br label %do.end47

if.end21:                                         ; preds = %if.end10
  %15 = ptrtoint ptr %try_result to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %try_result, align 4
  %16 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr, label %if.end21.do.end47_crit_edge [
    i32 0, label %if.end21.cleanup_crit_edge
    i32 -14, label %if.then26
    i32 -4, label %do.end33
  ]

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21.do.end47_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %try_result to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %try_result, align 4
  br label %cleanup.sink.split

do.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %name35 = getelementptr inbounds %struct.kunit, ptr %4, i32 0, i32 1
  %18 = ptrtoint ptr %name35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name35, align 4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %19) #10
  %log37 = getelementptr inbounds %struct.kunit, ptr %4, i32 0, i32 2
  %20 = ptrtoint ptr %log37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %log37, align 4
  %22 = ptrtoint ptr %name35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name35, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %21, ptr noundef nonnull @.str.8, ptr noundef %23) #6
  br label %cleanup.sink.split

do.end47:                                         ; preds = %if.end21.do.end47_crit_edge, %if.end21.thread
  %24 = phi i32 [ -110, %if.end21.thread ], [ %.pr, %if.end21.do.end47_crit_edge ]
  %name49 = getelementptr inbounds %struct.kunit, ptr %4, i32 0, i32 1
  %25 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name49, align 4
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %26, i32 noundef %24) #10
  %log51 = getelementptr inbounds %struct.kunit, ptr %4, i32 0, i32 2
  %27 = ptrtoint ptr %log51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %log51, align 4
  %29 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name49, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %28, ptr noundef nonnull @.str.12, ptr noundef %30, i32 noundef %24) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end47, %do.end33, %if.then26, %entry.cleanup.sink.split_crit_edge
  %catch58 = getelementptr inbounds %struct.kunit_try_catch, ptr %try_catch, i32 0, i32 4
  %31 = ptrtoint ptr %catch58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %catch58, align 4
  %33 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %context2, align 4
  call void %32(ptr noundef %34) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end21.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %try_completion) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kunit_generic_run_threadfn_adapter(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %try = getelementptr inbounds %struct.kunit_try_catch, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %try to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %try, align 4
  %context = getelementptr inbounds %struct.kunit_try_catch, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  tail call void %1(ptr noundef %3) #6
  %try_completion = getelementptr inbounds %struct.kunit_try_catch, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %try_completion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %try_completion, align 4
  call void @__asan_handle_no_return()
  tail call void @kthread_complete_and_exit(ptr noundef %5, i32 noundef 0) #8
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_log_append(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__ksymtab_kunit_try_catch_throw, !1, !"__ksymtab_kunit_try_catch_throw", i1 false, i1 false}
!1 = !{!"../lib/kunit/try-catch.c", i32 22, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/kunit/try-catch.c", i32 68, i32 16}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/kunit/try-catch.c", i32 79, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @kunit_try_catch_run._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @kunit_try_catch_run._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../lib/kunit/try-catch.c", i32 91, i32 3}
!13 = !{ptr @kunit_try_catch_run._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @kunit_try_catch_run._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/kunit/try-catch.c", i32 93, i32 3}
!18 = !{ptr @kunit_try_catch_run._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @kunit_try_catch_run._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__ksymtab_kunit_try_catch_run, !22, !"__ksymtab_kunit_try_catch_run", i1 false, i1 false}
!22 = !{!"../lib/kunit/try-catch.c", i32 97, i32 1}
!23 = !{ptr @init_completion.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../include/linux/completion.h", i32 87, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
