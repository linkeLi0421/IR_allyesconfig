; ModuleID = '/llk/IR_all_yes/drivers/iommu/of_iommu.c_pt.bc'
source_filename = "../drivers/iommu/of_iommu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_pci_iommu_alias_info = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }

@pci_bus_type = external dso_local global %struct.bus_type, align 4
@of_iommu_configure.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"of_iommu\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"of_iommu_configure\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iommu/of_iommu.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Adding to IOMMU failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iommu-map\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iommu-map-mask\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iommus\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#iommu-cells\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 169, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 60, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 61, i32 5 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 77, i32 48 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [28 x i8] c"../drivers/iommu/of_iommu.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 78, i32 9 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_iommu_configure(ptr noundef %dev, ptr noundef %master_np, ptr noundef readonly %id) local_unnamed_addr #0 align 64 {
entry:
  %iommu_spec.i5.i = alloca %struct.of_phandle_args, align 4
  %iommu_spec.i.i = alloca %struct.of_phandle_args, align 4
  %info = alloca %struct.of_pci_iommu_alias_info, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %dev_iommu_fwspec_get.exit.thread, label %dev_iommu_fwspec_get.exit

dev_iommu_fwspec_get.exit:                        ; preds = %entry
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %tobool.not = icmp eq ptr %master_np, null
  br i1 %tobool.not, label %dev_iommu_fwspec_get.exit.cleanup_crit_edge, label %if.end

dev_iommu_fwspec_get.exit.cleanup_crit_edge:      ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

dev_iommu_fwspec_get.exit.thread:                 ; preds = %entry
  %tobool.not73 = icmp eq ptr %master_np, null
  br i1 %tobool.not73, label %dev_iommu_fwspec_get.exit.thread.cleanup_crit_edge, label %dev_iommu_fwspec_get.exit.thread.if.end8_crit_edge

dev_iommu_fwspec_get.exit.thread.if.end8_crit_edge: ; preds = %dev_iommu_fwspec_get.exit.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

dev_iommu_fwspec_get.exit.thread.cleanup_crit_edge: ; preds = %dev_iommu_fwspec_get.exit.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %dev_iommu_fwspec_get.exit
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end7, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @iommu_fwspec_free(ptr noundef %dev) #3
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end.if.end8_crit_edge, %dev_iommu_fwspec_get.exit.thread.if.end8_crit_edge
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %7, @pci_bus_type
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info) #3
  %8 = getelementptr inbounds %struct.of_pci_iommu_alias_info, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %info, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %master_np, ptr %8, align 4
  tail call void @pci_request_acs() #3
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call11 = call i32 @pci_for_each_dma_alias(ptr noundef %add.ptr, ptr noundef nonnull @of_pci_iommu_init, ptr noundef nonnull %info) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #3
  br label %if.end13

if.else:                                          ; preds = %if.end8
  %tobool.not.i65 = icmp eq ptr %id, null
  br i1 %tobool.not.i65, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %iommu_spec.i.i) #3
  %11 = call ptr @memset(ptr %iommu_spec.i.i, i32 0, i32 72)
  %12 = getelementptr inbounds %struct.of_phandle_args, ptr %iommu_spec.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %12, align 4
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %args.i.i = getelementptr inbounds %struct.of_phandle_args, ptr %iommu_spec.i.i, i32 0, i32 2
  %call.i.i = call i32 @of_map_id(ptr noundef nonnull %master_np, i32 noundef %15, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %iommu_spec.i.i, ptr noundef %args.i.i) #3
  %16 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i, label %cond.false.i.i [
    i32 0, label %if.end.i.i
    i32 -19, label %cond.true.i.of_iommu_configure_dev_id.exit.i_crit_edge
  ]

cond.true.i.of_iommu_configure_dev_id.exit.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %of_iommu_configure_dev_id.exit.i

cond.false.i.i:                                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %of_iommu_configure_dev_id.exit.i

if.end.i.i:                                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i.i = call fastcc i32 @of_iommu_xlate(ptr noundef %dev, ptr noundef nonnull %iommu_spec.i.i) #3
  %17 = ptrtoint ptr %iommu_spec.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iommu_spec.i.i, align 4
  call void @of_node_put(ptr noundef %18) #3
  br label %of_iommu_configure_dev_id.exit.i

of_iommu_configure_dev_id.exit.i:                 ; preds = %if.end.i.i, %cond.false.i.i, %cond.true.i.of_iommu_configure_dev_id.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call1.i.i, %if.end.i.i ], [ %call.i.i, %cond.false.i.i ], [ 1, %cond.true.i.of_iommu_configure_dev_id.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %iommu_spec.i.i) #3
  br label %if.end13

