; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_dma.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.73 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_buf_entry = type { i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_dma_handle = type { i32, ptr, i32 }
%struct.drm_buf = type { i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.drm_device_dma = type { [23 x %struct.drm_buf_entry], i32, ptr, i32, i32, ptr, i32, i32 }

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"order %d: buf_count = %d, seg_count = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [29 x i8] c"../drivers/gpu/drm/drm_dma.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 97, i32 4 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_dma_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %5, %3
  %6 = and i32 %and.i.i, 603979776
  call void @__sanitizer_cov_trace_const_cmp4(i32 603979776, i32 %6)
  %.not = icmp eq i32 %6, 603979776
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf_use = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 49
  %7 = ptrtoint ptr %buf_use to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %buf_use, align 4
  %buf_alloc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 50
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc, i32 noundef 4) #5
  %8 = ptrtoint ptr %buf_alloc to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %buf_alloc, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 764) #8
  %dma = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %dma, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma, align 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 32)
  %14 = load ptr, ptr %dma, align 4
  %arrayidx.1 = getelementptr [23 x %struct.drm_buf_entry], ptr %14, i32 0, i32 1
  %15 = call ptr @memset(ptr %arrayidx.1, i32 0, i32 32)
  %16 = load ptr, ptr %dma, align 4
  %arrayidx.2 = getelementptr [23 x %struct.drm_buf_entry], ptr %16, i32 0, i32 2
  %17 = call ptr @memset(ptr %arrayidx.2, i32 0, i32 32)
  %18 = load ptr, ptr %dma, align 4
  %arrayidx.3 = getelementptr [23 x %struct.drm_buf_entry], ptr %18, i32 0, i32 3
  %19 = call ptr @memset(ptr %arrayidx.3, i32 0, i32 32)
  %20 = load ptr, ptr %dma, align 4
  %arrayidx.4 = getelementptr [23 x %struct.drm_buf_entry], ptr %20, i32 0, i32 4
  %21 = call ptr @memset(ptr %arrayidx.4, i32 0, i32 32)
  %22 = load ptr, ptr %dma, align 4
  %arrayidx.5 = getelementptr [23 x %struct.drm_buf_entry], ptr %22, i32 0, i32 5
  %23 = call ptr @memset(ptr %arrayidx.5, i32 0, i32 32)
  %24 = load ptr, ptr %dma, align 4
  %arrayidx.6 = getelementptr [23 x %struct.drm_buf_entry], ptr %24, i32 0, i32 6
  %25 = call ptr @memset(ptr %arrayidx.6, i32 0, i32 32)
  %26 = load ptr, ptr %dma, align 4
  %arrayidx.7 = getelementptr [23 x %struct.drm_buf_entry], ptr %26, i32 0, i32 7
  %27 = call ptr @memset(ptr %arrayidx.7, i32 0, i32 32)
  %28 = load ptr, ptr %dma, align 4
  %arrayidx.8 = getelementptr [23 x %struct.drm_buf_entry], ptr %28, i32 0, i32 8
  %29 = call ptr @memset(ptr %arrayidx.8, i32 0, i32 32)
  %30 = load ptr, ptr %dma, align 4
  %arrayidx.9 = getelementptr [23 x %struct.drm_buf_entry], ptr %30, i32 0, i32 9
  %31 = call ptr @memset(ptr %arrayidx.9, i32 0, i32 32)
  %32 = load ptr, ptr %dma, align 4
  %arrayidx.10 = getelementptr [23 x %struct.drm_buf_entry], ptr %32, i32 0, i32 10
  %33 = call ptr @memset(ptr %arrayidx.10, i32 0, i32 32)
  %34 = load ptr, ptr %dma, align 4
  %arrayidx.11 = getelementptr [23 x %struct.drm_buf_entry], ptr %34, i32 0, i32 11
  %35 = call ptr @memset(ptr %arrayidx.11, i32 0, i32 32)
  %36 = load ptr, ptr %dma, align 4
  %arrayidx.12 = getelementptr [23 x %struct.drm_buf_entry], ptr %36, i32 0, i32 12
  %37 = call ptr @memset(ptr %arrayidx.12, i32 0, i32 32)
  %38 = load ptr, ptr %dma, align 4
  %arrayidx.13 = getelementptr [23 x %struct.drm_buf_entry], ptr %38, i32 0, i32 13
  %39 = call ptr @memset(ptr %arrayidx.13, i32 0, i32 32)
  %40 = load ptr, ptr %dma, align 4
  %arrayidx.14 = getelementptr [23 x %struct.drm_buf_entry], ptr %40, i32 0, i32 14
  %41 = call ptr @memset(ptr %arrayidx.14, i32 0, i32 32)
  %42 = load ptr, ptr %dma, align 4
  %arrayidx.15 = getelementptr [23 x %struct.drm_buf_entry], ptr %42, i32 0, i32 15
  %43 = call ptr @memset(ptr %arrayidx.15, i32 0, i32 32)
  %44 = load ptr, ptr %dma, align 4
  %arrayidx.16 = getelementptr [23 x %struct.drm_buf_entry], ptr %44, i32 0, i32 16
  %45 = call ptr @memset(ptr %arrayidx.16, i32 0, i32 32)
  %46 = load ptr, ptr %dma, align 4
  %arrayidx.17 = getelementptr [23 x %struct.drm_buf_entry], ptr %46, i32 0, i32 17
  %47 = call ptr @memset(ptr %arrayidx.17, i32 0, i32 32)
  %48 = load ptr, ptr %dma, align 4
  %arrayidx.18 = getelementptr [23 x %struct.drm_buf_entry], ptr %48, i32 0, i32 18
  %49 = call ptr @memset(ptr %arrayidx.18, i32 0, i32 32)
  %50 = load ptr, ptr %dma, align 4
  %arrayidx.19 = getelementptr [23 x %struct.drm_buf_entry], ptr %50, i32 0, i32 19
  %51 = call ptr @memset(ptr %arrayidx.19, i32 0, i32 32)
  %52 = load ptr, ptr %dma, align 4
  %arrayidx.20 = getelementptr [23 x %struct.drm_buf_entry], ptr %52, i32 0, i32 20
  %53 = call ptr @memset(ptr %arrayidx.20, i32 0, i32 32)
  %54 = load ptr, ptr %dma, align 4
  %arrayidx.21 = getelementptr [23 x %struct.drm_buf_entry], ptr %54, i32 0, i32 21
  %55 = call ptr @memset(ptr %arrayidx.21, i32 0, i32 32)
  %56 = load ptr, ptr %dma, align 4
  %arrayidx.22 = getelementptr [23 x %struct.drm_buf_entry], ptr %56, i32 0, i32 22
  %57 = call ptr @memset(ptr %arrayidx.22, i32 0, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_dma_takedown(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %7, %5
  %and2.i.i = and i32 %and.i.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %and2.i.i109 = and i32 %and.i.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i109)
  %cmp.i.i110 = icmp eq i32 %and2.i.i109, 0
  %tobool.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp.i.i110, i1 true, i1 %tobool.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %dev27 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc54.for.body_crit_edge, %for.cond.preheader
  %i.0115 = phi i32 [ 0, %for.cond.preheader ], [ %inc55, %for.inc54.for.body_crit_edge ]
  %seg_count = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %i.0115, i32 3
  %8 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %for.body.if.end32_crit_edge, label %if.then6

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then6:                                         ; preds = %for.body
  %buf_count = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %i.0115, i32 1
  %10 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_count, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %i.0115, i32 noundef %11, i32 noundef %9) #5
  %12 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16111 = icmp sgt i32 %13, 0
  br i1 %cmp16111, label %for.body17.lr.ph, label %if.then6.for.end_crit_edge

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body17.lr.ph:                                 ; preds = %if.then6
  %seglist = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %i.0115, i32 5
  br label %for.body17

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %for.body17.lr.ph
  %j.0112 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc, %for.inc.for.body17_crit_edge ]
  %14 = ptrtoint ptr %seglist to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %seglist, align 4
  %arrayidx20 = getelementptr ptr, ptr %15, i32 %j.0112
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %17, null
  br i1 %tobool21.not, label %for.body17.for.inc_crit_edge, label %if.then22

