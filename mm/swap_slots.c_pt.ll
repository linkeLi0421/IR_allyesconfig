; ModuleID = '/llk/IR_all_yes/mm/swap_slots.c_pt.bc'
source_filename = "../mm/swap_slots.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.swap_slots_cache = type { i8, %struct.mutex, ptr, i32, i32, %struct.spinlock, ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.swp_entry_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@swap_slots_cache_enable_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @swap_slots_cache_enable_mutex, i64 52), ptr getelementptr (i8, ptr @swap_slots_cache_enable_mutex, i64 52) }, ptr @swap_slots_cache_enable_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@swap_slot_cache_enabled = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@swap_slot_cache_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"swap_slots_cache\00", [47 x i8] zeroinitializer }, align 32
@enable_swap_slots_cache.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mm/swap_slots.c\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Cache allocation failed (%s), operating without swap slots cache.\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.enable_swap_slots_cache = private unnamed_addr constant [24 x i8] c"enable_swap_slots_cache\00", align 1
@swp_slots = weak dso_local global %struct.swap_slots_cache zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@swap_slot_cache_active = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__pcpu_unique_swp_slots = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"swap_slots_cache_enable_mutex.wait_lock\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"swap_slots_cache_enable_mutex\00", [34 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@swap_slots_cache_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @swap_slots_cache_mutex, i64 52), ptr getelementptr (i8, ptr @swap_slots_cache_mutex, i64 52) }, ptr @swap_slots_cache_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@alloc_swap_slot_cache.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&cache->alloc_lock\00", [45 x i8] zeroinitializer }, align 32
@alloc_swap_slot_cache.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cache->free_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"swap_slots_cache_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"swap_slots_cache_mutex\00", [41 x i8] zeroinitializer }, align 32
@nr_swap_pages = external dso_local global %struct.atomic_t, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@memory_cgrp_subsys_enabled_key = external dso_local global %struct.static_key_true, align 4
@___asan_gen_.10 = private unnamed_addr constant [30 x i8] c"swap_slots_cache_enable_mutex\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"swap_slot_cache_enabled\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 40, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"swap_slot_cache_initialized\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 244, i32 48 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 246, i32 7 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"swap_slot_cache_active\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 44, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"swap_slots_cache_mutex\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 148, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 149, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [19 x i8] c"../mm/swap_slots.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 42, i32 8 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @swap_slots_cache_enable_mutex, ptr @swap_slot_cache_enabled, ptr @swap_slot_cache_initialized, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @swap_slot_cache_active, ptr @.str.3, ptr @.str.4, ptr @swap_slots_cache_mutex, ptr @alloc_swap_slot_cache.__key, ptr @.str.5, ptr @alloc_swap_slot_cache.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_slots_cache_enable_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_slot_cache_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_slot_cache_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_slot_cache_active to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_slots_cache_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_swap_slot_cache.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_swap_slot_cache.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disable_swap_slots_cache_lock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @swap_slots_cache_enable_mutex, i32 noundef 0) #5
  store i8 0, ptr @swap_slot_cache_enabled, align 1
  %.b1 = load i1, ptr @swap_slot_cache_initialized, align 1
  br i1 %.b1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @cpus_read_lock() #5
  %call1.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %0)
  %cmp2.i = icmp ult i32 %call1.i, %0
  br i1 %cmp2.i, label %if.then.for.body.i_crit_edge, label %if.then.__drain_swap_slots_cache.exit_crit_edge

