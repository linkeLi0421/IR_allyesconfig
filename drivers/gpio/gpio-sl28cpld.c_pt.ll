; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-sl28cpld.c_pt.bc'
source_filename = "../drivers/gpio/gpio-sl28cpld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_regmap_config = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
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
%struct.regmap_irq_chip = type { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i16, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_sl28cpld__227_157_sl28cpld_gpio_driver_init6 = internal global ptr @sl28cpld_gpio_driver_init, section ".initcall6.init", align 4
@sl28cpld_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sl28cpld_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sl28cpld_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sl28cpld_gpio_driver_exit = internal global ptr @sl28cpld_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [47 x i8] c"gpio_sl28cpld.description=sl28cpld GPIO Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [54 x i8] c"gpio_sl28cpld.author=Michael Walle <michael@walle.cc>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [46 x i8] c"gpio_sl28cpld.file=drivers/gpio/gpio-sl28cpld\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [26 x i8] c"gpio_sl28cpld.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sl28cpld-gpio\00", [18 x i8] zeroinitializer }, align 32
@sl28cpld_gpio_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"kontron,sl28cpld-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"kontron,sl28cpld-gpi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"kontron,sl28cpld-gpo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@sl28cpld_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 135, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unknown type %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sl28cpld_gpio_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpio/gpio-sl28cpld.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sl28cpld_gpio_probe._entry_ptr = internal global ptr @sl28cpld_gpio_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sl28cpld-gpio-irq\00", [46 x i8] zeroinitializer }, align 32
@sl28cpld_gpio_irqs = internal constant { [8 x %struct.regmap_irq], [64 x i8] } { [8 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }], [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"sl28cpld_gpio_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 150, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 153, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [23 x i8] c"sl28cpld_gpio_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 142, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 104, i32 45 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 135, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 57, i32 38 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 68, i32 19 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"sl28cpld_gpio_irqs\00", align 1
@___asan_gen_.46 = private constant [32 x i8] c"../drivers/gpio/gpio-sl28cpld.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 37, i32 32 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_sl28cpld_gpio_driver_exit, ptr @__initcall__kmod_gpio_sl28cpld__227_157_sl28cpld_gpio_driver_init6, ptr @sl28cpld_gpio_driver_exit, ptr @sl28cpld_gpio_probe._entry, ptr @sl28cpld_gpio_probe._entry_ptr, ptr @sl28cpld_gpio_driver, ptr @.str, ptr @sl28cpld_gpio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sl28cpld_gpio_irqs], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl28cpld_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl28cpld_gpio_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl28cpld_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl28cpld_gpio_irqs to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sl28cpld_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sl28cpld_gpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sl28cpld_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sl28cpld_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl28cpld_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %irq_data.i = alloca ptr, align 4
  %config = alloca %struct.gpio_regmap_config, align 4
  %base = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %config) #5
  %0 = getelementptr inbounds i8, ptr %config, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base) #5
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %base, align 4, !annotation !41
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @device_get_match_data(ptr noundef %dev) #5
  %5 = ptrtoint ptr %call to i32
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull %base, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call12 = call ptr @dev_get_regmap(ptr noundef %7, ptr noundef null) #5
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %regmap16 = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 1
  %8 = ptrtoint ptr %regmap16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %regmap16, align 4
  %9 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %config, align 4
  %ngpio = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 4
  %10 = ptrtoint ptr %ngpio to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %ngpio, align 4
  %11 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 1, label %sw.bb
    i32 3, label %sw.bb26
    i32 2, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.end15
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 4
  %add = add i32 %13, 2
  %reg_dat_base = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 6
  %14 = ptrtoint ptr %reg_dat_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %reg_dat_base, align 4
  %add19 = add i32 %13, 1
  %reg_set_base = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 7
  %15 = ptrtoint ptr %reg_set_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add19, ptr %reg_set_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  %add20. = select i1 %tobool21.not, i32 -1, i32 %13
  %reg_dir_out_base = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 10
  %16 = ptrtoint ptr %reg_dir_out_base to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add20., ptr %reg_dir_out_base, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_data.i) #5
  %17 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %irq_data.i, align 4, !annotation !41
  %call.i.i = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.7) #5
  br i1 %call.i.i, label %if.end.i, label %sw.bb.sl28cpld_gpio_irq_init.exit_crit_edge

sw.bb.sl28cpld_gpio_irq_init.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sl28cpld_gpio_irq_init.exit

if.end.i:                                         ; preds = %sw.bb
  %call2.i = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.sl28cpld_gpio_irq_init.exit.thread_crit_edge, label %if.end4.i

if.end.i.sl28cpld_gpio_irq_init.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sl28cpld_gpio_irq_init.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call.i39.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 96, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i39.i, null
  br i1 %tobool.not.i, label %if.end4.i.sl28cpld_gpio_irq_init.exit.thread_crit_edge, label %if.end7.i

if.end4.i.sl28cpld_gpio_irq_init.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sl28cpld_gpio_irq_init.exit.thread

