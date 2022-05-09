; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-axi-spi-engine.c_pt.bc'
source_filename = "../drivers/spi/spi-axi-spi-engine.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.spi_engine = type { ptr, ptr, %struct.spinlock, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_engine_program = type { i32, [0 x i16] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }

@__initcall__kmod_spi_axi_spi_engine__244_593_spi_engine_driver_init6 = internal global ptr @spi_engine_driver_init, section ".initcall6.init", align 4
@spi_engine_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spi_engine_probe, ptr @spi_engine_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spi_engine_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spi_engine_driver_exit = internal global ptr @spi_engine_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author245 = internal constant [63 x i8] c"spi_axi_spi_engine.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [75 x i8] c"spi_axi_spi_engine.description=Analog Devices SPI engine peripheral driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [55 x i8] c"spi_axi_spi_engine.file=drivers/spi/spi-axi-spi-engine\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [31 x i8] c"spi_axi_spi_engine.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spi-engine\00", [21 x i8] zeroinitializer }, align 32
@spi_engine_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,axi-spi-engine-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@spi_engine_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&spi_engine->lock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s_axi_aclk\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_clk\00", [24 x i8] zeroinitializer }, align 32
@spi_engine_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 519, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unsupported peripheral version %u.%u.%c\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_engine_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/spi/spi-axi-spi-engine.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spi_engine_probe._entry_ptr = internal global ptr @spi_engine_probe._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"spi_engine_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 585, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 589, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [23 x i8] c"spi_engine_match_table\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 579, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 486, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 488, i32 45 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 494, i32 49 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [36 x i8] c"../drivers/spi/spi-axi-spi-engine.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 516, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_spi_engine_driver_exit, ptr @__initcall__kmod_spi_axi_spi_engine__244_593_spi_engine_driver_init6, ptr @spi_engine_driver_exit, ptr @spi_engine_probe._entry, ptr @spi_engine_probe._entry_ptr, ptr @spi_engine_driver, ptr @.str, ptr @spi_engine_match_table, ptr @spi_engine_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_engine_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_engine_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_engine_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_engine_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_engine_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spi_engine_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_engine_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @spi_engine_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_engine_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i135 = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 0, i1 noundef zeroext false) #7
  %tobool6.not = icmp eq ptr %call.i135, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i135, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.spi_engine, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @spi_engine_probe.__key, i16 noundef signext 3) #7
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call11, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call11 to i32
  br label %spi_controller_put.exit

if.end17:                                         ; preds = %if.end8
  %call19 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  %ref_clk = getelementptr inbounds %struct.spi_engine, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %ref_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call19, ptr %ref_clk, align 4
  %cmp.i136 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call19 to i32
  br label %spi_controller_put.exit

if.end25:                                         ; preds = %if.end17
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %call.i137 = tail call i32 @clk_prepare(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.spi_controller_put.exit_crit_edge

if.end25.spi_controller_put.exit_crit_edge:       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.end.i:                                         ; preds = %if.end25
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end30, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %6) #7
  br label %spi_controller_put.exit

if.end30:                                         ; preds = %if.end.i
  %7 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ref_clk, align 4
  %call.i138 = tail call i32 @clk_prepare(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool.not.i139 = icmp eq i32 %call.i138, 0
  br i1 %tobool.not.i139, label %if.end.i142, label %if.end30.err_clk_disable_crit_edge

if.end30.err_clk_disable_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_disable

if.end.i142:                                      ; preds = %if.end30
  %call1.i140 = tail call i32 @clk_enable(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i140)
  %tobool2.not.i141 = icmp eq i32 %call1.i140, 0
  br i1 %tobool2.not.i141, label %if.end35, label %if.end.i142.err_clk_disable.sink.split_crit_edge

if.end.i142.err_clk_disable.sink.split_crit_edge: ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_disable.sink.split

if.end35:                                         ; preds = %if.end.i142
  %call36 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.spi_engine, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call36, ptr %base, align 4
  %cmp.i146 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call36 to i32
  br label %err_ref_clk_disable

if.end42:                                         ; preds = %if.end35
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call36) #7, !srcloc !40
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %shr = lshr i32 %12, 16
  %and = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp46.not = icmp eq i32 %and, 1
  br i1 %cmp46.not, label %if.end57, label %do.end50

do.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %shr54 = lshr i32 %12, 8
  %and55 = and i32 %shr54, 255
  %and56 = and i32 %12, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %and, i32 noundef %and55, i32 noundef %and56) #10
  br label %err_ref_clk_disable

if.end57:                                         ; preds = %if.end42
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr59 = getelementptr i8, ptr %14, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 0) #7, !srcloc !42
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr61 = getelementptr i8, ptr %16, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 -16777216) #7, !srcloc !42
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr63 = getelementptr i8, ptr %18, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 0) #7, !srcloc !42
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %call.i147 = tail call i32 @request_threaded_irq(i32 noundef %call, ptr noundef nonnull @spi_engine_irq, ptr noundef null, i32 noundef 0, ptr noundef %20, ptr noundef nonnull %call.i135) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool65.not = icmp eq i32 %call.i147, 0
  br i1 %tobool65.not, label %if.end67, label %if.end57.err_ref_clk_disable_crit_edge

if.end57.err_ref_clk_disable_crit_edge:           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ref_clk_disable

if.end67:                                         ; preds = %if.end57
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %of_node70 = getelementptr inbounds %struct.device, ptr %call.i135, i32 0, i32 27
  %23 = ptrtoint ptr %of_node70 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %of_node70, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i135, i32 0, i32 5
  %24 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 19, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i135, i32 0, i32 7
  %25 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 128, ptr %bits_per_word_mask, align 8
  %26 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ref_clk, align 4
  %call72 = tail call i32 @clk_get_rate(ptr noundef %27) #7
  %div134 = lshr i32 %call72, 1
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i135, i32 0, i32 9
  %28 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div134, ptr %max_speed_hz, align 8
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i135, i32 0, i32 45
  %29 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @spi_engine_transfer_one_message, ptr %transfer_one_message, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i135, i32 0, i32 3
  %30 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 8, ptr %num_chipselect, align 2
  %call73 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i135) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %err_free_irq

if.end76:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i148 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i148 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i135, ptr %driver_data.i.i148, align 4
  br label %cleanup

err_free_irq:                                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %call77 = tail call ptr @free_irq(i32 noundef %call, ptr noundef nonnull %call.i135) #7
  br label %err_ref_clk_disable

err_ref_clk_disable:                              ; preds = %err_free_irq, %if.end57.err_ref_clk_disable_crit_edge, %do.end50, %if.then39
  %ret.0 = phi i32 [ %10, %if.then39 ], [ -19, %do.end50 ], [ %call.i147, %if.end57.err_ref_clk_disable_crit_edge ], [ %call73, %err_free_irq ]
  %32 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %33) #7
  br label %err_clk_disable.sink.split

