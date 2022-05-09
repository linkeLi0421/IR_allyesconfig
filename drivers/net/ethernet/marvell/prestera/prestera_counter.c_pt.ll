; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/prestera/prestera_counter.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/prestera/prestera_counter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.prestera_counter = type { ptr, %struct.delayed_work, %struct.mutex, ptr, i32, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.prestera_counter_block = type { %struct.list_head, i32, i32, i32, i32, %struct.idr, %struct.refcount_struct, %struct.mutex, ptr, ptr, i8, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.prestera_counter_stats = type { i64, i64 }
%struct.prestera_switch = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, ptr, [6 x i8], %struct.list_head, %struct.rwlock_t, i32, i32, i32, i8, ptr, ptr, ptr, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@prestera_counter_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&counter->mtx\00", [18 x i8] zeroinitializer }, align 32
@prestera_counter_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&counter->stats_dw)->work)\00", [49 x i8] zeroinitializer }, align 32
@prestera_counter_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&counter->stats_dw)->timer\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/marvell/prestera/prestera_counter.c\00", [39 x i8] zeroinitializer }, align 32
@prestera_counter_block_get.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&block->mtx\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 451, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 456, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 470, i32 3 }
@___asan_gen_.33 = private constant [60 x i8] c"../drivers/net/ethernet/marvell/prestera/prestera_counter.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 176, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 378, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @prestera_counter_init.__key, ptr @.str, ptr @prestera_counter_init.__key.1, ptr @.str.2, ptr @prestera_counter_init.__key.3, ptr @.str.4, ptr @.str.5, ptr @prestera_counter_block_get.__key, ptr @.str.6, ptr @xa_init_flags.__key, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_counter_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_counter_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_counter_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prestera_counter_block_get.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_counter_get(ptr noundef %counter, i32 noundef %client, ptr nocapture noundef writeonly %bl, ptr nocapture noundef writeonly %counter_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtx.i.i.i = getelementptr inbounds %struct.prestera_counter, ptr %counter, i32 0, i32 2
  %block_list_len.i.i = getelementptr inbounds %struct.prestera_counter, ptr %counter, i32 0, i32 5
  %block_list.i.i = getelementptr inbounds %struct.prestera_counter, ptr %counter, i32 0, i32 3
  br label %get_next_block

get_next_block:                                   ; preds = %if.then4.get_next_block_crit_edge, %entry
  tail call void @mutex_lock_nested(ptr noundef %mtx.i.i.i, i32 noundef 0) #8
  %0 = ptrtoint ptr %block_list_len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_list_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp31.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp31.not.i.i, label %get_next_block.prestera_counter_block_lookup_not_full.exit.thread.i_crit_edge, label %get_next_block.for.body.i.i_crit_edge

get_next_block.for.body.i.i_crit_edge:            ; preds = %get_next_block
  br label %for.body.i.i

get_next_block.prestera_counter_block_lookup_not_full.exit.thread.i_crit_edge: ; preds = %get_next_block
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_counter_block_lookup_not_full.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %get_next_block.for.body.i.i_crit_edge
  %i.032.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %get_next_block.for.body.i.i_crit_edge ]
  %2 = ptrtoint ptr %block_list.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block_list.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %3, i32 %i.032.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %client3.i.i = getelementptr inbounds %struct.prestera_counter_block, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %client3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %client3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %client)
  %cmp4.i.i = icmp eq i32 %7, %client
  br i1 %cmp4.i.i, label %land.lhs.true5.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %full.i.i = getelementptr inbounds %struct.prestera_counter_block, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %full.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %full.i.i, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true9.i.i, label %land.lhs.true5.i.i.for.inc.i.i_crit_edge

land.lhs.true5.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true5.i.i
  %call.i.i = tail call fastcc zeroext i1 @prestera_counter_block_incref(ptr noundef nonnull %5) #8
  br i1 %call.i.i, label %prestera_counter_block_lookup_not_full.exit.i, label %land.lhs.true9.i.i.for.inc.i.i_crit_edge

land.lhs.true9.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true9.i.i.for.inc.i.i_crit_edge, %land.lhs.true5.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.032.i.i, 1
  %10 = ptrtoint ptr %block_list_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %block_list_len.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %11
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.prestera_counter_block_lookup_not_full.exit.thread.i_crit_edge

for.inc.i.i.prestera_counter_block_lookup_not_full.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_counter_block_lookup_not_full.exit.thread.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

prestera_counter_block_lookup_not_full.exit.thread.i: ; preds = %for.inc.i.i.prestera_counter_block_lookup_not_full.exit.thread.i_crit_edge, %get_next_block.prestera_counter_block_lookup_not_full.exit.thread.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx.i.i.i) #8
  br label %if.end.i

