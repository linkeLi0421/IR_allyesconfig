; ModuleID = '/llk/IR_all_yes/drivers/net/wireguard/queueing.c_pt.bc'
source_filename = "../drivers/net/wireguard/queueing.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.multicore_worker = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ptr_ring = type { i32, %struct.spinlock, [80 x i8], i32, i32, %struct.spinlock, [76 x i8], i32, i32, ptr, [116 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.crypt_queue = type { %struct.ptr_ring, ptr, i32, [120 x i8] }
%struct.prev_queue = type { ptr, ptr, ptr, %struct.anon.155, %struct.atomic_t }
%struct.anon.155 = type { ptr, ptr }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@wg_packet_percpu_multicore_worker_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [306 x i8], [78 x i8] } { [306 x i8] c"(work_completion)(&({ do { const void *__vpp_verify = (typeof((worker) + 0))((void *)0); (void)__vpp_verify; } while (0); ({ unsigned long __ptr; __ptr = (unsigned long) ((typeof(*((worker))) *)((worker))); (typeof((typeof(*((worker))) *)((worker)))) (__ptr + (((__per_cpu_offset[(cpu)])))); }); })->work)\00", [78 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/wireguard/queueing.c\00", [63 x i8] zeroinitializer }, align 32
@ptr_ring_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&r->producer_lock\00", [46 x i8] zeroinitializer }, align 32
@ptr_ring_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&r->consumer_lock\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 19, i32 3 }
@___asan_gen_.12 = private constant [36 x i8] c"../drivers/net/wireguard/queueing.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 44, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 495, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [28 x i8] c"../include/linux/ptr_ring.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 496, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @wg_packet_percpu_multicore_worker_alloc.__key, ptr @.str, ptr @.str.1, ptr @ptr_ring_init.__key, ptr @.str.2, ptr @ptr_ring_init.__key.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_percpu_multicore_worker_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 306, i32 384, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptr_ring_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptr_ring_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wg_packet_percpu_multicore_worker_alloc(ptr noundef %function, ptr noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 48, i32 noundef 4) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %call172 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call172, i32 %0)
  %cmp73 = icmp ult i32 %call172, %0
  br i1 %cmp73, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = ptrtoint ptr %call to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call174 = phi i32 [ %call172, %for.body.lr.ph ], [ %call1, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call174
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, %1
  %4 = inttoptr i32 %add to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ptr, ptr %4, align 4
  %6 = load i32, ptr %arrayidx, align 4
  %add13 = add i32 %6, %1
  %7 = inttoptr i32 %add13 to ptr
  %work = getelementptr inbounds %struct.multicore_worker, ptr %7, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add22 = add i32 %9, %1
  %10 = inttoptr i32 %add22 to ptr
  %work23 = getelementptr inbounds %struct.multicore_worker, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %work23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %work23, align 4
  %12 = load i32, ptr %arrayidx, align 4
  %add32 = add i32 %12, %1
  %13 = inttoptr i32 %add32 to ptr
  %lockdep_map = getelementptr inbounds %struct.multicore_worker, ptr %13, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @wg_packet_percpu_multicore_worker_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add42 = add i32 %15, %1
  %16 = inttoptr i32 %add42 to ptr
  %entry44 = getelementptr inbounds %struct.multicore_worker, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i = getelementptr inbounds %struct.multicore_worker, ptr %16, i32 0, i32 1, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry44, ptr %prev.i, align 4
  %19 = load i32, ptr %arrayidx, align 4
  %add53 = add i32 %19, %1
  %20 = inttoptr i32 %add53 to ptr
  %func = getelementptr inbounds %struct.multicore_worker, ptr %20, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %function, ptr %func, align 4
  %call1 = tail call i32 @cpumask_next(i32 noundef %call174, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_packet_queue_init(ptr noundef %queue, ptr noundef %function, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %queue, i32 0, i32 512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %len)
  %cmp.i.i = icmp ugt i32 %len, 2097152
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %__ptr_ring_init_queue_alloc.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

__ptr_ring_init_queue_alloc.exit.i:               ; preds = %entry
  %1 = shl nuw nsw i32 %len, 2
  %call.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %1, i32 noundef 3520, i32 noundef -1) #8
  %queue.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 9
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i.i.i, ptr %queue.i, align 8
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %__ptr_ring_init_queue_alloc.exit.i.cleanup_crit_edge, label %if.end

__ptr_ring_init_queue_alloc.exit.i.cleanup_crit_edge: ; preds = %__ptr_ring_init_queue_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %__ptr_ring_init_queue_alloc.exit.i
  %size1.i.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 7
  %3 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %size1.i.i, align 128
  %batch.i.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp.i1.i = icmp ult i32 %len, 128
  %spec.store.select.i.i = select i1 %cmp.i1.i, i32 1, i32 64
  %4 = ptrtoint ptr %batch.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.store.select.i.i, ptr %batch.i.i, align 4
  %consumer_tail.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 4
  %5 = ptrtoint ptr %consumer_tail.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %consumer_tail.i, align 4
  %consumer_head.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 3
  %6 = ptrtoint ptr %consumer_head.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %consumer_head.i, align 128
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %queue, align 128
  %producer_lock.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %producer_lock.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @ptr_ring_init.__key, i16 noundef signext 3) #5
  %consumer_lock.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %consumer_lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @ptr_ring_init.__key.3, i16 noundef signext 3) #5
  %call1 = tail call ptr @wg_packet_percpu_multicore_worker_alloc(ptr noundef %function, ptr noundef %queue)
  %worker = getelementptr inbounds %struct.crypt_queue, ptr %queue, i32 0, i32 1
  %8 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %worker, align 128
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queue.i, align 8
  tail call void @kvfree(ptr noundef %10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %__ptr_ring_init_queue_alloc.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %__ptr_ring_init_queue_alloc.exit.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_packet_queue_free(ptr noundef %queue, i1 noundef zeroext %purge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %worker = getelementptr inbounds %struct.crypt_queue, ptr %queue, i32 0, i32 1
  %0 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %worker, align 128
  tail call void @free_percpu(ptr noundef %1) #5
  br i1 %purge, label %while.cond.preheader.i, label %land.rhs

land.rhs:                                         ; preds = %entry
  %size.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 7
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.rhs.ptr_ring_cleanup.exit_crit_edge, label %__ptr_ring_empty.exit, !prof !20

land.rhs.ptr_ring_cleanup.exit_crit_edge:         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %ptr_ring_cleanup.exit

__ptr_ring_empty.exit:                            ; preds = %land.rhs
  %queue.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 9
  %4 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue.i, align 8
  %consumer_head.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 3
  %6 = ptrtoint ptr %consumer_head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %consumer_head.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i.not = icmp eq ptr %9, null
  br i1 %tobool3.not.i.not, label %__ptr_ring_empty.exit.ptr_ring_cleanup.exit_crit_edge, label %do.end, !prof !21

__ptr_ring_empty.exit.ptr_ring_cleanup.exit_crit_edge: ; preds = %__ptr_ring_empty.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ptr_ring_cleanup.exit

do.end:                                           ; preds = %__ptr_ring_empty.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 44, i32 noundef 9, ptr noundef null) #5
  br label %ptr_ring_cleanup.exit

while.cond.preheader.i:                           ; preds = %entry
  %queue.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 9
  %consumer_lock.i.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %consumer_lock.i.i) #5
  %size.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 7
  %10 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i6.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i6.i, label %while.cond.preheader.i.ptr_ring_consume.exit.thread.i_crit_edge, label %__ptr_ring_peek.exit.i.i.lr.ph.i, !prof !20

