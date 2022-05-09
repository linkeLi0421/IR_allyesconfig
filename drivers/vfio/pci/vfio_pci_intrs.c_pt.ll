; ModuleID = '/llk/IR_all_yes/drivers/vfio/pci/vfio_pci_intrs.c_pt.bc'
source_filename = "../drivers/vfio/pci/vfio_pci_intrs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vfio_pci_core_device = type { %struct.vfio_device, ptr, [6 x ptr], [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.mutex, ptr, i32, i32, i32, ptr, i8, i8, i16, i32, [7 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, ptr, %struct.notifier_block, %struct.mutex, %struct.list_head, %struct.rw_semaphore }
%struct.vfio_device = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.refcount_struct, i32, %struct.completion, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vfio_pci_irq_ctx = type { ptr, ptr, ptr, ptr, i8, %struct.irq_bypass_producer }
%struct.irq_bypass_producer = type { %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.70 = type { ptr }
%struct.msi_msg = type { %union.anon.75, %union.anon.76, %union.anon.77 }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%union.anon.77 = type { i32 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vfio-intx(%s)\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vfio-msi%s[%d](%s)\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"x\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@vfio_msi_set_vector_signal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 358, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"irq bypass producer (token %p) registration fails: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vfio_msi_set_vector_signal\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/vfio/pci/vfio_pci_intrs.c\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vfio_msi_set_vector_signal._entry_ptr = internal global ptr @vfio_msi_set_vector_signal._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 189, i32 44 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 316, i32 49 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 317, i32 16 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 317, i32 22 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [37 x i8] c"../drivers/vfio/pci/vfio_pci_intrs.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 356, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @vfio_msi_set_vector_signal._entry, ptr @vfio_msi_set_vector_signal._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_msi_set_vector_signal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfio_pci_intx_mask(ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %irqlock = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #7
  %irq_type = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 11
  %2 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %if.else, label %if.then, !prof !25

if.then:                                          ; preds = %entry
  %pci_2_3 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 19
  %4 = ptrtoint ptr %pci_2_3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pci_2_3, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %if.then.if.end23_crit_edge, label %if.then11

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_intx(ptr noundef %1, i32 noundef 0) #7
  br label %if.end23

if.else:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %masked = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %masked to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %masked, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.then13, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then13:                                        ; preds = %if.else
  %pci_2_314 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 19
  %10 = ptrtoint ptr %pci_2_314 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pci_2_314, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15.not = icmp eq i8 %11, 0
  br i1 %tobool15.not, label %if.else17, label %if.then16

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_intx(ptr noundef %1, i32 noundef 0) #7
  br label %if.end18

if.else17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %13) #7
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %masked21 = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %masked21 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %masked21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end18, %if.else.if.end23_crit_edge, %if.then11, %if.then.if.end23_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfio_pci_intx_unmask(ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfio_pci_intx_unmask_handler(ptr noundef %vdev, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %irq_type.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 11
  %0 = ptrtoint ptr %irq_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.then.if.end_crit_edge, !prof !25

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs.i:                                       ; preds = %if.then
  %virq_disabled.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 20
  %2 = ptrtoint ptr %virq_disabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %virq_disabled.i, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.rhs.i.if.end_crit_edge, !prof !25

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i64 @eventfd_signal(ptr noundef %7, i64 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_pci_intx_unmask_handler(ptr noundef %opaque, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %opaque, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %irqlock = getelementptr inbounds %struct.vfio_pci_core_device, ptr %opaque, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #7
  %irq_type = getelementptr inbounds %struct.vfio_pci_core_device, ptr %opaque, i32 0, i32 11
  %2 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %if.else, label %if.then, !prof !25

if.then:                                          ; preds = %entry
  %pci_2_3 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %opaque, i32 0, i32 19
  %4 = ptrtoint ptr %pci_2_3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pci_2_3, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %if.then.if.end30_crit_edge, label %if.then11

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_intx(ptr noundef %1, i32 noundef 1) #7
  br label %if.end30

if.else:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %opaque, i32 0, i32 9
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %masked = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %masked to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %masked, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.else.if.end30_crit_edge, label %land.lhs.true

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true:                                    ; preds = %if.else
  %virq_disabled = getelementptr inbounds %struct.vfio_pci_core_device, ptr %opaque, i32 0, i32 20
  %10 = ptrtoint ptr %virq_disabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %virq_disabled, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then15:                                        ; preds = %land.lhs.true
  %pci_2_316 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %opaque, i32 0, i32 19
  %12 = ptrtoint ptr %pci_2_316 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pci_2_316, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool17.not = icmp eq i8 %13, 0
  br i1 %tobool17.not, label %if.else22, label %if.then18

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call zeroext i1 @pci_check_and_unmask_intx(ptr noundef %1) #7
  %not.call19 = xor i1 %call19, true
  %spec.select43 = zext i1 %not.call19 to i32
  br label %if.end23

if.else22:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %15) #7
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then18
  %cmp24 = phi i1 [ false, %if.else22 ], [ %not.call19, %if.then18 ]
  %ret.0 = phi i32 [ 0, %if.else22 ], [ %spec.select43, %if.then18 ]
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %masked28 = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %17, i32 0, i32 4
  %frombool = zext i1 %cmp24 to i8
  %18 = ptrtoint ptr %masked28 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %masked28, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end23, %land.lhs.true.if.end30_crit_edge, %if.else.if.end30_crit_edge, %if.then11, %if.then.if.end30_crit_edge
  %ret.1 = phi i32 [ 0, %if.then11 ], [ 0, %if.then.if.end30_crit_edge ], [ 0, %land.lhs.true.if.end30_crit_edge ], [ %ret.0, %if.end23 ], [ 0, %if.else.if.end30_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call3) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfio_send_intx_eventfd(ptr nocapture noundef readonly %opaque, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_type = getelementptr inbounds %struct.vfio_pci_core_device, ptr %opaque, i32 0, i32 11
  %0 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end_crit_edge, !prof !25

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %virq_disabled = getelementptr inbounds %struct.vfio_pci_core_device, ptr %opaque, i32 0, i32 20
  %2 = ptrtoint ptr %virq_disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %virq_disabled, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %land.rhs.if.end_crit_edge, !prof !25

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %ctx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %opaque, i32 0, i32 9
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i64 @eventfd_signal(ptr noundef %7, i64 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfio_pci_set_irqs_ioctl(ptr noundef %vdev, i32 noundef %flags, i32 noundef %index, i32 noundef %start, i32 noundef %count, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %index, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb4_crit_edge
    i32 2, label %entry.sw.bb4_crit_edge42
    i32 3, label %sw.bb9
    i32 4, label %sw.epilog17
  ]

entry.sw.bb4_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %and = and i32 %flags, 56
  %1 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %and, label %sw.bb.cleanup_crit_edge [
    i32 8, label %sw.bb.if.end19_crit_edge
    i32 16, label %sw.bb2
    i32 32, label %sw.bb3
  ]

sw.bb.if.end19_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge42
  %and5 = and i32 %flags, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and5)
  %cond22 = icmp eq i32 %and5, 32
  br i1 %cond22, label %sw.bb4.if.end19_crit_edge, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4.if.end19_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sw.bb9:                                           ; preds = %entry
  %and10 = and i32 %flags, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and10)
  %cond21 = icmp eq i32 %and10, 32
  br i1 %cond21, label %sw.bb11, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb11:                                          ; preds = %sw.bb9
  %pdev = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not = icmp eq i8 %5, 0
  br i1 %tobool.i.not, label %sw.bb11.cleanup_crit_edge, label %sw.bb11.if.end19_crit_edge

sw.bb11.if.end19_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog17:                                      ; preds = %entry
  %and14 = and i32 %flags, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and14)
  %cond = icmp eq i32 %and14, 32
  br i1 %cond, label %sw.epilog17.if.end19_crit_edge, label %sw.epilog17.cleanup_crit_edge

sw.epilog17.cleanup_crit_edge:                    ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog17.if.end19_crit_edge:                   ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %sw.epilog17.if.end19_crit_edge, %sw.bb11.if.end19_crit_edge, %sw.bb4.if.end19_crit_edge, %sw.bb3, %sw.bb2, %sw.bb.if.end19_crit_edge
  %func.041 = phi ptr [ @vfio_pci_set_req_trigger, %sw.epilog17.if.end19_crit_edge ], [ @vfio_pci_set_msi_trigger, %sw.bb4.if.end19_crit_edge ], [ @vfio_pci_set_err_trigger, %sw.bb11.if.end19_crit_edge ], [ @vfio_pci_set_intx_trigger, %sw.bb3 ], [ @vfio_pci_set_intx_unmask, %sw.bb2 ], [ @vfio_pci_set_intx_mask, %sw.bb.if.end19_crit_edge ]
  %call20 = tail call i32 %func.041(ptr noundef %vdev, i32 noundef %index, i32 noundef %start, i32 noundef %count, i32 noundef %flags, ptr noundef %data) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %sw.epilog17.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end19 ], [ -25, %sw.epilog17.cleanup_crit_edge ], [ -25, %sw.bb4.cleanup_crit_edge ], [ -25, %sw.bb11.cleanup_crit_edge ], [ -25, %sw.bb9.cleanup_crit_edge ], [ -25, %sw.bb.cleanup_crit_edge ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_pci_set_intx_mask(ptr noundef %vdev, i32 noundef %index, i32 noundef %start, i32 noundef %count, i32 noundef %flags, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_type = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 11
  %0 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_type, align 4
  %2 = or i32 %1, %start
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp3.not = icmp eq i32 %count, 1
  %or.cond22 = and i1 %cmp3.not, %3
  br i1 %or.cond22, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end17.sink.split_crit_edge

if.end.if.end17.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.sink.split

if.else:                                          ; preds = %if.end
  %and5 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else11, label %if.then7

if.then7:                                         ; preds = %if.else
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %if.then7.if.end17_crit_edge, label %if.then7.if.end17.sink.split_crit_edge

if.then7.if.end17.sink.split_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.sink.split

if.then7.if.end17_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.else11:                                        ; preds = %if.else
  %and12 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else11.if.end17_crit_edge, label %if.else11.return_crit_edge

if.else11.return_crit_edge:                       ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else11.if.end17_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end17.sink.split:                              ; preds = %if.then7.if.end17.sink.split_crit_edge, %if.end.if.end17.sink.split_crit_edge
  tail call void @vfio_pci_intx_mask(ptr noundef %vdev)
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else11.if.end17_crit_edge, %if.then7.if.end17_crit_edge
  br label %return

return:                                           ; preds = %if.end17, %if.else11.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -22, %entry.return_crit_edge ], [ -25, %if.else11.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_pci_set_intx_unmask(ptr noundef %vdev, i32 noundef %index, i32 noundef %start, i32 noundef %count, i32 noundef %flags, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_type = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 11
  %0 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_type, align 4
  %2 = or i32 %1, %start
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp3.not = icmp eq i32 %count, 1
  %or.cond34 = and i1 %cmp3.not, %3
  br i1 %or.cond34, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call.i = tail call i32 @vfio_pci_intx_unmask_handler(ptr noundef %vdev, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then4.return_crit_edge

if.then4.return_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.i:                                        ; preds = %if.then4
  %4 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.then.i.return_crit_edge, !prof !25

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.rhs.i.i:                                     ; preds = %if.then.i
  %virq_disabled.i.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 20
  %6 = ptrtoint ptr %virq_disabled.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %virq_disabled.i.i, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.rhs.i.i.return_crit_edge, !prof !25

land.rhs.i.i.return_crit_edge:                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %8 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i.i = tail call i64 @eventfd_signal(ptr noundef %11, i64 noundef 1) #7
  br label %return

if.else:                                          ; preds = %if.end
  %and5 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else11, label %if.then7

if.then7:                                         ; preds = %if.else
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %if.then7.return_crit_edge, label %if.then9

if.then7.return_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then9:                                         ; preds = %if.then7
  %call.i35 = tail call i32 @vfio_pci_intx_unmask_handler(ptr noundef %vdev, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp.i36 = icmp sgt i32 %call.i35, 0
  br i1 %cmp.i36, label %if.then.i39, label %if.then9.return_crit_edge

if.then9.return_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.i39:                                      ; preds = %if.then9
  %14 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i38 = icmp eq i32 %15, 0
  br i1 %cmp.i.i38, label %land.rhs.i.i42, label %if.then.i39.return_crit_edge, !prof !25

if.then.i39.return_crit_edge:                     ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.rhs.i.i42:                                   ; preds = %if.then.i39
  %virq_disabled.i.i40 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 20
  %16 = ptrtoint ptr %virq_disabled.i.i40 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %virq_disabled.i.i40, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i41 = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i41, label %if.then.i.i45, label %land.rhs.i.i42.return_crit_edge, !prof !25

land.rhs.i.i42.return_crit_edge:                  ; preds = %land.rhs.i.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.i.i45:                                    ; preds = %land.rhs.i.i42
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i.i43 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %18 = ptrtoint ptr %ctx.i.i43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx.i.i43, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call.i.i44 = tail call i64 @eventfd_signal(ptr noundef %21, i64 noundef 1) #7
  br label %return

if.else11:                                        ; preds = %if.else
  %and12 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else11.return_crit_edge, label %if.then14

if.else11.return_crit_edge:                       ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then14:                                        ; preds = %if.else11
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp15 = icmp sgt i32 %23, -1
  %ctx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %unmask17 = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %25, i32 0, i32 1
  br i1 %cmp15, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vfio_virqfd_disable(ptr noundef %unmask17) #7
  br label %return

cleanup:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @vfio_virqfd_enable(ptr noundef %vdev, ptr noundef nonnull @vfio_pci_intx_unmask_handler, ptr noundef nonnull @vfio_send_intx_eventfd, ptr noundef null, ptr noundef %unmask17, i32 noundef %23) #7
  br label %return

return:                                           ; preds = %cleanup, %cleanup.thread, %if.else11.return_crit_edge, %if.then.i.i45, %land.rhs.i.i42.return_crit_edge, %if.then.i39.return_crit_edge, %if.then9.return_crit_edge, %if.then7.return_crit_edge, %if.then.i.i, %land.rhs.i.i.return_crit_edge, %if.then.i.return_crit_edge, %if.then4.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %call, %cleanup ], [ -22, %entry.return_crit_edge ], [ 0, %cleanup.thread ], [ 0, %if.then.i.i45 ], [ 0, %land.rhs.i.i42.return_crit_edge ], [ 0, %if.then.i39.return_crit_edge ], [ 0, %if.then9.return_crit_edge ], [ 0, %if.then.i.i ], [ 0, %land.rhs.i.i.return_crit_edge ], [ 0, %if.then.i.return_crit_edge ], [ 0, %if.then4.return_crit_edge ], [ 0, %if.then7.return_crit_edge ], [ 0, %if.else11.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_pci_set_intx_trigger(ptr noundef %vdev, i32 noundef %index, i32 noundef %start, i32 noundef %count, i32 noundef %flags, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_type = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 11
  %0 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %2 = or i32 %1, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp ne i32 %2, 0
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond73 = or i1 %tobool2.not, %3
  br i1 %or.cond73, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @vfio_intx_disable(ptr noundef %vdev)
  br label %return

if.end:                                           ; preds = %entry
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end.return_crit_edge, label %lor.lhs.false13

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false13:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %cmp14.not = icmp eq i32 %start, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp16.not = icmp eq i32 %count, 1
  %or.cond74 = and i1 %cmp14.not, %cmp16.not
  br i1 %or.cond74, label %if.end18, label %lor.lhs.false13.return_crit_edge

lor.lhs.false13.return_crit_edge:                 ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end18:                                         ; preds = %lor.lhs.false13
  %and19 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end35, label %if.then21

if.then21:                                        ; preds = %if.end18
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  br i1 %cmp, label %if.then24, label %if.end.i

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @vfio_intx_set_signal(ptr noundef %vdev, i32 noundef %5)
  br label %return

if.end.i:                                         ; preds = %if.then21
  %pdev.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.i.return_crit_edge, label %if.end7.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end7.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 52) #10
  %ctx.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %11 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %ctx.i, align 4
  %tobool9.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool9.not.i, label %if.end7.i.return_crit_edge, label %if.end11.i

if.end7.i.return_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end11.i:                                       ; preds = %if.end7.i
  %num_ctx.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 10
  %12 = ptrtoint ptr %num_ctx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %num_ctx.i, align 4
  %virq_disabled.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 20
  %13 = ptrtoint ptr %virq_disabled.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %virq_disabled.i, align 1, !range !26
  %masked.i = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %call7.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %masked.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %masked.i, align 8
  %pci_2_3.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 19
  %16 = ptrtoint ptr %pci_2_3.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pci_2_3.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not.i = icmp eq i8 %17, 0
  br i1 %tobool14.not.i, label %if.end11.i.if.end29_crit_edge, label %if.then15.i

if.end11.i.if.end29_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 4
  %20 = xor i8 %14, 1
  %21 = zext i8 %20 to i32
  tail call void @pci_intx(ptr noundef %19, i32 noundef %21) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then15.i, %if.end11.i.if.end29_crit_edge
  %22 = ptrtoint ptr %irq_type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %irq_type, align 4
  %call30 = tail call fastcc i32 @vfio_intx_set_signal(ptr noundef %vdev, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.return_crit_edge, label %if.then32

if.end29.return_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @vfio_intx_disable(ptr noundef %vdev)
  br label %return

if.end35:                                         ; preds = %if.end18
  br i1 %cmp, label %if.end39, label %if.end35.return_crit_edge

if.end35.return_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end39:                                         ; preds = %if.end35
  br i1 %tobool2.not, label %if.else, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end39
  %virq_disabled.i76 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 20
  %23 = ptrtoint ptr %virq_disabled.i76 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %virq_disabled.i76, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i77 = icmp eq i8 %24, 0
  br i1 %tobool.not.i77, label %if.then.i, label %land.rhs.i.return_crit_edge, !prof !25

land.rhs.i.return_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i78 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %25 = ptrtoint ptr %ctx.i78 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx.i78, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i = tail call i64 @eventfd_signal(ptr noundef %28, i64 noundef 1) #7
  br label %return

if.else:                                          ; preds = %if.end39
  %and43 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else.return_crit_edge, label %if.then45

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then45:                                        ; preds = %if.else
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool46.not = icmp eq i8 %30, 0
  br i1 %tobool46.not, label %if.then45.return_crit_edge, label %land.rhs.i84

if.then45.return_crit_edge:                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.rhs.i84:                                     ; preds = %if.then45
  %virq_disabled.i82 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 20
  %31 = ptrtoint ptr %virq_disabled.i82 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %virq_disabled.i82, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i83 = icmp eq i8 %32, 0
  br i1 %tobool.not.i83, label %if.then.i87, label %land.rhs.i84.return_crit_edge, !prof !25

land.rhs.i84.return_crit_edge:                    ; preds = %land.rhs.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.i87:                                      ; preds = %land.rhs.i84
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i85 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %33 = ptrtoint ptr %ctx.i85 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx.i85, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call.i86 = tail call i64 @eventfd_signal(ptr noundef %36, i64 noundef 1) #7
  br label %return

return:                                           ; preds = %if.then.i87, %land.rhs.i84.return_crit_edge, %if.then45.return_crit_edge, %if.else.return_crit_edge, %if.then.i, %land.rhs.i.return_crit_edge, %if.end35.return_crit_edge, %if.then32, %if.end29.return_crit_edge, %if.end7.i.return_crit_edge, %if.end.i.return_crit_edge, %if.then24, %lor.lhs.false13.return_crit_edge, %if.end.return_crit_edge, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ -22, %if.end.return_crit_edge ], [ -22, %lor.lhs.false13.return_crit_edge ], [ %call, %if.then24 ], [ %call30, %if.then32 ], [ 0, %if.end29.return_crit_edge ], [ -22, %if.end35.return_crit_edge ], [ 0, %if.then45.return_crit_edge ], [ 0, %if.else.return_crit_edge ], [ 0, %land.rhs.i.return_crit_edge ], [ 0, %if.then.i ], [ 0, %land.rhs.i84.return_crit_edge ], [ 0, %if.then.i87 ], [ -12, %if.end7.i.return_crit_edge ], [ -19, %if.end.i.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_pci_set_msi_trigger(ptr noundef %vdev, i32 noundef %index, i32 noundef %start, i32 noundef %count, i32 noundef %flags, ptr noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %cmp = icmp eq i32 %index, 2
  %irq_type = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 11
  %0 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %index)
  %cmp1 = icmp eq i32 %1, %index
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool2.not = icmp eq i32 %count, 0
  %or.cond = and i1 %tobool2.not, %cmp1
  %or.cond.not = xor i1 %or.cond, true
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %or.cond121 = or i1 %tobool4.not, %or.cond.not
  br i1 %or.cond121, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @vfio_msi_disable(ptr noundef %vdev, i1 noundef zeroext %cmp)
  br label %cleanup71

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %index)
  %cmp7 = icmp ne i32 %1, %index
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %switch = icmp ult i32 %1, 3
  %or.cond122 = and i1 %cmp7, %switch
  br i1 %or.cond122, label %if.end.cleanup71_crit_edge, label %if.end17

if.end.cleanup71_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

if.end17:                                         ; preds = %if.end
  %and18 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end38, label %if.then20

if.then20:                                        ; preds = %if.end17
  br i1 %cmp1, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then20
  %num_ctx.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 10
  %2 = ptrtoint ptr %num_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ctx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start)
  %cmp.not.i = icmp ule i32 %3, %start
  %add.i = add i32 %count, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp2.i = icmp ugt i32 %add.i, %3
  %or.cond.i = or i1 %cmp.not.i, %cmp2.i
  %brmerge = or i1 %tobool2.not, %or.cond.i
  %.mux = select i1 %or.cond.i, i32 -22, i32 0
  br i1 %brmerge, label %if.then23.cleanup71_crit_edge, label %for.body.lr.ph.i

if.then23.cleanup71_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

for.body.lr.ph.i:                                 ; preds = %if.then23
  %tobool4.not.i = icmp eq ptr %data, null
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.042.i = phi i32 [ %start, %for.body.lr.ph.i ], [ %inc6.i, %cond.end.i.for.body.i_crit_edge ]
  %i.040.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cond.end.i.for.body.i_crit_edge ]
  br i1 %tobool4.not.i, label %for.body.i.cond.end.i_crit_edge, label %cond.true.i

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i32, ptr %data, i32 %i.040.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %5, %cond.true.i ], [ -1, %for.body.i.cond.end.i_crit_edge ]
  %call.i = tail call fastcc i32 @vfio_msi_set_vector_signal(ptr noundef %vdev, i32 noundef %j.042.i, i32 noundef %cond.i, i1 noundef zeroext %cmp) #7
  %inc.i = add nuw i32 %i.040.i, 1
  %inc6.i = add i32 %j.042.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %count)
  %cmp3.i = icmp ult i32 %inc.i, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %or.cond38.i = select i1 %cmp3.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond38.i, label %cond.end.i.for.body.i_crit_edge, label %for.end.i

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %cond.end.i
  br i1 %tobool.not.i, label %for.end.i.cleanup71_crit_edge, label %for.cond9.preheader.i

for.end.i.cleanup71_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

for.cond9.preheader.i:                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.042.i, i32 %start)
  %cmp10.not46.i = icmp slt i32 %j.042.i, %start
  br i1 %cmp10.not46.i, label %for.cond9.preheader.i.cleanup71_crit_edge, label %for.cond9.preheader.i.for.body11.i_crit_edge

for.cond9.preheader.i.for.body11.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body11.i

for.cond9.preheader.i.cleanup71_crit_edge:        ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.cond9.preheader.i.for.body11.i_crit_edge
  %j.147.i = phi i32 [ %j.1.i, %for.body11.i.for.body11.i_crit_edge ], [ %j.042.i, %for.cond9.preheader.i.for.body11.i_crit_edge ]
  %call13.i = tail call fastcc i32 @vfio_msi_set_vector_signal(ptr noundef %vdev, i32 noundef %j.147.i, i32 noundef -1, i1 noundef zeroext %cmp) #7
  %j.1.i = add i32 %j.147.i, -1
  %cmp10.not.i = icmp slt i32 %j.1.i, %start
  br i1 %cmp10.not.i, label %for.body11.i.cleanup71_crit_edge, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i

for.body11.i.cleanup71_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

if.end25:                                         ; preds = %if.then20
  %add = add i32 %count, %start
  %pdev1.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %6 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev1.i, align 4
  %cond.i123 = select i1 %cmp, i32 4, i32 2
  br i1 %switch, label %if.end25.cleanup71_crit_edge, label %if.end.i

if.end25.cleanup71_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

if.end.i:                                         ; preds = %if.end25
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 52) #7
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !27

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %ctx54.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %10 = ptrtoint ptr %ctx54.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ctx54.i, align 4
  br label %cleanup71

if.end7.i.i.i:                                    ; preds = %if.end.i
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #11
  %ctx.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %12 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i.i, ptr %ctx.i, align 4
  %tobool8.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool8.not.i, label %if.end7.i.i.i.cleanup71_crit_edge, label %if.end10.i

if.end7.i.i.i.cleanup71_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

if.end10.i:                                       ; preds = %if.end7.i.i.i
  %call11.i = tail call zeroext i16 @vfio_pci_memory_lock_and_enable(ptr noundef %vdev) #7
  %call.i.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %7, i32 noundef 1, i32 noundef %add, i32 noundef %cond.i123, ptr noundef null) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add)
  %cmp13.i = icmp slt i32 %call.i.i, %add
  br i1 %cmp13.i, label %if.then14.i, label %if.end19.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp15.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.then14.i.vfio_msi_enable.exit_crit_edge

