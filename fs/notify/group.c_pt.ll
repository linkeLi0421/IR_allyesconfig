; ModuleID = '/llk/IR_all_yes/fs/notify/group.c_pt.bc'
source_filename = "../fs/notify/group.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fsnotify_put_group\22, \22a\22\09"
module asm "\09.weak\09__crc_fsnotify_put_group\09\09\09\09"
module asm "\09.long\09__crc_fsnotify_put_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_put_group:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_put_group\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_put_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsnotify_alloc_group\22, \22a\22\09"
module asm "\09.weak\09__crc_fsnotify_alloc_group\09\09\09\09"
module asm "\09.long\09__crc_fsnotify_alloc_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_alloc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_alloc_group\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_alloc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsnotify_alloc_user_group\22, \22a\22\09"
module asm "\09.weak\09__crc_fsnotify_alloc_user_group\09\09\09\09"
module asm "\09.long\09__crc_fsnotify_alloc_user_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_alloc_user_group:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_alloc_user_group\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_alloc_user_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.83 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.83 = type { %struct.fanotify_group_private_data }
%struct.fanotify_group_private_data = type { ptr, %struct.list_head, %struct.wait_queue_head, i32, i32, ptr, %struct.mempool_s }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/notify/group.c\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_fsnotify_put_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_put_group = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_put_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_put_group to i32), ptr @__kstrtab_fsnotify_put_group, ptr @__kstrtabns_fsnotify_put_group }, section "___ksymtab_gpl+fsnotify_put_group", align 4
@__kstrtab_fsnotify_alloc_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_alloc_group = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_alloc_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_alloc_group to i32), ptr @__kstrtab_fsnotify_alloc_group, ptr @__kstrtabns_fsnotify_alloc_group }, section "___ksymtab_gpl+fsnotify_alloc_group", align 4
@__kstrtab_fsnotify_alloc_user_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_alloc_user_group = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_alloc_user_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_alloc_user_group to i32), ptr @__kstrtab_fsnotify_alloc_user_group, ptr @__kstrtabns_fsnotify_alloc_user_group }, section "___ksymtab_gpl+fsnotify_alloc_user_group", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__fsnotify_alloc_group.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&group->notification_lock\00", [38 x i8] zeroinitializer }, align 32
@__fsnotify_alloc_group.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&group->notification_waitq\00", [37 x i8] zeroinitializer }, align 32
@__fsnotify_alloc_group.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&group->mark_mutex\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 68, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 695, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 723, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 127, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 129, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [21 x i8] c"../fs/notify/group.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 132, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_fsnotify_alloc_group, ptr @__ksymtab_fsnotify_alloc_user_group, ptr @__ksymtab_fsnotify_put_group, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_group_stop_queueing(ptr noundef %group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #7
  %shutdown = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 8
  %0 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %shutdown, align 4
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_destroy_group(ptr noundef %group) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %notification_lock.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %notification_lock.i) #7
  %shutdown.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 8
  %0 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %shutdown.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock.i) #7
  tail call void @fsnotify_clear_marks_by_group(ptr noundef %group, i32 noundef -1) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 68) #7
  %user_waits = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %user_waits, i32 noundef 4) #7
  %1 = ptrtoint ptr %user_waits to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %user_waits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %if.end

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %notification_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 4
  %call430 = call i32 @prepare_to_wait_event(ptr noundef %notification_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %call.i.i2731 = call zeroext i1 @__kasan_check_read(ptr noundef %user_waits, i32 noundef 4) #7
  %4 = ptrtoint ptr %user_waits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %user_waits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not32 = icmp eq i32 %5, 0
  br i1 %tobool7.not32, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #7
  %call4 = call i32 @prepare_to_wait_event(ptr noundef %notification_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %call.i.i27 = call zeroext i1 @__kasan_check_read(ptr noundef %user_waits, i32 noundef 4) #7
  %6 = ptrtoint ptr %user_waits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %user_waits, align 4
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %notification_waitq, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %do.end11

do.end11:                                         ; preds = %for.end, %entry.do.end11_crit_edge
  call void @fsnotify_wait_marks_destroyed() #7
  call void @fsnotify_flush_notify(ptr noundef %group) #7
  %overflow_event = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 13
  %8 = ptrtoint ptr %overflow_event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %overflow_event, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %do.end11.if.end15_crit_edge, label %if.then13

do.end11.if.end15_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group, align 4
  %free_event = getelementptr inbounds %struct.fsnotify_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %free_event to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free_event, align 4
  call void %13(ptr noundef %group, ptr noundef nonnull %9) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end11.if.end15_crit_edge
  call void @fsnotify_put_group(ptr noundef %group)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_clear_marks_by_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_wait_marks_destroyed() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_flush_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_put_group(ptr noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !35
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !36

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #7
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  %1 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %group, align 4
  %free_group_priv.i = getelementptr inbounds %struct.fsnotify_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %free_group_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %free_group_priv.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %4(ptr noundef %group) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %memcg.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 14
  %5 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %memcg.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.fsnotify_final_destroy_group.exit_crit_edge, label %if.then.i.i

if.end.i.fsnotify_final_destroy_group.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_final_destroy_group.exit

if.then.i.i:                                      ; preds = %if.end.i
  %flags.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.fsnotify_final_destroy_group.exit_crit_edge

if.then.i.i.fsnotify_final_destroy_group.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsnotify_final_destroy_group.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %6, i32 0, i32 2
  %9 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i.i.i.i.i, label %if.then.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i

if.then.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %if.then.i.i.i
  %call1.i.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.i:                       ; preds = %land.lhs.true.i.i.i.i.i.i
  %.b4.i.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %land.lhs.true2.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #7
  br label %rcu_read_lock.exit.i.i.i.i.i

rcu_read_lock.exit.i.i.i.i.i:                     ; preds = %if.then.i.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge, %if.then.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcnt.i.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i1.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i.i.i, label %do.body1.i.i.i.i.i, label %if.else.i.i.i.i.i, !prof !36

do.body1.i.i.i.i.i:                               ; preds = %rcu_read_lock.exit.i.i.i.i.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !39
  %16 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i2.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i2.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %21, %14
  %22 = inttoptr i32 %add.i.i.i.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add15.i.i.i.i.i = add i32 %24, -1
  store i32 %add15.i.i.i.i.i, ptr %22, align 4
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !40
  %and.i.i.i.i.i.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then29.i.i.i.i.i, label %do.body1.i.i.i.i.i.do.end31.i.i.i.i.i_crit_edge, !prof !41

do.body1.i.i.i.i.i.do.end31.i.i.i.i.i_crit_edge:  ; preds = %do.body1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i.i.i.i.i

if.then29.i.i.i.i.i:                              ; preds = %do.body1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end31.i.i.i.i.i

do.end31.i.i.i.i.i:                               ; preds = %if.then29.i.i.i.i.i, %do.body1.i.i.i.i.i.do.end31.i.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #7, !srcloc !42
  br label %if.end48.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %rcu_read_lock.exit.i.i.i.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %6, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %27, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %27, i32 1, i32 3, i32 1) #7
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #7, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then45.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end48.i.i.i.i.i_crit_edge, !prof !41

if.else.i.i.i.i.i.if.end48.i.i.i.i.i_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i.i.i.i.i

if.then45.i.i.i.i.i:                              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i.i.i, align 4
  %release.i.i.i.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %release.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %release.i.i.i.i.i, align 4
  tail call void %32(ptr noundef %refcnt.i.i.i) #7
  br label %if.end48.i.i.i.i.i

if.end48.i.i.i.i.i:                               ; preds = %if.then45.i.i.i.i.i, %if.else.i.i.i.i.i.if.end48.i.i.i.i.i_crit_edge, %do.end31.i.i.i.i.i
  %call.i3.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i3.i.i.i.i.i, label %if.end48.i.i.i.i.i.percpu_ref_put.exit.i.i.i_crit_edge, label %land.lhs.true.i6.i.i.i.i.i

if.end48.i.i.i.i.i.percpu_ref_put.exit.i.i.i_crit_edge: ; preds = %if.end48.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %percpu_ref_put.exit.i.i.i

land.lhs.true.i6.i.i.i.i.i:                       ; preds = %if.end48.i.i.i.i.i
  %call1.i4.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i.i.i)
  %tobool.not.i5.i.i.i.i.i = icmp eq i32 %call1.i4.i.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i.i.i, label %land.lhs.true.i6.i.i.i.i.i.percpu_ref_put.exit.i.i.i_crit_edge, label %land.lhs.true2.i8.i.i.i.i.i

land.lhs.true.i6.i.i.i.i.i.percpu_ref_put.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %percpu_ref_put.exit.i.i.i

land.lhs.true2.i8.i.i.i.i.i:                      ; preds = %land.lhs.true.i6.i.i.i.i.i
  %.b4.i7.i.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i.i.i, label %land.lhs.true2.i8.i.i.i.i.i.percpu_ref_put.exit.i.i.i_crit_edge, label %if.then.i9.i.i.i.i.i

land.lhs.true2.i8.i.i.i.i.i.percpu_ref_put.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %percpu_ref_put.exit.i.i.i

if.then.i9.i.i.i.i.i:                             ; preds = %land.lhs.true2.i8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #7
  br label %percpu_ref_put.exit.i.i.i

percpu_ref_put.exit.i.i.i:                        ; preds = %if.then.i9.i.i.i.i.i, %land.lhs.true2.i8.i.i.i.i.i.percpu_ref_put.exit.i.i.i_crit_edge, %land.lhs.true.i6.i.i.i.i.i.percpu_ref_put.exit.i.i.i_crit_edge, %if.end48.i.i.i.i.i.percpu_ref_put.exit.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %33 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i.i.i10.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i10.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %fsnotify_final_destroy_group.exit

fsnotify_final_destroy_group.exit:                ; preds = %percpu_ref_put.exit.i.i.i, %if.then.i.i.fsnotify_final_destroy_group.exit_crit_edge, %if.end.i.fsnotify_final_destroy_group.exit_crit_edge
  %mark_mutex.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %mark_mutex.i) #7
  tail call void @kfree(ptr noundef %group) #7
  br label %if.end