while.cond.preheader.i.ptr_ring_consume.exit.thread.i_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ptr_ring_consume.exit.thread.i

__ptr_ring_peek.exit.i.i.lr.ph.i:                 ; preds = %while.cond.preheader.i
  %consumer_head.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 3
  %consumer_tail.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 4
  %batch.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 8
  br label %__ptr_ring_peek.exit.i.i.i

__ptr_ring_peek.exit.i.i.i:                       ; preds = %ptr_ring_consume.exit.i.__ptr_ring_peek.exit.i.i.i_crit_edge, %__ptr_ring_peek.exit.i.i.lr.ph.i
  %12 = phi i32 [ %11, %__ptr_ring_peek.exit.i.i.lr.ph.i ], [ %34, %ptr_ring_consume.exit.i.__ptr_ring_peek.exit.i.i.i_crit_edge ]
  %13 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue.i.i.i.i, align 8
  %15 = ptrtoint ptr %consumer_head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %consumer_head.i.i.i.i, align 128
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %14, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %__ptr_ring_peek.exit.i.i.i.ptr_ring_consume.exit.thread.i_crit_edge, label %if.then.i.i.i

__ptr_ring_peek.exit.i.i.i.ptr_ring_consume.exit.thread.i_crit_edge: ; preds = %__ptr_ring_peek.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ptr_ring_consume.exit.thread.i

