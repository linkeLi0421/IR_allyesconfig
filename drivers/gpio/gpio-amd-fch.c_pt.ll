; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-amd-fch.c_pt.bc'
source_filename = "../drivers/gpio/gpio-amd-fch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.amd_fch_gpio_priv = type { %struct.gpio_chip, ptr, ptr, %struct.spinlock }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.amd_fch_gpio_pdata = type { i32, ptr, ptr }

@__initcall__kmod_gpio_amd_fch__223_187_amd_fch_gpio_driver_init6 = internal global ptr @amd_fch_gpio_driver_init, section ".initcall6.init", align 4
@amd_fch_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @amd_fch_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_amd_fch_gpio_driver_exit = internal global ptr @amd_fch_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [70 x i8] c"gpio_amd_fch.author=Enrico Weigelt, metux IT consult <info@metux.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [54 x i8] c"gpio_amd_fch.description=AMD G-series FCH GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [44 x i8] c"gpio_amd_fch.file=drivers/gpio/gpio-amd-fch\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [25 x i8] c"gpio_amd_fch.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [41 x i8] c"gpio_amd_fch.alias=platform:gpio_amd_fch\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_amd_fch\00", [19 x i8] zeroinitializer }, align 32
@amd_fch_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform_data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amd_fch_gpio_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpio/gpio-amd-fch.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amd_fch_gpio_probe._entry_ptr = internal global ptr @amd_fch_gpio_probe._entry, section ".printk_index", align 4
@amd_fch_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@amd_fch_gpio_iores = internal constant { %struct.resource, [32 x i8] } { %struct.resource { i32 -19393280, i32 -19392513, ptr @.str.7, i32 512, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amd_fch_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@amd_fch_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amd-fch-gpio-iomem\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"amd_fch_gpio_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 180, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 182, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 146, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 169, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"amd_fch_gpio_iores\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 28, i32 30 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 177, i32 9 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [31 x i8] c"../drivers/gpio/gpio-amd-fch.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 29, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_amd_fch_gpio_driver_exit, ptr @__initcall__kmod_gpio_amd_fch__223_187_amd_fch_gpio_driver_init6, ptr @amd_fch_gpio_driver_exit, ptr @amd_fch_gpio_probe._entry, ptr @amd_fch_gpio_probe._entry_ptr, ptr @amd_fch_gpio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @amd_fch_gpio_probe.__key, ptr @.str.6, ptr @amd_fch_gpio_iores, ptr @amd_fch_gpio_probe.lock_key, ptr @amd_fch_gpio_probe.request_key, ptr @.str.7], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_fch_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_fch_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_fch_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_fch_gpio_iores to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_fch_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_fch_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_fch_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @amd_fch_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @amd_fch_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @amd_fch_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_fch_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 400, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %pdata7 = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %pdata7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pdata7, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %owner, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.dev_name.exit_crit_edge

if.end6.dev_name.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end6.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end6.dev_name.exit_crit_edge ]
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i, ptr %call.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %conv = trunc i32 %11 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %12 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %ngpio, align 4
  %gpio_names = getelementptr inbounds %struct.amd_fch_gpio_pdata, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %gpio_names to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio_names, align 4
  %names = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 22
  %15 = ptrtoint ptr %names to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %names, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %base, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @amd_fch_gpio_request, ptr %request, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @amd_fch_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %19 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @amd_fch_gpio_direction_output, ptr %direction_output, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @amd_fch_gpio_get_direction, ptr %get_direction, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @amd_fch_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %22 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @amd_fch_gpio_set, ptr %set, align 4
  %lock = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @amd_fch_gpio_probe.__key, i16 noundef signext 3) #6
  %call29 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull @amd_fch_gpio_iores) #6
  %base30 = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %base30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call29, ptr %base30, align 4
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end36

if.then33:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end36:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call39 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @amd_fch_gpio_probe.lock_key, ptr noundef nonnull @amd_fch_gpio_probe.request_key) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then33, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %24, %if.then33 ], [ %call39, %if.end36 ], [ -2, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amd_fch_gpio_request(ptr nocapture noundef readnone %chip, i32 noundef %gpio_pin) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_fch_gpio_direction_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %base.i = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %pdata.i = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %gpio_reg.i = getelementptr inbounds %struct.amd_fch_gpio_pdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gpio_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_reg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %offset
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl i32 %7, 2
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %lock = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !43
  %9 = and i32 %8, -32769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #6, !srcloc !44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_fch_gpio_direction_output(ptr noundef %gc, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %base.i = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %pdata.i = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %gpio_reg.i = getelementptr inbounds %struct.amd_fch_gpio_pdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gpio_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_reg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %gpio
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl i32 %7, 2
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %lock = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %9 = and i32 %8, -16385
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %val.0 = select i1 %tobool.not, i32 8388608, i32 12582912
  %or9 = or i32 %val.0, %10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or9)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #6, !srcloc !44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_fch_gpio_get_direction(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %base.i = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %pdata.i = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %gpio_reg.i = getelementptr inbounds %struct.amd_fch_gpio_pdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gpio_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_reg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %gpio
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl i32 %7, 2
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %lock = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  %9 = lshr i32 %8, 15
  %.lobit = and i32 %9, 1
  %10 = xor i32 %.lobit, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_fch_gpio_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %base.i = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %pdata.i = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %gpio_reg.i = getelementptr inbounds %struct.amd_fch_gpio_pdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gpio_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_reg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %offset
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl i32 %7, 2
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %lock = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !43
  %9 = shl i32 %8, 8
  %and = and i32 %9, 65536
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_fch_gpio_set(ptr noundef %gc, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %base.i = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %pdata.i = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %gpio_reg.i = getelementptr inbounds %struct.amd_fch_gpio_pdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gpio_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_reg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %gpio
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl i32 %7, 2
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %lock = getelementptr inbounds %struct.amd_fch_gpio_priv, ptr %call, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %9 = and i32 %8, -16385
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %masksel = select i1 %tobool.not, i32 0, i32 4194304
  %mask.0 = or i32 %10, %masksel
  %11 = tail call i32 @llvm.bswap.i32(i32 %mask.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #6, !srcloc !44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_gpio_amd_fch__223_187_amd_fch_gpio_driver_init6, !1, !"__initcall__kmod_gpio_amd_fch__223_187_amd_fch_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-amd-fch.c", i32 187, i32 1}
!2 = !{ptr @__exitcall_amd_fch_gpio_driver_exit, !1, !"__exitcall_amd_fch_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-amd-fch.c", i32 189, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-amd-fch.c", i32 190, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-amd-fch.c", i32 191, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias228, !11, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-amd-fch.c", i32 192, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-amd-fch.c", i32 182, i32 11}
!14 = !{ptr @amd_fch_gpio_driver, !15, !"amd_fch_gpio_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-amd-fch.c", i32 180, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-amd-fch.c", i32 146, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @amd_fch_gpio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @amd_fch_gpio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @amd_fch_gpio_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-amd-fch.c", i32 169, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @amd_fch_gpio_probe.lock_key, !28, !"lock_key", i1 false, i1 false}
!28 = !{!"../drivers/gpio/gpio-amd-fch.c", i32 177, i32 9}
!29 = !{ptr @amd_fch_gpio_probe.request_key, !28, !"request_key", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-amd-fch.c", i32 29, i32 2}
!32 = !{ptr @amd_fch_gpio_iores, !33, !"amd_fch_gpio_iores", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-amd-fch.c", i32 28, i32 30}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 688568}
!44 = !{i64 688150}