if.end7.i:                                        ; preds = %if.end4.i
  %18 = ptrtoint ptr %call.i39.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.8, ptr %call.i39.i, align 4
  %irqs.i = getelementptr inbounds %struct.regmap_irq_chip, ptr %call.i39.i, i32 0, i32 15
  %19 = ptrtoint ptr %irqs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sl28cpld_gpio_irqs, ptr %irqs.i, align 4
  %num_irqs.i = getelementptr inbounds %struct.regmap_irq_chip, ptr %call.i39.i, i32 0, i32 16
  %20 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %num_irqs.i, align 4
  %num_regs.i = getelementptr inbounds %struct.regmap_irq_chip, ptr %call.i39.i, i32 0, i32 14
  %21 = ptrtoint ptr %num_regs.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %num_regs.i, align 4
  %add.i = add i32 %13, 4
  %status_base.i = getelementptr inbounds %struct.regmap_irq_chip, ptr %call.i39.i, i32 0, i32 5
  %22 = ptrtoint ptr %status_base.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %status_base.i, align 4
  %add8.i = add i32 %13, 3
  %mask_base.i = getelementptr inbounds %struct.regmap_irq_chip, ptr %call.i39.i, i32 0, i32 6
  %23 = ptrtoint ptr %mask_base.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add8.i, ptr %mask_base.i, align 4
  %mask_invert.i = getelementptr inbounds %struct.regmap_irq_chip, ptr %call.i39.i, i32 0, i32 13
  %24 = ptrtoint ptr %mask_invert.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i = load i16, ptr %mask_invert.i, align 4
  %bf.set.i = or i16 %bf.load.i, 8192
  store i16 %bf.set.i, ptr %mask_invert.i, align 4
  %ack_base.i = getelementptr inbounds %struct.regmap_irq_chip, ptr %call.i39.i, i32 0, i32 8
  %25 = ptrtoint ptr %ack_base.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %ack_base.i, align 4
  %call10.i = call ptr @dev_fwnode(ptr noundef %dev) #5
  %26 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap16, align 4
  %call11.i = call i32 @devm_regmap_add_irq_chip_fwnode(ptr noundef %dev, ptr noundef %call10.i, ptr noundef %27, i32 noundef %call2.i, i32 noundef 8320, i32 noundef 0, ptr noundef nonnull %call.i39.i, ptr noundef nonnull %irq_data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end7.i.sl28cpld_gpio_irq_init.exit.thread_crit_edge

if.end7.i.sl28cpld_gpio_irq_init.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sl28cpld_gpio_irq_init.exit.thread

if.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_data.i, align 4
  %call15.i = call ptr @regmap_irq_get_domain(ptr noundef %29) #5
  %irq_domain.i = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 13
  %30 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call15.i, ptr %irq_domain.i, align 4
  br label %sl28cpld_gpio_irq_init.exit

sl28cpld_gpio_irq_init.exit.thread:               ; preds = %if.end7.i.sl28cpld_gpio_irq_init.exit.thread_crit_edge, %if.end4.i.sl28cpld_gpio_irq_init.exit.thread_crit_edge, %if.end.i.sl28cpld_gpio_irq_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call11.i, %if.end7.i.sl28cpld_gpio_irq_init.exit.thread_crit_edge ], [ -12, %if.end4.i.sl28cpld_gpio_irq_init.exit.thread_crit_edge ], [ %call2.i, %if.end.i.sl28cpld_gpio_irq_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_data.i) #5
  br label %cleanup

sl28cpld_gpio_irq_init.exit:                      ; preds = %if.end14.i, %sw.bb.sl28cpld_gpio_irq_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_data.i) #5
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base, align 4
  %reg_set_base28 = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 7
  %33 = ptrtoint ptr %reg_set_base28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %reg_set_base28, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base, align 4
  %reg_dat_base31 = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 6
  %36 = ptrtoint ptr %reg_dat_base31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %reg_dat_base31, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %5) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb26, %sl28cpld_gpio_irq_init.exit
  %call34 = call ptr @devm_gpio_regmap_register(ptr noundef %dev, ptr noundef nonnull %config) #5
  %cmp.i.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  %37 = ptrtoint ptr %call34 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %37, i32 0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %sl28cpld_gpio_irq_init.exit.thread, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %spec.select.i, %sw.epilog ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ], [ %retval.0.i.ph, %sl28cpld_gpio_irq_init.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpio_regmap_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip_fwnode(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_gpio_sl28cpld__227_157_sl28cpld_gpio_driver_init6, !1, !"__initcall__kmod_gpio_sl28cpld__227_157_sl28cpld_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-sl28cpld.c", i32 157, i32 1}
!2 = !{ptr @__exitcall_sl28cpld_gpio_driver_exit, !1, !"__exitcall_sl28cpld_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-sl28cpld.c", i32 159, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-sl28cpld.c", i32 160, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-sl28cpld.c", i32 161, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-sl28cpld.c", i32 153, i32 11}
!12 = !{ptr @sl28cpld_gpio_driver, !13, !"sl28cpld_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-sl28cpld.c", i32 150, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-sl28cpld.c", i32 104, i32 45}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-sl28cpld.c", i32 135, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sl28cpld_gpio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sl28cpld_gpio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-sl28cpld.c", i32 57, i32 38}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-sl28cpld.c", i32 68, i32 19}
!28 = !{ptr @sl28cpld_gpio_irqs, !29, !"sl28cpld_gpio_irqs", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-sl28cpld.c", i32 37, i32 32}
!30 = !{ptr @sl28cpld_gpio_of_match, !31, !"sl28cpld_gpio_of_match", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-sl28cpld.c", i32 142, i32 34}
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