prestera_counter_block_lookup_not_full.exit.i:    ; preds = %land.lhs.true9.i.i
  tail call void @mutex_unlock(ptr noundef %mtx.i.i.i) #8
  %12 = ptrtoint ptr %block_list.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %block_list.i.i, align 4
  %arrayidx13.i.i = getelementptr ptr, ptr %13, i32 %i.032.i.i
  %14 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx13.i.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %prestera_counter_block_lookup_not_full.exit.i.if.end.i_crit_edge, label %prestera_counter_block_lookup_not_full.exit.i.prestera_counter_block_get.exit_crit_edge

prestera_counter_block_lookup_not_full.exit.i.prestera_counter_block_get.exit_crit_edge: ; preds = %prestera_counter_block_lookup_not_full.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_counter_block_get.exit

prestera_counter_block_lookup_not_full.exit.i.if.end.i_crit_edge: ; preds = %prestera_counter_block_lookup_not_full.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %prestera_counter_block_lookup_not_full.exit.i.if.end.i_crit_edge, %prestera_counter_block_lookup_not_full.exit.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 192) #11
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.then_crit_edge, label %if.end5.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end5.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %counter, align 4
  %id.i = getelementptr inbounds %struct.prestera_counter_block, ptr %call7.i.i.i, i32 0, i32 1
  %offset.i = getelementptr inbounds %struct.prestera_counter_block, ptr %call7.i.i.i, i32 0, i32 2
  %num_counters.i = getelementptr inbounds %struct.prestera_counter_block, ptr %call7.i.i.i, i32 0, i32 3
  %call6.i = tail call i32 @prestera_hw_counter_block_get(ptr noundef %18, i32 noundef %client, ptr noundef %id.i, ptr noundef %offset.i, ptr noundef %num_counters.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.err_block.i_crit_edge

if.end5.i.err_block.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_block.i

if.end9.i:                                        ; preds = %if.end5.i
  %19 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_counters.i, align 8
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 16) #8
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !26

kcalloc.exit.thread.i:                            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %stats116.i = getelementptr inbounds %struct.prestera_counter_block, ptr %call7.i.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %stats116.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %stats116.i, align 4
  br label %err_stats.i

if.end7.i.i.i:                                    ; preds = %if.end9.i
  %24 = extractvalue { i32, i1 } %21, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #12
  %stats.i = getelementptr inbounds %struct.prestera_counter_block, ptr %call7.i.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %stats.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i.i, ptr %stats.i, align 4
  %tobool13.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool13.not.i, label %if.end7.i.i.i.err_stats.i_crit_edge, label %if.end7.i.i98.i

if.end7.i.i.i.err_stats.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_stats.i

if.end7.i.i98.i:                                  ; preds = %if.end7.i.i.i
  %26 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_counters.i, align 8
  %call8.i.i97.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #12
  %counter_flag.i = getelementptr inbounds %struct.prestera_counter_block, ptr %call7.i.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %counter_flag.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call8.i.i97.i, ptr %counter_flag.i, align 8
  %tobool19.not.i = icmp eq ptr %call8.i.i97.i, null
  br i1 %tobool19.not.i, label %if.end7.i.i98.i.err_flag.i_crit_edge, label %if.end21.i

if.end7.i.i98.i.err_flag.i_crit_edge:             ; preds = %if.end7.i.i98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_flag.i

if.end21.i:                                       ; preds = %if.end7.i.i98.i
  %client22.i = getelementptr inbounds %struct.prestera_counter_block, ptr %call7.i.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %client22.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %client, ptr %client22.i, align 4
  %mtx.i = getelementptr inbounds %struct.prestera_counter_block, ptr %call7.i.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %mtx.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @prestera_counter_block_get.__key) #8
  %refcnt.i = getelementptr inbounds %struct.prestera_counter_block, ptr %call7.i.i.i, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  %30 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 1, ptr %refcnt.i, align 4
  %counter_idr.i = getelementptr inbounds %struct.prestera_counter_block, ptr %call7.i.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %counter_idr.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i.i.i = getelementptr inbounds %struct.prestera_counter_block, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 1
  %33 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.prestera_counter_block, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 2
  %34 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %xa_head.i.i.i, align 8
  %idr_base.i.i = getelementptr inbounds %struct.prestera_counter_block, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.prestera_counter_block, ptr %call7.i.i.i, i32 0, i32 5, i32 2
  %36 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %idr_next.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %mtx.i.i.i, i32 noundef 0) #8
  %37 = ptrtoint ptr %block_list_len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %block_list_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp38.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp38.not.i.i, label %if.end21.i.for.end.i111.i_crit_edge, label %for.body.lr.ph.i104.i

if.end21.i.for.end.i111.i_crit_edge:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i111.i

for.body.lr.ph.i104.i:                            ; preds = %if.end21.i
  %39 = ptrtoint ptr %block_list.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %block_list.i.i, align 4
  br label %for.body.i107.i