err_clk_disable.sink.split:                       ; preds = %err_ref_clk_disable, %if.end.i142.err_clk_disable.sink.split_crit_edge
  %.sink = phi ptr [ %33, %err_ref_clk_disable ], [ %8, %if.end.i142.err_clk_disable.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %err_ref_clk_disable ], [ %call1.i140, %if.end.i142.err_clk_disable.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_clk_disable.sink.split, %if.end30.err_clk_disable_crit_edge
  %ret.1 = phi i32 [ %call.i138, %if.end30.err_clk_disable_crit_edge ], [ %ret.1.ph, %err_clk_disable.sink.split ]
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  tail call void @clk_disable(ptr noundef %35) #7
  tail call void @clk_unprepare(ptr noundef %35) #7
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %err_clk_disable, %if.then3.i, %if.end25.spi_controller_put.exit_crit_edge, %if.then22, %if.then14
  %ret.2 = phi i32 [ %2, %if.then14 ], [ %4, %if.then22 ], [ %ret.1, %err_clk_disable ], [ %call1.i, %if.then3.i ], [ %call.i137, %if.end25.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i135) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end76, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %spi_controller_put.exit ], [ 0, %if.end76 ], [ -6, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_engine_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.spi_controller_get.exit_crit_edge, label %lor.lhs.false.i

entry.spi_controller_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_get.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @get_device(ptr noundef nonnull %1) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  %spec.select = select i1 %tobool1.not.i, ptr null, ptr %1
  br label %spi_controller_get.exit

spi_controller_get.exit:                          ; preds = %lor.lhs.false.i, %entry.spi_controller_get.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.spi_controller_get.exit_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %driver_data.i.i17 = getelementptr inbounds %struct.device, ptr %retval.0.i, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i17 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i17, align 4
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  tail call void @spi_unregister_controller(ptr noundef %retval.0.i) #7
  %call4 = tail call ptr @free_irq(i32 noundef %call3, ptr noundef %retval.0.i) #7
  %tobool.not.i18 = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not.i18, label %spi_controller_get.exit.spi_controller_put.exit_crit_edge, label %if.then.i

spi_controller_get.exit.spi_controller_put.exit_crit_edge: ; preds = %spi_controller_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.then.i:                                        ; preds = %spi_controller_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_device(ptr noundef nonnull %retval.0.i) #7
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %if.then.i, %spi_controller_get.exit.spi_controller_put.exit_crit_edge
  %base = getelementptr inbounds %struct.spi_engine, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777216) #7, !srcloc !42
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #7, !srcloc !42
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 16777216) #7, !srcloc !42
  %ref_clk = getelementptr inbounds %struct.spi_engine, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_engine_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %devid, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 132
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !40
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 134217728) #7, !srcloc !42
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 192
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !40
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %completed_id = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %completed_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %completed_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %and9 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then11:                                        ; preds = %if.end
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 224
  %add.ptr2.i = getelementptr i8, ptr %14, i32 208
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !40
  %cmd_length.i = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not32.i = icmp eq i32 %15, 0
  br i1 %tobool.not32.i, label %if.then11.spi_engine_write_cmd_fifo.exit_crit_edge, label %land.rhs.lr.ph.i

if.then11.spi_engine_write_cmd_fifo.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_write_cmd_fifo.exit

land.rhs.lr.ph.i:                                 ; preds = %if.then11
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %cmd_buf.i = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %cmd_length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr.i = load i32, ptr %cmd_length.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.end.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %18 = phi i32 [ %.pr.i, %land.rhs.lr.ph.i ], [ %sub.i, %for.end.i.land.rhs.i_crit_edge ]
  %n.033.i = phi i32 [ %16, %land.rhs.lr.ph.i ], [ %sub10.i, %for.end.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.not.i = icmp eq i32 %18, 0
  br i1 %tobool3.not.i, label %land.rhs.i.spi_engine_write_cmd_fifo.exit_crit_edge, label %while.body.i

land.rhs.i.spi_engine_write_cmd_fifo.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_write_cmd_fifo.exit

while.body.i:                                     ; preds = %land.rhs.i
  %19 = tail call i32 @llvm.umin.i32(i32 %n.033.i, i32 %18) #7
  %20 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd_buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp630.not.i = icmp eq i32 %19, 0
  br i1 %cmp630.not.i, label %while.body.i.for.end.i_crit_edge, label %while.body.i.for.body.i_crit_edge

while.body.i.for.body.i_crit_edge:                ; preds = %while.body.i
  br label %for.body.i

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body.i.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %while.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %21, i32 %i.031.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %23 to i32
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #7, !srcloc !42
  %inc.i = add nuw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %25 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd_buf.i, align 4
  %add.ptr8.i = getelementptr i16, ptr %26, i32 %19
  store ptr %add.ptr8.i, ptr %cmd_buf.i, align 4
  %27 = ptrtoint ptr %cmd_length.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmd_length.i, align 4
  %sub.i = sub i32 %28, %19
  store i32 %sub.i, ptr %cmd_length.i, align 4
  %sub10.i = sub i32 %n.033.i, %19
  %tobool.not.i = icmp eq i32 %sub10.i, 0
  br i1 %tobool.not.i, label %for.end.i.spi_engine_write_cmd_fifo.exit_crit_edge, label %for.end.i.land.rhs.i_crit_edge

for.end.i.land.rhs.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

for.end.i.spi_engine_write_cmd_fifo.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_write_cmd_fifo.exit

spi_engine_write_cmd_fifo.exit:                   ; preds = %for.end.i.spi_engine_write_cmd_fifo.exit_crit_edge, %land.rhs.i.spi_engine_write_cmd_fifo.exit_crit_edge, %if.then11.spi_engine_write_cmd_fifo.exit_crit_edge
  %29 = ptrtoint ptr %cmd_length.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmd_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp12.i.not = icmp eq i32 %30, 0
  %spec.select = zext i1 %cmp12.i.not to i32
  br label %if.end15

if.end15:                                         ; preds = %spi_engine_write_cmd_fifo.exit, %if.end.if.end15_crit_edge
  %disable_int.0 = phi i32 [ 0, %if.end.if.end15_crit_edge ], [ %spec.select, %spi_engine_write_cmd_fifo.exit ]
  %and16 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call fastcc zeroext i1 @spi_engine_write_tx_fifo(ptr noundef %1)
  %or21 = or i32 %disable_int.0, 2
  %spec.select81 = select i1 %call19, i32 %disable_int.0, i32 %or21
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end15.if.end23_crit_edge
  %disable_int.1 = phi i32 [ %disable_int.0, %if.end15.if.end23_crit_edge ], [ %spec.select81, %if.then18 ]
  %and24 = and i32 %5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end31_crit_edge, label %if.then26

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then26:                                        ; preds = %if.end23
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr.i84 = getelementptr i8, ptr %32, i32 232
  %add.ptr2.i85 = getelementptr i8, ptr %32, i32 216
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i85) #7, !srcloc !40
  %rx_length.i = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not41.i = icmp eq i32 %33, 0
  br i1 %tobool.not41.i, label %if.then26.spi_engine_read_rx_fifo.exit_crit_edge, label %land.rhs.lr.ph.i86

if.then26.spi_engine_read_rx_fifo.exit_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_read_rx_fifo.exit

land.rhs.lr.ph.i86:                               ; preds = %if.then26
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %rx_buf.i = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 13
  %rx_xfer.i.i = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 11
  %msg1.i.i.i = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 4
  br label %land.rhs.i88

land.rhs.i88:                                     ; preds = %if.end.i.land.rhs.i88_crit_edge, %land.rhs.lr.ph.i86
  %n.042.i = phi i32 [ %34, %land.rhs.lr.ph.i86 ], [ %sub13.i, %if.end.i.land.rhs.i88_crit_edge ]
  %35 = ptrtoint ptr %rx_length.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool3.not.i87 = icmp eq i32 %36, 0
  br i1 %tobool3.not.i87, label %land.rhs.i88.spi_engine_read_rx_fifo.exit_crit_edge, label %while.body.i89

