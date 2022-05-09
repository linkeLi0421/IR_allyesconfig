; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/efct/efct_io.c_pt.bc'
source_filename = "../drivers/scsi/elx/efct/efct_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.efct_io_pool = type { ptr, %struct.spinlock, i32, [8192 x ptr], %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.efct_io = type { ptr, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.kref, ptr, i32, i32, i32, i32, ptr, i32, i32, %struct.efct_scsi_tgt_io, i32, ptr, i32, ptr, i32, i8, i8, i8, i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, i8, %union.efct_hw_io_param_u, i32, i64, ptr, ptr, %struct.efc_dma, i32, i8, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.efct_scsi_tgt_io = type { %struct.se_cmd, [96 x i8], i32, i32, i64, i32, i8, ptr, i32, i32, i32, i32, i8, i8, i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.efct_hw_io_param_u = type { %struct.sli_bls_params }
%struct.sli_bls_params = type { i32, i32, i16, i16, i32, i32, i8, [12 x i8], i16, i16 }
%struct.efc_dma = type { ptr, ptr, i32, i32, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
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
%struct.efct = type { ptr, [6 x ptr], i32, i8, i8, i8, [16 x %struct.efct_intr_context], i32, [32 x i8], i32, %struct.list_head, %struct.efct_scsi_tgt, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.efct_hw, i32, ptr, i32, %struct.xarray, i32, i32, ptr }
%struct.efct_intr_context = type { ptr, i32 }
%struct.efct_scsi_tgt = type { i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, ptr, %struct.list_head, %struct.spinlock, i64 }
%struct.efct_hw = type { ptr, %struct.sli4, i16, i16, i32, i32, i8, i8, i16, %struct.efct_hw_config, [5 x i32], [32 x %struct.sli4_queue], [32 x %struct.sli4_queue], [32 x i16], [1 x %struct.sli4_queue], [97 x %struct.sli4_queue], [16 x %struct.sli4_queue], i32, i32, i32, i32, i32, i32, %struct.list_head, [128 x %struct.efct_queue_hash], [128 x %struct.efct_queue_hash], [128 x %struct.efct_queue_hash], [32 x ptr], [32 x ptr], [1 x ptr], [97 x ptr], [16 x ptr], i32, i32, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, %struct.sli4_link_event, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.efc_dma, %struct.efc_dma, %struct.efc_dma, %struct.atomic_t, [32 x i32], [32 x i32], %struct.atomic_t, ptr }
%struct.sli4 = type { ptr, ptr, [6 x ptr], i32, i32, i32, i16, i16, i16, i16, %struct.sli4_queue_info, i16, i8, i8, [2 x i8], i16, i32, i8, [8 x i8], [8 x i8], [2 x i32], [2 x [16 x i8]], [16 x i8], [3 x i32], [64 x i8], [32 x i8], i32, i32, [5 x %struct.sli4_extent], i32, %struct.sli4_params, i32, i32, i32, ptr, ptr, %struct.efc_dma, ptr, %struct.efc_dma }
%struct.sli4_queue_info = type { [5 x i16], [5 x i32], [5 x i16], [5 x i16], [5 x i32] }
%struct.sli4_extent = type { i32, i32, i32, ptr, ptr, i32 }
%struct.sli4_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.efct_hw_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [4 x i32] }
%struct.sli4_queue = type { %struct.efc_dma, %struct.spinlock, i32, i16, i16, i16, i16, i8, ptr, i16, i32, i32, i32, i64, %union.anon.85 }
%union.anon.85 = type { i32 }
%struct.efct_queue_hash = type { i8, i16, i16 }
%struct.sli4_link_event = type { i32, i32, i32, i32, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.efct_xport = type { ptr, i64, i64, i32, %struct.atomic_t, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.timer_list, %union.efct_xport_stats_u, %struct.efct_xport_fcp_stats }
%union.efct_xport_stats_u = type { %struct.efct_xport_host_statistics }
%struct.efct_xport_host_statistics = type { %struct.completion, %struct.efct_xport_link_stats, %struct.efct_xport_host_stats }
%struct.efct_xport_link_stats = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efct_xport_host_stats = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efct_xport_fcp_stats = type { i64, i64, i64, i64, i64 }
%struct.efct_node = type { %struct.list_head, %struct.kref, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, [32 x i8], i32, i32, i32, i32, i32 }

@efct_io_pool_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&io_pool->lock\00", [17 x i8] zeroinitializer }, align 32
@efct_io_pool_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 53, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dma_alloc rspbuf failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efct_io_pool_create\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/elx/efct/efct_io.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efct_io_pool_create._entry_ptr = internal global ptr @efct_io_pool_create._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pending\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 35, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 53, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [35 x i8] c"../drivers/scsi/elx/efct/efct_io.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 137, i32 21 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @efct_io_pool_create._entry, ptr @efct_io_pool_create._entry_ptr, ptr @efct_io_pool_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_io_pool_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_io_pool_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_io_pool_create(ptr noundef %efct, i32 noundef %num_sgl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32828, i32 noundef 3520, i32 noundef 4) #10
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %efct, ptr %call1.i.i.i, align 4096
  %freelist = getelementptr inbounds %struct.efct_io_pool, ptr %call1.i.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %freelist to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %freelist, ptr %freelist, align 4
  %prev.i = getelementptr inbounds %struct.efct_io_pool, ptr %call1.i.i.i, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %freelist, ptr %prev.i, align 8
  %lock = getelementptr inbounds %struct.efct_io_pool, ptr %call1.i.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @efct_io_pool_create.__key, i16 noundef signext 3) #7
  %io_num_ios = getelementptr inbounds %struct.efct_io_pool, ptr %call1.i.i.i, i32 0, i32 2
  %mul = mul i32 %num_sgl, 12
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %i.078 = phi i32 [ 0, %if.end ], [ %inc33, %list_add_tail.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 832) #11
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %4 = ptrtoint ptr %io_num_ios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_num_ios, align 16
  %inc = add i32 %5, 1
  store i32 %inc, ptr %io_num_ios, align 16
  %arrayidx = getelementptr %struct.efct_io_pool, ptr %call1.i.i.i, i32 0, i32 3, i32 %i.078
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %tag = getelementptr inbounds %struct.efct_io, ptr %call7.i.i, i32 0, i32 11
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %i.078, ptr %tag, align 4
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %instance_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.078, ptr %instance_index, align 4
  %rspbuf = getelementptr inbounds %struct.efct_io, ptr %call7.i.i, i32 0, i32 43
  %size = getelementptr inbounds %struct.efct_io, ptr %call7.i.i, i32 0, i32 43, i32 3
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 120, ptr %size, align 4
  %10 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %efct, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %phys = getelementptr inbounds %struct.efct_io, ptr %call7.i.i, i32 0, i32 43, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 120, ptr noundef %phys, i32 noundef 3264, i32 noundef 0) #7
  %12 = ptrtoint ptr %rspbuf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %rspbuf, align 8
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %do.end18, label %if.end8.i.i

