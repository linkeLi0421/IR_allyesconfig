; ModuleID = '/llk/IR_all_yes/drivers/connector/cn_queue.c_pt.bc'
source_filename = "../drivers/connector/cn_queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cn_callback_entry = type { %struct.list_head, %struct.refcount_struct, ptr, %struct.cn_callback_id, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cn_callback_id = type { [32 x i8], %struct.cb_id }
%struct.cb_id = type { i32, i32 }
%struct.cn_queue_dev = type { %struct.atomic_t, [32 x i8], %struct.list_head, %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@cn_queue_alloc_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->queue_lock\00", [47 x i8] zeroinitializer }, align 32
@cn_queue_free_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016Waiting for %s to become free: refcnt=%d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cn_queue_free_dev\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/connector/cn_queue.c\00", [35 x i8] zeroinitializer }, align 32
@cn_queue_free_dev._entry_ptr = internal global ptr @cn_queue_free_dev._entry, section ".printk_index", align 4
@cn_queue_alloc_callback_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Failed to create new callback queue.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cn_queue_alloc_callback_entry\00", [34 x i8] zeroinitializer }, align 32
@cn_queue_alloc_callback_entry._entry_ptr = internal global ptr @cn_queue_alloc_callback_entry._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 120, i32 41 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 123, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 140, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [32 x i8] c"../drivers/connector/cn_queue.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 30, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @cn_queue_alloc_callback_entry._entry, ptr @cn_queue_alloc_callback_entry._entry_ptr, ptr @cn_queue_free_dev._entry, ptr @cn_queue_free_dev._entry_ptr, ptr @.str, ptr @cn_queue_alloc_dev.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cn_queue_alloc_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cn_queue_free_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cn_queue_alloc_callback_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cn_queue_release_callback(ptr noundef %cbq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.cn_callback_entry, ptr %cbq, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !26
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !27

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !28
  %pdev = getelementptr inbounds %struct.cn_callback_entry, ptr %cbq, i32 0, i32 2
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %2, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %2, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #7, !srcloc !29
  tail call void @kfree(ptr noundef %cbq) #7
  br label %return

return:                                           ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cn_cb_equal(ptr nocapture noundef readonly %i1, ptr nocapture noundef readonly %i2) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i1, align 4
  %2 = ptrtoint ptr %i2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.cb_id, ptr %i1, i32 0, i32 1
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %val2 = getelementptr inbounds %struct.cb_id, ptr %i2, i32 0, i32 1
  %6 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3 = icmp eq i32 %5, %7
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cn_queue_add_callback(ptr noundef %dev, ptr noundef %name, ptr nocapture noundef readonly %id, ptr noundef %callback) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %cn_queue_alloc_callback_entry.exit.thread, label %if.end

cn_queue_alloc_callback_entry.exit.thread:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.cn_callback_entry, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  %1 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %refcnt.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dev, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %dev, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dev, ptr %dev, i32 1, ptr elementtype(i32) %dev) #7, !srcloc !30
  %pdev.i = getelementptr inbounds %struct.cn_callback_entry, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %pdev.i, align 4
  %id3.i = getelementptr inbounds %struct.cn_callback_entry, ptr %call7.i.i.i, i32 0, i32 3
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id3.i, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %name) #7
  %id7.i = getelementptr inbounds %struct.cn_callback_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %id, align 4
  %6 = ptrtoint ptr %id7.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %id7.i, align 8
  %callback8.i = getelementptr inbounds %struct.cn_callback_entry, ptr %call7.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %callback8.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %callback, ptr %callback8.i, align 8
  %queue_lock = getelementptr inbounds %struct.cn_queue_dev, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %queue_lock) #7
  %queue_list = getelementptr inbounds %struct.cn_queue_dev, ptr %dev, i32 0, i32 2
  %val2.i = getelementptr inbounds %struct.cb_id, ptr %id, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %cn_cb_equal.exit.for.cond_crit_edge, %if.end
  %__cbq.0.in = phi ptr [ %queue_list, %if.end ], [ %__cbq.0, %cn_cb_equal.exit.for.cond_crit_edge ]
  %8 = ptrtoint ptr %__cbq.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %__cbq.0 = load ptr, ptr %__cbq.0.in, align 4
  %cmp.not = icmp eq ptr %__cbq.0, %queue_list
  br i1 %cmp.not, label %if.then14.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %id3 = getelementptr inbounds %struct.cn_callback_entry, ptr %__cbq.0, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id3, align 4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i = icmp eq i32 %10, %12
  br i1 %cmp.i, label %land.rhs.i, label %for.body.cn_cb_equal.exit_crit_edge

