; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panfrost/panfrost_perfcnt.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_perfcnt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.100, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.100 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.panfrost_perfcnt = type { ptr, i32, ptr, ptr, %struct.mutex, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dma_buf_map = type { %union.anon.98, i8 }
%union.anon.98 = type { ptr }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.drm_panfrost_perfcnt_enable = type { i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.panfrost_gem_mapping = type { %struct.list_head, %struct.kref, ptr, %struct.drm_mm_node, ptr, i8 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@panfrost_perfcnt_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&perfcnt->lock\00", [17 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private constant [47 x i8] c"../drivers/gpu/drm/panfrost/panfrost_perfcnt.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 333, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 230, i32 6 }
@___asan_gen_.15 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 214, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 174, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 87, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @panfrost_perfcnt_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @init_completion.__key, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_perfcnt_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_perfcnt_clean_cache_done(ptr nocapture noundef readonly %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %perfcnt = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 21
  %0 = ptrtoint ptr %perfcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %perfcnt, align 8
  %dump_comp = getelementptr inbounds %struct.panfrost_perfcnt, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %dump_comp) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_perfcnt_sample_done(ptr nocapture noundef readonly %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 117440512) #6, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_ioctl_perfcnt_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %perfcnt1 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %perfcnt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perfcnt1, align 8
  %call = tail call i32 @panfrost_unstable_ioctl_check() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %counterset = getelementptr inbounds %struct.drm_panfrost_perfcnt_enable, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %counterset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %counterset, align 4
  %features.i.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %features.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %7)
  %cmp.i = icmp ugt i16 %7, 4095
  %cond = zext i1 %cmp.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cond)
  %cmp = icmp ugt i32 %5, %cond
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.panfrost_perfcnt, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %10 = ptrtoint ptr %counterset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %counterset, align 4
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %12 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_priv.i, align 4
  %14 = ptrtoint ptr %perfcnt1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %perfcnt1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map.i) #6
  %16 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %map.i, align 8, !annotation !24
  %user2.i = getelementptr inbounds %struct.panfrost_perfcnt, ptr %15, i32 0, i32 3
  %17 = ptrtoint ptr %user2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %user2.i, align 4
  %cmp.i24 = icmp eq ptr %13, %18
  br i1 %cmp.i24, label %if.then6.panfrost_perfcnt_enable_locked.exit_crit_edge, label %if.else.i

if.then6.panfrost_perfcnt_enable_locked.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %panfrost_perfcnt_enable_locked.exit

if.else.i:                                        ; preds = %if.then6
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end5.i, label %if.else.i.panfrost_perfcnt_enable_locked.exit_crit_edge

if.else.i.panfrost_perfcnt_enable_locked.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %panfrost_perfcnt_enable_locked.exit

if.end5.i:                                        ; preds = %if.else.i
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %20, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp6.i, label %if.end5.i.err_put_pm.i_crit_edge, label %if.end8.i

if.end5.i.err_put_pm.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_pm.i

if.end8.i:                                        ; preds = %if.end5.i
  %ddev.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ddev.i, align 4
  %bosize.i = getelementptr inbounds %struct.panfrost_perfcnt, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %bosize.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bosize.i, align 4
  %call9.i = tail call ptr @drm_gem_shmem_create(ptr noundef %22, i32 noundef %24) #6
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call9.i to i32
  br label %err_put_pm.i

