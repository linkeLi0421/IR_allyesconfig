; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-oc-tiny.c_pt.bc'
source_filename = "../drivers/spi/spi-oc-tiny.c"
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_bitbang = type { %struct.mutex, i8, i8, i16, ptr, ptr, ptr, ptr, [4 x ptr], ptr }
%struct.tiny_spi = type { %struct.spi_bitbang, %struct.completion, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.tiny_spi_platform_data = type { i32, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_oc_tiny__236_301_tiny_spi_driver_init6 = internal global ptr @tiny_spi_driver_init, section ".initcall6.init", align 4
@tiny_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tiny_spi_probe, ptr @tiny_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tiny_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tiny_spi_driver_exit = internal global ptr @tiny_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [50 x i8] c"spi_oc_tiny.description=OpenCores tiny SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [54 x i8] c"spi_oc_tiny.author=Thomas Chou <thomas@wytron.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [41 x i8] c"spi_oc_tiny.file=drivers/spi/spi-oc-tiny\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"spi_oc_tiny.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias241 = internal constant [39 x i8] c"spi_oc_tiny.alias=platform:spi_oc_tiny\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_oc_tiny\00", [20 x i8] zeroinitializer }, align 32
@tiny_spi_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"opencores,tiny-spi-rtlsvn2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tiny_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"base %p, irq %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tiny_spi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-oc-tiny.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tiny_spi_probe._entry_ptr = internal global ptr @tiny_spi_probe._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"baud-width\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"tiny_spi_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 292, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 296, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"tiny_spi_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 285, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 265, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 87, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 198, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [29 x i8] c"../drivers/spi/spi-oc-tiny.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 200, i32 32 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_tiny_spi_driver_exit, ptr @__initcall__kmod_spi_oc_tiny__236_301_tiny_spi_driver_init6, ptr @tiny_spi_driver_exit, ptr @tiny_spi_probe._entry, ptr @tiny_spi_probe._entry_ptr, ptr @tiny_spi_driver, ptr @.str, ptr @tiny_spi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @init_completion.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiny_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiny_spi_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiny_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tiny_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tiny_spi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tiny_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tiny_spi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiny_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 236, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %conv = trunc i32 %3 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %bus_num, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %mode_bits, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %6 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tiny_spi_setup, ptr %setup, align 4
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %7 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i83 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i83 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %driver_data.i.i83, align 4
  %master4 = getelementptr inbounds %struct.spi_bitbang, ptr %9, i32 0, i32 4
  %11 = ptrtoint ptr %master4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %master4, align 4
  %setup_transfer = getelementptr inbounds %struct.spi_bitbang, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %setup_transfer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @tiny_spi_setup_transfer, ptr %setup_transfer, align 4
  %txrx_bufs = getelementptr inbounds %struct.spi_bitbang, ptr %9, i32 0, i32 7
  %13 = ptrtoint ptr %txrx_bufs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tiny_spi_txrx_bufs, ptr %txrx_bufs, align 4
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.tiny_spi, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call7 to i32
  br label %spi_controller_put.exit

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.tiny_spi, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call14, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp = icmp sgt i32 %call14, -1
  br i1 %cmp, label %if.then17, label %if.end13.if.end24_crit_edge

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then17:                                        ; preds = %if.end13
  %done = getelementptr inbounds %struct.tiny_spi, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.tiny_spi, ptr %9, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #7
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %call.i84 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %19, ptr noundef nonnull @tiny_spi_irq, ptr noundef null, i32 noundef 0, ptr noundef %21, ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool21.not = icmp eq i32 %call.i84, 0
  br i1 %tobool21.not, label %if.then17.if.end24_crit_edge, label %if.then17.spi_controller_put.exit_crit_edge

if.then17.spi_controller_put.exit_crit_edge:      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end24:                                         ; preds = %if.then17.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  %tobool25.not = icmp eq ptr %1, null
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %freq27 = getelementptr inbounds %struct.tiny_spi, ptr %9, i32 0, i32 4
  %24 = ptrtoint ptr %freq27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %freq27, align 4
  %baudwidth = getelementptr inbounds %struct.tiny_spi_platform_data, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %baudwidth to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %baudwidth, align 4
  %baudwidth28 = getelementptr inbounds %struct.tiny_spi, ptr %9, i32 0, i32 5
  %27 = ptrtoint ptr %baudwidth28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %baudwidth28, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end24
  %28 = ptrtoint ptr %driver_data.i.i83 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i83, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %30 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val.i, align 4, !annotation !42
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.else.tiny_spi_of_probe.exit_crit_edge, label %if.end.i

if.else.tiny_spi_of_probe.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %tiny_spi_of_probe.exit

if.end.i:                                         ; preds = %if.else
  %master.i = getelementptr inbounds %struct.spi_bitbang, ptr %29, i32 0, i32 4
  %33 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master.i, align 4
  %of_node4.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %of_node4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %31, ptr %of_node4.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %31, ptr noundef nonnull @.str.7, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool6.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i, align 4
  %freq.i = getelementptr inbounds %struct.tiny_spi, ptr %29, i32 0, i32 4
  %38 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %freq.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i.if.end8.i_crit_edge
  %call.i.i1.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %31, ptr noundef nonnull @.str.8, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i1.i)
  %tobool10.not.i = icmp sgt i32 %call.i.i1.i, -1
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end8.i.tiny_spi_of_probe.exit_crit_edge

