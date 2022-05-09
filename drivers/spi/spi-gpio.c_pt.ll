; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-gpio.c_pt.bc'
source_filename = "../drivers/spi/spi-gpio.c"
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
%struct.spi_gpio = type { %struct.spi_bitbang, ptr, ptr, ptr, ptr }
%struct.spi_bitbang = type { %struct.mutex, i8, i8, i16, ptr, ptr, ptr, ptr, [4 x ptr], ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }

@__UNIQUE_ID_alias230 = internal constant [33 x i8] c"spi_gpio.alias=platform:spi_gpio\00", section ".modinfo", align 1
@__initcall__kmod_spi_gpio__231_436_spi_gpio_driver_init6 = internal global ptr @spi_gpio_driver_init, section ".initcall6.init", align 4
@spi_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spi_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spi_gpio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spi_gpio_driver_exit = internal global ptr @spi_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description232 = internal constant [69 x i8] c"spi_gpio.description=SPI master driver using generic bitbanged GPIO \00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [31 x i8] c"spi_gpio.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [35 x i8] c"spi_gpio.file=drivers/spi/spi-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [21 x i8] c"spi_gpio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi_gpio\00", [23 x i8] zeroinitializer }, align 32
@spi_gpio_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"spi-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cs\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mosi\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"miso\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sck\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"spi_gpio_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 429, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 431, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"spi_gpio_dt_ids\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 297, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 344, i32 53 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 284, i32 48 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 288, i32 48 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [26 x i8] c"../drivers/spi/spi-gpio.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 292, i32 38 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_spi_gpio_driver_exit, ptr @__initcall__kmod_spi_gpio__231_436_spi_gpio_driver_init6, ptr @spi_gpio_driver_exit, ptr @spi_gpio_driver, ptr @.str, ptr @spi_gpio_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_gpio_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spi_gpio_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @spi_gpio_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev1, i32 noundef 148, i1 noundef zeroext false) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup50_crit_edge, label %if.end

entry.cleanup50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup50

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %of_node2.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %2 = ptrtoint ptr %of_node2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %of_node2.i, align 8
  %use_gpio_descriptors.i = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %3 = ptrtoint ptr %use_gpio_descriptors.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %use_gpio_descriptors.i, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.cleanup50_crit_edge, label %lor.lhs.false.i

if.else.cleanup50_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup50

lor.lhs.false.i:                                  ; preds = %if.else
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool3.not.i = icmp eq i16 %9, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.cleanup50_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup50_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup50

if.end.i:                                         ; preds = %lor.lhs.false.i
  %num_chipselect7.i = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %num_chipselect7.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %num_chipselect7.i, align 2
  %conv.i = zext i16 %9 to i32
  %11 = shl nuw nsw i32 %conv.i, 2
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %11, i32 noundef 3520) #3
  %cs_gpios.i = getelementptr inbounds %struct.spi_gpio, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %cs_gpios.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i.i, ptr %cs_gpios.i, align 4
  %tobool12.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool12.not.i, label %if.end.i.cleanup50_crit_edge, label %for.cond.preheader.i

if.end.i.cleanup50_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup50

for.cond.preheader.i:                             ; preds = %if.end.i
  %13 = ptrtoint ptr %num_chipselect7.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_chipselect7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp51.not.i = icmp eq i16 %14, 0
  br i1 %cmp51.not.i, label %for.cond.preheader.i.if.end10_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end10_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %15 = ptrtoint ptr %num_chipselect7.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_chipselect7.i, align 2
  %conv16.i = zext i16 %16 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv16.i
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end10_crit_edge

for.cond.i.if.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call18.i = tail call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %i.052.i, i32 noundef 7) #3
  %17 = ptrtoint ptr %cs_gpios.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cs_gpios.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %18, i32 %i.052.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call18.i, ptr %arrayidx.i, align 4
  %20 = load ptr, ptr %cs_gpios.i, align 4
  %arrayidx21.i = getelementptr ptr, ptr %20, i32 %i.052.i
  %21 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx21.i, align 4
  %cmp.i.i = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end7, label %for.cond.i

if.end7:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup50

if.end10:                                         ; preds = %for.cond.i.if.end10_crit_edge, %for.cond.preheader.i.if.end10_crit_edge, %if.then4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  %call.i93 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 3) #3
  %mosi.i = getelementptr inbounds %struct.spi_gpio, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %mosi.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i93, ptr %mosi.i, align 4
  %cmp.i.i94 = icmp ugt ptr %call.i93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i94, label %if.end10.spi_gpio_request.exit_crit_edge, label %if.end.i95

if.end10.spi_gpio_request.exit_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_gpio_request.exit

if.end.i95:                                       ; preds = %if.end10
  %call5.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 1) #3
  %miso.i = getelementptr inbounds %struct.spi_gpio, ptr %25, i32 0, i32 2
  %27 = ptrtoint ptr %miso.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i, ptr %miso.i, align 4
  %cmp.i24.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24.i, label %if.end.i95.spi_gpio_request.exit_crit_edge, label %if.end11.i

if.end.i95.spi_gpio_request.exit_crit_edge:       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_gpio_request.exit

if.end11.i:                                       ; preds = %if.end.i95
  %call12.i = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 3) #3
  %sck.i = getelementptr inbounds %struct.spi_gpio, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %sck.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call12.i, ptr %sck.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end11.i.spi_gpio_request.exit_crit_edge, label %if.end11.i.if.end15_crit_edge

if.end11.i.if.end15_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.end11.i.spi_gpio_request.exit_crit_edge:       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_gpio_request.exit

spi_gpio_request.exit:                            ; preds = %if.end11.i.spi_gpio_request.exit_crit_edge, %if.end.i95.spi_gpio_request.exit_crit_edge, %if.end10.spi_gpio_request.exit_crit_edge
  %retval.0.i96.in = phi ptr [ %call12.i, %if.end11.i.spi_gpio_request.exit_crit_edge ], [ %call.i93, %if.end10.spi_gpio_request.exit_crit_edge ], [ %call5.i, %if.end.i95.spi_gpio_request.exit_crit_edge ]
  %retval.0.i96 = ptrtoint ptr %retval.0.i96.in to i32
  %tobool13.not = icmp eq ptr %retval.0.i96.in, null
  br i1 %tobool13.not, label %spi_gpio_request.exit.if.end15_crit_edge, label %spi_gpio_request.exit.cleanup50_crit_edge