if.then14.i.vfio_msi_enable.exit_crit_edge:       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfio_msi_enable.exit

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_free_irq_vectors(ptr noundef %7) #7
  br label %vfio_msi_enable.exit

if.end19.i:                                       ; preds = %if.end10.i
  tail call void @vfio_pci_memory_unlock_and_restore(ptr noundef %vdev, i16 noundef zeroext %call11.i) #7
  %num_ctx.i124 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 10
  %13 = ptrtoint ptr %num_ctx.i124 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %num_ctx.i124, align 4
  %cond21.i = select i1 %cmp, i32 2, i32 1
  %14 = ptrtoint ptr %irq_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond21.i, ptr %irq_type, align 4
  br i1 %cmp, label %if.end19.i.if.end30_crit_edge, label %if.then24.i

if.end19.i.if.end30_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = shl nuw nsw i32 %add, 1
  %sub.i = add nsw i32 %mul.i, -1
  %15 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #7, !range !28
  %16 = trunc i32 %15 to i8
  %conv.i = xor i8 %16, 31
  %msi_qmax.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 14
  %17 = ptrtoint ptr %msi_qmax.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %msi_qmax.i, align 4
  br label %if.end30

vfio_msi_enable.exit:                             ; preds = %if.then16.i, %if.then14.i.vfio_msi_enable.exit_crit_edge
  tail call void @vfio_pci_memory_unlock_and_restore(ptr noundef %vdev, i16 noundef zeroext %call11.i) #7
  %18 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx.i, align 4
  tail call void @kfree(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool28.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool28.not, label %vfio_msi_enable.exit.if.end30_crit_edge, label %vfio_msi_enable.exit.cleanup71_crit_edge

vfio_msi_enable.exit.cleanup71_crit_edge:         ; preds = %vfio_msi_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

vfio_msi_enable.exit.if.end30_crit_edge:          ; preds = %vfio_msi_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end30:                                         ; preds = %vfio_msi_enable.exit.if.end30_crit_edge, %if.then24.i, %if.end19.i.if.end30_crit_edge
  %num_ctx.i126 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 10
  %20 = ptrtoint ptr %num_ctx.i126 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_ctx.i126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %start)
  %cmp.not.i127 = icmp ule i32 %21, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %21)
  %cmp2.i129 = icmp ugt i32 %add, %21
  %or.cond.i130 = or i1 %cmp.not.i127, %cmp2.i129
  br i1 %or.cond.i130, label %if.end30.if.then34_crit_edge, label %for.cond.preheader.i132