for.body.i107.i:                                  ; preds = %for.inc.i109.i.for.body.i107.i_crit_edge, %for.body.lr.ph.i104.i
  %i.039.i.i = phi i32 [ 0, %for.body.lr.ph.i104.i ], [ %inc.i108.i, %for.inc.i109.i.for.body.i107.i_crit_edge ]
  %arrayidx.i105.i = getelementptr ptr, ptr %40, i32 %i.039.i.i
  %41 = ptrtoint ptr %arrayidx.i105.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i105.i, align 4
  %tobool.not.i106.i = icmp eq ptr %42, null
  br i1 %tobool.not.i106.i, label %if.end.i.i, label %for.inc.i109.i

if.end.i.i:                                       ; preds = %for.body.i107.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i105.i.le = getelementptr ptr, ptr %40, i32 %i.039.i.i
  %43 = ptrtoint ptr %arrayidx.i105.i.le to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i, ptr %arrayidx.i105.i.le, align 4
  br label %prestera_counter_block_list_add.exit.thread.i

for.inc.i109.i:                                   ; preds = %for.body.i107.i
  %inc.i108.i = add nuw i32 %i.039.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i108.i, %38
  br i1 %exitcond.not.i.i, label %for.inc.i109.i.for.end.i111.i_crit_edge, label %for.inc.i109.i.for.body.i107.i_crit_edge

for.inc.i109.i.for.body.i107.i_crit_edge:         ; preds = %for.inc.i109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i107.i

for.inc.i109.i.for.end.i111.i_crit_edge:          ; preds = %for.inc.i109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i111.i

for.end.i111.i:                                   ; preds = %for.inc.i109.i.for.end.i111.i_crit_edge, %if.end21.i.for.end.i111.i_crit_edge
  %44 = ptrtoint ptr %block_list.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %block_list.i.i, align 4
  %add.i.i = shl i32 %38, 2
  %mul.i.i = add i32 %add.i.i, 4
  %call.i110.i = tail call noalias ptr @krealloc(ptr noundef %45, i32 noundef %mul.i.i, i32 noundef 3264) #13
  %tobool5.not.i.i = icmp eq ptr %call.i110.i, null
  br i1 %tobool5.not.i.i, label %err_list_add.i, label %if.end7.i.i

if.end7.i.i:                                      ; preds = %for.end.i111.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %block_list.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i110.i, ptr %block_list.i.i, align 4
  %47 = ptrtoint ptr %block_list_len.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %block_list_len.i.i, align 4
  %arrayidx11.i.i = getelementptr ptr, ptr %call.i110.i, i32 %48
  %49 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i.i, ptr %arrayidx11.i.i, align 4
  %inc13.i.i = add i32 %48, 1
  store i32 %inc13.i.i, ptr %block_list_len.i.i, align 4
  br label %prestera_counter_block_list_add.exit.thread.i

prestera_counter_block_list_add.exit.thread.i:    ; preds = %if.end7.i.i, %if.end.i.i
  tail call void @mutex_unlock(ptr noundef %mtx.i.i.i) #8
  br label %prestera_counter_block_get.exit

err_list_add.i:                                   ; preds = %for.end.i111.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mtx.i.i.i) #8
  tail call void @idr_destroy(ptr noundef %counter_idr.i) #8
  tail call void @mutex_destroy(ptr noundef %mtx.i) #8
  %50 = ptrtoint ptr %counter_flag.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %counter_flag.i, align 8
  tail call void @kfree(ptr noundef %51) #8
  br label %err_flag.i

err_flag.i:                                       ; preds = %err_list_add.i, %if.end7.i.i98.i.err_flag.i_crit_edge
  %52 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stats.i, align 4
  tail call void @kfree(ptr noundef %53) #8
  br label %err_stats.i

err_stats.i:                                      ; preds = %err_flag.i, %if.end7.i.i.i.err_stats.i_crit_edge, %kcalloc.exit.thread.i
  %54 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %counter, align 4
  %56 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id.i, align 8
  %call34.i = tail call i32 @prestera_hw_counter_block_release(ptr noundef %55, i32 noundef %57) #8
  br label %err_block.i

