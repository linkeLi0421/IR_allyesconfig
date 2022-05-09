; ModuleID = '/llk/IR_all_yes/drivers/reset/reset-ti-sci.c_pt.bc'
source_filename = "../drivers/reset/reset-ti-sci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ti_sci_reset_data = type { %struct.reset_controller_dev, ptr, ptr, %struct.idr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ti_sci_reset_control = type { i32, i32, %struct.mutex }
%struct.ti_sci_handle = type { %struct.ti_sci_version_info, %struct.ti_sci_ops }
%struct.ti_sci_version_info = type { i8, i8, i16, [32 x i8] }
%struct.ti_sci_ops = type { %struct.ti_sci_core_ops, %struct.ti_sci_dev_ops, %struct.ti_sci_clk_ops, %struct.ti_sci_rm_core_ops, %struct.ti_sci_rm_irq_ops, %struct.ti_sci_rm_ringacc_ops, %struct.ti_sci_rm_psil_ops, %struct.ti_sci_rm_udmap_ops, %struct.ti_sci_proc_ops }
%struct.ti_sci_core_ops = type { ptr }
%struct.ti_sci_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_sci_clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_sci_rm_core_ops = type { ptr, ptr }
%struct.ti_sci_rm_irq_ops = type { ptr, ptr, ptr, ptr }
%struct.ti_sci_rm_ringacc_ops = type { ptr }
%struct.ti_sci_rm_psil_ops = type { ptr, ptr }
%struct.ti_sci_rm_udmap_ops = type { ptr, ptr, ptr }
%struct.ti_sci_proc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_reset_ti_sci__170_265_ti_sci_reset_driver_init6 = internal global ptr @ti_sci_reset_driver_init, section ".initcall6.init", align 4
@ti_sci_reset_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_sci_reset_probe, ptr @ti_sci_reset_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_sci_reset_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_sci_reset_driver_exit = internal global ptr @ti_sci_reset_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [49 x i8] c"reset_ti_sci.author=Andrew F. Davis <afd@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [75 x i8] c"reset_ti_sci.description=TI System Control Interface (TI SCI) Reset driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [45 x i8] c"reset_ti_sci.file=drivers/reset/reset-ti-sci\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [28 x i8] c"reset_ti_sci.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti-sci-reset\00", [19 x i8] zeroinitializer }, align 32
@ti_sci_reset_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sci-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ti_sci_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @ti_sci_reset_assert, ptr @ti_sci_reset_deassert, ptr @ti_sci_reset_status }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/reset/reset-ti-sci.c\00", [35 x i8] zeroinitializer }, align 32
@ti_sci_reset_of_xlate.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&control->lock\00", [17 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"ti_sci_reset_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 257, i32 31 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 261, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"ti_sci_reset_of_match\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 212, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"ti_sci_reset_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 172, i32 39 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 198, i32 6 }
@___asan_gen_.23 = private constant [32 x i8] c"../drivers/reset/reset-ti-sci.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 207, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 378, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_ti_sci_reset_driver_exit, ptr @__initcall__kmod_reset_ti_sci__170_265_ti_sci_reset_driver_init6, ptr @ti_sci_reset_driver_exit, ptr @ti_sci_reset_driver, ptr @.str, ptr @ti_sci_reset_of_match, ptr @ti_sci_reset_ops, ptr @.str.1, ptr @ti_sci_reset_of_xlate.__key, ptr @.str.2, ptr @xa_init_flags.__key, ptr @.str.3], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sci_reset_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sci_reset_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sci_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sci_reset_of_xlate.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sci_reset_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_sci_reset_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_sci_reset_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_sci_reset_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sci_reset_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 112, i32 noundef 3520) #4
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_ti_sci_get_handle(ptr noundef %dev) #4
  %sci = getelementptr inbounds %struct.ti_sci_reset_data, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %sci to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %sci, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ti_sci_reset_ops, ptr %call.i, align 4
  %owner = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %owner, align 4
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %of_node17 = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %of_node17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %of_node17, align 4
  %of_reset_n_cells = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %of_reset_n_cells to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %of_reset_n_cells, align 4
  %of_xlate = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ti_sci_reset_of_xlate, ptr %of_xlate, align 4
  %dev21 = getelementptr inbounds %struct.ti_sci_reset_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev21, align 4
  %idr = getelementptr inbounds %struct.ti_sci_reset_data, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %idr, ptr noundef nonnull @.str.3, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #4
  %xa_flags.i.i.i = getelementptr inbounds %struct.ti_sci_reset_data, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.ti_sci_reset_data, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %13 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.ti_sci_reset_data, ptr %call.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.ti_sci_reset_data, ptr %call.i, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idr_next.i.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call23 = tail call i32 @reset_controller_register(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then9 ], [ %call23, %if.end12 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sci_reset_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @reset_controller_unregister(ptr noundef %1) #4
  %idr = getelementptr inbounds %struct.ti_sci_reset_data, ptr %1, i32 0, i32 3
  tail call void @idr_destroy(ptr noundef %idr) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ti_sci_get_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sci_reset_of_xlate(ptr noundef %rcdev, ptr nocapture noundef readonly %reset_spec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %reset_spec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  %of_reset_n_cells = getelementptr inbounds %struct.reset_controller_dev, ptr %rcdev, i32 0, i32 6
  %2 = ptrtoint ptr %of_reset_n_cells to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %of_reset_n_cells, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !35

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 198, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end22:                                         ; preds = %entry
  %dev = getelementptr inbounds %struct.ti_sci_reset_data, ptr %rcdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 100, i32 noundef 3520) #4
  %tobool23.not = icmp eq ptr %call.i, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %reset_spec, i32 0, i32 2
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call.i, align 4
  %arrayidx27 = getelementptr %struct.of_phandle_args, ptr %reset_spec, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx27, align 4
  %reset_mask = getelementptr inbounds %struct.ti_sci_reset_control, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %reset_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %reset_mask, align 4
  %lock = getelementptr inbounds %struct.ti_sci_reset_control, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @ti_sci_reset_of_xlate.__key) #4
  %idr = getelementptr inbounds %struct.ti_sci_reset_data, ptr %rcdev, i32 0, i32 3
  %call31 = tail call i32 @idr_alloc(ptr noundef %idr, ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call31, %if.end25 ], [ -12, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sci_reset_assert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  %reset_state.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sci1.i = getelementptr inbounds %struct.ti_sci_reset_data, ptr %rcdev, i32 0, i32 2
  %0 = ptrtoint ptr %sci1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sci1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_state.i) #4
  %2 = ptrtoint ptr %reset_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reset_state.i, align 4, !annotation !36
  %idr.i = getelementptr inbounds %struct.ti_sci_reset_data, ptr %rcdev, i32 0, i32 3
  %call.i = tail call ptr @idr_find(ptr noundef %idr.i, i32 noundef %id) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.ti_sci_reset_set.exit_crit_edge, label %if.end.i