if.end8.i.tiny_spi_of_probe.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tiny_spi_of_probe.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i, align 4
  %baudwidth.i = getelementptr inbounds %struct.tiny_spi, ptr %29, i32 0, i32 5
  %41 = ptrtoint ptr %baudwidth.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %baudwidth.i, align 4
  br label %tiny_spi_of_probe.exit

tiny_spi_of_probe.exit:                           ; preds = %if.then11.i, %if.end8.i.tiny_spi_of_probe.exit_crit_edge, %if.else.tiny_spi_of_probe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end33

if.end33:                                         ; preds = %tiny_spi_of_probe.exit, %if.then26
  %call35 = call i32 @spi_bitbang_start(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.end, label %if.end33.spi_controller_put.exit_crit_edge

if.end33.spi_controller_put.exit_crit_edge:       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %43, i32 noundef %45) #10
  br label %cleanup

spi_controller_put.exit:                          ; preds = %if.end33.spi_controller_put.exit_crit_edge, %if.then17.spi_controller_put.exit_crit_edge, %if.then10
  %err.0 = phi i32 [ %15, %if.then10 ], [ %call.i84, %if.then17.spi_controller_put.exit_crit_edge ], [ %call35, %if.end33.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %spi_controller_put.exit ], [ 0, %do.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiny_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %master1 = getelementptr inbounds %struct.spi_bitbang, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master1, align 4
  tail call void @spi_bitbang_stop(ptr noundef %1) #7
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.spi_controller_put.exit_crit_edge, label %if.then.i

entry.spi_controller_put.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_device(ptr noundef nonnull %3) #7
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %if.then.i, %entry.spi_controller_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tiny_spi_setup(ptr nocapture noundef readonly %spi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %4 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed_hz, align 8
  %speed_hz = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %speed_hz, align 4
  %9 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %freq.i = getelementptr inbounds %struct.tiny_spi, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %freq.i, align 4
  %mul.i = shl i32 %5, 1
  %add.i = add i32 %mul.i, -1
  %sub.i = add i32 %add.i, %14
  %div.i = udiv i32 %sub.i, %mul.i
  %baudwidth.i = getelementptr inbounds %struct.tiny_spi, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %baudwidth.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %baudwidth.i, align 4
  %shl.i = shl nuw i32 1, %16
  %17 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 %shl.i) #7
  %sub2.i = add i32 %17, -1
  %baud = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub2.i, ptr %baud, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode, align 8
  %and = and i32 %20, 3
  %mode5 = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %mode5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %mode5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiny_spi_setup_transfer(ptr nocapture noundef readonly %spi, ptr noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %baud1 = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %baud1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %baud1, align 4
  %tobool.not = icmp eq ptr %t, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %6 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.then.do.body_crit_edge, label %land.lhs.true

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true:                                    ; preds = %if.then
  %speed_hz4 = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %speed_hz4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed_hz4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %land.lhs.true.do.body_crit_edge, label %if.then5

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %freq.i = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %freq.i, align 4
  %mul.i = shl i32 %7, 1
  %add.i = add i32 %mul.i, -1
  %sub.i = add i32 %add.i, %11
  %div.i = udiv i32 %sub.i, %mul.i
  %baudwidth.i = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %baudwidth.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %baudwidth.i, align 4
  %shl.i = shl nuw i32 1, %13
  %14 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 %shl.i) #7
  %sub2.i = add i32 %14, -1
  br label %do.body

do.body:                                          ; preds = %if.then5, %land.lhs.true.do.body_crit_edge, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %baud.0 = phi i32 [ %sub2.i, %if.then5 ], [ %5, %land.lhs.true.do.body_crit_edge ], [ %5, %if.then.do.body_crit_edge ], [ %5, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %baud.0)
  %base = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %mode = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %20) #7, !srcloc !44
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiny_spi_txrx_bufs(ptr nocapture noundef readonly %spi, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_buf, align 4
  %irq = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp sgt i32 %9, -1
  br i1 %cmp, label %if.then, label %do.body58

if.then:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %len1 = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %len1, align 4
  %13 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %t, align 4
  %txp3 = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %txp3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %txp3, align 4
  %16 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_buf, align 4
  %rxp5 = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 13
  %18 = ptrtoint ptr %rxp5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %rxp5, align 4
  %txc = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 10
  %19 = ptrtoint ptr %txc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %txc, align 4
  %rxc = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %rxc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rxc, align 4
  %21 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp7 = icmp ugt i32 %21, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %txp3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %txp3, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %cmp7, label %do.body, label %do.body35

do.body:                                          ; preds = %if.then
  br i1 %tobool.not, label %do.body.cond.end_crit_edge, label %cond.true

do.body.cond.end_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr = getelementptr i8, ptr %23, i32 1
  %24 = ptrtoint ptr %txp3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %incdec.ptr, ptr %txp3, align 4
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %23, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.body.cond.end_crit_edge
  %cond = phi i8 [ %26, %cond.true ], [ 0, %do.body.cond.end_crit_edge ]
  %base = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %cond) #7, !srcloc !46
  %29 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %txc, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %txc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %txp3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %txp3, align 4
  %tobool17.not = icmp eq ptr %32, null
  br i1 %tobool17.not, label %cond.end.cond.end23_crit_edge, label %cond.true18