if.end13.i:                                       ; preds = %if.end8.i
  %call14.i = tail call i32 @panfrost_gem_open(ptr noundef %call9.i, ptr noundef %file_priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.err_put_bo.i_crit_edge

if.end13.i.err_put_bo.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_bo.i

if.end17.i:                                       ; preds = %if.end13.i
  %call20.i = tail call ptr @panfrost_gem_mapping_get(ptr noundef %call9.i, ptr noundef %13) #6
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call20.i, ptr %15, align 4
  %tobool22.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool22.not.i, label %if.end17.i.err_close_bo.i_crit_edge, label %if.end24.i

if.end17.i.err_close_bo.i_crit_edge:              ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close_bo.i

if.end24.i:                                       ; preds = %if.end17.i
  %call25.i = call i32 @drm_gem_shmem_vmap(ptr noundef %call9.i, ptr noundef nonnull %map.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end24.i.err_put_mapping.i_crit_edge

if.end24.i.err_put_mapping.i_crit_edge:           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_mapping.i

if.end28.i:                                       ; preds = %if.end24.i
  %27 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map.i, align 8
  %buf.i = getelementptr inbounds %struct.panfrost_perfcnt, ptr %15, i32 0, i32 2
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %buf.i, align 4
  %30 = ptrtoint ptr %perfcnt1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %perfcnt1, align 8
  %dump_comp.i = getelementptr inbounds %struct.panfrost_perfcnt, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %dump_comp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %dump_comp.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  call void @arm_heavy_mb() #6
  %iomem.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 768) #6, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iomem.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %36, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 50331648) #6, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iomem.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %38, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 134217728) #6, !srcloc !23
  %39 = ptrtoint ptr %perfcnt1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %perfcnt1, align 8
  %dump_comp41.i = getelementptr inbounds %struct.panfrost_perfcnt, ptr %40, i32 0, i32 5
  %call43.i = call i32 @wait_for_completion_timeout(ptr noundef %dump_comp41.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end46.i

if.then45.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_gem_shmem_vunmap(ptr noundef %call9.i, ptr noundef nonnull %map.i) #6
  br label %err_put_mapping.i

if.end46.i:                                       ; preds = %if.end28.i
  %41 = ptrtoint ptr %user2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %13, ptr %user2.i, align 4
  %42 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %15, align 4
  %mmu.i = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmu.i, align 8
  %call49.i = call i32 @panfrost_mmu_as_get(ptr noundef %1, ptr noundef %45) #6
  %shl.i = shl i32 %call49.i, 4
  %46 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %features.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %47)
  %cmp.i154.i = icmp ugt i16 %47, 4095
  %shl52.i = shl i32 %11, 8
  %or53.i = select i1 %cmp.i154.i, i32 %shl52.i, i32 0
  %or.i = or i32 %shl.i, %or53.i
  %cfg.0.i = or i32 %or.i, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iomem.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %49, i32 108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 -1) #6, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iomem.i, align 4
  %add.ptr64.i = getelementptr i8, ptr %51, i32 112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 -1) #6, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iomem.i, align 4
  %add.ptr69.i = getelementptr i8, ptr %53, i32 124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 -1) #6, !srcloc !23
  %hw_issues.i.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 24
  %54 = ptrtoint ptr %hw_issues.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %hw_issues.i.i, align 4
  %56 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i.not.i = icmp eq i32 %56, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iomem.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %58, i32 116
  br i1 %tobool.i.not.i, label %do.body78.i, label %do.body72.i

do.body72.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 0) #6, !srcloc !23
  br label %do.body84.i

do.body78.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 -1) #6, !srcloc !23
  br label %do.body84.i

do.body84.i:                                      ; preds = %do.body78.i, %do.body72.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  %59 = call i32 @llvm.bswap.i32(i32 %cfg.0.i) #6
  %60 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iomem.i, align 4
  %add.ptr88.i = getelementptr i8, ptr %61, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88.i, i32 %59) #6, !srcloc !23
  %62 = ptrtoint ptr %hw_issues.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %hw_issues.i.i, align 4
  %64 = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.i156.not.i = icmp eq i32 %64, 0
  br i1 %tobool.i156.not.i, label %do.body84.i.if.end96.i_crit_edge, label %do.body91.i

do.body84.i.if.end96.i_crit_edge:                 ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

do.body91.i:                                      ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !32
  call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iomem.i, align 4
  %add.ptr95.i = getelementptr i8, ptr %66, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95.i, i32 -1) #6, !srcloc !23
  br label %if.end96.i

if.end96.i:                                       ; preds = %do.body91.i, %do.body84.i.if.end96.i_crit_edge
  call fastcc void @drm_gem_object_put(ptr noundef %call9.i) #6
  br label %panfrost_perfcnt_enable_locked.exit

err_put_mapping.i:                                ; preds = %if.then45.i, %if.end24.i.err_put_mapping.i_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.end24.i.err_put_mapping.i_crit_edge ], [ -110, %if.then45.i ]
  %67 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %15, align 4
  call void @panfrost_gem_mapping_put(ptr noundef %68) #6
  br label %err_close_bo.i

err_close_bo.i:                                   ; preds = %err_put_mapping.i, %if.end17.i.err_close_bo.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %err_put_mapping.i ], [ -22, %if.end17.i.err_close_bo.i_crit_edge ]
  call void @panfrost_gem_close(ptr noundef %call9.i, ptr noundef %file_priv) #6
  br label %err_put_bo.i

