; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-hlwd.c_pt.bc'
source_filename = "../drivers/gpio/gpio-hlwd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlwd_gpio = type { %struct.gpio_chip, %struct.irq_chip, ptr, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_hlwd__223_298_hlwd_gpio_driver_init6 = internal global ptr @hlwd_gpio_driver_init, section ".initcall6.init", align 4
@hlwd_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hlwd_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hlwd_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hlwd_gpio_driver_exit = internal global ptr @hlwd_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [62 x i8] c"gpio_hlwd.author=Jonathan Neusch\C3\A4fer <j.neuschaefer@gmx.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [47 x i8] c"gpio_hlwd.description=Nintendo Wii GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [38 x i8] c"gpio_hlwd.file=drivers/gpio/gpio-hlwd\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [22 x i8] c"gpio_hlwd.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-hlwd\00", [22 x i8] zeroinitializer }, align 32
@hlwd_gpio_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nintendo,hollywood-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hlwd_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bgpio_init failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hlwd_gpio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/gpio/gpio-hlwd.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hlwd_gpio_probe._entry_ptr = internal global ptr @hlwd_gpio_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@hlwd_gpio_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 258, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"platform_get_irq returned %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hlwd_gpio_probe._entry_ptr.11 = internal global ptr @hlwd_gpio_probe._entry.8, section ".printk_index", align 4
@hlwd_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hlwd_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"hlwd_gpio_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 291, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 293, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"hlwd_gpio_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 285, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 235, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 239, i32 48 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 252, i32 47 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 257, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.58 = private constant [28 x i8] c"../drivers/gpio/gpio-hlwd.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 282, i32 9 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_hlwd_gpio_driver_exit, ptr @__initcall__kmod_gpio_hlwd__223_298_hlwd_gpio_driver_init6, ptr @hlwd_gpio_driver_exit, ptr @hlwd_gpio_probe._entry, ptr @hlwd_gpio_probe._entry.8, ptr @hlwd_gpio_probe._entry_ptr, ptr @hlwd_gpio_probe._entry_ptr.11, ptr @hlwd_gpio_driver, ptr @.str, ptr @hlwd_gpio_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @hlwd_gpio_probe.lock_key, ptr @hlwd_gpio_probe.request_key], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hlwd_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hlwd_gpio_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hlwd_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hlwd_gpio_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hlwd_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hlwd_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hlwd_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hlwd_gpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hlwd_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @hlwd_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hlwd_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ngpios = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ngpios) #5
  %0 = ptrtoint ptr %ngpios to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ngpios, align 4, !annotation !45
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 504, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup76_crit_edge, label %if.end

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup76

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.hlwd_gpio, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup76

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #5, !srcloc !47
  %add.ptr11 = getelementptr i8, ptr %4, i32 8
  %add.ptr15 = getelementptr i8, ptr %4, i32 4
  %call16 = tail call i32 @bgpio_init(ptr noundef nonnull %call.i, ptr noundef %dev, i32 noundef 4, ptr noundef %add.ptr11, ptr noundef %4, ptr noundef null, ptr noundef %add.ptr15, ptr noundef null, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end20, label %if.end22

do.end20:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call16) #8
  br label %cleanup76

if.end22:                                         ; preds = %do.body
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull %ngpios, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool25.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool25.not, label %if.end22.if.end27_crit_edge, label %if.then26

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %ngpios to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %ngpios, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end22.if.end27_crit_edge
  %8 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ngpios, align 4
  %conv = trunc i32 %9 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %10 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %ngpio, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr33 = getelementptr i8, ptr %12, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 0) #5, !srcloc !47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr38 = getelementptr i8, ptr %14, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 -1) #5, !srcloc !47
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call.i124 = call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.7, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i124, null
  br i1 %tobool.i.not, label %if.end27.if.end72_crit_edge, label %if.then42

if.end27.if.end72_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then42:                                        ; preds = %if.end27
  %call43 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.hlwd_gpio, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call43, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp45 = icmp slt i32 %call43, 0
  br i1 %cmp45, label %do.end50, label %if.end54

do.end50:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call43) #8
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  br label %cleanup76