if.then.__drain_swap_slots_cache.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %__drain_swap_slots_cache.exit

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %call3.i = phi i32 [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %call1.i, %if.then.for.body.i_crit_edge ]
  tail call fastcc void @drain_slots_cache_cpu(i32 noundef %call3.i, i1 noundef zeroext false) #5
  %call.i = tail call i32 @cpumask_next(i32 noundef %call3.i, ptr noundef nonnull @__cpu_online_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %1
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.__drain_swap_slots_cache.exit_crit_edge

for.body.i.__drain_swap_slots_cache.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__drain_swap_slots_cache.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

__drain_swap_slots_cache.exit:                    ; preds = %for.body.i.__drain_swap_slots_cache.exit_crit_edge, %if.then.__drain_swap_slots_cache.exit_crit_edge
  tail call void @cpus_read_unlock() #5
  br label %if.end

if.end:                                           ; preds = %__drain_swap_slots_cache.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reenable_swap_slots_cache_unlock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @has_usable_swap() #5
  %frombool.i = zext i1 %call.i to i8
  store i8 %frombool.i, ptr @swap_slot_cache_enabled, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @swap_slots_cache_enable_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enable_swap_slots_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @swap_slots_cache_enable_mutex, i32 noundef 0) #5
  %.b44 = load i1, ptr @swap_slot_cache_initialized, align 1
  br i1 %.b44, label %entry.if.end40_crit_edge, label %if.then

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str, i1 noundef zeroext true, ptr noundef nonnull @alloc_swap_slot_cache, ptr noundef nonnull @free_slot_cache, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %if.then
  %.b4345 = load i1, ptr @enable_swap_slots_cache.__already_done, align 1
  br i1 %.b4345, label %land.rhs.out_unlock_crit_edge, label %if.then8, !prof !40

land.rhs.out_unlock_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @enable_swap_slots_cache.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.enable_swap_slots_cache) #5
  br label %out_unlock

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @swap_slot_cache_initialized, align 1
  br label %if.end40

if.end40:                                         ; preds = %cleanup, %entry.if.end40_crit_edge
  %call.i47 = tail call zeroext i1 @has_usable_swap() #5
  %frombool.i = zext i1 %call.i47 to i8
  store i8 %frombool.i, ptr @swap_slot_cache_enabled, align 1
  br label %out_unlock

out_unlock:                                       ; preds = %if.end40, %if.then8, %land.rhs.out_unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @swap_slots_cache_enable_mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alloc_swap_slot_cache(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 256, i32 noundef 3520, i32 noundef -1) #9
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i45 = tail call noalias ptr @kvmalloc_node(i32 noundef 256, i32 noundef 3520, i32 noundef -1) #9
  %tobool2.not = icmp eq ptr %call.i.i.i45, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @swap_slots_cache_mutex, i32 noundef 0) #5
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @swp_slots to i32)
  %2 = inttoptr i32 %add to ptr
  %slots6 = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %slots6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slots6, align 4
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end4.if.then10_crit_edge

if.end4.if.then10_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end4
  %slots_ret8 = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %slots_ret8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slots_ret8, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %if.end11, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end4.if.then10_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @swap_slots_cache_mutex) #5
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #5
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i45) #5
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %2, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool12.not = icmp eq i8 %8, 0
  br i1 %tobool12.not, label %do.body14, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.body14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %alloc_lock = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %alloc_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @alloc_swap_slot_cache.__key) #5
  %free_lock = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %free_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @alloc_swap_slot_cache.__key.6, i16 noundef signext 3) #5
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %2, align 4
  br label %if.end22

if.end22:                                         ; preds = %do.body14, %if.end11.if.end22_crit_edge
  %nr = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %nr, align 4
  %cur = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 4
  %11 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cur, align 4
  %n_ret = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 7
  %12 = ptrtoint ptr %n_ret to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %n_ret, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %slots6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i.i, ptr %slots6, align 4
  %14 = ptrtoint ptr %slots_ret8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i.i45, ptr %slots_ret8, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @swap_slots_cache_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then10, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %if.end22 ], [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @free_slot_cache(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @swap_slots_cache_mutex, i32 noundef 0) #5
  tail call fastcc void @drain_slots_cache_cpu(i32 noundef %cpu, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef nonnull @swap_slots_cache_mutex) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @free_swap_slot([1 x i32] %entry.coerce) local_unnamed_addr #0 align 64 {
entry:
  %entry2 = alloca %struct.swp_entry_t, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract = extractvalue [1 x i32] %entry.coerce, 0
  %0 = ptrtoint ptr %entry2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %entry.coerce.fca.0.extract, ptr %entry2, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !30) #5
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, ptrtoint (ptr @swp_slots to i32)
  %7 = inttoptr i32 %add to ptr
  %.b3637 = load i1, ptr @swap_slot_cache_active, align 1
  br i1 %.b3637, label %land.lhs.true, label %entry.direct_free_crit_edge, !prof !40