err_block.i:                                      ; preds = %err_stats.i, %if.end5.i.err_block.i_crit_edge
  %err.2.i = phi i32 [ %call6.i, %if.end5.i.err_block.i_crit_edge ], [ -12, %err_stats.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  %58 = inttoptr i32 %err.2.i to ptr
  br label %prestera_counter_block_get.exit

prestera_counter_block_get.exit:                  ; preds = %err_block.i, %prestera_counter_block_list_add.exit.thread.i, %prestera_counter_block_lookup_not_full.exit.i.prestera_counter_block_get.exit_crit_edge
  %retval.0.i = phi ptr [ %58, %err_block.i ], [ %15, %prestera_counter_block_lookup_not_full.exit.i.prestera_counter_block_get.exit_crit_edge ], [ %call7.i.i.i, %prestera_counter_block_list_add.exit.thread.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %prestera_counter_block_get.exit.if.then_crit_edge, label %if.end

prestera_counter_block_get.exit.if.then_crit_edge: ; preds = %prestera_counter_block_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %prestera_counter_block_get.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %retval.0.i37 = phi ptr [ %retval.0.i, %prestera_counter_block_get.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ]
  %59 = ptrtoint ptr %retval.0.i37 to i32
  br label %cleanup

if.end:                                           ; preds = %prestera_counter_block_get.exit
  %full.i = getelementptr inbounds %struct.prestera_counter_block, ptr %retval.0.i, i32 0, i32 11
  %60 = ptrtoint ptr %full.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %full.i, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i25 = icmp eq i8 %61, 0
  br i1 %tobool.not.i25, label %if.end.i30, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end.i30:                                       ; preds = %if.end
  %mtx.i.i = getelementptr inbounds %struct.prestera_counter_block, ptr %retval.0.i, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i.i, i32 noundef 0) #8
  %counter_idr.i26 = getelementptr inbounds %struct.prestera_counter_block, ptr %retval.0.i, i32 0, i32 5
  %offset.i27 = getelementptr inbounds %struct.prestera_counter_block, ptr %retval.0.i, i32 0, i32 2
  %62 = ptrtoint ptr %offset.i27 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset.i27, align 4
  %num_counters.i28 = getelementptr inbounds %struct.prestera_counter_block, ptr %retval.0.i, i32 0, i32 3
  %64 = ptrtoint ptr %num_counters.i28 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_counters.i28, align 4
  %add.i = add i32 %65, %63
  %call.i = tail call i32 @idr_alloc_cyclic(ptr noundef %counter_idr.i26, ptr noundef null, i32 noundef %63, i32 noundef %add.i, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i29 = icmp slt i32 %call.i, 0
  br i1 %cmp.i29, label %if.then2.i, label %if.end7

if.then2.i:                                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, -28
  br i1 %cmp3.i, label %if.then4.i, label %if.then2.i.prestera_counter_get_vacant.exit.thread43_crit_edge

if.then2.i.prestera_counter_get_vacant.exit.thread43_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prestera_counter_get_vacant.exit.thread43

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %full.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %full.i, align 1
  br label %prestera_counter_get_vacant.exit.thread43

prestera_counter_get_vacant.exit.thread43:        ; preds = %if.then4.i, %if.then2.i.prestera_counter_get_vacant.exit.thread43_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx.i.i) #8
  br label %if.then4

if.then4:                                         ; preds = %prestera_counter_get_vacant.exit.thread43, %if.end.if.then4_crit_edge
  %retval.0.i3142 = phi i32 [ %call.i, %prestera_counter_get_vacant.exit.thread43 ], [ -28, %if.end.if.then4_crit_edge ]
  tail call fastcc void @prestera_counter_block_put(ptr noundef %counter, ptr noundef %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i3142, -28
  br i1 %cmp, label %if.then4.get_next_block_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4.get_next_block_crit_edge:                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_next_block

if.end7:                                          ; preds = %if.end.i30
  tail call void @mutex_unlock(ptr noundef %mtx.i.i) #8
  tail call void @mutex_lock_nested(ptr noundef %mtx.i.i, i32 noundef 0) #8
  %is_updating = getelementptr inbounds %struct.prestera_counter_block, ptr %retval.0.i, i32 0, i32 10
  %67 = ptrtoint ptr %is_updating to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_updating, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool8.not = icmp eq i8 %68, 0
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %offset.i27.le = getelementptr inbounds %struct.prestera_counter_block, ptr %retval.0.i, i32 0, i32 2
  %counter_flag = getelementptr inbounds %struct.prestera_counter_block, ptr %retval.0.i, i32 0, i32 9
  %69 = ptrtoint ptr %counter_flag to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %counter_flag, align 4
  %71 = ptrtoint ptr %offset.i27.le to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %offset.i27.le, align 4
  %sub = sub i32 %call.i, %72
  %arrayidx = getelementptr i8, ptr %70, i32 %sub
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %arrayidx, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx.i.i) #8
  %74 = ptrtoint ptr %counter_id to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call.i, ptr %counter_id, align 4
  %75 = ptrtoint ptr %bl to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %retval.0.i, ptr %bl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %59, %if.then ], [ 0, %if.end10 ], [ %retval.0.i3142, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prestera_counter_block_put(ptr noundef %counter, ptr noundef %block) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt.i = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !29

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !30
  %mtx.i = getelementptr inbounds %struct.prestera_counter, ptr %counter, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #8
  %block_list_len = getelementptr inbounds %struct.prestera_counter, ptr %counter, i32 0, i32 5
  %1 = ptrtoint ptr %block_list_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %block_list_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp54.not = icmp eq i32 %2, 0
  br i1 %cmp54.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %block_list = getelementptr inbounds %struct.prestera_counter, ptr %counter, i32 0, i32 3
  %3 = ptrtoint ptr %block_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %block_list, align 4
  %id3 = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %4, i32 %i.055
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %id = getelementptr inbounds %struct.prestera_counter_block, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %9 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp4 = icmp eq i32 %8, %10
  br i1 %cmp4, label %if.then5, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.le = getelementptr ptr, ptr %4, i32 %i.055
  %11 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.le, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then5, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx.i) #8
  %counter_idr = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 5
  %xa_head.i.i = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 5, i32 0, i32 2
  %12 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xa_head.i.i, align 4
  %cmp.i.i = icmp eq ptr %13, null
  br i1 %cmp.i.i, label %idr_is_empty.exit, label %for.end.do.end_crit_edge, !prof !31

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