cond.end.cond.end23_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end23

cond.true18:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr20 = getelementptr i8, ptr %32, i32 1
  %33 = ptrtoint ptr %txp3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %incdec.ptr20, ptr %txp3, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %32, align 1
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true18, %cond.end.cond.end23_crit_edge
  %cond24 = phi i8 [ %35, %cond.true18 ], [ 0, %cond.end.cond.end23_crit_edge ]
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 %cond24) #7, !srcloc !46
  %38 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %txc, align 4
  %inc29 = add i32 %39, 1
  store i32 %inc29, ptr %txc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr34 = getelementptr i8, ptr %41, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34, i8 2) #7, !srcloc !46
  br label %if.end

do.body35:                                        ; preds = %if.then
  br i1 %tobool.not, label %do.body35.cond.end45_crit_edge, label %cond.true40

do.body35.cond.end45_crit_edge:                   ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end45

cond.true40:                                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr42 = getelementptr i8, ptr %23, i32 1
  %42 = ptrtoint ptr %txp3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %incdec.ptr42, ptr %txp3, align 4
  %43 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %23, align 1
  br label %cond.end45

cond.end45:                                       ; preds = %cond.true40, %do.body35.cond.end45_crit_edge
  %cond46 = phi i8 [ %44, %cond.true40 ], [ 0, %do.body35.cond.end45_crit_edge ]
  %base48 = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 2
  %45 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base48, align 4
  %add.ptr49 = getelementptr i8, ptr %46, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr49, i8 %cond46) #7, !srcloc !46
  %47 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %txc, align 4
  %inc51 = add i32 %48, 1
  store i32 %inc51, ptr %txc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base48, align 4
  %add.ptr56 = getelementptr i8, ptr %50, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56, i8 1) #7, !srcloc !46
  br label %if.end