land.rhs.i88.spi_engine_read_rx_fifo.exit_crit_edge: ; preds = %land.rhs.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_read_rx_fifo.exit

while.body.i89:                                   ; preds = %land.rhs.i88
  %37 = tail call i32 @llvm.umin.i32(i32 %n.042.i, i32 %36) #7
  %38 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp638.not.i = icmp eq i32 %37, 0
  br i1 %cmp638.not.i, label %while.body.i89.for.end.i96_crit_edge, label %while.body.i89.for.body.i94_crit_edge

while.body.i89.for.body.i94_crit_edge:            ; preds = %while.body.i89
  br label %for.body.i94

while.body.i89.for.end.i96_crit_edge:             ; preds = %while.body.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i96

for.body.i94:                                     ; preds = %for.body.i94.for.body.i94_crit_edge, %while.body.i89.for.body.i94_crit_edge
  %i.039.i = phi i32 [ %inc.i92, %for.body.i94.for.body.i94_crit_edge ], [ 0, %while.body.i89.for.body.i94_crit_edge ]
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #7, !srcloc !40
  %41 = lshr i32 %40, 24
  %conv.i90 = trunc i32 %41 to i8
  %arrayidx.i91 = getelementptr i8, ptr %39, i32 %i.039.i
  %42 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i90, ptr %arrayidx.i91, align 1
  %inc.i92 = add nuw i32 %i.039.i, 1
  %exitcond.not.i93 = icmp eq i32 %inc.i92, %37
  br i1 %exitcond.not.i93, label %for.body.i94.for.end.i96_crit_edge, label %for.body.i94.for.body.i94_crit_edge

for.body.i94.for.body.i94_crit_edge:              ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i94

for.body.i94.for.end.i96_crit_edge:               ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i96

for.end.i96:                                      ; preds = %for.body.i94.for.end.i96_crit_edge, %while.body.i89.for.end.i96_crit_edge
  %43 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_buf.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %44, i32 %37
  store ptr %add.ptr11.i, ptr %rx_buf.i, align 4
  %45 = ptrtoint ptr %rx_length.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_length.i, align 4
  %sub.i95 = sub i32 %46, %37
  store i32 %sub.i95, ptr %rx_length.i, align 4
  %sub13.i = sub i32 %n.042.i, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %37)
  %cmp15.i = icmp eq i32 %46, %37
  br i1 %cmp15.i, label %if.then.i, label %for.end.i96.if.end.i_crit_edge

for.end.i96.if.end.i_crit_edge:                   ; preds = %for.end.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.end.i96
  %47 = ptrtoint ptr %rx_xfer.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_xfer.i.i, align 4
  %49 = ptrtoint ptr %msg1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %msg1.i.i.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.rhs.i.i.do.body.i.i_crit_edge, %if.then.i
  %xfer.0.i.i = phi ptr [ %48, %if.then.i ], [ %xfer.0.i.i.i, %land.rhs.i.i.do.body.i.i_crit_edge ]
  %tobool.not.i.i.i = icmp eq ptr %xfer.0.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  br label %spi_engine_xfer_next.exit.i.i

if.else.i.i.i:                                    ; preds = %do.body.i.i
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0.i.i, i32 0, i32 18
  %53 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %transfer_list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %54, %50
  br i1 %cmp.i.not.i.i.i, label %if.else.i.i.i.if.else.i.i_crit_edge, label %if.else.i.i.i.spi_engine_xfer_next.exit.i.i_crit_edge

if.else.i.i.i.spi_engine_xfer_next.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_xfer_next.exit.i.i

if.else.i.i.i.if.else.i.i_crit_edge:              ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

spi_engine_xfer_next.exit.i.i:                    ; preds = %if.else.i.i.i.spi_engine_xfer_next.exit.i.i_crit_edge, %if.then.i.i.i
  %.pn.i.i = phi ptr [ %52, %if.then.i.i.i ], [ %54, %if.else.i.i.i.spi_engine_xfer_next.exit.i.i_crit_edge ]
  %xfer.0.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 -84
  %tobool.not.i.i = icmp eq ptr %xfer.0.i.i.i, null
  br i1 %tobool.not.i.i, label %spi_engine_xfer_next.exit.i.i.if.else.i.i_crit_edge, label %land.rhs.i.i

spi_engine_xfer_next.exit.i.i.if.else.i.i_crit_edge: ; preds = %spi_engine_xfer_next.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.rhs.i.i:                                     ; preds = %spi_engine_xfer_next.exit.i.i
  %rx_buf.i.i = getelementptr i8, ptr %.pn.i.i, i32 -80
  %55 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_buf.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %56, null
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.do.body.i.i_crit_edge, label %if.then.i.i

land.rhs.i.i.do.body.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_buf.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -80
  %57 = ptrtoint ptr %rx_xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %xfer.0.i.i.i, ptr %rx_xfer.i.i, align 4
  %len.i.i = getelementptr i8, ptr %.pn.i.i, i32 -76
  %58 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i.i, align 4
  %60 = ptrtoint ptr %rx_length.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %rx_length.i, align 4
  %61 = ptrtoint ptr %rx_buf.i.i.le to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_buf.i.i.le, align 4
  br label %spi_engine_rx_next.exit.i

if.else.i.i:                                      ; preds = %spi_engine_xfer_next.exit.i.i.if.else.i.i_crit_edge, %if.else.i.i.i.if.else.i.i_crit_edge
  %63 = ptrtoint ptr %rx_xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %rx_xfer.i.i, align 4
  br label %spi_engine_rx_next.exit.i

spi_engine_rx_next.exit.i:                        ; preds = %if.else.i.i, %if.then.i.i
  %.sink.i.i = phi ptr [ null, %if.else.i.i ], [ %62, %if.then.i.i ]
  %64 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %.sink.i.i, ptr %rx_buf.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %spi_engine_rx_next.exit.i, %for.end.i96.if.end.i_crit_edge
  %tobool.not.i97 = icmp eq i32 %sub13.i, 0
  br i1 %tobool.not.i97, label %if.end.i.spi_engine_read_rx_fifo.exit_crit_edge, label %if.end.i.land.rhs.i88_crit_edge

if.end.i.land.rhs.i88_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i88

if.end.i.spi_engine_read_rx_fifo.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_read_rx_fifo.exit

spi_engine_read_rx_fifo.exit:                     ; preds = %if.end.i.spi_engine_read_rx_fifo.exit_crit_edge, %land.rhs.i88.spi_engine_read_rx_fifo.exit_crit_edge, %if.then26.spi_engine_read_rx_fifo.exit_crit_edge
  %65 = ptrtoint ptr %rx_length.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp18.i.not = icmp eq i32 %66, 0
  %or29 = or i32 %disable_int.1, 4
  %spec.select82 = select i1 %cmp18.i.not, i32 %or29, i32 %disable_int.1
  br label %if.end31

if.end31:                                         ; preds = %spi_engine_read_rx_fifo.exit, %if.end23.if.end31_crit_edge
  %disable_int.2 = phi i32 [ %disable_int.1, %if.end23.if.end31_crit_edge ], [ %spec.select82, %spi_engine_read_rx_fifo.exit ]
  br i1 %tobool.not, label %if.end31.if.end43_crit_edge, label %if.then34

