; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-uniphier.c_pt.bc'
source_filename = "../drivers/gpio/gpio-uniphier.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.uniphier_gpio_priv = type { %struct.gpio_chip, %struct.irq_chip, ptr, ptr, %struct.spinlock, [0 x i32] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_gpio_uniphier__223_493_uniphier_gpio_driver_init6 = internal global ptr @uniphier_gpio_driver_init, section ".initcall6.init", align 4
@uniphier_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_gpio_probe, ptr @uniphier_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_gpio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_gpio_driver_exit = internal global ptr @uniphier_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [69 x i8] c"gpio_uniphier.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [47 x i8] c"gpio_uniphier.description=UniPhier GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [46 x i8] c"gpio_uniphier.file=drivers/gpio/gpio-uniphier\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [29 x i8] c"gpio_uniphier.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uniphier-gpio\00", [18 x i8] zeroinitializer }, align 32
@uniphier_gpio_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@uniphier_gpio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_gpio_suspend, ptr @uniphier_gpio_resume, ptr @uniphier_gpio_suspend, ptr @uniphier_gpio_resume, ptr @uniphier_gpio_suspend, ptr @uniphier_gpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@uniphier_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@uniphier_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@uniphier_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@uniphier_gpio_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_gpio_irq_domain_alloc, ptr @irq_domain_free_irqs_common, ptr @uniphier_gpio_irq_domain_activate, ptr @uniphier_gpio_irq_domain_deactivate, ptr @uniphier_gpio_irq_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpio/gpio-uniphier.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"socionext,interrupt-ranges\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"uniphier_gpio_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 484, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 488, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"uniphier_gpio_match\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 478, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"uniphier_gpio_pm_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 473, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 360, i32 43 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 374, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 401, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [29 x i8] c"uniphier_gpio_irq_domain_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 314, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 268, i32 6 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [32 x i8] c"../drivers/gpio/gpio-uniphier.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 226, i32 30 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_uniphier_gpio_driver_exit, ptr @__initcall__kmod_gpio_uniphier__223_493_uniphier_gpio_driver_init6, ptr @uniphier_gpio_driver_exit, ptr @uniphier_gpio_driver, ptr @.str, ptr @uniphier_gpio_match, ptr @uniphier_gpio_pm_ops, ptr @.str.1, ptr @uniphier_gpio_probe.__key, ptr @.str.2, ptr @uniphier_gpio_probe.lock_key, ptr @uniphier_gpio_probe.request_key, ptr @uniphier_gpio_irq_domain_ops, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_gpio_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_gpio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_gpio_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_gpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  %ngpios = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ngpios) #5
  %0 = ptrtoint ptr %ngpios to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ngpios, align 4, !annotation !41
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_irq_find_parent(ptr noundef %2) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #5
  %3 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 68)
  %5 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #5
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %irq_find_host.exit.thread

irq_find_host.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %call) #5
  br label %if.end5

irq_find_host.exit:                               ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #5
  %6 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 68)
  %8 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #5
  call void @of_node_put(ptr noundef nonnull %call) #5
  %tobool3.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool3.not, label %irq_find_host.exit.cleanup_crit_edge, label %irq_find_host.exit.if.end5_crit_edge

irq_find_host.exit.if.end5_crit_edge:             ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

irq_find_host.exit.cleanup_crit_edge:             ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %irq_find_host.exit.if.end5_crit_edge, %irq_find_host.exit.thread
  %d.0.i104 = phi ptr [ %call.i.i.i, %irq_find_host.exit.thread ], [ %call.i.i8.i, %irq_find_host.exit.if.end5_crit_edge ]
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull %ngpios, i32 noundef 1, i32 noundef 0) #5
  %11 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool8.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ngpios, align 4
  %sub.i = add i32 %13, 7
  %14 = lshr i32 %sub.i, 2
  %mul = and i32 %14, 1073741822
  %add = add nuw nsw i32 %mul, 3
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #5
  %16 = extractvalue { i32, i1 } %15, 1
  %17 = extractvalue { i32, i1 } %15, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %17, i32 536) #5
  %retval.0.i = select i1 %16, i32 -1, i32 %spec.select.i
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #5
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %call17 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call17, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %do.body

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call17 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end16
  %lock = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @uniphier_gpio_probe.__key, i16 noundef signext 3) #5
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i93 = icmp eq ptr %21, null
  br i1 %tobool.not.i93, label %if.end.i, label %do.body.dev_name.exit_crit_edge