idr_is_empty.exit:                                ; preds = %for.end
  %call2.i = tail call i32 @radix_tree_tagged(ptr noundef %counter_idr, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.i.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.i.not, label %idr_is_empty.exit.do.end_crit_edge, label %idr_is_empty.exit.if.end25_crit_edge, !prof !26

idr_is_empty.exit.if.end25_crit_edge:             ; preds = %idr_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

idr_is_empty.exit.do.end_crit_edge:               ; preds = %idr_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %idr_is_empty.exit.do.end_crit_edge, %for.end.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 217, i32 noundef 9, ptr noundef null) #8
  br label %if.end25

if.end25:                                         ; preds = %do.end, %idr_is_empty.exit.if.end25_crit_edge
  %14 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %counter, align 4
  %id32 = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 1
  %16 = ptrtoint ptr %id32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id32, align 4
  %call33 = tail call i32 @prestera_hw_counter_block_release(ptr noundef %15, i32 noundef %17) #8
  tail call void @idr_destroy(ptr noundef %counter_idr) #8
  %mtx = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 7
  tail call void @mutex_destroy(ptr noundef %mtx) #8
  %stats = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 8
  %18 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stats, align 4
  tail call void @kfree(ptr noundef %19) #8
  tail call void @kfree(ptr noundef %block) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_counter_put(ptr noundef %counter, ptr noundef %block, i32 noundef %counter_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %block, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mtx.i = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #8
  %counter_idr = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 5
  %call = tail call ptr @idr_remove(ptr noundef %counter_idr, i32 noundef %counter_id) #8
  %full = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 11
  %0 = ptrtoint ptr %full to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %full, align 1
  %stats.i = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 8
  %1 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stats.i, align 4
  %offset.i = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 2
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %counter_id, %4
  %arrayidx.i = getelementptr %struct.prestera_counter_stats, ptr %2, i32 %sub.i
  %5 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 16)
  tail call void @mutex_unlock(ptr noundef %mtx.i) #8
  %6 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %counter, align 4
  %id = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %call1 = tail call i32 @prestera_hw_counter_clear(ptr noundef %7, i32 noundef %9, i32 noundef %counter_id) #8
  tail call fastcc void @prestera_counter_block_put(ptr noundef %counter, ptr noundef nonnull %block)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_counter_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_counter_stats_get(ptr nocapture noundef readnone %counter, ptr noundef %block, i32 noundef %counter_id, ptr nocapture noundef writeonly %packets, ptr nocapture noundef writeonly %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %block, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %counter_flag.i = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 9
  %0 = ptrtoint ptr %counter_flag.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counter_flag.i, align 4
  %offset.i = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 2
  %2 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %counter_id, %3
  %arrayidx.i = getelementptr i8, ptr %1, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %6 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %packets, align 8
  %7 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %bytes, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %mtx.i = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #8
  %stats = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 8
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats, align 4
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  %sub = sub i32 %counter_id, %11
  %arrayidx = getelementptr %struct.prestera_counter_stats, ptr %9, i32 %sub
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx, align 8
  %14 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %packets, align 8
  %15 = load ptr, ptr %stats, align 4
  %16 = load i32, ptr %offset.i, align 4
  %sub4 = sub i32 %counter_id, %16
  %bytes6 = getelementptr %struct.prestera_counter_stats, ptr %15, i32 %sub4, i32 1
  %17 = ptrtoint ptr %bytes6 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %bytes6, align 8
  %19 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %bytes, align 8
  %20 = load ptr, ptr %stats, align 4
  %21 = load i32, ptr %offset.i, align 4
  %sub.i21 = sub i32 %counter_id, %21
  %arrayidx.i22 = getelementptr %struct.prestera_counter_stats, ptr %20, i32 %sub.i21
  %22 = call ptr @memset(ptr %arrayidx.i22, i32 0, i32 16)
  tail call void @mutex_unlock(ptr noundef %mtx.i) #8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_counter_init(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i46 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4) #11
  %block_list = getelementptr inbounds %struct.prestera_counter, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %block_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i46, ptr %block_list, align 4
  %tobool3.not = icmp eq ptr %call7.i.i46, null
  br i1 %tobool3.not, label %if.then4, label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mtx = getelementptr inbounds %struct.prestera_counter, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mtx, ptr noundef nonnull @.str, ptr noundef nonnull @prestera_counter_init.__key) #8
  %block_list_len = getelementptr inbounds %struct.prestera_counter, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %block_list_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %block_list_len, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sw, ptr %call7.i.i, align 8
  %counter7 = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 17
  %5 = ptrtoint ptr %counter7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %counter7, align 4
  %stats_dw = getelementptr inbounds %struct.prestera_counter, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %stats_dw, i32 noundef 0) #8
  %6 = ptrtoint ptr %stats_dw to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %stats_dw, align 4
  %lockdep_map = getelementptr inbounds %struct.prestera_counter, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @prestera_counter_init.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry17 = getelementptr inbounds %struct.prestera_counter, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry17, ptr %entry17, align 8
  %prev.i = getelementptr inbounds %struct.prestera_counter, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.prestera_counter, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @prestera_counter_stats_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.prestera_counter, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @prestera_counter_init.__key.3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %stats_dw, i32 noundef 100) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prestera_counter_stats_work(ptr noundef %work) #0 align 64 {
