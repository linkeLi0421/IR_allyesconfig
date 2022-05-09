; ModuleID = '/llk/IR_all_yes/kernel/power/console.c_pt.bc'
source_filename = "../kernel/power/console.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pm_vt_switch_required\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_vt_switch_required\09\09\09\09"
module asm "\09.long\09__crc_pm_vt_switch_required\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_vt_switch_required:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_vt_switch_required\22\09\09\09\09\09"
module asm "__kstrtabns_pm_vt_switch_required:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pm_vt_switch_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_vt_switch_unregister\09\09\09\09"
module asm "\09.long\09__crc_pm_vt_switch_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_vt_switch_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_vt_switch_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_pm_vt_switch_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pm_vt_switch = type { %struct.list_head, ptr, i8 }

@vt_switch_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vt_switch_mutex, i64 52), ptr getelementptr (i8, ptr @vt_switch_mutex, i64 52) }, ptr @vt_switch_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pm_vt_switch_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @pm_vt_switch_list, ptr @pm_vt_switch_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_pm_vt_switch_required = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_vt_switch_required = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_vt_switch_required = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_vt_switch_required to i32), ptr @__kstrtab_pm_vt_switch_required, ptr @__kstrtabns_pm_vt_switch_required }, section "___ksymtab+pm_vt_switch_required", align 4
@__kstrtab_pm_vt_switch_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_vt_switch_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_vt_switch_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_vt_switch_unregister to i32), ptr @__kstrtab_pm_vt_switch_unregister, ptr @__kstrtabns_pm_vt_switch_unregister }, section "___ksymtab+pm_vt_switch_unregister", align 4
@orig_fgconsole = internal global { i32, [28 x i8] } zeroinitializer, align 32
@orig_kmsg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vt_switch_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vt_switch_mutex\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"vt_switch_mutex\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"pm_vt_switch_list\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 28, i32 8 }
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"orig_fgconsole\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 18, i32 12 }
@___asan_gen_.11 = private unnamed_addr constant [10 x i8] c"orig_kmsg\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 18, i32 28 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [26 x i8] c"../kernel/power/console.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 20, i32 8 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_pm_vt_switch_required, ptr @__ksymtab_pm_vt_switch_unregister, ptr @vt_switch_mutex, ptr @pm_vt_switch_list, ptr @orig_fgconsole, ptr @orig_kmsg, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt_switch_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_vt_switch_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orig_fgconsole to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orig_kmsg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_vt_switch_required(ptr noundef %dev, i1 noundef zeroext %required) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %required to i8
  tail call void @mutex_lock_nested(ptr noundef nonnull @vt_switch_mutex, i32 noundef 0) #3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tmp.0.in = phi ptr [ @pm_vt_switch_list, %entry ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, @pm_vt_switch_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %dev3 = getelementptr inbounds %struct.pm_vt_switch, ptr %tmp.0, i32 0, i32 1
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev3, align 4
  %cmp4 = icmp eq ptr %2, %dev
  br i1 %cmp4, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %required5 = getelementptr inbounds %struct.pm_vt_switch, ptr %tmp.0, i32 0, i32 2
  %3 = ptrtoint ptr %required5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %required5, align 4
  br label %out

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 16) #6
  %tobool11.not = icmp eq ptr %call7.i, null
  br i1 %tobool11.not, label %for.end.out_crit_edge, label %if.end13

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end13:                                         ; preds = %for.end
  %required15 = getelementptr inbounds %struct.pm_vt_switch, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %required15 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %required15, align 4
  %dev17 = getelementptr inbounds %struct.pm_vt_switch, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev17, align 8
  %7 = load ptr, ptr @pm_vt_switch_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef nonnull @pm_vt_switch_list, ptr noundef %7) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pm_vt_switch_list, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i, ptr @pm_vt_switch_list, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.end13.out_crit_edge, %for.end.out_crit_edge, %if.then
  tail call void @mutex_unlock(ptr noundef nonnull @vt_switch_mutex) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_vt_switch_unregister(ptr noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vt_switch_mutex, i32 noundef 0) #3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tmp.0.in = phi ptr [ @pm_vt_switch_list, %entry ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, @pm_vt_switch_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.cond
  %dev2 = getelementptr inbounds %struct.pm_vt_switch, ptr %tmp.0, i32 0, i32 1
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev2, align 4
  %cmp3 = icmp eq ptr %2, %dev
  br i1 %cmp3, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.0) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tmp.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmp.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tmp.0) #3
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @vt_switch_mutex) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_prepare_console() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vt_switch_mutex, i32 noundef 0) #3
  %0 = load volatile ptr, ptr @pm_vt_switch_list, align 4
  %cmp.i.not.i = icmp eq ptr %0, @pm_vt_switch_list
  br i1 %cmp.i.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %1 = load i8, ptr @console_suspend_enabled, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not.i = icmp eq i8 %1, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