do.body.dev_name.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body.dev_name.exit_crit_edge
  %retval.0.i94 = phi ptr [ %23, %if.end.i ], [ %21, %do.body.dev_name.exit_crit_edge ]
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i94, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev1, ptr %parent, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @gpiochip_generic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @gpiochip_generic_free, ptr %free, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 7
  %28 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @uniphier_gpio_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %29 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @uniphier_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %30 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @uniphier_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %31 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @uniphier_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %32 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @uniphier_gpio_set, ptr %set, align 4
  %set_multiple = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 13
  %33 = ptrtoint ptr %set_multiple to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @uniphier_gpio_set_multiple, ptr %set_multiple, align 4
  %to_irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 15
  %34 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @uniphier_gpio_to_irq, ptr %to_irq, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %35 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %base, align 4
  %36 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ngpios, align 4
  %conv = trunc i32 %37 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %38 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv, ptr %ngpio, align 4
  br i1 %tobool.not.i93, label %if.end.i97, label %dev_name.exit.dev_name.exit99_crit_edge

dev_name.exit.dev_name.exit99_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit99

if.end.i97:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit99

dev_name.exit99:                                  ; preds = %if.end.i97, %dev_name.exit.dev_name.exit99_crit_edge
  %retval.0.i98 = phi ptr [ %40, %if.end.i97 ], [ %21, %dev_name.exit.dev_name.exit99_crit_edge ]
  %name = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %retval.0.i98, ptr %name, align 4
  %irq_mask = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i, i32 0, i32 1, i32 7
  %42 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @uniphier_gpio_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i, i32 0, i32 1, i32 9
  %43 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @uniphier_gpio_irq_unmask, ptr %irq_unmask, align 4
  %irq_eoi = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i, i32 0, i32 1, i32 10
  %44 = ptrtoint ptr %irq_eoi to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @irq_chip_eoi_parent, ptr %irq_eoi, align 4
  %irq_set_affinity = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i, i32 0, i32 1, i32 11
  %45 = ptrtoint ptr %irq_set_affinity to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @irq_chip_set_affinity_parent, ptr %irq_set_affinity, align 4
  %irq_set_type = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i, i32 0, i32 1, i32 13
  %46 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @uniphier_gpio_irq_set_type, ptr %irq_set_type, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %48, i32 156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16777216) #5, !srcloc !43
  %call29 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @uniphier_gpio_probe.lock_key, ptr noundef nonnull @uniphier_gpio_probe.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %dev_name.exit99.cleanup_crit_edge

