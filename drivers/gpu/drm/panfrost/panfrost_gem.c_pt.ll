; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panfrost/panfrost_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.panfrost_gem_object = type { %struct.drm_gem_shmem_object, ptr, %struct.anon.90, %struct.atomic_t, i8 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.90 = type { %struct.list_head, %struct.mutex }
%struct.atomic_t = type { i32 }
%struct.panfrost_file_priv = type { ptr, [3 x %struct.drm_sched_entity], ptr }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.panfrost_gem_mapping = type { %struct.list_head, %struct.kref, ptr, %struct.drm_mm_node, ptr, i8 }
%struct.panfrost_mmu = type { ptr, %struct.kref, %struct.io_pgtable_cfg, ptr, %struct.drm_mm, %struct.spinlock, i32, %struct.atomic_t, %struct.list_head }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.92 }
%union.anon.92 = type { %struct.anon.99 }
%struct.anon.99 = type { [4 x i64], i32 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.91, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.anon.91 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/panfrost/panfrost_gem.c\00", [56 x i8] zeroinitializer }, align 32
@panfrost_gem_create_object.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&obj->mappings.lock\00", [44 x i8] zeroinitializer }, align 32
@panfrost_gem_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @panfrost_gem_free_object, ptr @panfrost_gem_open, ptr @panfrost_gem_close, ptr @drm_gem_shmem_object_print_info, ptr null, ptr @panfrost_gem_pin, ptr @drm_gem_shmem_object_unpin, ptr @drm_gem_shmem_object_get_sg_table, ptr @drm_gem_shmem_object_vmap, ptr @drm_gem_shmem_object_vunmap, ptr @drm_gem_shmem_object_mmap, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@panfrost_gem_free_object.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 159, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 229, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"panfrost_gem_funcs\00", align 1
@___asan_gen_.12 = private constant [43 x i8] c"../drivers/gpu/drm/panfrost/panfrost_gem.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 198, i32 42 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @panfrost_gem_create_object.__key, ptr @.str.1, ptr @panfrost_gem_funcs], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gem_create_object.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gem_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @panfrost_gem_mapping_get(ptr noundef %bo, ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mappings = getelementptr inbounds %struct.panfrost_gem_object, ptr %bo, i32 0, i32 2
  %lock = getelementptr inbounds %struct.panfrost_gem_object, ptr %bo, i32 0, i32 2, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %mmu4 = getelementptr inbounds %struct.panfrost_file_priv, ptr %priv, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %iter.0.in = phi ptr [ %mappings, %entry ], [ %iter.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %iter.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %iter.0 = load ptr, ptr %iter.0.in, align 4
  %cmp.not = icmp eq ptr %iter.0, %mappings
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %mmu = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %iter.0, i32 0, i32 4
  %1 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmu, align 8
  %3 = ptrtoint ptr %mmu4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmu4, align 8
  %cmp5 = icmp eq ptr %2, %4
  br i1 %cmp5, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then:                                          ; preds = %for.body
  %refcount = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %iter.0, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #5
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #5, !srcloc !18
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !19

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.for.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.for.end_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #5
  br label %for.end

for.end:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.for.end_crit_edge, %for.cond.for.end_crit_edge
  %mapping.0 = phi ptr [ %iter.0, %if.else.i.i.i.i.for.end_crit_edge ], [ %iter.0, %if.end15.sink.split.i.i.i.i ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret ptr %mapping.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_gem_mapping_put(ptr noundef %mapping) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mapping, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #5, !srcloc !22
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !20

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #5
  br label %return

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !23
  %active.i.i = getelementptr %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 5
  %1 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i.i = load i8, ptr %active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %bf.cast.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %bf.cast.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @panfrost_mmu_unmap(ptr noundef nonnull %mapping) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %mmu.i.i = getelementptr %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 4
  %2 = ptrtoint ptr %mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu.i.i, align 8
  %mm_lock.i.i = getelementptr inbounds %struct.panfrost_mmu, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %mm_lock.i.i) #5
  %flags.i.i.i = getelementptr %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 3, i32 12
  %4 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i.i, align 4
  %and1.i.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i.panfrost_gem_teardown_mapping.exit.i_crit_edge, label %if.then1.i.i

if.end.i.i.panfrost_gem_teardown_mapping.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %panfrost_gem_teardown_mapping.exit.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mmnode.i.i = getelementptr %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 3
  tail call void @drm_mm_remove_node(ptr noundef %mmnode.i.i) #5
  br label %panfrost_gem_teardown_mapping.exit.i

panfrost_gem_teardown_mapping.exit.i:             ; preds = %if.then1.i.i, %if.end.i.i.panfrost_gem_teardown_mapping.exit.i_crit_edge
  %6 = ptrtoint ptr %mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmu.i.i, align 8
  %mm_lock5.i.i = getelementptr inbounds %struct.panfrost_mmu, ptr %7, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %mm_lock5.i.i) #5
  %obj.i = getelementptr %struct.panfrost_gem_mapping, ptr %mapping, i32 0, i32 2
  %8 = ptrtoint ptr %obj.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %obj.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %panfrost_gem_teardown_mapping.exit.i.panfrost_gem_mapping_release.exit_crit_edge, label %if.then.i5.i

panfrost_gem_teardown_mapping.exit.i.panfrost_gem_mapping_release.exit_crit_edge: ; preds = %panfrost_gem_teardown_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %panfrost_gem_mapping_release.exit

if.then.i5.i:                                     ; preds = %panfrost_gem_teardown_mapping.exit.i
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %9, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr nonnull %9, i32 1, i32 3, i32 1) #5
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #5, !srcloc !22
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.panfrost_gem_mapping_release.exit_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !20