do.end18:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %efct, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.1) #12
  %call21 = tail call i32 @efct_io_pool_free(ptr noundef nonnull %call1.i.i.i)
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end6
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #10
  %sgl = getelementptr inbounds %struct.efct_io, ptr %call7.i.i, i32 0, i32 12
  %15 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i, ptr %sgl, align 8
  %tobool25.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool25.not, label %if.then.i, label %if.end28

if.then.i:                                        ; preds = %if.end8.i.i
  %16 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call1.i.i.i, align 4096
  %18 = ptrtoint ptr %io_num_ios to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io_num_ios, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp21.not.i = icmp eq i32 %19, 0
  br i1 %cmp21.not.i, label %if.then.i.efct_io_pool_free.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.efct_io_pool_free.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %efct_io_pool_free.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.efct_io_pool, ptr %call1.i.i.i, i32 0, i32 3, i32 %i.022.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %sgl.i = getelementptr inbounds %struct.efct_io, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %sgl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sgl.i, align 8
  tail call void @kfree(ptr noundef %23) #7
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %17, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %rspbuf.i = getelementptr inbounds %struct.efct_io, ptr %21, i32 0, i32 43
  %size.i = getelementptr inbounds %struct.efct_io, ptr %21, i32 0, i32 43, i32 3
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 4
  %28 = ptrtoint ptr %rspbuf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rspbuf.i, align 8
  %phys.i = getelementptr inbounds %struct.efct_io, ptr %21, i32 0, i32 43, i32 2
  %30 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phys.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %27, ptr noundef %29, i32 noundef %31, i32 noundef 0) #7
  %32 = call ptr @memset(ptr %rspbuf.i, i32 0, i32 24)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.022.i, 1
  %33 = ptrtoint ptr %io_num_ios to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_num_ios, align 16
  %cmp.i = icmp ult i32 %inc.i, %34
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.efct_io_pool_free.exit_crit_edge

