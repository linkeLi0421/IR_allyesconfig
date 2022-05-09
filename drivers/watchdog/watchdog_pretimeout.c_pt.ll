; ModuleID = '/llk/IR_all_yes/drivers/watchdog/watchdog_pretimeout.c_pt.bc'
source_filename = "../drivers/watchdog/watchdog_pretimeout.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+watchdog_notify_pretimeout\22, \22a\22\09"
module asm "\09.weak\09__crc_watchdog_notify_pretimeout\09\09\09\09"
module asm "\09.long\09__crc_watchdog_notify_pretimeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_watchdog_notify_pretimeout:\09\09\09\09\09"
module asm "\09.asciz \09\22watchdog_notify_pretimeout\22\09\09\09\09\09"
module asm "__kstrtabns_watchdog_notify_pretimeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+watchdog_register_governor\22, \22a\22\09"
module asm "\09.weak\09__crc_watchdog_register_governor\09\09\09\09"
module asm "\09.long\09__crc_watchdog_register_governor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_watchdog_register_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22watchdog_register_governor\22\09\09\09\09\09"
module asm "__kstrtabns_watchdog_register_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+watchdog_unregister_governor\22, \22a\22\09"
module asm "\09.weak\09__crc_watchdog_unregister_governor\09\09\09\09"
module asm "\09.long\09__crc_watchdog_unregister_governor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_watchdog_unregister_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22watchdog_unregister_governor\22\09\09\09\09\09"
module asm "__kstrtabns_watchdog_unregister_governor:\09\09\09\09\09"
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.watchdog_governor = type { [20 x i8], ptr }
%struct.governor_priv = type { ptr, %struct.list_head }
%struct.watchdog_pretimeout = type { ptr, %struct.list_head }

@governor_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @governor_lock, i64 52), ptr getelementptr (i8, ptr @governor_lock, i64 52) }, ptr @governor_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@governor_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @governor_list, ptr @governor_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@pretimeout_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_watchdog_notify_pretimeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_watchdog_notify_pretimeout = external dso_local constant [0 x i8], align 1
@__ksymtab_watchdog_notify_pretimeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @watchdog_notify_pretimeout to i32), ptr @__kstrtab_watchdog_notify_pretimeout, ptr @__kstrtabns_watchdog_notify_pretimeout }, section "___ksymtab_gpl+watchdog_notify_pretimeout", align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@default_gov = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pretimeout_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @pretimeout_list, ptr @pretimeout_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_watchdog_register_governor = external dso_local constant [0 x i8], align 1
@__kstrtabns_watchdog_register_governor = external dso_local constant [0 x i8], align 1
@__ksymtab_watchdog_register_governor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @watchdog_register_governor to i32), ptr @__kstrtab_watchdog_register_governor, ptr @__kstrtabns_watchdog_register_governor }, section "___ksymtab+watchdog_register_governor", align 4
@__kstrtab_watchdog_unregister_governor = external dso_local constant [0 x i8], align 1
@__kstrtabns_watchdog_unregister_governor = external dso_local constant [0 x i8], align 1
@__ksymtab_watchdog_unregister_governor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @watchdog_unregister_governor to i32), ptr @__kstrtab_watchdog_unregister_governor, ptr @__kstrtabns_watchdog_unregister_governor }, section "___ksymtab+watchdog_unregister_governor", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"governor_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"governor_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pretimeout_lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"governor_lock\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"governor_list\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 33, i32 8 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 59, i32 38 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"pretimeout_lock\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 135, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"default_gov\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 16, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"pretimeout_list\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 22, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 30, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [42 x i8] c"../drivers/watchdog/watchdog_pretimeout.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 19, i32 8 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_watchdog_notify_pretimeout, ptr @__ksymtab_watchdog_register_governor, ptr @__ksymtab_watchdog_unregister_governor, ptr @governor_lock, ptr @governor_list, ptr @.str, ptr @pretimeout_lock, ptr @.str.1, ptr @default_gov, ptr @pretimeout_list, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @governor_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @governor_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pretimeout_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_gov to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pretimeout_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watchdog_pretimeout_available_governors_get(ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @governor_lock, i32 noundef 0) #4
  %.pn10 = load ptr, ptr @governor_list, align 4
  %cmp.not11 = icmp eq ptr %.pn10, @governor_list
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn13 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %count.012 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %priv.0 = getelementptr i8, ptr %.pn13, i32 -4
  %0 = ptrtoint ptr %priv.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.0, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %count.012, ptr noundef nonnull @.str, ptr noundef %1) #4
  %add = add i32 %call, %count.012
  %2 = ptrtoint ptr %.pn13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn13, align 4
  %cmp.not = icmp eq ptr %.pn, @governor_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @governor_lock) #4
  ret i32 %count.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watchdog_pretimeout_governor_get(ptr nocapture noundef readonly %wdd, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pretimeout_lock) #4
  %gov = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 5
  %0 = ptrtoint ptr %gov to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gov, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str, ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %count.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pretimeout_lock) #4
  ret i32 %count.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watchdog_pretimeout_governor_set(ptr nocapture noundef writeonly %wdd, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @governor_lock, i32 noundef 0) #4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @governor_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @governor_list
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %priv.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %1 = ptrtoint ptr %priv.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.0.i, align 4
  %call.i = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef %2) #4
  br i1 %call.i, label %find_governor_by_name.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