entry.direct_free_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %direct_free

land.lhs.true:                                    ; preds = %entry
  %8 = load i8, ptr @swap_slot_cache_enabled, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %land.lhs.true.direct_free_crit_edge, label %land.rhs, !prof !43

land.lhs.true.direct_free_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %direct_free

land.rhs:                                         ; preds = %land.lhs.true
  %slots_ret = getelementptr inbounds %struct.swap_slots_cache, ptr %7, i32 0, i32 6
  %9 = ptrtoint ptr %slots_ret to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slots_ret, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %land.rhs.direct_free_crit_edge, label %if.then, !prof !43

land.rhs.direct_free_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %direct_free

if.then:                                          ; preds = %land.rhs
  %free_lock = getelementptr inbounds %struct.swap_slots_cache, ptr %7, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %free_lock) #5
  %.b38 = load i1, ptr @swap_slot_cache_active, align 1
  br i1 %.b38, label %land.lhs.true9, label %if.then.if.then13_crit_edge

if.then.if.then13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

land.lhs.true9:                                   ; preds = %if.then
  %11 = load i8, ptr @swap_slot_cache_enabled, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  br i1 %tobool10.not, label %land.lhs.true9.if.then13_crit_edge, label %lor.lhs.false

land.lhs.true9.if.then13_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

lor.lhs.false:                                    ; preds = %land.lhs.true9
  %12 = ptrtoint ptr %slots_ret to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slots_ret, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %lor.lhs.false.if.then13_crit_edge, label %if.end

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %land.lhs.true9.if.then13_crit_edge, %if.then.if.then13_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %free_lock) #5
  br label %direct_free

if.end:                                           ; preds = %lor.lhs.false
  %n_ret = getelementptr inbounds %struct.swap_slots_cache, ptr %7, i32 0, i32 7
  %14 = ptrtoint ptr %n_ret to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %15)
  %cmp = icmp sgt i32 %15, 63
  br i1 %cmp, label %if.then15, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @swapcache_free_entries(ptr noundef nonnull %13, i32 noundef %15) #5
  %16 = ptrtoint ptr %n_ret to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %n_ret, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end.if.end19_crit_edge
  %17 = ptrtoint ptr %slots_ret to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %slots_ret, align 4
  %19 = ptrtoint ptr %n_ret to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_ret, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %n_ret, align 4
  %arrayidx22 = getelementptr %struct.swp_entry_t, ptr %18, i32 %20
  %21 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %entry2, align 4
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx22, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %free_lock) #5
  br label %if.end24

direct_free:                                      ; preds = %if.then13, %land.rhs.direct_free_crit_edge, %land.lhs.true.direct_free_crit_edge, %entry.direct_free_crit_edge
  call void @swapcache_free_entries(ptr noundef nonnull %entry2, i32 noundef 1) #5
  br label %if.end24

if.end24:                                         ; preds = %direct_free, %if.end19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @swapcache_free_entries(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_swap_page(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %retval = alloca %struct.swp_entry_t, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %retval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %retval, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !30) #5
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, ptrtoint (ptr @swp_slots to i32)
  %7 = inttoptr i32 %add to ptr
  %8 = load i8, ptr @swap_slot_cache_enabled, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %entry.if.end31_crit_edge, label %if.end.i, !prof !44

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.end.i:                                         ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_swap_pages, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_swap_pages to i32))
  %9 = load volatile i32, ptr @nr_swap_pages, align 4
  %.b1415.i = load i1, ptr @swap_slot_cache_active, align 1
  %call.i.i.i18.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %10 = load volatile i32, ptr @__num_online_cpus, align 4
  br i1 %.b1415.i, label %if.end6.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %mul.i = mul i32 %10, 320
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mul.i)
  %cmp.i = icmp ugt i32 %9, %mul.i
  br i1 %cmp.i, label %if.then4.i, label %if.then2.i.check_cache_active.exit_crit_edge

if.then2.i.check_cache_active.exit_crit_edge:     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_cache_active.exit

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_lock_nested(ptr noundef nonnull @swap_slots_cache_mutex, i32 noundef 0) #5
  store i1 true, ptr @swap_slot_cache_active, align 1
  br label %out.sink.split.i