for.body17.for.inc_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then22:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev27, align 4
  %size = getelementptr inbounds %struct.drm_dma_handle, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %vaddr = getelementptr inbounds %struct.drm_dma_handle, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vaddr, align 4
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %17, align 4
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef %21, ptr noundef %23, i32 noundef %25, i32 noundef 0) #5
  tail call void @kfree(ptr noundef nonnull %17) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %for.body17.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0112, 1
  %26 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %seg_count, align 4
  %cmp16 = icmp slt i32 %inc, %27
  br i1 %cmp16, label %for.inc.for.body17_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then6.for.end_crit_edge
  %seglist31 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %i.0115, i32 5
  %28 = ptrtoint ptr %seglist31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %seglist31, align 4
  tail call void @kfree(ptr noundef %29) #5
  br label %if.end32

if.end32:                                         ; preds = %for.end, %for.body.if.end32_crit_edge
  %buf_count35 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %i.0115, i32 1
  %30 = ptrtoint ptr %buf_count35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf_count35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool36.not = icmp eq i32 %31, 0
  br i1 %tobool36.not, label %if.end32.for.inc54_crit_edge, label %for.cond38.preheader

if.end32.for.inc54_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc54

for.cond38.preheader:                             ; preds = %if.end32
  %32 = ptrtoint ptr %buf_count35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_count35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp42113 = icmp sgt i32 %33, 0
  br i1 %cmp42113, label %for.body43.lr.ph, label %for.cond38.preheader.for.end49_crit_edge