find_governor_by_name.exit:                       ; preds = %for.body.i
  %priv.0.i.le = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %priv.0.i.le, null
  br i1 %tobool.not, label %find_governor_by_name.exit.cleanup_crit_edge, label %if.end

find_governor_by_name.exit.cleanup_crit_edge:     ; preds = %find_governor_by_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %find_governor_by_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pretimeout_lock) #4
  %3 = ptrtoint ptr %priv.0.i.le to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.0.i.le, align 4
  %gov1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 5
  %5 = ptrtoint ptr %gov1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %gov1, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pretimeout_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %find_governor_by_name.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %find_governor_by_name.exit.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @governor_lock) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @watchdog_notify_pretimeout(ptr noundef %wdd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pretimeout_lock) #4
  %gov = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 5
  %0 = ptrtoint ptr %gov to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gov, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pretimeout = getelementptr inbounds %struct.watchdog_governor, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pretimeout, align 4
  tail call void %3(ptr noundef %wdd) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pretimeout_lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watchdog_register_governor(ptr noundef %gov) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @governor_lock, i32 noundef 0) #4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ @governor_list, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @governor_list
  br i1 %cmp.not.i, label %for.cond.i.if.end4_crit_edge, label %for.body.i

for.cond.i.if.end4_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

for.body.i:                                       ; preds = %for.cond.i
  %priv.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %2 = ptrtoint ptr %priv.0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.0.i, align 4
  %call.i = tail call zeroext i1 @sysfs_streq(ptr noundef %gov, ptr noundef %3) #4
  br i1 %call.i, label %find_governor_by_name.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

find_governor_by_name.exit:                       ; preds = %for.body.i
  %priv.0.i.le = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool2.not = icmp eq ptr %priv.0.i.le, null
  br i1 %tobool2.not, label %find_governor_by_name.exit.if.end4_crit_edge, label %if.then3

find_governor_by_name.exit.if.end4_crit_edge:     ; preds = %find_governor_by_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %find_governor_by_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef nonnull @governor_lock) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.end4:                                          ; preds = %find_governor_by_name.exit.if.end4_crit_edge, %for.cond.i.if.end4_crit_edge
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %gov, ptr %call7.i.i, align 8
  %entry6 = getelementptr inbounds %struct.governor_priv, ptr %call7.i.i, i32 0, i32 1
  %5 = load ptr, ptr @governor_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry6, ptr noundef nonnull @governor_list, ptr noundef %5) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.list_add.exit_crit_edge

if.end4.list_add.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry6, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %entry6, align 4
  %prev3.i.i = getelementptr inbounds %struct.governor_priv, ptr %call7.i.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @governor_list, ptr %prev3.i.i, align 8
  store volatile ptr %entry6, ptr @governor_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end4.list_add.exit_crit_edge
  %call9 = tail call i32 @strncmp(ptr noundef %gov, ptr noundef nonnull dereferenceable(6) @.str.1, i32 noundef 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %list_add.exit.if.end23_crit_edge

list_add.exit.if.end23_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then11:                                        ; preds = %list_add.exit
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pretimeout_lock) #4
  store ptr %gov, ptr @default_gov, align 4
  %.pn36 = load ptr, ptr @pretimeout_list, align 4
  %cmp.not37 = icmp eq ptr %.pn36, @pretimeout_list
  br i1 %cmp.not37, label %if.then11.for.end_crit_edge, label %if.then11.for.body_crit_edge

if.then11.for.body_crit_edge:                     ; preds = %if.then11
  br label %for.body

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then11.for.body_crit_edge
  %.pn38 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn36, %if.then11.for.body_crit_edge ]
  %p.0 = getelementptr i8, ptr %.pn38, i32 -4
  %9 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p.0, align 4
  %gov13 = getelementptr inbounds %struct.watchdog_device, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %gov13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gov13, align 4
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %if.then15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %gov13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %gov, ptr %gov13, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn38, align 4
  %cmp.not = icmp eq ptr %.pn, @pretimeout_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then11.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pretimeout_lock) #4
  br label %if.end23

if.end23:                                         ; preds = %for.end, %list_add.exit.if.end23_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @governor_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then3 ], [ 0, %if.end23 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @watchdog_unregister_governor(ptr noundef readnone %gov) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @governor_lock, i32 noundef 0) #4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in.in = phi ptr [ @governor_list, %entry ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, @governor_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %priv.0 = getelementptr i8, ptr %.pn.in, i32 -4
  %1 = ptrtoint ptr %priv.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.0, align 4
  %cmp7 = icmp eq ptr %2, %gov
  br i1 %cmp7, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.then:                                          ; preds = %for.body
  %priv.0.le = getelementptr i8, ptr %.pn.in, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %priv.0.le) #4
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pretimeout_lock) #4
  %.pn4448 = load ptr, ptr @pretimeout_list, align 4
  %cmp19.not49 = icmp eq ptr %.pn4448, @pretimeout_list
  br i1 %cmp19.not49, label %for.end.for.end34_crit_edge, label %for.end.for.body21_crit_edge

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.end.for.end34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end34