if.then.i.i.i:                                    ; preds = %__ptr_ring_peek.exit.i.i.i
  %inc.i.i.i.i = add i32 %16, 1
  %19 = ptrtoint ptr %consumer_tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %consumer_tail.i.i.i.i, align 4
  %sub.i.i.i.i = sub i32 %inc.i.i.i.i, %20
  %21 = ptrtoint ptr %batch.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %batch.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %22)
  %cmp.not.i.i.i.i = icmp slt i32 %sub.i.i.i.i, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i.i, i32 %12)
  %cmp2.not.i.i.i.i = icmp slt i32 %inc.i.i.i.i, %12
  %or.cond.i.i.i = select i1 %cmp.not.i.i.i.i, i1 %cmp2.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.then.i.i.i.if.end.i.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.i, !prof !22

if.then.i.i.i.if.end.i.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i.i

while.cond.preheader.i.i.i.i:                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %20)
  %cmp5.not46.i.i.i.i = icmp slt i32 %16, %20
  br i1 %cmp5.not46.i.i.i.i, label %while.cond.preheader.i.i.i.i.while.end.i.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge, !prof !20

while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  br label %while.body.i.i.i.i

while.cond.preheader.i.i.i.i.while.end.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i.i.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge
  %head.047.i.i.i.i = phi i32 [ %dec.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %16, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %23 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %head.047.i.i.i.i, -1
  %arrayidx.i5.i.i.i = getelementptr ptr, ptr %24, i32 %head.047.i.i.i.i
  %25 = ptrtoint ptr %arrayidx.i5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx.i5.i.i.i, align 4
  %26 = ptrtoint ptr %consumer_tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %consumer_tail.i.i.i.i, align 4
  %cmp5.not.i.i.i.i = icmp slt i32 %dec.i.i.i.i, %27
  br i1 %cmp5.not.i.i.i.i, label %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge, label %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, !prof !20

while.body.i.i.i.i.while.body.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i.i

while.body.i.i.i.i.while.end.i.i.i.i_crit_edge:   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i.i.i

while.end.i.i.i.i:                                ; preds = %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.while.end.i.i.i.i_crit_edge
  %28 = ptrtoint ptr %consumer_tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.i.i.i.i, ptr %consumer_tail.i.i.i.i, align 4
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %while.end.i.i.i.i, %if.then.i.i.i.if.end.i.i.i.i_crit_edge
  %29 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i.i, i32 %30)
  %cmp14.not.i.i.i.i = icmp slt i32 %inc.i.i.i.i, %30
  br i1 %cmp14.not.i.i.i.i, label %if.end.i.i.i.i.ptr_ring_consume.exit.i_crit_edge, label %if.then21.i.i.i.i, !prof !21

if.end.i.i.i.i.ptr_ring_consume.exit.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ptr_ring_consume.exit.i