if.end30.if.then34_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

for.cond.preheader.i132:                          ; preds = %if.end30
  br i1 %tobool2.not, label %for.cond.preheader.i132.cleanup71_crit_edge, label %for.body.lr.ph.i134

for.cond.preheader.i132.cleanup71_crit_edge:      ; preds = %for.cond.preheader.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

for.body.lr.ph.i134:                              ; preds = %for.cond.preheader.i132
  %tobool4.not.i133 = icmp eq ptr %data, null
  br label %for.body.i137

for.body.i137:                                    ; preds = %cond.end.i147.for.body.i137_crit_edge, %for.body.lr.ph.i134
  %j.042.i135 = phi i32 [ %start, %for.body.lr.ph.i134 ], [ %inc6.i143, %cond.end.i147.for.body.i137_crit_edge ]
  %i.040.i136 = phi i32 [ 0, %for.body.lr.ph.i134 ], [ %inc.i142, %cond.end.i147.for.body.i137_crit_edge ]
  br i1 %tobool4.not.i133, label %for.body.i137.cond.end.i147_crit_edge, label %cond.true.i139

for.body.i137.cond.end.i147_crit_edge:            ; preds = %for.body.i137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i147

cond.true.i139:                                   ; preds = %for.body.i137
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i138 = getelementptr i32, ptr %data, i32 %i.040.i136
  %22 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i138, align 4
  br label %cond.end.i147

