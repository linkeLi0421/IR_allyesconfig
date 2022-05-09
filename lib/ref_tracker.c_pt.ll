; ModuleID = '/llk/IR_all_yes/lib/ref_tracker.c_pt.bc'
source_filename = "../lib/ref_tracker.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ref_tracker_dir_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_ref_tracker_dir_exit\09\09\09\09"
module asm "\09.long\09__crc_ref_tracker_dir_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ref_tracker_dir_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22ref_tracker_dir_exit\22\09\09\09\09\09"
module asm "__kstrtabns_ref_tracker_dir_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ref_tracker_dir_print\22, \22a\22\09"
module asm "\09.weak\09__crc_ref_tracker_dir_print\09\09\09\09"
module asm "\09.long\09__crc_ref_tracker_dir_print\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ref_tracker_dir_print:\09\09\09\09\09"
module asm "\09.asciz \09\22ref_tracker_dir_print\22\09\09\09\09\09"
module asm "__kstrtabns_ref_tracker_dir_print:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ref_tracker_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_ref_tracker_alloc\09\09\09\09"
module asm "\09.long\09__crc_ref_tracker_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ref_tracker_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22ref_tracker_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_ref_tracker_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ref_tracker_free\22, \22a\22\09"
module asm "\09.weak\09__crc_ref_tracker_free\09\09\09\09"
module asm "\09.long\09__crc_ref_tracker_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ref_tracker_free:\09\09\09\09\09"
module asm "\09.asciz \09\22ref_tracker_free\22\09\09\09\09\09"
module asm "__kstrtabns_ref_tracker_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.ref_tracker = type { %struct.list_head, i8, i32, i32 }

@ref_tracker_dir_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013leaked reference.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ref_tracker_dir_exit\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lib/ref_tracker.c\00", [46 x i8] zeroinitializer }, align 32
@ref_tracker_dir_exit._entry_ptr = internal global ptr @ref_tracker_dir_exit._entry, section ".printk_index", align 4
@ref_tracker_dir_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ref_tracker_dir_exit.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ref_tracker_dir_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ref_tracker_dir_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_ref_tracker_dir_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ref_tracker_dir_exit to i32), ptr @__kstrtab_ref_tracker_dir_exit, ptr @__kstrtabns_ref_tracker_dir_exit }, section "___ksymtab+ref_tracker_dir_exit", align 4
@ref_tracker_dir_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ref_tracker_dir_print\00", [42 x i8] zeroinitializer }, align 32
@ref_tracker_dir_print._entry_ptr = internal global ptr @ref_tracker_dir_print._entry, section ".printk_index", align 4
@__kstrtab_ref_tracker_dir_print = external dso_local constant [0 x i8], align 1
@__kstrtabns_ref_tracker_dir_print = external dso_local constant [0 x i8], align 1
@__ksymtab_ref_tracker_dir_print = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ref_tracker_dir_print to i32), ptr @__kstrtab_ref_tracker_dir_print, ptr @__kstrtabns_ref_tracker_dir_print }, section "___ksymtab+ref_tracker_dir_print", align 4
@ref_tracker_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ref_tracker_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013memory allocation failure, unreliable refcount tracker.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ref_tracker_alloc\00", [46 x i8] zeroinitializer }, align 32
@ref_tracker_alloc._entry_ptr = internal global ptr @ref_tracker_alloc._entry, section ".printk_index", align 4
@__kstrtab_ref_tracker_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ref_tracker_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_ref_tracker_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ref_tracker_alloc to i32), ptr @__kstrtab_ref_tracker_alloc, ptr @__kstrtabns_ref_tracker_alloc }, section "___ksymtab_gpl+ref_tracker_alloc", align 4
@ref_tracker_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013reference already released.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ref_tracker_free\00", [47 x i8] zeroinitializer }, align 32
@ref_tracker_free._entry_ptr = internal global ptr @ref_tracker_free._entry, section ".printk_index", align 4
@ref_tracker_free._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013allocated in:\0A\00", [47 x i8] zeroinitializer }, align 32
@ref_tracker_free._entry_ptr.11 = internal global ptr @ref_tracker_free._entry.9, section ".printk_index", align 4
@ref_tracker_free._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\013freed in:\0A\00", [19 x i8] zeroinitializer }, align 32
@ref_tracker_free._entry_ptr.14 = internal global ptr @ref_tracker_free._entry.12, section ".printk_index", align 4
@ref_tracker_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ref_tracker_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_ref_tracker_free = external dso_local constant [0 x i8], align 1
@__ksymtab_ref_tracker_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ref_tracker_free to i32), ptr @__kstrtab_ref_tracker_free, ptr @__kstrtabns_ref_tracker_free }, section "___ksymtab_gpl+ref_tracker_free", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 30, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 53, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 79, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 113, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 115, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [21 x i8] c"../lib/ref_tracker.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 119, i32 4 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_ref_tracker_alloc, ptr @__ksymtab_ref_tracker_dir_exit, ptr @__ksymtab_ref_tracker_dir_print, ptr @__ksymtab_ref_tracker_free, ptr @ref_tracker_alloc._entry, ptr @ref_tracker_alloc._entry_ptr, ptr @ref_tracker_dir_exit._entry, ptr @ref_tracker_dir_exit._entry_ptr, ptr @ref_tracker_dir_print._entry, ptr @ref_tracker_dir_print._entry_ptr, ptr @ref_tracker_free._entry, ptr @ref_tracker_free._entry.12, ptr @ref_tracker_free._entry.9, ptr @ref_tracker_free._entry_ptr, ptr @ref_tracker_free._entry_ptr.11, ptr @ref_tracker_free._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_tracker_dir_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_tracker_dir_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_tracker_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_tracker_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_tracker_free._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_tracker_free._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ref_tracker_dir_exit(ptr noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dir) #9
  %quarantine = getelementptr inbounds %struct.ref_tracker_dir, ptr %dir, i32 0, i32 4
  %0 = ptrtoint ptr %quarantine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %quarantine, align 4
  %cmp12.not184 = icmp eq ptr %1, %quarantine
  br i1 %cmp12.not184, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %quarantine_avail = getelementptr inbounds %struct.ref_tracker_dir, ptr %dir, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %tracker.0185 = phi ptr [ %1, %for.body.lr.ph ], [ %n.0, %list_del.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %tracker.0185 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %tracker.0185, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tracker.0185) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tracker.0185, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %tracker.0185 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tracker.0185, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %tracker.0185 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %tracker.0185, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tracker.0185, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tracker.0185) #9
  %11 = ptrtoint ptr %quarantine_avail to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quarantine_avail, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %quarantine_avail, align 4
  %cmp12.not = icmp eq ptr %n.0, %quarantine
  br i1 %cmp12.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %list = getelementptr inbounds %struct.ref_tracker_dir, ptr %dir, i32 0, i32 3
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 4
  %cmp32.not188 = icmp eq ptr %14, %list
  br i1 %cmp32.not188, label %if.end87.critedge, label %for.end.do.end38_crit_edge

