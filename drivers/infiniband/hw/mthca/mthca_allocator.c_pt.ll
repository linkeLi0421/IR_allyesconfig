; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_allocator.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_allocator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mthca_alloc = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.2 = type { ptr, i32 }
%struct.mthca_dev = type { %struct.ib_device, ptr, i32, i32, i32, i32, [64 x i8], i64, %union.anon.175, i64, i64, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, %union.anon.178, %struct.mthca_cmd, %struct.mthca_limits, %struct.mthca_uar_table, %struct.mthca_pd_table, %struct.mthca_mr_table, %struct.mthca_eq_table, %struct.mthca_cq_table, %struct.mthca_srq_table, %struct.mthca_qp_table, %struct.mthca_av_table, %struct.mthca_mcg_table, %struct.mthca_catas_err, %struct.mthca_uar, ptr, %struct.mthca_pd, %struct.mthca_mr, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x i8], i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.173, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.173 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.175 = type { %struct.anon.177 }
%struct.anon.177 = type { i64, i64, i64, ptr, ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.178 = type { %struct.anon.180 }
%struct.anon.180 = type { ptr, ptr }
%struct.mthca_cmd = type { ptr, %struct.mutex, %struct.semaphore, %struct.semaphore, i32, %struct.spinlock, i32, ptr, i16, i32, ptr, [8 x i16] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mthca_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.mthca_uar_table = type { %struct.mthca_alloc, i64, i32 }
%struct.mthca_pd_table = type { %struct.mthca_alloc }
%struct.mthca_mr_table = type { %struct.mthca_alloc, %struct.mthca_buddy, ptr, i64, i64, ptr, ptr, %struct.anon.181 }
%struct.mthca_buddy = type { ptr, ptr, i32, %struct.spinlock }
%struct.anon.181 = type { ptr, ptr, %struct.mthca_buddy }
%struct.mthca_eq_table = type { %struct.mthca_alloc, ptr, i32, i32, [3 x %struct.mthca_eq], i64, ptr, i32, i32, i8 }
%struct.mthca_eq = type { ptr, i32, i32, i32, i16, i16, i32, i32, ptr, %struct.mthca_mr, [64 x i8] }
%struct.mthca_cq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_array = type { ptr }
%struct.mthca_srq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_qp_table = type { %struct.mthca_alloc, i32, i32, i32, %struct.spinlock, %struct.mthca_array, ptr, ptr, ptr }
%struct.mthca_av_table = type { ptr, i32, i64, ptr, %struct.mthca_alloc }
%struct.mthca_mcg_table = type { %struct.mutex, %struct.mthca_alloc, ptr }
%struct.mthca_catas_err = type { i64, ptr, i32, %struct.timer_list, %struct.list_head }
%struct.mthca_uar = type { i32, i32 }
%struct.mthca_pd = type { %struct.ib_pd, i32, %struct.atomic_t, %struct.mthca_mr, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mthca_mr = type { %struct.ib_mr, ptr, ptr }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.129, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.129 = type { %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.174, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.174 = type { ptr }
%struct.mthca_buf_list = type { ptr, i32 }

@mthca_alloc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&alloc->lock\00", [19 x i8] zeroinitializer }, align 32
@mthca_array_clear.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ib_mthca\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mthca_array_clear\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/infiniband/hw/mthca/mthca_allocator.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Array %p index %d page %d with ref count %d < 0\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 90, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [49 x i8] c"../drivers/infiniband/hw/mthca/mthca_allocator.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 151, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @mthca_alloc_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_alloc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_alloc(ptr noundef %alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %table = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 5
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %max = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 2
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max, align 4
  %4 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alloc, align 4
  %call5 = tail call i32 @_find_next_zero_bit_be(ptr noundef %1, i32 noundef %3, i32 noundef %5) #6
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %7)
  %cmp7.not = icmp ult i32 %call5, %7
  br i1 %cmp7.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %top = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 1
  %8 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %top, align 4
  %add = add i32 %9, %7
  %mask = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 3
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %and = and i32 %add, %11
  store i32 %and, ptr %top, align 4
  %12 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %table, align 4
  %call13 = tail call i32 @_find_first_zero_bit_be(ptr noundef %13, i32 noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %obj.0 = phi i32 [ %call13, %if.then ], [ %call5, %entry.if.end_crit_edge ]
  %14 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %obj.0, i32 %15)
  %cmp15 = icmp ult i32 %obj.0, %15
  br i1 %cmp15, label %if.then17, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %table, align 4
  %rem.i = and i32 %obj.0, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %obj.0, 5
  %add.ptr.i = getelementptr i32, ptr %17, i32 %div2.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %19, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %top19 = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 1
  %20 = ptrtoint ptr %top19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %top19, align 4
  %or = or i32 %21, %obj.0
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end.if.end20_crit_edge
  %obj.1 = phi i32 [ %or, %if.then17 ], [ -1, %if.end.if.end20_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret i32 %obj.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_free(ptr noundef %alloc, i32 noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 2
  %0 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max, align 4
  %sub = add i32 %1, -1
  %and = and i32 %sub, %obj
  %lock = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %table = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 5
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 4
  %rem.i = and i32 %and, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %and, 5
  %add.ptr.i = getelementptr i32, ptr %3, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %5, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %6 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %and)
  %9 = ptrtoint ptr %alloc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %alloc, align 4
  %top = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %top, align 4
  %12 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max, align 4
  %add = add i32 %13, %11
  %mask = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 3
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask, align 4
  %and10 = and i32 %add, %15
  store i32 %and10, ptr %top, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_alloc_init(ptr noundef %alloc, i32 noundef %num, i32 noundef %mask, i32 noundef %reserved) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.cttz.i32(i32 %num, i1 true), !range !18
  %.op = shl nuw i32 1, %0
  call void @__sanitizer_cov_trace_cmp4(i32 %.op, i32 %num)
  %cmp.not = icmp eq i32 %.op, %num
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %alloc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %alloc, align 4
  %top = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 1
  %2 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %top, align 4
  %max = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 2
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %num, ptr %max, align 4
  %mask1 = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 3
  %4 = ptrtoint ptr %mask1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mask, ptr %mask1, align 4
  %lock = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mthca_alloc_init.__key, i16 noundef signext 3) #6
  %call2 = tail call ptr @bitmap_zalloc(i32 noundef %num, i32 noundef 3264) #6
  %table = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 5
  %5 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %table, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.else11.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else11.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__bitmap_set(ptr noundef nonnull %call2, i32 noundef 0, i32 noundef %reserved) #6
  br label %return

return:                                           ; preds = %if.else11.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ], [ 0, %if.else11.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_alloc_cleanup(ptr nocapture noundef readonly %alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.mthca_alloc, ptr %alloc, i32 0, i32 5
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  tail call void @bitmap_free(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mthca_array_get(ptr nocapture noundef readonly %array, i32 noundef %index) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %index, 10
  %shr = and i32 %0, 1048575
  %1 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %array, align 4
  %arrayidx = getelementptr %struct.anon.2, ptr %2, i32 %shr
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %index, 1023
  %arrayidx4 = getelementptr ptr, ptr %4, i32 %and
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.then ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_array_set(ptr nocapture noundef readonly %array, i32 noundef %index, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %index, 10
  %shr = and i32 %0, 1048575
  %1 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %array, align 4
  %arrayidx = getelementptr %struct.anon.2, ptr %2, i32 %shr
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @get_zeroed_page(i32 noundef 2592) #6
  %5 = inttoptr i32 %call to ptr
  %6 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %array, align 4
  %arrayidx2 = getelementptr %struct.anon.2, ptr %7, i32 %shr
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %arrayidx2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %array, align 4
  %arrayidx5 = getelementptr %struct.anon.2, ptr %10, i32 %shr
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx5, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %index, 1023
  %arrayidx13 = getelementptr ptr, ptr %12, i32 %and
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %value, ptr %arrayidx13, align 4
  %14 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %array, align 4
  %used = getelementptr %struct.anon.2, ptr %15, i32 %shr, i32 1
  %16 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %used, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %used, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_array_clear(ptr noundef %array, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %index, 10
  %shr = and i32 %0, 1048575
  %1 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %array, align 4
  %used = getelementptr %struct.anon.2, ptr %2, i32 %shr, i32 1
  %3 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %used, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  %5 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %array, align 4
  %arrayidx2 = getelementptr %struct.anon.2, ptr %6, i32 %shr
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx2, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %8 to i32
  tail call void @free_pages(i32 noundef %9, i32 noundef 0) #6
  %10 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %array, align 4
  %arrayidx4 = getelementptr %struct.anon.2, ptr %11, i32 %shr
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %index, 1023
  %arrayidx9 = getelementptr ptr, ptr %8, i32 %and
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx9.sink = phi ptr [ %arrayidx9, %if.else ], [ %arrayidx4, %if.then ]
  %12 = ptrtoint ptr %arrayidx9.sink to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx9.sink, align 4
  %13 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %array, align 4
  %used12 = getelementptr %struct.anon.2, ptr %14, i32 %shr, i32 1
  %15 = ptrtoint ptr %used12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %used12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13 = icmp slt i32 %16, 0
  br i1 %cmp13, label %do.body, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mthca_array_clear.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mthca_array_clear, %if.then17)) #6
          to label %if.end22 [label %if.then17], !srcloc !19

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %array, align 4
  %used20 = getelementptr %struct.anon.2, ptr %18, i32 %shr, i32 1
  %19 = ptrtoint ptr %used20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %used20, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mthca_array_clear.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.4, ptr noundef %array, i32 noundef %index, i32 noundef %shr, i32 noundef %20) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %do.body, %if.end.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_array_init(ptr nocapture noundef %array, i32 noundef %nent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %nent, 2
  %sub = add i32 %mul, 4095
  %div13 = lshr i32 %sub, 12
  %0 = shl nuw nsw i32 %div13, 3
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3264) #9
  %1 = ptrtoint ptr %array to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8.i, ptr %array, align 4
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp16.not = icmp ult i32 %sub, 4096
  br i1 %cmp16.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div13, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %2 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %array, align 4
  %arrayidx = getelementptr %struct.anon.2, ptr %3, i32 %i.017
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %5 = load ptr, ptr %array, align 4
  %used = getelementptr %struct.anon.2, ptr %5, i32 %i.017, i32 1
  %6 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %used, align 4
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_array_cleanup(ptr nocapture noundef readonly %array, i32 noundef %nent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %nent, 2
  %sub = add i32 %mul, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp6.not = icmp ult i32 %sub, 4096
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div5 = lshr i32 %sub, 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %0 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %array, align 4
  %arrayidx = getelementptr %struct.anon.2, ptr %1, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  tail call void @free_pages(i32 noundef %4, i32 noundef 0) #6
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %div5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %5 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %array, align 4
  tail call void @kfree(ptr noundef %6) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_buf_alloc(ptr noundef %dev, i32 noundef %size, i32 noundef %max_direct, ptr nocapture noundef %buf, ptr nocapture noundef %is_direct, ptr nocapture noundef readonly %pd, i32 noundef %hca_write, ptr noundef %mr) local_unnamed_addr #0 align 64 {
entry:
  %t = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #6
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %t, align 4, !annotation !20
  call void @__sanitizer_cov_trace_cmp4(i32 %size, i32 %max_direct)
  %cmp.not = icmp sgt i32 %size, %max_direct
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %is_direct to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %is_direct, align 4
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef %size, ptr noundef nonnull %t, i32 noundef 3264, i32 noundef 0) #6
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %buf, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %get_order.exit

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

get_order.exit:                                   ; preds = %if.then
  %dec.i = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %5 = call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #6, !range !18
  %sub.i.i.op = sub nuw nsw i32 44, %5
  %add = select i1 %tobool.not.i.i, i32 12, i32 %sub.i.i.op
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t, align 4
  %mapping = getelementptr inbounds %struct.mthca_buf_list, ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mapping, align 4
  %notmask200 = shl nsw i32 -1, %add
  %sub201 = xor i32 %notmask200, -1
  %and202 = and i32 %7, %sub201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool6.not203 = icmp eq i32 %and202, 0
  br i1 %tobool6.not203, label %get_order.exit.while.end_crit_edge, label %get_order.exit.while.body_crit_edge

get_order.exit.while.body_crit_edge:              ; preds = %get_order.exit
  br label %while.body

get_order.exit.while.end_crit_edge:               ; preds = %get_order.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %get_order.exit.while.body_crit_edge
  %shift.0205 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %add, %get_order.exit.while.body_crit_edge ]
  %npages.0204 = phi i32 [ %mul, %while.body.while.body_crit_edge ], [ 1, %get_order.exit.while.body_crit_edge ]
  %dec = add i32 %shift.0205, -1
  %mul = shl i32 %npages.0204, 1
  %notmask = shl nsw i32 -1, %dec
  %sub = xor i32 %notmask, -1
  %and = and i32 %7, %sub
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %get_order.exit.while.end_crit_edge
  %npages.0.lcssa = phi i32 [ 1, %get_order.exit.while.end_crit_edge ], [ %mul, %while.body.while.end_crit_edge ]
  %shift.0.lcssa = phi i32 [ %add, %get_order.exit.while.end_crit_edge ], [ %dec, %while.body.while.end_crit_edge ]
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %npages.0.lcssa, i32 8) #6
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %while.end.err_free_crit_edge, label %if.end7.i, !prof !21

while.end.err_free_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

if.end7.i:                                        ; preds = %while.end
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #9
  %tobool8.not = icmp eq ptr %call8.i, null
  br i1 %tobool8.not, label %if.end7.i.err_free_crit_edge, label %for.cond.preheader

if.end7.i.err_free_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npages.0.lcssa)
  %cmp11207.not = icmp eq i32 %npages.0.lcssa, 0
  br i1 %cmp11207.not, label %for.cond.preheader.if.end57_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end57_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %12 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %t, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0208 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul13 = shl i32 %i.0208, %shift.0.lcssa
  %add14 = add i32 %13, %mul13
  %conv = zext i32 %add14 to i64
  %arrayidx = getelementptr i64, ptr %call8.i, i32 %i.0208
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %arrayidx, align 8
  %inc = add nuw nsw i32 %i.0208, 1
  %exitcond.not = icmp eq i32 %inc, %npages.0.lcssa
  br i1 %exitcond.not, label %for.body.if.end57_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end57_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.else:                                          ; preds = %entry
  %15 = ptrtoint ptr %is_direct to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %is_direct, align 4
  %sub16 = add i32 %size, 4095
  %div119 = lshr i32 %sub16, 12
  %16 = shl nuw nsw i32 %div119, 3
  %call8.i151 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #9
  %tobool18.not224 = icmp eq ptr %call8.i151, null
  br i1 %tobool18.not224, label %if.else.cleanup_crit_edge, label %if.end7.i185

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i185:                                     ; preds = %if.else
  %call8.i184 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #9
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i184, ptr %buf, align 4
  %tobool22.not = icmp eq ptr %call8.i184, null
  br i1 %tobool22.not, label %if.end7.i185.err_out_crit_edge, label %for.cond25.preheader

if.end7.i185.err_out_crit_edge:                   ; preds = %if.end7.i185
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

for.cond25.preheader:                             ; preds = %if.end7.i185
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub16)
  %cmp26209.not = icmp ult i32 %sub16, 4096
  br i1 %cmp26209.not, label %for.cond25.preheader.if.end57_crit_edge, label %for.body28.preheader

