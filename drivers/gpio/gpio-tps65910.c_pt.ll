; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-tps65910.c_pt.bc'
source_filename = "../drivers/gpio/gpio-tps65910.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tps65910_gpio = type { %struct.gpio_chip, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.84, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.tps65910 = type { ptr, ptr, ptr, i32, ptr, i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.tps65910_board = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.tps65910_sleep_keepon_data, [9 x i8], [14 x i32], [14 x ptr] }
%struct.tps65910_sleep_keepon_data = type { i8, [3 x i8] }

@__initcall__kmod_gpio_tps65910__291_181_tps65910_gpio_init4 = internal global ptr @tps65910_gpio_init, section ".initcall4.init", align 4
@tps65910_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tps65910_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tps65910-gpio\00", [18 x i8] zeroinitializer }, align 32
@tps65910_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"GPIO Sleep setting failed with err %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tps65910_gpio_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpio/gpio-tps65910.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps65910_gpio_probe._entry_ptr = internal global ptr @tps65910_gpio_probe._entry, section ".printk_index", align 4
@tps65910_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tps65910_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,en-gpio-sleep\00", [47 x i8] zeroinitializer }, align 32
@tps65910_parse_dt_for_gpio.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 22, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpio_tps65910\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tps65910_parse_dt_for_gpio\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ti,en-gpio-sleep not specified\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"tps65910_gpio_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 172, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 173, i32 20 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 163, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 168, i32 9 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 87, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [32 x i8] c"../drivers/gpio/gpio-tps65910.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 89, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__initcall__kmod_gpio_tps65910__291_181_tps65910_gpio_init4, ptr @tps65910_gpio_probe._entry, ptr @tps65910_gpio_probe._entry_ptr, ptr @tps65910_gpio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tps65910_gpio_probe.lock_key, ptr @tps65910_gpio_probe.request_key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_gpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65910_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %prop_array.i = alloca [9 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %call6 = tail call ptr @dev_fwnode(ptr noundef %1) #6
  tail call void @device_set_node(ptr noundef %dev, ptr noundef %call6) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 352, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tps659109 = getelementptr inbounds %struct.tps65910_gpio, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %tps659109 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %tps659109, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %owner, align 4
  %i2c_client = getelementptr inbounds %struct.tps65910, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %name, ptr %call.i, align 4
  %id.i = getelementptr inbounds %struct.tps65910, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb13
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %if.end.sw.epilog_crit_edge
  %.sink = phi i16 [ 9, %sw.bb13 ], [ 6, %if.end.sw.epilog_crit_edge ]
  %ngpio15 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %16 = ptrtoint ptr %ngpio15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %.sink, ptr %ngpio15, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 23
  %17 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %can_sleep, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tps65910_gpio_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %19 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tps65910_gpio_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %20 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @tps65910_gpio_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tps65910_gpio_get, ptr %get, align 4
  %parent23 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %parent23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %parent23, align 4
  %tobool24.not = icmp eq ptr %7, null
  br i1 %tobool24.not, label %land.lhs.true33.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool25.not = icmp eq i32 %24, 0
  %base30.c = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %. = select i1 %tobool25.not, i32 -1, i32 %24
  %25 = ptrtoint ptr %base30.c to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %., ptr %base30.c, align 4
  br label %for.cond.preheader

land.lhs.true33.critedge:                         ; preds = %sw.epilog
  %base30.c104 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %26 = ptrtoint ptr %base30.c104 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %base30.c104, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %tobool35.not = icmp eq ptr %30, null
  br i1 %tobool35.not, label %land.lhs.true33.critedge.skip_init_crit_edge, label %if.then36

land.lhs.true33.critedge.skip_init_crit_edge:     ; preds = %land.lhs.true33.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_init

if.then36:                                        ; preds = %land.lhs.true33.critedge
  %ngpio39 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %31 = ptrtoint ptr %ngpio39 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ngpio39, align 4
  %conv = zext i16 %32 to i32
  %of_plat_data.i = getelementptr inbounds %struct.tps65910, ptr %3, i32 0, i32 4
  %33 = ptrtoint ptr %of_plat_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_plat_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %prop_array.i) #6
  %35 = call ptr @memset(ptr %prop_array.i, i32 255, i32 36)
  %36 = tail call i32 @llvm.smin.i32(i32 %conv, i32 9) #6
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %34, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node.i, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %41, ptr noundef nonnull @.str.6, ptr noundef nonnull %prop_array.i, i32 noundef %36, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %do.body.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then36
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp1029.i.not = icmp eq i16 %32, 0
  br i1 %cmp1029.i.not, label %for.cond.preheader.i.if.end41_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.if.end41_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %smax.i = call i32 @llvm.smax.i32(i32 %36, i32 1) #6
  br label %for.body.i