if.end31.if.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then34:                                        ; preds = %if.end31
  %msg = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 4
  %67 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %msg, align 4
  %tobool35.not = icmp eq ptr %68, null
  br i1 %tobool35.not, label %if.then34.if.end43_crit_edge, label %land.lhs.true

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

land.lhs.true:                                    ; preds = %if.then34
  %completed_id36 = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 15
  %69 = ptrtoint ptr %completed_id36 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %completed_id36, align 4
  %sync_id = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 14
  %71 = ptrtoint ptr %sync_id to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sync_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp = icmp eq i32 %70, %72
  br i1 %cmp, label %if.end43.thread, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end43.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %p = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 5
  %73 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %p, align 4
  tail call void @kfree(ptr noundef %74) #7
  %status = getelementptr inbounds %struct.spi_message, ptr %68, i32 0, i32 7
  %75 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %status, align 4
  %frame_length = getelementptr inbounds %struct.spi_message, ptr %68, i32 0, i32 5
  %76 = ptrtoint ptr %frame_length to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %frame_length, align 4
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %68, i32 0, i32 6
  %78 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %actual_length, align 4
  %79 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %msg, align 4
  tail call void @spi_finalize_current_message(ptr noundef %devid) #7
  %or41 = or i32 %disable_int.2, 8
  br label %if.then45

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %if.then34.if.end43_crit_edge, %if.end31.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disable_int.2)
  %tobool44.not = icmp eq i32 %disable_int.2, 0
  br i1 %tobool44.not, label %if.end43.if.end50_crit_edge, label %if.end43.if.then45_crit_edge

if.end43.if.then45_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then45:                                        ; preds = %if.end43.if.then45_crit_edge, %if.end43.thread
  %disable_int.3100 = phi i32 [ %or41, %if.end43.thread ], [ %disable_int.2, %if.end43.if.then45_crit_edge ]
  %neg = xor i32 %disable_int.3100, -1
  %int_enable = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 16
  %80 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %int_enable, align 4
  %and46 = and i32 %81, %neg
  store i32 %and46, ptr %int_enable, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %and46)
  %83 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base, align 4
  %add.ptr49 = getelementptr i8, ptr %84, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %82) #7, !srcloc !42
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end43.if.end50_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_engine_transfer_one_message(ptr nocapture noundef readonly %master, ptr noundef %msg) #2 align 64 {
entry:
  %p_dry = alloca %struct.spi_engine_program, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_dry) #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %p_dry to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %p_dry, align 4
  call fastcc void @spi_engine_compile_message(ptr noundef %1, ptr noundef %msg, i1 noundef zeroext true, ptr noundef nonnull %p_dry)
  %3 = ptrtoint ptr %p_dry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p_dry, align 4
  %add = shl i32 %4, 1
  %add3 = add i32 %add, 6
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add3, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @spi_engine_compile_message(ptr noundef %1, ptr noundef %msg, i1 noundef zeroext false, ptr noundef nonnull %call9.i.i)
  %lock = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 2
  %call8 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %sync_id = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %sync_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sync_id, align 4
  %add11 = add i32 %6, 1
  %and = and i32 %add11, 255
  store i32 %and, ptr %sync_id, align 4
  %7 = trunc i32 %and to i16
  %conv14 = or i16 %7, 12288
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call9.i.i, align 128
  %arrayidx.i = getelementptr %struct.spi_engine_program, ptr %call9.i.i, i32 0, i32 1, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv14, ptr %arrayidx.i, align 2
  %11 = load i32, ptr %call9.i.i, align 128
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %call9.i.i, align 128
  %msg15 = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %msg15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg, ptr %msg15, align 4
  %p16 = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %p16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %p16, align 4
  %instructions = getelementptr inbounds %struct.spi_engine_program, ptr %call9.i.i, i32 0, i32 1
  %cmd_buf = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %instructions, ptr %cmd_buf, align 4
  %15 = load i32, ptr %call9.i.i, align 128
  %cmd_length = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %cmd_length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %cmd_length, align 4
  %base.i = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 224
  %add.ptr2.i = getelementptr i8, ptr %18, i32 208
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not32.i = icmp eq i32 %19, 0
  br i1 %tobool.not32.i, label %if.end.spi_engine_write_cmd_fifo.exit_crit_edge, label %land.rhs.lr.ph.i

if.end.spi_engine_write_cmd_fifo.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_write_cmd_fifo.exit

land.rhs.lr.ph.i:                                 ; preds = %if.end
  %20 = call i32 @llvm.bswap.i32(i32 %19) #7
  %21 = ptrtoint ptr %cmd_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr.i = load i32, ptr %cmd_length, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.end.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %22 = phi i32 [ %.pr.i, %land.rhs.lr.ph.i ], [ %sub.i, %for.end.i.land.rhs.i_crit_edge ]
  %n.033.i = phi i32 [ %20, %land.rhs.lr.ph.i ], [ %sub10.i, %for.end.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool3.not.i = icmp eq i32 %22, 0
  br i1 %tobool3.not.i, label %land.rhs.i.spi_engine_write_cmd_fifo.exit_crit_edge, label %while.body.i

land.rhs.i.spi_engine_write_cmd_fifo.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_write_cmd_fifo.exit

while.body.i:                                     ; preds = %land.rhs.i
  %23 = call i32 @llvm.umin.i32(i32 %n.033.i, i32 %22) #7
  %24 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp630.not.i = icmp eq i32 %23, 0
  br i1 %cmp630.not.i, label %while.body.i.for.end.i_crit_edge, label %while.body.i.for.body.i_crit_edge

while.body.i.for.body.i_crit_edge:                ; preds = %while.body.i
  br label %for.body.i

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body.i.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i69, %for.body.i.for.body.i_crit_edge ], [ 0, %while.body.i.for.body.i_crit_edge ]
  %arrayidx.i68 = getelementptr i16, ptr %25, i32 %i.031.i
  %26 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i68, align 2
  %conv.i = zext i16 %27 to i32
  %28 = call i32 @llvm.bswap.i32(i32 %conv.i) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #7, !srcloc !42
  %inc.i69 = add nuw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i69, %23
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %29 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmd_buf, align 4
  %add.ptr8.i = getelementptr i16, ptr %30, i32 %23
  store ptr %add.ptr8.i, ptr %cmd_buf, align 4
  %31 = ptrtoint ptr %cmd_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmd_length, align 4
  %sub.i = sub i32 %32, %23
  store i32 %sub.i, ptr %cmd_length, align 4
  %sub10.i = sub i32 %n.033.i, %23
  %tobool.not.i = icmp eq i32 %sub10.i, 0
  br i1 %tobool.not.i, label %for.end.i.spi_engine_write_cmd_fifo.exit_crit_edge, label %for.end.i.land.rhs.i_crit_edge

for.end.i.land.rhs.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

for.end.i.spi_engine_write_cmd_fifo.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_write_cmd_fifo.exit