dev_name.exit99.cleanup_crit_edge:                ; preds = %dev_name.exit99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %dev_name.exit99
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node, align 8
  %tobool.not.i100 = icmp eq ptr %50, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %50, i32 0, i32 3
  %spec.select.i101 = select i1 %tobool.not.i100, ptr null, ptr %fwnode.i
  %call35 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i104, i32 noundef 0, i32 noundef 24, ptr noundef %spec.select.i101, ptr noundef nonnull @uniphier_gpio_irq_domain_ops, ptr noundef nonnull %call.i) #5
  %domain = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i, i32 0, i32 2
  %51 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call35, ptr %domain, align 4
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %if.end32.cleanup_crit_edge, label %if.end39

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end32.cleanup_crit_edge, %dev_name.exit99.cleanup_crit_edge, %if.then20, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %irq_find_host.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then20 ], [ 0, %if.end39 ], [ -6, %entry.cleanup_crit_edge ], [ -517, %irq_find_host.exit.cleanup_crit_edge ], [ %11, %if.end5.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %call29, %dev_name.exit99.cleanup_crit_edge ], [ -12, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ngpios) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %domain = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  tail call void @irq_domain_remove(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %div2.i.i = and i32 %offset, -8
  %rem.i.i = and i32 %offset, 7
  %mul.i.i = add i32 %div2.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %mul.i.i)
  %cmp.i.i = icmp ugt i32 %mul.i.i, 143
  %add1.i.i = add i32 %div2.i.i, 24
  %spec.select.i.i = select i1 %cmp.i.i, i32 %add1.i.i, i32 %mul.i.i
  %add.i = or i32 %spec.select.i.i, 4
  %regs.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %4 = lshr i32 %3, %rem.i.i
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div2.i.i = and i32 %offset, -8
  %rem.i.i = and i32 %offset, 7
  %shl.i.i = shl nuw nsw i32 1, %rem.i.i
  %call.i.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %mul.i.i.i = add i32 %div2.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %mul.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %mul.i.i.i, 143
  %add1.i.i.i = add i32 %div2.i.i, 24
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %add1.i.i.i, i32 %mul.i.i.i
  %add.i.i = or i32 %spec.select.i.i.i, 4
  %lock.i.i.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i.i, i32 0, i32 4
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #5
  %regs.i.i.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i.i, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %add.i.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !44
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %or.i.i.i = or i32 %3, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #5
  %5 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr14.i.i.i = getelementptr i8, ptr %6, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i.i, i32 %4) #5, !srcloc !43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call3.i.i.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div2.i.i = and i32 %offset, -8
  %rem.i.i = and i32 %offset, 7
  %shl.i.i = shl nuw nsw i32 1, %rem.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %shl.i.i
  %call.i.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %mul.i.i.i = add i32 %div2.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %mul.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %mul.i.i.i, 143
  %add1.i.i.i = add i32 %div2.i.i, 24
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %add1.i.i.i, i32 %mul.i.i.i
  %lock.i.i.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i.i, i32 0, i32 4
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #5
  %regs.i.i.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i.i, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %spec.select.i.i.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !44
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %neg.i.i.i = xor i32 %shl.i.i, -1
  %and.i.i.i = and i32 %3, %neg.i.i.i
  %or.i.i.i = or i32 %and.i.i.i, %spec.select.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #5
  %5 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr14.i.i.i = getelementptr i8, ptr %6, i32 %spec.select.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i.i, i32 %4) #5, !srcloc !43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call3.i.i.i) #5
  %call.i.i6 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %add.i.i = or i32 %spec.select.i.i.i, 4
  %lock.i.i.i11 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i.i6, i32 0, i32 4
  %call3.i.i.i12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i11) #5
  %regs.i.i.i13 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i.i6, i32 0, i32 3
  %7 = ptrtoint ptr %regs.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i.i13, align 4
  %add.ptr.i.i.i14 = getelementptr i8, ptr %8, i32 %add.i.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i14) #5, !srcloc !44
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %and.i.i.i16 = and i32 %10, %neg.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i16) #5
  %12 = ptrtoint ptr %regs.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i.i13, align 4
  %add.ptr14.i.i.i17 = getelementptr i8, ptr %13, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i.i17, i32 %11) #5, !srcloc !43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i11, i32 noundef %call3.i.i.i12) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %div2.i.i = and i32 %offset, -8
  %rem.i.i = and i32 %offset, 7
  %mul.i.i = add i32 %div2.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %mul.i.i)
  %cmp.i.i = icmp ugt i32 %mul.i.i, 143
  %add1.i.i = add i32 %div2.i.i, 24
  %spec.select.i.i = select i1 %cmp.i.i, i32 %add1.i.i, i32 %mul.i.i
  %regs.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %spec.select.i.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %4 = lshr i32 %3, %rem.i.i
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div2.i.i = and i32 %offset, -8
  %rem.i.i = and i32 %offset, 7
  %shl.i.i = shl nuw nsw i32 1, %rem.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %shl.i.i
  %call.i.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %mul.i.i.i = add i32 %div2.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %mul.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %mul.i.i.i, 143
  %add1.i.i.i = add i32 %div2.i.i, 24
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %add1.i.i.i, i32 %mul.i.i.i
  %lock.i.i.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i.i, i32 0, i32 4
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #5
  %regs.i.i.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i.i, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %spec.select.i.i.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !44
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %neg.i.i.i = xor i32 %shl.i.i, -1
  %and.i.i.i = and i32 %3, %neg.i.i.i
  %or.i.i.i = or i32 %and.i.i.i, %spec.select.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #5
  %5 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr14.i.i.i = getelementptr i8, ptr %6, i32 %spec.select.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i.i, i32 %4) #5, !srcloc !43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call3.i.i.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_gpio_set_multiple(ptr noundef %chip, ptr noundef %mask, ptr nocapture noundef readonly %bits) #2 align 64 {