for.end.do.end38_crit_edge:                       ; preds = %for.end
  br label %do.end38

do.end38:                                         ; preds = %list_del.exit183.do.end38_crit_edge, %for.end.do.end38_crit_edge
  %tracker.1189 = phi ptr [ %n.1191, %list_del.exit183.do.end38_crit_edge ], [ %14, %for.end.do.end38_crit_edge ]
  %15 = ptrtoint ptr %tracker.1189 to i32
  call void @__asan_load4_noabort(i32 %15)
  %n.1191 = load ptr, ptr %tracker.1189, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %alloc_stack_handle = getelementptr inbounds %struct.ref_tracker, ptr %tracker.1189, i32 0, i32 2
  %16 = ptrtoint ptr %alloc_stack_handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alloc_stack_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %do.end38.if.end_crit_edge, label %if.then

do.end38.if.end_crit_edge:                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stack_depot_print(i32 noundef %17) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end38.if.end_crit_edge
  %call.i.i178 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tracker.1189) #9
  br i1 %call.i.i178, label %if.end.i.i181, label %if.end.list_del.exit183_crit_edge

if.end.list_del.exit183_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit183

if.end.i.i181:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i179 = getelementptr inbounds %struct.list_head, ptr %tracker.1189, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i179 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i179, align 4
  %20 = ptrtoint ptr %tracker.1189 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tracker.1189, align 4
  %prev1.i.i.i180 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i180 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i180, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit183

list_del.exit183:                                 ; preds = %if.end.i.i181, %if.end.list_del.exit183_crit_edge
  %24 = ptrtoint ptr %tracker.1189 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %tracker.1189, align 4
  %prev.i182 = getelementptr inbounds %struct.list_head, ptr %tracker.1189, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i182 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i182, align 4
  tail call void @kfree(ptr noundef %tracker.1189) #9
  %cmp32.not = icmp eq ptr %n.1191, %list
  br i1 %cmp32.not, label %for.end49, label %list_del.exit183.do.end38_crit_edge