entry:
  %count = alloca i32, align 4
  %done = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #8
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 256, ptr %count, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %done) #8
  %1 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %done, align 1
  %curr_idx = getelementptr i8, ptr %work, i32 204
  %2 = ptrtoint ptr %curr_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_idx, align 4
  %block_list_len.i = getelementptr i8, ptr %work, i32 200
  %4 = ptrtoint ptr %block_list_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_list_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i = icmp ugt i32 %5, %3
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i:                                         ; preds = %entry
  %mtx.i.i = getelementptr i8, ptr %work, i32 100
  tail call void @mutex_lock_nested(ptr noundef %mtx.i.i, i32 noundef 0) #8
  %block_list.i = getelementptr i8, ptr %work, i32 192
  %6 = ptrtoint ptr %block_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %block_list.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.if.then3.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call.i = tail call fastcc zeroext i1 @prestera_counter_block_incref(ptr noundef nonnull %9) #8
  br i1 %call.i, label %prestera_counter_block_get_by_idx.exit, label %lor.lhs.false.i.if.then3.i_crit_edge

lor.lhs.false.i.if.then3.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.then3.i:                                       ; preds = %lor.lhs.false.i.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx.i.i) #8
  br label %if.then

prestera_counter_block_get_by_idx.exit:           ; preds = %lor.lhs.false.i
  tail call void @mutex_unlock(ptr noundef %mtx.i.i) #8
  %10 = ptrtoint ptr %block_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block_list.i, align 4
  %arrayidx6.i = getelementptr ptr, ptr %11, i32 %3
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6.i, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %prestera_counter_block_get_by_idx.exit.if.then_crit_edge, label %if.end7

prestera_counter_block_get_by_idx.exit.if.then_crit_edge: ; preds = %prestera_counter_block_get_by_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %prestera_counter_block_get_by_idx.exit.if.then_crit_edge, %if.then3.i, %entry.if.then_crit_edge
  %is_fetching = getelementptr i8, ptr %work, i32 208
  %14 = ptrtoint ptr %is_fetching to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_fetching, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %if.then.next_crit_edge, label %if.then.abort_crit_edge

if.then.abort_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.then.next_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %next

if.end7:                                          ; preds = %prestera_counter_block_get_by_idx.exit
  %is_fetching8 = getelementptr i8, ptr %work, i32 208
  %16 = ptrtoint ptr %is_fetching8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_fetching8, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  br i1 %tobool9.not, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end7
  %18 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr3, align 4
  %id = getelementptr inbounds %struct.prestera_counter_block, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %call11 = tail call i32 @prestera_hw_counter_trigger(ptr noundef %19, i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then10.abort_crit_edge

if.then10.abort_crit_edge:                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %mtx.i = getelementptr inbounds %struct.prestera_counter_block, ptr %13, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #8
  %is_updating = getelementptr inbounds %struct.prestera_counter_block, ptr %13, i32 0, i32 10
  %22 = ptrtoint ptr %is_updating to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %is_updating, align 4
  tail call void @mutex_unlock(ptr noundef %mtx.i) #8
  %23 = ptrtoint ptr %is_fetching8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %is_fetching8, align 4
  %total_read = getelementptr i8, ptr %work, i32 196
  %24 = ptrtoint ptr %total_read to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %total_read, align 4
  br label %if.then50

if.end17:                                         ; preds = %if.end7
  %mtx.i96 = getelementptr inbounds %struct.prestera_counter_block, ptr %13, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i96, i32 noundef 0) #8
  %25 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr3, align 4
  %total_read19 = getelementptr i8, ptr %work, i32 196
  %27 = ptrtoint ptr %total_read19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %total_read19, align 4
  %stats = getelementptr inbounds %struct.prestera_counter_block, ptr %13, i32 0, i32 8
  %29 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stats, align 4
  %arrayidx = getelementptr %struct.prestera_counter_stats, ptr %30, i32 %28
  %call21 = call i32 @prestera_hw_counters_get(ptr noundef %26, i32 noundef %28, ptr noundef nonnull %count, ptr noundef nonnull %done, ptr noundef %arrayidx) #8
  call void @mutex_unlock(ptr noundef %mtx.i96) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end17.abort_crit_edge