if.end6.i:                                        ; preds = %if.end.i
  %mul8.i = shl i32 %10, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mul8.i)
  %cmp9.i = icmp ult i32 %9, %mul8.i
  br i1 %cmp9.i, label %if.then10.i, label %if.end6.i.check_cache_active.exit_crit_edge

if.end6.i.check_cache_active.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_cache_active.exit

if.then10.i:                                      ; preds = %if.end6.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @swap_slots_cache_mutex, i32 noundef 0) #5
  store i1 false, ptr @swap_slot_cache_active, align 1
  %call1.i.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i.i, i32 %11)
  %cmp2.i.i.i = icmp ult i32 %call1.i.i.i, %11
  br i1 %cmp2.i.i.i, label %if.then10.i.for.body.i.i.i_crit_edge, label %if.then10.i.out.sink.split.i_crit_edge

if.then10.i.out.sink.split.i_crit_edge:           ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

if.then10.i.for.body.i.i.i_crit_edge:             ; preds = %if.then10.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then10.i.for.body.i.i.i_crit_edge
  %call3.i.i.i = phi i32 [ %call.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %call1.i.i.i, %if.then10.i.for.body.i.i.i_crit_edge ]
  tail call fastcc void @drain_slots_cache_cpu(i32 noundef %call3.i.i.i, i1 noundef zeroext false) #5
  %call.i.i.i = tail call i32 @cpumask_next(i32 noundef %call3.i.i.i, ptr noundef nonnull @__cpu_online_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i.i = icmp ult i32 %call.i.i.i, %12
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.out.sink.split.i_crit_edge

for.body.i.i.i.out.sink.split.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

out.sink.split.i:                                 ; preds = %for.body.i.i.i.out.sink.split.i_crit_edge, %if.then10.i.out.sink.split.i_crit_edge, %if.then4.i
  tail call void @mutex_unlock(ptr noundef nonnull @swap_slots_cache_mutex) #5
  br label %check_cache_active.exit

check_cache_active.exit:                          ; preds = %out.sink.split.i, %if.end6.i.check_cache_active.exit_crit_edge, %if.then2.i.check_cache_active.exit_crit_edge
  %.b16.i = load i1, ptr @swap_slot_cache_active, align 1
  br i1 %.b16.i, label %land.rhs, label %check_cache_active.exit.if.end31_crit_edge, !prof !40

check_cache_active.exit.if.end31_crit_edge:       ; preds = %check_cache_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

land.rhs:                                         ; preds = %check_cache_active.exit
  %slots = getelementptr inbounds %struct.swap_slots_cache, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slots, align 4
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %land.rhs.if.end31_crit_edge, label %if.then7, !prof !43

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then7:                                         ; preds = %land.rhs
  %alloc_lock = getelementptr inbounds %struct.swap_slots_cache, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %alloc_lock, i32 noundef 0) #5
  %15 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slots, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %if.then7.if.end25_crit_edge, label %repeat.preheader

if.then7.if.end25_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

repeat.preheader:                                 ; preds = %if.then7
  %nr = getelementptr inbounds %struct.swap_slots_cache, ptr %7, i32 0, i32 3
  %cur.i = getelementptr inbounds %struct.swap_slots_cache, ptr %7, i32 0, i32 4
  %17 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %nr, align 4
  br label %repeat