list_del.exit183.do.end38_crit_edge:              ; preds = %list_del.exit183
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

for.end49:                                        ; preds = %list_del.exit183
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dir, i32 noundef %call2) #9
  %.b177 = load i1, ptr @ref_tracker_dir_exit.__already_done, align 1
  br i1 %.b177, label %for.end49.if.end87_crit_edge, label %if.then61, !prof !51

for.end49.if.end87_crit_edge:                     ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then61:                                        ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ref_tracker_dir_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 38, i32 noundef 9, ptr noundef null) #9
  br label %if.end87

if.end87.critedge:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dir, i32 noundef %call2) #9
  br label %if.end87

if.end87:                                         ; preds = %if.end87.critedge, %if.then61, %for.end49.if.end87_crit_edge
  %untracked = getelementptr inbounds %struct.ref_tracker_dir, ptr %dir, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %untracked, i32 noundef 4) #9
  %26 = ptrtoint ptr %untracked to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %untracked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp97.not = icmp eq i32 %27, 1
  br i1 %cmp97.not, label %if.end87.if.end144_crit_edge, label %land.rhs106

if.end87.if.end144_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

land.rhs106:                                      ; preds = %if.end87
  %.b175176 = load i1, ptr @ref_tracker_dir_exit.__already_done.3, align 1
  br i1 %.b175176, label %land.rhs106.if.end144_crit_edge, label %if.then117, !prof !51

land.rhs106.if.end144_crit_edge:                  ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then117:                                       ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ref_tracker_dir_exit.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 39, i32 noundef 9, ptr noundef null) #9
  br label %if.end144

if.end144:                                        ; preds = %if.then117, %land.rhs106.if.end144_crit_edge, %if.end87.if.end144_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stack_depot_print(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ref_tracker_dir_print(ptr noundef %dir, i32 noundef %display_limit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dir) #9
  %list = getelementptr inbounds %struct.ref_tracker_dir, ptr %dir, i32 0, i32 3
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %tracker.032 = load ptr, ptr %list, align 4
  %cmp7.not33 = icmp ne ptr %tracker.032, %list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %display_limit)
  %cmp934 = icmp ne i32 %display_limit, 0
  %or.cond35 = and i1 %cmp7.not33, %cmp934
  br i1 %or.cond35, label %entry.do.end13_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.do.end13_crit_edge:                         ; preds = %entry
  br label %do.end13

do.end13:                                         ; preds = %if.end.do.end13_crit_edge, %entry.do.end13_crit_edge
  %tracker.037 = phi ptr [ %tracker.0, %if.end.do.end13_crit_edge ], [ %tracker.032, %entry.do.end13_crit_edge ]
  %i.036 = phi i32 [ %inc, %if.end.do.end13_crit_edge ], [ 0, %entry.do.end13_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %alloc_stack_handle = getelementptr inbounds %struct.ref_tracker, ptr %tracker.037, i32 0, i32 2
  %1 = ptrtoint ptr %alloc_stack_handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %alloc_stack_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end13.if.end_crit_edge, label %if.then16

do.end13.if.end_crit_edge:                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then16:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stack_depot_print(i32 noundef %2) #9
  br label %if.end

if.end:                                           ; preds = %if.then16, %do.end13.if.end_crit_edge
  %inc = add nuw i32 %i.036, 1
  %3 = ptrtoint ptr %tracker.037 to i32
  call void @__asan_load4_noabort(i32 %3)
  %tracker.0 = load ptr, ptr %tracker.037, align 4
  %cmp7.not = icmp ne ptr %tracker.0, %list
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %display_limit)
  %cmp9 = icmp ult i32 %inc, %display_limit
  %or.cond = select i1 %cmp7.not, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.end.do.end13_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dir, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ref_tracker_alloc(ptr noundef %dir, ptr nocapture noundef writeonly %trackerp, i32 noundef %gfp) #0 align 64 {
entry:
  %entries = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %entries) #9
  %0 = call ptr @memset(ptr %entries, i32 255, i32 64)
  %and = shl i32 %gfp, 5
  %1 = and i32 %and, 32768
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !51

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %2 = or i32 %1, %gfp
  %or.i = or i32 %2, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %3 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef %or.i, i32 noundef 20) #11
  %5 = ptrtoint ptr %trackerp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %trackerp, align 4
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %land.end, label %if.end26, !prof !52