cond.false.i:                                     ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %iommu_spec.i5.i) #3
  %19 = call ptr @memset(ptr %iommu_spec.i5.i, i32 255, i32 72)
  %call.i5.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %master_np, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %iommu_spec.i5.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i.i)
  %tobool.not6.i.i = icmp eq i32 %call.i5.i.i, 0
  br i1 %tobool.not6.i.i, label %cond.false.i.while.body.i.i_crit_edge, label %cond.false.i.of_iommu_configure_dev.exit.i_crit_edge

cond.false.i.of_iommu_configure_dev.exit.i_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %of_iommu_configure_dev.exit.i

cond.false.i.while.body.i.i_crit_edge:            ; preds = %cond.false.i
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %inc.i.i = add i32 %idx.07.i.i, 1
  %call.i.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %master_np, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef -1, i32 noundef %inc.i.i, ptr noundef nonnull %iommu_spec.i5.i) #3
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.while.body.i.i_crit_edge, label %while.cond.i.i.of_iommu_configure_dev.exit.i_crit_edge

while.cond.i.i.of_iommu_configure_dev.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %of_iommu_configure_dev.exit.i

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %cond.false.i.while.body.i.i_crit_edge
  %idx.07.i.i = phi i32 [ %inc.i.i, %while.cond.i.i.while.body.i.i_crit_edge ], [ 0, %cond.false.i.while.body.i.i_crit_edge ]
  %call1.i6.i = call fastcc i32 @of_iommu_xlate(ptr noundef %dev, ptr noundef nonnull %iommu_spec.i5.i) #3
  %20 = ptrtoint ptr %iommu_spec.i5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iommu_spec.i5.i, align 4
  call void @of_node_put(ptr noundef %21) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i6.i, 0
  br i1 %tobool2.not.i.i, label %while.cond.i.i, label %while.body.i.i.of_iommu_configure_dev.exit.i_crit_edge

while.body.i.i.of_iommu_configure_dev.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %of_iommu_configure_dev.exit.i

of_iommu_configure_dev.exit.i:                    ; preds = %while.body.i.i.of_iommu_configure_dev.exit.i_crit_edge, %while.cond.i.i.of_iommu_configure_dev.exit.i_crit_edge, %cond.false.i.of_iommu_configure_dev.exit.i_crit_edge
  %err.1.i.i = phi i32 [ 1, %cond.false.i.of_iommu_configure_dev.exit.i_crit_edge ], [ %call1.i6.i, %while.body.i.i.of_iommu_configure_dev.exit.i_crit_edge ], [ 0, %while.cond.i.i.of_iommu_configure_dev.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %iommu_spec.i5.i) #3
  br label %if.end13

