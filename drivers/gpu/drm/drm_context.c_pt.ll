; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_context.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_context.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_ctx_list = type { %struct.list_head, i32, ptr }
%struct.drm_ctx_priv_map = type { i32, ptr }
%struct.drm_map_list = type { %struct.list_head, %struct.drm_hash_item, ptr, i64, ptr }
%struct.drm_hash_item = type { %struct.hlist_node, i32 }
%struct.drm_ctx = type { i32, i32 }
%struct.drm_ctx_res = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Not enough free contexts.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reentering -- FIXME\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Context switch from %d to %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Lock isn't held after context switch\0A\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 382, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 384, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 393, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 378, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 174, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 279, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 283, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [33 x i8] c"../drivers/gpu/drm/drm_context.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 310, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @xa_init_flags.__key, ptr @.str.3, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_ctxbitmap_free(ptr noundef %dev, i32 noundef %ctx_handle) local_unnamed_addr #0 align 64 {
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
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #5
  %ctx_idr = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 41
  %call2 = tail call ptr @idr_remove(ptr noundef %ctx_idr, i32 noundef %ctx_handle) #5
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_ctxbitmap_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
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
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx_idr = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 41
  tail call void @__raw_spin_lock_init(ptr noundef %ctx_idr, ptr noundef nonnull @.str.3, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #5
  %xa_flags.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 41, i32 0, i32 1
  %8 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 41, i32 0, i32 2
  %9 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 41, i32 1
  %10 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 41, i32 2
  %11 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idr_next.i.i, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_ctxbitmap_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
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
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #5
  %ctx_idr = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 41
  tail call void @idr_destroy(ptr noundef %ctx_idr) #5
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_ctxbitmap_flush(ptr noundef %dev, ptr noundef readnone %file) local_unnamed_addr #0 align 64 {
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
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctxlist_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 40
  tail call void @mutex_lock_nested(ptr noundef %ctxlist_mutex, i32 noundef 0) #5
  %ctxlist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 39
  %8 = ptrtoint ptr %ctxlist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctxlist, align 4
  %cmp.not54 = icmp eq ptr %9, %ctxlist
  br i1 %cmp.not54, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %struct_mutex.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  %ctx_idr.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 41
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.055 = phi ptr [ %9, %for.body.lr.ph ], [ %tmp.057, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %pos.055 to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp.057 = load ptr, ptr %pos.055, align 4
  %tag = getelementptr inbounds %struct.drm_ctx_list, ptr %pos.055, i32 0, i32 2
  %11 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tag, align 4
  %cmp9 = icmp eq ptr %12, %file
  br i1 %cmp9, label %land.lhs.true10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true10:                                  ; preds = %for.body
  %handle = getelementptr inbounds %struct.drm_ctx_list, ptr %pos.055, i32 0, i32 1
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp11.not = icmp eq i32 %14, 0
  br i1 %cmp11.not, label %land.lhs.true10.for.inc_crit_edge, label %if.then12

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true10
  %15 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver.i.i, align 4
  %context_dtor = getelementptr inbounds %struct.drm_driver, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %context_dtor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %context_dtor, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.then12.if.end18_crit_edge, label %if.then13

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then13:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 %18(ptr noundef %dev, i32 noundef %14) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.then12.if.end18_crit_edge
  %19 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %20, i32 0, i32 24
  %21 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %driver_features.i.i.i, align 4
  %23 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i.i = and i32 %22, -2080374784
  %25 = and i32 %and.i.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %if.end18.drm_legacy_ctxbitmap_free.exit_crit_edge, label %if.end.i

if.end18.drm_legacy_ctxbitmap_free.exit_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_legacy_ctxbitmap_free.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %handle, align 4
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex.i, i32 noundef 0) #5
  %call2.i = tail call ptr @idr_remove(ptr noundef %ctx_idr.i, i32 noundef %28) #5
  tail call void @mutex_unlock(ptr noundef %struct_mutex.i) #5
  br label %drm_legacy_ctxbitmap_free.exit

drm_legacy_ctxbitmap_free.exit:                   ; preds = %if.end.i, %if.end18.drm_legacy_ctxbitmap_free.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.055) #5
  br i1 %call.i.i, label %if.end.i.i, label %drm_legacy_ctxbitmap_free.exit.list_del.exit_crit_edge