for.cond25.preheader.if.end57_crit_edge:          ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

for.body28.preheader:                             ; preds = %for.cond25.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div119, i32 1)
  br label %for.body28

for.cond34.preheader:                             ; preds = %for.body28
  br i1 %cmp26209.not, label %for.cond34.preheader.if.end57_crit_edge, label %for.body37.lr.ph

for.cond34.preheader.if.end57_crit_edge:          ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

for.body37.lr.ph:                                 ; preds = %for.cond34.preheader
  %pdev38 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %umax215 = call i32 @llvm.umax.i32(i32 %div119, i32 1)
  br label %for.body37

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.body28.preheader
  %i.1210 = phi i32 [ %inc32, %for.body28.for.body28_crit_edge ], [ 0, %for.body28.preheader ]
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf, align 4
  %arrayidx29 = getelementptr %struct.mthca_buf_list, ptr %19, i32 %i.1210
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx29, align 4
  %inc32 = add nuw nsw i32 %i.1210, 1
  %exitcond214.not = icmp eq i32 %inc32, %umax
  br i1 %exitcond214.not, label %for.cond34.preheader, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body28

for.body37:                                       ; preds = %if.end47.for.body37_crit_edge, %for.body37.lr.ph
  %i.2212 = phi i32 [ 0, %for.body37.lr.ph ], [ %inc55, %if.end47.for.body37_crit_edge ]
  %21 = ptrtoint ptr %pdev38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev38, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %call.i188 = call ptr @dma_alloc_attrs(ptr noundef %dev39, i32 noundef 4096, ptr noundef nonnull %t, i32 noundef 3264, i32 noundef 0) #6
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf, align 4
  %arrayidx41 = getelementptr %struct.mthca_buf_list, ptr %24, i32 %i.2212
  %25 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i188, ptr %arrayidx41, align 4
  %26 = load ptr, ptr %buf, align 4
  %arrayidx43 = getelementptr %struct.mthca_buf_list, ptr %26, i32 %i.2212
  %27 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx43, align 4
  %tobool45.not = icmp eq ptr %28, null
  br i1 %tobool45.not, label %for.body37.err_free_crit_edge, label %if.end47

