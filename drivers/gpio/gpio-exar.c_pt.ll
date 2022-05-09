; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-exar.c_pt.bc'
source_filename = "../drivers/gpio/gpio-exar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.exar_gpio_chip = type { %struct.gpio_chip, ptr, i32, [20 x i8], i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.72 = type { ptr }

@__initcall__kmod_gpio_exar__236_201_gpio_exar_driver_init6 = internal global ptr @gpio_exar_driver_init, section ".initcall6.init", align 4
@gpio_exar_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_exar_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_exar_driver_exit = internal global ptr @gpio_exar_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias237 = internal constant [35 x i8] c"gpio_exar.alias=platform:gpio_exar\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [39 x i8] c"gpio_exar.description=Exar GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [67 x i8] c"gpio_exar.author=Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [38 x i8] c"gpio_exar.file=drivers/gpio/gpio-exar\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [22 x i8] c"gpio_exar.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio_exar\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exar,first-pin\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@gpio_exar_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@exar_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.5, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"gpio_exar:160:(&exar_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@ida_index = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exar_gpio%d\00", [20 x i8] zeroinitializer }, align 32
@gpio_exar_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_exar_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exar-gpio\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ida_index.xa_lock\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"gpio_exar_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 194, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 197, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 144, i32 38 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 148, i32 38 }
@___asan_gen_.19 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"exar_regmap_config\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 121, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 160, i32 22 }
@___asan_gen_.28 = private unnamed_addr constant [10 x i8] c"ida_index\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 172, i32 27 }
@___asan_gen_.34 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 185, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 122, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [28 x i8] c"../drivers/gpio/gpio-exar.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 26, i32 8 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_gpio_exar_driver_exit, ptr @__initcall__kmod_gpio_exar__236_201_gpio_exar_driver_init6, ptr @gpio_exar_driver_exit, ptr @gpio_exar_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gpio_exar_probe._key, ptr @exar_regmap_config, ptr @.str.3, ptr @ida_index, ptr @.str.4, ptr @gpio_exar_probe.lock_key, ptr @gpio_exar_probe.request_key, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_exar_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_exar_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exar_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ida_index to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_exar_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_exar_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_exar_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_exar_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_exar_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_exar_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_exar_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %first_pin = alloca i32, align 4
  %ngpios = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_pin) #6
  %2 = ptrtoint ptr %first_pin to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %first_pin, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ngpios) #6
  %3 = ptrtoint ptr %ngpios to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ngpios, align 4, !annotation !44
  %call = tail call ptr @pcim_iomap_table(ptr noundef %add.ptr) #6
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull %first_pin, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i95 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull %ngpios, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool7.not = icmp eq i32 %call.i95, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call.i96 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 380, i32 noundef 3520) #6
  %tobool11.not = icmp eq ptr %call.i96, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call15 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull @exar_regmap_config, ptr noundef nonnull @gpio_exar_probe._key, ptr noundef nonnull @.str.3) #6
  %regmap = getelementptr inbounds %struct.exar_gpio_chip, ptr %call.i96, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call.i97 = call i32 @ida_alloc_range(ptr noundef nonnull @ida_index, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp = icmp slt i32 %call.i97, 0
  br i1 %cmp, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %call25 = call fastcc i32 @devm_add_action_or_reset(ptr noundef %dev1, ptr noundef nonnull %call.i96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %name = getelementptr inbounds %struct.exar_gpio_chip, ptr %call.i96, i32 0, i32 3
  %call29 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.4, i32 noundef %call.i97)
  %8 = ptrtoint ptr %call.i96 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %name, ptr %call.i96, align 4
  %parent33 = getelementptr inbounds %struct.gpio_chip, ptr %call.i96, i32 0, i32 2
  %9 = ptrtoint ptr %parent33 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %parent33, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i96, i32 0, i32 9
  %10 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @exar_direction_output, ptr %direction_output, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i96, i32 0, i32 8
  %11 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @exar_direction_input, ptr %direction_input, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i96, i32 0, i32 7
  %12 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @exar_get_direction, ptr %get_direction, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i96, i32 0, i32 10
  %13 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @exar_get_value, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i96, i32 0, i32 12
  %14 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @exar_set_value, ptr %set, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i96, i32 0, i32 19
  %15 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %base, align 4
  %16 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ngpios, align 4
  %conv = trunc i32 %17 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i96, i32 0, i32 20
  %18 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %ngpio, align 4
  %index41 = getelementptr inbounds %struct.exar_gpio_chip, ptr %call.i96, i32 0, i32 2
  %19 = ptrtoint ptr %index41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i97, ptr %index41, align 4
  %20 = ptrtoint ptr %first_pin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %first_pin, align 4
  %first_pin42 = getelementptr inbounds %struct.exar_gpio_chip, ptr %call.i96, i32 0, i32 4
  %22 = ptrtoint ptr %first_pin42 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %first_pin42, align 4
  %call45 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i96, ptr noundef nonnull %call.i96, ptr noundef nonnull @gpio_exar_probe.lock_key, ptr noundef nonnull @gpio_exar_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i96, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then18, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then18 ], [ 0, %if.end48 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i95, %if.end5.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ %call.i97, %if.end21.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call45, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ngpios) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_pin) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @exar_devm_ida_free, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %index.i = getelementptr inbounds %struct.exar_gpio_chip, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  tail call void @ida_free(ptr noundef nonnull @ida_index, i32 noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exar_devm_ida_free(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.exar_gpio_chip, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  tail call void @ida_free(ptr noundef nonnull @ida_index, i32 noundef %1) #6
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exar_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %first_pin.i = getelementptr inbounds %struct.exar_gpio_chip, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %first_pin.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_pin.i, align 4
  %add.i = add i32 %1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %tobool.not.i = icmp ult i32 %add.i, 8
  %cond.i = select i1 %tobool.not.i, i32 147, i32 153
  %rem.i = and i32 %add.i, 7
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %first_pin.i.i = getelementptr inbounds %struct.exar_gpio_chip, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %first_pin.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %first_pin.i.i, align 4
  %add.i.i = add i32 %3, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i.i)
  %tobool.not.i.i = icmp ult i32 %add.i.i, 8
  %cond.i.i = select i1 %tobool.not.i.i, i32 144, i32 150
  %rem.i.i = and i32 %add.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i11 = icmp eq i32 %value, 0
  %regmap4.i = getelementptr inbounds %struct.exar_gpio_chip, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap4.i, align 4
  %shl5.i = shl nuw nsw i32 1, %rem.i.i
  %.shl5.i = select i1 %tobool.not.i11, i32 0, i32 %shl5.i
  %call.i15.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %cond.i.i, i32 noundef %shl5.i, i32 noundef %.shl5.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %regmap = getelementptr inbounds %struct.exar_gpio_chip, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %shl = shl nuw nsw i32 1, %rem.i
  %call.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %cond.i, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exar_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %first_pin.i = getelementptr inbounds %struct.exar_gpio_chip, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %first_pin.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_pin.i, align 4
  %add.i = add i32 %1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %tobool.not.i = icmp ult i32 %add.i, 8
  %cond.i = select i1 %tobool.not.i, i32 147, i32 153
  %rem.i = and i32 %add.i, 7
  %regmap = getelementptr inbounds %struct.exar_gpio_chip, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %shl = shl nuw nsw i32 1, %rem.i
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %cond.i, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exar_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %first_pin.i = getelementptr inbounds %struct.exar_gpio_chip, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %first_pin.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_pin.i, align 4
  %add.i = add i32 %1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %tobool.not.i = icmp ult i32 %add.i, 8
  %cond.i = select i1 %tobool.not.i, i32 147, i32 153
  %rem.i = and i32 %add.i, 7
  %regmap = getelementptr inbounds %struct.exar_gpio_chip, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %shl = shl nuw nsw i32 1, %rem.i
  %call3 = tail call i32 @regmap_test_bits(ptr noundef %3, i32 noundef %cond.i, i32 noundef %shl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp ne i32 %call3, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exar_get_value(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %first_pin.i = getelementptr inbounds %struct.exar_gpio_chip, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %first_pin.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_pin.i, align 4
  %add.i = add i32 %1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %tobool.not.i = icmp ult i32 %add.i, 8
  %cond.i = select i1 %tobool.not.i, i32 144, i32 150
  %rem.i = and i32 %add.i, 7
  %regmap = getelementptr inbounds %struct.exar_gpio_chip, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %shl = shl nuw nsw i32 1, %rem.i
  %call3 = tail call i32 @regmap_test_bits(ptr noundef %3, i32 noundef %cond.i, i32 noundef %shl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool = icmp ne i32 %call3, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exar_set_value(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %first_pin.i = getelementptr inbounds %struct.exar_gpio_chip, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %first_pin.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_pin.i, align 4
  %add.i = add i32 %1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %tobool.not.i = icmp ult i32 %add.i, 8
  %cond.i = select i1 %tobool.not.i, i32 144, i32 150
  %rem.i = and i32 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %regmap4 = getelementptr inbounds %struct.exar_gpio_chip, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap4, align 4
  %shl5 = shl nuw nsw i32 1, %rem.i
  %.shl5 = select i1 %tobool.not, i32 0, i32 %shl5
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %cond.i, i32 noundef %shl5, i32 noundef %.shl5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_test_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_gpio_exar__236_201_gpio_exar_driver_init6, !1, !"__initcall__kmod_gpio_exar__236_201_gpio_exar_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-exar.c", i32 201, i32 1}
!2 = !{ptr @__exitcall_gpio_exar_driver_exit, !1, !"__exitcall_gpio_exar_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias237, !4, !"__UNIQUE_ID_alias237", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-exar.c", i32 203, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-exar.c", i32 204, i32 1}
!7 = !{ptr @__UNIQUE_ID_author239, !8, !"__UNIQUE_ID_author239", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-exar.c", i32 205, i32 1}
!9 = !{ptr @__UNIQUE_ID_file240, !10, !"__UNIQUE_ID_file240", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-exar.c", i32 206, i32 1}
!11 = !{ptr @__UNIQUE_ID_license241, !10, !"__UNIQUE_ID_license241", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-exar.c", i32 197, i32 11}
!14 = !{ptr @gpio_exar_driver, !15, !"gpio_exar_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-exar.c", i32 194, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-exar.c", i32 144, i32 38}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-exar.c", i32 148, i32 38}
!20 = !{ptr @gpio_exar_probe._key, !21, !"_key", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-exar.c", i32 160, i32 22}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-exar.c", i32 172, i32 27}
!25 = !{ptr @gpio_exar_probe.lock_key, !26, !"lock_key", i1 false, i1 false}
!26 = !{!"../drivers/gpio/gpio-exar.c", i32 185, i32 8}
!27 = !{ptr @gpio_exar_probe.request_key, !26, !"request_key", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-exar.c", i32 122, i32 11}
!30 = !{ptr @exar_regmap_config, !31, !"exar_regmap_config", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-exar.c", i32 121, i32 35}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-exar.c", i32 26, i32 8}
!34 = !{ptr @ida_index, !33, !"ida_index", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