drm_legacy_ctxbitmap_free.exit.list_del.exit_crit_edge: ; preds = %drm_legacy_ctxbitmap_free.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %drm_legacy_ctxbitmap_free.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.055, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %pos.055 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pos.055, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %drm_legacy_ctxbitmap_free.exit.list_del.exit_crit_edge
  %35 = ptrtoint ptr %pos.055 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.055, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.055, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %pos.055) #5
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %land.lhs.true10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.057, %ctxlist
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %ctxlist_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_getsareactx(ptr noundef %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
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
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #5
  %ctx_idr = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 41
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %call2 = tail call ptr @idr_find(ptr noundef %ctx_idr, i32 noundef %9) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %handle = getelementptr inbounds %struct.drm_ctx_priv_map, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %handle, align 4
  %maplist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 42
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end5
  %_entry.0.in = phi ptr [ %maplist, %if.end5 ], [ %_entry.0, %for.body.for.cond_crit_edge ]
  %11 = ptrtoint ptr %_entry.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %_entry.0 = load ptr, ptr %_entry.0.in, align 4
  %cmp.not = icmp eq ptr %_entry.0, %maplist
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %map7 = getelementptr inbounds %struct.drm_map_list, ptr %_entry.0, i32 0, i32 2
  %12 = ptrtoint ptr %map7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map7, align 4
  %cmp8 = icmp eq ptr %13, %call2
  br i1 %cmp8, label %if.then9, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %user_token = getelementptr inbounds %struct.drm_map_list, ptr %_entry.0, i32 0, i32 3
  %14 = ptrtoint ptr %user_token to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %user_token, align 8
  %conv = trunc i64 %15 to i32
  %16 = inttoptr i32 %conv to ptr
  %17 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %handle, align 4
  br label %for.end

for.end:                                          ; preds = %if.then9, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #5
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle, align 4
  %cmp19 = icmp eq ptr %19, null
  %. = select i1 %cmp19, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ %., %for.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_setsareactx(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
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
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #5
  %maplist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 42
  %8 = ptrtoint ptr %maplist to i32
  call void @__asan_load4_noabort(i32 %8)
  %r_list.045 = load ptr, ptr %maplist, align 4
  %cmp.not46 = icmp eq ptr %r_list.045, %maplist
  br i1 %cmp.not46, label %if.end.cleanup.sink.split_crit_edge, label %for.body.lr.ph

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %if.end
  %handle = getelementptr inbounds %struct.drm_ctx_priv_map, ptr %data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %r_list.047 = phi ptr [ %r_list.045, %for.body.lr.ph ], [ %r_list.0, %for.inc.for.body_crit_edge ]
  %map3 = getelementptr inbounds %struct.drm_map_list, ptr %r_list.047, i32 0, i32 2
  %9 = ptrtoint ptr %map3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map3, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true4:                                   ; preds = %for.body
  %user_token = getelementptr inbounds %struct.drm_map_list, ptr %r_list.047, i32 0, i32 3
  %11 = ptrtoint ptr %user_token to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %user_token, align 8
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handle, align 4
  %15 = ptrtoint ptr %14 to i32
  %conv = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv)
  %cmp5 = icmp eq i64 %12, %conv
  br i1 %cmp5, label %if.end18, label %land.lhs.true4.for.inc_crit_edge

land.lhs.true4.for.inc_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %r_list.047 to i32
  call void @__asan_load4_noabort(i32 %16)
  %r_list.0 = load ptr, ptr %r_list.047, align 4
  %cmp.not = icmp eq ptr %r_list.0, %maplist
  br i1 %cmp.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end18:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  %ctx_idr = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 41
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 4
  %call19 = tail call ptr @idr_replace(ptr noundef %ctx_idr, ptr noundef nonnull %10, i32 noundef %18) #5
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, i32 -22, i32 0
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end18, %for.inc.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.end.cleanup.sink.split_crit_edge ], [ %spec.select, %if.end18 ], [ -22, %for.inc.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_resctx(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.drm_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctx) #5
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
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %ctx, align 8
  %contexts = getelementptr inbounds %struct.drm_ctx_res, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %contexts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %contexts, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.then2.cleanup_crit_edge, label %if.end.i.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then2
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 8, i32 -1226833920) #8, !srcloc !31
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ctx, i32 noundef 8) #5
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %12, ptr noundef nonnull %ctx, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool.not, label %copy_to_user.exit.if.end7_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