if.end54:                                         ; preds = %if.then42
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end54.dev_name.exit_crit_edge

if.end54.dev_name.exit_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end54.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ %21, %if.end54.dev_name.exit_crit_edge ]
  %irqc = getelementptr inbounds %struct.hlwd_gpio, ptr %call.i, i32 0, i32 1
  %name = getelementptr inbounds %struct.hlwd_gpio, ptr %call.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i, ptr %name, align 4
  %irq_mask = getelementptr inbounds %struct.hlwd_gpio, ptr %call.i, i32 0, i32 1, i32 7
  %25 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hlwd_gpio_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.hlwd_gpio, ptr %call.i, i32 0, i32 1, i32 9
  %26 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @hlwd_gpio_irq_unmask, ptr %irq_unmask, align 4
  %irq_enable = getelementptr inbounds %struct.hlwd_gpio, ptr %call.i, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %irq_enable to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @hlwd_gpio_irq_enable, ptr %irq_enable, align 4
  %irq_set_type = getelementptr inbounds %struct.hlwd_gpio, ptr %call.i, i32 0, i32 1, i32 13
  %28 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @hlwd_gpio_irq_set_type, ptr %irq_set_type, align 4
  %irq62 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %29 = ptrtoint ptr %irq62 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %irqc, ptr %irq62, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %30 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @hlwd_gpio_irqhandler, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %31 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #5
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %32 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool67.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool67.not, label %dev_name.exit.cleanup76_crit_edge, label %cleanup

dev_name.exit.cleanup76_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup76

cleanup:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  %35 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %call5.i.i, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %36 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %37 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @handle_level_irq, ptr %handler, align 4
  br label %if.end72

if.end72:                                         ; preds = %cleanup, %if.end27.if.end72_crit_edge
  %call75 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @hlwd_gpio_probe.lock_key, ptr noundef nonnull @hlwd_gpio_probe.request_key) #5
  br label %cleanup76

cleanup76:                                        ; preds = %if.end72, %dev_name.exit.cleanup76_crit_edge, %do.end50, %do.end20, %if.then4, %entry.cleanup76_crit_edge
  %retval.1 = phi i32 [ %2, %if.then4 ], [ %call16, %do.end20 ], [ %call75, %if.end72 ], [ -12, %entry.cleanup76_crit_edge ], [ -12, %dev_name.exit.cleanup76_crit_edge ], [ %19, %do.end50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ngpios) #5
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hlwd_gpio_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %call1, i32 0, i32 34
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #5
  %regs = getelementptr inbounds %struct.hlwd_gpio, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %6
  %neg = xor i32 %shl, -1
  %and = and i32 %4, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %and) #5, !srcloc !47
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hlwd_gpio_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %call1, i32 0, i32 34
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #5
  %regs = getelementptr inbounds %struct.hlwd_gpio, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %6
  %or = or i32 %shl, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %or) #5, !srcloc !47
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hlwd_gpio_irq_enable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %shl.i = shl nuw i32 1, %3
  %regs.i = getelementptr inbounds %struct.hlwd_gpio, ptr %call1.i, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %shl.i) #5, !srcloc !47
  %6 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i3 = tail call ptr @gpiochip_get_data(ptr noundef %7) #5
  %bgpio_lock.i = getelementptr inbounds %struct.gpio_chip, ptr %call1.i3, i32 0, i32 34
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i) #5
  %regs.i4 = getelementptr inbounds %struct.hlwd_gpio, ptr %call1.i3, i32 0, i32 2
  %8 = ptrtoint ptr %regs.i4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %11 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwirq.i, align 4
  %shl.i7 = shl nuw i32 1, %12
  %or.i = or i32 %shl.i7, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %regs.i4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i4, align 4
  %add.ptr13.i = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %or.i) #5, !srcloc !47
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i, i32 noundef %call4.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hlwd_gpio_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %flow_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %call1, i32 0, i32 34
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #5
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %edge_emulation = getelementptr inbounds %struct.hlwd_gpio, ptr %call1, i32 0, i32 4
  %4 = ptrtoint ptr %edge_emulation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %edge_emulation, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %edge_emulation, align 4
  %6 = zext i32 %flow_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %flow_type, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 8, label %sw.bb16
    i32 1, label %entry.sw.bb31_crit_edge
    i32 2, label %entry.sw.bb31_crit_edge56
    i32 3, label %entry.sw.bb31_crit_edge57
  ]