if.end:                                           ; preds = %fsnotify_final_destroy_group.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_get_group(ptr noundef %group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !47
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !41

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !36

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #7
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fsnotify_alloc_group(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__fsnotify_alloc_group(ptr noundef %ops, i32 noundef 3264)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__fsnotify_alloc_group(ptr noundef %ops, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !36

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 9
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 440) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %refcnt = getelementptr inbounds %struct.fsnotify_group, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcnt, align 4
  %user_waits = getelementptr inbounds %struct.fsnotify_group, ptr %call7.i.i, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_waits, i32 noundef 4) #7
  %3 = ptrtoint ptr %user_waits to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %user_waits, align 4
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %notification_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @__fsnotify_alloc_group.__key, i16 noundef signext 3) #7
  %notification_list = getelementptr inbounds %struct.fsnotify_group, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %notification_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %notification_list, ptr %notification_list, align 4
  %prev.i = getelementptr inbounds %struct.fsnotify_group, ptr %call7.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %notification_list, ptr %prev.i, align 8
  %notification_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %notification_waitq, ptr noundef nonnull @.str.6, ptr noundef nonnull @__fsnotify_alloc_group.__key.5) #7
  %max_events = getelementptr inbounds %struct.fsnotify_group, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %max_events to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %max_events, align 4
  %mark_mutex = getelementptr inbounds %struct.fsnotify_group, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %mark_mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @__fsnotify_alloc_group.__key.7) #7
  %marks_list = getelementptr inbounds %struct.fsnotify_group, ptr %call7.i.i, i32 0, i32 11
  %7 = ptrtoint ptr %marks_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %marks_list, ptr %marks_list, align 8
  %prev.i20 = getelementptr inbounds %struct.fsnotify_group, ptr %call7.i.i, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %marks_list, ptr %prev.i20, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ops, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %kzalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fsnotify_alloc_user_group(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__fsnotify_alloc_group(ptr noundef %ops, i32 noundef 4197568)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsnotify_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fsn_fa = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 12
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %fsn_fa) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.inv = icmp slt i32 %call, 0
  %cond = select i1 %cmp.inv, i32 -5, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/notify/group.c", i32 68, i32 2}