if.then21.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %consumer_tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %consumer_tail.i.i.i.i, align 4
  br label %ptr_ring_consume.exit.i

ptr_ring_consume.exit.thread.i:                   ; preds = %ptr_ring_consume.exit.i.ptr_ring_consume.exit.thread.i_crit_edge, %__ptr_ring_peek.exit.i.i.i.ptr_ring_consume.exit.thread.i_crit_edge, %while.cond.preheader.i.ptr_ring_consume.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %consumer_lock.i.i) #5
  br label %ptr_ring_cleanup.exit

ptr_ring_consume.exit.i:                          ; preds = %if.then21.i.i.i.i, %if.end.i.i.i.i.ptr_ring_consume.exit.i_crit_edge
  %consumer_head.0.i.i.i.i = phi i32 [ 0, %if.then21.i.i.i.i ], [ %inc.i.i.i.i, %if.end.i.i.i.i.ptr_ring_consume.exit.i_crit_edge ]
  %32 = ptrtoint ptr %consumer_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %consumer_head.0.i.i.i.i, ptr %consumer_head.i.i.i.i, align 128
  tail call void @_raw_spin_unlock(ptr noundef %consumer_lock.i.i) #5
  tail call void @kfree_skb_reason(ptr noundef nonnull %18, i32 noundef 0) #5
  tail call void @_raw_spin_lock(ptr noundef %consumer_lock.i.i) #5
  %33 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i.i, label %ptr_ring_consume.exit.i.ptr_ring_consume.exit.thread.i_crit_edge, label %ptr_ring_consume.exit.i.__ptr_ring_peek.exit.i.i.i_crit_edge, !prof !20

ptr_ring_consume.exit.i.__ptr_ring_peek.exit.i.i.i_crit_edge: ; preds = %ptr_ring_consume.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__ptr_ring_peek.exit.i.i.i

ptr_ring_consume.exit.i.ptr_ring_consume.exit.thread.i_crit_edge: ; preds = %ptr_ring_consume.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ptr_ring_consume.exit.thread.i