spi_engine_write_cmd_fifo.exit:                   ; preds = %for.end.i.spi_engine_write_cmd_fifo.exit_crit_edge, %land.rhs.i.spi_engine_write_cmd_fifo.exit_crit_edge, %if.end.spi_engine_write_cmd_fifo.exit_crit_edge
  %33 = ptrtoint ptr %cmd_length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cmd_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp12.i.not = icmp ne i32 %34, 0
  %spec.select = zext i1 %cmp12.i.not to i32
  %tx_xfer.i = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %tx_xfer.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_xfer.i, align 4
  %37 = ptrtoint ptr %msg15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %msg15, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i72.do.body.i_crit_edge, %spi_engine_write_cmd_fifo.exit
  %xfer.0.i = phi ptr [ %36, %spi_engine_write_cmd_fifo.exit ], [ %xfer.0.i.i, %land.rhs.i72.do.body.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %xfer.0.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i70, label %if.else.i.i

if.then.i.i70:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  br label %spi_engine_xfer_next.exit.i

if.else.i.i:                                      ; preds = %do.body.i
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0.i, i32 0, i32 18
  %41 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %transfer_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %42, %38
  br i1 %cmp.i.not.i.i, label %if.else.i.i.if.else.i_crit_edge, label %if.else.i.i.spi_engine_xfer_next.exit.i_crit_edge

if.else.i.i.spi_engine_xfer_next.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_xfer_next.exit.i

if.else.i.i.if.else.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

spi_engine_xfer_next.exit.i:                      ; preds = %if.else.i.i.spi_engine_xfer_next.exit.i_crit_edge, %if.then.i.i70
  %.pn.i = phi ptr [ %40, %if.then.i.i70 ], [ %42, %if.else.i.i.spi_engine_xfer_next.exit.i_crit_edge ]
  %xfer.0.i.i = getelementptr i8, ptr %.pn.i, i32 -84
  %tobool.not.i71 = icmp eq ptr %xfer.0.i.i, null
  br i1 %tobool.not.i71, label %spi_engine_xfer_next.exit.i.if.else.i_crit_edge, label %land.rhs.i72

spi_engine_xfer_next.exit.i.if.else.i_crit_edge:  ; preds = %spi_engine_xfer_next.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.rhs.i72:                                     ; preds = %spi_engine_xfer_next.exit.i
  %43 = ptrtoint ptr %xfer.0.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xfer.0.i.i, align 4
  %tobool1.not.i = icmp eq ptr %44, null
  br i1 %tobool1.not.i, label %land.rhs.i72.do.body.i_crit_edge, label %if.then.i

land.rhs.i72.do.body.i_crit_edge:                 ; preds = %land.rhs.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then.i:                                        ; preds = %land.rhs.i72
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %tx_xfer.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %xfer.0.i.i, ptr %tx_xfer.i, align 4
  %len.i = getelementptr i8, ptr %.pn.i, i32 -76
  %46 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i, align 4
  %tx_length.i = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 9
  %48 = ptrtoint ptr %tx_length.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tx_length.i, align 4
  %49 = ptrtoint ptr %xfer.0.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xfer.0.i.i, align 4
  br label %spi_engine_tx_next.exit

if.else.i:                                        ; preds = %spi_engine_xfer_next.exit.i.if.else.i_crit_edge, %if.else.i.i.if.else.i_crit_edge
  %51 = ptrtoint ptr %tx_xfer.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %tx_xfer.i, align 4
  br label %spi_engine_tx_next.exit

spi_engine_tx_next.exit:                          ; preds = %if.else.i, %if.then.i
  %.sink.i = phi ptr [ null, %if.else.i ], [ %50, %if.then.i ]
  %tx_buf6.i = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 10
  %52 = ptrtoint ptr %tx_buf6.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %.sink.i, ptr %tx_buf6.i, align 4
  %call22 = call fastcc zeroext i1 @spi_engine_write_tx_fifo(ptr noundef %1)
  %or24 = or i32 %spec.select, 2
  %int_enable.1 = select i1 %call22, i32 %or24, i32 %spec.select
  %rx_xfer.i = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 11
  %53 = ptrtoint ptr %rx_xfer.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_xfer.i, align 4
  %55 = ptrtoint ptr %msg15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %msg15, align 4
  br label %do.body.i76

do.body.i76:                                      ; preds = %land.rhs.i86.do.body.i76_crit_edge, %spi_engine_tx_next.exit
  %xfer.0.i74 = phi ptr [ %54, %spi_engine_tx_next.exit ], [ %xfer.0.i.i82, %land.rhs.i86.do.body.i76_crit_edge ]
  %tobool.not.i.i75 = icmp eq ptr %xfer.0.i74, null
  br i1 %tobool.not.i.i75, label %if.then.i.i77, label %if.else.i.i80

if.then.i.i77:                                    ; preds = %do.body.i76
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  br label %spi_engine_xfer_next.exit.i84

if.else.i.i80:                                    ; preds = %do.body.i76
  %transfer_list.i.i78 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0.i74, i32 0, i32 18
  %59 = ptrtoint ptr %transfer_list.i.i78 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %transfer_list.i.i78, align 4
  %cmp.i.not.i.i79 = icmp eq ptr %60, %56
  br i1 %cmp.i.not.i.i79, label %if.else.i.i80.if.else.i89_crit_edge, label %if.else.i.i80.spi_engine_xfer_next.exit.i84_crit_edge

if.else.i.i80.spi_engine_xfer_next.exit.i84_crit_edge: ; preds = %if.else.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_xfer_next.exit.i84

if.else.i.i80.if.else.i89_crit_edge:              ; preds = %if.else.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i89

spi_engine_xfer_next.exit.i84:                    ; preds = %if.else.i.i80.spi_engine_xfer_next.exit.i84_crit_edge, %if.then.i.i77
  %.pn.i81 = phi ptr [ %58, %if.then.i.i77 ], [ %60, %if.else.i.i80.spi_engine_xfer_next.exit.i84_crit_edge ]
  %xfer.0.i.i82 = getelementptr i8, ptr %.pn.i81, i32 -84
  %tobool.not.i83 = icmp eq ptr %xfer.0.i.i82, null
  br i1 %tobool.not.i83, label %spi_engine_xfer_next.exit.i84.if.else.i89_crit_edge, label %land.rhs.i86

spi_engine_xfer_next.exit.i84.if.else.i89_crit_edge: ; preds = %spi_engine_xfer_next.exit.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i89

land.rhs.i86:                                     ; preds = %spi_engine_xfer_next.exit.i84
  %rx_buf.i = getelementptr i8, ptr %.pn.i81, i32 -80
  %61 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_buf.i, align 4
  %tobool1.not.i85 = icmp eq ptr %62, null
  br i1 %tobool1.not.i85, label %land.rhs.i86.do.body.i76_crit_edge, label %if.then.i88

land.rhs.i86.do.body.i76_crit_edge:               ; preds = %land.rhs.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i76

if.then.i88:                                      ; preds = %land.rhs.i86
  call void @__sanitizer_cov_trace_pc() #9
  %rx_buf.i.le = getelementptr i8, ptr %.pn.i81, i32 -80
  %63 = ptrtoint ptr %rx_xfer.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %xfer.0.i.i82, ptr %rx_xfer.i, align 4
  %len.i87 = getelementptr i8, ptr %.pn.i81, i32 -76
  %64 = ptrtoint ptr %len.i87 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i87, align 4
  %rx_length.i = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 12
  %66 = ptrtoint ptr %rx_length.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %rx_length.i, align 4
  %67 = ptrtoint ptr %rx_buf.i.le to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rx_buf.i.le, align 4
  br label %spi_engine_rx_next.exit

if.else.i89:                                      ; preds = %spi_engine_xfer_next.exit.i84.if.else.i89_crit_edge, %if.else.i.i80.if.else.i89_crit_edge
  %69 = ptrtoint ptr %rx_xfer.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %rx_xfer.i, align 4
  br label %spi_engine_rx_next.exit

spi_engine_rx_next.exit:                          ; preds = %if.else.i89, %if.then.i88
  %.sink.i90 = phi ptr [ null, %if.else.i89 ], [ %68, %if.then.i88 ]
  %rx_buf6.i = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 13
  %70 = ptrtoint ptr %rx_buf6.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %.sink.i90, ptr %rx_buf6.i, align 4
  %rx_length = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 12
  %71 = ptrtoint ptr %rx_length to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp26.not = icmp eq i32 %72, 0
  %or29 = or i32 %int_enable.1, 4
  %int_enable.2 = select i1 %cmp26.not, i32 %int_enable.1, i32 %or29
  %or31 = or i32 %int_enable.2, 8
  %73 = shl nuw nsw i32 %or31, 24
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %75, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %73) #7, !srcloc !42
  %int_enable32 = getelementptr inbounds %struct.spi_engine, ptr %1, i32 0, i32 16
  %76 = ptrtoint ptr %int_enable32 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or31, ptr %int_enable32, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_engine_rx_next.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %spi_engine_rx_next.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_dry) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @spi_engine_write_tx_fifo(ptr nocapture noundef %spi_engine) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_engine, ptr %spi_engine, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 228
  %add.ptr2 = getelementptr i8, ptr %1, i32 212
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !40
  %tx_length = getelementptr inbounds %struct.spi_engine, ptr %spi_engine, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not37 = icmp eq i32 %2, 0
  br i1 %tobool.not37, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %tx_buf = getelementptr inbounds %struct.spi_engine, ptr %spi_engine, i32 0, i32 10
  %tx_xfer.i = getelementptr inbounds %struct.spi_engine, ptr %spi_engine, i32 0, i32 8
  %msg1.i.i = getelementptr inbounds %struct.spi_engine, ptr %spi_engine, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %n.038 = phi i32 [ %3, %land.rhs.lr.ph ], [ %sub10, %if.end.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %tx_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = tail call i32 @llvm.umin.i32(i32 %n.038, i32 %5)
  %7 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp635.not = icmp eq i32 %6, 0
  br i1 %cmp635.not, label %while.body.for.end_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %8, i32 %i.036
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %11 = shl nuw i32 %conv, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #7, !srcloc !42
  %inc = add nuw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %while.body.for.end_crit_edge
  %12 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_buf, align 4
  %add.ptr8 = getelementptr i8, ptr %13, i32 %6
  store ptr %add.ptr8, ptr %tx_buf, align 4
  %14 = ptrtoint ptr %tx_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_length, align 4
  %sub = sub i32 %15, %6
  store i32 %sub, ptr %tx_length, align 4
  %sub10 = sub i32 %n.038, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %6)
  %cmp12 = icmp eq i32 %15, %6
  br i1 %cmp12, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end
  %16 = ptrtoint ptr %tx_xfer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_xfer.i, align 4
  %18 = ptrtoint ptr %msg1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %msg1.i.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.then
  %xfer.0.i = phi ptr [ %17, %if.then ], [ %xfer.0.i.i, %land.rhs.i.do.body.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %xfer.0.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  br label %spi_engine_xfer_next.exit.i

if.else.i.i:                                      ; preds = %do.body.i
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0.i, i32 0, i32 18
  %22 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transfer_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %23, %19
  br i1 %cmp.i.not.i.i, label %if.else.i.i.if.else.i_crit_edge, label %if.else.i.i.spi_engine_xfer_next.exit.i_crit_edge

if.else.i.i.spi_engine_xfer_next.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_xfer_next.exit.i

if.else.i.i.if.else.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

spi_engine_xfer_next.exit.i:                      ; preds = %if.else.i.i.spi_engine_xfer_next.exit.i_crit_edge, %if.then.i.i
  %.pn.i = phi ptr [ %21, %if.then.i.i ], [ %23, %if.else.i.i.spi_engine_xfer_next.exit.i_crit_edge ]
  %xfer.0.i.i = getelementptr i8, ptr %.pn.i, i32 -84
  %tobool.not.i = icmp eq ptr %xfer.0.i.i, null
  br i1 %tobool.not.i, label %spi_engine_xfer_next.exit.i.if.else.i_crit_edge, label %land.rhs.i

spi_engine_xfer_next.exit.i.if.else.i_crit_edge:  ; preds = %spi_engine_xfer_next.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.rhs.i:                                       ; preds = %spi_engine_xfer_next.exit.i
  %24 = ptrtoint ptr %xfer.0.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xfer.0.i.i, align 4
  %tobool1.not.i = icmp eq ptr %25, null
  br i1 %tobool1.not.i, label %land.rhs.i.do.body.i_crit_edge, label %if.then.i

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %tx_xfer.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %xfer.0.i.i, ptr %tx_xfer.i, align 4
  %len.i = getelementptr i8, ptr %.pn.i, i32 -76
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  %29 = ptrtoint ptr %tx_length to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tx_length, align 4
  %30 = ptrtoint ptr %xfer.0.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xfer.0.i.i, align 4
  br label %spi_engine_tx_next.exit

if.else.i:                                        ; preds = %spi_engine_xfer_next.exit.i.if.else.i_crit_edge, %if.else.i.i.if.else.i_crit_edge
  %32 = ptrtoint ptr %tx_xfer.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %tx_xfer.i, align 4
  br label %spi_engine_tx_next.exit

spi_engine_tx_next.exit:                          ; preds = %if.else.i, %if.then.i
  %.sink.i = phi ptr [ null, %if.else.i ], [ %31, %if.then.i ]
  %33 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %.sink.i, ptr %tx_buf, align 4
  br label %if.end

if.end:                                           ; preds = %spi_engine_tx_next.exit, %for.end.if.end_crit_edge
  %tobool.not = icmp eq i32 %sub10, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %34 = ptrtoint ptr %tx_length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp15 = icmp ne i32 %35, 0
  ret i1 %cmp15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_engine_compile_message(ptr nocapture noundef readonly %spi_engine, ptr noundef readonly %msg, i1 noundef zeroext %dry, ptr noundef %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  br i1 %dry, label %entry.spi_engine_program_add_cmd.exit_crit_edge, label %if.then.i

entry.spi_engine_program_add_cmd.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_program_add_cmd.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i, align 8
  %and8.i = lshr i32 %3, 2
  %4 = and i32 %and8.i, 4
  %5 = and i32 %3, 3
  %6 = or i32 %4, %5
  %7 = trunc i32 %6 to i16
  %conv = or i16 %7, 8448
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p, align 4
  %arrayidx.i = getelementptr %struct.spi_engine_program, ptr %p, i32 0, i32 1, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %arrayidx.i, align 2
  br label %spi_engine_program_add_cmd.exit

spi_engine_program_add_cmd.exit:                  ; preds = %if.then.i, %entry.spi_engine_program_add_cmd.exit_crit_edge
  %11 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %p, align 4
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn32 = load ptr, ptr %msg, align 4
  %cmp.not34 = icmp eq ptr %.pn32, %msg
  br i1 %cmp.not34, label %spi_engine_program_add_cmd.exit.for.end_crit_edge, label %for.body.lr.ph

spi_engine_program_add_cmd.exit.for.end_crit_edge: ; preds = %spi_engine_program_add_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %spi_engine_program_add_cmd.exit
  %ref_clk.i = getelementptr inbounds %struct.spi_engine, ptr %spi_engine, i32 0, i32 1
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn37 = phi ptr [ %.pn32, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %clk_div.036 = phi i32 [ -1, %for.body.lr.ph ], [ %clk_div.1, %for.inc.for.body_crit_edge ]
  %cs_change.0.off035 = phi i1 [ true, %for.body.lr.ph ], [ %extract.t, %for.inc.for.body_crit_edge ]
  %xfer.038 = getelementptr i8, ptr %.pn37, i32 -84
  %14 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ref_clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %15) #7
  %speed_hz.i = getelementptr i8, ptr %.pn37, i32 -24
  %16 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed_hz.i, align 4
  %mul.i = shl i32 %17, 1
  %add.i = add i32 %call.i, -1
  %sub.i = add i32 %add.i, %mul.i
  %div.i = udiv i32 %sub.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div.i)
  %cmp.i = icmp ugt i32 %div.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub.i)
  %cmp3.not.i = icmp ugt i32 %mul.i, %sub.i
  %sub5.i = add i32 %div.i, -1
  %spec.select.i = select i1 %cmp3.not.i, i32 0, i32 %sub5.i
  %clk_div.0.i = select i1 %cmp.i, i32 255, i32 %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %clk_div.0.i, i32 %clk_div.036)
  %cmp5.not = icmp eq i32 %clk_div.0.i, %clk_div.036
  br i1 %cmp5.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  br i1 %dry, label %if.then.spi_engine_program_add_cmd.exit5_crit_edge, label %if.then.i3