!2 = !{ptr @__ksymtab_fsnotify_put_group, !3, !"__ksymtab_fsnotify_put_group", i1 false, i1 false}
!3 = !{!"../fs/notify/group.c", i32 112, i32 1}
!4 = !{ptr @__ksymtab_fsnotify_alloc_group, !5, !"__ksymtab_fsnotify_alloc_group", i1 false, i1 false}
!5 = !{!"../fs/notify/group.c", i32 147, i32 1}
!6 = !{ptr @__ksymtab_fsnotify_alloc_user_group, !7, !"__ksymtab_fsnotify_alloc_user_group", i1 false, i1 false}
!7 = !{!"../fs/notify/group.c", i32 156, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__fsnotify_alloc_group.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../fs/notify/group.c", i32 127, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__fsnotify_alloc_group.__key.5, !19, !"__key", i1 false, i1 false}
!19 = !{!"../fs/notify/group.c", i32 129, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__fsnotify_alloc_group.__key.7, !22, !"__key", i1 false, i1 false}
!22 = !{!"../fs/notify/group.c", i32 132, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2148550243}
!35 = !{i64 2148464683, i64 2148464715, i64 2148464744, i64 2148464778, i64 2148464809, i64 2148464832}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2149870393}
!38 = !{i64 2149919936}
!39 = !{i64 865368, i64 865429}
!40 = !{i64 868100}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 868385}
!43 = !{i64 2148549164}
!44 = !{i64 2148463873, i64 2148463905, i64 2148463934, i64 2148463968, i64 2148463999, i64 2148464022}
!45 = !{i64 2148549393}
!46 = !{i64 2149920202}
!47 = !{i64 2148462218, i64 2148462250, i64 2148462279, i64 2148462313, i64 2148462344, i64 2148462367}