repeat:                                           ; preds = %refill_swap_slots_cache.exit.repeat_crit_edge, %repeat.preheader
  %18 = phi i32 [ %.pr, %repeat.preheader ], [ %call.i, %refill_swap_slots_cache.exit.repeat_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool11.not = icmp eq i32 %18, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slots, align 4
  %21 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur.i, align 4
  %arrayidx14 = getelementptr %struct.swp_entry_t, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx14, align 4
  %25 = ptrtoint ptr %retval to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %retval, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %cur.i, align 4
  store i32 0, ptr %arrayidx14, align 4
  %26 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %nr, align 4
  br label %if.end25

if.else:                                          ; preds = %repeat
  %.b1213.i = load i1, ptr @swap_slot_cache_active, align 1
  br i1 %.b1213.i, label %land.lhs.true.i, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

land.lhs.true.i:                                  ; preds = %if.else
  %28 = load i8, ptr @swap_slot_cache_enabled, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool1.not.i = icmp eq i8 %28, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end25_crit_edge, label %refill_swap_slots_cache.exit

land.lhs.true.i.if.end25_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

refill_swap_slots_cache.exit:                     ; preds = %land.lhs.true.i
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cur.i, align 4
  %30 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slots, align 4
  %call.i = tail call i32 @get_swap_pages(i32 noundef 64, ptr noundef %31, i32 noundef 1) #5
  %32 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i, ptr %nr, align 4
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %refill_swap_slots_cache.exit.if.end25_crit_edge, label %refill_swap_slots_cache.exit.repeat_crit_edge

refill_swap_slots_cache.exit.repeat_crit_edge:    ; preds = %refill_swap_slots_cache.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %repeat

refill_swap_slots_cache.exit.if.end25_crit_edge:  ; preds = %refill_swap_slots_cache.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end25:                                         ; preds = %refill_swap_slots_cache.exit.if.end25_crit_edge, %land.lhs.true.i.if.end25_crit_edge, %if.else.if.end25_crit_edge, %if.then12, %if.then7.if.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef %alloc_lock) #5
  %33 = ptrtoint ptr %retval to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %retval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool28.not = icmp eq i32 %34, 0
  br i1 %tobool28.not, label %if.end25.if.end31_crit_edge, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.end31:                                         ; preds = %if.end25.if.end31_crit_edge, %land.rhs.if.end31_crit_edge, %check_cache_active.exit.if.end31_crit_edge, %entry.if.end31_crit_edge
  %call32 = call i32 @get_swap_pages(i32 noundef 1, ptr noundef nonnull %retval, i32 noundef 1) #5
  br label %out

out:                                              ; preds = %if.end31, %if.end25.out_crit_edge
  %35 = ptrtoint ptr %retval to i32
  call void @__asan_load4_noabort(i32 %35)
  %.fca.0.load = load i32, ptr %retval, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@get_swap_page, %if.end38)) #5
          to label %mem_cgroup_try_charge_swap.exit [label %if.end38], !srcloc !45

mem_cgroup_try_charge_swap.exit:                  ; preds = %out
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call4.i = call i32 @__mem_cgroup_try_charge_swap(ptr noundef %page, [1 x i32] %.fca.0.insert) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %phi.cmp = icmp eq i32 %call4.i, 0
  br i1 %phi.cmp, label %mem_cgroup_try_charge_swap.exit.if.end38_crit_edge, label %if.then35

mem_cgroup_try_charge_swap.exit.if.end38_crit_edge: ; preds = %mem_cgroup_try_charge_swap.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then35:                                        ; preds = %mem_cgroup_try_charge_swap.exit
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %retval to i32
  call void @__asan_load4_noabort(i32 %36)
  %.fca.0.load53 = load i32, ptr %retval, align 4
  %.fca.0.insert54 = insertvalue [1 x i32] poison, i32 %.fca.0.load53, 0
  call void @put_swap_page(ptr noundef %page, [1 x i32] %.fca.0.insert54) #5
  %37 = ptrtoint ptr %retval to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %retval, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %mem_cgroup_try_charge_swap.exit.if.end38_crit_edge, %out
  %38 = ptrtoint ptr %retval to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_swap_pages(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_swap_page(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @has_usable_swap() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drain_slots_cache_cpu(i32 noundef %cpu, i1 noundef zeroext %free_slots) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @swp_slots to i32)
  %2 = inttoptr i32 %add to ptr
  %slots2 = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %slots2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slots2, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %entry.land.lhs.true18_crit_edge, label %if.then

entry.land.lhs.true18_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true18

if.then:                                          ; preds = %entry
  %alloc_lock = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %alloc_lock, i32 noundef 0) #5
  %5 = ptrtoint ptr %slots2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slots2, align 4
  %cur = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur, align 4
  %add.ptr = getelementptr %struct.swp_entry_t, ptr %6, i32 %8
  %nr = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr, align 4
  tail call void @swapcache_free_entries(ptr noundef %add.ptr, i32 noundef %10) #5
  %11 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cur, align 4
  %12 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %nr, align 4
  br i1 %free_slots, label %land.lhs.true8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true8:                                   ; preds = %if.then
  %13 = ptrtoint ptr %slots2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slots2, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %land.lhs.true8.if.end_crit_edge, label %if.then11

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kvfree(ptr noundef nonnull %14) #5
  %15 = ptrtoint ptr %slots2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %slots2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %land.lhs.true8.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %alloc_lock) #5
  br label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end, %entry.land.lhs.true18_crit_edge
  %slots_ret = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 6
  %16 = ptrtoint ptr %slots_ret to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slots_ret, align 4
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %land.lhs.true18.if.end32_crit_edge, label %if.then20