cond.end.i147:                                    ; preds = %cond.true.i139, %for.body.i137.cond.end.i147_crit_edge
  %cond.i140 = phi i32 [ %23, %cond.true.i139 ], [ -1, %for.body.i137.cond.end.i147_crit_edge ]
  %call.i141 = tail call fastcc i32 @vfio_msi_set_vector_signal(ptr noundef %vdev, i32 noundef %j.042.i135, i32 noundef %cond.i140, i1 noundef zeroext %cmp) #7
  %inc.i142 = add nuw i32 %i.040.i136, 1
  %inc6.i143 = add i32 %j.042.i135, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i142, i32 %count)
  %cmp3.i144 = icmp ult i32 %inc.i142, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool.not.i145 = icmp eq i32 %call.i141, 0
  %or.cond38.i146 = select i1 %cmp3.i144, i1 %tobool.not.i145, i1 false
  br i1 %or.cond38.i146, label %cond.end.i147.for.body.i137_crit_edge, label %for.end.i148

cond.end.i147.for.body.i137_crit_edge:            ; preds = %cond.end.i147
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i137

for.end.i148:                                     ; preds = %cond.end.i147
  br i1 %tobool.not.i145, label %for.end.i148.cleanup71_crit_edge, label %for.cond9.preheader.i150

