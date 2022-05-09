; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vgem/vgem_fence.c_pt.bc'
source_filename = "../drivers/gpu/drm/vgem/vgem_fence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_vgem_fence_attach = type { i32, i32, i32, i32 }
%struct.vgem_fence = type { %struct.dma_fence, %struct.spinlock, %struct.timer_list }
%struct.dma_fence = type { ptr, ptr, %union.anon.71, i64, i64, i32, %struct.kref, i32 }
%union.anon.71 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.vgem_file = type { %struct.idr, %struct.mutex }
%struct.drm_vgem_fence_signal = type { i32, i32 }

@vgem_fence_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&vfile->fence_mutex\00", [44 x i8] zeroinitializer }, align 32
@vgem_fence_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&fence->lock\00", [19 x i8] zeroinitializer }, align 32
@vgem_fence_ops = internal constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @vgem_fence_get_driver_name, ptr @vgem_fence_get_timeline_name, ptr null, ptr null, ptr null, ptr @vgem_fence_release, ptr @vgem_fence_value_str, ptr @vgem_fence_timeline_value_str }, [60 x i8] zeroinitializer }, align 32
@vgem_fence_create.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&fence->timer)\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vgem\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unbound\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 234, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 93, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"vgem_fence_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 68, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 97, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 40, i32 9 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 45, i32 9 }
@___asan_gen_.36 = private constant [37 x i8] c"../drivers/gpu/drm/vgem/vgem_fence.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 58, i32 22 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 378, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @vgem_fence_open.__key, ptr @.str, ptr @vgem_fence_create.__key, ptr @.str.1, ptr @vgem_fence_ops, ptr @vgem_fence_create.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @xa_init_flags.__key, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgem_fence_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgem_fence_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgem_fence_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgem_fence_create.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vgem_fence_attach_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %flags = getelementptr inbounds %struct.drm_vgem_fence_attach, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %tobool.not = icmp ult i32 %3, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pad = getelementptr inbounds %struct.drm_vgem_fence_attach, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %7) #7
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 144) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end6.if.then.i73_crit_edge, label %if.end11

if.end6.if.then.i73_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i73

if.end11:                                         ; preds = %if.end6
  %lock.i = getelementptr inbounds %struct.vgem_fence, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @vgem_fence_create.__key, i16 noundef signext 3) #7
  %call3.i = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #7
  tail call void @dma_fence_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @vgem_fence_ops, ptr noundef %lock.i, i64 noundef %call3.i, i64 noundef 1) #7
  %timer.i = getelementptr inbounds %struct.vgem_fence, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @vgem_fence_timeout, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @vgem_fence_create.__key.2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %9, 1000
  %call8.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #7
  %resv12 = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 9
  %10 = ptrtoint ptr %resv12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resv12, align 8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and14 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15 = icmp ne i32 %and14, 0
  %call16 = tail call zeroext i1 @dma_resv_test_signaled(ptr noundef %11, i1 noundef zeroext %tobool15) #7
  br i1 %call16, label %if.end18, label %if.end11.if.then.i_crit_edge

if.end11.if.then.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end18:                                         ; preds = %if.end11
  %call.i = tail call i32 @ww_mutex_lock(ptr noundef %11, ptr noundef null) #7
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and21 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_resv_add_excl_fence(ptr noundef %11, ptr noundef nonnull %call7.i.i.i) #7
  br label %if.end27

