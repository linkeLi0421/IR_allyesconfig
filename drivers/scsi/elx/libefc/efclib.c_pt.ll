; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/libefc/efclib.c_pt.bc'
source_filename = "../drivers/scsi/elx/libefc/efclib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.efc = type { ptr, ptr, ptr, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.libefc_function_template, %struct.spinlock, i8, i8, i32, ptr, ptr, ptr, i64, i64, i8, i32, i32, ptr, %struct.atomic_t, i8, %struct.spinlock, %struct.list_head, i32 }
%struct.libefc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }

@efcport_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&efc->lock\00", [21 x i8] zeroinitializer }, align 32
@efcport_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&efc->pend_frames_lock\00", [41 x i8] zeroinitializer }, align 32
@efcport_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 37, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't allocate node pool\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"efcport_init\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/elx/libefc/efclib.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efcport_init._entry_ptr = internal global ptr @efcport_init._entry, section ".printk_index", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"node_dma_pool\00", [18 x i8] zeroinitializer }, align 32
@efcport_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 44, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't allocate node dma pool\0A\00", [34 x i8] zeroinitializer }, align 32
@efcport_init._entry_ptr.11 = internal global ptr @efcport_init._entry.9, section ".printk_index", align 4
@efcport_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 52, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't allocate els io pool\0A\00", [36 x i8] zeroinitializer }, align 32
@efcport_init._entry_ptr.14 = internal global ptr @efcport_init._entry.12, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 27, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 30, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 37, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 41, i32 39 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 44, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [36 x i8] c"../drivers/scsi/elx/libefc/efclib.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 52, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @efcport_init._entry, ptr @efcport_init._entry.12, ptr @efcport_init._entry.9, ptr @efcport_init._entry_ptr, ptr @efcport_init._entry_ptr.11, ptr @efcport_init._entry_ptr.14, ptr @efcport_init.__key, ptr @.str, ptr @efcport_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efcport_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efcport_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efcport_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efcport_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efcport_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efcport_init(ptr noundef %efc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @efcport_init.__key, i16 noundef signext 3) #3
  %vport_list = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 13
  %0 = ptrtoint ptr %vport_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %vport_list, ptr %vport_list, align 4
  %prev.i = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 13, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vport_list, ptr %prev.i, align 4
  %hold_frames = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 30
  %2 = ptrtoint ptr %hold_frames to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %hold_frames, align 4
  %pend_frames_lock = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %pend_frames_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @efcport_init.__key.1, i16 noundef signext 3) #3
  %pend_frames = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 32
  %3 = ptrtoint ptr %pend_frames to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %pend_frames, ptr %pend_frames, align 4
  %prev.i48 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 32, i32 1
  %4 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pend_frames, ptr %prev.i48, align 4
  %call.i = tail call ptr @mempool_create(i32 noundef 2048, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 664 to ptr)) #3
  %node_pool = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 9
  %5 = ptrtoint ptr %node_pool to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %node_pool, align 8
  %tobool.not = icmp eq ptr %call.i, null
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  br i1 %tobool.not, label %do.end9, label %if.end

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call12 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.8, ptr noundef %dev, i32 noundef 256, i32 noundef 0, i32 noundef 0) #3
  %node_dma_pool = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 10
  %8 = ptrtoint ptr %node_dma_pool to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %node_dma_pool, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.10) #6
  %11 = ptrtoint ptr %node_pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node_pool, align 8
  tail call void @mempool_destroy(ptr noundef %12) #3
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %call.i49 = tail call ptr @mempool_create(i32 noundef 1024, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 168 to ptr)) #3
  %els_io_pool = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 28
  %13 = ptrtoint ptr %els_io_pool to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i49, ptr %els_io_pool, align 4
  %tobool25.not = icmp eq ptr %call.i49, null
  br i1 %tobool25.not, label %do.end29, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci, align 4
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.13) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end22.cleanup_crit_edge, %do.end18, %do.end9
  %retval.0 = phi i32 [ -12, %do.end29 ], [ -12, %do.end18 ], [ -12, %do.end9 ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efcport_destroy(ptr noundef %efc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pend_frames_lock.i = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 31
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pend_frames_lock.i) #3
  %pend_frames.i = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 32
  %0 = ptrtoint ptr %pend_frames.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pend_frames.i, align 4
  %cmp13.not32.i = icmp eq ptr %1, %pend_frames.i
  br i1 %cmp13.not32.i, label %entry.efc_purge_pending.exit_crit_edge, label %for.body.lr.ph.i

entry.efc_purge_pending.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %efc_purge_pending.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %hw_seq_free.i = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 15, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %frame.033.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %next.0.i, %list_del.exit.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %frame.033.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0.i = load ptr, ptr %frame.033.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %frame.033.i) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %frame.033.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %frame.033.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frame.033.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %frame.033.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %frame.033.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %frame.033.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %hw_seq_free.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_seq_free.i, align 4
  %call16.i = tail call i32 %12(ptr noundef %efc, ptr noundef %frame.033.i) #3
  %cmp13.not.i = icmp eq ptr %next.0.i, %pend_frames.i
  br i1 %cmp13.not.i, label %list_del.exit.i.efc_purge_pending.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

list_del.exit.i.efc_purge_pending.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %efc_purge_pending.exit

efc_purge_pending.exit:                           ; preds = %list_del.exit.i.efc_purge_pending.exit_crit_edge, %entry.efc_purge_pending.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_frames_lock.i, i32 noundef %call2.i) #3
  %els_io_pool = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 28
  %13 = ptrtoint ptr %els_io_pool to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %els_io_pool, align 4
  tail call void @mempool_destroy(ptr noundef %14) #3
  %node_pool = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 9
  %15 = ptrtoint ptr %node_pool to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node_pool, align 8
  tail call void @mempool_destroy(ptr noundef %16) #3
  %node_dma_pool = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 10
  %17 = ptrtoint ptr %node_dma_pool to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %node_dma_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %18) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @efcport_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/libefc/efclib.c", i32 27, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @efcport_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/scsi/elx/libefc/efclib.c", i32 30, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/elx/libefc/efclib.c", i32 37, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @efcport_init._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @efcport_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/elx/libefc/efclib.c", i32 41, i32 39}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/elx/libefc/efclib.c", i32 44, i32 3}
!18 = !{ptr @efcport_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @efcport_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/elx/libefc/efclib.c", i32 52, i32 3}
!22 = !{ptr @efcport_init._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @efcport_init._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
