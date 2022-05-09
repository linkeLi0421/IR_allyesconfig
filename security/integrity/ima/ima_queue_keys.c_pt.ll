; ModuleID = '/llk/IR_all_yes/security/integrity/ima/ima_queue_keys.c_pt.bc'
source_filename = "../security/integrity/ima/ima_queue_keys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.8 }
%union.anon.8 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.0, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.6, ptr }
%union.anon.0 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.2 = type { i64 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.6 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.ima_key_entry = type { %struct.list_head, ptr, i32, ptr }

@ima_keys_delayed_work = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @ima_keys_delayed_work, i64 4), ptr getelementptr (i8, ptr @ima_keys_delayed_work, i64 4) }, ptr @ima_keys_handler, %struct.lockdep_map { ptr @ima_keys_delayed_work, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.1, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ima_keys_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ima_keys_lock, i64 52), ptr getelementptr (i8, ptr @ima_keys_lock, i64 52) }, ptr @ima_keys_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ima_process_keys = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ima_keys = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ima_keys, ptr @ima_keys }, [24 x i8] zeroinitializer }, align 32
@timer_expired = internal global { i1, [31 x i8] } zeroinitializer, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(ima_keys_delayed_work).work\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"security/integrity/ima/ima_queue_keys.c:35\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ENOMEM\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"measuring_key\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ima_keys_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ima_keys_lock\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"ima_keys_delayed_work\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"ima_keys_lock\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"ima_process_keys\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"ima_keys\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 26, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"timer_expired\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 35, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 72, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant [32 x i8] c"../security/integrity/ima/ima.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 217, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [43 x i8] c"../security/integrity/ima/ima_queue_keys.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 25, i32 8 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @ima_keys_delayed_work, ptr @ima_keys_lock, ptr @ima_process_keys, ptr @ima_keys, ptr @timer_expired, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_keys_delayed_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_keys_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_process_keys to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_keys to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_expired to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_init_key_queue() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @ima_keys_delayed_work, i32 noundef 30000) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ima_queue_key(ptr nocapture noundef readonly %keyring, ptr noundef %payload, i32 noundef %payload_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #7
  %cond.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cond.i, label %if.then14.thread.i, label %if.then.i

if.then14.thread.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %description1534.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 16, i32 0, i32 4
  %1 = ptrtoint ptr %description1534.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %description1534.i, align 8
  tail call void @integrity_audit_message(i32 noundef 1804, ptr noundef null, ptr noundef %2, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef -12, i32 noundef 0, i32 noundef -12) #4
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %call2.i = tail call ptr @kmemdup(ptr noundef %payload, i32 noundef %payload_len, i32 noundef 3264) #4
  %payload3.i = getelementptr inbounds %struct.ima_key_entry, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %payload3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %payload3.i, align 8
  %description.i = getelementptr inbounds %struct.key, ptr %keyring, i32 0, i32 16, i32 0, i32 4
  %4 = ptrtoint ptr %description.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %description.i, align 8
  %call4.i = tail call noalias ptr @kstrdup(ptr noundef %5, i32 noundef 3264) #4
  %keyring_name.i = getelementptr inbounds %struct.ima_key_entry, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %keyring_name.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4.i, ptr %keyring_name.i, align 8
  %payload_len5.i = getelementptr inbounds %struct.ima_key_entry, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %payload_len5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %payload_len, ptr %payload_len5.i, align 4
  %cmp7.i = icmp eq ptr %call2.i, null
  %cmp10.i = icmp eq ptr %call4.i, null
  %or.cond.i = select i1 %cmp7.i, i1 true, i1 %cmp10.i
  br i1 %or.cond.i, label %if.then.i.i, label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %description.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %description.i, align 8
  tail call void @integrity_audit_message(i32 noundef 1804, ptr noundef null, ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef -12, i32 noundef 0, i32 noundef -12) #4
  %10 = ptrtoint ptr %payload3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %payload3.i, align 8
  tail call void @kfree(ptr noundef %11) #4
  %12 = ptrtoint ptr %keyring_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %keyring_name.i, align 8
  tail call void @kfree(ptr noundef %13) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br label %cleanup

if.end:                                           ; preds = %if.then.i
  %14 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ima_keys_lock, i32 noundef 0) #4
  %.b13 = load i1, ptr @ima_process_keys, align 1
  br i1 %.b13, label %ima_free_key_entry.exit, label %if.then3

if.then3:                                         ; preds = %if.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ima_keys, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %16, ptr noundef nonnull @ima_keys) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then3.if.end4.thread_crit_edge

if.then3.if.end4.thread_crit_edge:                ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.thread

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @ima_keys, i32 0, i32 1), align 4
  %17 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ima_keys, ptr %call7.i.i.i, align 8
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i.i.i, ptr %16, align 4
  br label %if.end4.thread

if.end4.thread:                                   ; preds = %if.end.i.i, %if.then3.if.end4.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ima_keys_lock) #4
  br label %cleanup

ima_free_key_entry.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef nonnull @ima_keys_lock) #4
  %20 = ptrtoint ptr %payload3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %payload3.i, align 8
  tail call void @kfree(ptr noundef %21) #4
  %22 = ptrtoint ptr %keyring_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %keyring_name.i, align 8
  tail call void @kfree(ptr noundef %23) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %ima_free_key_entry.exit, %if.end4.thread, %if.then.i.i, %if.then14.thread.i
  %retval.0 = phi i1 [ false, %ima_free_key_entry.exit ], [ true, %if.end4.thread ], [ false, %if.then.i.i ], [ false, %if.then14.thread.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_process_queued_keys() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %.b3740 = load i1, ptr @ima_process_keys, align 1
  br i1 %.b3740, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ima_keys_lock, i32 noundef 0) #4
  %.b41 = load i1, ptr @ima_process_keys, align 1
  br i1 %.b41, label %if.then6.critedge, label %if.then3