if.else:                                          ; preds = %if.end18
  %call24 = tail call i32 @dma_resv_reserve_shared(ptr noundef %11, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp eq i32 %call24, 0
  br i1 %cmp, label %if.then25, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_resv_add_shared_fence(ptr noundef %11, ptr noundef nonnull %call7.i.i.i) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.else.if.end27_crit_edge, %if.then23
  %ret.0 = phi i32 [ 0, %if.then23 ], [ 0, %if.then25 ], [ %call24, %if.else.if.end27_crit_edge ]
  tail call void @dma_resv_reset_shared_max(ptr noundef %11) #7
  tail call void @ww_mutex_unlock(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp28 = icmp eq i32 %ret.0, 0
  br i1 %cmp28, label %if.then29, label %if.end27.if.then.i_crit_edge

if.end27.if.then.i_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then29:                                        ; preds = %if.end27
  %fence_mutex = getelementptr inbounds %struct.vgem_file, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fence_mutex, i32 noundef 0) #7
  %call30 = tail call i32 @idr_alloc(ptr noundef %1, ptr noundef nonnull %call7.i.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #7
  tail call void @mutex_unlock(ptr noundef %fence_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp32 = icmp sgt i32 %call30, 0
  br i1 %cmp32, label %err_fence.thread77, label %err_fence

err_fence.thread77:                               ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %out_fence = getelementptr inbounds %struct.drm_vgem_fence_attach, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %out_fence to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call30, ptr %out_fence, align 4
  br label %if.then.i73

err_fence:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool36.not = icmp eq i32 %call30, 0
  br i1 %tobool36.not, label %err_fence.if.then.i73_crit_edge, label %err_fence.if.then.i_crit_edge

err_fence.if.then.i_crit_edge:                    ; preds = %err_fence
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

err_fence.if.then.i73_crit_edge:                  ; preds = %err_fence
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i73

if.then.i:                                        ; preds = %err_fence.if.then.i_crit_edge, %if.end27.if.then.i_crit_edge, %if.end11.if.then.i_crit_edge
  %ret.176 = phi i32 [ %call30, %err_fence.if.then.i_crit_edge ], [ -16, %if.end11.if.then.i_crit_edge ], [ %ret.0, %if.end27.if.then.i_crit_edge ]
  %call38 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call7.i.i.i) #7
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call7.i.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then.i73_crit_edge, label %if.then10.i.i.i.i.i, !prof !31

if.end5.i.i.i.i.i.if.then.i73_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i73

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %if.then.i73

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void @dma_fence_release(ptr noundef %refcount.i) #7, !callees !33
  br label %if.then.i73

if.then.i73:                                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then.i73_crit_edge, %err_fence.if.then.i73_crit_edge, %err_fence.thread77, %if.end6.if.then.i73_crit_edge
  %ret.2 = phi i32 [ 0, %err_fence.if.then.i73_crit_edge ], [ 0, %err_fence.thread77 ], [ %ret.176, %if.end5.i.i.i.i.i.if.then.i73_crit_edge ], [ %ret.176, %if.then10.i.i.i.i.i ], [ %ret.176, %if.then.i.i ], [ -12, %if.end6.if.then.i73_crit_edge ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #7
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !31

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #7
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #7, !callees !33
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -2, %if.end3.cleanup_crit_edge ], [ %ret.2, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.2, %if.then10.i.i.i.i.i.i ], [ %ret.2, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_resv_test_signaled(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vgem_fence_signal_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_vgem_fence_signal, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %fence_mutex = getelementptr inbounds %struct.vgem_file, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fence_mutex, i32 noundef 0) #7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %call = tail call ptr @idr_replace(ptr noundef %3, ptr noundef null, i32 noundef %5) #7
  tail call void @mutex_unlock(ptr noundef %fence_mutex) #7
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.if.then.i_crit_edge

if.end9.if.then.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.i:                                         ; preds = %if.end9
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.end.i.if.then.i_crit_edge, label %land.lhs.true.i

if.end.i.if.then.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %12(ptr noundef nonnull %call) #7
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef nonnull %call) #7
  br label %if.then.i

if.then.i:                                        ; preds = %if.then5.i, %land.lhs.true.i.if.then.i_crit_edge, %if.end.i.if.then.i_crit_edge, %if.end9.if.then.i_crit_edge
  %13 = phi i32 [ 0, %if.end.i.if.then.i_crit_edge ], [ 0, %land.lhs.true.i.if.then.i_crit_edge ], [ -110, %if.then5.i ], [ -110, %if.end9.if.then.i_crit_edge ]
  %call13 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call) #7
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !31

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void @dma_fence_release(ptr noundef %refcount.i) #7, !callees !33
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then7 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %13, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %13, %if.then10.i.i.i.i.i ], [ %13, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vgem_fence_open(ptr noundef %vfile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fence_mutex = getelementptr inbounds %struct.vgem_file, ptr %vfile, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %fence_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @vgem_fence_open.__key) #7
  tail call void @__raw_spin_lock_init(ptr noundef %vfile, ptr noundef nonnull @.str.7, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i = getelementptr inbounds %struct.xarray, ptr %vfile, i32 0, i32 1
  %0 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 67108868, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.xarray, ptr %vfile, i32 0, i32 2
  %1 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xa_head.i.i, align 4
  %idr_base.i = getelementptr inbounds %struct.idr, ptr %vfile, i32 0, i32 1
  %2 = ptrtoint ptr %idr_base.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %idr_base.i, align 4
  %idr_next.i = getelementptr inbounds %struct.idr, ptr %vfile, i32 0, i32 2
  %3 = ptrtoint ptr %idr_next.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %idr_next.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vgem_fence_close(ptr noundef %vfile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @idr_for_each(ptr noundef %vfile, ptr noundef nonnull @__vgem_fence_idr_fini, ptr noundef %vfile) #7
  tail call void @idr_destroy(ptr noundef %vfile) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__vgem_fence_idr_fini(i32 noundef %id, ptr noundef %p, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dma_fence_signal(ptr noundef %p) #7
  %tobool.not.i = icmp eq ptr %p, null
  br i1 %tobool.not.i, label %entry.dma_fence_put.exit_crit_edge, label %if.then.i

entry.dma_fence_put.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %p, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !31

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void @dma_fence_release(ptr noundef %refcount.i) #7, !callees !33
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %entry.dma_fence_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vgem_fence_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -92
  %call = tail call i32 @dma_fence_signal(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @vgem_fence_get_driver_name(ptr nocapture noundef readnone %fence) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @vgem_fence_get_timeline_name(ptr nocapture noundef readnone %fence) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vgem_fence_release(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.vgem_fence, ptr %base, i32 0, i32 2
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #7
  tail call void @dma_fence_free(ptr noundef %base) #7
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vgem_fence_value_str(ptr nocapture noundef readonly %fence, ptr nocapture noundef writeonly %str, i32 noundef %size) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 4
  %0 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %seqno, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.6, i64 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vgem_fence_timeline_value_str(ptr noundef %fence, ptr nocapture noundef writeonly %str, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 5
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cond.true_crit_edge

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true

if.end.i:                                         ; preds = %entry
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.cond.end_crit_edge, label %land.lhs.true.i

if.end.i.cond.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %5(ptr noundef %fence) #7
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.cond.end_crit_edge

land.lhs.true.i.cond.end_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %fence) #7
  br label %cond.true

cond.true:                                        ; preds = %if.then5.i, %entry.cond.true_crit_edge
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 4
  %6 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %seqno, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.i.cond.end_crit_edge, %if.end.i.cond.end_crit_edge
  %cond = phi i64 [ %7, %cond.true ], [ 0, %if.end.i.cond.end_crit_edge ], [ 0, %land.lhs.true.i.cond.end_crit_edge ]
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.6, i64 noundef %cond)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @vgem_fence_open.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vgem/vgem_fence.c", i32 234, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @vgem_fence_create.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/vgem/vgem_fence.c", i32 93, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vgem_fence_create.__key.2, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vgem/vgem_fence.c", i32 97, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @vgem_fence_ops, !10, !"vgem_fence_ops", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/vgem/vgem_fence.c", i32 68, i32 35}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/vgem/vgem_fence.c", i32 40, i32 9}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/vgem/vgem_fence.c", i32 45, i32 9}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/vgem/vgem_fence.c", i32 58, i32 22}
!17 = !{ptr @xa_init_flags.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2148545463}
!30 = !{i64 2148459927, i64 2148459959, i64 2148459988, i64 2148460022, i64 2148460053, i64 2148460076}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2150171477}
!33 = !{ptr @dma_fence_release, ptr @drm_gem_object_free}