if.end:                                           ; preds = %cond.end45, %cond.end23
  %done = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %done) #7
  br label %if.end113

do.body58:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %tobool61.not = icmp eq ptr %5, null
  br i1 %tobool61.not, label %do.body58.cond.end66_crit_edge, label %cond.true62

do.body58.cond.end66_crit_edge:                   ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end66

cond.true62:                                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr63 = getelementptr i8, ptr %5, i32 1
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %5, align 1
  br label %cond.end66

cond.end66:                                       ; preds = %cond.true62, %do.body58.cond.end66_crit_edge
  %txp.0 = phi ptr [ %incdec.ptr63, %cond.true62 ], [ null, %do.body58.cond.end66_crit_edge ]
  %cond67 = phi i8 [ %52, %cond.true62 ], [ 0, %do.body58.cond.end66_crit_edge ]
  %base69 = getelementptr inbounds %struct.tiny_spi, ptr %3, i32 0, i32 2
  %53 = ptrtoint ptr %base69 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base69, align 4
  %add.ptr70 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr70, i8 %cond67) #7, !srcloc !46
  %len71 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %55 = ptrtoint ptr %len71 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp72174 = icmp ugt i32 %56, 1
  br i1 %cmp72174, label %cond.end66.do.body74_crit_edge, label %cond.end66.for.end_crit_edge

cond.end66.for.end_crit_edge:                     ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cond.end66.do.body74_crit_edge:                   ; preds = %cond.end66
  br label %do.body74

do.body74:                                        ; preds = %for.inc.do.body74_crit_edge, %cond.end66.do.body74_crit_edge
  %txp.1177 = phi ptr [ %txp.2, %for.inc.do.body74_crit_edge ], [ %txp.0, %cond.end66.do.body74_crit_edge ]
  %rxp.0176 = phi ptr [ %rxp.1, %for.inc.do.body74_crit_edge ], [ %7, %cond.end66.do.body74_crit_edge ]
  %i.0175 = phi i32 [ %inc101, %for.inc.do.body74_crit_edge ], [ 1, %cond.end66.do.body74_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %tobool77.not = icmp eq ptr %txp.1177, null
  br i1 %tobool77.not, label %do.body74.cond.end82_crit_edge, label %cond.true78

do.body74.cond.end82_crit_edge:                   ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end82

cond.true78:                                      ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr79 = getelementptr i8, ptr %txp.1177, i32 1
  %57 = ptrtoint ptr %txp.1177 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %txp.1177, align 1
  br label %cond.end82

cond.end82:                                       ; preds = %cond.true78, %do.body74.cond.end82_crit_edge
  %txp.2 = phi ptr [ %incdec.ptr79, %cond.true78 ], [ null, %do.body74.cond.end82_crit_edge ]
  %cond83 = phi i8 [ %58, %cond.true78 ], [ 0, %do.body74.cond.end82_crit_edge ]
  %59 = ptrtoint ptr %base69 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base69, align 4
  %add.ptr86 = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr86, i8 %cond83) #7, !srcloc !46
  %tobool87.not = icmp eq ptr %rxp.0176, null
  br i1 %tobool87.not, label %lor.lhs.false, label %if.then94.critedge