for.cond.ithread-pre-split:                       ; preds = %for.body.i
  %2 = ptrtoint ptr %entry1.0.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.0.i.pr = load ptr, ptr %entry1.0.i8, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i.pr, @pm_vt_switch_list
  br i1 %cmp.not.i, label %pm_vt_switch.exit, label %for.cond.ithread-pre-split.for.body.i_crit_edge

for.cond.ithread-pre-split.for.body.i_crit_edge:  ; preds = %for.cond.ithread-pre-split
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.ithread-pre-split.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %entry1.0.i8 = phi ptr [ %entry1.0.i.pr, %for.cond.ithread-pre-split.for.body.i_crit_edge ], [ %0, %if.end.i.for.body.i_crit_edge ]
  %required.i = getelementptr inbounds %struct.pm_vt_switch, ptr %entry1.0.i8, i32 0, i32 2
  %3 = ptrtoint ptr %required.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %required.i, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not.i = icmp eq i8 %4, 0
  br i1 %tobool5.not.i, label %for.cond.ithread-pre-split, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

pm_vt_switch.exit:                                ; preds = %for.cond.ithread-pre-split
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef nonnull @vt_switch_mutex) #3
  br label %return

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @vt_switch_mutex) #3
  %call1 = tail call i32 @vt_move_to_console(i32 noundef 62, i32 noundef 1) #3
  store i32 %call1, ptr @orig_fgconsole, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 @vt_kmsg_redirect(i32 noundef 62) #3
  store i32 %call4, ptr @orig_kmsg, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %pm_vt_switch.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_move_to_console(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_kmsg_redirect(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_restore_console() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vt_switch_mutex, i32 noundef 0) #3
  %0 = load volatile ptr, ptr @pm_vt_switch_list, align 4
  %cmp.i.not.i = icmp eq ptr %0, @pm_vt_switch_list
  br i1 %cmp.i.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %1 = load i8, ptr @console_suspend_enabled, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not.i = icmp eq i8 %1, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

for.cond.ithread-pre-split:                       ; preds = %for.body.i
  %2 = ptrtoint ptr %entry1.0.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.0.i.pr = load ptr, ptr %entry1.0.i8, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i.pr, @pm_vt_switch_list
  br i1 %cmp.not.i, label %pm_vt_switch.exit, label %for.cond.ithread-pre-split.for.body.i_crit_edge

for.cond.ithread-pre-split.for.body.i_crit_edge:  ; preds = %for.cond.ithread-pre-split
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.ithread-pre-split.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %entry1.0.i8 = phi ptr [ %entry1.0.i.pr, %for.cond.ithread-pre-split.for.body.i_crit_edge ], [ %0, %if.end.i.for.body.i_crit_edge ]
  %required.i = getelementptr inbounds %struct.pm_vt_switch, ptr %entry1.0.i8, i32 0, i32 2
  %3 = ptrtoint ptr %required.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %required.i, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not.i = icmp eq i8 %4, 0
  br i1 %tobool5.not.i, label %for.cond.ithread-pre-split, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

pm_vt_switch.exit:                                ; preds = %for.cond.ithread-pre-split
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef nonnull @vt_switch_mutex) #3
  br label %if.end4

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @vt_switch_mutex) #3
  %5 = load i32, ptr @orig_fgconsole, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp sgt i32 %5, -1
  br i1 %cmp, label %if.then1, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @vt_move_to_console(i32 noundef %5, i32 noundef 0) #3
  %6 = load i32, ptr @orig_kmsg, align 4
  %call3 = tail call i32 @vt_kmsg_redirect(i32 noundef %6) #3
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge, %pm_vt_switch.exit
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__ksymtab_pm_vt_switch_required, !1, !"__ksymtab_pm_vt_switch_required", i1 false, i1 false}
!1 = !{!"../kernel/power/console.c", i32 70, i32 1}
!2 = !{ptr @__ksymtab_pm_vt_switch_unregister, !3, !"__ksymtab_pm_vt_switch_unregister", i1 false, i1 false}
!3 = !{!"../kernel/power/console.c", i32 92, i32 1}
!4 = !{ptr @orig_fgconsole, !5, !"orig_fgconsole", i1 false, i1 false}
!5 = !{!"../kernel/power/console.c", i32 18, i32 12}
!6 = !{ptr @orig_kmsg, !7, !"orig_kmsg", i1 false, i1 false}
!7 = !{!"../kernel/power/console.c", i32 18, i32 28}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/power/console.c", i32 20, i32 8}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vt_switch_mutex, !9, !"vt_switch_mutex", i1 false, i1 false}
!12 = !{ptr @pm_vt_switch_list, !13, !"pm_vt_switch_list", i1 false, i1 false}
!13 = !{!"../kernel/power/console.c", i32 28, i32 8}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i8 0, i8 2}