if.end5.i.i.i.i.i.i.i.panfrost_gem_mapping_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %panfrost_gem_mapping_release.exit

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #5
  br label %panfrost_gem_mapping_release.exit

if.then.i.i.i.i:                                  ; preds = %if.then.i5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @drm_gem_object_free(ptr noundef nonnull %9) #5, !callees !24
  br label %panfrost_gem_mapping_release.exit

panfrost_gem_mapping_release.exit:                ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.panfrost_gem_mapping_release.exit_crit_edge, %panfrost_gem_teardown_mapping.exit.i.panfrost_gem_mapping_release.exit_crit_edge
  %11 = ptrtoint ptr %mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmu.i.i, align 8
  tail call void @panfrost_mmu_ctx_put(ptr noundef %12) #5
  tail call void @kfree(ptr noundef nonnull %mapping) #5
  br label %return

return:                                           ; preds = %panfrost_gem_mapping_release.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_gem_teardown_mappings_locked(ptr noundef readonly %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mappings = getelementptr inbounds %struct.panfrost_gem_object, ptr %bo, i32 0, i32 2
  %0 = ptrtoint ptr %mappings to i32
  call void @__asan_load4_noabort(i32 %0)
  %mapping.011 = load ptr, ptr %mappings, align 4
  %cmp.not12 = icmp eq ptr %mapping.011, %mappings
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %panfrost_gem_teardown_mapping.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %mapping.013 = phi ptr [ %mapping.0, %panfrost_gem_teardown_mapping.exit.for.body_crit_edge ], [ %mapping.011, %entry.for.body_crit_edge ]
  %active.i = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping.013, i32 0, i32 5
  %1 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @panfrost_mmu_unmap(ptr noundef %mapping.013) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %mmu.i = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping.013, i32 0, i32 4
  %2 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu.i, align 8
  %mm_lock.i = getelementptr inbounds %struct.panfrost_mmu, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %mm_lock.i) #5
  %flags.i.i = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping.013, i32 0, i32 3, i32 12
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i.panfrost_gem_teardown_mapping.exit_crit_edge, label %if.then1.i

if.end.i.panfrost_gem_teardown_mapping.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %panfrost_gem_teardown_mapping.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %mmnode.i = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %mapping.013, i32 0, i32 3
  tail call void @drm_mm_remove_node(ptr noundef %mmnode.i) #5
  br label %panfrost_gem_teardown_mapping.exit

panfrost_gem_teardown_mapping.exit:               ; preds = %if.then1.i, %if.end.i.panfrost_gem_teardown_mapping.exit_crit_edge
  %6 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmu.i, align 8
  %mm_lock5.i = getelementptr inbounds %struct.panfrost_mmu, ptr %7, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %mm_lock5.i) #5
  %8 = ptrtoint ptr %mapping.013 to i32
  call void @__asan_load4_noabort(i32 %8)
  %mapping.0 = load ptr, ptr %mapping.013, align 4
  %cmp.not = icmp eq ptr %mapping.0, %mappings
  br i1 %cmp.not, label %panfrost_gem_teardown_mapping.exit.for.end_crit_edge, label %panfrost_gem_teardown_mapping.exit.for.body_crit_edge

panfrost_gem_teardown_mapping.exit.for.body_crit_edge: ; preds = %panfrost_gem_teardown_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