land.end:                                         ; preds = %kzalloc.exit
  %.b56 = load i1, ptr @ref_tracker_alloc.__already_done, align 1
  br i1 %.b56, label %land.end.if.end18_crit_edge, label %if.then16, !prof !51

land.end.if.end18_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ref_tracker_alloc.__already_done, align 1
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.end.if.end18_crit_edge
  %untracked = getelementptr inbounds %struct.ref_tracker_dir, ptr %dir, i32 0, i32 2
  tail call fastcc void @refcount_inc(ptr noundef %untracked)
  br label %cleanup

if.end26:                                         ; preds = %kzalloc.exit
  %call27 = call i32 @stack_trace_save(ptr noundef nonnull %entries, i32 noundef 16, i32 noundef 1) #9
  %call29 = call i32 @filter_irq_stacks(ptr noundef nonnull %entries, i32 noundef %call27) #9
  %call31 = call i32 @stack_depot_save(ptr noundef nonnull %entries, i32 noundef %call29, i32 noundef %gfp) #9
  %alloc_stack_handle = getelementptr inbounds %struct.ref_tracker, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %alloc_stack_handle to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call31, ptr %alloc_stack_handle, align 4
  %call36 = call i32 @_raw_spin_lock_irqsave(ptr noundef %dir) #9
  %list = getelementptr inbounds %struct.ref_tracker_dir, ptr %dir, i32 0, i32 3
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %list, ptr noundef %8) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.list_add.exit_crit_edge

if.end26.list_add.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i, ptr %list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end26.list_add.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dir, i32 noundef %call36) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.end18
  %retval.0 = phi i32 [ -12, %if.end18 ], [ 0, %list_add.exit ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %entries) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %r) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #9, !srcloc !53
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !52

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !51

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i.i) #9
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filter_irq_stacks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_depot_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ref_tracker_free(ptr noundef %dir, ptr nocapture noundef readonly %trackerp) #0 align 64 {
entry:
  %entries = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %entries) #9
  %0 = call ptr @memset(ptr %entries, i32 255, i32 64)
  %1 = ptrtoint ptr %trackerp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trackerp, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %untracked = getelementptr inbounds %struct.ref_tracker_dir, ptr %dir, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %untracked, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %untracked, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %untracked, ptr %untracked, i32 1, ptr elementtype(i32) %untracked) #9, !srcloc !55
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.then.cleanup_crit_edge, !prof !52

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %untracked, i32 noundef 4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @stack_trace_save(ptr noundef nonnull %entries, i32 noundef 16, i32 noundef 1) #9
  %call2 = call i32 @filter_irq_stacks(ptr noundef nonnull %entries, i32 noundef %call) #9
  %call4 = call i32 @stack_depot_save(ptr noundef nonnull %entries, i32 noundef %call2, i32 noundef 2592) #9
  %call7 = call i32 @_raw_spin_lock_irqsave(ptr noundef %dir) #9
  %dead = getelementptr inbounds %struct.ref_tracker, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dead, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %if.end76, label %do.end14

do.end14:                                         ; preds = %if.end
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  %alloc_stack_handle = getelementptr inbounds %struct.ref_tracker, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %alloc_stack_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc_stack_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool17.not = icmp eq i32 %7, 0
  br i1 %tobool17.not, label %do.end14.if.end25_crit_edge, label %do.end21

do.end14.if.end25_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end21:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  %8 = ptrtoint ptr %alloc_stack_handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alloc_stack_handle, align 4
  call void @stack_depot_print(i32 noundef %9) #9
  br label %if.end25

if.end25:                                         ; preds = %do.end21, %do.end14.if.end25_crit_edge
  %free_stack_handle = getelementptr inbounds %struct.ref_tracker, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %free_stack_handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_stack_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool26.not = icmp eq i32 %11, 0
  br i1 %tobool26.not, label %if.end25.if.end34_crit_edge, label %do.end30

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  %12 = ptrtoint ptr %free_stack_handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %free_stack_handle, align 4
  call void @stack_depot_print(i32 noundef %13) #9
  br label %if.end34