if.then.spi_engine_program_add_cmd.exit5_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_program_add_cmd.exit5

if.then.i3:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %18 = trunc i32 %clk_div.0.i to i16
  %conv9 = or i16 %18, 8192
  %19 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p, align 4
  %arrayidx.i2 = getelementptr %struct.spi_engine_program, ptr %p, i32 0, i32 1, i32 %20
  %21 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv9, ptr %arrayidx.i2, align 2
  br label %spi_engine_program_add_cmd.exit5

spi_engine_program_add_cmd.exit5:                 ; preds = %if.then.i3, %if.then.spi_engine_program_add_cmd.exit5_crit_edge
  %22 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p, align 4
  %inc.i4 = add i32 %23, 1
  store i32 %inc.i4, ptr %p, align 4
  br label %if.end

if.end:                                           ; preds = %spi_engine_program_add_cmd.exit5, %for.body.if.end_crit_edge
  %clk_div.1 = phi i32 [ %clk_div.0.i, %spi_engine_program_add_cmd.exit5 ], [ %clk_div.036, %for.body.if.end_crit_edge ]
  br i1 %cs_change.0.off035, label %if.then11, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end
  br i1 %dry, label %if.then11.spi_engine_gen_cs.exit_crit_edge, label %if.then.i.i

if.then11.spi_engine_gen_cs.exit_crit_edge:       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_gen_cs.exit