if.end13:                                         ; preds = %of_iommu_configure_dev.exit.i, %of_iommu_configure_dev_id.exit.i, %if.then9
  %err.0 = phi i32 [ %call11, %if.then9 ], [ %retval.0.i.i, %of_iommu_configure_dev_id.exit.i ], [ %err.1.i.i, %of_iommu_configure_dev.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool14.not = icmp eq i32 %err.0, 0
  br i1 %tobool14.not, label %if.then15, label %if.end13.if.end26_crit_edge

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then15:                                        ; preds = %if.end13
  %22 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i67 = icmp eq ptr %23, null
  br i1 %tobool.not.i67, label %if.then15.land.lhs.true_crit_edge, label %if.then.i69

if.then15.land.lhs.true_crit_edge:                ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

if.then.i69:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #5
  %fwspec.i68 = getelementptr inbounds %struct.dev_iommu, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %fwspec.i68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fwspec.i68, align 4
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.i69, %if.then15.land.lhs.true_crit_edge
  %retval.0.i70 = phi ptr [ %25, %if.then.i69 ], [ null, %if.then15.land.lhs.true_crit_edge ]
  %26 = ptrtoint ptr %retval.0.i70 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %retval.0.i70, align 4
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus, align 8
  %tobool21.not = icmp eq ptr %29, null
  br i1 %tobool21.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true22

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true22:                                  ; preds = %land.lhs.true
  %iommu_group.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 36
  %30 = ptrtoint ptr %iommu_group.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iommu_group.i, align 8
  %cmp.i.not = icmp eq ptr %31, null
  br i1 %cmp.i.not, label %if.then24, label %land.lhs.true22.cleanup_crit_edge

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #5
  %call25 = call i32 @iommu_probe_device(ptr noundef %dev) #3
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end13.if.end26_crit_edge
  %ops.078 = phi ptr [ %27, %if.then24 ], [ null, %if.end13.if.end26_crit_edge ]
  %err.1 = phi i32 [ %call25, %if.then24 ], [ %err.0, %if.end13.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %err.1)
  %cmp27 = icmp eq i32 %err.1, -517
  br i1 %cmp27, label %if.end26.cleanup_crit_edge, label %if.else30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.else30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp31 = icmp slt i32 %err.1, 0
  br i1 %cmp31, label %do.body, label %if.else30.cleanup_crit_edge

if.else30.cleanup_crit_edge:                      ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_iommu_configure.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_iommu_configure, %if.then38)) #3
          to label %cleanup [label %if.then38], !srcloc !23

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @of_iommu_configure.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %err.1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.body, %if.else30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %land.lhs.true22.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %dev_iommu_fwspec_get.exit.thread.cleanup_crit_edge, %dev_iommu_fwspec_get.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %dev_iommu_fwspec_get.exit.cleanup_crit_edge ], [ %5, %if.then2.cleanup_crit_edge ], [ %ops.078, %if.else30.cleanup_crit_edge ], [ null, %if.then38 ], [ null, %dev_iommu_fwspec_get.exit.thread.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %if.end26.cleanup_crit_edge ], [ null, %do.body ], [ %27, %land.lhs.true.cleanup_crit_edge ], [ %27, %land.lhs.true22.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_fwspec_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_request_acs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_for_each_dma_alias(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_pci_iommu_init(ptr nocapture noundef readnone %pdev, i16 noundef zeroext %alias, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %iommu_spec.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %alias to i32
  %np = getelementptr inbounds %struct.of_pci_iommu_alias_info, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %iommu_spec.i) #3
  %4 = call ptr @memset(ptr %iommu_spec.i, i32 0, i32 72)
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %iommu_spec.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %5, align 4
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %iommu_spec.i, i32 0, i32 2
  %call.i = call i32 @of_map_id(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %iommu_spec.i, ptr noundef %args.i) #3
  %7 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call.i, label %cond.false.i [
    i32 0, label %if.end.i
    i32 -19, label %entry.of_iommu_configure_dev_id.exit_crit_edge
  ]

entry.of_iommu_configure_dev_id.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %of_iommu_configure_dev_id.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %of_iommu_configure_dev_id.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i = call fastcc i32 @of_iommu_xlate(ptr noundef %3, ptr noundef nonnull %iommu_spec.i) #3
  %8 = ptrtoint ptr %iommu_spec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iommu_spec.i, align 4
  call void @of_node_put(ptr noundef %9) #3
  br label %of_iommu_configure_dev_id.exit

of_iommu_configure_dev_id.exit:                   ; preds = %if.end.i, %cond.false.i, %entry.of_iommu_configure_dev_id.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ %call.i, %cond.false.i ], [ 1, %entry.of_iommu_configure_dev_id.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %iommu_spec.i) #3
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_probe_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_map_id(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_iommu_xlate(ptr noundef %dev, ptr noundef %iommu_spec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iommu_spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu_spec, align 4
  %fwnode1 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %call = tail call ptr @iommu_ops_from_fwnode(ptr noundef %fwnode1) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %of_xlate = getelementptr inbounds %struct.iommu_ops, ptr %call, i32 0, i32 22
  %2 = ptrtoint ptr %of_xlate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_xlate, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %4 = ptrtoint ptr %iommu_spec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommu_spec, align 4
  %call4 = tail call zeroext i1 @of_device_is_available(ptr noundef %5) #3
  br i1 %call4, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %iommu_spec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iommu_spec, align 4
  %fwnode6 = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 3
  %call7 = tail call i32 @iommu_fwspec_init(ptr noundef %dev, ptr noundef %fwnode6, ptr noundef %call) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %call13 = tail call i32 @driver_deferred_probe_check_state(ptr noundef %dev) #3
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %owner = getelementptr inbounds %struct.iommu_ops, ptr %call, i32 0, i32 40
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner, align 4
  %call15 = tail call zeroext i1 @try_module_get(ptr noundef %9) #3
  br i1 %call15, label %if.end17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %of_xlate18 = getelementptr inbounds %struct.iommu_ops, ptr %call, i32 0, i32 22
  %10 = ptrtoint ptr %of_xlate18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_xlate18, align 4
  %call19 = tail call i32 %11(ptr noundef %dev, ptr noundef %iommu_spec) #3
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %13) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end14.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end17 ], [ %call13, %if.then12 ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ -19, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_ops_from_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_fwspec_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_deferred_probe_check_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iommu/of_iommu.c", i32 169, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @of_iommu_configure.__UNIQUE_ID_ddebug236, !1, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iommu/of_iommu.c", i32 60, i32 34}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iommu/of_iommu.c", i32 61, i32 5}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iommu/of_iommu.c", i32 77, i32 48}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iommu/of_iommu.c", i32 78, i32 9}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2148225042, i64 2148225047, i64 2148225060, i64 2148225104, i64 2148225138, i64 2148225159}