lor.lhs.false:                                    ; preds = %cond.end82
  %61 = ptrtoint ptr %len71 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len71, align 4
  %sub = add i32 %62, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0175, i32 %sub)
  %cmp89.not = icmp eq i32 %i.0175, %sub
  br i1 %cmp89.not, label %lor.lhs.false.for.inc_crit_edge, label %for.inc.critedge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then94.critedge:                               ; preds = %cond.end82
  %63 = ptrtoint ptr %base69 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base69, align 4
  %add.ptr6.i = getelementptr i8, ptr %64, i32 8
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.i) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %66 = and i8 %65, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not7.i = icmp eq i8 %66, 0
  br i1 %tobool.not7.i, label %if.then94.critedge.do.end.i_crit_edge, label %if.then94.critedge.tiny_spi_wait_txr.exit_crit_edge

if.then94.critedge.tiny_spi_wait_txr.exit_crit_edge: ; preds = %if.then94.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %tiny_spi_wait_txr.exit

if.then94.critedge.do.end.i_crit_edge:            ; preds = %if.then94.critedge
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.then94.critedge.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !55
  %67 = ptrtoint ptr %base69 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base69, align 4
  %add.ptr.i = getelementptr i8, ptr %68, i32 8
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %70 = and i8 %69, 2
  %tobool.not.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.tiny_spi_wait_txr.exit_crit_edge

do.end.i.tiny_spi_wait_txr.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tiny_spi_wait_txr.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

tiny_spi_wait_txr.exit:                           ; preds = %do.end.i.tiny_spi_wait_txr.exit_crit_edge, %if.then94.critedge.tiny_spi_wait_txr.exit_crit_edge
  %71 = ptrtoint ptr %base69 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base69, align 4
  %add.ptr96 = getelementptr i8, ptr %72, i32 4
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr96) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %incdec.ptr99 = getelementptr i8, ptr %rxp.0176, i32 1
  %74 = ptrtoint ptr %rxp.0176 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %rxp.0176, align 1
  br label %for.inc

for.inc.critedge:                                 ; preds = %lor.lhs.false
  %75 = ptrtoint ptr %base69 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base69, align 4
  %add.ptr6.i162 = getelementptr i8, ptr %76, i32 8
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.i162) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %78 = and i8 %77, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not7.i163 = icmp eq i8 %78, 0
  br i1 %tobool.not7.i163, label %for.inc.critedge.do.end.i166_crit_edge, label %for.inc.critedge.for.inc_crit_edge

for.inc.critedge.for.inc_crit_edge:               ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc.critedge.do.end.i166_crit_edge:           ; preds = %for.inc.critedge
  br label %do.end.i166

do.end.i166:                                      ; preds = %do.end.i166.do.end.i166_crit_edge, %for.inc.critedge.do.end.i166_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !55
  %79 = ptrtoint ptr %base69 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base69, align 4
  %add.ptr.i164 = getelementptr i8, ptr %80, i32 8
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i164) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %82 = and i8 %81, 2
  %tobool.not.i165 = icmp eq i8 %82, 0
  br i1 %tobool.not.i165, label %do.end.i166.do.end.i166_crit_edge, label %do.end.i166.for.inc_crit_edge

do.end.i166.for.inc_crit_edge:                    ; preds = %do.end.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end.i166.do.end.i166_crit_edge:                ; preds = %do.end.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i166