if.then.i.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %chip_select.i, align 4
  %conv.i = zext i8 %25 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %26 = trunc i32 %shl.i to i16
  %27 = and i16 %26, -4353
  %phi.cast.i = xor i16 %27, 4607
  %28 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %p, align 4
  %arrayidx.i.i = getelementptr %struct.spi_engine_program, ptr %p, i32 0, i32 1, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %phi.cast.i, ptr %arrayidx.i.i, align 2
  br label %spi_engine_gen_cs.exit

spi_engine_gen_cs.exit:                           ; preds = %if.then.i.i, %if.then11.spi_engine_gen_cs.exit_crit_edge
  %31 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %p, align 4
  %inc.i.i = add i32 %32, 1
  store i32 %inc.i.i, ptr %p, align 4
  br label %if.end13

if.end13:                                         ; preds = %spi_engine_gen_cs.exit, %if.end.if.end13_crit_edge
  %len1.i = getelementptr i8, ptr %.pn37, i32 -76
  %33 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not20.i = icmp eq i32 %34, 0
  br i1 %tobool.not20.i, label %if.end13.spi_engine_gen_xfer.exit_crit_edge, label %while.body.lr.ph.i

if.end13.spi_engine_gen_xfer.exit_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_gen_xfer.exit

while.body.lr.ph.i:                               ; preds = %if.end13
  %rx_buf.i = getelementptr i8, ptr %.pn37, i32 -80
  br label %while.body.i

while.body.i:                                     ; preds = %spi_engine_program_add_cmd.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %len.021.i = phi i32 [ %34, %while.body.lr.ph.i ], [ %sub10.i, %spi_engine_program_add_cmd.exit.i.while.body.i_crit_edge ]
  %35 = tail call i32 @llvm.umin.i32(i32 %len.021.i, i32 256) #7
  br i1 %dry, label %while.body.i.spi_engine_program_add_cmd.exit.i_crit_edge, label %if.then.i.i11

while.body.i.spi_engine_program_add_cmd.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_program_add_cmd.exit.i

if.then.i.i11:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_buf.i, align 4
  %tobool3.not.i = icmp eq ptr %37, null
  %38 = ptrtoint ptr %xfer.038 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xfer.038, align 4
  %tobool2.not.not.i = icmp eq ptr %39, null
  %40 = select i1 %tobool2.not.not.i, i32 0, i32 256
  %41 = or i32 %40, 512
  %shl.i7 = select i1 %tobool3.not.i, i32 %40, i32 %41
  %sub.i8 = add nuw nsw i32 %35, 65535
  %or9.i = or i32 %shl.i7, %sub.i8
  %conv.i9 = trunc i32 %or9.i to i16
  %42 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %p, align 4
  %arrayidx.i.i10 = getelementptr %struct.spi_engine_program, ptr %p, i32 0, i32 1, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i10 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i9, ptr %arrayidx.i.i10, align 2
  br label %spi_engine_program_add_cmd.exit.i

spi_engine_program_add_cmd.exit.i:                ; preds = %if.then.i.i11, %while.body.i.spi_engine_program_add_cmd.exit.i_crit_edge
  %45 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %p, align 4
  %inc.i.i12 = add i32 %46, 1
  store i32 %inc.i.i12, ptr %p, align 4
  %sub10.i = sub i32 %len.021.i, %35
  %tobool.not.i = icmp eq i32 %sub10.i, 0
  br i1 %tobool.not.i, label %spi_engine_program_add_cmd.exit.i.spi_engine_gen_xfer.exit_crit_edge, label %spi_engine_program_add_cmd.exit.i.while.body.i_crit_edge

spi_engine_program_add_cmd.exit.i.while.body.i_crit_edge: ; preds = %spi_engine_program_add_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

spi_engine_program_add_cmd.exit.i.spi_engine_gen_xfer.exit_crit_edge: ; preds = %spi_engine_program_add_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_gen_xfer.exit

spi_engine_gen_xfer.exit:                         ; preds = %spi_engine_program_add_cmd.exit.i.spi_engine_gen_xfer.exit_crit_edge, %if.end13.spi_engine_gen_xfer.exit_crit_edge
  %47 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ref_clk.i, align 4
  %call.i14 = tail call i32 @clk_get_rate(ptr noundef %48) #7
  %delay1.i = getelementptr i8, ptr %.pn37, i32 -38
  %call2.i = tail call i32 @spi_delay_to_ns(ptr noundef %delay1.i, ptr noundef %xfer.038) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call2.i)
  %49 = icmp slt i32 %call2.i, 1000
  br i1 %49, label %spi_engine_gen_xfer.exit.spi_engine_gen_sleep.exit_crit_edge, label %if.end5.i