for.end.i148.cleanup71_crit_edge:                 ; preds = %for.end.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

for.cond9.preheader.i150:                         ; preds = %for.end.i148
  call void @__sanitizer_cov_trace_cmp4(i32 %j.042.i135, i32 %start)
  %cmp10.not46.i149 = icmp slt i32 %j.042.i135, %start
  br i1 %cmp10.not46.i149, label %for.cond9.preheader.i150.if.then34_crit_edge, label %for.cond9.preheader.i150.for.body11.i155_crit_edge

for.cond9.preheader.i150.for.body11.i155_crit_edge: ; preds = %for.cond9.preheader.i150
  br label %for.body11.i155

for.cond9.preheader.i150.if.then34_crit_edge:     ; preds = %for.cond9.preheader.i150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

for.body11.i155:                                  ; preds = %for.body11.i155.for.body11.i155_crit_edge, %for.cond9.preheader.i150.for.body11.i155_crit_edge
  %j.147.i151 = phi i32 [ %j.1.i153, %for.body11.i155.for.body11.i155_crit_edge ], [ %j.042.i135, %for.cond9.preheader.i150.for.body11.i155_crit_edge ]
  %call13.i152 = tail call fastcc i32 @vfio_msi_set_vector_signal(ptr noundef %vdev, i32 noundef %j.147.i151, i32 noundef -1, i1 noundef zeroext %cmp) #7
  %j.1.i153 = add i32 %j.147.i151, -1
  %cmp10.not.i154 = icmp slt i32 %j.1.i153, %start
  br i1 %cmp10.not.i154, label %for.body11.i155.if.then34_crit_edge, label %for.body11.i155.for.body11.i155_crit_edge

for.body11.i155.for.body11.i155_crit_edge:        ; preds = %for.body11.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i155

for.body11.i155.if.then34_crit_edge:              ; preds = %for.body11.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.then34:                                        ; preds = %for.body11.i155.if.then34_crit_edge, %for.cond9.preheader.i150.if.then34_crit_edge, %if.end30.if.then34_crit_edge
  %retval.0.i156170 = phi i32 [ %call.i141, %for.cond9.preheader.i150.if.then34_crit_edge ], [ -22, %if.end30.if.then34_crit_edge ], [ %call.i141, %for.body11.i155.if.then34_crit_edge ]
  tail call fastcc void @vfio_msi_disable(ptr noundef %vdev, i1 noundef zeroext %cmp)
  br label %cleanup71

if.end38:                                         ; preds = %if.end17
  br i1 %cmp1, label %lor.lhs.false41, label %if.end38.cleanup71_crit_edge

if.end38.cleanup71_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

lor.lhs.false41:                                  ; preds = %if.end38
  %add42 = add i32 %count, %start
  %num_ctx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 10
  %24 = ptrtoint ptr %num_ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_ctx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %25)
  %cmp43 = icmp ugt i32 %add42, %25
  br i1 %cmp43, label %lor.lhs.false41.cleanup71_crit_edge, label %for.cond.preheader

lor.lhs.false41.cleanup71_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

for.cond.preheader:                               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %start)
  %cmp47172 = icmp ugt i32 %add42, %start
  br i1 %cmp47172, label %for.body.lr.ph, label %for.cond.preheader.cleanup71_crit_edge