for.inc:                                          ; preds = %do.end.i166.for.inc_crit_edge, %for.inc.critedge.for.inc_crit_edge, %tiny_spi_wait_txr.exit, %lor.lhs.false.for.inc_crit_edge
  %rxp.1 = phi ptr [ %incdec.ptr99, %tiny_spi_wait_txr.exit ], [ null, %lor.lhs.false.for.inc_crit_edge ], [ null, %for.inc.critedge.for.inc_crit_edge ], [ null, %do.end.i166.for.inc_crit_edge ]
  %inc101 = add nuw i32 %i.0175, 1
  %83 = ptrtoint ptr %len71 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len71, align 4
  %cmp72 = icmp ult i32 %inc101, %84
  br i1 %cmp72, label %for.inc.do.body74_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.do.body74_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body74

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end66.for.end_crit_edge
  %rxp.0.lcssa = phi ptr [ %7, %cond.end66.for.end_crit_edge ], [ %rxp.1, %for.inc.for.end_crit_edge ]
  %85 = ptrtoint ptr %base69 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base69, align 4
  %add.ptr6.i169 = getelementptr i8, ptr %86, i32 8
  %87 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.i169) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %88 = and i8 %87, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not7.i170 = icmp eq i8 %88, 0
  br i1 %tobool.not7.i170, label %for.end.do.end.i173_crit_edge, label %for.end.tiny_spi_wait_txe.exit_crit_edge

for.end.tiny_spi_wait_txe.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tiny_spi_wait_txe.exit

for.end.do.end.i173_crit_edge:                    ; preds = %for.end
  br label %do.end.i173

do.end.i173:                                      ; preds = %do.end.i173.do.end.i173_crit_edge, %for.end.do.end.i173_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !59
  %89 = ptrtoint ptr %base69 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base69, align 4
  %add.ptr.i171 = getelementptr i8, ptr %90, i32 8
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i171) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %92 = and i8 %91, 1
  %tobool.not.i172 = icmp eq i8 %92, 0
  br i1 %tobool.not.i172, label %do.end.i173.do.end.i173_crit_edge, label %do.end.i173.tiny_spi_wait_txe.exit_crit_edge

do.end.i173.tiny_spi_wait_txe.exit_crit_edge:     ; preds = %do.end.i173
  call void @__sanitizer_cov_trace_pc() #9
  br label %tiny_spi_wait_txe.exit

do.end.i173.do.end.i173_crit_edge:                ; preds = %do.end.i173
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i173

tiny_spi_wait_txe.exit:                           ; preds = %do.end.i173.tiny_spi_wait_txe.exit_crit_edge, %for.end.tiny_spi_wait_txe.exit_crit_edge
  %tobool102.not = icmp eq ptr %rxp.0.lcssa, null
  br i1 %tobool102.not, label %tiny_spi_wait_txe.exit.if.end113_crit_edge, label %if.then103

tiny_spi_wait_txe.exit.if.end113_crit_edge:       ; preds = %tiny_spi_wait_txe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then103:                                       ; preds = %tiny_spi_wait_txe.exit
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %base69 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base69, align 4
  %95 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %94) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %96 = ptrtoint ptr %rxp.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %rxp.0.lcssa, align 1
  br label %if.end113

