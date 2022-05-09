; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_debugfs.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.89, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.90, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.89 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.90 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vc4_debugfs_info_entry = type { %struct.list_head, %struct.drm_info_list }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm,bcm2711-vc5\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hvs_load_tracker\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 31, i32 10 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [37 x i8] c"../drivers/gpu/drm/vc4/vc4_debugfs.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 32, i32 23 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_debugfs_init(ptr noundef %minor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hvs, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call3 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 4
  %8 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs_root, align 4
  %load_tracker_enabled = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 31
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.1, i16 noundef zeroext 420, ptr noundef %9, ptr noundef %load_tracker_enabled) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %debugfs_list = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 38
  %10 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %entry1.019 = load ptr, ptr %debugfs_list, align 4
  %cmp.not20 = icmp eq ptr %entry1.019, %debugfs_list
  br i1 %cmp.not20, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %debugfs_root5 = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %entry1.021 = phi ptr [ %entry1.019, %for.body.lr.ph ], [ %entry1.0, %for.body.for.body_crit_edge ]
  %info = getelementptr inbounds %struct.vc4_debugfs_info_entry, ptr %entry1.021, i32 0, i32 1
  %11 = ptrtoint ptr %debugfs_root5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugfs_root5, align 4
  tail call void @drm_debugfs_create_files(ptr noundef %info, i32 noundef 1, ptr noundef %12, ptr noundef %minor) #3
  %13 = ptrtoint ptr %entry1.021 to i32
  call void @__asan_load4_noabort(i32 %13)
  %entry1.0 = load ptr, ptr %entry1.021, align 4
  %cmp.not = icmp eq ptr %entry1.0, %debugfs_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_debugfs_add_file(ptr noundef %dev, ptr noundef %name, ptr noundef %show, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 24, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.vc4_debugfs_info_entry, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %name, ptr %info, align 4
  %show6 = getelementptr inbounds %struct.vc4_debugfs_info_entry, ptr %call.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %show6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %show, ptr %show6, align 4
  %data8 = getelementptr inbounds %struct.vc4_debugfs_info_entry, ptr %call.i, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %data8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data8, align 4
  %debugfs_list = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 38
  %5 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %debugfs_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %debugfs_list, ptr noundef %6) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %debugfs_list, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %debugfs_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call.i, ptr %debugfs_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_debugfs_add_regset32(ptr noundef %drm, ptr noundef %name, ptr noundef %regset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2.i = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 24, i32 noundef 3520) #3
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.vc4_debugfs_add_file.exit_crit_edge, label %if.end.i

entry.vc4_debugfs_add_file.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %vc4_debugfs_add_file.exit

if.end.i:                                         ; preds = %entry
  %info.i = getelementptr inbounds %struct.vc4_debugfs_info_entry, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %name, ptr %info.i, align 4
  %show6.i = getelementptr inbounds %struct.vc4_debugfs_info_entry, ptr %call.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %show6.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vc4_debugfs_regset32, ptr %show6.i, align 4
  %data8.i = getelementptr inbounds %struct.vc4_debugfs_info_entry, ptr %call.i.i, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %data8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regset, ptr %data8.i, align 4
  %debugfs_list.i = getelementptr inbounds %struct.vc4_dev, ptr %drm, i32 0, i32 38
  %5 = ptrtoint ptr %debugfs_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %debugfs_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %debugfs_list.i, ptr noundef %6) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.vc4_debugfs_add_file.exit_crit_edge

if.end.i.vc4_debugfs_add_file.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vc4_debugfs_add_file.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %debugfs_list.i, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %debugfs_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call.i.i, ptr %debugfs_list.i, align 4
  br label %vc4_debugfs_add_file.exit

vc4_debugfs_add_file.exit:                        ; preds = %if.end.i.i.i, %if.end.i.vc4_debugfs_add_file.exit_crit_edge, %entry.vc4_debugfs_add_file.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_debugfs_regset32(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info_ent, align 4
  %data = getelementptr inbounds %struct.drm_info_list, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #3
  %6 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %9 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !13
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__drm_puts_seq_file, ptr %6, align 4, !alias.scope !13
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %m, ptr %7, align 4, !alias.scope !13
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %8, align 4, !alias.scope !13
  call void @drm_print_regset32(ptr noundef nonnull %p, ptr noundef %5) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_print_regset32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_debugfs.c", i32 31, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vc4/vc4_debugfs.c", i32 32, i32 23}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"drm_seq_file_printer: %agg.result"}
!15 = distinct !{!15, !"drm_seq_file_printer"}