spi_gpio_request.exit.cleanup50_crit_edge:        ; preds = %spi_gpio_request.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup50

spi_gpio_request.exit.if.end15_crit_edge:         ; preds = %spi_gpio_request.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.end15:                                         ; preds = %spi_gpio_request.exit.if.end15_crit_edge, %if.end11.i.if.end15_crit_edge
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %bits_per_word_mask, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %30 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 32791, ptr %mode_bits, align 8
  %31 = ptrtoint ptr %mosi.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mosi.i, align 4
  %tobool16.not = icmp eq ptr %32, null
  br i1 %tobool16.not, label %if.then17, label %if.end15.if.end18_crit_edge

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 4, ptr %flags, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 4
  %conv = trunc i32 %35 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv, ptr %bus_num, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %37 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @spi_gpio_setup, ptr %setup, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %38 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @spi_gpio_cleanup, ptr %cleanup, align 8
  %master19 = getelementptr inbounds %struct.spi_bitbang, ptr %25, i32 0, i32 4
  %39 = ptrtoint ptr %master19 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %master19, align 4
  %flags20 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %40 = ptrtoint ptr %flags20 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags20, align 4
  %42 = or i16 %41, 32
  store i16 %42, ptr %flags20, align 4
  %chipselect = getelementptr inbounds %struct.spi_bitbang, ptr %25, i32 0, i32 6
  %43 = ptrtoint ptr %chipselect to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @spi_gpio_chipselect, ptr %chipselect, align 4
  %set_line_direction = getelementptr inbounds %struct.spi_bitbang, ptr %25, i32 0, i32 9
  %44 = ptrtoint ptr %set_line_direction to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @spi_gpio_set_direction, ptr %set_line_direction, align 4
  %45 = load i16, ptr %flags20, align 4
  %46 = and i16 %45, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool25.not = icmp eq i16 %46, 0
  br i1 %tobool25.not, label %if.else33, label %if.end18.if.end42_crit_edge

if.end18.if.end42_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

if.else33:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

if.end42:                                         ; preds = %if.else33, %if.end18.if.end42_crit_edge
  %spi_gpio_spec_txrx_word_mode0.sink = phi ptr [ @spi_gpio_txrx_word_mode0, %if.else33 ], [ @spi_gpio_spec_txrx_word_mode0, %if.end18.if.end42_crit_edge ]
  %spi_gpio_spec_txrx_word_mode1.sink = phi ptr [ @spi_gpio_txrx_word_mode1, %if.else33 ], [ @spi_gpio_spec_txrx_word_mode1, %if.end18.if.end42_crit_edge ]
  %spi_gpio_spec_txrx_word_mode2.sink = phi ptr [ @spi_gpio_txrx_word_mode2, %if.else33 ], [ @spi_gpio_spec_txrx_word_mode2, %if.end18.if.end42_crit_edge ]
  %spi_gpio_spec_txrx_word_mode3.sink = phi ptr [ @spi_gpio_txrx_word_mode3, %if.else33 ], [ @spi_gpio_spec_txrx_word_mode3, %if.end18.if.end42_crit_edge ]
  %47 = getelementptr inbounds %struct.spi_bitbang, ptr %25, i32 0, i32 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %spi_gpio_spec_txrx_word_mode0.sink, ptr %47, align 4
  %49 = getelementptr %struct.spi_bitbang, ptr %25, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %spi_gpio_spec_txrx_word_mode1.sink, ptr %49, align 4
  %51 = getelementptr %struct.spi_bitbang, ptr %25, i32 0, i32 8, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %spi_gpio_spec_txrx_word_mode2.sink, ptr %51, align 4
  %53 = getelementptr %struct.spi_bitbang, ptr %25, i32 0, i32 8, i32 3
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %spi_gpio_spec_txrx_word_mode3.sink, ptr %53, align 4
  %setup_transfer = getelementptr inbounds %struct.spi_bitbang, ptr %25, i32 0, i32 5
  %55 = ptrtoint ptr %setup_transfer to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @spi_bitbang_setup_transfer, ptr %setup_transfer, align 4
  %call44 = tail call i32 @spi_bitbang_init(ptr noundef %25) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.cleanup50_crit_edge

if.end42.cleanup50_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup50

if.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  %call49 = tail call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i) #3
  br label %cleanup50

cleanup50:                                        ; preds = %if.end47, %if.end42.cleanup50_crit_edge, %spi_gpio_request.exit.cleanup50_crit_edge, %if.end7, %if.end.i.cleanup50_crit_edge, %lor.lhs.false.i.cleanup50_crit_edge, %if.else.cleanup50_crit_edge, %entry.cleanup50_crit_edge
  %retval.0 = phi i32 [ %call49, %if.end47 ], [ -12, %entry.cleanup50_crit_edge ], [ %23, %if.end7 ], [ %retval.0.i96, %spi_gpio_request.exit.cleanup50_crit_edge ], [ %call44, %if.end42.cleanup50_crit_edge ], [ -12, %if.end.i.cleanup50_crit_edge ], [ -19, %if.else.cleanup50_crit_edge ], [ -19, %lor.lhs.false.i.cleanup50_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_gpio_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %cs_gpios = getelementptr inbounds %struct.spi_gpio, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %cs_gpios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cs_gpios, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.then9_crit_edge, label %if.then

entry.if.then9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

if.then:                                          ; preds = %entry
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr ptr, ptr %5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %10 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %controller_state, align 8
  %tobool2.not = icmp ne ptr %11, null
  %tobool3.not = icmp eq ptr %9, null
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.then.if.then9_crit_edge, label %if.end7

if.then.if.then9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

if.end7:                                          ; preds = %if.then
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 8
  %and = lshr i32 %13, 2
  %and.lobit = and i32 %and, 1
  %14 = xor i32 %and.lobit, 1
  %call6 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %9, i32 noundef %14) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool8.not = icmp eq i32 %call6, 0
  br i1 %tobool8.not, label %if.end7.if.then9_crit_edge, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