for.body37.err_free_crit_edge:                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

if.end47:                                         ; preds = %for.body37
  %29 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %t, align 4
  %conv48 = zext i32 %30 to i64
  %arrayidx49 = getelementptr i64, ptr %call8.i151, i32 %i.2212
  %31 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv48, ptr %arrayidx49, align 8
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf, align 4
  %mapping51 = getelementptr %struct.mthca_buf_list, ptr %33, i32 %i.2212, i32 1
  %34 = ptrtoint ptr %mapping51 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %30, ptr %mapping51, align 4
  %35 = load ptr, ptr %buf, align 4
  %arrayidx52 = getelementptr %struct.mthca_buf_list, ptr %35, i32 %i.2212
  %36 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx52, align 4
  %38 = call ptr @memset(ptr %37, i32 0, i32 4096)
  %inc55 = add nuw nsw i32 %i.2212, 1
  %exitcond216.not = icmp eq i32 %inc55, %umax215
  br i1 %exitcond216.not, label %if.end47.if.end57_crit_edge, label %if.end47.for.body37_crit_edge

if.end47.for.body37_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body37

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.end57:                                         ; preds = %if.end47.if.end57_crit_edge, %for.cond34.preheader.if.end57_crit_edge, %for.cond25.preheader.if.end57_crit_edge, %for.body.if.end57_crit_edge, %for.cond.preheader.if.end57_crit_edge
  %npages.1 = phi i32 [ %div119, %for.cond34.preheader.if.end57_crit_edge ], [ 0, %for.cond.preheader.if.end57_crit_edge ], [ %div119, %for.cond25.preheader.if.end57_crit_edge ], [ %div119, %if.end47.if.end57_crit_edge ], [ %npages.0.lcssa, %for.body.if.end57_crit_edge ]
  %shift.1 = phi i32 [ 12, %for.cond34.preheader.if.end57_crit_edge ], [ %shift.0.lcssa, %for.cond.preheader.if.end57_crit_edge ], [ 12, %for.cond25.preheader.if.end57_crit_edge ], [ 12, %if.end47.if.end57_crit_edge ], [ %shift.0.lcssa, %for.body.if.end57_crit_edge ]
  %dma_list.0 = phi ptr [ %call8.i151, %for.cond34.preheader.if.end57_crit_edge ], [ %call8.i, %for.cond.preheader.if.end57_crit_edge ], [ %call8.i151, %for.cond25.preheader.if.end57_crit_edge ], [ %call8.i151, %if.end47.if.end57_crit_edge ], [ %call8.i, %for.body.if.end57_crit_edge ]
  %pd_num = getelementptr inbounds %struct.mthca_pd, ptr %pd, i32 0, i32 1
  %39 = ptrtoint ptr %pd_num to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pd_num, align 8
  %conv58 = sext i32 %size to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hca_write)
  %tobool59.not = icmp eq i32 %hca_write, 0
  %or = select i1 %tobool59.not, i32 1024, i32 3072
  %call60 = call i32 @mthca_mr_alloc_phys(ptr noundef %dev, i32 noundef %40, ptr noundef nonnull %dma_list.0, i32 noundef %shift.1, i32 noundef %npages.1, i64 noundef 0, i64 noundef %conv58, i32 noundef %or, ptr noundef %mr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end57.err_free_crit_edge

if.end57.err_free_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

if.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %dma_list.0) #6
  br label %cleanup

