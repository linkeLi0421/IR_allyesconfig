; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-clps711x.c_pt.bc'
source_filename = "../drivers/spi/spi-clps711x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_clps711x_data = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_clps711x__234_167_clps711x_spi_driver_init6 = internal global ptr @clps711x_spi_driver_init, section ".initcall6.init", align 4
@clps711x_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spi_clps711x_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @clps711x_spi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_clps711x_spi_driver_exit = internal global ptr @clps711x_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file235 = internal constant [43 x i8] c"spi_clps711x.file=drivers/spi/spi-clps711x\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [25 x i8] c"spi_clps711x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [56 x i8] c"spi_clps711x.author=Alexander Shiyan <shc_work@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [49 x i8] c"spi_clps711x.description=CLPS711X SPI bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias239 = internal constant [41 x i8] c"spi_clps711x.alias=platform:clps711x-spi\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clps711x-spi\00", [19 x i8] zeroinitializer }, align 32
@clps711x_spi_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,ep7209-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cirrus,ep7209-syscon3\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"clps711x_spi_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 160, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 162, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"clps711x_spi_dt_ids\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 154, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [30 x i8] c"../drivers/spi/spi-clps711x.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 121, i32 38 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_clps711x_spi_driver_exit, ptr @__initcall__kmod_spi_clps711x__234_167_clps711x_spi_driver_init6, ptr @clps711x_spi_driver_exit, ptr @clps711x_spi_driver, ptr @.str, ptr @clps711x_spi_dt_ids, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clps711x_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clps711x_spi_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clps711x_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clps711x_spi_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clps711x_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @clps711x_spi_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_clps711x_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 28, i1 noundef zeroext false) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %0 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %bus_num, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %bits_per_word_mask, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %of_node6 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %6 = ptrtoint ptr %of_node6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %of_node6, align 8
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %7 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @spi_clps711x_prepare_message, ptr %prepare_message, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %8 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @spi_clps711x_transfer_one, ptr %transfer_one, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #4
  %spi_clk = getelementptr inbounds %struct.spi_clps711x_data, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %spi_clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %spi_clk, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %call9 to i32
  br label %spi_controller_put.exit

if.end15:                                         ; preds = %if.end3
  %call16 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.1) #4
  %syscon = getelementptr inbounds %struct.spi_clps711x_data, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %syscon to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call16, ptr %syscon, align 4
  %cmp.i82 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %call16 to i32
  br label %spi_controller_put.exit

if.end22:                                         ; preds = %if.end15
  %call23 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call23, ptr %10, align 4
  %cmp.i83 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %call23 to i32
  br label %spi_controller_put.exit

if.end29:                                         ; preds = %if.end22
  %17 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %syscon, align 4
  %call.i84 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %10, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.dev_name.exit_crit_edge

if.end29.dev_name.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end29.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end.i ], [ %23, %if.end29.dev_name.exit_crit_edge ]
  %call.i85 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call, ptr noundef nonnull @spi_clps711x_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool39.not = icmp eq i32 %call.i85, 0
  br i1 %tobool39.not, label %if.end41, label %dev_name.exit.spi_controller_put.exit_crit_edge

dev_name.exit.spi_controller_put.exit_crit_edge:  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_controller_put.exit

if.end41:                                         ; preds = %dev_name.exit
  %call43 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end41.cleanup_crit_edge, label %if.end41.spi_controller_put.exit_crit_edge

if.end41.spi_controller_put.exit_crit_edge:       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_controller_put.exit

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

