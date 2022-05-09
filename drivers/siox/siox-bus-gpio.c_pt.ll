; ModuleID = '/llk/IR_all_yes/drivers/siox/siox-bus-gpio.c_pt.bc'
source_filename = "../drivers/siox/siox-bus-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.siox_master = type { i32, ptr, i32, %struct.mutex, i8, ptr, %struct.device, i32, %struct.list_head, i32, i32, i32, ptr, i8, i32, ptr }
%struct.siox_gpio_ddata = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_siox_bus_gpio__172_170_siox_gpio_driver_init6 = internal global ptr @siox_gpio_driver_init, section ".initcall6.init", align 4
@siox_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @siox_gpio_probe, ptr @siox_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @siox_gpio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_siox_gpio_driver_exit = internal global ptr @siox_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author173 = internal constant [72 x i8] c"siox_bus_gpio.author=Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [46 x i8] c"siox_bus_gpio.file=drivers/siox/siox-bus-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [29 x i8] c"siox_bus_gpio.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias176 = internal constant [39 x i8] c"siox_bus_gpio.alias=platform:siox-gpio\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"siox-gpio\00", [22 x i8] zeroinitializer }, align 32
@siox_gpio_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"eckelmann,siox-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@siox_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 96, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate siox master\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"siox_gpio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/siox/siox-bus-gpio.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@siox_gpio_probe._entry_ptr = internal global ptr @siox_gpio_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"din\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get din GPIO\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dout\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get dout GPIO\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dclk\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get dclk GPIO\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dld\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get dld GPIO\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register siox master\0A\00", [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"siox_gpio_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 161, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 166, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"siox_gpio_dt_ids\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 155, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 96, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 103, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 106, i32 9 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 110, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 113, i32 9 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 117, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 120, i32 9 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 124, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 127, i32 9 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [32 x i8] c"../drivers/siox/siox-bus-gpio.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 138, i32 10 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias176, ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_siox_gpio_driver_exit, ptr @__initcall__kmod_siox_bus_gpio__172_170_siox_gpio_driver_init6, ptr @siox_gpio_driver_exit, ptr @siox_gpio_probe._entry, ptr @siox_gpio_probe._entry_ptr, ptr @siox_gpio_driver, ptr @.str, ptr @siox_gpio_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_gpio_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @siox_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @siox_gpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @siox_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @siox_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siox_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @siox_master_alloc(ptr noundef %dev1, i32 noundef 16) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %driver_data.i.i, align 4
  %driver_data.i.i74 = getelementptr inbounds %struct.siox_master, ptr %call, i32 0, i32 6, i32 8
  %1 = ptrtoint ptr %driver_data.i.i74 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i74, align 4
  %call4 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef 1) #5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %2, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call4 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %4, ptr noundef nonnull @.str.7) #5
  br label %err

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 3) #5
  %dout = getelementptr inbounds %struct.siox_gpio_ddata, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %dout to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call12, ptr %dout, align 4
  %cmp.i75 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call12 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %6, ptr noundef nonnull @.str.9) #5
  br label %err

if.end19:                                         ; preds = %if.end11
  %call20 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 3) #5
  %dclk = getelementptr inbounds %struct.siox_gpio_ddata, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %dclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call20, ptr %dclk, align 4
  %cmp.i76 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call20 to i32
  %call26 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %8, ptr noundef nonnull @.str.11) #5
  br label %err

if.end27:                                         ; preds = %if.end19
  %call28 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 3) #5
  %dld = getelementptr inbounds %struct.siox_gpio_ddata, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %dld to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call28, ptr %dld, align 4
  %cmp.i77 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call28 to i32
  %call34 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %10, ptr noundef nonnull @.str.13) #5
  br label %err

if.end35:                                         ; preds = %if.end27
  %pushpull = getelementptr inbounds %struct.siox_master, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %pushpull to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @siox_gpio_pushpull, ptr %pushpull, align 4
  %12 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %call, align 8
  %call36 = tail call i32 @siox_master_register(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %if.then38

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call36, ptr noundef nonnull @.str.14) #5
  br label %err

err:                                              ; preds = %if.then38, %if.then31, %if.then23, %if.then15, %if.then7
  %ret.0 = phi i32 [ %call10, %if.then7 ], [ %call18, %if.then15 ], [ %call26, %if.then23 ], [ %call34, %if.then31 ], [ %call36, %if.then38 ]
  %dev.i = getelementptr inbounds %struct.siox_master, ptr %call, i32 0, i32 6
  tail call void @put_device(ptr noundef %dev.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end35.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.0, %err ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siox_gpio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @siox_master_unregister(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @siox_master_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siox_gpio_pushpull(ptr nocapture noundef readonly %smaster, i32 noundef %setbuf_len, ptr nocapture noundef readonly %setbuf, i32 noundef %getbuf_len, ptr nocapture noundef writeonly %getbuf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %setbuf_len, i32 %getbuf_len)
  %dout = getelementptr inbounds %struct.siox_gpio_ddata, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dout, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %4, i32 noundef 0) #5
  %dclk = getelementptr inbounds %struct.siox_gpio_ddata, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dclk, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef 0) #5
  %dld = getelementptr inbounds %struct.siox_gpio_ddata, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dld to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dld, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 0) #5
  %10 = ptrtoint ptr %dld to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dld, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp263.not = icmp eq i32 %2, 0
  br i1 %cmp263.not, label %entry.for.end30_crit_edge, label %for.body.lr.ph