for.cond.preheader.cleanup71_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ctx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %and58 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0173 = phi i32 [ %start, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  %arrayidx = getelementptr %struct.vfio_pci_irq_ctx, ptr %27, i32 %i.0173
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %tobool48.not = icmp eq ptr %29, null
  br i1 %tobool48.not, label %for.body.for.inc_crit_edge, label %if.end50

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end50:                                         ; preds = %for.body
  br i1 %tobool4.not, label %if.else, label %if.end50.for.inc.sink.split_crit_edge

if.end50.for.inc.sink.split_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.end50
  br i1 %tobool59.not, label %if.else.for.inc_crit_edge, label %if.then60

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then60:                                        ; preds = %if.else
  %sub = sub nuw i32 %i.0173, %start
  %arrayidx61 = getelementptr i8, ptr %data, i32 %sub
  %30 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool62.not = icmp eq i8 %31, 0
  br i1 %tobool62.not, label %if.then60.for.inc_crit_edge, label %if.then60.for.inc.sink.split_crit_edge

if.then60.for.inc.sink.split_crit_edge:           ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

if.then60.for.inc_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc.sink.split:                               ; preds = %if.then60.for.inc.sink.split_crit_edge, %if.end50.for.inc.sink.split_crit_edge
  %call67 = tail call i64 @eventfd_signal(ptr noundef nonnull %29, i64 noundef 1) #7
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.then60.for.inc_crit_edge, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.0173, 1
  %exitcond.not = icmp eq i32 %inc, %add42
  br i1 %exitcond.not, label %for.inc.cleanup71_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup71_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

cleanup71:                                        ; preds = %for.inc.cleanup71_crit_edge, %for.cond.preheader.cleanup71_crit_edge, %lor.lhs.false41.cleanup71_crit_edge, %if.end38.cleanup71_crit_edge, %if.then34, %for.end.i148.cleanup71_crit_edge, %for.cond.preheader.i132.cleanup71_crit_edge, %vfio_msi_enable.exit.cleanup71_crit_edge, %if.end7.i.i.i.cleanup71_crit_edge, %kcalloc.exit.thread.i, %if.end25.cleanup71_crit_edge, %for.body11.i.cleanup71_crit_edge, %for.cond9.preheader.i.cleanup71_crit_edge, %for.end.i.cleanup71_crit_edge, %if.then23.cleanup71_crit_edge, %if.end.cleanup71_crit_edge, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ %call.i.i, %vfio_msi_enable.exit.cleanup71_crit_edge ], [ %retval.0.i156170, %if.then34 ], [ -22, %lor.lhs.false41.cleanup71_crit_edge ], [ -22, %if.end38.cleanup71_crit_edge ], [ -22, %if.end.cleanup71_crit_edge ], [ %.mux, %if.then23.cleanup71_crit_edge ], [ 0, %for.end.i.cleanup71_crit_edge ], [ %call.i, %for.cond9.preheader.i.cleanup71_crit_edge ], [ -12, %kcalloc.exit.thread.i ], [ -12, %if.end7.i.i.i.cleanup71_crit_edge ], [ -22, %if.end25.cleanup71_crit_edge ], [ 0, %for.end.i148.cleanup71_crit_edge ], [ 0, %for.cond.preheader.i132.cleanup71_crit_edge ], [ 0, %for.cond.preheader.cleanup71_crit_edge ], [ 0, %for.inc.cleanup71_crit_edge ], [ %call.i, %for.body11.i.cleanup71_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_pci_set_err_trigger(ptr nocapture noundef %vdev, i32 noundef %index, i32 noundef %start, i32 noundef %count, i32 noundef %flags, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp.not = icmp ne i32 %index, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %cmp1.not = icmp ne i32 %start, 0
  %or.cond.not = or i1 %cmp.not, %cmp1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp3 = icmp ugt i32 %count, 1
  %or.cond5 = or i1 %or.cond.not, %cmp3
  br i1 %or.cond5, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %err_trigger = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 31
  %call = tail call fastcc i32 @vfio_pci_set_ctx_trigger_single(ptr noundef %err_trigger, i32 noundef %count, i32 noundef %flags, ptr noundef %data)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_pci_set_req_trigger(ptr nocapture noundef %vdev, i32 noundef %index, i32 noundef %start, i32 noundef %count, i32 noundef %flags, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %index)
  %cmp.not = icmp ne i32 %index, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %cmp1.not = icmp ne i32 %start, 0
  %or.cond.not = or i1 %cmp.not, %cmp1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp3 = icmp ugt i32 %count, 1
  %or.cond5 = or i1 %or.cond.not, %cmp3
  br i1 %or.cond5, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %req_trigger = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 32
  %call = tail call fastcc i32 @vfio_pci_set_ctx_trigger_single(ptr noundef %req_trigger, i32 noundef %count, i32 noundef %flags, ptr noundef %data)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_check_and_unmask_intx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_virqfd_enable(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_virqfd_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfio_intx_disable(ptr noundef %vdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %unmask = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %1, i32 0, i32 1
  tail call void @vfio_virqfd_disable(ptr noundef %unmask) #7
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %mask = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %3, i32 0, i32 2
  tail call void @vfio_virqfd_disable(ptr noundef %mask) #7
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.vfio_intx_set_signal.exit_crit_edge, label %if.then.i

entry.vfio_intx_set_signal.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfio_intx_set_signal.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev1.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %8 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev1.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %11, ptr noundef %vdev) #7
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %name.i = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 4
  tail call void @kfree(ptr noundef %15) #7
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void @eventfd_ctx_put(ptr noundef %19) #7
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %21, align 4
  br label %vfio_intx_set_signal.exit

vfio_intx_set_signal.exit:                        ; preds = %if.then.i, %entry.vfio_intx_set_signal.exit_crit_edge
  %irq_type = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 11
  %23 = ptrtoint ptr %irq_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %irq_type, align 4
  %num_ctx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 10
  %24 = ptrtoint ptr %num_ctx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %num_ctx, align 4
  %25 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx, align 4
  tail call void @kfree(ptr noundef %26) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_intx_set_signal(ptr noundef %vdev, i32 noundef %fd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %ctx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %7, ptr noundef %vdev) #7
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %name = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %11) #7
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void @eventfd_ctx_put(ptr noundef %15) #7
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fd)
  %cmp = icmp slt i32 %fd, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end12.pci_name.exit_crit_edge

if.end12.pci_name.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end12.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ %20, %if.end12.pci_name.exit_crit_edge ]
  %call14 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %retval.0.i.i) #7
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 4
  %name17 = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call14, ptr %name17, align 4
  %26 = load ptr, ptr %ctx, align 4
  %name20 = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %name20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name20, align 4
  %tobool21.not = icmp eq ptr %28, null
  br i1 %tobool21.not, label %pci_name.exit.cleanup_crit_edge, label %if.end23

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %pci_name.exit
  %call24 = tail call ptr @eventfd_ctx_fdget(i32 noundef %fd) #7
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx, align 4
  br i1 %cmp.i, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %name29 = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name29, align 4
  tail call void @kfree(ptr noundef %32) #7
  %33 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call24, ptr %30, align 4
  %pci_2_3 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 19
  %35 = ptrtoint ptr %pci_2_3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pci_2_3, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool35.not = icmp eq i8 %36, 0
  %spec.select = select i1 %tobool35.not, i32 0, i32 128
  %irq38 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %37 = ptrtoint ptr %irq38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq38, align 4
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  %name41 = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %name41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name41, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %38, ptr noundef nonnull @vfio_intx_handler, ptr noundef null, i32 noundef %spec.select, ptr noundef %42, ptr noundef %vdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool43.not = icmp eq i32 %call.i, 0
  br i1 %tobool43.not, label %do.body52, label %if.then44

if.then44:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %44, align 4
  %46 = load ptr, ptr %ctx, align 4
  %name50 = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %name50 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name50, align 4
  tail call void @kfree(ptr noundef %48) #7
  tail call void @eventfd_ctx_put(ptr noundef %call24) #7
  br label %cleanup

do.body52:                                        ; preds = %if.end31
  %irqlock = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 7
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #7
  %49 = ptrtoint ptr %pci_2_3 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pci_2_3, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool59.not = icmp eq i8 %50, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.body52.if.end66_crit_edge

do.body52.if.end66_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

land.lhs.true:                                    ; preds = %do.body52
  %51 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx, align 4
  %masked = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %masked to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %masked, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool62.not = icmp eq i8 %54, 0
  br i1 %tobool62.not, label %land.lhs.true.if.end66_crit_edge, label %if.then64

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %irq38 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq38, align 4
  tail call void @disable_irq_nosync(i32 noundef %56) #7
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %land.lhs.true.if.end66_crit_edge, %do.body52.if.end66_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call55) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then44, %if.then26, %pci_name.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %if.then26 ], [ %call.i, %if.then44 ], [ 0, %if.end66 ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %pci_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventfd_ctx_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @eventfd_ctx_fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_intx_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.vfio_pci_core_device, ptr %dev_id, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #7
  %pci_2_3 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %dev_id, i32 0, i32 19
  %0 = ptrtoint ptr %pci_2_3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pci_2_3, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.vfio_pci_core_device, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %irq5 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq5, align 4
  tail call void @disable_irq_nosync(i32 noundef %5) #7
  %ctx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %dev_id, i32 0, i32 9
  br label %if.then21

if.else:                                          ; preds = %entry
  %ctx6 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %dev_id, i32 0, i32 9
  %6 = ptrtoint ptr %ctx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx6, align 4
  %masked8 = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %masked8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %masked8, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %if.else
  %pdev10 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %dev_id, i32 0, i32 1
  %10 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev10, align 4
  %call11 = tail call zeroext i1 @pci_check_and_mask_intx(ptr noundef %11) #7
  br i1 %call11, label %land.lhs.true.if.then21_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.else.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call2) #7
  br label %if.end22

if.then21:                                        ; preds = %land.lhs.true.if.then21_crit_edge, %if.then
  %ctx6.sink = phi ptr [ %ctx, %if.then ], [ %ctx6, %land.lhs.true.if.then21_crit_edge ]
  %12 = ptrtoint ptr %ctx6.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx6.sink, align 4
  %masked16 = getelementptr inbounds %struct.vfio_pci_irq_ctx, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %masked16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %masked16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call2) #7
  %irq_type.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %dev_id, i32 0, i32 11
  %15 = ptrtoint ptr %irq_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.then21.if.end22_crit_edge, !prof !25

if.then21.if.end22_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.rhs.i:                                       ; preds = %if.then21
  %virq_disabled.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %dev_id, i32 0, i32 20
  %17 = ptrtoint ptr %virq_disabled.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %virq_disabled.i, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.rhs.i.if.end22_crit_edge, !prof !25

