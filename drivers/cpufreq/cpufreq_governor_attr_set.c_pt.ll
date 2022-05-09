; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/cpufreq_governor_attr_set.c_pt.bc'
source_filename = "../drivers/cpufreq/cpufreq_governor_attr_set.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+governor_sysfs_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_governor_sysfs_ops\09\09\09\09"
module asm "\09.long\09__crc_governor_sysfs_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_governor_sysfs_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22governor_sysfs_ops\22\09\09\09\09\09"
module asm "__kstrtabns_governor_sysfs_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gov_attr_set_init\22, \22a\22\09"
module asm "\09.weak\09__crc_gov_attr_set_init\09\09\09\09"
module asm "\09.long\09__crc_gov_attr_set_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gov_attr_set_init:\09\09\09\09\09"
module asm "\09.asciz \09\22gov_attr_set_init\22\09\09\09\09\09"
module asm "__kstrtabns_gov_attr_set_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gov_attr_set_get\22, \22a\22\09"
module asm "\09.weak\09__crc_gov_attr_set_get\09\09\09\09"
module asm "\09.long\09__crc_gov_attr_set_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gov_attr_set_get:\09\09\09\09\09"
module asm "\09.asciz \09\22gov_attr_set_get\22\09\09\09\09\09"
module asm "__kstrtabns_gov_attr_set_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gov_attr_set_put\22, \22a\22\09"
module asm "\09.weak\09__crc_gov_attr_set_put\09\09\09\09"
module asm "\09.long\09__crc_gov_attr_set_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gov_attr_set_put:\09\09\09\09\09"
module asm "\09.asciz \09\22gov_attr_set_put\22\09\09\09\09\09"
module asm "__kstrtabns_gov_attr_set_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.sysfs_ops = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.governor_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.gov_attr_set = type { %struct.kobject, %struct.list_head, %struct.mutex, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@governor_sysfs_ops = dso_local constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @governor_show, ptr @governor_store }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_governor_sysfs_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_governor_sysfs_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_governor_sysfs_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @governor_sysfs_ops to i32), ptr @__kstrtab_governor_sysfs_ops, ptr @__kstrtabns_governor_sysfs_ops }, section "___ksymtab_gpl+governor_sysfs_ops", align 4
@gov_attr_set_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&attr_set->update_lock\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_gov_attr_set_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_gov_attr_set_init = external dso_local constant [0 x i8], align 1
@__ksymtab_gov_attr_set_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gov_attr_set_init to i32), ptr @__kstrtab_gov_attr_set_init, ptr @__kstrtabns_gov_attr_set_init }, section "___ksymtab_gpl+gov_attr_set_init", align 4
@__kstrtab_gov_attr_set_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_gov_attr_set_get = external dso_local constant [0 x i8], align 1
@__ksymtab_gov_attr_set_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gov_attr_set_get to i32), ptr @__kstrtab_gov_attr_set_get, ptr @__kstrtabns_gov_attr_set_get }, section "___ksymtab_gpl+gov_attr_set_get", align 4
@__kstrtab_gov_attr_set_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_gov_attr_set_put = external dso_local constant [0 x i8], align 1
@__ksymtab_gov_attr_set_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gov_attr_set_put to i32), ptr @__kstrtab_gov_attr_set_put, ptr @__kstrtabns_gov_attr_set_put }, section "___ksymtab_gpl+gov_attr_set_put", align 4
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"governor_sysfs_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 42, i32 24 }
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [47 x i8] c"../drivers/cpufreq/cpufreq_governor_attr_set.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 51, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_gov_attr_set_get, ptr @__ksymtab_gov_attr_set_init, ptr @__ksymtab_gov_attr_set_put, ptr @__ksymtab_governor_sysfs_ops, ptr @governor_sysfs_ops, ptr @gov_attr_set_init.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @governor_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gov_attr_set_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @governor_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.governor_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %call2 = tail call i32 %1(ptr noundef %kobj, ptr noundef %buf) #2
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @governor_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %update_lock = getelementptr inbounds %struct.gov_attr_set, ptr %kobj, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #2
  %usage_count = getelementptr inbounds %struct.gov_attr_set, ptr %kobj, i32 0, i32 3
  %0 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %store = getelementptr inbounds %struct.governor_attr, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %store, align 4
  %call2 = tail call i32 %3(ptr noundef %kobj, ptr noundef %buf, i32 noundef %count) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call2, %cond.true ], [ -16, %entry.cond.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #2
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gov_attr_set_init(ptr noundef %attr_set, ptr noundef %list_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %policy_list = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set, i32 0, i32 1
  %0 = ptrtoint ptr %policy_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %policy_list, ptr %policy_list, align 4
  %prev.i = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %policy_list, ptr %prev.i, align 4
  %update_lock = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str, ptr noundef nonnull @gov_attr_set_init.__key) #2
  %usage_count = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set, i32 0, i32 3
  %2 = ptrtoint ptr %usage_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %usage_count, align 4
  %3 = ptrtoint ptr %policy_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %policy_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_node, ptr noundef %policy_list, ptr noundef %4) #2
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list_node, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %list_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list_node, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %policy_list, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %policy_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list_node, ptr %policy_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gov_attr_set_get(ptr noundef %attr_set, ptr noundef %list_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %update_lock = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #2
  %usage_count = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set, i32 0, i32 3
  %0 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %usage_count, align 4
  %policy_list = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set, i32 0, i32 1
  %2 = ptrtoint ptr %policy_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %policy_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_node, ptr noundef %policy_list, ptr noundef %3) #2
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list_node, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %list_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list_node, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %policy_list, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %policy_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list_node, ptr %policy_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gov_attr_set_put(ptr noundef %attr_set, ptr noundef %list_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %update_lock = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node) #2
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %list_node, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list_node, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list_node, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %usage_count = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set, i32 0, i32 3
  %8 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usage_count, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %usage_count, align 4
  tail call void @mutex_unlock(ptr noundef %update_lock) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %list_del.exit.cleanup_crit_edge

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @mutex_destroy(ptr noundef %update_lock) #2
  tail call void @kobject_put(ptr noundef %attr_set) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %list_del.exit.cleanup_crit_edge
  ret i32 %dec
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @governor_sysfs_ops, !1, !"governor_sysfs_ops", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/cpufreq_governor_attr_set.c", i32 42, i32 24}
!2 = !{ptr @__ksymtab_governor_sysfs_ops, !3, !"__ksymtab_governor_sysfs_ops", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/cpufreq_governor_attr_set.c", i32 46, i32 1}
!4 = !{ptr @gov_attr_set_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/cpufreq_governor_attr_set.c", i32 51, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_gov_attr_set_init, !8, !"__ksymtab_gov_attr_set_init", i1 false, i1 false}
!8 = !{!"../drivers/cpufreq/cpufreq_governor_attr_set.c", i32 55, i32 1}
!9 = !{ptr @__ksymtab_gov_attr_set_get, !10, !"__ksymtab_gov_attr_set_get", i1 false, i1 false}
!10 = !{!"../drivers/cpufreq/cpufreq_governor_attr_set.c", i32 64, i32 1}
!11 = !{ptr @__ksymtab_gov_attr_set_put, !12, !"__ksymtab_gov_attr_set_put", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/cpufreq_governor_attr_set.c", i32 81, i32 1}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