panfrost_gem_teardown_mapping.exit.for.end_crit_edge: ; preds = %panfrost_gem_teardown_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %panfrost_gem_teardown_mapping.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_gem_open(ptr noundef %obj, ptr nocapture noundef readonly %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %size1 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size1, align 8
  %noexec = getelementptr inbounds %struct.panfrost_gem_object, ptr %obj, i32 0, i32 4
  %2 = ptrtoint ptr %noexec to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %noexec, align 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  %3 = zext i8 %bf.load.lobit to i32
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %4 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 136) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %refcount = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #5
  %9 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %refcount, align 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %obj, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %obj, i32 1, i32 3, i32 1) #5
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %obj, ptr %obj, i32 1, ptr elementtype(i32) %obj) #5, !srcloc !18
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !19

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_gem_object_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %obj, i32 noundef %.sink.i.i.i.i.i) #5
  br label %drm_gem_object_get.exit

drm_gem_object_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge
  %obj3 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %obj3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %obj, ptr %obj3, align 4
  %13 = ptrtoint ptr %noexec to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load5 = load i8, ptr %noexec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %1)
  %cmp = icmp ugt i32 %1, 2097151
  %cond10 = select i1 %cmp, i32 512, i32 0
  %shr = lshr i32 %1, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load5)
  %bf.cast7.not100 = icmp slt i8 %bf.load5, 0
  %align.0.in = select i1 %bf.cast7.not100, i32 %cond10, i32 %shr
  %align.0 = zext i32 %align.0.in to i64
  %mmu = getelementptr inbounds %struct.panfrost_file_priv, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmu, align 8
  %call13 = tail call ptr @panfrost_mmu_ctx_get(ptr noundef %15) #5
  %mmu14 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %mmu14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call13, ptr %mmu14, align 8
  %mm_lock = getelementptr inbounds %struct.panfrost_mmu, ptr %call13, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %mm_lock) #5
  %17 = ptrtoint ptr %mmu14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmu14, align 8
  %mm = getelementptr inbounds %struct.panfrost_mmu, ptr %18, i32 0, i32 4
  %mmnode = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %call7.i.i, i32 0, i32 3
  %conv18 = zext i32 %shr to i64
  %call.i = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %mm, ptr noundef %mmnode, i64 noundef %conv18, i64 noundef %align.0, i32 noundef %3, i64 noundef 0, i64 noundef -1, i32 noundef 0) #5
  %19 = ptrtoint ptr %mmu14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmu14, align 8
  %mm_lock21 = getelementptr inbounds %struct.panfrost_mmu, ptr %20, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %mm_lock21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end24, label %drm_gem_object_get.exit.if.then62_crit_edge

drm_gem_object_get.exit.if.then62_crit_edge:      ; preds = %drm_gem_object_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then62

if.end24:                                         ; preds = %drm_gem_object_get.exit
  %21 = ptrtoint ptr %noexec to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load25 = load i8, ptr %noexec, align 4
  %22 = and i8 %bf.load25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %bf.cast27.not = icmp eq i8 %22, 0
  br i1 %bf.cast27.not, label %if.then28, label %if.end24.if.end33_crit_edge

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then28:                                        ; preds = %if.end24
  %call29 = tail call i32 @panfrost_mmu_map(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end33_crit_edge, label %if.then28.if.then62_crit_edge

if.then28.if.then62_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then62

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end33:                                         ; preds = %if.then28.if.end33_crit_edge, %if.end24.if.end33_crit_edge
  %mappings = getelementptr inbounds %struct.panfrost_gem_object, ptr %obj, i32 0, i32 2
  %lock = getelementptr inbounds %struct.panfrost_gem_object, ptr %obj, i32 0, i32 2, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %madv = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %obj, i32 0, i32 4
  %23 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %madv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp34.not = icmp eq i32 %24, 0
  br i1 %cmp34.not, label %if.end33.if.end50_crit_edge, label %do.end, !prof !20

if.end33.if.end50_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 9, ptr noundef null) #5
  br label %if.end50

if.end50:                                         ; preds = %do.end, %if.end33.if.end50_crit_edge
  %prev.i96 = getelementptr inbounds %struct.panfrost_gem_object, ptr %obj, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i96, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %26, ptr noundef %mappings) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end50.err_crit_edge

if.end50.err_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end.i.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %prev.i96, align 4
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mappings, ptr %call7.i.i, align 8
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call7.i.i, ptr %26, align 4
  br label %err

err:                                              ; preds = %if.end.i.i, %if.end50.err_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