land.rhs.i.if.end22_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %ctx.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %dev_id, i32 0, i32 9
  %19 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call.i = tail call i64 @eventfd_signal(ptr noundef %22, i64 noundef 1) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then.i, %land.rhs.i.if.end22_crit_edge, %if.then21.if.end22_crit_edge, %if.end17
  %ret.034 = phi i32 [ 0, %if.end17 ], [ 1, %if.then21.if.end22_crit_edge ], [ 1, %land.rhs.i.if.end22_crit_edge ], [ 1, %if.then.i ]
  ret i32 %ret.034
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_check_and_mask_intx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfio_msi_disable(ptr noundef %vdev, i1 noundef zeroext %msix) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %num_ctx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 10
  %2 = ptrtoint ptr %num_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24 = icmp sgt i32 %3, 0
  br i1 %cmp24, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ctx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %unmask = getelementptr %struct.vfio_pci_irq_ctx, ptr %5, i32 %i.025, i32 1
  tail call void @vfio_virqfd_disable(ptr noundef %unmask) #7
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %mask = getelementptr %struct.vfio_pci_irq_ctx, ptr %7, i32 %i.025, i32 2
  tail call void @vfio_virqfd_disable(ptr noundef %mask) #7
  %inc = add nuw nsw i32 %i.025, 1
  %8 = ptrtoint ptr %num_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ctx, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %3, %entry.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %cmp.not.i = icmp eq i32 %.lcssa, 0
  br i1 %cmp.not.i, label %for.end.vfio_msi_set_block.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.vfio_msi_set_block.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfio_msi_set_block.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %j.042.i = phi i32 [ %inc6.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %call.i = tail call fastcc i32 @vfio_msi_set_vector_signal(ptr noundef %vdev, i32 noundef %j.042.i, i32 noundef -1, i1 noundef zeroext %msix) #7
  %inc6.i = add nuw i32 %j.042.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc6.i, i32 %.lcssa)
  %cmp3.i = icmp ult i32 %inc6.i, %.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %or.cond38.i = select i1 %cmp3.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond38.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.042.i)
  %cmp10.not46.i = icmp slt i32 %j.042.i, 0
  %or.cond = or i1 %cmp10.not46.i, %tobool.not.i
  br i1 %or.cond, label %for.end.i.vfio_msi_set_block.exit_crit_edge, label %for.end.i.for.body11.i_crit_edge

for.end.i.for.body11.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body11.i

for.end.i.vfio_msi_set_block.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfio_msi_set_block.exit

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.end.i.for.body11.i_crit_edge
  %j.147.i = phi i32 [ %j.1.i, %for.body11.i.for.body11.i_crit_edge ], [ %j.042.i, %for.end.i.for.body11.i_crit_edge ]
  %call13.i = tail call fastcc i32 @vfio_msi_set_vector_signal(ptr noundef %vdev, i32 noundef %j.147.i, i32 noundef -1, i1 noundef zeroext %msix) #7
  %j.1.i = add nsw i32 %j.147.i, -1
  %cmp10.not.i = icmp eq i32 %j.147.i, 0
  br i1 %cmp10.not.i, label %for.body11.i.vfio_msi_set_block.exit_crit_edge, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i

for.body11.i.vfio_msi_set_block.exit_crit_edge:   ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfio_msi_set_block.exit

vfio_msi_set_block.exit:                          ; preds = %for.body11.i.vfio_msi_set_block.exit_crit_edge, %for.end.i.vfio_msi_set_block.exit_crit_edge, %for.end.vfio_msi_set_block.exit_crit_edge
  %call5 = tail call zeroext i16 @vfio_pci_memory_lock_and_enable(ptr noundef %vdev) #7
  tail call void @pci_free_irq_vectors(ptr noundef %1) #7
  tail call void @vfio_pci_memory_unlock_and_restore(ptr noundef %vdev, i16 noundef zeroext %call5) #7
  %nointx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 26
  %10 = ptrtoint ptr %nointx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nointx, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %vfio_msi_set_block.exit.if.end_crit_edge, label %if.then

vfio_msi_set_block.exit.if.end_crit_edge:         ; preds = %vfio_msi_set_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %vfio_msi_set_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_intx(ptr noundef %1, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %vfio_msi_set_block.exit.if.end_crit_edge
  %irq_type = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 11
  %12 = ptrtoint ptr %irq_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %irq_type, align 4
  %13 = ptrtoint ptr %num_ctx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %num_ctx, align 4
  %ctx8 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %14 = ptrtoint ptr %ctx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx8, align 4
  tail call void @kfree(ptr noundef %15) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vfio_pci_memory_lock_and_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_pci_memory_unlock_and_restore(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_msi_set_vector_signal(ptr noundef %vdev, i32 noundef %vector, i32 noundef %fd, i1 noundef zeroext %msix) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msi_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vector)
  %cmp = icmp slt i32 %vector, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num_ctx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 10
  %2 = ptrtoint ptr %num_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ctx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vector)
  %cmp2.not = icmp sgt i32 %3, %vector
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %vector) #7
  %ctx = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 9
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %arrayidx = getelementptr %struct.vfio_pci_irq_ctx, ptr %5, i32 %vector
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end20_crit_edge, label %if.then4

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %producer = getelementptr %struct.vfio_pci_irq_ctx, ptr %5, i32 %vector, i32 5
  tail call void @irq_bypass_unregister_producer(ptr noundef %producer) #7
  %call7 = tail call zeroext i16 @vfio_pci_memory_lock_and_enable(ptr noundef %vdev) #7
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %arrayidx9 = getelementptr %struct.vfio_pci_irq_ctx, ptr %9, i32 %vector
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9, align 4
  %call11 = tail call ptr @free_irq(i32 noundef %call, ptr noundef %11) #7
  tail call void @vfio_pci_memory_unlock_and_restore(ptr noundef %vdev, i16 noundef zeroext %call7) #7
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %name = getelementptr %struct.vfio_pci_irq_ctx, ptr %13, i32 %vector, i32 3
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %15) #7
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %arrayidx15 = getelementptr %struct.vfio_pci_irq_ctx, ptr %17, i32 %vector
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx15, align 4
  tail call void @eventfd_ctx_put(ptr noundef %19) #7
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %arrayidx18 = getelementptr %struct.vfio_pci_irq_ctx, ptr %21, i32 %vector
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then4, %if.end.if.end20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fd)
  %cmp21 = icmp slt i32 %fd, 0
  br i1 %cmp21, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %cond = select i1 %msix, ptr @.str.2, ptr @.str.3
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %23 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end23.pci_name.exit_crit_edge