for.inc.i.efct_io_pool_free.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %efct_io_pool_free.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

efct_io_pool_free.exit:                           ; preds = %for.inc.i.efct_io_pool_free.exit_crit_edge, %if.then.i.efct_io_pool_free.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #7
  %xport.i = getelementptr inbounds %struct.efct, ptr %17, i32 0, i32 12
  %35 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xport.i, align 8
  %io_pool7.i = getelementptr inbounds %struct.efct_xport, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %io_pool7.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %io_pool7.i, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end8.i.i
  %38 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %mul)
  %sgl_allocated = getelementptr inbounds %struct.efct_io, ptr %call7.i.i, i32 0, i32 13
  %39 = ptrtoint ptr %sgl_allocated to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %num_sgl, ptr %sgl_allocated, align 4
  %sgl_count = getelementptr inbounds %struct.efct_io, ptr %call7.i.i, i32 0, i32 14
  %40 = ptrtoint ptr %sgl_count to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %sgl_count, align 8
  %list_entry = getelementptr inbounds %struct.efct_io, ptr %call7.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %list_entry, ptr %list_entry, align 8
  %prev.i70 = getelementptr inbounds %struct.efct_io, ptr %call7.i.i, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %prev.i70 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %list_entry, ptr %prev.i70, align 4
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %44, ptr noundef %freelist) #7
  br i1 %call.i.i, label %if.end.i.i72, label %if.end28.list_add_tail.exit_crit_edge

if.end28.list_add_tail.exit_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i72:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %list_entry, ptr %prev.i, align 8
  %46 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %freelist, ptr %list_entry, align 8
  %47 = ptrtoint ptr %prev.i70 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev.i70, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %list_entry, ptr %44, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i72, %if.end28.list_add_tail.exit_crit_edge
  %inc33 = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc33, 8192
  br i1 %exitcond.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %efct_io_pool_free.exit, %do.end18, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %efct_io_pool_free.exit ], [ null, %do.end18 ], [ null, %entry.cleanup_crit_edge ], [ %call1.i.i.i, %for.body.cleanup_crit_edge ], [ %call1.i.i.i, %list_add_tail.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_io_pool_free(ptr noundef %io_pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %io_pool, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %io_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_pool, align 4
  %io_num_ios = getelementptr inbounds %struct.efct_io_pool, ptr %io_pool, i32 0, i32 2
  %2 = ptrtoint ptr %io_num_ios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_num_ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21.not = icmp eq i32 %3, 0
  br i1 %cmp21.not, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.efct_io_pool, ptr %io_pool, i32 0, i32 3, i32 %i.022
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sgl = getelementptr inbounds %struct.efct_io, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgl, align 8
  tail call void @kfree(ptr noundef %7) #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %rspbuf = getelementptr inbounds %struct.efct_io, ptr %5, i32 0, i32 43
  %size = getelementptr inbounds %struct.efct_io, ptr %5, i32 0, i32 43, i32 3
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %12 = ptrtoint ptr %rspbuf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rspbuf, align 8
  %phys = getelementptr inbounds %struct.efct_io, ptr %5, i32 0, i32 43, i32 2
  %14 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phys, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef 0) #7
  %16 = call ptr @memset(ptr %rspbuf, i32 0, i32 24)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.022, 1
  %17 = ptrtoint ptr %io_num_ios to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_num_ios, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %io_pool) #7
  %xport = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xport, align 8
  %io_pool7 = getelementptr inbounds %struct.efct_xport, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %io_pool7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %io_pool7, align 4
  br label %if.end8