do.body.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tps65910_parse_dt_for_gpio.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tps65910_gpio_probe, %if.end41)) #6
          to label %if.then8.i [label %if.end41], !srcloc !33

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tps65910_parse_dt_for_gpio.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.9) #6
  br label %if.end41

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %idx.030.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr [9 x i32], ptr %prop_array.i, i32 0, i32 %idx.030.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp11.i = icmp ne i32 %43, 0
  %arrayidx12.i = getelementptr %struct.tps65910_board, ptr %34, i32 0, i32 10, i32 %idx.030.i
  %frombool13.i = zext i1 %cmp11.i to i8
  %44 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool13.i, ptr %arrayidx12.i, align 1
  %inc.i = add nuw nsw i32 %idx.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond.not.i, label %for.body.i.if.end41_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end41_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41:                                         ; preds = %for.body.i.if.end41_crit_edge, %if.then8.i, %do.body.i, %for.cond.preheader.i.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %prop_array.i) #6
  %tobool42.not = icmp eq ptr %34, null
  br i1 %tobool42.not, label %if.end41.skip_init_crit_edge, label %if.end41.for.cond.preheader_crit_edge

if.end41.for.cond.preheader_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

if.end41.skip_init_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_init

for.cond.preheader:                               ; preds = %if.end41.for.cond.preheader_crit_edge, %land.lhs.true
  %pdata.0114 = phi ptr [ %34, %if.end41.for.cond.preheader_crit_edge ], [ %7, %land.lhs.true ]
  %ngpio46 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %45 = ptrtoint ptr %ngpio46 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ngpio46, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp109.not = icmp eq i16 %46, 0
  br i1 %cmp109.not, label %for.cond.preheader.skip_init_crit_edge, label %for.body.lr.ph

for.cond.preheader.skip_init_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_init

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %regmap = getelementptr inbounds %struct.tps65910, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tps65910_board, ptr %pdata.0114, i32 0, i32 10, i32 %i.0110
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool49.not = icmp eq i8 %48, 0
  br i1 %tobool49.not, label %for.body.for.inc_crit_edge, label %if.end51

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end51:                                         ; preds = %for.body
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %add = add nuw nsw i32 %i.0110, 96
  %call.i105 = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef %add, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp53 = icmp slt i32 %call.i105, 0
  br i1 %cmp53, label %do.end, label %if.end51.for.inc_crit_edge

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.1, i32 noundef %call.i105) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end51.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0110, 1
  %53 = ptrtoint ptr %ngpio46 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %ngpio46, align 4
  %conv47 = zext i16 %54 to i32
  %cmp = icmp ult i32 %inc, %conv47
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.skip_init_crit_edge

for.inc.skip_init_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_init

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

skip_init:                                        ; preds = %for.inc.skip_init_crit_edge, %for.cond.preheader.skip_init_crit_edge, %if.end41.skip_init_crit_edge, %land.lhs.true33.critedge.skip_init_crit_edge
  %call60 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @tps65910_gpio_probe.lock_key, ptr noundef nonnull @tps65910_gpio_probe.request_key) #6
  br label %cleanup

cleanup:                                          ; preds = %skip_init, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call60, %skip_init ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_gpio_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %tps659101 = getelementptr inbounds %struct.tps65910_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %tps659101 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tps659101, align 4
  %regmap = getelementptr inbounds %struct.tps65910, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %add = add i32 %offset, 96
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_gpio_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %tps659101 = getelementptr inbounds %struct.tps65910_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %tps659101 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tps659101, align 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %tps659101.i = getelementptr inbounds %struct.tps65910_gpio, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %tps659101.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tps659101.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp ne i32 %value, 0
  %regmap3.i = getelementptr inbounds %struct.tps65910, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap3.i, align 4
  %add4.i = add i32 %offset, 96
  %..i = zext i1 %tobool.not.i to i32
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add4.i, i32 noundef 1, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %regmap = getelementptr inbounds %struct.tps65910, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i5 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add4.i, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tps65910_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %tps659101 = getelementptr inbounds %struct.tps65910_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %tps659101 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tps659101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp ne i32 %value, 0
  %regmap3 = getelementptr inbounds %struct.tps65910, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap3, align 4
  %add4 = add i32 %offset, 96
  %. = zext i1 %tobool.not to i32
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add4, i32 noundef 1, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_gpio_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %tps659101 = getelementptr inbounds %struct.tps65910_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %tps659101 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tps659101, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !35
  %regmap = getelementptr inbounds %struct.tps65910, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %add = add i32 %offset, 96
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %val) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = lshr i32 %6, 1
  %and.lobit = and i32 %and, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %and.lobit
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !19, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_gpio_tps65910__291_181_tps65910_gpio_init4, !1, !"__initcall__kmod_gpio_tps65910__291_181_tps65910_gpio_init4", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-tps65910.c", i32 181, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-tps65910.c", i32 173, i32 20}
!4 = !{ptr @tps65910_gpio_driver, !5, !"tps65910_gpio_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-tps65910.c", i32 172, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-tps65910.c", i32 163, i32 4}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tps65910_gpio_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @tps65910_gpio_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @tps65910_gpio_probe.lock_key, !15, !"lock_key", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-tps65910.c", i32 168, i32 9}
!16 = !{ptr @tps65910_gpio_probe.request_key, !15, !"request_key", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-tps65910.c", i32 87, i32 4}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-tps65910.c", i32 89, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tps65910_parse_dt_for_gpio.__UNIQUE_ID_ddebug290, !20, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2148694514, i64 2148694519, i64 2148694532, i64 2148694576, i64 2148694610, i64 2148694631}
!34 = !{i8 0, i8 2}
!35 = !{!"auto-init"}
