; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/qxl/qxl_debugfs.c_pt.bc'
source_filename = "../drivers/gpu/drm/qxl/qxl_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qxl_device = type { %struct.drm_device, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.qxl_mman, %struct.qxl_gem, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qxl_memslot, %struct.qxl_memslot, %struct.spinlock, %struct.idr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, [32 x %struct.qxl_debugfs], i32, %struct.mutex, %struct.idr, %struct.spinlock, i32, %struct.mutex, ptr, ptr, %struct.mutex, [3 x ptr], [3 x i32], %struct.work_struct, ptr, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.qxl_mman = type { %struct.ttm_device }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.92] }
%struct.anon.92 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.qxl_gem = type { %struct.mutex, %struct.list_head }
%struct.qxl_memslot = type { i32, ptr, i8, i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.qxl_debugfs = type { ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.dma_resv_iter = type { ptr, i8, ptr, i32, i32, ptr, i32, i8 }

@qxl_debugfs_list = internal global { [2 x %struct.drm_info_list], [32 x i8] } { [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.2, ptr @qxl_debugfs_irq_received, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.3, ptr @qxl_debugfs_buffers_info, i32 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Reached maximum number of debugfs components.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Report so we increase QXL_DEBUGFS_MAX_COMPONENTS.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"irq_received\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qxl_buffers\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"size %ld, pc %d, num releases %d\0A\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"qxl_debugfs_list\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 78, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 113, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 114, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 79, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 80, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 44, i32 16 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [37 x i8] c"../drivers/gpu/drm/qxl/qxl_debugfs.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 71, i32 17 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @qxl_debugfs_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_debugfs_list to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_debugfs_init(ptr noundef %minor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 4
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @qxl_debugfs_list, i32 noundef 2, ptr noundef %3, ptr noundef %minor) #3
  tail call void @qxl_ttm_debugfs_init(ptr noundef %1) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_ttm_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_debugfs_add_files(ptr nocapture noundef %qdev, ptr noundef %files, i32 noundef %nfiles) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_count = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 44
  %0 = ptrtoint ptr %debugfs_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debugfs_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp35.not = icmp eq i32 %1, 0
  br i1 %cmp35.not, label %entry.if.end6_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 43, i32 %i.036
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %3, %files
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %add = add i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp4 = icmp ugt i32 %add, 32
  br i1 %cmp4, label %if.then5, label %for.end.if.end6_crit_edge

for.end.if.end6_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #3
  br label %cleanup

if.end6:                                          ; preds = %for.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %add40 = phi i32 [ %add, %for.end.if.end6_crit_edge ], [ 1, %entry.if.end6_crit_edge ]
  %arrayidx9 = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 43, i32 %1
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %files, ptr %arrayidx9, align 4
  %5 = ptrtoint ptr %debugfs_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debugfs_count, align 4
  %num_files = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 43, i32 %6, i32 1
  %7 = ptrtoint ptr %num_files to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nfiles, ptr %num_files, align 4
  store i32 %add40, ptr %debugfs_count, align 4
  %primary = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 6
  %8 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %primary, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debugfs_root, align 4
  tail call void @drm_debugfs_create_files(ptr noundef %files, i32 noundef %nfiles, ptr noundef %11, ptr noundef %9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %for.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_debugfs_irq_received(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %irq_received = getelementptr inbounds %struct.qxl_device, ptr %5, i32 0, i32 34
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %irq_received, i32 noundef 4) #3
  %6 = ptrtoint ptr %irq_received to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %irq_received, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %7) #3
  %irq_received_display = getelementptr inbounds %struct.qxl_device, ptr %5, i32 0, i32 35
  %call.i.i13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_display, i32 noundef 4) #3
  %8 = ptrtoint ptr %irq_received_display to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %irq_received_display, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %9) #3
  %irq_received_cursor = getelementptr inbounds %struct.qxl_device, ptr %5, i32 0, i32 36
  %call.i.i14 = tail call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_cursor, i32 noundef 4) #3
  %10 = ptrtoint ptr %irq_received_cursor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %irq_received_cursor, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %11) #3
  %irq_received_io_cmd = getelementptr inbounds %struct.qxl_device, ptr %5, i32 0, i32 37
  %call.i.i15 = tail call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #3
  %12 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %irq_received_io_cmd, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %13) #3
  %irq_received_error = getelementptr inbounds %struct.qxl_device, ptr %5, i32 0, i32 38
  %14 = ptrtoint ptr %irq_received_error to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_received_error, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %15) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_debugfs_buffers_info(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %cursor = alloca %struct.dma_resv_iter, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %objects = getelementptr inbounds %struct.qxl_device, ptr %5, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %objects to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn29 = load ptr, ptr %objects, align 4
  %cmp.not30 = icmp eq ptr %.pn29, %objects
  br i1 %cmp.not30, label %entry.for.end19_crit_edge, label %for.body.lr.ph

entry.for.end19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end19

for.body.lr.ph:                                   ; preds = %entry
  %all_fences2.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 1
  %fence.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 2
  %is_restarted.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %.pn31 = phi ptr [ %.pn29, %for.body.lr.ph ], [ %.pn, %for.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cursor) #3
  %7 = call ptr @memset(ptr %cursor, i32 255, i32 32)
  %resv = getelementptr i8, ptr %.pn31, i32 -216
  %8 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv, align 8
  %10 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %cursor, align 4
  %11 = ptrtoint ptr %all_fences2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %all_fences2.i, align 4
  %12 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %fence.i, align 4
  %call = call ptr @dma_resv_iter_first_unlocked(ptr noundef nonnull %cursor) #3
  %tobool.not27 = icmp eq ptr %call, null
  br i1 %tobool.not27, label %for.body.for.end_crit_edge, label %for.body.for.body7_crit_edge

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %rel.028 = phi i32 [ %inc, %for.body7.for.body7_crit_edge ], [ 0, %for.body.for.body7_crit_edge ]
  %13 = ptrtoint ptr %is_restarted.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_restarted.i, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i.not = icmp eq i8 %14, 0
  %rel.0.op = add i32 %rel.028, 1
  %inc = select i1 %tobool.i.not, i32 %rel.0.op, i32 1
  %call9 = call ptr @dma_resv_iter_next_unlocked(ptr noundef nonnull %cursor) #3
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %for.body7.for.end_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body7

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body7.for.end_crit_edge, %for.body.for.end_crit_edge
  %rel.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %inc, %for.body7.for.end_crit_edge ]
  %size = getelementptr i8, ptr %.pn31, i32 -232
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 8
  %pin_count = getelementptr i8, ptr %.pn31, i32 -8
  %17 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pin_count, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, i32 noundef %16, i32 noundef %18, i32 noundef %rel.0.lcssa) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cursor) #3
  %19 = ptrtoint ptr %.pn31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn31, align 4
  %cmp.not = icmp eq ptr %.pn, %objects
  br i1 %cmp.not, label %for.end.for.end19_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end.for.end19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end19

for.end19:                                        ; preds = %for.end.for.end19_crit_edge, %entry.for.end19_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_first_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_next_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/qxl/qxl_debugfs.c", i32 113, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/qxl/qxl_debugfs.c", i32 114, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/qxl/qxl_debugfs.c", i32 79, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/qxl/qxl_debugfs.c", i32 80, i32 4}
!8 = !{ptr @qxl_debugfs_list, !9, !"qxl_debugfs_list", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/qxl/qxl_debugfs.c", i32 78, i32 29}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/qxl/qxl_debugfs.c", i32 44, i32 16}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/qxl/qxl_debugfs.c", i32 71, i32 17}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i8 0, i8 2}