for.body.cn_cb_equal.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cn_cb_equal.exit

land.rhs.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %val.i = getelementptr inbounds %struct.cn_callback_entry, ptr %__cbq.0, i32 0, i32 3, i32 1, i32 1
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %15 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp3.i = icmp eq i32 %14, %16
  %phi.cast.i = zext i1 %cmp3.i to i32
  br label %cn_cb_equal.exit

cn_cb_equal.exit:                                 ; preds = %land.rhs.i, %for.body.cn_cb_equal.exit_crit_edge
  %17 = phi i32 [ 0, %for.body.cn_cb_equal.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %tobool5.not = icmp eq i32 %17, 0
  br i1 %tobool5.not, label %cn_cb_equal.exit.for.cond_crit_edge, label %if.then20.critedge

cn_cb_equal.exit.for.cond_crit_edge:              ; preds = %cn_cb_equal.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then14.critedge:                               ; preds = %for.cond
  %prev.i = getelementptr inbounds %struct.cn_queue_dev, ptr %dev, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %19, ptr noundef %queue_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.critedge.list_add_tail.exit_crit_edge

if.then14.critedge.list_add_tail.exit_crit_edge:  ; preds = %if.then14.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then14.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i, ptr %prev.i, align 4
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %queue_list, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i.i, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then14.critedge.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock) #7
  %seq = getelementptr inbounds %struct.cn_callback_entry, ptr %call7.i.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %seq, align 4
  %25 = ptrtoint ptr %id7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id7.i, align 8
  %group = getelementptr inbounds %struct.cn_callback_entry, ptr %call7.i.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %group, align 8
  br label %cleanup

if.then20.critedge:                               ; preds = %cn_cb_equal.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock) #7
  tail call void @cn_queue_release_callback(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then20.critedge, %list_add_tail.exit, %cn_queue_alloc_callback_entry.exit.thread
  %retval.0 = phi i32 [ -22, %if.then20.critedge ], [ 0, %list_add_tail.exit ], [ -12, %cn_queue_alloc_callback_entry.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cn_queue_del_callback(ptr noundef %dev, ptr nocapture noundef readonly %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_lock = getelementptr inbounds %struct.cn_queue_dev, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %queue_lock) #7
  %queue_list = getelementptr inbounds %struct.cn_queue_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %queue_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue_list, align 4
  %val2.i = getelementptr inbounds %struct.cb_id, ptr %id, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %cn_cb_equal.exit.for.cond_crit_edge, %entry
  %cbq.0 = phi ptr [ %1, %entry ], [ %n.0, %cn_cb_equal.exit.for.cond_crit_edge ]
  %2 = ptrtoint ptr %cbq.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %cbq.0, align 4
  %cmp.not = icmp eq ptr %cbq.0, %queue_list
  br i1 %cmp.not, label %if.end18.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %id8 = getelementptr inbounds %struct.cn_callback_entry, ptr %cbq.0, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id8, align 4
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp eq i32 %4, %6
  br i1 %cmp.i, label %land.rhs.i, label %for.body.cn_cb_equal.exit_crit_edge

for.body.cn_cb_equal.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cn_cb_equal.exit

land.rhs.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %val.i = getelementptr inbounds %struct.cn_callback_entry, ptr %cbq.0, i32 0, i32 3, i32 1, i32 1
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %9 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp3.i = icmp eq i32 %8, %10
  %phi.cast.i = zext i1 %cmp3.i to i32
  br label %cn_cb_equal.exit

cn_cb_equal.exit:                                 ; preds = %land.rhs.i, %for.body.cn_cb_equal.exit_crit_edge
  %11 = phi i32 [ 0, %for.body.cn_cb_equal.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %cn_cb_equal.exit.for.cond_crit_edge, label %if.then

cn_cb_equal.exit.for.cond_crit_edge:              ; preds = %cn_cb_equal.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then:                                          ; preds = %cn_cb_equal.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cbq.0) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cbq.0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %cbq.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cbq.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %18 = ptrtoint ptr %cbq.0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %cbq.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cbq.0, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock) #7
  tail call void @cn_queue_release_callback(ptr noundef %cbq.0)
  br label %if.end18

if.end18.critedge:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock) #7
  br label %if.end18