if.end23.pci_name.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end23.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %26, %if.end.i.i ], [ %24, %if.end23.pci_name.exit_crit_edge ]
  %call26 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond, i32 noundef %vector, ptr noundef %retval.0.i.i) #7
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 4
  %name29 = getelementptr %struct.vfio_pci_irq_ctx, ptr %28, i32 %vector, i32 3
  %29 = ptrtoint ptr %name29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call26, ptr %name29, align 4
  %30 = load ptr, ptr %ctx, align 4
  %name32 = getelementptr %struct.vfio_pci_irq_ctx, ptr %30, i32 %vector, i32 3
  %31 = ptrtoint ptr %name32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name32, align 4
  %tobool33.not = icmp eq ptr %32, null
  br i1 %tobool33.not, label %pci_name.exit.cleanup_crit_edge, label %if.end35

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %pci_name.exit
  %call36 = tail call ptr @eventfd_ctx_fdget(i32 noundef %fd) #7
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then38, label %if.end43

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 4
  %name41 = getelementptr %struct.vfio_pci_irq_ctx, ptr %34, i32 %vector, i32 3
  %35 = ptrtoint ptr %name41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name41, align 4
  tail call void @kfree(ptr noundef %36) #7
  %37 = ptrtoint ptr %call36 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %call44 = tail call zeroext i16 @vfio_pci_memory_lock_and_enable(ptr noundef %vdev) #7
  br i1 %msix, label %if.then46, label %if.end43.if.end47_crit_edge

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %38 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %msg, align 4, !annotation !29
  %39 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %39, align 4, !annotation !29
  %41 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %41, align 4, !annotation !29
  call void @get_cached_msi_msg(i32 noundef %call, ptr noundef nonnull %msg) #7
  call void @pci_write_msi_msg(i32 noundef %call, ptr noundef nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end43.if.end47_crit_edge
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx, align 4
  %name50 = getelementptr %struct.vfio_pci_irq_ctx, ptr %44, i32 %vector, i32 3
  %45 = ptrtoint ptr %name50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name50, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %call, ptr noundef nonnull @vfio_msihandler, ptr noundef null, i32 noundef 0, ptr noundef %46, ptr noundef %call36) #7
  call void @vfio_pci_memory_unlock_and_restore(ptr noundef %vdev, i16 noundef zeroext %call44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool52.not = icmp eq i32 %call.i, 0
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx, align 4
  br i1 %tobool52.not, label %if.end57, label %if.then53

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %name56 = getelementptr %struct.vfio_pci_irq_ctx, ptr %48, i32 %vector, i32 3
  %49 = ptrtoint ptr %name56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name56, align 4
  call void @kfree(ptr noundef %50) #7
  call void @eventfd_ctx_put(ptr noundef %call36) #7
  br label %cleanup

if.end57:                                         ; preds = %if.end47
  %token = getelementptr %struct.vfio_pci_irq_ctx, ptr %48, i32 %vector, i32 5, i32 1
  %51 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call36, ptr %token, align 4
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx, align 4
  %irq64 = getelementptr %struct.vfio_pci_irq_ctx, ptr %53, i32 %vector, i32 5, i32 2
  %54 = ptrtoint ptr %irq64 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call, ptr %irq64, align 4
  %55 = load ptr, ptr %ctx, align 4
  %producer67 = getelementptr %struct.vfio_pci_irq_ctx, ptr %55, i32 %vector, i32 5
  %call68 = call i32 @irq_bypass_register_producer(ptr noundef %producer67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end57.if.end81_crit_edge, label %do.end, !prof !25

if.end57.if.end81_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

do.end:                                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %56 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx, align 4
  %token76 = getelementptr %struct.vfio_pci_irq_ctx, ptr %57, i32 %vector, i32 5, i32 1
  %58 = ptrtoint ptr %token76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %token76, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %59, i32 noundef %call68) #12
  %60 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctx, align 4
  %token80 = getelementptr %struct.vfio_pci_irq_ctx, ptr %61, i32 %vector, i32 5, i32 1
  %62 = ptrtoint ptr %token80 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %token80, align 4
  br label %if.end81

if.end81:                                         ; preds = %do.end, %if.end57.if.end81_crit_edge
  %63 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctx, align 4
  %arrayidx83 = getelementptr %struct.vfio_pci_irq_ctx, ptr %64, i32 %vector
  %65 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call36, ptr %arrayidx83, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.then53, %if.then38, %pci_name.exit.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %37, %if.then38 ], [ %call.i, %if.then53 ], [ 0, %if.end81 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ -12, %pci_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_bypass_unregister_producer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_cached_msi_msg(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_write_msi_msg(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_msihandler(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @eventfd_signal(ptr noundef %arg, i64 noundef 1) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_bypass_register_producer(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_pci_set_ctx_trigger_single(ptr nocapture noundef %ctx, i32 noundef %count, i32 noundef %flags, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else6, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.return_crit_edge, label %if.then2

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool3.not = icmp eq i32 %count, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i64 @eventfd_signal(ptr noundef nonnull %1, i64 noundef 1) #7
  br label %return

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @eventfd_ctx_put(ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ctx, align 4
  br label %return

if.else6:                                         ; preds = %entry
  %and7 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else18, label %if.then9

if.then9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool10.not = icmp eq i32 %count, 0
  br i1 %tobool10.not, label %if.then9.return_crit_edge, label %if.end12

if.then9.return_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end12:                                         ; preds = %if.then9
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool13.not = icmp eq i8 %4, 0
  br i1 %tobool13.not, label %if.end12.return_crit_edge, label %land.lhs.true

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true:                                    ; preds = %if.end12
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  %tobool14.not = icmp eq ptr %6, null
  br i1 %tobool14.not, label %land.lhs.true.return_crit_edge, label %if.then15

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i64 @eventfd_signal(ptr noundef nonnull %6, i64 noundef 1) #7
  br label %return

if.else18:                                        ; preds = %if.else6
  %and19 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool22.not = icmp eq i32 %count, 0
  %or.cond = or i1 %tobool22.not, %tobool20.not
  br i1 %or.cond, label %if.else18.return_crit_edge, label %if.end24

if.else18.return_crit_edge:                       ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end24:                                         ; preds = %if.else18
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp eq i32 %8, -1
  br i1 %cmp, label %if.then26, label %if.else30

if.then26:                                        ; preds = %if.end24
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 4
  %tobool27.not = icmp eq ptr %10, null
  br i1 %tobool27.not, label %if.then26.if.end29_crit_edge, label %if.then28

if.then26.if.end29_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @eventfd_ctx_put(ptr noundef nonnull %10) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.then26.if.end29_crit_edge
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ctx, align 4
  br label %return

if.else30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp31 = icmp sgt i32 %8, -1
  br i1 %cmp31, label %if.then33, label %if.else30.return_crit_edge

if.else30.return_crit_edge:                       ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then33:                                        ; preds = %if.else30
  %call34 = tail call ptr @eventfd_ctx_fdget(i32 noundef %8) #7
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup42.thread, label %if.end38

cleanup42.thread:                                 ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call34 to i32
  br label %return

if.end38:                                         ; preds = %if.then33
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 4
  %tobool39.not = icmp eq ptr %14, null
  br i1 %tobool39.not, label %if.end38.cleanup42_crit_edge, label %if.then40

if.end38.cleanup42_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup42

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @eventfd_ctx_put(ptr noundef nonnull %14) #7
  br label %cleanup42

cleanup42:                                        ; preds = %if.then40, %if.end38.cleanup42_crit_edge
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call34, ptr %ctx, align 4
  br label %return

return:                                           ; preds = %cleanup42, %cleanup42.thread, %if.else30.return_crit_edge, %if.end29, %if.else18.return_crit_edge, %if.then15, %land.lhs.true.return_crit_edge, %if.end12.return_crit_edge, %if.then9.return_crit_edge, %if.else, %if.then4, %if.then.return_crit_edge
  %retval.3 = phi i32 [ 0, %if.else ], [ 0, %if.then4 ], [ -22, %if.then9.return_crit_edge ], [ 0, %if.then15 ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %if.end12.return_crit_edge ], [ -22, %if.else18.return_crit_edge ], [ -22, %if.then.return_crit_edge ], [ %12, %cleanup42.thread ], [ 0, %cleanup42 ], [ 0, %if.else30.return_crit_edge ], [ 0, %if.end29 ]
  ret i32 %retval.3
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/vfio/pci/vfio_pci_intrs.c", i32 189, i32 44}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/vfio/pci/vfio_pci_intrs.c", i32 316, i32 49}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/vfio/pci/vfio_pci_intrs.c", i32 317, i32 16}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/vfio/pci/vfio_pci_intrs.c", i32 317, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/vfio/pci/vfio_pci_intrs.c", i32 356, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @vfio_msi_set_vector_signal._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @vfio_msi_set_vector_signal._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i8 0, i8 2}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i32 0, i32 33}
!29 = !{!"auto-init"}