err_free:                                         ; preds = %if.end57.err_free_crit_edge, %for.body37.err_free_crit_edge, %if.end7.i.err_free_crit_edge, %while.end.err_free_crit_edge
  %err.0 = phi i32 [ %call60, %if.end57.err_free_crit_edge ], [ -12, %if.end7.i.err_free_crit_edge ], [ -12, %while.end.err_free_crit_edge ], [ -12, %for.body37.err_free_crit_edge ]
  %dma_list.1 = phi ptr [ %dma_list.0, %if.end57.err_free_crit_edge ], [ null, %if.end7.i.err_free_crit_edge ], [ null, %while.end.err_free_crit_edge ], [ %call8.i151, %for.body37.err_free_crit_edge ]
  %41 = ptrtoint ptr %is_direct to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %is_direct, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool1.not.i = icmp eq i32 %42, 0
  br i1 %tobool1.not.i, label %for.cond.preheader.i, label %if.then2.i

for.cond.preheader.i:                             ; preds = %err_free
  %sub.i190 = add i32 %size, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i190)
  %cmp23.not.i = icmp ult i32 %sub.i190, 4096
  br i1 %cmp23.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %div22.i = lshr i32 %sub.i190, 12
  %pdev5.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  br label %for.body.i

if.then2.i:                                       ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %43 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buf, align 4
  %mapping.i = getelementptr inbounds %struct.mthca_buf_list, ptr %buf, i32 0, i32 1
  %47 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mapping.i, align 4
  call void @dma_free_attrs(ptr noundef %dev3.i, i32 noundef %size, ptr noundef %46, i32 noundef %48, i32 noundef 0) #6
  br label %err_out

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %49 = ptrtoint ptr %pdev5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev5.i, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf, align 4
  %arrayidx.i = getelementptr %struct.mthca_buf_list, ptr %52, i32 %i.024.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i, align 4
  %mapping9.i = getelementptr %struct.mthca_buf_list, ptr %52, i32 %i.024.i, i32 1
  %55 = ptrtoint ptr %mapping9.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mapping9.i, align 4
  call void @dma_free_attrs(ptr noundef %dev6.i, i32 noundef 4096, ptr noundef %54, i32 noundef %56, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div22.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %57 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %58) #6
  br label %err_out