entry.sw.bb31_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb31

entry.sw.bb31_crit_edge56:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb31

entry.sw.bb31_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb31

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regs = getelementptr inbounds %struct.hlwd_gpio, ptr %call1, i32 0, i32 2
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %shl10 = shl nuw i32 1, %11
  %or = or i32 %shl10, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr15 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %or) #5, !srcloc !47
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regs18 = getelementptr inbounds %struct.hlwd_gpio, ptr %call1, i32 0, i32 2
  %14 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs18, align 4
  %add.ptr19 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %17 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwirq, align 4
  %shl23 = shl nuw i32 1, %18
  %neg24 = xor i32 %shl23, -1
  %and25 = and i32 %16, %neg24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs18, align 4
  %add.ptr30 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %and25) #5, !srcloc !47
  br label %cleanup

sw.bb31:                                          ; preds = %entry.sw.bb31_crit_edge, %entry.sw.bb31_crit_edge56, %entry.sw.bb31_crit_edge57
  %21 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hwirq, align 4
  %regs.i = getelementptr inbounds %struct.hlwd_gpio, ptr %call1, i32 0, i32 2
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %shl.i = shl nuw i32 1, %22
  %neg.i = xor i32 %shl.i, -1
  %and7.i = and i32 %25, %neg.i
  %29 = xor i32 %28, -1
  %xor.i = and i32 %shl.i, %29
  %or.i = or i32 %xor.i, %and7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %or.i) #5, !srcloc !47
  %32 = ptrtoint ptr %edge_emulation to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %edge_emulation, align 4
  %or12.i = or i32 %33, %shl.i
  store i32 %or12.i, ptr %edge_emulation, align 4
  %rising_edge.i = getelementptr inbounds %struct.hlwd_gpio, ptr %call1, i32 0, i32 5
  %34 = ptrtoint ptr %rising_edge.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rising_edge.i, align 4
  %and15.i = and i32 %35, %neg.i
  store i32 %and15.i, ptr %rising_edge.i, align 4
  %falling_edge.i = getelementptr inbounds %struct.hlwd_gpio, ptr %call1, i32 0, i32 6
  %36 = ptrtoint ptr %falling_edge.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %falling_edge.i, align 4
  %and18.i = and i32 %37, %neg.i
  store i32 %and18.i, ptr %falling_edge.i, align 4
  %and19.i = and i32 %flow_type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool.not.i, label %sw.bb31.if.end.i_crit_edge, label %if.then.i

sw.bb31.if.end.i_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  %or22.i = or i32 %35, %shl.i
  %38 = ptrtoint ptr %rising_edge.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or22.i, ptr %rising_edge.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb31.if.end.i_crit_edge
  %and23.i = and i32 %flow_type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end.i.cleanup_crit_edge, label %if.then25.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %or28.i = or i32 %37, %shl.i
  %39 = ptrtoint ptr %falling_edge.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or28.i, ptr %falling_edge.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25.i, %if.end.i.cleanup_crit_edge, %sw.bb16, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then25.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %sw.bb16 ], [ 0, %sw.bb ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call4) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hlwd_gpio_irqhandler(ptr noundef %desc) #2 align 64 {