entry:
  %bank_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank_mask) #5
  %0 = ptrtoint ptr %bank_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bank_mask, align 4, !annotation !41
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %1 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %2 to i32
  %call = call i32 @find_next_clump8(ptr noundef nonnull %bank_mask, ptr noundef %mask, i32 noundef %conv, i32 noundef 0) #5
  %3 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ngpio, align 4
  %conv216 = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv216)
  %cmp17 = icmp ult i32 %call, %conv216
  br i1 %cmp17, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %uniphier_gpio_bank_write.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %call7, %uniphier_gpio_bank_write.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %div2.i = lshr i32 %i.018, 5
  %arrayidx.i = getelementptr i32, ptr %bits, i32 %div2.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %bank_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bank_mask, align 4
  %call.i = call ptr @gpiochip_get_data(ptr noundef %chip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %for.body.uniphier_gpio_bank_write.exit_crit_edge, label %if.end.i

for.body.uniphier_gpio_bank_write.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %uniphier_gpio_bank_write.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %rem.i = and i32 %i.018, 31
  %shr.i = lshr i32 %6, %rem.i
  %and.i = and i32 %shr.i, 255
  %div15 = and i32 %i.018, -8
  %mul.i.i = add i32 %div15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %mul.i.i)
  %cmp.i.i = icmp ugt i32 %mul.i.i, 143
  %add1.i.i = add i32 %div15, 24
  %spec.select.i.i = select i1 %cmp.i.i, i32 %add1.i.i, i32 %mul.i.i
  %lock.i.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i, i32 0, i32 4
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #5
  %regs.i.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %spec.select.i.i
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !44
  %12 = call i32 @llvm.bswap.i32(i32 %11) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %neg.i.i = xor i32 %8, -1
  %and.i.i = and i32 %12, %neg.i.i
  %and9.i.i = and i32 %and.i, %8
  %or.i.i = or i32 %and.i.i, %and9.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  call void @arm_heavy_mb() #5
  %13 = call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %15, i32 %spec.select.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 %13) #5, !srcloc !43
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #5
  br label %uniphier_gpio_bank_write.exit

uniphier_gpio_bank_write.exit:                    ; preds = %if.end.i, %for.body.uniphier_gpio_bank_write.exit_crit_edge
  %16 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ngpio, align 4
  %conv6 = zext i16 %17 to i32
  %add = add i32 %i.018, 8
  %call7 = call i32 @find_next_clump8(ptr noundef nonnull %bank_mask, ptr noundef %mask, i32 noundef %conv6, i32 noundef %add) #5
  %18 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ngpio, align 4
  %conv2 = zext i16 %19 to i32
  %cmp = icmp ult i32 %call7, %conv2
  br i1 %cmp, label %uniphier_gpio_bank_write.exit.for.body_crit_edge, label %uniphier_gpio_bank_write.exit.for.end_crit_edge

uniphier_gpio_bank_write.exit.for.end_crit_edge:  ; preds = %uniphier_gpio_bank_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

