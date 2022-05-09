; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc3/dwc3-of-simple.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-of-simple.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.dwc3_of_simple = type { ptr, ptr, i32, ptr, i8 }

@__initcall__kmod_dwc3_of_simple__231_195_dwc3_of_simple_driver_init6 = internal global ptr @dwc3_of_simple_driver_init, section ".initcall6.init", align 4
@dwc3_of_simple_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dwc3_of_simple_probe, ptr @dwc3_of_simple_remove, ptr @dwc3_of_simple_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_dwc3_simple_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_of_simple_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dwc3_of_simple_driver_exit = internal global ptr @dwc3_of_simple_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file232 = internal constant [52 x i8] c"dwc3_of_simple.file=drivers/usb/dwc3/dwc3-of-simple\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [30 x i8] c"dwc3_of_simple.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [64 x i8] c"dwc3_of_simple.description=DesignWare USB3 OF Simple Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [50 x i8] c"dwc3_of_simple.author=Felipe Balbi <balbi@ti.com>\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dwc3-of-simple\00", [17 x i8] zeroinitializer }, align 32
@of_dwc3_simple_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cavium,octeon-7130-usb-uctl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc9860-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@dwc3_of_simple_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dwc3_of_simple_suspend, ptr @dwc3_of_simple_resume, ptr @dwc3_of_simple_suspend, ptr @dwc3_of_simple_resume, ptr @dwc3_of_simple_suspend, ptr @dwc3_of_simple_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_of_simple_runtime_suspend, ptr @dwc3_of_simple_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rockchip,rk3399-dwc3\00", [43 x i8] zeroinitializer }, align 32
@dwc3_of_simple_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 59, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get device resets, err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dwc3_of_simple_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/dwc3/dwc3-of-simple.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc3_of_simple_probe._entry_ptr = internal global ptr @dwc3_of_simple_probe._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"dwc3_of_simple_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 184, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 189, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"of_dwc3_simple_match\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 173, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant [26 x i8] c"dwc3_of_simple_dev_pm_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 167, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 52, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [37 x i8] c"../drivers/usb/dwc3/dwc3-of-simple.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 59, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_dwc3_of_simple_driver_exit, ptr @__initcall__kmod_dwc3_of_simple__231_195_dwc3_of_simple_driver_init6, ptr @dwc3_of_simple_driver_exit, ptr @dwc3_of_simple_probe._entry, ptr @dwc3_of_simple_probe._entry_ptr, ptr @dwc3_of_simple_driver, ptr @.str, ptr @of_dwc3_simple_match, ptr @dwc3_of_simple_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_of_simple_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dwc3_simple_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_of_simple_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_of_simple_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_of_simple_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc3_of_simple_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_of_simple_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc3_of_simple_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_of_simple_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %need_reset = getelementptr inbounds %struct.dwc3_of_simple, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %need_reset to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %need_reset, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %call7 = tail call ptr @of_reset_control_array_get(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #5
  %resets = getelementptr inbounds %struct.dwc3_of_simple, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %resets to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %resets, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %6) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call15 = tail call i32 @reset_control_deassert(ptr noundef %call7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.err_resetc_put_crit_edge

if.end13.err_resetc_put_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_resetc_put

if.end18:                                         ; preds = %if.end13
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %clks = getelementptr inbounds %struct.dwc3_of_simple, ptr %call.i, i32 0, i32 1
  %call20 = tail call i32 @clk_bulk_get_all(ptr noundef %8, ptr noundef %clks) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.end18.err_resetc_assert_crit_edge, label %if.end22

if.end18.err_resetc_assert_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_resetc_assert

if.end22:                                         ; preds = %if.end18
  %num_clocks = getelementptr inbounds %struct.dwc3_of_simple, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %num_clocks to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call20, ptr %num_clocks, align 4
  %10 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clks, align 4
  %call.i80 = tail call i32 @clk_bulk_prepare(i32 noundef %call20, ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.err_resetc_assert_crit_edge

if.end22.err_resetc_assert_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_resetc_assert

if.end.i:                                         ; preds = %if.end22
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %call20, ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end28, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_unprepare(i32 noundef %call20, ptr noundef %11) #5
  br label %err_resetc_assert

if.end28:                                         ; preds = %if.end.i
  %call29 = tail call i32 @of_platform_populate(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %err_clk_put

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %call.i81 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #5
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call.i82 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #5
  br label %cleanup

err_clk_put:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_clocks, align 4
  %14 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %13, ptr noundef %15) #5
  tail call void @clk_bulk_unprepare(i32 noundef %13, ptr noundef %15) #5
  %16 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_clocks, align 4
  %18 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_put_all(i32 noundef %17, ptr noundef %19) #5
  br label %err_resetc_assert

err_resetc_assert:                                ; preds = %err_clk_put, %if.then3.i, %if.end22.err_resetc_assert_crit_edge, %if.end18.err_resetc_assert_crit_edge
  %ret.0 = phi i32 [ %call20, %if.end18.err_resetc_assert_crit_edge ], [ %call29, %err_clk_put ], [ %call1.i, %if.then3.i ], [ %call.i80, %if.end22.err_resetc_assert_crit_edge ]
  %20 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resets, align 4
  %call40 = tail call i32 @reset_control_assert(ptr noundef %21) #5
  br label %err_resetc_put

err_resetc_put:                                   ; preds = %err_resetc_assert, %if.end13.err_resetc_put_crit_edge
  %ret.1 = phi i32 [ %call15, %if.end13.err_resetc_put_crit_edge ], [ %ret.0, %err_resetc_assert ]
  %22 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resets, align 4
  tail call void @reset_control_put(ptr noundef %23) #5
  br label %cleanup

cleanup:                                          ; preds = %err_resetc_put, %if.end32, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then10 ], [ %ret.1, %err_resetc_put ], [ 0, %if.end32 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_of_simple_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @__dwc3_of_simple_teardown(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_of_simple_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @__dwc3_of_simple_teardown(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_put_all(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dwc3_of_simple_teardown(ptr nocapture noundef %simple) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %simple to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %simple, align 4
  tail call void @of_platform_depopulate(ptr noundef %1) #5
  %num_clocks = getelementptr inbounds %struct.dwc3_of_simple, ptr %simple, i32 0, i32 2
  %2 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clocks, align 4
  %clks = getelementptr inbounds %struct.dwc3_of_simple, ptr %simple, i32 0, i32 1
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %5) #5
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #5
  %6 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_clocks, align 4
  %8 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_put_all(i32 noundef %7, ptr noundef %9) #5
  %10 = ptrtoint ptr %num_clocks to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %num_clocks, align 4
  %resets = getelementptr inbounds %struct.dwc3_of_simple, ptr %simple, i32 0, i32 3
  %11 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resets, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %12) #5
  %13 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resets, align 4
  tail call void @reset_control_put(ptr noundef %14) #5
  %15 = ptrtoint ptr %simple to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %simple, align 4
  tail call void @__pm_runtime_disable(ptr noundef %16, i1 noundef zeroext true) #5
  %17 = ptrtoint ptr %simple to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %simple, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #5
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #5, !srcloc !38
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !39
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %20 = ptrtoint ptr %simple to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %simple, align 4
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %21, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_of_simple_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %need_reset = getelementptr inbounds %struct.dwc3_of_simple, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %need_reset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_reset, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %resets = getelementptr inbounds %struct.dwc3_of_simple, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resets, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_of_simple_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %need_reset = getelementptr inbounds %struct.dwc3_of_simple, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %need_reset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_reset, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %resets = getelementptr inbounds %struct.dwc3_of_simple, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resets, align 4
  %call1 = tail call i32 @reset_control_deassert(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_of_simple_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_clocks = getelementptr inbounds %struct.dwc3_of_simple, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clocks, align 4
  %clks = getelementptr inbounds %struct.dwc3_of_simple, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_of_simple_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_clocks = getelementptr inbounds %struct.dwc3_of_simple, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clocks, align 4
  %clks = getelementptr inbounds %struct.dwc3_of_simple, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  %call1 = tail call i32 @clk_bulk_enable(i32 noundef %3, ptr noundef %5) #5
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_dwc3_of_simple__231_195_dwc3_of_simple_driver_init6, !1, !"__initcall__kmod_dwc3_of_simple__231_195_dwc3_of_simple_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc3/dwc3-of-simple.c", i32 195, i32 1}
!2 = !{ptr @__exitcall_dwc3_of_simple_driver_exit, !1, !"__exitcall_dwc3_of_simple_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file232, !4, !"__UNIQUE_ID_file232", i1 false, i1 false}
!4 = !{!"../drivers/usb/dwc3/dwc3-of-simple.c", i32 196, i32 1}
!5 = !{ptr @__UNIQUE_ID_license233, !4, !"__UNIQUE_ID_license233", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description234, !7, !"__UNIQUE_ID_description234", i1 false, i1 false}
!7 = !{!"../drivers/usb/dwc3/dwc3-of-simple.c", i32 197, i32 1}
!8 = !{ptr @__UNIQUE_ID_author235, !9, !"__UNIQUE_ID_author235", i1 false, i1 false}
!9 = !{!"../drivers/usb/dwc3/dwc3-of-simple.c", i32 198, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/dwc3/dwc3-of-simple.c", i32 189, i32 11}
!12 = !{ptr @dwc3_of_simple_driver, !13, !"dwc3_of_simple_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc3/dwc3-of-simple.c", i32 184, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/dwc3/dwc3-of-simple.c", i32 52, i32 34}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/dwc3/dwc3-of-simple.c", i32 59, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dwc3_of_simple_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @dwc3_of_simple_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @of_dwc3_simple_match, !25, !"of_dwc3_simple_match", i1 false, i1 false}
!25 = !{!"../drivers/usb/dwc3/dwc3-of-simple.c", i32 173, i32 34}
!26 = !{ptr @dwc3_of_simple_dev_pm_ops, !27, !"dwc3_of_simple_dev_pm_ops", i1 false, i1 false}
!27 = !{!"../drivers/usb/dwc3/dwc3-of-simple.c", i32 167, i32 32}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2148342606}
!38 = !{i64 828226, i64 828251, i64 828273, i64 828289, i64 828301, i64 828321, i64 828345, i64 828361, i64 828373}
!39 = !{i64 2148342794}
!40 = !{i8 0, i8 2}
