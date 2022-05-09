; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/qxl/qxl_irq.c_pt.bc'
source_filename = "../drivers/gpu/drm/qxl/qxl_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.89 = type { i32, ptr }
%struct.qxl_device = type { %struct.drm_device, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.qxl_mman, %struct.qxl_gem, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qxl_memslot, %struct.qxl_memslot, %struct.spinlock, %struct.idr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, [32 x %struct.qxl_debugfs], i32, %struct.mutex, %struct.idr, %struct.spinlock, i32, %struct.mutex, ptr, ptr, %struct.mutex, [3 x ptr], [3 x i32], %struct.work_struct, ptr, i32, i32 }
%struct.qxl_mman = type { %struct.ttm_device }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.91] }
%struct.anon.91 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.qxl_gem = type { %struct.mutex, %struct.list_head }
%struct.qxl_memslot = type { i32, ptr, i8, i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.qxl_debugfs = type { ptr, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.qxl_ram_header = type <{ i32, i32, i32, [4096 x i8], %struct.qxl_ring_header, [32 x %struct.qxl_command], %struct.qxl_ring_header, [32 x %struct.qxl_command], %struct.qxl_ring_header, [8 x i64], %struct.qxl_rect, i32, %struct.qxl_mem_slot, %struct.qxl_surface_create, i64, i64, [64 x i8] }>
%struct.qxl_command = type { i64, i32, i32 }
%struct.qxl_ring_header = type { i32, i32, i32, i32, i32 }
%struct.qxl_rect = type { i32, i32, i32, i32 }
%struct.qxl_mem_slot = type { i64, i64 }
%struct.qxl_surface_create = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@qxl_irq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&qdev->display_event\00", [43 x i8] zeroinitializer }, align 32
@qxl_irq_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&qdev->cursor_event\00", [44 x i8] zeroinitializer }, align 32
@qxl_irq_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&qdev->io_cmd_event\00", [44 x i8] zeroinitializer }, align 32
@qxl_irq_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&qdev->release_event\00", [43 x i8] zeroinitializer }, align 32
@qxl_irq_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&qdev->client_monitors_config_work)\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed installing irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@qxl_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014[drm] driver is in bug mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qxl_irq_handler\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/qxl/qxl_irq.c\00", [34 x i8] zeroinitializer }, align 32
@qxl_irq_handler._entry_ptr = internal global ptr @qxl_irq_handler._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 88, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 89, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 90, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 91, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 92, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 102, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [33 x i8] c"../drivers/gpu/drm/qxl/qxl_irq.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 64, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @qxl_irq_handler._entry, ptr @qxl_irq_handler._entry_ptr, ptr @qxl_irq_init.__key, ptr @.str, ptr @qxl_irq_init.__key.1, ptr @.str.2, ptr @qxl_irq_init.__key.3, ptr @.str.4, ptr @qxl_irq_init.__key.5, ptr @.str.6, ptr @qxl_irq_init.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_irq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_irq_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_irq_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_irq_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_irq_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_irq_init(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %display_event = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 39
  tail call void @__init_waitqueue_head(ptr noundef %display_event, ptr noundef nonnull @.str, ptr noundef nonnull @qxl_irq_init.__key) #4
  %cursor_event = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 40
  tail call void @__init_waitqueue_head(ptr noundef %cursor_event, ptr noundef nonnull @.str.2, ptr noundef nonnull @qxl_irq_init.__key.1) #4
  %io_cmd_event = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 41
  tail call void @__init_waitqueue_head(ptr noundef %io_cmd_event, ptr noundef nonnull @.str.4, ptr noundef nonnull @qxl_irq_init.__key.3) #4
  %release_event = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 30
  tail call void @__init_waitqueue_head(ptr noundef %release_event, ptr noundef nonnull @.str.6, ptr noundef nonnull @qxl_irq_init.__key.5) #4
  %client_monitors_config_work = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 42
  tail call void @__init_work(ptr noundef %client_monitors_config_work, i32 noundef 0) #4
  %2 = ptrtoint ptr %client_monitors_config_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %client_monitors_config_work, align 8
  %lockdep_map = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 42, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @qxl_irq_init.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry15 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 42, i32 1
  %3 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 42, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 42, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @qxl_client_monitors_config_work_func, ptr %func, align 4
  %irq_received = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 34
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_received, i32 noundef 4) #4
  %6 = ptrtoint ptr %irq_received to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %irq_received, align 4
  %irq_received_display = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 35
  %call.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_received_display, i32 noundef 4) #4
  %7 = ptrtoint ptr %irq_received_display to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %irq_received_display, align 4
  %irq_received_cursor = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 36
  %call.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_received_cursor, i32 noundef 4) #4
  %8 = ptrtoint ptr %irq_received_cursor to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %irq_received_cursor, align 4
  %irq_received_io_cmd = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 37
  %call.i.i42 = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_received_io_cmd, i32 noundef 4) #4
  %9 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %irq_received_io_cmd, align 4
  %irq_received_error = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 38
  %10 = ptrtoint ptr %irq_received_error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %irq_received_error, align 8
  %irq = getelementptr i8, ptr %1, i32 932
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %driver = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 4
  %13 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver, align 4
  %name = getelementptr inbounds %struct.drm_driver, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %12, ptr noundef nonnull @qxl_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %16, ptr noundef %qdev) #4
  %ram_header = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 20
  %17 = ptrtoint ptr %ram_header to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ram_header, align 4
  %int_mask = getelementptr inbounds %struct.qxl_ram_header, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %int_mask to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 39, ptr %int_mask, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then, !prof !32

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_client_monitors_config_work_func(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -6000
  tail call void @qxl_display_read_client_monitors_config(ptr noundef %add.ptr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_irq_handler(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ram_header = getelementptr inbounds %struct.qxl_device, ptr %arg, i32 0, i32 20
  %0 = ptrtoint ptr %ram_header to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ram_header, align 4
  %int_pending = getelementptr inbounds %struct.qxl_ram_header, ptr %1, i32 0, i32 1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %int_pending, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %int_pending, i32 1, i32 3, i32 1) #4
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %int_pending) #4, !srcloc !34
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_received = getelementptr inbounds %struct.qxl_device, ptr %arg, i32 0, i32 34
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_received, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %irq_received, i32 1, i32 3, i32 1) #4
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_received, ptr %irq_received, i32 1, ptr elementtype(i32) %irq_received) #4, !srcloc !36
  %and = and i32 %asmresult.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end.if.end19_crit_edge, label %if.then17

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %irq_received_display = getelementptr inbounds %struct.qxl_device, ptr %arg, i32 0, i32 35
  %call.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_received_display, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %irq_received_display, i32 1, i32 3, i32 1) #4
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_received_display, ptr %irq_received_display, i32 1, ptr elementtype(i32) %irq_received_display) #4, !srcloc !36
  %display_event = getelementptr inbounds %struct.qxl_device, ptr %arg, i32 0, i32 39
  tail call void @__wake_up(ptr noundef %display_event, i32 noundef 3, i32 noundef 0, ptr noundef null) #4
  %call18 = tail call zeroext i1 @qxl_queue_garbage_collect(ptr noundef %arg, i1 noundef zeroext false) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
  %and20 = and i32 %asmresult.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end23_crit_edge, label %if.then22

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %irq_received_cursor = getelementptr inbounds %struct.qxl_device, ptr %arg, i32 0, i32 36
  %call.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_received_cursor, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %irq_received_cursor, i32 1, i32 3, i32 1) #4
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_received_cursor, ptr %irq_received_cursor, i32 1, ptr elementtype(i32) %irq_received_cursor) #4, !srcloc !36
  %cursor_event = getelementptr inbounds %struct.qxl_device, ptr %arg, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %cursor_event, i32 noundef 3, i32 noundef 0, ptr noundef null) #4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19.if.end23_crit_edge
  %and24 = and i32 %asmresult.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end27_crit_edge, label %if.then26

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %irq_received_io_cmd = getelementptr inbounds %struct.qxl_device, ptr %arg, i32 0, i32 37
  %call.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_received_io_cmd, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %irq_received_io_cmd, i32 1, i32 3, i32 1) #4
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_received_io_cmd, ptr %irq_received_io_cmd, i32 1, ptr elementtype(i32) %irq_received_io_cmd) #4, !srcloc !36
  %io_cmd_event = getelementptr inbounds %struct.qxl_device, ptr %arg, i32 0, i32 41
  tail call void @__wake_up(ptr noundef %io_cmd_event, i32 noundef 3, i32 noundef 0, ptr noundef null) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23.if.end27_crit_edge
  %and28 = and i32 %asmresult.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end36_crit_edge, label %if.then30

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %irq_received_error = getelementptr inbounds %struct.qxl_device, ptr %arg, i32 0, i32 38
  %7 = ptrtoint ptr %irq_received_error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_received_error, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %irq_received_error, align 8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end27.if.end36_crit_edge
  %and37 = and i32 %asmresult.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end41_crit_edge, label %if.then39

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %client_monitors_config_work = getelementptr inbounds %struct.qxl_device, ptr %arg, i32 0, i32 42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i72 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %client_monitors_config_work) #4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36.if.end41_crit_edge
  %10 = ptrtoint ptr %ram_header to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ram_header, align 4
  %int_mask = getelementptr inbounds %struct.qxl_ram_header, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %int_mask to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 39, ptr %int_mask, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %io_base = getelementptr inbounds %struct.qxl_device, ptr %arg, i32 0, i32 12
  %13 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_base, align 8
  %add = add i32 %14, 3
  %and46 = and i32 %add, 1048575
  %add47 = or i32 %and46, -18874368
  %15 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #4, !srcloc !38
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end41 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_display_read_client_monitors_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qxl_queue_garbage_collect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !19, !20, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @qxl_irq_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/qxl/qxl_irq.c", i32 88, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @qxl_irq_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/qxl/qxl_irq.c", i32 89, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qxl_irq_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/qxl/qxl_irq.c", i32 90, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @qxl_irq_init.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/qxl/qxl_irq.c", i32 91, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @qxl_irq_init.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/qxl/qxl_irq.c", i32 92, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/qxl/qxl_irq.c", i32 102, i32 3}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/qxl/qxl_irq.c", i32 64, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @qxl_irq_handler._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @qxl_irq_handler._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2157071637}
!34 = !{i64 1169738, i64 1169755, i64 1169779, i64 1169805, i64 1169823}
!35 = !{i64 2157071980}
!36 = !{i64 2148662970, i64 2148662996, i64 2148663025, i64 2148663059, i64 2148663090, i64 2148663113}
!37 = !{i64 2157074470}
!38 = !{i64 4981185}