uniphier_gpio_bank_write.exit.for.body_crit_edge: ; preds = %uniphier_gpio_bank_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %uniphier_gpio_bank_write.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank_mask) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_to_irq(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  %fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec) #5
  %0 = getelementptr inbounds i8, ptr %fwspec, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %offset)
  %cmp = icmp ult i32 %offset, 120
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not.i = icmp eq ptr %5, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %fwnode.i
  %6 = ptrtoint ptr %fwspec to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spec.select.i, ptr %fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %7 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %param_count, align 4
  %sub = add i32 %offset, -120
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %8 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %param, align 4
  %arrayidx2 = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %arrayidx2, align 4
  %call3 = call i32 @irq_create_fwspec_mapping(ptr noundef nonnull %fwspec) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_gpio_irq_mask(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %3
  %lock.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %1, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %regs.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 144
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %7, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %10, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %8) #5, !srcloc !43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #5
  tail call void @irq_chip_mask_parent(ptr noundef %data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_gpio_irq_unmask(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %3
  %lock.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %1, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %regs.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 144
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %or.i = or i32 %7, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %10, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %8) #5, !srcloc !43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #5
  tail call void @irq_chip_unmask_parent(ptr noundef %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_irq_set_type(ptr noundef %data, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp = icmp eq i32 %type, 3
  %spec.select = select i1 %cmp, i32 2, i32 %type
  %spec.select10 = select i1 %cmp, i32 %shl, i32 0
  %lock.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %1, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %regs.i = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 148
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %7, %neg.i
  %or.i = or i32 %and.i, %spec.select10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %10, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %8) #5, !srcloc !43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #5
  %call3.i12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %12, i32 152
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #5, !srcloc !44
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %and.i16 = and i32 %14, %neg.i
  %or.i17 = or i32 %and.i16, %spec.select10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i17) #5
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr14.i18 = getelementptr i8, ptr %17, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i18, i32 %15) #5, !srcloc !43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i12) #5
  %call2 = tail call i32 @irq_chip_set_type_parent(ptr noundef %data, i32 noundef %spec.select) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_next_clump8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_fwspec_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #5
  %2 = getelementptr inbounds i8, ptr %parent_fwspec, i32 16
  %3 = call ptr @memset(ptr %2, i32 255, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.not = icmp eq i32 %nr_irqs, 1
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !48

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end21:                                         ; preds = %entry
  %param_count.i = getelementptr inbounds %struct.irq_fwspec, ptr %arg, i32 0, i32 1
  %4 = ptrtoint ptr %param_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp slt i32 %5, 2
  br i1 %cmp.i, label %uniphier_gpio_irq_domain_translate.exit, label %if.end24, !prof !49

uniphier_gpio_irq_domain_translate.exit:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %param.i = getelementptr inbounds %struct.irq_fwspec, ptr %arg, i32 0, i32 2
  %6 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param.i, align 4
  %arrayidx23.i = getelementptr %struct.irq_fwspec, ptr %arg, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx23.i, align 4
  %and.i = and i32 %9, 15
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #5
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %len.i, align 4, !annotation !41
  %call.i = call ptr @of_get_property(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull %len.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end24.uniphier_gpio_irq_get_parent_hwirq.exit.thread_crit_edge, label %if.end.i

if.end24.uniphier_gpio_irq_get_parent_hwirq.exit.thread_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %uniphier_gpio_irq_get_parent_hwirq.exit.thread

if.end.i:                                         ; preds = %if.end24
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %div21.i = lshr i32 %16, 2
  store i32 %div21.i, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %16)
  %cmp23.i = icmp ugt i32 %16, 11
  br i1 %cmp23.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.uniphier_gpio_irq_get_parent_hwirq.exit.thread_crit_edge

if.end.i.uniphier_gpio_irq_get_parent_hwirq.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %uniphier_gpio_irq_get_parent_hwirq.exit.thread

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %range.025.i = phi ptr [ %incdec.ptr2.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.end.i.for.body.i_crit_edge ]
  %storemerge24.i = phi i32 [ %sub8.i, %for.inc.i.for.body.i_crit_edge ], [ %div21.i, %if.end.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %range.025.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %range.025.i, align 4
  %incdec.ptr2.i = getelementptr i32, ptr %range.025.i, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %18)
  %cmp3.not.i = icmp ult i32 %7, %18
  br i1 %cmp3.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %incdec.ptr1.i = getelementptr i32, ptr %range.025.i, i32 2
  %19 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr1.i, align 4
  %add.i = add i32 %20, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %7)
  %cmp4.i = icmp ugt i32 %add.i, %7
  br i1 %cmp4.i, label %uniphier_gpio_irq_get_parent_hwirq.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %sub8.i = add nsw i32 %storemerge24.i, -3
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub8.i, ptr %len.i, align 4
  %cmp.i56 = icmp sgt i32 %storemerge24.i, 5
  br i1 %cmp.i56, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.uniphier_gpio_irq_get_parent_hwirq.exit.thread_crit_edge

for.inc.i.uniphier_gpio_irq_get_parent_hwirq.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %uniphier_gpio_irq_get_parent_hwirq.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

uniphier_gpio_irq_get_parent_hwirq.exit.thread:   ; preds = %for.inc.i.uniphier_gpio_irq_get_parent_hwirq.exit.thread_crit_edge, %if.end.i.uniphier_gpio_irq_get_parent_hwirq.exit.thread_crit_edge, %if.end24.uniphier_gpio_irq_get_parent_hwirq.exit.thread_crit_edge
  %retval.0.i57.ph = phi i32 [ -2, %if.end.i.uniphier_gpio_irq_get_parent_hwirq.exit.thread_crit_edge ], [ -22, %if.end24.uniphier_gpio_irq_get_parent_hwirq.exit.thread_crit_edge ], [ -2, %for.inc.i.uniphier_gpio_irq_get_parent_hwirq.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #5
  br label %cleanup

uniphier_gpio_irq_get_parent_hwirq.exit:          ; preds = %land.lhs.true.i
  %incdec.ptr.i = getelementptr i32, ptr %range.025.i, i32 1
  %22 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr.i, align 4
  %sub.i = sub i32 %7, %18
  %add6.i = add i32 %23, %sub.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add6.i)
  %cmp26 = icmp slt i32 %add6.i, 0
  br i1 %cmp26, label %uniphier_gpio_irq_get_parent_hwirq.exit.cleanup_crit_edge, label %if.end28