entry.ti_sci_reset_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ti_sci_reset_set.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.ti_sci_reset_control, ptr %call.i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %get_device_resets.i = getelementptr inbounds %struct.ti_sci_handle, ptr %1, i32 0, i32 1, i32 1, i32 12
  %3 = ptrtoint ptr %get_device_resets.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_device_resets.i, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i, align 4
  %call3.i = call i32 %4(ptr noundef %1, i32 noundef %6, ptr noundef nonnull %reset_state.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %reset_mask.i = getelementptr inbounds %struct.ti_sci_reset_control, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %reset_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reset_mask.i, align 4
  %9 = ptrtoint ptr %reset_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reset_state.i, align 4
  %or.i = or i32 %10, %8
  store i32 %or.i, ptr %reset_state.i, align 4
  %set_device_resets.i = getelementptr inbounds %struct.ti_sci_handle, ptr %1, i32 0, i32 1, i32 1, i32 11
  %11 = ptrtoint ptr %set_device_resets.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_device_resets.i, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i, align 4
  %call12.i = call i32 %12(ptr noundef %1, i32 noundef %14, i32 noundef %or.i) #4
  br label %out.i

out.i:                                            ; preds = %if.end6.i, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call3.i, %if.end.i.out.i_crit_edge ], [ %call12.i, %if.end6.i ]
  call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %ti_sci_reset_set.exit

ti_sci_reset_set.exit:                            ; preds = %out.i, %entry.ti_sci_reset_set.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %out.i ], [ -22, %entry.ti_sci_reset_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_state.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sci_reset_deassert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  %reset_state.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sci1.i = getelementptr inbounds %struct.ti_sci_reset_data, ptr %rcdev, i32 0, i32 2
  %0 = ptrtoint ptr %sci1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sci1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_state.i) #4
  %2 = ptrtoint ptr %reset_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reset_state.i, align 4, !annotation !36
  %idr.i = getelementptr inbounds %struct.ti_sci_reset_data, ptr %rcdev, i32 0, i32 3
  %call.i = tail call ptr @idr_find(ptr noundef %idr.i, i32 noundef %id) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.ti_sci_reset_set.exit_crit_edge, label %if.end.i