spi_controller_put.exit:                          ; preds = %if.end41.spi_controller_put.exit_crit_edge, %dev_name.exit.spi_controller_put.exit_crit_edge, %if.then26, %if.then19, %if.then12
  %ret.0 = phi i32 [ %12, %if.then12 ], [ %14, %if.then19 ], [ %16, %if.then26 ], [ %call.i85, %dev_name.exit.spi_controller_put.exit_crit_edge ], [ %call43, %if.end41.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end41.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %spi_controller_put.exit ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_clps711x_prepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %syscon = getelementptr inbounds %struct.spi_clps711x_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %syscon, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 8
  %and = shl i32 %7, 4
  %8 = and i32 %and, 16
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 16, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_clps711x_transfer_one(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %spi, ptr nocapture noundef readonly %xfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi_clk = getelementptr inbounds %struct.spi_clps711x_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_clk, align 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %4 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %6 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_speed_hz, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.false ], [ %5, %entry.cond.end_crit_edge ]
  %call1 = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef %cond) #4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %len2 = getelementptr inbounds %struct.spi_clps711x_data, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %len2, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %11 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %12 to i32
  %bpw = getelementptr inbounds %struct.spi_clps711x_data, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %bpw to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %bpw, align 4
  %14 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xfer, align 4
  %tx_buf3 = getelementptr inbounds %struct.spi_clps711x_data, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %tx_buf3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %tx_buf3, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %17 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_buf, align 4
  %rx_buf4 = getelementptr inbounds %struct.spi_clps711x_data, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %rx_buf4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %rx_buf4, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %cond.end.cond.end11_crit_edge, label %cond.true7

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end11

cond.true7:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr = getelementptr i8, ptr %15, i32 1
  %20 = ptrtoint ptr %tx_buf3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %incdec.ptr, ptr %tx_buf3, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %15, align 1
  %phi.cast = zext i8 %22 to i32
  br label %cond.end11

cond.end11:                                       ; preds = %cond.true7, %cond.end.cond.end11_crit_edge
  %cond12 = phi i32 [ %phi.cast, %cond.true7 ], [ 0, %cond.end.cond.end11_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %23 = ptrtoint ptr %bpw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bpw, align 4
  %shl = shl i32 %24, 8
  %or = or i32 %shl, %cond12
  %or16 = or i32 %or, 16384
  %25 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #4, !srcloc !32
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_clps711x_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %rx_buf = getelementptr inbounds %struct.spi_clps711x_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr = getelementptr i8, ptr %6, i32 1
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %incdec.ptr, ptr %rx_buf, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %4, ptr %6, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len = getelementptr inbounds %struct.spi_clps711x_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %tx_buf = getelementptr inbounds %struct.spi_clps711x_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_buf, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.then4.cond.end_crit_edge, label %cond.true

if.then4.cond.end_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr7 = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %incdec.ptr7, ptr %tx_buf, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %12, align 1
  %phi.cast = zext i8 %15 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then4.cond.end_crit_edge
  %cond = phi i32 [ %phi.cast, %cond.true ], [ 0, %if.then4.cond.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %bpw = getelementptr inbounds %struct.spi_clps711x_data, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %bpw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bpw, align 4
  %shl = shl i32 %17, 8
  %or = or i32 %shl, %cond
  %or10 = or i32 %or, 16384
  %18 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !32
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @spi_finalize_current_transfer(ptr noundef %dev_id) #4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %cond.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_spi_clps711x__234_167_clps711x_spi_driver_init6, !1, !"__initcall__kmod_spi_clps711x__234_167_clps711x_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-clps711x.c", i32 167, i32 1}
!2 = !{ptr @__exitcall_clps711x_spi_driver_exit, !1, !"__exitcall_clps711x_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file235, !4, !"__UNIQUE_ID_file235", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-clps711x.c", i32 169, i32 1}
!5 = !{ptr @__UNIQUE_ID_license236, !4, !"__UNIQUE_ID_license236", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author237, !7, !"__UNIQUE_ID_author237", i1 false, i1 false}
!7 = !{!"../drivers/spi/spi-clps711x.c", i32 170, i32 1}
!8 = !{ptr @__UNIQUE_ID_description238, !9, !"__UNIQUE_ID_description238", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-clps711x.c", i32 171, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias239, !11, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-clps711x.c", i32 172, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-clps711x.c", i32 162, i32 11}
!14 = !{ptr @clps711x_spi_driver, !15, !"clps711x_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-clps711x.c", i32 160, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-clps711x.c", i32 121, i32 38}
!18 = !{ptr @clps711x_spi_dt_ids, !19, !"clps711x_spi_dt_ids", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-clps711x.c", i32 154, i32 34}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 687739}
!30 = !{i64 2154314550}
!31 = !{i64 2154311951}
!32 = !{i64 687321}
!33 = !{i64 687519}
!34 = !{i64 2154312495}
!35 = !{i64 2154312765}