entry.for.end30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.body.lr.ph:                                   ; preds = %entry
  %sub = sub i32 %2, %setbuf_len
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %if.end27.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.064, i32 %sub)
  %cmp3.not = icmp ult i32 %i.064, %sub
  br i1 %cmp3.not, label %for.body.for.body8.preheader_crit_edge, label %if.then

for.body.for.body8.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.preheader

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %sub5 = sub i32 %i.064, %sub
  %arrayidx = getelementptr i8, ptr %setbuf, i32 %sub5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  br label %for.body8.preheader

for.body8.preheader:                              ; preds = %if.then, %for.body.for.body8.preheader_crit_edge
  %set.160.ph = phi i8 [ 0, %for.body.for.body8.preheader_crit_edge ], [ %13, %if.then ]
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body8.preheader
  %j.062 = phi i32 [ %inc, %for.body8.for.body8_crit_edge ], [ 0, %for.body8.preheader ]
  %get.061 = phi i8 [ %spec.select, %for.body8.for.body8_crit_edge ], [ 0, %for.body8.preheader ]
  %set.160 = phi i8 [ %shl19, %for.body8.for.body8_crit_edge ], [ %set.160.ph, %for.body8.preheader ]
  %shl = shl i8 %get.061, 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call10 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp ne i32 %call10, 0
  %16 = zext i1 %tobool.not to i8
  %spec.select = or i8 %shl, %16
  %17 = ptrtoint ptr %dout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dout, align 4
  %19 = xor i8 %set.160, -1
  %20 = lshr i8 %19, 7
  %21 = zext i8 %20 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %18, i32 noundef %21) #5
  %shl19 = shl i8 %set.160, 1
  %22 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dclk, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %23, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #5
  %25 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dclk, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %26, i32 noundef 0) #5
  %inc = add nuw nsw i32 %j.062, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8

for.end:                                          ; preds = %for.body8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.064, i32 %getbuf_len)
  %cmp23 = icmp ult i32 %i.064, %getbuf_len
  br i1 %cmp23, label %if.then25, label %for.end.if.end27_crit_edge

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then25:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx26 = getelementptr i8, ptr %getbuf, i32 %i.064
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select, ptr %arrayidx26, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.end.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 0) #5
  %inc29 = add nuw i32 %i.064, 1
  %exitcond66.not = icmp eq i32 %inc29, %2
  br i1 %exitcond66.not, label %if.end27.for.end30_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end27.for.end30_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.end30:                                        ; preds = %if.end27.for.end30_crit_edge, %entry.for.end30_crit_edge
  %29 = ptrtoint ptr %dld to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dld, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %30, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 0) #5
  %32 = ptrtoint ptr %dld to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dld, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %33, i32 noundef 0) #5
  %34 = ptrtoint ptr %dout to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dout, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %35, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @siox_master_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @siox_master_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_siox_bus_gpio__172_170_siox_gpio_driver_init6, !1, !"__initcall__kmod_siox_bus_gpio__172_170_siox_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/siox/siox-bus-gpio.c", i32 170, i32 1}
!2 = !{ptr @__exitcall_siox_gpio_driver_exit, !1, !"__exitcall_siox_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author173, !4, !"__UNIQUE_ID_author173", i1 false, i1 false}
!4 = !{!"../drivers/siox/siox-bus-gpio.c", i32 172, i32 1}
!5 = !{ptr @__UNIQUE_ID_file174, !6, !"__UNIQUE_ID_file174", i1 false, i1 false}
!6 = !{!"../drivers/siox/siox-bus-gpio.c", i32 173, i32 1}
!7 = !{ptr @__UNIQUE_ID_license175, !6, !"__UNIQUE_ID_license175", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias176, !9, !"__UNIQUE_ID_alias176", i1 false, i1 false}
!9 = !{!"../drivers/siox/siox-bus-gpio.c", i32 174, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/siox/siox-bus-gpio.c", i32 166, i32 11}
!12 = !{ptr @siox_gpio_driver, !13, !"siox_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/siox/siox-bus-gpio.c", i32 161, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/siox/siox-bus-gpio.c", i32 96, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @siox_gpio_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @siox_gpio_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/siox/siox-bus-gpio.c", i32 103, i32 35}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/siox/siox-bus-gpio.c", i32 106, i32 9}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/siox/siox-bus-gpio.c", i32 110, i32 36}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/siox/siox-bus-gpio.c", i32 113, i32 9}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/siox/siox-bus-gpio.c", i32 117, i32 36}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/siox/siox-bus-gpio.c", i32 120, i32 9}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/siox/siox-bus-gpio.c", i32 124, i32 35}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/siox/siox-bus-gpio.c", i32 127, i32 9}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/siox/siox-bus-gpio.c", i32 138, i32 10}
!40 = distinct !{null, !41, !"siox_loadhigh_ns", i1 false, i1 false}
!41 = !{!"../drivers/siox/siox-bus-gpio.c", i32 25, i32 21}
!42 = distinct !{null, !43, !"siox_clkhigh_ns", i1 false, i1 false}
!43 = !{!"../drivers/siox/siox-bus-gpio.c", i32 24, i32 21}
!44 = distinct !{null, !45, !"siox_bytegap_ns", i1 false, i1 false}
!45 = !{!"../drivers/siox/siox-bus-gpio.c", i32 26, i32 21}
!46 = !{ptr @siox_gpio_dt_ids, !47, !"siox_gpio_dt_ids", i1 false, i1 false}
!47 = !{!"../drivers/siox/siox-bus-gpio.c", i32 155, i32 34}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