entry.ti_sci_reset_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ti_sci_reset_set.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.ti_sci_reset_control, ptr %call.i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %get_device_resets.i = getelementptr inbounds %struct.ti_sci_handle, ptr %1, i32 0, i32 1, i32 1, i32 12
  %3 = ptrtoint ptr %get_device_resets.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_device_resets.i, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i, align 4
  %call3.i = call i32 %4(ptr noundef %1, i32 noundef %6, ptr noundef nonnull %reset_state.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %reset_mask.i = getelementptr inbounds %struct.ti_sci_reset_control, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %reset_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reset_mask.i, align 4
  %neg.i = xor i32 %8, -1
  %9 = ptrtoint ptr %reset_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reset_state.i, align 4
  %and.i = and i32 %10, %neg.i
  store i32 %and.i, ptr %reset_state.i, align 4
  %set_device_resets.i = getelementptr inbounds %struct.ti_sci_handle, ptr %1, i32 0, i32 1, i32 1, i32 11
  %11 = ptrtoint ptr %set_device_resets.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_device_resets.i, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i, align 4
  %call12.i = call i32 %12(ptr noundef %1, i32 noundef %14, i32 noundef %and.i) #4
  br label %out.i

out.i:                                            ; preds = %if.end6.i, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call3.i, %if.end.i.out.i_crit_edge ], [ %call12.i, %if.end6.i ]
  call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %ti_sci_reset_set.exit

ti_sci_reset_set.exit:                            ; preds = %out.i, %entry.ti_sci_reset_set.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %out.i ], [ -22, %entry.ti_sci_reset_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_state.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sci_reset_status(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  %reset_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sci1 = getelementptr inbounds %struct.ti_sci_reset_data, ptr %rcdev, i32 0, i32 2
  %0 = ptrtoint ptr %sci1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sci1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_state) #4
  %2 = ptrtoint ptr %reset_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reset_state, align 4, !annotation !36
  %idr = getelementptr inbounds %struct.ti_sci_reset_data, ptr %rcdev, i32 0, i32 3
  %call = tail call ptr @idr_find(ptr noundef %idr, i32 noundef %id) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_device_resets = getelementptr inbounds %struct.ti_sci_handle, ptr %1, i32 0, i32 1, i32 1, i32 12
  %3 = ptrtoint ptr %get_device_resets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_device_resets, align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call, align 4
  %call3 = call i32 %4(ptr noundef %1, i32 noundef %6, ptr noundef nonnull %reset_state) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %reset_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reset_state, align 4
  %reset_mask = getelementptr inbounds %struct.ti_sci_reset_control, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %reset_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reset_mask, align 4
  %and = and i32 %10, %8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_state) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_controller_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_reset_ti_sci__170_265_ti_sci_reset_driver_init6, !1, !"__initcall__kmod_reset_ti_sci__170_265_ti_sci_reset_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/reset/reset-ti-sci.c", i32 265, i32 1}
!2 = !{ptr @__exitcall_ti_sci_reset_driver_exit, !1, !"__exitcall_ti_sci_reset_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/reset/reset-ti-sci.c", i32 267, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/reset/reset-ti-sci.c", i32 268, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/reset/reset-ti-sci.c", i32 269, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/reset/reset-ti-sci.c", i32 261, i32 11}
!12 = !{ptr @ti_sci_reset_driver, !13, !"ti_sci_reset_driver", i1 false, i1 false}
!13 = !{!"../drivers/reset/reset-ti-sci.c", i32 257, i32 31}
!14 = !{ptr @ti_sci_reset_ops, !15, !"ti_sci_reset_ops", i1 false, i1 false}
!15 = !{!"../drivers/reset/reset-ti-sci.c", i32 172, i32 39}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/reset/reset-ti-sci.c", i32 198, i32 6}
!18 = !{ptr @ti_sci_reset_of_xlate.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/reset/reset-ti-sci.c", i32 207, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @xa_init_flags.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ti_sci_reset_of_match, !25, !"ti_sci_reset_of_match", i1 false, i1 false}
!25 = !{!"../drivers/reset/reset-ti-sci.c", i32 212, i32 34}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{!"auto-init"}