if.end18:                                         ; preds = %if.end18.critedge, %list_del.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cn_queue_alloc_dev(ptr noundef %name, ptr noundef %nls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 92) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name1 = getelementptr inbounds %struct.cn_queue_dev, ptr %call7.i.i, i32 0, i32 1
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %name)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %call7.i.i, align 8
  %queue_list = getelementptr inbounds %struct.cn_queue_dev, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %queue_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue_list, ptr %queue_list, align 4
  %prev.i = getelementptr inbounds %struct.cn_queue_dev, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue_list, ptr %prev.i, align 8
  %queue_lock = getelementptr inbounds %struct.cn_queue_dev, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %queue_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @cn_queue_alloc_dev.__key, i16 noundef signext 3) #7
  %nls4 = getelementptr inbounds %struct.cn_queue_dev, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %nls4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %nls, ptr %nls4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cn_queue_free_dev(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_lock = getelementptr inbounds %struct.cn_queue_dev, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %queue_lock) #7
  %queue_list = getelementptr inbounds %struct.cn_queue_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %queue_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue_list, align 4
  %cmp.not30 = icmp eq ptr %1, %queue_list
  br i1 %cmp.not30, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %cbq.031 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %cbq.031 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %cbq.031, align 4
  %call.i.i29 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cbq.031) #7
  br i1 %call.i.i29, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cbq.031, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %cbq.031 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cbq.031, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %cbq.031 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %cbq.031, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cbq.031, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %n.0, %queue_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock) #7
  %call.i.i33 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dev, i32 noundef 4) #7
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not34 = icmp eq i32 %12, 0
  br i1 %tobool.not34, label %for.end.while.end_crit_edge, label %do.end.lr.ph

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end.lr.ph:                                     ; preds = %for.end
  %name = getelementptr inbounds %struct.cn_queue_dev, ptr %dev, i32 0, i32 1
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.end.lr.ph
  %call.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dev, i32 noundef 4) #7
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dev, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %14) #11
  tail call void @msleep(i32 noundef 1000) #7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dev, i32 noundef 4) #7
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dev, align 4
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %for.end.while.end_crit_edge
  tail call void @kfree(ptr noundef %dev) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/connector/cn_queue.c", i32 120, i32 41}
!2 = !{ptr @cn_queue_alloc_dev.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/connector/cn_queue.c", i32 123, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/connector/cn_queue.c", i32 140, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cn_queue_free_dev._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @cn_queue_free_dev._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/connector/cn_queue.c", i32 30, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cn_queue_alloc_callback_entry._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @cn_queue_alloc_callback_entry._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2148300583}
!26 = !{i64 2148215047, i64 2148215079, i64 2148215108, i64 2148215142, i64 2148215173, i64 2148215196}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2149307031}
!29 = !{i64 2148213517, i64 2148213543, i64 2148213572, i64 2148213606, i64 2148213637, i64 2148213660}
!30 = !{i64 2148211052, i64 2148211078, i64 2148211107, i64 2148211141, i64 2148211172, i64 2148211195}
