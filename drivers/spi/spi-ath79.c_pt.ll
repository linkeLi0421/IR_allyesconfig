; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-ath79.c_pt.bc'
source_filename = "../drivers/spi/spi-ath79.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_bitbang = type { %struct.mutex, i8, i8, i16, ptr, ptr, ptr, ptr, [4 x ptr], ptr }
%struct.ath79_spi = type { %struct.spi_bitbang, i32, i32, ptr, ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_spi_ath79__231_238_ath79_spi_driver_init6 = internal global ptr @ath79_spi_driver_init, section ".initcall6.init", align 4
@ath79_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ath79_spi_probe, ptr @ath79_spi_remove, ptr @ath79_spi_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ath79_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ath79_spi_driver_exit = internal global ptr @ath79_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description232 = internal constant [77 x i8] c"spi_ath79.description=SPI controller driver for Atheros AR71XX/AR724X/AR913X\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [50 x i8] c"spi_ath79.author=Gabor Juhos <juhosg@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [37 x i8] c"spi_ath79.file=drivers/spi/spi-ath79\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [25 x i8] c"spi_ath79.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [35 x i8] c"spi_ath79.alias=platform:ath79-spi\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ath79-spi\00", [22 x i8] zeroinitializer }, align 32
@ath79_spi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qca,ar7100-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ath79_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate spi master\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ath79_spi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/spi/spi-ath79.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ath79_spi_probe._entry_ptr = internal global ptr @ath79_spi_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@ath79_spi_probe.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 46, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi_ath79\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"register read/write delay is %u nsecs\0A\00", [57 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"ath79_spi_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 229, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 234, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"ath79_spi_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 223, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 145, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 169, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [27 x i8] c"../drivers/spi/spi-ath79.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 186, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_ath79_spi_driver_exit, ptr @__initcall__kmod_spi_ath79__231_238_ath79_spi_driver_init6, ptr @ath79_spi_driver_exit, ptr @ath79_spi_probe._entry, ptr @ath79_spi_probe._entry_ptr, ptr @ath79_spi_driver, ptr @.str, ptr @ath79_spi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath79_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath79_spi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath79_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ath79_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ath79_spi_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ath79_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ath79_spi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath79_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 152, i1 noundef zeroext false) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %of_node5 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %4 = ptrtoint ptr %of_node5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %of_node5, align 8
  %driver_data.i.i94 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i94 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %driver_data.i.i94, align 4
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %6 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %bits_per_word_mask, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 32, ptr %flags, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 3, ptr %num_chipselect, align 2
  %master6 = getelementptr inbounds %struct.spi_bitbang, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %master6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %master6, align 4
  %chipselect = getelementptr inbounds %struct.spi_bitbang, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %chipselect to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ath79_spi_chipselect, ptr %chipselect, align 4
  %txrx_word = getelementptr inbounds %struct.spi_bitbang, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %txrx_word to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ath79_spi_txrx_mode0, ptr %txrx_word, align 4
  %flags10 = getelementptr inbounds %struct.spi_bitbang, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %flags10 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 4, ptr %flags10, align 2
  %call11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.ath79_spi, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call11, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call11 to i32
  br label %err_put_master

if.end17:                                         ; preds = %if.end
  %call19 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #5
  %clk = getelementptr inbounds %struct.ath79_spi, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call19, ptr %clk, align 4
  %cmp.i95 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call19 to i32
  br label %err_put_master

if.end25:                                         ; preds = %if.end17
  %call.i96 = tail call i32 @clk_prepare(ptr noundef %call19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.err_put_master_crit_edge

if.end25.err_put_master_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_put_master

if.end.i:                                         ; preds = %if.end25
  %call1.i = tail call i32 @clk_enable(ptr noundef %call19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end29, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call19) #5
  br label %err_put_master

if.end29:                                         ; preds = %if.end.i
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  %call31 = tail call i32 @clk_get_rate(ptr noundef %19) #5
  %sub = add i32 %call31, 999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %sub)
  %20 = icmp ult i32 %sub, 1000000
  br i1 %20, label %if.end29.err_clk_disable_crit_edge, label %if.end34

if.end29.err_clk_disable_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk_disable

if.end34:                                         ; preds = %if.end29
  %div = udiv i32 %sub, 1000000
  %div35.rhs.trunc = trunc i32 %div to i16
  %div35106 = udiv i16 12000, %div35.rhs.trunc
  %div35.zext = zext i16 %div35106 to i32
  %rrw_delay = getelementptr inbounds %struct.ath79_spi, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %rrw_delay to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div35.zext, ptr %rrw_delay, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ath79_spi_probe.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ath79_spi_probe, %do.end47)) #5
          to label %if.then42 [label %do.end47], !srcloc !41

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %rrw_delay to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rrw_delay, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ath79_spi_probe.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %23) #5
  br label %do.end47