if.end17.abort_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end24:                                         ; preds = %if.end17
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count, align 4
  %33 = ptrtoint ptr %total_read19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %total_read19, align 4
  %add = add i32 %34, %32
  store i32 %add, ptr %total_read19, align 4
  %35 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %done, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool26.not = icmp eq i8 %36, 0
  br i1 %tobool26.not, label %if.end24.if.then50_crit_edge, label %lor.lhs.false

if.end24.if.then50_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

lor.lhs.false:                                    ; preds = %if.end24
  %num_counters = getelementptr inbounds %struct.prestera_counter_block, ptr %13, i32 0, i32 3
  %37 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_counters, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %38)
  %cmp = icmp ult i32 %add, %38
  br i1 %cmp, label %lor.lhs.false.if.then50_crit_edge, label %for.cond.preheader

lor.lhs.false.if.then50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

for.cond.preheader:                               ; preds = %lor.lhs.false
  %39 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_counters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp32124.not = icmp eq i32 %40, 0
  br i1 %cmp32124.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %counter_flag = getelementptr inbounds %struct.prestera_counter_block, ptr %13, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %41 = ptrtoint ptr %counter_flag to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %counter_flag, align 4
  %arrayidx33 = getelementptr i8, ptr %42, i32 %i.0125
  %43 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp34 = icmp eq i8 %44, 1
  br i1 %cmp34, label %if.then36, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_lock_nested(ptr noundef %mtx.i96, i32 noundef 0) #8
  %45 = ptrtoint ptr %counter_flag to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %counter_flag, align 4
  %arrayidx38 = getelementptr i8, ptr %46, i32 %i.0125
  %47 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx38, align 1
  %48 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %stats, align 4
  %arrayidx40 = getelementptr %struct.prestera_counter_stats, ptr %49, i32 %i.0125
  %50 = call ptr @memset(ptr %arrayidx40, i32 0, i32 16)
  call void @mutex_unlock(ptr noundef %mtx.i96) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0125, 1
  %51 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_counters, align 4
  %cmp32 = icmp ult i32 %inc, %52
  br i1 %cmp32, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @mutex_lock_nested(ptr noundef %mtx.i96, i32 noundef 0) #8
  %is_updating42 = getelementptr inbounds %struct.prestera_counter_block, ptr %13, i32 0, i32 10
  %53 = ptrtoint ptr %is_updating42 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %is_updating42, align 4
  call void @mutex_unlock(ptr noundef %mtx.i96) #8
  br label %next

abort:                                            ; preds = %if.end17.abort_crit_edge, %if.then10.abort_crit_edge, %if.then.abort_crit_edge
  %tobool.not116 = phi i1 [ false, %if.end17.abort_crit_edge ], [ false, %if.then10.abort_crit_edge ], [ true, %if.then.abort_crit_edge ]
  %retval.0.i112 = phi ptr [ %13, %if.end17.abort_crit_edge ], [ %13, %if.then10.abort_crit_edge ], [ null, %if.then.abort_crit_edge ]
  %54 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr3, align 4
  %call44 = call i32 @prestera_hw_counter_abort(ptr noundef %55) #8
  br label %next

next:                                             ; preds = %abort, %for.end, %if.then.next_crit_edge
  %tobool.not115 = phi i1 [ true, %if.then.next_crit_edge ], [ %tobool.not116, %abort ], [ false, %for.end ]
  %retval.0.i111 = phi ptr [ null, %if.then.next_crit_edge ], [ %retval.0.i112, %abort ], [ %13, %for.end ]
  %is_fetching45 = getelementptr i8, ptr %work, i32 208
  %56 = ptrtoint ptr %is_fetching45 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %is_fetching45, align 4
  %57 = ptrtoint ptr %curr_idx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %curr_idx, align 4
  %mtx.i.i102 = getelementptr i8, ptr %work, i32 100
  call void @mutex_lock_nested(ptr noundef %mtx.i.i102, i32 noundef 0) #8
  %59 = ptrtoint ptr %block_list_len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %block_list_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp15.not.i = icmp eq i32 %60, 0
  br i1 %cmp15.not.i, label %next.resched_crit_edge, label %for.body.lr.ph.i

