; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/via/via_mm.c_pt.bc'
source_filename = "../drivers/gpu/drm/via/via_mm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
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
%struct.anon.72 = type { i32, ptr }
%struct.drm_via_private = type { ptr, ptr, ptr, ptr, i32, [5 x %struct.wait_queue_head], ptr, i32, i32, i32, i32, ptr, ptr, %struct.drm_via_ring_buffer, i64, i32, i64, %struct.atomic_t, %struct.drm_via_state_t, [60000 x i8], [1024 x ptr], i32, i32, [4 x %struct.drm_via_irq], i32, ptr, i32, i32, ptr, i32, i32, %struct.drm_mm, i32, %struct.drm_mm, %struct.idr, i32, i32, [2 x %struct._drm_via_blitq], i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_via_ring_buffer = type { %struct.drm_local_map, ptr }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_via_state_t = type { i32, i32, i32, [2 x [10 x i32]], [2 x [10 x i32]], [2 x [10 x i32]], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.drm_via_irq = type { %struct.atomic_t, i32, i32, %struct.wait_queue_head }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct._drm_via_blitq = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x ptr], %struct.spinlock, [8 x %struct.wait_queue_head], %struct.wait_queue_head, %struct.work_struct, %struct.timer_list }
%struct.drm_via_agp_t = type { i32, i32 }
%struct.drm_via_fb_t = type { i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_via_mem_t = type { i32, i32, i32, i32, i32 }
%struct.via_memblock = type { %struct.drm_mm_node, %struct.list_head }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"offset = %u, size = %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Last Context\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unknown memory type allocation\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Attempt to allocate from uninitialized memory manager.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Video memory allocation failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"free = 0x%lx\0A\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 56, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 87, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 125, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 132, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 179, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [32 x i8] c"../drivers/gpu/drm/via/via_mm.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 203, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_agp_init(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #3
  %agp_mm = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 33
  %size = getelementptr inbounds %struct.drm_via_agp_t, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %shr = lshr i32 %3, 4
  %conv = zext i32 %shr to i64
  tail call void @drm_mm_init(ptr noundef %agp_mm, i64 noundef 0, i64 noundef %conv) #3
  %agp_initialized = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %agp_initialized to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %agp_initialized, align 8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %agp_offset = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 36
  %7 = ptrtoint ptr %agp_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %agp_offset, align 8
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %9, i32 noundef %11) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_fb_init(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #3
  %vram_mm = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 31
  %size = getelementptr inbounds %struct.drm_via_fb_t, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %shr = lshr i32 %3, 4
  %conv = zext i32 %shr to i64
  tail call void @drm_mm_init(ptr noundef %vram_mm, i64 noundef 0, i64 noundef %conv) #3
  %vram_initialized = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %vram_initialized to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %vram_initialized, align 8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %vram_offset = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 35
  %7 = ptrtoint ptr %vram_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %vram_offset, align 4
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %9, i32 noundef %11) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_final_context(ptr noundef %dev, i32 noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void @via_release_futex(ptr noundef %1, i32 noundef %context) #3
  %ctxlist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 39
  %2 = ptrtoint ptr %ctxlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ctxlist, align 4
  %cmp.i.not.i = icmp eq ptr %3, %ctxlist
  br i1 %cmp.i.not.i, label %entry.if.end_crit_edge, label %list_is_singular.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

list_is_singular.exit:                            ; preds = %entry
  %prev.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 39, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %3, %5
  br i1 %cmp.i.not, label %if.then, label %list_is_singular.exit.if.end_crit_edge

list_is_singular.exit.if.end_crit_edge:           ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #3
  %call1 = tail call i32 @drm_legacy_irq_uninstall(ptr noundef %dev) #3
  tail call void @via_cleanup_futex(ptr noundef %1) #3
  %call2 = tail call i32 @via_do_cleanup_map(ptr noundef %dev) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %list_is_singular.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_release_futex(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_irq_uninstall(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_cleanup_futex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @via_do_cleanup_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_lastclose(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #3
  %vram_initialized = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %vram_initialized to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vram_initialized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %vram_mm = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 31
  tail call void @drm_mm_takedown(ptr noundef %vram_mm) #3
  %4 = ptrtoint ptr %vram_initialized to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vram_initialized, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %agp_initialized = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %agp_initialized to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %agp_initialized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %agp_mm = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 33
  tail call void @drm_mm_takedown(ptr noundef %agp_mm) #3
  %7 = ptrtoint ptr %agp_initialized to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %agp_initialized, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_mem_alloc(ptr noundef %dev, ptr nocapture noundef %data, ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %type = getelementptr inbounds %struct.drm_via_mem_t, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  %vram_initialized = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 30
  %agp_initialized = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 32
  %cond.in = select i1 %cmp3, ptr %vram_initialized, ptr %agp_initialized
  %8 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond = load i32, ptr %cond.in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp4 = icmp eq i32 %cond, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #3
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 120) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end7.fail_alloc_crit_edge, label %if.end9

if.end7.fail_alloc_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail_alloc

if.end9:                                          ; preds = %if.end7
  %size = getelementptr inbounds %struct.drm_via_mem_t, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %add = add i32 %11, 15
  %shr = lshr i32 %add, 4
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp11 = icmp eq i32 %13, 1
  %vram_mm = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 31
  %agp_mm = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 33
  %vram_mm.sink = select i1 %cmp11, ptr %agp_mm, ptr %vram_mm
  %conv15 = zext i32 %shr to i64
  %call.i.i79 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %vram_mm.sink, ptr noundef nonnull %call7.i.i, i64 noundef %conv15, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79)
  %tobool18.not = icmp eq i32 %call.i.i79, 0
  br i1 %tobool18.not, label %if.end20, label %if.end9.fail_alloc_crit_edge

if.end9.fail_alloc_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail_alloc

if.end20:                                         ; preds = %if.end9
  %object_idr = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 34
  %call21 = tail call i32 @idr_alloc(ptr noundef %object_idr, ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %fail_idr, label %if.end25

if.end25:                                         ; preds = %if.end20
  %owner_list = getelementptr inbounds %struct.via_memblock, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %call.i.i80 = tail call zeroext i1 @__list_add_valid(ptr noundef %owner_list, ptr noundef %3, ptr noundef %15) #3
  br i1 %call.i.i80, label %if.end.i.i, label %if.end25.list_add.exit_crit_edge

if.end25.list_add.exit_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %owner_list, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %owner_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %owner_list, align 8
  %prev3.i.i = getelementptr inbounds %struct.via_memblock, ptr %call7.i.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %3, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %owner_list, ptr %3, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end25.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #3
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp28 = icmp eq i32 %21, 0
  %vram_offset = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 35
  %agp_offset = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 36
  %cond33.in = select i1 %cmp28, ptr %vram_offset, ptr %agp_offset
  %22 = ptrtoint ptr %cond33.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond33 = load i32, ptr %cond33.in, align 4
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %start, align 8
  %.tr = trunc i64 %24 to i32
  %25 = shl i32 %.tr, 4
  %conv37 = add i32 %25, %cond33
  %offset = getelementptr inbounds %struct.drm_via_mem_t, ptr %data, i32 0, i32 4
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv37, ptr %offset, align 4
  %index = getelementptr inbounds %struct.drm_via_mem_t, ptr %data, i32 0, i32 3
  %27 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call21, ptr %index, align 4
  br label %cleanup

fail_idr:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @drm_mm_remove_node(ptr noundef nonnull %call7.i.i) #3
  br label %fail_alloc

fail_alloc:                                       ; preds = %fail_idr, %if.end9.fail_alloc_crit_edge, %if.end7.fail_alloc_crit_edge
  %retval1.1 = phi i32 [ %call.i.i79, %if.end9.fail_alloc_crit_edge ], [ %call21, %fail_idr ], [ -12, %if.end7.fail_alloc_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #3
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #3
  %offset40 = getelementptr inbounds %struct.drm_via_mem_t, ptr %data, i32 0, i32 4
  %28 = ptrtoint ptr %offset40 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %offset40, align 4
  %size41 = getelementptr inbounds %struct.drm_via_mem_t, ptr %data, i32 0, i32 2
  %29 = ptrtoint ptr %size41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %size41, align 4
  %index42 = getelementptr inbounds %struct.drm_via_mem_t, ptr %data, i32 0, i32 3
  %30 = ptrtoint ptr %index42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %index42, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4) #3
  br label %cleanup

cleanup:                                          ; preds = %fail_alloc, %list_add.exit, %if.then5, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then5 ], [ %retval1.1, %fail_alloc ], [ 0, %list_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_mem_free(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #3
  %object_idr = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 34
  %index = getelementptr inbounds %struct.drm_via_mem_t, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %call = tail call ptr @idr_find(ptr noundef %object_idr, i32 noundef %3) #3
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %call4 = tail call ptr @idr_remove(ptr noundef %object_idr, i32 noundef %5) #3
  %owner_list = getelementptr inbounds %struct.via_memblock, ptr %call, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %owner_list) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.via_memblock, ptr %call, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %owner_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %owner_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %owner_list, align 4
  %prev.i = getelementptr inbounds %struct.via_memblock, ptr %call, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @drm_mm_remove_node(ptr noundef nonnull %call) #3
  tail call void @kfree(ptr noundef nonnull %call) #3
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #3
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %15) #3
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %list_del.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_reclaim_buffers_locked(ptr noundef %dev, ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %master = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %master2 = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 8
  %4 = ptrtoint ptr %master2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master2, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  tail call void @drm_legacy_idlelock_take(ptr noundef %lock) #3
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #3
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %1, align 4
  %cmp.i.not = icmp eq ptr %9, %1
  br i1 %cmp.i.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end11

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @via_driver_dma_quiescent(ptr noundef %dev) #3
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %cmp.not48 = icmp eq ptr %11, %1
  br i1 %cmp.not48, label %if.end11.cleanup.sink.split_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end11.for.body_crit_edge
  %.pn.in49 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %11, %if.end11.for.body_crit_edge ]
  %entry1.0 = getelementptr i8, ptr %.pn.in49, i32 -112
  %12 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn.in49, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in49) #3
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in49, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in49, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %19 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in49, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in49, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @drm_mm_remove_node(ptr noundef %entry1.0) #3
  tail call void @kfree(ptr noundef %entry1.0) #3
  %cmp.not = icmp eq ptr %.pn, %1
  br i1 %cmp.not, label %list_del.exit.cleanup.sink.split_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

list_del.exit.cleanup.sink.split_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %list_del.exit.cleanup.sink.split_crit_edge, %if.end11.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #3
  %21 = ptrtoint ptr %master2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master2, align 4
  %lock29 = getelementptr inbounds %struct.drm_master, ptr %22, i32 0, i32 12
  tail call void @drm_legacy_idlelock_release(ptr noundef %lock29) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_idlelock_take(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_idlelock_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @via_driver_dma_quiescent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/via/via_mm.c", i32 56, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/via/via_mm.c", i32 87, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/via/via_mm.c", i32 125, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/via/via_mm.c", i32 132, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/via/via_mm.c", i32 179, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/via/via_mm.c", i32 203, i32 2}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