uniphier_gpio_irq_get_parent_hwirq.exit.cleanup_crit_edge: ; preds = %uniphier_gpio_irq_get_parent_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %uniphier_gpio_irq_get_parent_hwirq.exit
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fwnode, align 4
  %28 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %parent_fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 1
  %29 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %param_count, align 4
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2
  %30 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add6.i, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp30 = icmp eq i32 %and.i, 3
  %spec.select = select i1 %cmp30, i32 2, i32 %and.i
  %arrayidx32 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select, ptr %arrayidx32, align 4
  %irq_chip = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %1, i32 0, i32 1
  %call33 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %virq, i32 noundef %7, ptr noundef %irq_chip, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef 1, ptr noundef nonnull %parent_fwspec) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end28.cleanup_crit_edge, %uniphier_gpio_irq_get_parent_hwirq.exit.cleanup_crit_edge, %uniphier_gpio_irq_get_parent_hwirq.exit.thread, %uniphier_gpio_irq_domain_translate.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call37, %if.end36 ], [ -22, %uniphier_gpio_irq_domain_translate.exit ], [ %add6.i, %uniphier_gpio_irq_get_parent_hwirq.exit.cleanup_crit_edge ], [ %call33, %if.end28.cleanup_crit_edge ], [ %retval.0.i57.ph, %uniphier_gpio_irq_get_parent_hwirq.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_irq_domain_activate(ptr nocapture noundef readonly %domain, ptr nocapture noundef readonly %data, i1 noundef zeroext %early) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %add = add i32 %3, 120
  %call2 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %1, i32 noundef %add) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_gpio_irq_domain_deactivate(ptr nocapture noundef readonly %domain, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %add = add i32 %3, 120
  tail call void @gpiochip_unlock_as_irq(ptr noundef %1, i32 noundef %add) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_irq_domain_translate(ptr nocapture noundef readnone %domain, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %out_hwirq, ptr nocapture noundef writeonly %out_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %0 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %do.end, label %if.end21, !prof !49

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 9, ptr noundef null) #5
  br label %return

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param, align 4
  %4 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %out_hwirq, align 4
  %arrayidx23 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx23, align 4
  %and = and i32 %6, 15
  %7 = ptrtoint ptr %out_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %out_type, align 4
  br label %return

return:                                           ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %saved_vals = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %1, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp53.not = icmp eq i16 %3, 0
  br i1 %cmp53.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i16 %3 to i32
  %sub.i = add nuw nsw i32 %conv, 7
  %div1.i = lshr i32 %sub.i, 3
  %regs = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %val.055 = phi ptr [ %saved_vals, %for.body.lr.ph ], [ %incdec.ptr15, %for.body.for.body_crit_edge ]
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add.i = shl i32 %i.054, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 135, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 135
  %spec.select.i.v = select i1 %cmp.i, i32 24, i32 8
  %spec.select.i = add nuw nsw i32 %add.i, %spec.select.i.v
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %spec.select.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  %incdec.ptr = getelementptr i32, ptr %val.055, i32 1
  %8 = ptrtoint ptr %val.055 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val.055, align 4
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 4
  %add.ptr11 = getelementptr i8, ptr %add.ptr10, i32 %spec.select.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !44
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  %incdec.ptr15 = getelementptr i32, ptr %val.055, i32 2
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %incdec.ptr, align 4
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %div1.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi ptr [ %saved_vals, %entry.for.end_crit_edge ], [ %incdec.ptr15, %for.body.for.end_crit_edge ]
  %regs18 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs18, align 4
  %add.ptr19 = getelementptr i8, ptr %15, i32 144
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #5, !srcloc !44
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  %incdec.ptr23 = getelementptr i32, ptr %val.0.lcssa, i32 1
  %18 = ptrtoint ptr %val.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val.0.lcssa, align 4
  %19 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs18, align 4
  %add.ptr27 = getelementptr i8, ptr %20, i32 148
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #5, !srcloc !44
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %incdec.ptr31 = getelementptr i32, ptr %val.0.lcssa, i32 2
  %23 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %incdec.ptr23, align 4
  %24 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs18, align 4
  %add.ptr35 = getelementptr i8, ptr %25, i32 152
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #5, !srcloc !44
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  %28 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %incdec.ptr31, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %saved_vals = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %1, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp44.not = icmp eq i16 %3, 0
  br i1 %cmp44.not, label %entry.do.body12_crit_edge, label %for.body.lr.ph

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i16 %3 to i32
  %sub.i = add nuw nsw i32 %conv, 7
  %div1.i = lshr i32 %sub.i, 3
  %regs = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %val.045 = phi ptr [ %saved_vals, %for.body.lr.ph ], [ %incdec.ptr8, %for.body.for.body_crit_edge ]
  %add.i = shl i32 %i.046, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 135, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 135
  %spec.select.i.v = select i1 %cmp.i, i32 24, i32 8
  %spec.select.i = add nuw nsw i32 %add.i, %spec.select.i.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %incdec.ptr = getelementptr i32, ptr %val.045, i32 1
  %4 = ptrtoint ptr %val.045 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.045, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %spec.select.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %incdec.ptr8 = getelementptr i32, ptr %val.045, i32 2
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %13, i32 4
  %add.ptr11 = getelementptr i8, ptr %add.ptr10, i32 %spec.select.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %11) #5, !srcloc !43
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %div1.i
  br i1 %exitcond.not, label %for.body.do.body12_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.do.body12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