if.then9:                                         ; preds = %if.end7.if.then9_crit_edge, %if.then.if.then9_crit_edge, %entry.if.then9_crit_edge
  %call10 = tail call i32 @spi_bitbang_setup(ptr noundef %spi) #3
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %status.1 = phi i32 [ %call6, %if.end7.if.end11_crit_edge ], [ %call10, %if.then9 ]
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_gpio_cleanup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @spi_bitbang_cleanup(ptr noundef %spi) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_gpio_chipselect(ptr nocapture noundef readonly %spi, i32 noundef %is_active) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_active)
  %tobool.not = icmp eq i32 %is_active, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sck = getelementptr inbounds %struct.spi_gpio, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sck, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 8
  %and = and i32 %7, 2
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef %and) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cs_gpios = getelementptr inbounds %struct.spi_gpio, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %cs_gpios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cs_gpios, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %10 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr ptr, ptr %9, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %mode4 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %14 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode4, align 8
  %and5 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %cond = select i1 %tobool6.not, i32 %lnot.ext, i32 %is_active
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef %cond) #3
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_gpio_set_direction(ptr nocapture noundef readonly %spi, i1 noundef zeroext %output) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %mosi = getelementptr inbounds %struct.spi_gpio, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mosi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mosi, align 4
  br i1 %output, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @gpiod_direction_output(ptr noundef %5, i32 noundef 1) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @gpiod_direction_input(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 8
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %sck = getelementptr inbounds %struct.spi_gpio, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %sck to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sck, align 4
  %and10 = lshr i32 %7, 1
  %and10.lobit = and i32 %and10, 1
  %10 = xor i32 %and10.lobit, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef %10) #3
  %11 = ptrtoint ptr %sck to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sck, align 4
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 8
  %and14 = lshr i32 %14, 1
  %and14.lobit = and i32 %and14, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %12, i32 noundef %and14.lobit) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_gpio_spec_txrx_word_mode0(ptr nocapture noundef readonly %spi, i32 noundef %nsecs, i32 noundef %word, i8 noundef zeroext %bits, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %conv.i = zext i8 %bits to i32
  %sub3.i = sub nsw i32 32, %conv.i
  %shl4.i = shl i32 %word, %sub3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bits)
  %tobool5.not9.i = icmp eq i8 %bits, 0
  br i1 %tobool5.not9.i, label %entry.bitbang_txrx_be_cpha0.exit_crit_edge, label %for.body.lr.ph.i, !prof !35

entry.bitbang_txrx_be_cpha0.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha0.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %flags1 = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags1, align 4
  %conv = zext i16 %3 to i32
  %4 = xor i32 %word, -1
  %sub.i = add nsw i32 %conv.i, -1
  %5 = lshr i32 %4, %sub.i
  %shl1.i = shl i32 %5, 31
  %and11.i = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %cmp.i = icmp eq i32 %and11.i, 0
  %and27.i = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.i = icmp eq i32 %and27.i, 0
  %mode.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end31.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %oldbit.012.i = phi i32 [ %shl1.i, %for.body.lr.ph.i ], [ %oldbit.1.i, %if.end31.i.for.body.i_crit_edge ]
  %bits.addr.011.i = phi i8 [ %bits, %for.body.lr.ph.i ], [ %dec.i, %if.end31.i.for.body.i_crit_edge ]
  %word.addr.010.i = phi i32 [ %shl4.i, %for.body.lr.ph.i ], [ %word.addr.1.i, %if.end31.i.for.body.i_crit_edge ]
  br i1 %cmp.i, label %if.then.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then.i:                                        ; preds = %for.body.i
  %and13.i = and i32 %word.addr.010.i, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %and13.i, i32 %oldbit.012.i)
  %cmp14.not.i = icmp eq i32 %and13.i, %oldbit.012.i
  br i1 %cmp14.not.i, label %if.then.i.do.end.i_crit_edge, label %if.then16.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then16.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %mosi.i.i = getelementptr inbounds %struct.spi_gpio, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %mosi.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mosi.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef %and13.i) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then16.i, %if.then.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %oldbit.1.i = phi i32 [ %and13.i, %if.then16.i ], [ %oldbit.012.i, %if.then.i.do.end.i_crit_edge ], [ %oldbit.012.i, %for.body.i.do.end.i_crit_edge ]
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i2.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i.i2.i, align 4
  %sck.i.i = getelementptr inbounds %struct.spi_gpio, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %sck.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sck.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef 1) #3
  %shl26.i = shl i32 %word.addr.010.i, 1
  br i1 %cmp28.i, label %if.then30.i, label %do.end.i.if.end31.i_crit_edge

do.end.i.if.end31.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31.i

if.then30.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i4.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i.i4.i, align 4
  %22 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode.i.i, align 8
  %and.i.i = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %miso.i.i = getelementptr inbounds %struct.spi_gpio, ptr %21, i32 0, i32 2
  %mosi.i5.i = getelementptr inbounds %struct.spi_gpio, ptr %21, i32 0, i32 3
  %miso.sink.i.i = select i1 %tobool.not.i.i, ptr %miso.i.i, ptr %mosi.i5.i
  %24 = ptrtoint ptr %miso.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %miso.sink.i.i, align 4
  %call4.i.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %25) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %retval.0.in.i.i = icmp ne i32 %call4.i.i, 0
  %retval.0.i.i = zext i1 %retval.0.in.i.i to i32
  %or.i = or i32 %shl26.i, %retval.0.i.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %do.end.i.if.end31.i_crit_edge
  %word.addr.1.i = phi i32 [ %or.i, %if.then30.i ], [ %shl26.i, %do.end.i.if.end31.i_crit_edge ]
  %26 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i7.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i.i7.i, align 4
  %sck.i8.i = getelementptr inbounds %struct.spi_gpio, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %sck.i8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sck.i8.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %31, i32 noundef 0) #3
  %dec.i = add i8 %bits.addr.011.i, -1
  %tobool5.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool5.not.i, label %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge, label %if.end31.i.for.body.i_crit_edge, !prof !35

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge:  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha0.exit

bitbang_txrx_be_cpha0.exit:                       ; preds = %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge, %entry.bitbang_txrx_be_cpha0.exit_crit_edge
  %word.addr.0.lcssa.i = phi i32 [ %shl4.i, %entry.bitbang_txrx_be_cpha0.exit_crit_edge ], [ %word.addr.1.i, %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge ]
  ret i32 %word.addr.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_gpio_spec_txrx_word_mode1(ptr nocapture noundef readonly %spi, i32 noundef %nsecs, i32 noundef %word, i8 noundef zeroext %bits, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %conv.i = zext i8 %bits to i32
  %sub3.i = sub nsw i32 32, %conv.i
  %shl4.i = shl i32 %word, %sub3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bits)
  %tobool5.not9.i = icmp eq i8 %bits, 0
  br i1 %tobool5.not9.i, label %entry.bitbang_txrx_be_cpha1.exit_crit_edge, label %for.body.lr.ph.i, !prof !35