for.cond38.preheader.for.end49_crit_edge:         ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end49

for.body43.lr.ph:                                 ; preds = %for.cond38.preheader
  %buflist = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %i.0115, i32 2
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.body43.lr.ph
  %j.1114 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc48, %for.body43.for.body43_crit_edge ]
  %34 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buflist, align 4
  %dev_private = getelementptr %struct.drm_buf, ptr %35, i32 %j.1114, i32 15
  %36 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_private, align 4
  tail call void @kfree(ptr noundef %37) #5
  %inc48 = add nuw nsw i32 %j.1114, 1
  %38 = ptrtoint ptr %buf_count35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf_count35, align 4
  %cmp42 = icmp slt i32 %inc48, %39
  br i1 %cmp42, label %for.body43.for.body43_crit_edge, label %for.body43.for.end49_crit_edge

for.body43.for.end49_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end49

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body43

for.end49:                                        ; preds = %for.body43.for.end49_crit_edge, %for.cond38.preheader.for.end49_crit_edge
  %buflist52 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %i.0115, i32 2
  %40 = ptrtoint ptr %buflist52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buflist52, align 4
  tail call void @kfree(ptr noundef %41) #5
  br label %for.inc54

for.inc54:                                        ; preds = %for.end49, %if.end32.for.inc54_crit_edge
  %inc55 = add nuw nsw i32 %i.0115, 1
  %exitcond.not = icmp eq i32 %inc55, 23
  br i1 %exitcond.not, label %for.end56, label %for.inc54.for.body_crit_edge

for.inc54.for.body_crit_edge:                     ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end56:                                        ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #7
  %buflist57 = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %buflist57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buflist57, align 4
  tail call void @kfree(ptr noundef %43) #5
  %pagelist = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pagelist, align 4
  tail call void @kfree(ptr noundef %45) #5
  %46 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma1, align 4
  tail call void @kfree(ptr noundef %47) #5
  %48 = ptrtoint ptr %dma1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %dma1, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end56, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_free_buffer(ptr nocapture readnone %dev, ptr noundef %buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %waiting = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 8
  %0 = ptrtoint ptr %waiting to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %waiting, align 4
  %pending = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 9
  %1 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %pending, align 4
  %file_priv = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 10
  %2 = ptrtoint ptr %file_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %file_priv, align 4
  %used = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 3
  %3 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %used, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_reclaim_buffers(ptr nocapture noundef readonly %dev, ptr noundef readnone %file_priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26 = icmp sgt i32 %3, 0
  br i1 %cmp26, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %buflist = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buflist, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.027
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %file_priv2 = getelementptr inbounds %struct.drm_buf, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %file_priv2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file_priv2, align 4
  %cmp3 = icmp eq ptr %9, %file_priv
  br i1 %cmp3, label %if.then4, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %list = getelementptr inbounds %struct.drm_buf, ptr %7, i32 0, i32 13
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %list, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.then4.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb9
  ]

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %if.then4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %sw.bb.for.inc_crit_edge, label %if.end.i

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %waiting.i = getelementptr inbounds %struct.drm_buf, ptr %7, i32 0, i32 8
  %13 = ptrtoint ptr %waiting.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %waiting.i, align 4
  %pending.i = getelementptr inbounds %struct.drm_buf, ptr %7, i32 0, i32 9
  %14 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %pending.i, align 4
  %15 = ptrtoint ptr %file_priv2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %file_priv2, align 4
  %used.i = getelementptr inbounds %struct.drm_buf, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %used.i, align 4
  br label %for.inc

sw.bb9:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %list, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb9, %if.end.i, %sw.bb.for.inc_crit_edge, %if.then4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %18 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_count, align 4
  %cmp = icmp slt i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_dma.c", i32 97, i32 4}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