for.body21:                                       ; preds = %for.inc28.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %.pn4450 = phi ptr [ %.pn44, %for.inc28.for.body21_crit_edge ], [ %.pn4448, %for.end.for.body21_crit_edge ]
  %p.0 = getelementptr i8, ptr %.pn4450, i32 -4
  %11 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p.0, align 4
  %gov22 = getelementptr inbounds %struct.watchdog_device, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %gov22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gov22, align 4
  %cmp23 = icmp eq ptr %14, %gov
  br i1 %cmp23, label %if.then24, label %for.body21.for.inc28_crit_edge

for.body21.for.inc28_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28

if.then24:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #6
  %15 = load ptr, ptr @default_gov, align 4
  %16 = ptrtoint ptr %gov22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %gov22, align 4
  br label %for.inc28

for.inc28:                                        ; preds = %if.then24, %for.body21.for.inc28_crit_edge
  %17 = ptrtoint ptr %.pn4450 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn44 = load ptr, ptr %.pn4450, align 4
  %cmp19.not = icmp eq ptr %.pn44, @pretimeout_list
  br i1 %cmp19.not, label %for.inc28.for.end34_crit_edge, label %for.inc28.for.body21_crit_edge

for.inc28.for.body21_crit_edge:                   ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body21

for.inc28.for.end34_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end34

for.end34:                                        ; preds = %for.inc28.for.end34_crit_edge, %for.end.for.end34_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pretimeout_lock) #4
  tail call void @mutex_unlock(ptr noundef nonnull @governor_lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watchdog_register_pretimeout(ptr noundef %wdd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pretimeout_lock) #4
  %entry4 = getelementptr inbounds %struct.watchdog_pretimeout, ptr %call7.i.i, i32 0, i32 1
  %1 = load ptr, ptr @pretimeout_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry4, ptr noundef nonnull @pretimeout_list, ptr noundef %1) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end3.list_add.exit_crit_edge

if.end3.list_add.exit_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %entry4, align 4
  %prev3.i.i = getelementptr inbounds %struct.watchdog_pretimeout, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pretimeout_list, ptr %prev3.i.i, align 8
  store volatile ptr %entry4, ptr @pretimeout_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end3.list_add.exit_crit_edge
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %wdd, ptr %call7.i.i, align 8
  %6 = load ptr, ptr @default_gov, align 4
  %gov = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 5
  %7 = ptrtoint ptr %gov to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %gov, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pretimeout_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @watchdog_unregister_pretimeout(ptr noundef writeonly %wdd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pretimeout_lock) #4
  %gov = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 5
  %0 = ptrtoint ptr %gov to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %gov, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in.in = phi ptr [ @pretimeout_list, %entry ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %p.0 = getelementptr i8, ptr %.pn.in, i32 -4
  %cmp.not = icmp eq ptr %.pn.in, @pretimeout_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.0, align 4
  %cmp7 = icmp eq ptr %3, %wdd
  br i1 %cmp7, label %if.then8, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.then8:                                         ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_del.exit_crit_edge

if.then8.list_del.exit_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then8.list_del.exit_crit_edge
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pretimeout_lock) #4
  tail call void @kfree(ptr noundef %p.0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !20, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/watchdog_pretimeout.c", i32 59, i32 38}
!2 = !{ptr @__ksymtab_watchdog_notify_pretimeout, !3, !"__ksymtab_watchdog_notify_pretimeout", i1 false, i1 false}
!3 = !{!"../drivers/watchdog/watchdog_pretimeout.c", i32 113, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/watchdog/watchdog_pretimeout.c", i32 135, i32 26}
!6 = !{ptr @__ksymtab_watchdog_register_governor, !7, !"__ksymtab_watchdog_register_governor", i1 false, i1 false}
!7 = !{!"../drivers/watchdog/watchdog_pretimeout.c", i32 150, i32 1}
!8 = !{ptr @__ksymtab_watchdog_unregister_governor, !9, !"__ksymtab_watchdog_unregister_governor", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/watchdog_pretimeout.c", i32 175, i32 1}
!10 = !{ptr @default_gov, !11, !"default_gov", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/watchdog_pretimeout.c", i32 16, i32 34}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/watchdog_pretimeout.c", i32 30, i32 8}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @governor_lock, !13, !"governor_lock", i1 false, i1 false}
!16 = !{ptr @governor_list, !17, !"governor_list", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/watchdog_pretimeout.c", i32 33, i32 8}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/watchdog_pretimeout.c", i32 19, i32 8}
!20 = !{ptr @pretimeout_lock, !19, !"pretimeout_lock", i1 false, i1 false}
!21 = !{ptr @pretimeout_list, !22, !"pretimeout_list", i1 false, i1 false}
!22 = !{!"../drivers/watchdog/watchdog_pretimeout.c", i32 22, i32 8}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