entry.bitbang_txrx_be_cpha1.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha1.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %flags1 = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags1, align 4
  %conv = zext i16 %3 to i32
  %4 = xor i32 %word, -1
  %sub.i = add nsw i32 %conv.i, -1
  %5 = lshr i32 %4, %sub.i
  %shl1.i = shl i32 %5, 31
  %and14.i = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %cmp.i = icmp eq i32 %and14.i, 0
  %and27.i = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.i = icmp eq i32 %and27.i, 0
  %mode.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %oldbit.012.i = phi i32 [ %shl1.i, %for.body.lr.ph.i ], [ %oldbit.1.i, %for.inc.i.for.body.i_crit_edge ]
  %bits.addr.011.i = phi i8 [ %bits, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %word.addr.010.i = phi i32 [ %shl4.i, %for.body.lr.ph.i ], [ %word.addr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %sck.i.i = getelementptr inbounds %struct.spi_gpio, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sck.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sck.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 1) #3
  br i1 %cmp.i, label %if.then.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then.i:                                        ; preds = %for.body.i
  %and16.i = and i32 %word.addr.010.i, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %and16.i, i32 %oldbit.012.i)
  %cmp17.not.i = icmp eq i32 %and16.i, %oldbit.012.i
  br i1 %cmp17.not.i, label %if.then.i.do.end.i_crit_edge, label %if.then19.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then19.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i2.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i.i2.i, align 4
  %mosi.i.i = getelementptr inbounds %struct.spi_gpio, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %mosi.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mosi.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef %and16.i) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then19.i, %if.then.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %oldbit.1.i = phi i32 [ %and16.i, %if.then19.i ], [ %oldbit.012.i, %if.then.i.do.end.i_crit_edge ], [ %oldbit.012.i, %for.body.i.do.end.i_crit_edge ]
  %18 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i4.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i.i4.i, align 4
  %sck.i5.i = getelementptr inbounds %struct.spi_gpio, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %sck.i5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sck.i5.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %23, i32 noundef 0) #3
  %shl26.i = shl i32 %word.addr.010.i, 1
  br i1 %cmp28.i, label %if.then30.i, label %do.end.i.for.inc.i_crit_edge

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then30.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i7.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i.i7.i, align 4
  %28 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode.i.i, align 8
  %and.i.i = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %miso.i.i = getelementptr inbounds %struct.spi_gpio, ptr %27, i32 0, i32 2
  %mosi.i8.i = getelementptr inbounds %struct.spi_gpio, ptr %27, i32 0, i32 3
  %miso.sink.i.i = select i1 %tobool.not.i.i, ptr %miso.i.i, ptr %mosi.i8.i
  %30 = ptrtoint ptr %miso.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %miso.sink.i.i, align 4
  %call4.i.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %31) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %retval.0.in.i.i = icmp ne i32 %call4.i.i, 0
  %retval.0.i.i = zext i1 %retval.0.in.i.i to i32
  %or.i = or i32 %shl26.i, %retval.0.i.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then30.i, %do.end.i.for.inc.i_crit_edge
  %word.addr.1.i = phi i32 [ %or.i, %if.then30.i ], [ %shl26.i, %do.end.i.for.inc.i_crit_edge ]
  %dec.i = add i8 %bits.addr.011.i, -1
  %tobool5.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool5.not.i, label %for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge, !prof !35

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha1.exit

bitbang_txrx_be_cpha1.exit:                       ; preds = %for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge, %entry.bitbang_txrx_be_cpha1.exit_crit_edge
  %word.addr.0.lcssa.i = phi i32 [ %shl4.i, %entry.bitbang_txrx_be_cpha1.exit_crit_edge ], [ %word.addr.1.i, %for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge ]
  ret i32 %word.addr.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_gpio_spec_txrx_word_mode2(ptr nocapture noundef readonly %spi, i32 noundef %nsecs, i32 noundef %word, i8 noundef zeroext %bits, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %conv.i = zext i8 %bits to i32
  %sub3.i = sub nsw i32 32, %conv.i
  %shl4.i = shl i32 %word, %sub3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bits)
  %tobool5.not9.i = icmp eq i8 %bits, 0
  br i1 %tobool5.not9.i, label %entry.bitbang_txrx_be_cpha0.exit_crit_edge, label %for.body.lr.ph.i, !prof !35

entry.bitbang_txrx_be_cpha0.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha0.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %flags1 = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags1, align 4
  %conv = zext i16 %3 to i32
  %4 = xor i32 %word, -1
  %sub.i = add nsw i32 %conv.i, -1
  %5 = lshr i32 %4, %sub.i
  %shl1.i = shl i32 %5, 31
  %and11.i = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %cmp.i = icmp eq i32 %and11.i, 0
  %and27.i = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.i = icmp eq i32 %and27.i, 0
  %mode.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end31.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %oldbit.012.i = phi i32 [ %shl1.i, %for.body.lr.ph.i ], [ %oldbit.1.i, %if.end31.i.for.body.i_crit_edge ]
  %bits.addr.011.i = phi i8 [ %bits, %for.body.lr.ph.i ], [ %dec.i, %if.end31.i.for.body.i_crit_edge ]
  %word.addr.010.i = phi i32 [ %shl4.i, %for.body.lr.ph.i ], [ %word.addr.1.i, %if.end31.i.for.body.i_crit_edge ]
  br i1 %cmp.i, label %if.then.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then.i:                                        ; preds = %for.body.i
  %and13.i = and i32 %word.addr.010.i, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %and13.i, i32 %oldbit.012.i)
  %cmp14.not.i = icmp eq i32 %and13.i, %oldbit.012.i
  br i1 %cmp14.not.i, label %if.then.i.do.end.i_crit_edge, label %if.then16.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then16.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %mosi.i.i = getelementptr inbounds %struct.spi_gpio, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %mosi.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mosi.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef %and13.i) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then16.i, %if.then.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %oldbit.1.i = phi i32 [ %and13.i, %if.then16.i ], [ %oldbit.012.i, %if.then.i.do.end.i_crit_edge ], [ %oldbit.012.i, %for.body.i.do.end.i_crit_edge ]
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i2.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i.i2.i, align 4
  %sck.i.i = getelementptr inbounds %struct.spi_gpio, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %sck.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sck.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef 0) #3
  %shl26.i = shl i32 %word.addr.010.i, 1
  br i1 %cmp28.i, label %if.then30.i, label %do.end.i.if.end31.i_crit_edge