if.end8:                                          ; preds = %for.end, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_io_pool_io_alloc(ptr noundef %io_pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_pool, align 4
  %lock = getelementptr inbounds %struct.efct_io_pool, ptr %io_pool, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %freelist = getelementptr inbounds %struct.efct_io_pool, ptr %io_pool, i32 0, i32 4
  %2 = ptrtoint ptr %freelist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %freelist, align 4
  %cmp.i.not = icmp eq ptr %3, %freelist
  br i1 %cmp.i.not, label %if.end.thread, label %if.then

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %call.i.i42 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #7
  br i1 %call.i.i42, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %tobool10.not = icmp eq ptr %add.ptr, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %io_type = getelementptr i8, ptr %3, i32 656
  %12 = ptrtoint ptr %io_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %io_type, align 8
  %hio_type = getelementptr i8, ptr %3, i32 756
  %13 = ptrtoint ptr %hio_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %hio_type, align 4
  %hio = getelementptr i8, ptr %3, i32 660
  %14 = ptrtoint ptr %hio to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %hio, align 4
  %transferred = getelementptr i8, ptr %3, i32 664
  %15 = ptrtoint ptr %transferred to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %transferred, align 8
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %add.ptr, align 8
  %timeout = getelementptr i8, ptr %3, i32 800
  %17 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %timeout, align 8
  %sgl_count = getelementptr i8, ptr %3, i32 48
  %18 = ptrtoint ptr %sgl_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %sgl_count, align 8
  %tgt_task_tag = getelementptr i8, ptr %3, i32 28
  %19 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %tgt_task_tag, align 4
  %init_task_tag = getelementptr i8, ptr %3, i32 24
  %20 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %init_task_tag, align 8
  %hw_tag = getelementptr i8, ptr %3, i32 32
  %21 = ptrtoint ptr %hw_tag to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %hw_tag, align 8
  %display_name = getelementptr i8, ptr %3, i32 -8
  %22 = ptrtoint ptr %display_name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.6, ptr %display_name, align 8
  %seq_init = getelementptr i8, ptr %3, i32 713
  %23 = ptrtoint ptr %seq_init to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %seq_init, align 1
  %io_free = getelementptr i8, ptr %3, i32 805
  %24 = ptrtoint ptr %io_free to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %io_free, align 1
  %release = getelementptr i8, ptr %3, i32 20
  %25 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %release, align 4
  %xport = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xport, align 8
  %io_active_count = getelementptr inbounds %struct.efct_xport, ptr %27, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_active_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !22
  tail call void @llvm.prefetch.p0(ptr %io_active_count, i32 1, i32 3, i32 1) #7
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_active_count, ptr %io_active_count, i32 1, ptr elementtype(i32) %io_active_count) #7, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !24
  %29 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xport, align 8
  %io_total_alloc = getelementptr inbounds %struct.efct_xport, ptr %30, i32 0, i32 9
  %call.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_total_alloc, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !22
  tail call void @llvm.prefetch.p0(ptr %io_total_alloc, i32 1, i32 3, i32 1) #7
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_total_alloc, ptr %io_total_alloc, i32 1, ptr elementtype(i32) %io_total_alloc) #7, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi ptr [ %add.ptr, %if.end12 ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_io_pool_io_free(ptr noundef %io_pool, ptr noundef %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_pool, align 4
  %lock = getelementptr inbounds %struct.efct_io_pool, ptr %io_pool, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %hio6 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 19
  %2 = ptrtoint ptr %hio6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hio6, align 4
  store ptr null, ptr %hio6, align 4
  %io_free = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 46
  %4 = ptrtoint ptr %io_free to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %io_free, align 1
  %list_entry = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 4
  %5 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list_entry, ptr %list_entry, align 4
  %prev.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list_entry, ptr %prev.i, align 4
  %freelist = getelementptr inbounds %struct.efct_io_pool, ptr %io_pool, i32 0, i32 4
  %7 = ptrtoint ptr %freelist to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %freelist, align 4
  %call.i.i25 = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %freelist, ptr noundef %8) #7
  br i1 %call.i.i25, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list_entry, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %list_entry, align 4
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %freelist, ptr %prev.i, align 4
  %12 = ptrtoint ptr %freelist to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list_entry, ptr %freelist, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %list_add.exit.if.end_crit_edge, label %if.then

