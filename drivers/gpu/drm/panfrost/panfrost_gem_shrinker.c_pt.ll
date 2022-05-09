; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.87 = type { i32, ptr }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.90, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.anon.90 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c\00", [47 x i8] zeroinitializer }, align 32
@panfrost_gem_shrinker_scan._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.panfrost_gem_shrinker_scan = private unnamed_addr constant [27 x i8] c"panfrost_gem_shrinker_scan\00", align 1
@panfrost_gem_shrinker_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.panfrost_gem_shrinker_scan, ptr @.str, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016Purging %lu bytes\0A\00", [43 x i8] zeroinitializer }, align 32
@panfrost_gem_shrinker_scan._entry_ptr = internal global ptr @panfrost_gem_shrinker_scan._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 106, i32 2 }
@___asan_gen_.6 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [52 x i8] c"../drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 89, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @panfrost_gem_shrinker_scan._entry, ptr @panfrost_gem_shrinker_scan._entry_ptr, ptr @.str, ptr @panfrost_gem_shrinker_scan._rs, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gem_shrinker_scan._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_gem_shrinker_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_gem_shrinker_init(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %shrinker = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %shrinker to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @panfrost_gem_shrinker_count, ptr %shrinker, align 8
  %scan_objects = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 26, i32 1
  %3 = ptrtoint ptr %scan_objects to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @panfrost_gem_shrinker_scan, ptr %scan_objects, align 4
  %seeks = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 26, i32 3
  %4 = ptrtoint ptr %seeks to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %seeks, align 4
  %call = tail call i32 @register_shrinker(ptr noundef %shrinker) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !18

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_gem_shrinker_count(ptr noundef %shrinker, ptr nocapture noundef readnone %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shrinker_lock = getelementptr i8, ptr %shrinker, i32 -100
  %call = tail call i32 @mutex_trylock(ptr noundef %shrinker_lock) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %shrinker_list = getelementptr i8, ptr %shrinker, i32 -8
  %0 = ptrtoint ptr %shrinker_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn23 = load ptr, ptr %shrinker_list, align 8
  %cmp.not24 = icmp eq ptr %.pn23, %shrinker_list
  br i1 %cmp.not24, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn26 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn23, %if.end.for.body_crit_edge ]
  %count.025 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %madv.i = getelementptr i8, ptr %.pn26, i32 -4
  %1 = ptrtoint ptr %madv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %madv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp sgt i32 %2, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %vmap_use_count.i = getelementptr i8, ptr %.pn26, i32 112
  %3 = ptrtoint ptr %vmap_use_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vmap_use_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %land.lhs.true1.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %sgt.i = getelementptr i8, ptr %.pn26, i32 12
  %5 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sgt.i, align 4
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %land.lhs.true1.i.for.inc_crit_edge, label %land.lhs.true3.i

land.lhs.true1.i.for.inc_crit_edge:               ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true3.i:                                 ; preds = %land.lhs.true1.i
  %dma_buf.i = getelementptr i8, ptr %.pn26, i32 -264
  %7 = ptrtoint ptr %dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_buf.i, align 8
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %drm_gem_shmem_is_purgeable.exit, label %land.lhs.true3.i.for.inc_crit_edge

land.lhs.true3.i.for.inc_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

drm_gem_shmem_is_purgeable.exit:                  ; preds = %land.lhs.true3.i
  %import_attach.i = getelementptr i8, ptr %.pn26, i32 -260
  %9 = ptrtoint ptr %import_attach.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %import_attach.i, align 4
  %tobool6.not.i = icmp eq ptr %10, null
  br i1 %tobool6.not.i, label %if.then6, label %drm_gem_shmem_is_purgeable.exit.for.inc_crit_edge