do.end.i.if.end31.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31.i

if.then30.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i4.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i.i4.i, align 4
  %22 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode.i.i, align 8
  %and.i.i = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %miso.i.i = getelementptr inbounds %struct.spi_gpio, ptr %21, i32 0, i32 2
  %mosi.i5.i = getelementptr inbounds %struct.spi_gpio, ptr %21, i32 0, i32 3
  %miso.sink.i.i = select i1 %tobool.not.i.i, ptr %miso.i.i, ptr %mosi.i5.i
  %24 = ptrtoint ptr %miso.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %miso.sink.i.i, align 4
  %call4.i.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %25) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %retval.0.in.i.i = icmp ne i32 %call4.i.i, 0
  %retval.0.i.i = zext i1 %retval.0.in.i.i to i32
  %or.i = or i32 %shl26.i, %retval.0.i.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %do.end.i.if.end31.i_crit_edge
  %word.addr.1.i = phi i32 [ %or.i, %if.then30.i ], [ %shl26.i, %do.end.i.if.end31.i_crit_edge ]
  %26 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i7.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i.i7.i, align 4
  %sck.i8.i = getelementptr inbounds %struct.spi_gpio, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %sck.i8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sck.i8.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %31, i32 noundef 1) #3
  %dec.i = add i8 %bits.addr.011.i, -1
  %tobool5.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool5.not.i, label %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge, label %if.end31.i.for.body.i_crit_edge, !prof !35

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge:  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha0.exit

bitbang_txrx_be_cpha0.exit:                       ; preds = %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge, %entry.bitbang_txrx_be_cpha0.exit_crit_edge
  %word.addr.0.lcssa.i = phi i32 [ %shl4.i, %entry.bitbang_txrx_be_cpha0.exit_crit_edge ], [ %word.addr.1.i, %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge ]
  ret i32 %word.addr.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_gpio_spec_txrx_word_mode3(ptr nocapture noundef readonly %spi, i32 noundef %nsecs, i32 noundef %word, i8 noundef zeroext %bits, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %conv.i = zext i8 %bits to i32
  %sub3.i = sub nsw i32 32, %conv.i
  %shl4.i = shl i32 %word, %sub3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bits)
  %tobool5.not9.i = icmp eq i8 %bits, 0
  br i1 %tobool5.not9.i, label %entry.bitbang_txrx_be_cpha1.exit_crit_edge, label %for.body.lr.ph.i, !prof !35

entry.bitbang_txrx_be_cpha1.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha1.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %flags1 = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags1, align 4
  %conv = zext i16 %3 to i32
  %4 = xor i32 %word, -1
  %sub.i = add nsw i32 %conv.i, -1
  %5 = lshr i32 %4, %sub.i
  %shl1.i = shl i32 %5, 31
  %and14.i = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %cmp.i = icmp eq i32 %and14.i, 0
  %and27.i = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.i = icmp eq i32 %and27.i, 0
  %mode.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %oldbit.012.i = phi i32 [ %shl1.i, %for.body.lr.ph.i ], [ %oldbit.1.i, %for.inc.i.for.body.i_crit_edge ]
  %bits.addr.011.i = phi i8 [ %bits, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %word.addr.010.i = phi i32 [ %shl4.i, %for.body.lr.ph.i ], [ %word.addr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %sck.i.i = getelementptr inbounds %struct.spi_gpio, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sck.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sck.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #3
  br i1 %cmp.i, label %if.then.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then.i:                                        ; preds = %for.body.i
  %and16.i = and i32 %word.addr.010.i, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %and16.i, i32 %oldbit.012.i)
  %cmp17.not.i = icmp eq i32 %and16.i, %oldbit.012.i
  br i1 %cmp17.not.i, label %if.then.i.do.end.i_crit_edge, label %if.then19.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then19.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i2.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i.i2.i, align 4
  %mosi.i.i = getelementptr inbounds %struct.spi_gpio, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %mosi.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mosi.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef %and16.i) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then19.i, %if.then.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %oldbit.1.i = phi i32 [ %and16.i, %if.then19.i ], [ %oldbit.012.i, %if.then.i.do.end.i_crit_edge ], [ %oldbit.012.i, %for.body.i.do.end.i_crit_edge ]
  %18 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i4.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i.i4.i, align 4
  %sck.i5.i = getelementptr inbounds %struct.spi_gpio, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %sck.i5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sck.i5.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %23, i32 noundef 1) #3
  %shl26.i = shl i32 %word.addr.010.i, 1
  br i1 %cmp28.i, label %if.then30.i, label %do.end.i.for.inc.i_crit_edge

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then30.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %master, align 4
  %driver_data.i.i.i.i7.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i.i7.i, align 4
  %28 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode.i.i, align 8
  %and.i.i = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %miso.i.i = getelementptr inbounds %struct.spi_gpio, ptr %27, i32 0, i32 2
  %mosi.i8.i = getelementptr inbounds %struct.spi_gpio, ptr %27, i32 0, i32 3
  %miso.sink.i.i = select i1 %tobool.not.i.i, ptr %miso.i.i, ptr %mosi.i8.i
  %30 = ptrtoint ptr %miso.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %miso.sink.i.i, align 4
  %call4.i.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %31) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %retval.0.in.i.i = icmp ne i32 %call4.i.i, 0
  %retval.0.i.i = zext i1 %retval.0.in.i.i to i32
  %or.i = or i32 %shl26.i, %retval.0.i.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then30.i, %do.end.i.for.inc.i_crit_edge
  %word.addr.1.i = phi i32 [ %or.i, %if.then30.i ], [ %shl26.i, %do.end.i.for.inc.i_crit_edge ]
  %dec.i = add i8 %bits.addr.011.i, -1
  %tobool5.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool5.not.i, label %for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge, !prof !35

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha1.exit

