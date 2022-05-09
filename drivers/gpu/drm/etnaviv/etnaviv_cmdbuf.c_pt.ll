; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/etnaviv/etnaviv_cmdbuf.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_cmdbuf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.etnaviv_cmdbuf_suballoc = type { ptr, ptr, i32, %struct.mutex, [4 x i32], i32, %struct.wait_queue_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }

@etnaviv_cmdbuf_suballoc_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&suballoc->lock\00", [16 x i8] zeroinitializer }, align 32
@etnaviv_cmdbuf_suballoc_new.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&suballoc->free_event\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/etnaviv/etnaviv_cmdbuf.c\00", [55 x i8] zeroinitializer }, align 32
@etnaviv_cmdbuf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 106, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Timeout waiting for cmdbuf space\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"etnaviv_cmdbuf_init\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@etnaviv_cmdbuf_init._entry_ptr = internal global ptr @etnaviv_cmdbuf_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 44, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 45, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 101, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [44 x i8] c"../drivers/gpu/drm/etnaviv/etnaviv_cmdbuf.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 105, i32 4 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @etnaviv_cmdbuf_init._entry, ptr @etnaviv_cmdbuf_init._entry_ptr, ptr @etnaviv_cmdbuf_suballoc_new.__key, ptr @.str, ptr @etnaviv_cmdbuf_suballoc_new.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_cmdbuf_suballoc_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_cmdbuf_suballoc_new.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_cmdbuf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @etnaviv_cmdbuf_suballoc_new(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 176) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i.i, align 8
  %lock = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @etnaviv_cmdbuf_suballoc_new.__key) #8
  %free_event = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %free_event, ptr noundef nonnull @.str.2, ptr noundef nonnull @etnaviv_cmdbuf_suballoc_new.__key.1) #8
  %paddr = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %call7.i.i, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 524288, ptr noundef %paddr, i32 noundef 3264, i32 noundef 4) #8
  %vaddr = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %vaddr, align 4
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.then12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then12 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_cmdbuf_suballoc_map(ptr nocapture noundef readonly %suballoc, ptr noundef %context, ptr noundef %mapping, i32 noundef %memory_base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %paddr = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %suballoc, i32 0, i32 2
  %0 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %paddr, align 4
  %call = tail call i32 @etnaviv_iommu_get_suballoc_va(ptr noundef %context, ptr noundef %mapping, i32 noundef %memory_base, i32 noundef %1, i32 noundef 524288) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_iommu_get_suballoc_va(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_cmdbuf_suballoc_unmap(ptr noundef %context, ptr noundef %mapping) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @etnaviv_iommu_put_suballoc_va(ptr noundef %context, ptr noundef %mapping) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_put_suballoc_va(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_cmdbuf_suballoc_destroy(ptr noundef %suballoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %suballoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %suballoc, align 4
  %vaddr = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %suballoc, i32 0, i32 1
  %2 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr, align 4
  %paddr = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %suballoc, i32 0, i32 2
  %4 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef 524288, ptr noundef %3, i32 noundef %5, i32 noundef 4) #8
  tail call void @kfree(ptr noundef %suballoc) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_cmdbuf_init(ptr noundef %suballoc, ptr nocapture noundef writeonly %cmdbuf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %suballoc, ptr %cmdbuf, align 4
  %size2 = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %cmdbuf, i32 0, i32 3
  %1 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %size2, align 4
  %add = add i32 %size, 4095
  %div140 = lshr i32 %add, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %add)
  %cmp.i = icmp ugt i32 %add, 8191
  %sub.i141 = add nsw i32 %div140, -1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i141, i1 false) #8, !range !24
  %add.i = sub nuw nsw i32 32, %2
  %cond43 = select i1 %cmp.i, i32 %add.i, i32 0
  %lock = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %suballoc, i32 0, i32 3
  %granule_map = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %suballoc, i32 0, i32 4
  %free_space = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %suballoc, i32 0, i32 5
  %free_event = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %suballoc, i32 0, i32 6
  br label %retry

retry:                                            ; preds = %if.end92.retry_crit_edge, %entry
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call44 = call i32 @bitmap_find_free_region(ptr noundef %granule_map, i32 noundef 128, i32 noundef %cond43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then, label %if.end100

if.then:                                          ; preds = %retry
  %3 = ptrtoint ptr %free_space to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %free_space, align 4
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 103) #8
  %4 = ptrtoint ptr %free_space to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %free_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then61, label %if.then.if.end92_crit_edge

if.then.if.end92_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then61:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call64154 = call i32 @prepare_to_wait_event(ptr noundef %free_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %7 = ptrtoint ptr %free_space to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %free_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool67.not155.not = icmp eq i32 %8, 0
  br i1 %tobool67.not155.not, label %if.then61.if.end85_crit_edge, label %if.then61.for.end_crit_edge

if.then61.for.end_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then61.if.end85_crit_edge:                     ; preds = %if.then61
  br label %if.end85

if.end85:                                         ; preds = %cleanup.if.end85_crit_edge, %if.then61.if.end85_crit_edge
  %__ret62.1158 = phi i32 [ %__ret62.1, %cleanup.if.end85_crit_edge ], [ 1000, %if.then61.if.end85_crit_edge ]
  %call64157 = phi i32 [ %call64, %cleanup.if.end85_crit_edge ], [ %call64154, %if.then61.if.end85_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64157)
  %tobool86.not = icmp eq i32 %call64157, 0
  br i1 %tobool86.not, label %cleanup, label %if.end85.__out_crit_edge

if.end85.__out_crit_edge:                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end85
  %call89 = call i32 @schedule_timeout(i32 noundef %__ret62.1158) #8
  %call64 = call i32 @prepare_to_wait_event(ptr noundef %free_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %9 = ptrtoint ptr %free_space to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %free_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool67.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool72.not = icmp eq i32 %call89, 0
  %spec.store.select107 = select i1 %tobool72.not, i32 1, i32 %call89
  %__ret62.1 = select i1 %tobool67.not, i32 %call89, i32 %spec.store.select107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret62.1)
  %tobool79.not = icmp eq i32 %__ret62.1, 0
  %not.tobool67.not = xor i1 %tobool67.not, true
  %11 = select i1 %not.tobool67.not, i1 true, i1 %tobool79.not
  br i1 %11, label %cleanup.for.end_crit_edge, label %cleanup.if.end85_crit_edge

cleanup.if.end85_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then61.for.end_crit_edge
  %__ret62.1.lcssa = phi i32 [ 1000, %if.then61.for.end_crit_edge ], [ %__ret62.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %free_event, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end, %if.end85.__out_crit_edge
  %__ret62.2144 = phi i32 [ %__ret62.1.lcssa, %for.end ], [ %call64157, %if.end85.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end92

if.end92:                                         ; preds = %__out, %if.then.if.end92_crit_edge
  %__ret.1 = phi i32 [ 1000, %if.then.if.end92_crit_edge ], [ %__ret62.2144, %__out ]
  %tobool94.not = icmp eq i32 %__ret.1, 0
  br i1 %tobool94.not, label %do.end98, label %if.end92.retry_crit_edge

if.end92.retry_crit_edge:                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry

do.end98:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %suballoc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %suballoc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.4) #12
  br label %cleanup104

if.end100:                                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %lock) #8
  %mul = shl i32 %call44, 12
  %suballoc_offset = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %cmdbuf, i32 0, i32 1
  %14 = ptrtoint ptr %suballoc_offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %suballoc_offset, align 4
  %vaddr = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %suballoc, i32 0, i32 1
  %15 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vaddr, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %mul
  %vaddr103 = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %cmdbuf, i32 0, i32 2
  %17 = ptrtoint ptr %vaddr103 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %vaddr103, align 4
  br label %cleanup104

cleanup104:                                       ; preds = %if.end100, %do.end98
  %retval.0 = phi i32 [ -110, %do.end98 ], [ 0, %if.end100 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_cmdbuf_free(ptr nocapture noundef readonly %cmdbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmdbuf, align 4
  %size = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %cmdbuf, i32 0, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %add = add i32 %3, 4095
  %div65 = lshr i32 %add, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %add)
  %cmp.i = icmp ugt i32 %add, 8191
  %sub.i66 = add nsw i32 %div65, -1
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i66, i1 false) #8, !range !24
  %add.i = sub nuw nsw i32 32, %4
  %cond49 = select i1 %cmp.i, i32 %add.i, i32 0
  %lock = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %granule_map = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %1, i32 0, i32 4
  %suballoc_offset = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %cmdbuf, i32 0, i32 1
  %5 = ptrtoint ptr %suballoc_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %suballoc_offset, align 4
  %div50 = sdiv i32 %6, 4096
  tail call void @bitmap_release_region(ptr noundef %granule_map, i32 noundef %div50, i32 noundef %cond49) #8
  %free_space = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %free_space to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %free_space, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %free_event = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %1, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %free_event, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @etnaviv_cmdbuf_get_va(ptr nocapture noundef readonly %buf, ptr nocapture noundef readonly %mapping) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iova = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 7
  %0 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iova, align 4
  %suballoc_offset = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %suballoc_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %suballoc_offset, align 4
  %add = add i32 %3, %1
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @etnaviv_cmdbuf_get_pa(ptr nocapture noundef readonly %buf) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %paddr = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %paddr, align 4
  %suballoc_offset = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %suballoc_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %suballoc_offset, align 4
  %add = add i32 %5, %3
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @etnaviv_cmdbuf_suballoc_new.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_cmdbuf.c", i32 44, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @etnaviv_cmdbuf_suballoc_new.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_cmdbuf.c", i32 45, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_cmdbuf.c", i32 101, i32 9}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_cmdbuf.c", i32 105, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @etnaviv_cmdbuf_init._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @etnaviv_cmdbuf_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i32 0, i32 33}