list_add.exit.if.end_crit_edge:                   ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19
  %call10 = tail call i32 @efct_hw_io_free(ptr noundef %hw, ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %list_add.exit.if.end_crit_edge
  %xport = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xport, align 8
  %io_active_count = getelementptr inbounds %struct.efct_xport, ptr %14, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_active_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @llvm.prefetch.p0(ptr %io_active_count, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_active_count, ptr %io_active_count, i32 1, ptr elementtype(i32) %io_active_count) #7, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  %16 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xport, align 8
  %io_total_free = getelementptr inbounds %struct.efct_xport, ptr %17, i32 0, i32 10
  %call.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_total_free, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !22
  tail call void @llvm.prefetch.p0(ptr %io_total_free, i32 1, i32 3, i32 1) #7
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_total_free, ptr %io_total_free, i32 1, ptr elementtype(i32) %io_total_free) #7, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_io_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_io_find_tgt_io(ptr nocapture noundef readnone %efct, ptr noundef %node, i16 noundef zeroext %ox_id, i16 noundef zeroext %rx_id) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active_ios_lock = getelementptr inbounds %struct.efct_node, ptr %node, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %active_ios_lock) #7
  %active_ios = getelementptr inbounds %struct.efct_node, ptr %node, i32 0, i32 7
  %0 = ptrtoint ptr %active_ios to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn46 = load ptr, ptr %active_ios, align 4
  %cmp7.not47 = icmp eq ptr %.pn46, %active_ios
  br i1 %cmp7.not47, label %entry.for.end.thread_crit_edge, label %for.body.lr.ph

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  %conv10 = zext i16 %ox_id to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %rx_id)
  %cmp15 = icmp eq i16 %rx_id, -1
  %conv14 = zext i16 %rx_id to i32
  br label %for.body

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %active_ios_lock, i32 noundef %call2) #7
  br label %20

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn48 = phi ptr [ %.pn46, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %cmd_tgt = getelementptr i8, ptr %.pn48, i32 710
  %1 = ptrtoint ptr %cmd_tgt to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cmd_tgt, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %init_task_tag = getelementptr i8, ptr %.pn48, i32 24
  %3 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %init_task_tag, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv10)
  %cmp11 = icmp eq i32 %4, %conv10
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true13:                                  ; preds = %land.lhs.true
  br i1 %cmp15, label %land.lhs.true13.if.then_crit_edge, label %lor.lhs.false

land.lhs.true13.if.then_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true13
  %tgt_task_tag = getelementptr i8, ptr %.pn48, i32 28
  %5 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tgt_task_tag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv14)
  %cmp18 = icmp eq i32 %6, %conv14
  br i1 %cmp18, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true13.if.then_crit_edge
  %io.0.le = getelementptr i8, ptr %.pn48, i32 -16
  %ref = getelementptr i8, ptr %.pn48, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #7
  %7 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then
  %9 = phi i32 [ %8, %if.then ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %9, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %13 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %12, i32 %add.i.i.i.i, ptr elementtype(i32) %ref) #7, !srcloc !29
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %12
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !30

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %15, 1
  %16 = or i32 %add5.i.i.i.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.for.end_crit_edge, label %if.then10.i.i.i.i, !prof !30

if.end4.i.i.i.i.for.end_crit_edge:                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #7
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn48, align 4
  %cmp7.not = icmp eq ptr %.pn, %active_ios
  br i1 %cmp7.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end:                                          ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.for.end_crit_edge
  %19 = phi i32 [ %.pr, %if.then10.i.i.i.i ], [ %15, %if.end4.i.i.i.i.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.i.i.i.i.not = icmp eq i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %active_ios_lock, i32 noundef %call2) #7
  br i1 %tobool12.i.i.i.i.not, label %for.end._crit_edge, label %for.end._crit_edge54

for.end._crit_edge54:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %21

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %20

20:                                               ; preds = %for.end._crit_edge, %for.end.thread
  br label %21

21:                                               ; preds = %20, %for.end._crit_edge54
  %22 = phi ptr [ null, %20 ], [ %io.0.le, %for.end._crit_edge54 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @efct_io_pool_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/efct/efct_io.c", i32 35, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/scsi/elx/efct/efct_io.c", i32 53, i32 4}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @efct_io_pool_create._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @efct_io_pool_create._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/elx/efct/efct_io.c", i32 137, i32 21}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2148430185}
!23 = !{i64 2148345470, i64 2148345502, i64 2148345531, i64 2148345565, i64 2148345596, i64 2148345619}
!24 = !{i64 2148430414}
!25 = !{i64 2148433226}
!26 = !{i64 2148347935, i64 2148347967, i64 2148347996, i64 2148348030, i64 2148348061, i64 2148348084}
!27 = !{i64 2148433455}
!28 = !{i8 0, i8 2}
!29 = !{i64 829283, i64 829307, i64 829328, i64 829345, i64 829362}
!30 = !{!"branch_weights", i32 2000, i32 1}