ptr_ring_cleanup.exit:                            ; preds = %ptr_ring_consume.exit.thread.i, %do.end, %__ptr_ring_empty.exit.ptr_ring_cleanup.exit_crit_edge, %land.rhs.ptr_ring_cleanup.exit_crit_edge
  %queue.i28 = getelementptr inbounds %struct.ptr_ring, ptr %queue, i32 0, i32 9
  %35 = ptrtoint ptr %queue.i28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue.i28, align 8
  tail call void @kvfree(ptr noundef %36) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_prev_queue_init(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %empty = getelementptr inbounds %struct.prev_queue, ptr %queue, i32 0, i32 3
  %prev = getelementptr inbounds %struct.prev_queue, ptr %queue, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %prev, align 4
  %tail = getelementptr inbounds %struct.prev_queue, ptr %queue, i32 0, i32 1
  %1 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %empty, ptr %tail, align 4
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %empty, ptr %queue, align 4
  %peeked = getelementptr inbounds %struct.prev_queue, ptr %queue, i32 0, i32 2
  %3 = ptrtoint ptr %peeked to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %peeked, align 4
  %count = getelementptr inbounds %struct.prev_queue, ptr %queue, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #5
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wg_prev_queue_enqueue(ptr noundef %queue, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.prev_queue, ptr %queue, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1024, i32 1, ptr elementtype(i32) %count) #5, !srcloc !24
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 1024
  br i1 %cmp.not.i.i.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !25
  %prev.i = getelementptr inbounds %struct.anon.3, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr null, ptr %prev.i, align 4
  %call.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %queue, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  %2 = ptrtoint ptr %skb to i32
  tail call void @llvm.prefetch.p0(ptr %queue, i32 1, i32 3, i32 1) #5
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %2, ptr %queue) #5, !srcloc !27
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  %4 = inttoptr i32 %asmresult.i.i to ptr
  %prev19.i = getelementptr inbounds %struct.anon.3, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev19.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %skb, ptr %prev19.i, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %6 = xor i1 %cmp.not.i.i.i, true
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wg_prev_queue_dequeue(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tail1 = getelementptr inbounds %struct.prev_queue, ptr %queue, i32 0, i32 1
  %0 = ptrtoint ptr %tail1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail1, align 4
  %prev = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %prev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !28
  %empty = getelementptr inbounds %struct.prev_queue, ptr %queue, i32 0, i32 3
  %cmp = icmp eq ptr %1, %empty
  br i1 %cmp, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %tail1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %tail1, align 4
  %prev13 = getelementptr inbounds %struct.anon.3, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %prev13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %prev13, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  br label %if.end18

if.end18:                                         ; preds = %if.end, %entry.if.end18_crit_edge
  %next.0 = phi ptr [ %6, %if.end ], [ %3, %entry.if.end18_crit_edge ]
  %tail.0 = phi ptr [ %3, %if.end ], [ %1, %entry.if.end18_crit_edge ]
  %tobool19.not = icmp eq ptr %next.0, null
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %tail1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %next.0, ptr %tail1, align 4
  %count = getelementptr inbounds %struct.prev_queue, ptr %queue, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #5
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #5, !srcloc !30
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %queue, align 4
  %cmp27.not = icmp eq ptr %tail.0, %10
  br i1 %cmp27.not, label %if.end29, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %prev.i = getelementptr inbounds %struct.prev_queue, ptr %queue, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr null, ptr %prev.i, align 4
  %call.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %queue, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  %12 = ptrtoint ptr %empty to i32
  tail call void @llvm.prefetch.p0(ptr %queue, i32 1, i32 3, i32 1) #5
  %13 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %12, ptr %queue) #5, !srcloc !27
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  %14 = inttoptr i32 %asmresult.i.i to ptr
  %prev19.i = getelementptr inbounds %struct.anon.3, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev19.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %empty, ptr %prev19.i, align 4
  %prev36 = getelementptr inbounds %struct.anon.3, ptr %tail.0, i32 0, i32 1
  %16 = ptrtoint ptr %prev36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %prev36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !31
  %tobool41.not = icmp eq ptr %17, null
  br i1 %tobool41.not, label %if.end29.cleanup_crit_edge, label %if.then42

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then42:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %tail1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %tail1, align 4
  %count44 = getelementptr inbounds %struct.prev_queue, ptr %queue, i32 0, i32 4
  %call.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count44, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %count44, i32 1, i32 3, i32 1) #5
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count44, ptr %count44, i32 1, ptr elementtype(i32) %count44) #5, !srcloc !30
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end29.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then20, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %tail.0, %if.then20 ], [ %tail.0, %if.then42 ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.end22.cleanup_crit_edge ], [ null, %if.end29.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @wg_packet_percpu_multicore_worker_alloc.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireguard/queueing.c", i32 19, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireguard/queueing.c", i32 44, i32 2}
!5 = !{ptr @ptr_ring_init.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../include/linux/ptr_ring.h", i32 495, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ptr_ring_init.__key.3, !9, !"__key", i1 false, i1 false}
!9 = !{!"../include/linux/ptr_ring.h", i32 496, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{!"branch_weights", i32 4000000, i32 4001}
!23 = !{i64 2148175591}
!24 = !{i64 551512, i64 551537, i64 551559, i64 551575, i64 551587, i64 551607, i64 551631, i64 551647, i64 551659}
!25 = !{i64 2148175779}
!26 = !{i64 2157984345}
!27 = !{i64 682940, i64 682957, i64 682981, i64 683007, i64 683025}
!28 = !{i64 2157990557}
!29 = !{i64 2157996650}
!30 = !{i64 2148178637, i64 2148178663, i64 2148178692, i64 2148178726, i64 2148178757, i64 2148178780}
!31 = !{i64 2158005538}