drm_gem_shmem_is_purgeable.exit.for.inc_crit_edge: ; preds = %drm_gem_shmem_is_purgeable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then6:                                         ; preds = %drm_gem_shmem_is_purgeable.exit
  call void @__sanitizer_cov_trace_pc() #5
  %size = getelementptr i8, ptr %.pn26, i32 -272
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 8
  %shr = lshr i32 %12, 12
  %add = add i32 %shr, %count.025
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %drm_gem_shmem_is_purgeable.exit.for.inc_crit_edge, %land.lhs.true3.i.for.inc_crit_edge, %land.lhs.true1.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %add, %if.then6 ], [ %count.025, %drm_gem_shmem_is_purgeable.exit.for.inc_crit_edge ], [ %count.025, %land.lhs.true3.i.for.inc_crit_edge ], [ %count.025, %land.lhs.true1.i.for.inc_crit_edge ], [ %count.025, %land.lhs.true.i.for.inc_crit_edge ], [ %count.025, %for.body.for.inc_crit_edge ]
  %13 = ptrtoint ptr %.pn26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn26, align 8
  %cmp.not = icmp eq ptr %.pn, %shrinker_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %count.1, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %shrinker_lock) #3
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.0.lcssa, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_gem_shrinker_scan(ptr noundef %shrinker, ptr nocapture noundef readonly %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shrinker_lock = getelementptr i8, ptr %shrinker, i32 -100
  %call = tail call i32 @mutex_trylock(ptr noundef %shrinker_lock) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %shrinker_list = getelementptr i8, ptr %shrinker, i32 -8
  %0 = ptrtoint ptr %shrinker_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shrinker_list, align 8
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %cmp.not57 = icmp eq ptr %1, %shrinker_list
  br i1 %cmp.not57, label %for.end.thread, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %shrinker_lock) #3
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in59 = phi ptr [ %.pn62, %for.inc.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %freed.058 = phi i32 [ %freed.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %shmem.061 = getelementptr i8, ptr %.pn.in59, i32 -456
  %2 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn62 = load ptr, ptr %.pn.in59, align 8
  %3 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_to_scan, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %freed.058, i32 %4)
  %cmp11.not = icmp ult i32 %freed.058, %4
  br i1 %cmp11.not, label %if.end13, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end13:                                         ; preds = %for.body
  %madv.i = getelementptr i8, ptr %.pn.in59, i32 -4
  %5 = ptrtoint ptr %madv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %madv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp sgt i32 %6, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.end13
  %vmap_use_count.i = getelementptr i8, ptr %.pn.in59, i32 112
  %7 = ptrtoint ptr %vmap_use_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vmap_use_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %land.lhs.true1.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %sgt.i = getelementptr i8, ptr %.pn.in59, i32 12
  %9 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sgt.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %land.lhs.true1.i.for.inc_crit_edge, label %land.lhs.true3.i

land.lhs.true1.i.for.inc_crit_edge:               ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true3.i:                                 ; preds = %land.lhs.true1.i
  %dma_buf.i = getelementptr i8, ptr %.pn.in59, i32 -264
  %11 = ptrtoint ptr %dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_buf.i, align 8
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %drm_gem_shmem_is_purgeable.exit, label %land.lhs.true3.i.for.inc_crit_edge

land.lhs.true3.i.for.inc_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

drm_gem_shmem_is_purgeable.exit:                  ; preds = %land.lhs.true3.i
  %import_attach.i = getelementptr i8, ptr %.pn.in59, i32 -260
  %13 = ptrtoint ptr %import_attach.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %import_attach.i, align 4
  %tobool6.not.i = icmp eq ptr %14, null
  br i1 %tobool6.not.i, label %land.lhs.true, label %drm_gem_shmem_is_purgeable.exit.for.inc_crit_edge

drm_gem_shmem_is_purgeable.exit.for.inc_crit_edge: ; preds = %drm_gem_shmem_is_purgeable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true:                                    ; preds = %drm_gem_shmem_is_purgeable.exit
  %gpu_usecount.i = getelementptr i8, ptr %.pn.in59, i32 224
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %gpu_usecount.i, i32 noundef 4) #3
  %15 = ptrtoint ptr %gpu_usecount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %gpu_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i52 = icmp eq i32 %16, 0
  br i1 %tobool.not.i52, label %if.end.i, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end.i:                                         ; preds = %land.lhs.true
  %lock.i = getelementptr i8, ptr %.pn.in59, i32 132
  %call2.i = tail call i32 @mutex_trylock(ptr noundef %lock.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.for.inc_crit_edge, label %if.end5.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end5.i:                                        ; preds = %if.end.i
  %pages_lock.i = getelementptr i8, ptr %.pn.in59, i32 -104
  %call6.i = tail call i32 @mutex_trylock(ptr noundef %pages_lock.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %panfrost_gem_purge.exit, label %if.then16

panfrost_gem_purge.exit:                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %lock.i) #3
  br label %for.inc

if.then16:                                        ; preds = %if.end5.i
  tail call void @panfrost_gem_teardown_mappings_locked(ptr noundef %shmem.061) #3
  tail call void @drm_gem_shmem_purge_locked(ptr noundef %shmem.061) #3
  tail call void @mutex_unlock(ptr noundef %pages_lock.i) #3
  tail call void @mutex_unlock(ptr noundef %lock.i) #3
  %size = getelementptr i8, ptr %.pn.in59, i32 -272
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 8
  %shr = lshr i32 %18, 12
  %add = add i32 %shr, %freed.058
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in59) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.then16.list_del_init.exit_crit_edge