spi_engine_gen_xfer.exit.spi_engine_gen_sleep.exit_crit_edge: ; preds = %spi_engine_gen_xfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_gen_sleep.exit

if.end5.i:                                        ; preds = %spi_engine_gen_xfer.exit
  %div27.i = udiv i32 %call2.i, 1000
  %mul.i15 = mul i32 %div27.i, %call.i14
  %add.i16 = shl i32 %clk_div.1, 1
  %mul6.i = add i32 %add.i16, 2
  %add7.i = or i32 %add.i16, 1
  %sub.i17 = add i32 %mul.i15, %add7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul6.i, i32 %sub.i17)
  %tobool.not28.i = icmp ugt i32 %mul6.i, %sub.i17
  br i1 %tobool.not28.i, label %if.end5.i.spi_engine_gen_sleep.exit_crit_edge, label %while.body.preheader.i

if.end5.i.spi_engine_gen_sleep.exit_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_gen_sleep.exit

while.body.preheader.i:                           ; preds = %if.end5.i
  %div10.i = udiv i32 %sub.i17, %mul6.i
  br label %while.body.i18

while.body.i18:                                   ; preds = %spi_engine_program_add_cmd.exit.i24.while.body.i18_crit_edge, %while.body.preheader.i
  %t.029.i = phi i32 [ %sub14.i, %spi_engine_program_add_cmd.exit.i24.while.body.i18_crit_edge ], [ %div10.i, %while.body.preheader.i ]
  %50 = tail call i32 @llvm.umin.i32(i32 %t.029.i, i32 256) #7
  br i1 %dry, label %while.body.i18.spi_engine_program_add_cmd.exit.i24_crit_edge, label %if.then.i.i21

while.body.i18.spi_engine_program_add_cmd.exit.i24_crit_edge: ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_program_add_cmd.exit.i24

if.then.i.i21:                                    ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #9
  %51 = trunc i32 %50 to i16
  %52 = add nsw i16 %51, -1
  %conv.i19 = or i16 %52, 12544
  %53 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %p, align 4
  %arrayidx.i.i20 = getelementptr %struct.spi_engine_program, ptr %p, i32 0, i32 1, i32 %54
  %55 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i19, ptr %arrayidx.i.i20, align 2
  br label %spi_engine_program_add_cmd.exit.i24

spi_engine_program_add_cmd.exit.i24:              ; preds = %if.then.i.i21, %while.body.i18.spi_engine_program_add_cmd.exit.i24_crit_edge
  %56 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %p, align 4
  %inc.i.i22 = add i32 %57, 1
  store i32 %inc.i.i22, ptr %p, align 4
  %sub14.i = sub i32 %t.029.i, %50
  %tobool.not.i23 = icmp eq i32 %sub14.i, 0
  br i1 %tobool.not.i23, label %spi_engine_program_add_cmd.exit.i24.spi_engine_gen_sleep.exit_crit_edge, label %spi_engine_program_add_cmd.exit.i24.while.body.i18_crit_edge

spi_engine_program_add_cmd.exit.i24.while.body.i18_crit_edge: ; preds = %spi_engine_program_add_cmd.exit.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i18

spi_engine_program_add_cmd.exit.i24.spi_engine_gen_sleep.exit_crit_edge: ; preds = %spi_engine_program_add_cmd.exit.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_gen_sleep.exit

spi_engine_gen_sleep.exit:                        ; preds = %spi_engine_program_add_cmd.exit.i24.spi_engine_gen_sleep.exit_crit_edge, %if.end5.i.spi_engine_gen_sleep.exit_crit_edge, %spi_engine_gen_xfer.exit.spi_engine_gen_sleep.exit_crit_edge
  %cs_change16 = getelementptr i8, ptr %.pn37, i32 -40
  %58 = ptrtoint ptr %cs_change16 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load = load i8, ptr %cs_change16, align 4
  %59 = lshr i8 %bf.load, 6
  %.lobit = and i8 %59, 1
  %60 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %.pn37, align 4
  %cmp.i25.not = icmp eq ptr %61, %msg
  %62 = zext i1 %cmp.i25.not to i8
  %cs_change.1 = xor i8 %.lobit, %62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cs_change.1)
  %tobool28.not = icmp eq i8 %cs_change.1, 0
  br i1 %tobool28.not, label %spi_engine_gen_sleep.exit.for.inc_crit_edge, label %if.then29

spi_engine_gen_sleep.exit.for.inc_crit_edge:      ; preds = %spi_engine_gen_sleep.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then29:                                        ; preds = %spi_engine_gen_sleep.exit
  br i1 %dry, label %if.then29.spi_engine_gen_cs.exit31_crit_edge, label %if.then.i.i28

if.then29.spi_engine_gen_cs.exit31_crit_edge:     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_engine_gen_cs.exit31

if.then.i.i28:                                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %p, align 4
  %arrayidx.i.i27 = getelementptr %struct.spi_engine_program, ptr %p, i32 0, i32 1, i32 %64
  %65 = ptrtoint ptr %arrayidx.i.i27 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 4607, ptr %arrayidx.i.i27, align 2
  br label %spi_engine_gen_cs.exit31

spi_engine_gen_cs.exit31:                         ; preds = %if.then.i.i28, %if.then29.spi_engine_gen_cs.exit31_crit_edge
  %66 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %p, align 4
  %inc.i.i29 = add i32 %67, 1
  store i32 %inc.i.i29, ptr %p, align 4
  br label %for.inc

for.inc:                                          ; preds = %spi_engine_gen_cs.exit31, %spi_engine_gen_sleep.exit.for.inc_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cs_change.1)
  %extract.t = icmp ne i8 %cs_change.1, 0
  %68 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn = load ptr, ptr %.pn37, align 4
  %cmp.not = icmp eq ptr %.pn, %msg
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %spi_engine_program_add_cmd.exit.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_to_ns(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_spi_axi_spi_engine__244_593_spi_engine_driver_init6, !1, !"__initcall__kmod_spi_axi_spi_engine__244_593_spi_engine_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-axi-spi-engine.c", i32 593, i32 1}
!2 = !{ptr @__exitcall_spi_engine_driver_exit, !1, !"__exitcall_spi_engine_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author245, !4, !"__UNIQUE_ID_author245", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-axi-spi-engine.c", i32 595, i32 1}
!5 = !{ptr @__UNIQUE_ID_description246, !6, !"__UNIQUE_ID_description246", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-axi-spi-engine.c", i32 596, i32 1}
!7 = !{ptr @__UNIQUE_ID_file247, !8, !"__UNIQUE_ID_file247", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-axi-spi-engine.c", i32 597, i32 1}
!9 = !{ptr @__UNIQUE_ID_license248, !8, !"__UNIQUE_ID_license248", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-axi-spi-engine.c", i32 589, i32 11}
!12 = !{ptr @spi_engine_driver, !13, !"spi_engine_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-axi-spi-engine.c", i32 585, i32 31}
!14 = !{ptr @spi_engine_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-axi-spi-engine.c", i32 486, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/spi/spi-axi-spi-engine.c", i32 488, i32 45}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/spi/spi-axi-spi-engine.c", i32 494, i32 49}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/spi/spi-axi-spi-engine.c", i32 516, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @spi_engine_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @spi_engine_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @spi_engine_match_table, !30, !"spi_engine_match_table", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-axi-spi-engine.c", i32 579, i32 34}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 4243453}
!41 = !{i64 2154333561}
!42 = !{i64 4243035}