if.end34:                                         ; preds = %do.end30, %if.end25.if.end34_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dir, i32 noundef %call7) #9
  %.b113 = load i1, ptr @ref_tracker_free.__already_done, align 1
  br i1 %.b113, label %if.end34.cleanup_crit_edge, label %if.then42, !prof !51

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ref_tracker_free.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 123, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end76:                                         ; preds = %if.end
  %14 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %dead, align 4
  %free_stack_handle78 = getelementptr inbounds %struct.ref_tracker, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %free_stack_handle78 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call4, ptr %free_stack_handle78, align 4
  %quarantine = getelementptr inbounds %struct.ref_tracker_dir, ptr %dir, i32 0, i32 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %2) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end76.__list_del_entry.exit.i_crit_edge

if.end76.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end76.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.ref_tracker_dir, ptr %dir, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %2, ptr noundef %23, ptr noundef %quarantine) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %2, ptr %prev.i2.i, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %quarantine, ptr %2, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %2, ptr %23, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %quarantine_avail = getelementptr inbounds %struct.ref_tracker_dir, ptr %dir, i32 0, i32 1
  %28 = ptrtoint ptr %quarantine_avail to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %quarantine_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool79.not = icmp eq i32 %29, 0
  br i1 %tobool79.not, label %if.then80, label %if.else

if.then80:                                        ; preds = %list_move_tail.exit
  %30 = ptrtoint ptr %quarantine to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %quarantine, align 4
  %call.i.i114 = call zeroext i1 @__list_del_entry_valid(ptr noundef %31) #9
  br i1 %call.i.i114, label %if.end.i.i117, label %if.then80.list_del.exit_crit_edge

if.then80.list_del.exit_crit_edge:                ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i117:                                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i115 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i115 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i115, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %prev1.i.i.i116 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i116 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i116, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i117, %if.then80.list_del.exit_crit_edge
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end85

if.else:                                          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i32 %29, -1
  %40 = ptrtoint ptr %quarantine_avail to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %dec, ptr %quarantine_avail, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else, %list_del.exit
  %tracker.0 = phi ptr [ null, %if.else ], [ %31, %list_del.exit ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dir, i32 noundef %call7) #9
  call void @kfree(ptr noundef %tracker.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then42, %if.end34.cleanup_crit_edge, %if.then3.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end85 ], [ -22, %if.then42 ], [ -22, %if.end34.cleanup_crit_edge ], [ -17, %if.then.cleanup_crit_edge ], [ -17, %if.then3.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %entries) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !16, !18, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/ref_tracker.c", i32 30, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ref_tracker_dir_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ref_tracker_dir_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../lib/ref_tracker.c", i32 38, i32 2}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../lib/ref_tracker.c", i32 39, i32 2}
!10 = !{ptr @__ksymtab_ref_tracker_dir_exit, !11, !"__ksymtab_ref_tracker_dir_exit", i1 false, i1 false}
!11 = !{!"../lib/ref_tracker.c", i32 41, i32 1}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/ref_tracker.c", i32 53, i32 4}
!14 = !{ptr @ref_tracker_dir_print._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ref_tracker_dir_print._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_ref_tracker_dir_print, !17, !"__ksymtab_ref_tracker_dir_print", i1 false, i1 false}
!17 = !{!"../lib/ref_tracker.c", i32 63, i32 1}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../lib/ref_tracker.c", i32 79, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ref_tracker_alloc._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @ref_tracker_alloc._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_ref_tracker_alloc, !25, !"__ksymtab_ref_tracker_alloc", i1 false, i1 false}
!25 = !{!"../lib/ref_tracker.c", i32 92, i32 1}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../lib/ref_tracker.c", i32 113, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ref_tracker_free._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ref_tracker_free._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/ref_tracker.c", i32 115, i32 4}
!33 = !{ptr @ref_tracker_free._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ref_tracker_free._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/ref_tracker.c", i32 119, i32 4}
!37 = !{ptr @ref_tracker_free._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ref_tracker_free._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../lib/ref_tracker.c", i32 123, i32 3}
!41 = !{ptr @__ksymtab_ref_tracker_free, !42, !"__ksymtab_ref_tracker_free", i1 false, i1 false}
!42 = !{!"../lib/ref_tracker.c", i32 143, i32 1}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2148141383, i64 2148141415, i64 2148141444, i64 2148141478, i64 2148141509, i64 2148141532}
!54 = !{i64 2148229384}
!55 = !{i64 2148143848, i64 2148143880, i64 2148143909, i64 2148143943, i64 2148143974, i64 2148143997}
!56 = !{i8 0, i8 2}