if.end113:                                        ; preds = %if.then103, %tiny_spi_wait_txe.exit.if.end113_crit_edge, %if.end
  %len114 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %97 = ptrtoint ptr %len114 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len114, align 4
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiny_spi_irq(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %base = getelementptr inbounds %struct.tiny_spi, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #7, !srcloc !46
  %rxc = getelementptr inbounds %struct.tiny_spi, ptr %dev, i32 0, i32 11
  %2 = ptrtoint ptr %rxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxc, align 4
  %add = add i32 %3, 1
  %len = getelementptr inbounds %struct.tiny_spi, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp eq i32 %add, %5
  %rxp = getelementptr inbounds %struct.tiny_spi, ptr %dev, i32 0, i32 13
  %6 = ptrtoint ptr %rxp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxp, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %11 = ptrtoint ptr %rxp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rxp, align 4
  %incdec.ptr = getelementptr i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %rxp, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %14 = ptrtoint ptr %rxc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rxc, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %rxc, align 4
  %done = getelementptr inbounds %struct.tiny_spi, ptr %dev, i32 0, i32 1
  tail call void @complete(ptr noundef %done) #7
  br label %if.end48

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else.if.end19_crit_edge, label %if.then9

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %17, i32 4
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %19 = ptrtoint ptr %rxp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rxp, align 4
  %incdec.ptr18 = getelementptr i8, ptr %20, i32 1
  store ptr %incdec.ptr18, ptr %rxp, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %20, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then9, %if.else.if.end19_crit_edge
  %22 = ptrtoint ptr %rxc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rxc, align 4
  %inc21 = add i32 %23, 1
  store i32 %inc21, ptr %rxc, align 4
  %txc = getelementptr inbounds %struct.tiny_spi, ptr %dev, i32 0, i32 10
  %24 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %txc, align 4
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp23 = icmp ult i32 %25, %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp23, label %do.body25, label %do.body42

do.body25:                                        ; preds = %if.end19
  %txp = getelementptr inbounds %struct.tiny_spi, ptr %dev, i32 0, i32 12
  %28 = ptrtoint ptr %txp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %txp, align 4
  %tobool28.not = icmp eq ptr %29, null
  br i1 %tobool28.not, label %do.body25.cond.end_crit_edge, label %cond.true

do.body25.cond.end_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr30 = getelementptr i8, ptr %29, i32 1
  %30 = ptrtoint ptr %txp to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %incdec.ptr30, ptr %txp, align 4
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %29, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.body25.cond.end_crit_edge
  %cond = phi i8 [ %32, %cond.true ], [ 0, %do.body25.cond.end_crit_edge ]
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr33 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33, i8 %cond) #7, !srcloc !46
  %35 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %txc, align 4
  %inc35 = add i32 %36, 1
  store i32 %inc35, ptr %txc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr40 = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40, i8 2) #7, !srcloc !46
  br label %if.end48

do.body42:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr46 = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46, i8 1) #7, !srcloc !46
  br label %if.end48

if.end48:                                         ; preds = %do.body42, %cond.end, %if.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_bitbang_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_spi_oc_tiny__236_301_tiny_spi_driver_init6, !1, !"__initcall__kmod_spi_oc_tiny__236_301_tiny_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-oc-tiny.c", i32 301, i32 1}
!2 = !{ptr @__exitcall_tiny_spi_driver_exit, !1, !"__exitcall_tiny_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description237, !4, !"__UNIQUE_ID_description237", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-oc-tiny.c", i32 303, i32 1}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-oc-tiny.c", i32 304, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-oc-tiny.c", i32 305, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias241, !11, !"__UNIQUE_ID_alias241", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-oc-tiny.c", i32 306, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-oc-tiny.c", i32 296, i32 11}
!14 = !{ptr @tiny_spi_driver, !15, !"tiny_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-oc-tiny.c", i32 292, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-oc-tiny.c", i32 265, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tiny_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tiny_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @init_completion.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../include/linux/completion.h", i32 87, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/spi/spi-oc-tiny.c", i32 198, i32 32}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-oc-tiny.c", i32 200, i32 32}
!31 = !{ptr @tiny_spi_match, !32, !"tiny_spi_match", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-oc-tiny.c", i32 285, i32 34}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{i64 2154276990}
!44 = !{i64 4203356}
!45 = !{i64 2154277382}
!46 = !{i64 4203159}
!47 = !{i64 2154279613}
!48 = !{i64 2154279897}
!49 = !{i64 2154280461}
!50 = !{i64 2154280733}
!51 = !{i64 2154281018}
!52 = !{i64 4203554}
!53 = !{i64 2154278129}
!54 = !{i64 2154278408}
!55 = !{i64 2154278250}
!56 = !{i64 2154281303}
!57 = !{i64 2154278801}
!58 = !{i64 2154279080}
!59 = !{i64 2154278922}
!60 = !{i64 2154281527}
!61 = !{i64 2154281736}
!62 = !{i64 2154282006}
!63 = !{i64 2154282230}
!64 = !{i64 2154282746}
