; ModuleID = '/llk/IR_all_yes/drivers/tee/optee/notif.c_pt.bc'
source_filename = "../drivers/tee/optee/notif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.11 }
%union.anon.11 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.optee = type { ptr, ptr, ptr, ptr, %union.anon.42, %struct.optee_call_queue, %struct.optee_notif, %struct.optee_supp, ptr, i32, i8, ptr, %struct.work_struct }
%union.anon.42 = type { %struct.optee_ffa }
%struct.optee_ffa = type { ptr, ptr, %struct.mutex, %struct.rhashtable }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.10 }
%union.anon.10 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.optee_call_queue = type { %struct.mutex, %struct.list_head }
%struct.optee_notif = type { i32, %struct.spinlock, %struct.list_head, ptr }
%struct.optee_supp = type { %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.completion }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notif_entry = type { %struct.list_head, %struct.completion, i32 }

@optee_notif_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&optee->notif.lock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private constant [29 x i8] c"../drivers/tee/optee/notif.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 111, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 87, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @optee_notif_init.__key, ptr @.str, ptr @init_completion.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_notif_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_notif_wait(ptr noundef %optee, i32 noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %notif = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6
  %0 = ptrtoint ptr %notif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %notif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %key)
  %cmp = icmp ult i32 %1, %key
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 68) #6
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %c = getelementptr inbounds %struct.notif_entry, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %c, align 8
  %wait.i = getelementptr inbounds %struct.notif_entry, ptr %call7.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #3
  %key4 = getelementptr inbounds %struct.notif_entry, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %key4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %key, ptr %key4, align 8
  %lock = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6, i32 1
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %bitmap = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bitmap, align 4
  %div3.i = lshr i32 %key, 5
  %arrayidx.i = getelementptr i32, ptr %6, i32 %div3.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %key, 31
  %9 = shl nuw i32 1, %and.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_clear_bit(i32 noundef %key, ptr noundef %6) #3
  br label %out

if.end18:                                         ; preds = %if.end3
  %db.i = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end18
  %entry1.0.in.i = phi ptr [ %db.i, %if.end18 ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %db.i
  br i1 %cmp.not.i, label %if.end21, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %key4.i = getelementptr inbounds %struct.notif_entry, ptr %entry1.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %key4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key4.i, align 4
  %cmp5.i = icmp eq i32 %13, %key
  br i1 %cmp5.i, label %for.body.i.out_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end21:                                         ; preds = %for.cond.i
  %prev.i = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %15, ptr noundef %db.i) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.list_add_tail.exit_crit_edge

if.end21.list_add_tail.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %prev.i, align 4
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %db.i, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end21.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #3
  tail call void @wait_for_completion(ptr noundef %c) #3
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %call.i.i65 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i) #3
  br i1 %call.i.i65, label %if.end.i.i66, label %list_add_tail.exit.list_del.exit_crit_edge

list_add_tail.exit.list_del.exit_crit_edge:       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i66:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i66, %list_add_tail.exit.list_del.exit_crit_edge
  %26 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i, align 8
  %prev.i67 = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i67 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i67, align 4
  br label %out

out:                                              ; preds = %list_del.exit, %for.body.i.out_crit_edge, %if.then15
  %rc.0 = phi i32 [ 0, %if.then15 ], [ 0, %list_del.exit ], [ -16, %for.body.i.out_crit_edge ]
  %flags.0 = phi i32 [ %call9, %if.then15 ], [ %call36, %list_del.exit ], [ %call9, %for.body.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #3
  tail call void @kfree(ptr noundef nonnull %call7.i) #3
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_notif_send(ptr noundef %optee, i32 noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %notif = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6
  %0 = ptrtoint ptr %notif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %notif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %key)
  %cmp = icmp ult i32 %1, %key
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %db = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body2
  %entry1.0.in = phi ptr [ %db, %do.body2 ], [ %entry1.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp12.not = icmp eq ptr %entry1.0, %db
  br i1 %cmp12.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %key14 = getelementptr inbounds %struct.notif_entry, ptr %entry1.0, i32 0, i32 2
  %3 = ptrtoint ptr %key14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key14, align 4
  %cmp15 = icmp eq i32 %4, %key
  br i1 %cmp15, label %if.then17, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %c = getelementptr inbounds %struct.notif_entry, ptr %entry1.0, i32 0, i32 1
  tail call void @complete(ptr noundef %c) #3
  br label %out

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  %bitmap = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bitmap, align 4
  tail call void @_set_bit(i32 noundef %key, ptr noundef %6) #3
  br label %out

out:                                              ; preds = %for.end, %if.then17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #3
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_notif_init(ptr noundef %optee, i32 noundef %max_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @optee_notif_init.__key, i16 noundef signext 3) #3
  %db = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %db to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %db, ptr %db, align 4
  %prev.i = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %db, ptr %prev.i, align 4
  %call2 = tail call ptr @bitmap_zalloc(i32 noundef %max_key, i32 noundef 3264) #3
  %bitmap = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %notif = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6
  %3 = ptrtoint ptr %notif to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %max_key, ptr %notif, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @optee_notif_uninit(ptr nocapture noundef readonly %optee) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  tail call void @bitmap_free(ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @optee_notif_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/tee/optee/notif.c", i32 111, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @init_completion.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../include/linux/completion.h", i32 87, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