err_put_bo.i:                                     ; preds = %err_close_bo.i, %if.end13.i.err_put_bo.i_crit_edge
  %ret.2.i = phi i32 [ %call14.i, %if.end13.i.err_put_bo.i_crit_edge ], [ %ret.1.i, %err_close_bo.i ]
  %tobool.not.i.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i.i, label %err_put_bo.i.err_put_pm.i_crit_edge, label %if.then.i.i

err_put_bo.i.err_put_pm.i_crit_edge:              ; preds = %err_put_bo.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_pm.i

if.then.i.i:                                      ; preds = %err_put_bo.i
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  call void @llvm.prefetch.p0(ptr nonnull %call9.i, i32 1, i32 3, i32 1) #6
  %69 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call9.i, ptr nonnull %call9.i, i32 1, ptr nonnull elementtype(i32) %call9.i) #6, !srcloc !34
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.err_put_pm.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !35

if.end5.i.i.i.i.i.i.i.err_put_pm.i_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_pm.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %call9.i, i32 noundef 3) #6
  br label %err_put_pm.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  call void @drm_gem_object_free(ptr noundef nonnull %call9.i) #6
  br label %err_put_pm.i

err_put_pm.i:                                     ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.err_put_pm.i_crit_edge, %err_put_bo.i.err_put_pm.i_crit_edge, %if.then11.i, %if.end5.i.err_put_pm.i_crit_edge
  %ret.3.i = phi i32 [ %call.i.i, %if.end5.i.err_put_pm.i_crit_edge ], [ %25, %if.then11.i ], [ %ret.2.i, %err_put_bo.i.err_put_pm.i_crit_edge ], [ %ret.2.i, %if.end5.i.i.i.i.i.i.i.err_put_pm.i_crit_edge ], [ %ret.2.i, %if.then10.i.i.i.i.i.i.i ], [ %ret.2.i, %if.then.i.i.i.i ]
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %call.i157.i = call i32 @__pm_runtime_idle(ptr noundef %71, i32 noundef 5) #6
  br label %panfrost_perfcnt_enable_locked.exit

panfrost_perfcnt_enable_locked.exit:              ; preds = %err_put_pm.i, %if.end96.i, %if.else.i.panfrost_perfcnt_enable_locked.exit_crit_edge, %if.then6.panfrost_perfcnt_enable_locked.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.3.i, %err_put_pm.i ], [ 0, %if.end96.i ], [ 0, %if.then6.panfrost_perfcnt_enable_locked.exit_crit_edge ], [ -16, %if.else.i.panfrost_perfcnt_enable_locked.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map.i) #6
  br label %if.end10

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call fastcc i32 @panfrost_perfcnt_disable_locked(ptr noundef %1, ptr noundef %file_priv)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %panfrost_perfcnt_enable_locked.exit
  %ret.0 = phi i32 [ %retval.0.i, %panfrost_perfcnt_enable_locked.exit ], [ %call9, %if.else ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end10 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_unstable_ioctl_check() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @panfrost_perfcnt_disable_locked(ptr noundef %pfdev, ptr noundef %file_priv) unnamed_addr #0 align 64 {
entry:
  %map = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %perfcnt1 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 21
  %2 = ptrtoint ptr %perfcnt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perfcnt1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #6
  %4 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -4278190081, ptr %map, align 8, !annotation !24
  %buf = getelementptr inbounds %struct.panfrost_perfcnt, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  store ptr %6, ptr %map, align 8
  %user2 = getelementptr inbounds %struct.panfrost_perfcnt, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %user2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user2, align 4
  %cmp.not = icmp eq ptr %1, %8
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %9 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iomem, align 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iomem, align 4
  %add.ptr12 = getelementptr i8, ptr %14, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iomem, align 4
  %add.ptr17 = getelementptr i8, ptr %16, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem, align 4
  %add.ptr22 = getelementptr i8, ptr %18, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #6, !srcloc !23
  %19 = ptrtoint ptr %user2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %user2, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %obj = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %obj, align 4
  call void @drm_gem_shmem_vunmap(ptr noundef %23, ptr noundef nonnull %map) #6
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %buf, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %obj26 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %obj26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %obj26, align 4
  call void @panfrost_gem_close(ptr noundef %28, ptr noundef %file_priv) #6
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %mmu = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmu, align 8
  call void @panfrost_mmu_as_put(ptr noundef %pfdev, ptr noundef %32) #6
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  call void @panfrost_gem_mapping_put(ptr noundef %34) #6
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %3, align 4
  %36 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pfdev, align 8
  %call.i = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 12, i32 22
  %38 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %39 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pfdev, align 8
  %call.i52 = call i32 @__pm_runtime_suspend(ptr noundef %40, i32 noundef 13) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_ioctl_perfcnt_dump(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %perfcnt1 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %perfcnt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perfcnt1, align 8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %data, align 8
  %conv = trunc i64 %5 to i32
  %6 = inttoptr i32 %conv to ptr
  %call = tail call i32 @panfrost_unstable_ioctl_check() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.panfrost_perfcnt, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %user = getelementptr inbounds %struct.panfrost_perfcnt, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %9 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_priv, align 4
  %cmp.not = icmp eq ptr %8, %10
  br i1 %cmp.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end4:                                          ; preds = %if.end
  %11 = ptrtoint ptr %perfcnt1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %perfcnt1, align 8
  %dump_comp.i = getelementptr inbounds %struct.panfrost_perfcnt, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dump_comp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dump_comp.i, align 4
  %14 = load ptr, ptr %perfcnt1, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %start.i = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %16, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start.i, align 8
  %shl.i = shl i64 %18, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %conv.i = trunc i64 %shl.i to i32
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #6
  %iomem.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %shr.i = lshr i64 %shl.i, 32
  %conv6.i = trunc i64 %shr.i to i32
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv6.i) #6
  %23 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iomem.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %24, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %22) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomem.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %26, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 768) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iomem.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %28, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 67108864) #6, !srcloc !23
  %29 = ptrtoint ptr %perfcnt1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %perfcnt1, align 8
  %dump_comp20.i = getelementptr inbounds %struct.panfrost_perfcnt, ptr %30, i32 0, i32 5
  %call21.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %dump_comp20.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool.not.i = icmp eq i32 %call21.i, 0
  %31 = tail call i32 @llvm.smin.i32(i32 %call21.i, i32 0) #6
  %ret.0.i = select i1 %tobool.not.i, i32 -110, i32 %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool6.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end8:                                          ; preds = %if.end4
  %buf = getelementptr inbounds %struct.panfrost_perfcnt, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf, align 4
  %bosize = getelementptr inbounds %struct.panfrost_perfcnt, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %bosize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bosize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp9.i.i = icmp slt i32 %35, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !35

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %out