err_out:                                          ; preds = %for.end.i, %if.then2.i, %if.end7.i185.err_out_crit_edge
  %err.1 = phi i32 [ -12, %if.end7.i185.err_out_crit_edge ], [ %err.0, %if.then2.i ], [ %err.0, %for.end.i ]
  %dma_list.2 = phi ptr [ %call8.i151, %if.end7.i185.err_out_crit_edge ], [ %dma_list.1, %if.then2.i ], [ %dma_list.1, %for.end.i ]
  call void @kfree(ptr noundef %dma_list.2) #6
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end63, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_out ], [ 0, %if.end63 ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_mr_alloc_phys(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_buf_free(ptr noundef %dev, i32 noundef %size, ptr nocapture noundef readonly %buf, i32 noundef %is_direct, ptr noundef %mr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mthca_free_mr(ptr noundef %dev, ptr noundef nonnull %mr) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_direct)
  %tobool1.not = icmp eq i32 %is_direct, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %if.then2

for.cond.preheader:                               ; preds = %if.end
  %sub = add i32 %size, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp23.not = icmp ult i32 %sub, 4096
  br i1 %cmp23.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div22 = lshr i32 %sub, 12
  %pdev5 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  br label %for.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %mapping = getelementptr inbounds %struct.mthca_buf_list, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapping, align 4
  tail call void @dma_free_attrs(ptr noundef %dev3, i32 noundef %size, ptr noundef %3, i32 noundef %5, i32 noundef 0) #6
  br label %if.end10

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev5, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr %struct.mthca_buf_list, ptr %9, i32 %i.024
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %mapping9 = getelementptr %struct.mthca_buf_list, ptr %9, i32 %i.024, i32 1
  %12 = ptrtoint ptr %mapping9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mapping9, align 4
  tail call void @dma_free_attrs(ptr noundef %dev6, i32 noundef 4096, ptr noundef %11, i32 noundef %13, i32 noundef 0) #6
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %div22
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %15) #6
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.then2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_mr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @mthca_alloc_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_allocator.c", i32 90, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/mthca/mthca_allocator.c", i32 151, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mthca_array_clear.__UNIQUE_ID_ddebug498, !4, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i32 0, i32 33}
!19 = !{i64 2148215690, i64 2148215695, i64 2148215708, i64 2148215752, i64 2148215786, i64 2148215807}
!20 = !{!"auto-init"}
!21 = !{!"branch_weights", i32 1, i32 2000}