do.body12:                                        ; preds = %for.body.do.body12_crit_edge, %entry.do.body12_crit_edge
  %val.0.lcssa = phi ptr [ %saved_vals, %entry.do.body12_crit_edge ], [ %incdec.ptr8, %for.body.do.body12_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %incdec.ptr15 = getelementptr i32, ptr %val.0.lcssa, i32 1
  %14 = ptrtoint ptr %val.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.0.lcssa, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %regs16 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %regs16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs16, align 4
  %add.ptr17 = getelementptr i8, ptr %18, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %16) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %incdec.ptr21 = getelementptr i32, ptr %val.0.lcssa, i32 2
  %19 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr15, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %regs16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs16, align 4
  %add.ptr23 = getelementptr i8, ptr %23, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %21) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %incdec.ptr21, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %regs16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs16, align 4
  %add.ptr29 = getelementptr i8, ptr %28, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %26) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %regs16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs16, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16777216) #5, !srcloc !43
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_gpio_uniphier__223_493_uniphier_gpio_driver_init6, !1, !"__initcall__kmod_gpio_uniphier__223_493_uniphier_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-uniphier.c", i32 493, i32 1}
!2 = !{ptr @__exitcall_uniphier_gpio_driver_exit, !1, !"__exitcall_uniphier_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-uniphier.c", i32 495, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-uniphier.c", i32 496, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-uniphier.c", i32 497, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-uniphier.c", i32 488, i32 11}
!12 = !{ptr @uniphier_gpio_driver, !13, !"uniphier_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-uniphier.c", i32 484, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-uniphier.c", i32 360, i32 43}
!16 = !{ptr @uniphier_gpio_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-uniphier.c", i32 374, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @uniphier_gpio_probe.lock_key, !20, !"lock_key", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-uniphier.c", i32 401, i32 8}
!21 = !{ptr @uniphier_gpio_probe.request_key, !20, !"request_key", i1 false, i1 false}
!22 = !{ptr @uniphier_gpio_irq_domain_ops, !23, !"uniphier_gpio_irq_domain_ops", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-uniphier.c", i32 314, i32 36}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-uniphier.c", i32 268, i32 6}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-uniphier.c", i32 226, i32 30}
!28 = !{ptr @uniphier_gpio_match, !29, !"uniphier_gpio_match", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-uniphier.c", i32 478, i32 34}
!30 = !{ptr @uniphier_gpio_pm_ops, !31, !"uniphier_gpio_pm_ops", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-uniphier.c", i32 473, i32 32}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{i64 2153846811}
!43 = !{i64 4850876}
!44 = !{i64 4851294}
!45 = !{i64 2153844590}
!46 = !{i64 2153843693}
!47 = !{i64 2153843906}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2153848672}
!51 = !{i64 2153849182}
!52 = !{i64 2153849673}
!53 = !{i64 2153850164}
!54 = !{i64 2153850655}
!55 = !{i64 2153850909}
!56 = !{i64 2153851324}
!57 = !{i64 2153851735}
!58 = !{i64 2153852141}
!59 = !{i64 2153852547}