bitbang_txrx_be_cpha1.exit:                       ; preds = %for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge, %entry.bitbang_txrx_be_cpha1.exit_crit_edge
  %word.addr.0.lcssa.i = phi i32 [ %shl4.i, %entry.bitbang_txrx_be_cpha1.exit_crit_edge ], [ %word.addr.1.i, %for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge ]
  ret i32 %word.addr.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_gpio_txrx_word_mode0(ptr nocapture noundef readonly %spi, i32 noundef %nsecs, i32 noundef %word, i8 noundef zeroext %bits, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %bits to i32
  %sub3.i = sub nsw i32 32, %conv.i
  %shl4.i = shl i32 %word, %sub3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bits)
  %tobool5.not9.i = icmp eq i8 %bits, 0
  br i1 %tobool5.not9.i, label %entry.bitbang_txrx_be_cpha0.exit_crit_edge, label %for.body.lr.ph.i, !prof !35

entry.bitbang_txrx_be_cpha0.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha0.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %0 = xor i32 %word, -1
  %sub.i = add nsw i32 %conv.i, -1
  %1 = lshr i32 %0, %sub.i
  %shl1.i = shl i32 %1, 31
  %and11.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %cmp.i = icmp eq i32 %and11.i, 0
  %master.i.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %and27.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.i = icmp eq i32 %and27.i, 0
  %mode.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end31.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %oldbit.012.i = phi i32 [ %shl1.i, %for.body.lr.ph.i ], [ %oldbit.1.i, %if.end31.i.for.body.i_crit_edge ]
  %bits.addr.011.i = phi i8 [ %bits, %for.body.lr.ph.i ], [ %dec.i, %if.end31.i.for.body.i_crit_edge ]
  %word.addr.010.i = phi i32 [ %shl4.i, %for.body.lr.ph.i ], [ %word.addr.1.i, %if.end31.i.for.body.i_crit_edge ]
  br i1 %cmp.i, label %if.then.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then.i:                                        ; preds = %for.body.i
  %and13.i = and i32 %word.addr.010.i, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %and13.i, i32 %oldbit.012.i)
  %cmp14.not.i = icmp eq i32 %and13.i, %oldbit.012.i
  br i1 %cmp14.not.i, label %if.then.i.do.end.i_crit_edge, label %if.then16.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then16.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %mosi.i.i = getelementptr inbounds %struct.spi_gpio, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mosi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mosi.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef %and13.i) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then16.i, %if.then.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %oldbit.1.i = phi i32 [ %and13.i, %if.then16.i ], [ %oldbit.012.i, %if.then.i.do.end.i_crit_edge ], [ %oldbit.012.i, %for.body.i.do.end.i_crit_edge ]
  %8 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i2.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i.i2.i, align 4
  %sck.i.i = getelementptr inbounds %struct.spi_gpio, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %sck.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sck.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 1) #3
  %shl26.i = shl i32 %word.addr.010.i, 1
  br i1 %cmp28.i, label %if.then30.i, label %do.end.i.if.end31.i_crit_edge

do.end.i.if.end31.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31.i

if.then30.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i4.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i.i4.i, align 4
  %18 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode.i.i, align 8
  %and.i.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %miso.i.i = getelementptr inbounds %struct.spi_gpio, ptr %17, i32 0, i32 2
  %mosi.i5.i = getelementptr inbounds %struct.spi_gpio, ptr %17, i32 0, i32 3
  %miso.sink.i.i = select i1 %tobool.not.i.i, ptr %miso.i.i, ptr %mosi.i5.i
  %20 = ptrtoint ptr %miso.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %miso.sink.i.i, align 4
  %call4.i.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %21) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %retval.0.in.i.i = icmp ne i32 %call4.i.i, 0
  %retval.0.i.i = zext i1 %retval.0.in.i.i to i32
  %or.i = or i32 %shl26.i, %retval.0.i.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %do.end.i.if.end31.i_crit_edge
  %word.addr.1.i = phi i32 [ %or.i, %if.then30.i ], [ %shl26.i, %do.end.i.if.end31.i_crit_edge ]
  %22 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i7.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i.i7.i, align 4
  %sck.i8.i = getelementptr inbounds %struct.spi_gpio, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %sck.i8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sck.i8.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %27, i32 noundef 0) #3
  %dec.i = add i8 %bits.addr.011.i, -1
  %tobool5.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool5.not.i, label %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge, label %if.end31.i.for.body.i_crit_edge, !prof !35

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge:  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha0.exit

bitbang_txrx_be_cpha0.exit:                       ; preds = %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge, %entry.bitbang_txrx_be_cpha0.exit_crit_edge
  %word.addr.0.lcssa.i = phi i32 [ %shl4.i, %entry.bitbang_txrx_be_cpha0.exit_crit_edge ], [ %word.addr.1.i, %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge ]
  ret i32 %word.addr.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_gpio_txrx_word_mode1(ptr nocapture noundef readonly %spi, i32 noundef %nsecs, i32 noundef %word, i8 noundef zeroext %bits, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %bits to i32
  %sub3.i = sub nsw i32 32, %conv.i
  %shl4.i = shl i32 %word, %sub3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bits)
  %tobool5.not9.i = icmp eq i8 %bits, 0
  br i1 %tobool5.not9.i, label %entry.bitbang_txrx_be_cpha1.exit_crit_edge, label %for.body.lr.ph.i, !prof !35