if.then3:                                         ; preds = %if.end
  store i1 true, ptr @ima_process_keys, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @ima_keys_lock) #4
  %.b3942 = load i1, ptr @timer_expired, align 1
  br i1 %.b3942, label %if.then3.if.end10_crit_edge, label %if.then9

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then6.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef nonnull @ima_keys_lock) #4
  br label %cleanup

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @ima_keys_delayed_work) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then3.if.end10_crit_edge
  %0 = load ptr, ptr @ima_keys, align 4
  %cmp.not45 = icmp eq ptr %0, @ima_keys
  br i1 %cmp.not45, label %if.end10.cleanup_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %ima_free_key_entry.exit.for.body_crit_edge, %if.end10.for.body_crit_edge
  %entry1.046 = phi ptr [ %tmp.047, %ima_free_key_entry.exit.for.body_crit_edge ], [ %0, %if.end10.for.body_crit_edge ]
  %1 = ptrtoint ptr %entry1.046 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.047 = load ptr, ptr %entry1.046, align 4
  %.b3843 = load i1, ptr @timer_expired, align 1
  br i1 %.b3843, label %for.body.if.end20_crit_edge, label %if.then17

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %payload = getelementptr inbounds %struct.ima_key_entry, ptr %entry1.046, i32 0, i32 1
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %payload, align 4
  %payload_len = getelementptr inbounds %struct.ima_key_entry, ptr %entry1.046, i32 0, i32 2
  %4 = ptrtoint ptr %payload_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %payload_len, align 4
  %keyring_name = getelementptr inbounds %struct.ima_key_entry, ptr %entry1.046, i32 0, i32 3
  %6 = ptrtoint ptr %keyring_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %keyring_name, align 4
  %call19 = tail call i32 @process_buffer_measurement(ptr noundef nonnull @init_user_ns, ptr noundef null, ptr noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef 12, i32 noundef 0, ptr noundef %7, i1 noundef zeroext false, ptr noundef null, i32 noundef 0) #4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %for.body.if.end20_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.046) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_del.exit_crit_edge

if.end20.list_del.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.046, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %entry1.046 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entry1.046, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end20.list_del.exit_crit_edge
  %14 = ptrtoint ptr %entry1.046 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.046, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.046, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not.i = icmp eq ptr %entry1.046, null
  br i1 %tobool.not.i, label %list_del.exit.ima_free_key_entry.exit_crit_edge, label %if.then.i

list_del.exit.ima_free_key_entry.exit_crit_edge:  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %ima_free_key_entry.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  %payload.i = getelementptr inbounds %struct.ima_key_entry, ptr %entry1.046, i32 0, i32 1
  %16 = ptrtoint ptr %payload.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %payload.i, align 4
  tail call void @kfree(ptr noundef %17) #4
  %keyring_name.i = getelementptr inbounds %struct.ima_key_entry, ptr %entry1.046, i32 0, i32 3
  %18 = ptrtoint ptr %keyring_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %keyring_name.i, align 4
  tail call void @kfree(ptr noundef %19) #4
  tail call void @kfree(ptr noundef nonnull %entry1.046) #4
  br label %ima_free_key_entry.exit

ima_free_key_entry.exit:                          ; preds = %if.then.i, %list_del.exit.ima_free_key_entry.exit_crit_edge
  %cmp.not = icmp eq ptr %tmp.047, @ima_keys
  br i1 %cmp.not, label %ima_free_key_entry.exit.cleanup_crit_edge, label %ima_free_key_entry.exit.for.body_crit_edge

ima_free_key_entry.exit.for.body_crit_edge:       ; preds = %ima_free_key_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

ima_free_key_entry.exit.cleanup_crit_edge:        ; preds = %ima_free_key_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %ima_free_key_entry.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then6.critedge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @process_buffer_measurement(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ima_should_queue_key() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %.b1 = load i1, ptr @ima_process_keys, align 1
  %lnot = xor i1 %.b1, true
  ret i1 %lnot
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ima_keys_handler(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @timer_expired, align 1
  tail call void @ima_process_queued_keys()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @integrity_audit_message(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !{null, !1, !"ima_process_keys", i1 false, i1 false}
!1 = !{!"../security/integrity/ima/ima_queue_keys.c", i32 20, i32 13}
!2 = distinct !{null, !3, !"timer_expired", i1 false, i1 false}
!3 = !{!"../security/integrity/ima/ima_queue_keys.c", i32 36, i32 13}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/integrity/ima/ima_queue_keys.c", i32 35, i32 8}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ima_keys_delayed_work, !5, !"ima_keys_delayed_work", i1 false, i1 false}
!8 = distinct !{null, !9, !"ima_key_queue_timeout", i1 false, i1 false}
!9 = !{!"../security/integrity/ima/ima_queue_keys.c", i32 33, i32 13}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/integrity/ima/ima_queue_keys.c", i32 72, i32 28}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/integrity/ima/ima.h", i32 217, i32 2}
!14 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !13, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"ima_hooks_measure_str", i1 false, i1 false}
!29 = !{!"../security/integrity/ima/ima.h", i32 216, i32 27}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/integrity/ima/ima_queue_keys.c", i32 25, i32 8}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ima_keys_lock, !31, !"ima_keys_lock", i1 false, i1 false}
!34 = !{ptr @ima_keys, !35, !"ima_keys", i1 false, i1 false}
!35 = !{!"../security/integrity/ima/ima_queue_keys.c", i32 26, i32 8}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