do.end47:                                         ; preds = %if.then42, %if.end34
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 16777216) #5, !srcloc !43
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !44
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %reg_ctrl.i = getelementptr inbounds %struct.ath79_spi, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %reg_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %reg_ctrl.i, align 4
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %32, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %ioc_base.i = getelementptr inbounds %struct.ath79_spi, ptr %1, i32 0, i32 1
  %34 = and i32 %33, -16842753
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %36 = ptrtoint ptr %ioc_base.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ioc_base.i, align 4
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 1124073472) #5, !srcloc !43
  %call49 = tail call i32 @spi_bitbang_start(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.end47.cleanup_crit_edge, label %err_disable

do.end47.cleanup_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_disable:                                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %reg_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_ctrl.i, align 4
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr.i.i100 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i100, i32 %43) #5, !srcloc !43
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #5, !srcloc !43
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_disable, %if.end29.err_clk_disable_crit_edge
  %ret.0 = phi i32 [ %call49, %err_disable ], [ -22, %if.end29.err_clk_disable_crit_edge ]
  %46 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %47) #5
  tail call void @clk_unprepare(ptr noundef %47) #5
  br label %err_put_master

err_put_master:                                   ; preds = %err_clk_disable, %if.then3.i, %if.end25.err_put_master_crit_edge, %if.then22, %if.then14
  %ret.1 = phi i32 [ %15, %if.then14 ], [ %17, %if.then22 ], [ %ret.0, %err_clk_disable ], [ %call1.i, %if.then3.i ], [ %call.i96, %if.end25.err_put_master_crit_edge ]
  %48 = ptrtoint ptr %master6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %master6, align 4
  %tobool.not.i101 = icmp eq ptr %49, null
  br i1 %tobool.not.i101, label %err_put_master.cleanup_crit_edge, label %if.then.i

err_put_master.cleanup_crit_edge:                 ; preds = %err_put_master
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %err_put_master
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @put_device(ptr noundef nonnull %49) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %err_put_master.cleanup_crit_edge, %do.end47.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %do.end47.cleanup_crit_edge ], [ %ret.1, %err_put_master.cleanup_crit_edge ], [ %ret.1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath79_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @spi_bitbang_stop(ptr noundef %1) #5
  %reg_ctrl.i = getelementptr inbounds %struct.ath79_spi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_ctrl.i, align 4
  %base.i.i = getelementptr inbounds %struct.ath79_spi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #5, !srcloc !43
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #5, !srcloc !43
  %clk = getelementptr inbounds %struct.ath79_spi, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %10) #5
  tail call void @clk_unprepare(ptr noundef %10) #5
  %master = getelementptr inbounds %struct.spi_bitbang, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.spi_controller_put.exit_crit_edge, label %if.then.i

entry.spi_controller_put.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_controller_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @put_device(ptr noundef nonnull %12) #5
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %if.then.i, %entry.spi_controller_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath79_spi_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ath79_spi_remove(ptr noundef %pdev)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath79_spi_chipselect(ptr nocapture noundef readonly %spi, i32 noundef %is_active) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_active)
  %tobool1.not = icmp eq i32 %is_active, 0
  %lnot.ext = zext i1 %tobool1.not to i32
  %cond = select i1 %tobool.not, i32 %lnot.ext, i32 %is_active
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %7 to i32
  %shl = shl i32 65536, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool2.not = icmp eq i32 %cond, 0
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioc_base = getelementptr inbounds %struct.ath79_spi, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %ioc_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ioc_base, align 4
  %or = or i32 %9, %shl
  store i32 %or, ptr %ioc_base, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %shl, -1
  %ioc_base3 = getelementptr inbounds %struct.ath79_spi, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %ioc_base3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ioc_base3, align 4
  %and4 = and i32 %11, %neg
  store i32 %and4, ptr %ioc_base3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ioc_base5 = getelementptr inbounds %struct.ath79_spi, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %ioc_base5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ioc_base5, align 4
  %base.i = getelementptr inbounds %struct.ath79_spi, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #5, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath79_spi_txrx_mode0(ptr nocapture noundef readonly %spi, i32 noundef %nsecs, i32 noundef %word, i8 noundef zeroext %bits, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bits)
  %tobool.not47 = icmp eq i8 %bits, 0
  br i1 %tobool.not47, label %entry.for.end_crit_edge, label %for.body.lr.ph, !prof !46

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i8 %bits to i32
  %sub = sub nsw i32 32, %conv
  %shl = shl i32 %word, %sub
  %ioc_base = getelementptr inbounds %struct.ath79_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ioc_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ioc_base, align 4
  %and4 = and i32 %5, -2
  %base.i = getelementptr inbounds %struct.ath79_spi, ptr %3, i32 0, i32 3
  %rrw_delay.i = getelementptr inbounds %struct.ath79_spi, ptr %3, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end9, %for.body.lr.ph
  %word.addr.049 = phi i32 [ %shl, %for.body.lr.ph ], [ %shl10, %if.end9 ]
  %bits.addr.048 = phi i8 [ %bits, %for.body.lr.ph ], [ %dec, %if.end9 ]
  %word.addr.0.lobit = lshr i32 %word.addr.049, 31
  %out.0 = or i32 %word.addr.0.lobit, %and4
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %out.0) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #5, !srcloc !43
  %9 = ptrtoint ptr %rrw_delay.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rrw_delay.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %nsecs)
  %cmp.i = icmp ult i32 %10, %nsecs
  br i1 %cmp.i, label %cond.false8.i.i, label %for.body.ath79_spi_delay.exit_crit_edge