if.then.i.i.i:                                    ; preds = %if.end8
  tail call void @__check_object_size(ptr noundef %33, i32 noundef %35, i1 noundef zeroext true) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 %35, i32 -1226833920) #9, !srcloc !46
  %asmresult.i.i = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %33, i32 noundef %35) #6
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef %33, i32 noundef %35) #6
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %35, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %35, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool10.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool10.not, i32 0, i32 -14
  br label %out

out:                                              ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %ret.0.i, %if.end4.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_perfcnt_close(ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %perfcnt2 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %perfcnt2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perfcnt2, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #6
  %lock = getelementptr inbounds %struct.panfrost_perfcnt, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %user = getelementptr inbounds %struct.panfrost_perfcnt, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user, align 4
  %cmp = icmp eq ptr %9, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call fastcc i32 @panfrost_perfcnt_disable_locked(ptr noundef %3, ptr noundef %file_priv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %call.i16 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i16, ptr %last_busy.i, align 8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %call.i17 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_perfcnt_init(ptr noundef %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_features.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 23
  %0 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %hw_features.i, align 4
  %2 = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.else, label %cond.false

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %l2_present = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 4
  %3 = ptrtoint ptr %l2_present to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %l2_present, align 8
  %call.i = tail call i32 @__sw_hweight64(i64 noundef %4) #6
  %mul669 = shl i32 %call.i, 11
  br label %if.end

if.else:                                          ; preds = %entry
  %mem_features = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 11
  %5 = ptrtoint ptr %mem_features to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mem_features, align 4
  %shr671 = lshr i32 %6, 8
  %and672 = and i32 %shr671, 15
  %add673 = add nuw nsw i32 %and672, 1
  %shader_present = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 11, i32 2
  %7 = ptrtoint ptr %shader_present to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %shader_present, align 8
  %shr.i = lshr i64 %8, 32
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #6, !range !47
  %add.i = sub nuw nsw i32 64, %9
  br label %fls64.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i = trunc i64 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool.not.i5.i = icmp eq i32 %conv1.i, 0
  %10 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i, i1 true) #6, !range !47
  %sub.i6.i = sub nuw nsw i32 32, %10
  %cond.i7.i = select i1 %tobool.not.i5.i, i32 0, i32 %sub.i6.i
  br label %fls64.exit

fls64.exit:                                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ %cond.i7.i, %if.end.i ]
  %add676 = add nuw nsw i32 %add673, %retval.0.i
  %add677 = shl nuw nsw i32 %add676, 8
  %mul679 = add nuw nsw i32 %add677, 512
  br label %if.end

if.end:                                           ; preds = %fls64.exit, %cond.false
  %size.0 = phi i32 [ %mul669, %cond.false ], [ %mul679, %fls64.exit ]
  %11 = ptrtoint ptr %pfdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pfdev, align 8
  %call.i788 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 164, i32 noundef 3520) #6
  %tobool681.not = icmp eq ptr %call.i788, null
  br i1 %tobool681.not, label %if.end.cleanup_crit_edge, label %if.end683

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end683:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bosize = getelementptr inbounds %struct.panfrost_perfcnt, ptr %call.i788, i32 0, i32 1
  %13 = ptrtoint ptr %bosize to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %size.0, ptr %bosize, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %14 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem, align 4
  %add.ptr688 = getelementptr i8, ptr %17, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr688, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iomem, align 4
  %add.ptr693 = getelementptr i8, ptr %19, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr693, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem, align 4
  %add.ptr698 = getelementptr i8, ptr %21, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr698, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iomem, align 4
  %add.ptr703 = getelementptr i8, ptr %23, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr703, i32 0) #6, !srcloc !23
  %dump_comp = getelementptr inbounds %struct.panfrost_perfcnt, ptr %call.i788, i32 0, i32 5
  %24 = ptrtoint ptr %dump_comp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dump_comp, align 4
  %wait.i = getelementptr inbounds %struct.panfrost_perfcnt, ptr %call.i788, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #6
  %lock = getelementptr inbounds %struct.panfrost_perfcnt, ptr %call.i788, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @panfrost_perfcnt_init.__key) #6
  %perfcnt707 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 21
  %25 = ptrtoint ptr %perfcnt707 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i788, ptr %perfcnt707, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end683, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end683 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_perfcnt_fini(ptr nocapture noundef readonly %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %iomem = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem, align 4
  %add.ptr16 = getelementptr i8, ptr %9, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #6, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_gem_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_gem_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_vmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_mmu_as_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_gem_object_put(ptr noundef %obj) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %tobool.not = icmp eq ptr %obj, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %obj, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr nonnull %obj, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %obj, ptr nonnull %obj, i32 1, ptr nonnull elementtype(i32) %obj) #6, !srcloc !34
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !35

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %obj, i32 noundef 3) #6
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @drm_gem_object_free(ptr noundef nonnull %obj) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_mapping_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_close(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_mmu_as_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @panfrost_perfcnt_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panfrost/panfrost_perfcnt.c", i32 333, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!10 = !{ptr @init_completion.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../include/linux/completion.h", i32 87, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2155672897}
!23 = !{i64 5940375}
!24 = !{!"auto-init"}
!25 = !{i64 2155676231}
!26 = !{i64 2155676852}
!27 = !{i64 2155677308}
!28 = !{i64 2155677819}
!29 = !{i64 2155678300}
!30 = !{i64 2155678781}
!31 = !{i64 2155680165}
!32 = !{i64 2155680625}
!33 = !{i64 2148600462}
!34 = !{i64 2148514902, i64 2148514934, i64 2148514963, i64 2148514997, i64 2148515028, i64 2148515051}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2149904844}
!37 = !{i64 2155681161}
!38 = !{i64 2155681607}
!39 = !{i64 2155682053}
!40 = !{i64 2155682495}
!41 = !{i64 2155682947}
!42 = !{i64 2155673437}
!43 = !{i64 2155674058}
!44 = !{i64 2155674871}
!45 = !{i64 2155675492}
!46 = !{i64 2152904541, i64 2152904566}
!47 = !{i32 0, i32 33}
!48 = !{i64 2155690262}
!49 = !{i64 2155690710}
!50 = !{i64 2155691146}
!51 = !{i64 2155691582}
!52 = !{i64 2155692018}
!53 = !{i64 2155692629}
!54 = !{i64 2155693077}
!55 = !{i64 2155693513}
!56 = !{i64 2155693949}
!57 = !{i64 2155694385}