if.then16.list_del_init.exit_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in59, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in59, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then16.list_del_init.exit_crit_edge
  %25 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %.pn.in59, ptr %.pn.in59, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in59, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %.pn.in59, ptr %prev.i3.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %list_del_init.exit, %panfrost_gem_purge.exit, %if.end.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %drm_gem_shmem_is_purgeable.exit.for.inc_crit_edge, %land.lhs.true3.i.for.inc_crit_edge, %land.lhs.true1.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end13.for.inc_crit_edge
  %freed.1 = phi i32 [ %add, %list_del_init.exit ], [ %freed.058, %panfrost_gem_purge.exit ], [ %freed.058, %drm_gem_shmem_is_purgeable.exit.for.inc_crit_edge ], [ %freed.058, %land.lhs.true3.i.for.inc_crit_edge ], [ %freed.058, %land.lhs.true1.i.for.inc_crit_edge ], [ %freed.058, %land.lhs.true.i.for.inc_crit_edge ], [ %freed.058, %if.end13.for.inc_crit_edge ], [ %freed.058, %land.lhs.true.for.inc_crit_edge ], [ %freed.058, %if.end.i.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %.pn62, %shrinker_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %freed.0.lcssa = phi i32 [ %freed.1, %for.inc.for.end_crit_edge ], [ %freed.058, %for.body.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %shrinker_lock) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freed.0.lcssa)
  %cmp26.not = icmp eq i32 %freed.0.lcssa, 0
  br i1 %cmp26.not, label %for.end.cleanup_crit_edge, label %if.then27

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then27:                                        ; preds = %for.end
  %call28 = tail call i32 @___ratelimit(ptr noundef nonnull @panfrost_gem_shrinker_scan._rs, ptr noundef nonnull @__func__.panfrost_gem_shrinker_scan) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then27.cleanup_crit_edge, label %do.end

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  %shl = shl i32 %freed.0.lcssa, 12
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %shl) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then27.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.end.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %freed.0.lcssa, %if.then27.cleanup_crit_edge ], [ %freed.0.lcssa, %do.end ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_gem_shrinker_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %nr_deferred = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 26, i32 7
  %2 = ptrtoint ptr %nr_deferred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nr_deferred, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %shrinker = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 26
  tail call void @unregister_shrinker(ptr noundef %shrinker) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_teardown_mappings_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_purge_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c", i32 106, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c", i32 89, i32 3}
!4 = !{ptr @panfrost_gem_shrinker_scan._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.panfrost_gem_shrinker_scan, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @panfrost_gem_shrinker_scan._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @panfrost_gem_shrinker_scan._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2000, i32 1}