entry.bitbang_txrx_be_cpha1.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha1.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %0 = xor i32 %word, -1
  %sub.i = add nsw i32 %conv.i, -1
  %1 = lshr i32 %0, %sub.i
  %shl1.i = shl i32 %1, 31
  %master.i.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %and14.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %cmp.i = icmp eq i32 %and14.i, 0
  %and27.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.i = icmp eq i32 %and27.i, 0
  %mode.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %oldbit.012.i = phi i32 [ %shl1.i, %for.body.lr.ph.i ], [ %oldbit.1.i, %for.inc.i.for.body.i_crit_edge ]
  %bits.addr.011.i = phi i8 [ %bits, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %word.addr.010.i = phi i32 [ %shl4.i, %for.body.lr.ph.i ], [ %word.addr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %sck.i.i = getelementptr inbounds %struct.spi_gpio, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sck.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sck.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #3
  br i1 %cmp.i, label %if.then.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then.i:                                        ; preds = %for.body.i
  %and16.i = and i32 %word.addr.010.i, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %and16.i, i32 %oldbit.012.i)
  %cmp17.not.i = icmp eq i32 %and16.i, %oldbit.012.i
  br i1 %cmp17.not.i, label %if.then.i.do.end.i_crit_edge, label %if.then19.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then19.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i2.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i.i2.i, align 4
  %mosi.i.i = getelementptr inbounds %struct.spi_gpio, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %mosi.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mosi.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef %and16.i) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then19.i, %if.then.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %oldbit.1.i = phi i32 [ %and16.i, %if.then19.i ], [ %oldbit.012.i, %if.then.i.do.end.i_crit_edge ], [ %oldbit.012.i, %for.body.i.do.end.i_crit_edge ]
  %14 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i4.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i.i4.i, align 4
  %sck.i5.i = getelementptr inbounds %struct.spi_gpio, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %sck.i5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sck.i5.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef 0) #3
  %shl26.i = shl i32 %word.addr.010.i, 1
  br i1 %cmp28.i, label %if.then30.i, label %do.end.i.for.inc.i_crit_edge

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then30.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i7.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i.i7.i, align 4
  %24 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode.i.i, align 8
  %and.i.i = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %miso.i.i = getelementptr inbounds %struct.spi_gpio, ptr %23, i32 0, i32 2
  %mosi.i8.i = getelementptr inbounds %struct.spi_gpio, ptr %23, i32 0, i32 3
  %miso.sink.i.i = select i1 %tobool.not.i.i, ptr %miso.i.i, ptr %mosi.i8.i
  %26 = ptrtoint ptr %miso.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %miso.sink.i.i, align 4
  %call4.i.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %27) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %retval.0.in.i.i = icmp ne i32 %call4.i.i, 0
  %retval.0.i.i = zext i1 %retval.0.in.i.i to i32
  %or.i = or i32 %shl26.i, %retval.0.i.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then30.i, %do.end.i.for.inc.i_crit_edge
  %word.addr.1.i = phi i32 [ %or.i, %if.then30.i ], [ %shl26.i, %do.end.i.for.inc.i_crit_edge ]
  %dec.i = add i8 %bits.addr.011.i, -1
  %tobool5.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool5.not.i, label %for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge, !prof !35

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha1.exit

bitbang_txrx_be_cpha1.exit:                       ; preds = %for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge, %entry.bitbang_txrx_be_cpha1.exit_crit_edge
  %word.addr.0.lcssa.i = phi i32 [ %shl4.i, %entry.bitbang_txrx_be_cpha1.exit_crit_edge ], [ %word.addr.1.i, %for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge ]
  ret i32 %word.addr.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_gpio_txrx_word_mode2(ptr nocapture noundef readonly %spi, i32 noundef %nsecs, i32 noundef %word, i8 noundef zeroext %bits, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %bits to i32
  %sub3.i = sub nsw i32 32, %conv.i
  %shl4.i = shl i32 %word, %sub3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bits)
  %tobool5.not9.i = icmp eq i8 %bits, 0
  br i1 %tobool5.not9.i, label %entry.bitbang_txrx_be_cpha0.exit_crit_edge, label %for.body.lr.ph.i, !prof !35

entry.bitbang_txrx_be_cpha0.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha0.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %0 = xor i32 %word, -1
  %sub.i = add nsw i32 %conv.i, -1
  %1 = lshr i32 %0, %sub.i
  %shl1.i = shl i32 %1, 31
  %and11.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %cmp.i = icmp eq i32 %and11.i, 0
  %master.i.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %and27.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.i = icmp eq i32 %and27.i, 0
  %mode.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end31.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %oldbit.012.i = phi i32 [ %shl1.i, %for.body.lr.ph.i ], [ %oldbit.1.i, %if.end31.i.for.body.i_crit_edge ]
  %bits.addr.011.i = phi i8 [ %bits, %for.body.lr.ph.i ], [ %dec.i, %if.end31.i.for.body.i_crit_edge ]
  %word.addr.010.i = phi i32 [ %shl4.i, %for.body.lr.ph.i ], [ %word.addr.1.i, %if.end31.i.for.body.i_crit_edge ]
  br i1 %cmp.i, label %if.then.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then.i:                                        ; preds = %for.body.i
  %and13.i = and i32 %word.addr.010.i, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %and13.i, i32 %oldbit.012.i)
  %cmp14.not.i = icmp eq i32 %and13.i, %oldbit.012.i
  br i1 %cmp14.not.i, label %if.then.i.do.end.i_crit_edge, label %if.then16.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then16.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %mosi.i.i = getelementptr inbounds %struct.spi_gpio, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mosi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mosi.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef %and13.i) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then16.i, %if.then.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %oldbit.1.i = phi i32 [ %and13.i, %if.then16.i ], [ %oldbit.012.i, %if.then.i.do.end.i_crit_edge ], [ %oldbit.012.i, %for.body.i.do.end.i_crit_edge ]
  %8 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i2.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i.i2.i, align 4
  %sck.i.i = getelementptr inbounds %struct.spi_gpio, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %sck.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sck.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 0) #3
  %shl26.i = shl i32 %word.addr.010.i, 1
  br i1 %cmp28.i, label %if.then30.i, label %do.end.i.if.end31.i_crit_edge

do.end.i.if.end31.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31.i

if.then30.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i4.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i.i4.i, align 4
  %18 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode.i.i, align 8
  %and.i.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %miso.i.i = getelementptr inbounds %struct.spi_gpio, ptr %17, i32 0, i32 2
  %mosi.i5.i = getelementptr inbounds %struct.spi_gpio, ptr %17, i32 0, i32 3
  %miso.sink.i.i = select i1 %tobool.not.i.i, ptr %miso.i.i, ptr %mosi.i5.i
  %20 = ptrtoint ptr %miso.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %miso.sink.i.i, align 4
  %call4.i.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %21) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %retval.0.in.i.i = icmp ne i32 %call4.i.i, 0
  %retval.0.i.i = zext i1 %retval.0.in.i.i to i32
  %or.i = or i32 %shl26.i, %retval.0.i.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %do.end.i.if.end31.i_crit_edge
  %word.addr.1.i = phi i32 [ %or.i, %if.then30.i ], [ %shl26.i, %do.end.i.if.end31.i_crit_edge ]
  %22 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i7.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i.i7.i, align 4
  %sck.i8.i = getelementptr inbounds %struct.spi_gpio, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %sck.i8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sck.i8.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %27, i32 noundef 1) #3
  %dec.i = add i8 %bits.addr.011.i, -1
  %tobool5.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool5.not.i, label %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge, label %if.end31.i.for.body.i_crit_edge, !prof !35

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge:  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha0.exit