if.then62:                                        ; preds = %if.then28.if.then62_crit_edge, %drm_gem_object_get.exit.if.then62_crit_edge
  %ret.1.ph = phi i32 [ %call29, %if.then28.if.then62_crit_edge ], [ %call.i, %drm_gem_object_get.exit.if.then62_crit_edge ]
  tail call void @panfrost_gem_mapping_put(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.1.ph, %if.then62 ], [ 0, %err ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_mmu_ctx_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_mmu_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_gem_close(ptr noundef %obj, ptr nocapture noundef readonly %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %mappings = getelementptr inbounds %struct.panfrost_gem_object, ptr %obj, i32 0, i32 2
  %lock = getelementptr inbounds %struct.panfrost_gem_object, ptr %obj, i32 0, i32 2, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %mmu4 = getelementptr inbounds %struct.panfrost_file_priv, ptr %1, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %iter.0.in = phi ptr [ %mappings, %entry ], [ %iter.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %iter.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %iter.0 = load ptr, ptr %iter.0.in, align 4
  %cmp.not = icmp eq ptr %iter.0, %mappings
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %mmu = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %iter.0, i32 0, i32 4
  %3 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmu, align 8
  %5 = ptrtoint ptr %mmu4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmu4, align 8
  %cmp5 = icmp eq ptr %4, %6
  br i1 %cmp5, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iter.0) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %iter.0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %iter.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iter.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %13 = ptrtoint ptr %iter.0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %iter.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %iter.0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  %mapping.0 = phi ptr [ %iter.0, %list_del.exit ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  tail call void @panfrost_gem_mapping_put(ptr noundef %mapping.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @panfrost_gem_create_object(ptr nocapture noundef readonly %dev, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 688) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mappings = getelementptr inbounds %struct.panfrost_gem_object, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %mappings to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %mappings, ptr %mappings, align 4
  %prev.i = getelementptr inbounds %struct.panfrost_gem_object, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mappings, ptr %prev.i, align 8
  %lock = getelementptr inbounds %struct.panfrost_gem_object, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @panfrost_gem_create_object.__key) #5
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 11
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @panfrost_gem_funcs, ptr %funcs, align 4
  %coherent = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %coherent to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %coherent, align 8, !range !25
  %map_wc = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %call7.i.i, i32 0, i32 11
  %8 = xor i8 %7, 1
  %9 = ptrtoint ptr %map_wc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %map_wc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @panfrost_gem_create_with_handle(ptr noundef %file_priv, ptr noundef %dev, i32 noundef %size, i32 noundef %flags, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add = add i32 %size, 2097151
  %div40 = and i32 %add, -2097152
  %size.addr.0 = select i1 %tobool.not, i32 %size, i32 %div40
  %call = tail call ptr @drm_gem_shmem_create(ptr noundef %dev, i32 noundef %size.addr.0) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %entry
  %noexec = getelementptr inbounds %struct.panfrost_gem_object, ptr %call, i32 0, i32 4
  %0 = trunc i32 %flags to i8
  %1 = ptrtoint ptr %noexec to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %noexec, align 4
  %bf.shl = shl i8 %0, 7
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %2 = trunc i32 %and to i8
  %bf.shl15 = shl nuw nsw i8 %2, 5
  %bf.set17 = or i8 %bf.set, %bf.shl15
  store i8 %bf.set17, ptr %noexec, align 4
  %call20 = tail call i32 @drm_gem_handle_create(ptr noundef %file_priv, ptr noundef %call, ptr noundef %handle) #5
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end4.drm_gem_object_put.exit_crit_edge, label %if.then.i

if.end4.drm_gem_object_put.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %if.end4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #5
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #5, !srcloc !22
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !20

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #5
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #5, !callees !24
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.end4.drm_gem_object_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool22.not = icmp eq i32 %call20, 0
  %4 = inttoptr i32 %call20 to ptr
  %spec.select = select i1 %tobool22.not, ptr %call, ptr %4
  br label %cleanup

cleanup:                                          ; preds = %drm_gem_object_put.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ %spec.select, %drm_gem_object_put.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @panfrost_gem_prime_import_sg_table(ptr noundef %dev, ptr noundef %attach, ptr noundef %sgt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_gem_shmem_prime_import_sg_table(ptr noundef %dev, ptr noundef %attach, ptr noundef %sgt) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %noexec = getelementptr inbounds %struct.panfrost_gem_object, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %noexec to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %noexec, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %noexec, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_mmu_ctx_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_mmu_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panfrost_gem_free_object(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %shrinker_lock = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %shrinker_lock, i32 noundef 0) #5
  %madv_list = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %obj, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %madv_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %obj, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %madv_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %madv_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %madv_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %madv_list, ptr %madv_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %obj, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %madv_list, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef %shrinker_lock) #5
  %mappings = getelementptr inbounds %struct.panfrost_gem_object, ptr %obj, i32 0, i32 2
  %12 = ptrtoint ptr %mappings to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %mappings, align 4
  %cmp.i.not = icmp eq ptr %13, %mappings
  br i1 %cmp.i.not, label %list_del_init.exit.if.end31_crit_edge, label %land.rhs

list_del_init.exit.if.end31_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

land.rhs:                                         ; preds = %list_del_init.exit
  %.b73 = load i1, ptr @panfrost_gem_free_object.__already_done, align 1
  br i1 %.b73, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !20

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @panfrost_gem_free_object.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %list_del_init.exit.if.end31_crit_edge
  %sgts = getelementptr inbounds %struct.panfrost_gem_object, ptr %obj, i32 0, i32 1
  %14 = ptrtoint ptr %sgts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sgts, align 8
  %tobool39.not = icmp eq ptr %15, null
  br i1 %tobool39.not, label %if.end31.if.end53_crit_edge, label %if.then40

if.end31.if.end53_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then40:                                        ; preds = %if.end31
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %17)
  %cmp74.not = icmp ult i32 %17, 2097152
  br i1 %cmp74.not, label %if.then40.for.end_crit_edge, label %for.body.preheader

if.then40.for.end_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %if.then40
  %div72 = lshr i32 %17, 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.075 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %18 = ptrtoint ptr %sgts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sgts, align 8
  %arrayidx = getelementptr %struct.sg_table, ptr %19, i32 %i.075
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool44.not = icmp eq ptr %21, null
  br i1 %tobool44.not, label %for.body.for.inc_crit_edge, label %if.then45

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then45:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  %orig_nents.i = getelementptr %struct.sg_table, ptr %19, i32 %i.075, i32 2
  %24 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %23, ptr noundef nonnull %21, i32 noundef %25, i32 noundef 0, i32 noundef 0) #5
  %26 = ptrtoint ptr %sgts to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sgts, align 8
  %arrayidx50 = getelementptr %struct.sg_table, ptr %27, i32 %i.075
  tail call void @sg_free_table(ptr noundef %arrayidx50) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then45, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %div72
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then40.for.end_crit_edge
  %28 = ptrtoint ptr %sgts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sgts, align 8
  tail call void @kvfree(ptr noundef %29) #5
  br label %if.end53

if.end53:                                         ; preds = %for.end, %if.end31.if.end53_crit_edge
  tail call void @drm_gem_shmem_free(ptr noundef %obj) #5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_print_info(ptr noundef %p, i32 noundef %indent, ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_gem_shmem_print_info(ptr noundef %obj, ptr noundef %p, i32 noundef %indent) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_gem_pin(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %is_heap = getelementptr inbounds %struct.panfrost_gem_object, ptr %obj, i32 0, i32 4
  %0 = ptrtoint ptr %is_heap to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_heap, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @drm_gem_shmem_pin(ptr noundef %obj) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_unpin(ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_gem_shmem_unpin(ptr noundef %obj) #5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @drm_gem_shmem_object_get_sg_table(ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @drm_gem_shmem_get_sg_table(ptr noundef %obj) #5
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_gem_shmem_object_vmap(ptr noundef %obj, ptr noundef %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @drm_gem_shmem_vmap(ptr noundef %obj, ptr noundef %map) #5
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_vunmap(ptr noundef %obj, ptr noundef %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_gem_shmem_vunmap(ptr noundef %obj, ptr noundef %map) #5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_gem_shmem_object_mmap(ptr noundef %obj, ptr noundef %vma) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @drm_gem_shmem_mmap(ptr noundef %obj, ptr noundef %vma) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_print_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_pin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_get_sg_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_vmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_mmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panfrost/panfrost_gem.c", i32 159, i32 2}
!2 = !{ptr @panfrost_gem_create_object.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/panfrost/panfrost_gem.c", i32 229, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @panfrost_gem_funcs, !6, !"panfrost_gem_funcs", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panfrost/panfrost_gem.c", i32 198, i32 42}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panfrost/panfrost_gem.c", i32 36, i32 2}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2148587543, i64 2148587575, i64 2148587604, i64 2148587638, i64 2148587669, i64 2148587692}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148675568}
!22 = !{i64 2148590008, i64 2148590040, i64 2148590069, i64 2148590103, i64 2148590134, i64 2148590157}
!23 = !{i64 2149873341}
!24 = distinct !{ptr @drm_gem_object_free, null}
!25 = !{i8 0, i8 2}