entry:
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #5
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %call1, i32 0, i32 34
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #5
  %regs = getelementptr inbounds %struct.hlwd_gpio, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %and = and i32 %6, %9
  %edge_emulation = getelementptr inbounds %struct.hlwd_gpio, ptr %call1, i32 0, i32 4
  %10 = ptrtoint ptr %edge_emulation to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %edge_emulation, align 4
  %and15 = and i32 %11, %and
  %and16 = xor i32 %and15, %and
  %12 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and16, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr19 = getelementptr i8, ptr %14, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %and22 = and i32 %15, %and15
  %neg23 = xor i32 %15, -1
  %and24 = and i32 %and15, %neg23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %xor = xor i32 %15, %and15
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr29 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %xor) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr34 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %and15) #5, !srcloc !47
  %rising_edge = getelementptr inbounds %struct.hlwd_gpio, ptr %call1, i32 0, i32 5
  %20 = ptrtoint ptr %rising_edge to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rising_edge, align 4
  %and35 = and i32 %and22, %21
  %falling_edge = getelementptr inbounds %struct.hlwd_gpio, ptr %call1, i32 0, i32 6
  %22 = ptrtoint ptr %falling_edge to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %falling_edge, align 4
  %and36 = and i32 %and24, %23
  %or = or i32 %and36, %and35
  %24 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pending, align 4
  %or37 = or i32 %or, %25
  store i32 %or37, ptr %pending, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call5) #5
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %26 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.chained_irq_enter.exit_crit_edge

if.end.chained_irq_enter.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %if.end
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %28 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %29, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %29(ptr noundef %irq_data.i) #5
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %30 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %31(ptr noundef %irq_data4.i) #5
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %33, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %33(ptr noundef %irq_data4.i) #5
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %if.end.chained_irq_enter.exit_crit_edge
  %call40 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call40)
  %cmp4175 = icmp slt i32 %call40, 32
  br i1 %cmp4175, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %call1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %hwirq.076 = phi i32 [ %call40, %for.body.lr.ph ], [ %call45, %for.body.for.body_crit_edge ]
  %34 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %domain, align 4
  %call44 = call i32 @generic_handle_domain_irq(ptr noundef %35, i32 noundef %hwirq.076) #5
  %add = add nsw i32 %hwirq.076, 1
  %call45 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 32, i32 noundef %add) #5
  %cmp41 = icmp slt i32 %call45, 32
  br i1 %cmp41, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %36 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i72 = icmp eq ptr %37, null
  br i1 %tobool.not.i72, label %if.else.i73, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_exit.exit

if.else.i73:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %38 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i73, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %39, %if.else.i73 ], [ %37, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !31, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_gpio_hlwd__223_298_hlwd_gpio_driver_init6, !1, !"__initcall__kmod_gpio_hlwd__223_298_hlwd_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-hlwd.c", i32 298, i32 1}
!2 = !{ptr @__exitcall_hlwd_gpio_driver_exit, !1, !"__exitcall_hlwd_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-hlwd.c", i32 300, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-hlwd.c", i32 301, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-hlwd.c", i32 302, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-hlwd.c", i32 293, i32 12}
!12 = !{ptr @hlwd_gpio_driver, !13, !"hlwd_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-hlwd.c", i32 291, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-hlwd.c", i32 235, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hlwd_gpio_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @hlwd_gpio_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-hlwd.c", i32 239, i32 48}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-hlwd.c", i32 252, i32 47}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-hlwd.c", i32 257, i32 4}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hlwd_gpio_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @hlwd_gpio_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @hlwd_gpio_probe.lock_key, !32, !"lock_key", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpio-hlwd.c", i32 282, i32 9}
!33 = !{ptr @hlwd_gpio_probe.request_key, !32, !"request_key", i1 false, i1 false}
!34 = !{ptr @hlwd_gpio_match, !35, !"hlwd_gpio_match", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-hlwd.c", i32 285, i32 34}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i64 2153843028}
!47 = !{i64 4845948}
!48 = !{i64 2153845057}
!49 = !{i64 2153845368}
!50 = !{i64 4846366}
!51 = !{i64 2153837704}
!52 = !{i64 2153838036}
!53 = !{i64 2153838780}
!54 = !{i64 2153839112}
!55 = !{i64 2153836927}
!56 = !{i64 2153841493}
!57 = !{i64 2153841826}
!58 = !{i64 2153842193}
!59 = !{i64 2153842526}
!60 = !{i64 2153839478}
!61 = !{i64 2153839783}
!62 = !{i64 2153840268}
!63 = !{i64 2153834975}
!64 = !{i64 2153835280}
!65 = !{i64 2153835585}
!66 = !{i64 2153835852}
!67 = !{i64 2153836192}