next.resched_crit_edge:                           ; preds = %next
  call void @__sanitizer_cov_trace_pc() #10
  br label %resched

for.body.lr.ph.i:                                 ; preds = %next
  %block_list.i104 = getelementptr i8, ptr %work, i32 192
  %61 = ptrtoint ptr %block_list.i104 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %block_list.i104, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %exitcond.not.i = icmp eq i32 %add.i, %60
  br i1 %exitcond.not.i, label %for.cond.i.resched_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.resched_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %resched

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.cond.i.for.body.i_crit_edge ]
  %add.i = add nuw i32 %i.016.i, 1
  %add1.i = add i32 %add.i, %58
  %rem.i = urem i32 %add1.i, %60
  %arrayidx.i105 = getelementptr ptr, ptr %62, i32 %rem.i
  %63 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i105, align 4
  %tobool.not.i106 = icmp eq ptr %64, null
  br i1 %tobool.not.i106, label %for.cond.i, label %for.body.i.resched_crit_edge

for.body.i.resched_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %resched

resched:                                          ; preds = %for.body.i.resched_crit_edge, %for.cond.i.resched_crit_edge, %next.resched_crit_edge
  %retval.0.i107 = phi i32 [ 0, %next.resched_crit_edge ], [ 0, %for.cond.i.resched_crit_edge ], [ %rem.i, %for.body.i.resched_crit_edge ]
  call void @mutex_unlock(ptr noundef %mtx.i.i102) #8
  %65 = ptrtoint ptr %curr_idx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i107, ptr %curr_idx, align 4
  br i1 %tobool.not115, label %resched.if.end51_crit_edge, label %resched.if.then50_crit_edge

resched.if.then50_crit_edge:                      ; preds = %resched
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

resched.if.end51_crit_edge:                       ; preds = %resched
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then50:                                        ; preds = %resched.if.then50_crit_edge, %lor.lhs.false.if.then50_crit_edge, %if.end24.if.then50_crit_edge, %if.end14
  %resched_time.0122 = phi i32 [ 100, %resched.if.then50_crit_edge ], [ 5, %if.end14 ], [ 5, %lor.lhs.false.if.then50_crit_edge ], [ 5, %if.end24.if.then50_crit_edge ]
  %retval.0.i110121 = phi ptr [ %retval.0.i111, %resched.if.then50_crit_edge ], [ %13, %if.end14 ], [ %13, %lor.lhs.false.if.then50_crit_edge ], [ %13, %if.end24.if.then50_crit_edge ]
  call fastcc void @prestera_counter_block_put(ptr noundef %add.ptr3, ptr noundef nonnull %retval.0.i110121)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %resched.if.end51_crit_edge
  %resched_time.0123 = phi i32 [ %resched_time.0122, %if.then50 ], [ 100, %resched.if.end51_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %66 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %66, ptr noundef %work, i32 noundef %resched_time.0123) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %done) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_counter_fini(ptr nocapture noundef readonly %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %counter1 = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 17
  %0 = ptrtoint ptr %counter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counter1, align 4
  %stats_dw = getelementptr inbounds %struct.prestera_counter, ptr %1, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %stats_dw) #8
  %block_list_len = getelementptr inbounds %struct.prestera_counter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %block_list_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_list_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp30.not = icmp eq i32 %3, 0
  br i1 %cmp30.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %block_list = getelementptr inbounds %struct.prestera_counter, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %block_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %block_list, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.031
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end, !prof !29

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 470, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %inc = add nuw i32 %i.031, 1
  %8 = ptrtoint ptr %block_list_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %block_list_len, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %mtx = getelementptr inbounds %struct.prestera_counter, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %mtx) #8
  %block_list21 = getelementptr inbounds %struct.prestera_counter, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %block_list21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block_list21, align 4
  tail call void @kfree(ptr noundef %11) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_counter_block_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_counter_block_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @prestera_counter_block_incref(ptr noundef %block) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.prestera_counter_block, ptr %block, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #8
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %refcnt) #8, !srcloc !32
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !29

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !29

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #8
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #8
  ret i1 %tobool12.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_counter_trigger(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_counters_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_counter_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !12, !13, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @prestera_counter_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_counter.c", i32 451, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @prestera_counter_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_counter.c", i32 456, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @prestera_counter_init.__key.3, !4, !"__key", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_counter.c", i32 470, i32 3}
!10 = !{ptr @prestera_counter_block_get.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_counter.c", i32 176, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @xa_init_flags.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2148475474}
!28 = !{i64 2148389938, i64 2148389970, i64 2148389999, i64 2148390033, i64 2148390064, i64 2148390087}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2150686814}
!31 = !{!"branch_weights", i32 2146410443, i32 1073205}
!32 = !{i64 871456, i64 871480, i64 871501, i64 871518, i64 871535}