copy_to_user.exit.if.end7_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end7:                                          ; preds = %copy_to_user.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then2.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctx) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_addctx(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
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
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %struct_mutex.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex.i, i32 noundef 0) #5
  %ctx_idr.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 41
  %call.i = tail call i32 @idr_alloc(ptr noundef %ctx_idr.i, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #5
  tail call void @mutex_unlock(ptr noundef %struct_mutex.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex.i, i32 noundef 0) #5
  %call.i41 = tail call i32 @idr_alloc(ptr noundef %ctx_idr.i, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #5
  tail call void @mutex_unlock(ptr noundef %struct_mutex.i) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %tmp_handle.0 = phi i32 [ %call.i41, %if.then3 ], [ %call.i, %if.end.if.end5_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %tmp_handle.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp_handle.0)
  %cmp6 = icmp slt i32 %tmp_handle.0, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tmp_handle.0, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %prev.i, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %handle13 = getelementptr inbounds %struct.drm_ctx_list, ptr %call7.i, i32 0, i32 1
  %14 = ptrtoint ptr %handle13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %handle13, align 8
  %tag = getelementptr inbounds %struct.drm_ctx_list, ptr %call7.i, i32 0, i32 2
  %15 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %file_priv, ptr %tag, align 4
  %ctxlist_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 40
  tail call void @mutex_lock_nested(ptr noundef %ctxlist_mutex, i32 noundef 0) #5
  %ctxlist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 39
  %16 = ptrtoint ptr %ctxlist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctxlist, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %ctxlist, ptr noundef %17) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_add.exit_crit_edge

if.end11.list_add.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %call7.i, align 8
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ctxlist, ptr %prev.i, align 4
  %21 = ptrtoint ptr %ctxlist to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i, ptr %ctxlist, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end11.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %ctxlist_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then10, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %tmp_handle.0, %if.then7 ], [ 0, %list_add.exit ], [ -12, %if.then10 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_legacy_getctx(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #3 align 64 {
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
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.drm_ctx, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_switchctx(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
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
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %9) #5
  %last_context = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 47
  %10 = ptrtoint ptr %last_context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_context, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %context_flag.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 46
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %context_flag.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %11, i32 noundef %13) #5
  %14 = ptrtoint ptr %last_context to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_context, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp.i = icmp eq i32 %15, %13
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %context_flag.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then1.i, %if.end.i.cleanup_crit_edge, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then.i ], [ 0, %if.then1.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_newctx(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file_priv) local_unnamed_addr #0 align 64 {
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
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %9) #5
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %last_context.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 47
  %12 = ptrtoint ptr %last_context.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %last_context.i, align 4
  %master.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %13 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master.i, align 4
  %lock.i = getelementptr inbounds %struct.drm_master, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool.not.i = icmp sgt i32 %18, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.end.drm_context_switch_complete.exit_crit_edge

if.end.drm_context_switch_complete.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_context_switch_complete.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #5
  br label %drm_context_switch_complete.exit

drm_context_switch_complete.exit:                 ; preds = %if.then.i, %if.end.drm_context_switch_complete.exit_crit_edge
  %context_flag.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 46
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %context_flag.i) #5
  br label %cleanup

cleanup:                                          ; preds = %drm_context_switch_complete.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %drm_context_switch_complete.exit ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_rmctx(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
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
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %9) #5
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.end.if.end11_crit_edge, label %if.then3

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %12 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver.i.i, align 4
  %context_dtor = getelementptr inbounds %struct.drm_driver, ptr %13, i32 0, i32 32
  %14 = ptrtoint ptr %context_dtor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %context_dtor, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.then3.if.end9_crit_edge, label %if.then4

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 %15(ptr noundef %dev, i32 noundef %11) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.then3.if.end9_crit_edge
  %16 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %17, i32 0, i32 24
  %18 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_features.i.i.i, align 4
  %20 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i.i = and i32 %19, -2080374784
  %22 = and i32 %and.i.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %if.end9.if.end11_crit_edge, label %if.end.i

if.end9.if.end11_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data, align 4
  %struct_mutex.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex.i, i32 noundef 0) #5
  %ctx_idr.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 41
  %call2.i = tail call ptr @idr_remove(ptr noundef %ctx_idr.i, i32 noundef %25) #5
  tail call void @mutex_unlock(ptr noundef %struct_mutex.i) #5
  br label %if.end11

if.end11:                                         ; preds = %if.end.i, %if.end9.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %ctxlist_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 40
  tail call void @mutex_lock_nested(ptr noundef %ctxlist_mutex, i32 noundef 0) #5
  %ctxlist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 39
  %26 = ptrtoint ptr %ctxlist to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %ctxlist, align 4
  %cmp.i.not = icmp eq ptr %27, %ctxlist
  br i1 %cmp.i.not, label %if.end11.if.end34_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.if.end34_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11.for.body_crit_edge
  %pos.064 = phi ptr [ %n.066, %for.inc.for.body_crit_edge ], [ %27, %if.end11.for.body_crit_edge ]
  %28 = ptrtoint ptr %pos.064 to i32
  call void @__asan_load4_noabort(i32 %28)
  %n.066 = load ptr, ptr %pos.064, align 4
  %handle23 = getelementptr inbounds %struct.drm_ctx_list, ptr %pos.064, i32 0, i32 1
  %29 = ptrtoint ptr %handle23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle23, align 4
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp25 = icmp eq i32 %30, %32
  br i1 %cmp25, label %if.then26, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then26:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.064) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then26.list_del.exit_crit_edge

if.then26.list_del.exit_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.064, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %pos.064 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pos.064, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then26.list_del.exit_crit_edge
  %39 = ptrtoint ptr %pos.064 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.064, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.064, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %pos.064) #5
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp22.not = icmp eq ptr %n.066, %ctxlist
  br i1 %cmp22.not, label %for.inc.if.end34_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end34_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.end34:                                         ; preds = %for.inc.if.end34_crit_edge, %if.end11.if.end34_crit_edge
  tail call void @mutex_unlock(ptr noundef %ctxlist_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_context.c", i32 382, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_context.c", i32 384, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_context.c", i32 393, i32 3}
!6 = !{ptr @xa_init_flags.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!11 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_context.c", i32 279, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_context.c", i32 283, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/drm_context.c", i32 310, i32 3}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2152101023, i64 2152101048}