bitbang_txrx_be_cpha0.exit:                       ; preds = %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge, %entry.bitbang_txrx_be_cpha0.exit_crit_edge
  %word.addr.0.lcssa.i = phi i32 [ %shl4.i, %entry.bitbang_txrx_be_cpha0.exit_crit_edge ], [ %word.addr.1.i, %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge ]
  ret i32 %word.addr.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_gpio_txrx_word_mode3(ptr nocapture noundef readonly %spi, i32 noundef %nsecs, i32 noundef %word, i8 noundef zeroext %bits, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %bits to i32
  %sub3.i = sub nsw i32 32, %conv.i
  %shl4.i = shl i32 %word, %sub3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bits)
  %tobool5.not9.i = icmp eq i8 %bits, 0
  br i1 %tobool5.not9.i, label %entry.bitbang_txrx_be_cpha1.exit_crit_edge, label %for.body.lr.ph.i, !prof !35

entry.bitbang_txrx_be_cpha1.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha1.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %0 = xor i32 %word, -1
  %sub.i = add nsw i32 %conv.i, -1
  %1 = lshr i32 %0, %sub.i
  %shl1.i = shl i32 %1, 31
  %master.i.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %and14.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %cmp.i = icmp eq i32 %and14.i, 0
  %and27.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.i = icmp eq i32 %and27.i, 0
  %mode.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %oldbit.012.i = phi i32 [ %shl1.i, %for.body.lr.ph.i ], [ %oldbit.1.i, %for.inc.i.for.body.i_crit_edge ]
  %bits.addr.011.i = phi i8 [ %bits, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %word.addr.010.i = phi i32 [ %shl4.i, %for.body.lr.ph.i ], [ %word.addr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %sck.i.i = getelementptr inbounds %struct.spi_gpio, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sck.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sck.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #3
  br i1 %cmp.i, label %if.then.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then.i:                                        ; preds = %for.body.i
  %and16.i = and i32 %word.addr.010.i, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %and16.i, i32 %oldbit.012.i)
  %cmp17.not.i = icmp eq i32 %and16.i, %oldbit.012.i
  br i1 %cmp17.not.i, label %if.then.i.do.end.i_crit_edge, label %if.then19.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then19.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i2.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i.i2.i, align 4
  %mosi.i.i = getelementptr inbounds %struct.spi_gpio, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %mosi.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mosi.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef %and16.i) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then19.i, %if.then.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %oldbit.1.i = phi i32 [ %and16.i, %if.then19.i ], [ %oldbit.012.i, %if.then.i.do.end.i_crit_edge ], [ %oldbit.012.i, %for.body.i.do.end.i_crit_edge ]
  %14 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i4.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i.i4.i, align 4
  %sck.i5.i = getelementptr inbounds %struct.spi_gpio, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %sck.i5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sck.i5.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef 1) #3
  %shl26.i = shl i32 %word.addr.010.i, 1
  br i1 %cmp28.i, label %if.then30.i, label %do.end.i.for.inc.i_crit_edge

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then30.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master.i.i.i, align 4
  %driver_data.i.i.i.i7.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i.i7.i, align 4
  %24 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode.i.i, align 8
  %and.i.i = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %miso.i.i = getelementptr inbounds %struct.spi_gpio, ptr %23, i32 0, i32 2
  %mosi.i8.i = getelementptr inbounds %struct.spi_gpio, ptr %23, i32 0, i32 3
  %miso.sink.i.i = select i1 %tobool.not.i.i, ptr %miso.i.i, ptr %mosi.i8.i
  %26 = ptrtoint ptr %miso.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %miso.sink.i.i, align 4
  %call4.i.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %27) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %retval.0.in.i.i = icmp ne i32 %call4.i.i, 0
  %retval.0.i.i = zext i1 %retval.0.in.i.i to i32
  %or.i = or i32 %shl26.i, %retval.0.i.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then30.i, %do.end.i.for.inc.i_crit_edge
  %word.addr.1.i = phi i32 [ %or.i, %if.then30.i ], [ %shl26.i, %do.end.i.for.inc.i_crit_edge ]
  %dec.i = add i8 %bits.addr.011.i, -1
  %tobool5.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool5.not.i, label %for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge, !prof !35

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitbang_txrx_be_cpha1.exit

bitbang_txrx_be_cpha1.exit:                       ; preds = %for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge, %entry.bitbang_txrx_be_cpha1.exit_crit_edge
  %word.addr.0.lcssa.i = phi i32 [ %shl4.i, %entry.bitbang_txrx_be_cpha1.exit_crit_edge ], [ %word.addr.1.i, %for.inc.i.bitbang_txrx_be_cpha1.exit_crit_edge ]
  ret i32 %word.addr.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_setup_transfer(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_bitbang_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__UNIQUE_ID_alias230, !1, !"__UNIQUE_ID_alias230", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-gpio.c", i32 427, i32 1}
!2 = !{ptr @__initcall__kmod_spi_gpio__231_436_spi_gpio_driver_init6, !3, !"__initcall__kmod_spi_gpio__231_436_spi_gpio_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-gpio.c", i32 436, i32 1}
!4 = !{ptr @__exitcall_spi_gpio_driver_exit, !3, !"__exitcall_spi_gpio_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-gpio.c", i32 438, i32 1}
!7 = !{ptr @__UNIQUE_ID_author233, !8, !"__UNIQUE_ID_author233", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-gpio.c", i32 439, i32 1}
!9 = !{ptr @__UNIQUE_ID_file234, !10, !"__UNIQUE_ID_file234", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-gpio.c", i32 440, i32 1}
!11 = !{ptr @__UNIQUE_ID_license235, !10, !"__UNIQUE_ID_license235", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-gpio.c", i32 431, i32 11}
!14 = !{ptr @spi_gpio_driver, !15, !"spi_gpio_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-gpio.c", i32 429, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-gpio.c", i32 344, i32 53}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-gpio.c", i32 284, i32 48}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-gpio.c", i32 288, i32 48}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-gpio.c", i32 292, i32 38}
!24 = !{ptr @spi_gpio_dt_ids, !25, !"spi_gpio_dt_ids", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-gpio.c", i32 297, i32 34}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