land.lhs.true18.if.end32_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then20:                                        ; preds = %land.lhs.true18
  %free_lock = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %free_lock) #5
  %18 = ptrtoint ptr %slots_ret to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slots_ret, align 4
  %n_ret = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 7
  %20 = ptrtoint ptr %n_ret to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_ret, align 4
  tail call void @swapcache_free_entries(ptr noundef %19, i32 noundef %21) #5
  %22 = ptrtoint ptr %n_ret to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %n_ret, align 4
  br i1 %free_slots, label %land.lhs.true24, label %if.then20.if.end30_crit_edge

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

land.lhs.true24:                                  ; preds = %if.then20
  %23 = ptrtoint ptr %slots_ret to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slots_ret, align 4
  %tobool26.not = icmp eq ptr %24, null
  br i1 %tobool26.not, label %land.lhs.true24.if.end30_crit_edge, label %if.then27

land.lhs.true24.if.end30_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then27:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %slots_ret to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %slots_ret, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %land.lhs.true24.if.end30_crit_edge, %if.then20.if.end30_crit_edge
  %slots.0 = phi ptr [ %24, %if.then27 ], [ null, %land.lhs.true24.if.end30_crit_edge ], [ null, %if.then20.if.end30_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %free_lock) #5
  tail call void @kvfree(ptr noundef %slots.0) #5
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %land.lhs.true18.if.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mem_cgroup_try_charge_swap(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !14, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/swap_slots.c", i32 244, i32 48}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../mm/swap_slots.c", i32 246, i32 7}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__func__.enable_swap_slots_cache, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__pcpu_unique_swp_slots, !8, !"__pcpu_unique_swp_slots", i1 false, i1 false}
!8 = !{!"../mm/swap_slots.c", i32 38, i32 8}
!9 = !{ptr @swp_slots, !8, !"swp_slots", i1 false, i1 false}
!10 = distinct !{null, !11, !"swap_slot_cache_active", i1 false, i1 false}
!11 = !{!"../mm/swap_slots.c", i32 39, i32 13}
!12 = !{ptr @swap_slot_cache_enabled, !13, !"swap_slot_cache_enabled", i1 false, i1 false}
!13 = !{!"../mm/swap_slots.c", i32 40, i32 6}
!14 = distinct !{null, !15, !"swap_slot_cache_initialized", i1 false, i1 false}
!15 = !{!"../mm/swap_slots.c", i32 41, i32 13}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../mm/swap_slots.c", i32 44, i32 8}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @swap_slots_cache_enable_mutex, !17, !"swap_slots_cache_enable_mutex", i1 false, i1 false}
!20 = !{ptr @alloc_swap_slot_cache.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../mm/swap_slots.c", i32 148, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @alloc_swap_slot_cache.__key.6, !24, !"__key", i1 false, i1 false}
!24 = !{!"../mm/swap_slots.c", i32 149, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../mm/swap_slots.c", i32 42, i32 8}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @swap_slots_cache_mutex, !27, !"swap_slots_cache_mutex", i1 false, i1 false}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i8 0, i8 2}
!42 = !{i64 2154827655}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{!"branch_weights", i32 1073205, i32 2146410443}
!45 = !{i64 2148334414, i64 2148334419, i64 2148334432, i64 2148334476, i64 2148334510, i64 2148334531}