for.body.ath79_spi_delay.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath79_spi_delay.exit

cond.false8.i.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub i32 %nsecs, %10
  %sub.i.i = add i32 %sub.i, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %div.i.i) #5
  br label %ath79_spi_delay.exit

ath79_spi_delay.exit:                             ; preds = %cond.false8.i.i, %for.body.ath79_spi_delay.exit_crit_edge
  %or5 = or i32 %out.0, 256
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %or5) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %14) #5, !srcloc !43
  %15 = ptrtoint ptr %rrw_delay.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rrw_delay.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %nsecs)
  %cmp.i30 = icmp ult i32 %16, %nsecs
  br i1 %cmp.i30, label %cond.false8.i.i40, label %ath79_spi_delay.exit.ath79_spi_delay.exit41_crit_edge

ath79_spi_delay.exit.ath79_spi_delay.exit41_crit_edge: ; preds = %ath79_spi_delay.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath79_spi_delay.exit41

cond.false8.i.i40:                                ; preds = %ath79_spi_delay.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i31 = sub i32 %nsecs, %16
  %sub.i.i32 = add i32 %sub.i31, 999
  %div.i.i33 = udiv i32 %sub.i.i32, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %div.i.i33) #5
  br label %ath79_spi_delay.exit41

ath79_spi_delay.exit41:                           ; preds = %cond.false8.i.i40, %ath79_spi_delay.exit.ath79_spi_delay.exit41_crit_edge
  %cmp = icmp eq i8 %bits.addr.048, 1
  br i1 %cmp, label %for.end.loopexit, label %if.end9

if.end9:                                          ; preds = %ath79_spi_delay.exit41
  call void @__sanitizer_cov_trace_pc() #7
  %shl10 = shl i32 %word.addr.049, 1
  %dec = add i8 %bits.addr.048, -1
  br label %for.body

for.end.loopexit:                                 ; preds = %ath79_spi_delay.exit41
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %8) #5, !srcloc !43
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %base.i44 = getelementptr inbounds %struct.ath79_spi, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #5, !srcloc !44
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_bitbang_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_spi_ath79__231_238_ath79_spi_driver_init6, !1, !"__initcall__kmod_spi_ath79__231_238_ath79_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-ath79.c", i32 238, i32 1}
!2 = !{ptr @__exitcall_ath79_spi_driver_exit, !1, !"__exitcall_ath79_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description232, !4, !"__UNIQUE_ID_description232", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-ath79.c", i32 240, i32 1}
!5 = !{ptr @__UNIQUE_ID_author233, !6, !"__UNIQUE_ID_author233", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-ath79.c", i32 241, i32 1}
!7 = !{ptr @__UNIQUE_ID_file234, !8, !"__UNIQUE_ID_file234", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-ath79.c", i32 242, i32 1}
!9 = !{ptr @__UNIQUE_ID_license235, !8, !"__UNIQUE_ID_license235", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias236, !11, !"__UNIQUE_ID_alias236", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-ath79.c", i32 243, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-ath79.c", i32 234, i32 11}
!14 = !{ptr @ath79_spi_driver, !15, !"ath79_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-ath79.c", i32 229, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-ath79.c", i32 145, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ath79_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ath79_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-ath79.c", i32 169, i32 37}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-ath79.c", i32 186, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ath79_spi_probe.__UNIQUE_ID_ddebug230, !27, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!30 = !{ptr @ath79_spi_of_match, !31, !"ath79_spi_of_match", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-ath79.c", i32 223, i32 34}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2148695664, i64 2148695669, i64 2148695682, i64 2148695726, i64 2148695760, i64 2148695781}
!42 = !{i64 2152338260}
!43 = !{i64 4796138}
!44 = !{i64 4796556}
!45 = !{i64 2152336905}
!46 = !{!"branch_weights", i32 1, i32 2000}
