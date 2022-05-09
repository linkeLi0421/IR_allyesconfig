; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-dw-bt1.c_pt.bc'
source_filename = "../drivers/spi/spi-dw-bt1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
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
%struct.dw_spi = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr, ptr, i32, ptr, i32, [266 x i8], i32, i8, ptr, i32, i32, i32, %struct.spi_controller_mem_ops, ptr, i32, ptr, i32, i32, i32, i32, ptr, %struct.completion, ptr, %struct.debugfs_regset32 }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.dw_spi_bt1 = type { %struct.dw_spi, ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_mem_dirmap_desc = type { ptr, %struct.spi_mem_dirmap_info, i32, ptr }
%struct.spi_mem_dirmap_info = type { %struct.spi_mem_op, i64, i64 }
%struct.spi_mem_op = type { %struct.anon.71, %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.71 = type { i8, i8, i8, i16 }
%struct.anon.72 = type { i8, i8, i8, i64 }
%struct.anon.73 = type { i8, i8, i8 }
%struct.anon.74 = type { i8, i8, i32, i32, %union.anon.75 }
%union.anon.75 = type { ptr }
%struct.dw_spi_cfg = type { i8, i8, i32, i32 }

@__initcall__kmod_spi_dw_bt1__239_337_dw_spi_bt1_driver_init6 = internal global ptr @dw_spi_bt1_driver_init, section ".initcall6.init", align 4
@dw_spi_bt1_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_spi_bt1_probe, ptr @dw_spi_bt1_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_spi_bt1_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw_spi_bt1_driver_exit = internal global ptr @dw_spi_bt1_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [66 x i8] c"spi_dw_bt1.author=Serge Semin <Sergey.Semin@baikalelectronics.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [67 x i8] c"spi_dw_bt1.description=Baikal-T1 System Boot SPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [39 x i8] c"spi_dw_bt1.file=drivers/spi/spi-dw-bt1\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [26 x i8] c"spi_dw_bt1.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns244 = internal constant [33 x i8] c"spi_dw_bt1.import_ns=SPI_DW_CORE\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bt1-sys-ssi\00", [20 x i8] zeroinitializer }, align 32
@dw_spi_bt1_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"baikal,bt1-ssi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dw_spi_bt1_std_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"baikal,bt1-sys-ssi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dw_spi_bt1_sys_init }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"dw_spi_bt1_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 329, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 333, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"dw_spi_bt1_of_match\00", align 1
@___asan_gen_.8 = private constant [28 x i8] c"../drivers/spi/spi-dw-bt1.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 322, i32 34 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_import_ns244, ptr @__UNIQUE_ID_license243, ptr @__exitcall_dw_spi_bt1_driver_exit, ptr @__initcall__kmod_spi_dw_bt1__239_337_dw_spi_bt1_driver_init6, ptr @dw_spi_bt1_driver_exit, ptr @dw_spi_bt1_driver, ptr @.str, ptr @dw_spi_bt1_of_match], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_spi_bt1_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_spi_bt1_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_bt1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_spi_bt1_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_spi_bt1_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_spi_bt1_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_bt1_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mem = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem) #5
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem, align 4, !annotation !27
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 524, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %mem) #5
  %regs = getelementptr inbounds %struct.dw_spi, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %3 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mem, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %paddr = getelementptr inbounds %struct.dw_spi, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %paddr, align 4
  %call10 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.dw_spi_bt1, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %clk, align 4
  %cmp.i74 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call.i75 = call i32 @clk_prepare(ptr noundef %call10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end16
  %call1.i = call i32 @clk_enable(ptr noundef %call10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end21, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %call10) #5
  br label %cleanup

if.end21:                                         ; preds = %if.end.i
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %conv = trunc i32 %11 to i16
  %bus_num = getelementptr inbounds %struct.dw_spi, ptr %call.i, i32 0, i32 12
  %12 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %bus_num, align 4
  %reg_io_width = getelementptr inbounds %struct.dw_spi, ptr %call.i, i32 0, i32 11
  %13 = ptrtoint ptr %reg_io_width to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %reg_io_width, align 4
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  %call23 = call i32 @clk_get_rate(ptr noundef %15) #5
  %max_freq = getelementptr inbounds %struct.dw_spi, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call23, ptr %max_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.end21.err_disable_clk_crit_edge, label %if.end27

if.end21.err_disable_clk_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_clk

if.end27:                                         ; preds = %if.end21
  %call29 = call ptr @device_get_match_data(ptr noundef %dev) #5
  %call30 = call i32 %call29(ptr noundef %pdev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end27.err_disable_clk_crit_edge

if.end27.err_disable_clk_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_clk

if.end33:                                         ; preds = %if.end27
  call void @pm_runtime_enable(ptr noundef %dev) #5
  %call36 = call i32 @dw_spi_add_host(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end33.err_disable_clk_crit_edge

if.end33.err_disable_clk_crit_edge:               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_clk

if.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_disable_clk:                                  ; preds = %if.end33.err_disable_clk_crit_edge, %if.end27.err_disable_clk_crit_edge, %if.end21.err_disable_clk_crit_edge
  %ret.0 = phi i32 [ %call30, %if.end27.err_disable_clk_crit_edge ], [ %call36, %if.end33.err_disable_clk_crit_edge ], [ -22, %if.end21.err_disable_clk_crit_edge ]
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %19) #5
  call void @clk_unprepare(ptr noundef %19) #5
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk, %if.end39, %if.then3.i, %if.end16.cleanup_crit_edge, %if.then13, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %9, %if.then13 ], [ %ret.0, %err_disable_clk ], [ 0, %if.end39 ], [ -12, %entry.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i75, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_bt1_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @dw_spi_remove_host(ptr noundef %1) #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %clk = getelementptr inbounds %struct.dw_spi_bt1, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_spi_add_host(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_spi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_bt1_std_init(ptr noundef %pdev, ptr noundef %dwsbt1) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.dw_spi, ptr %dwsbt1, i32 0, i32 6
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %num_cs = getelementptr inbounds %struct.dw_spi, ptr %dwsbt1, i32 0, i32 13
  %1 = ptrtoint ptr %num_cs to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 4, ptr %num_cs, align 2
  %max_mem_freq = getelementptr inbounds %struct.dw_spi, ptr %dwsbt1, i32 0, i32 9
  %2 = ptrtoint ptr %max_mem_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20000000, ptr %max_mem_freq, align 4
  tail call void @dw_spi_dma_setup_generic(ptr noundef %dwsbt1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_bt1_sys_init(ptr noundef %pdev, ptr nocapture noundef %dwsbt1) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_mux_control_get(ptr noundef %dev, ptr noundef null) #5
  %mux = getelementptr inbounds %struct.dw_spi_bt1, ptr %dwsbt1, i32 0, i32 2
  %0 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %mux, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #5
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then7

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then7:                                         ; preds = %if.end
  %call9 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call6) #5
  %map = getelementptr inbounds %struct.dw_spi_bt1, ptr %dwsbt1, i32 0, i32 3
  %2 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %map, align 4
  %cmp.i40 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %end.i = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %5 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call6, align 4
  %sub.i = add i32 %4, 1
  %add.i = sub i32 %sub.i, %6
  %map_len = getelementptr inbounds %struct.dw_spi_bt1, ptr %dwsbt1, i32 0, i32 4
  %7 = ptrtoint ptr %map_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %map_len, align 4
  %dirmap_create = getelementptr inbounds %struct.dw_spi, ptr %dwsbt1, i32 0, i32 26, i32 4
  %8 = ptrtoint ptr %dirmap_create to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dw_spi_bt1_dirmap_create, ptr %dirmap_create, align 4
  %dirmap_read = getelementptr inbounds %struct.dw_spi, ptr %dwsbt1, i32 0, i32 26, i32 6
  %9 = ptrtoint ptr %dirmap_read to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dw_spi_bt1_dirmap_read, ptr %dirmap_read, align 4
  br label %if.end17

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %map, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12, %if.end.if.end17_crit_edge
  %irq = getelementptr inbounds %struct.dw_spi, ptr %dwsbt1, i32 0, i32 6
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -2147483648, ptr %irq, align 4
  %num_cs = getelementptr inbounds %struct.dw_spi, ptr %dwsbt1, i32 0, i32 13
  %12 = ptrtoint ptr %num_cs to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %num_cs, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i)
  %cmp = icmp ugt i32 %call4.i.i, 1
  %max_mem_freq = getelementptr inbounds %struct.dw_spi, ptr %dwsbt1, i32 0, i32 9
  br i1 %cmp, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %max_mem_freq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10000000, ptr %max_mem_freq, align 4
  br label %cleanup

if.else20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %max_mem_freq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 20000000, ptr %max_mem_freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else20, %if.then19, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %if.else20 ], [ 0, %if.then19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_spi_dma_setup_generic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mux_control_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_bt1_dirmap_create(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %controller = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %map = getelementptr inbounds %struct.dw_spi_bt1, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %supports_op = getelementptr inbounds %struct.dw_spi, ptr %7, i32 0, i32 26, i32 1
  %10 = ptrtoint ptr %supports_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %supports_op, align 4
  %info = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1
  %call2 = tail call zeroext i1 %11(ptr noundef %1, ptr noundef %info) #5
  br i1 %call2, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %offset = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset, align 8
  %length = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %length, align 8
  %add = add i64 %15, %13
  %map_len = getelementptr inbounds %struct.dw_spi_bt1, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %map_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %map_len, align 4
  %conv = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp = icmp ugt i64 %add, %conv
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false6:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dir = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp9.not = icmp eq i32 %19, 1
  %spec.select = select i1 %cmp9.not, i32 0, i32 -95
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_spi_bt1_dirmap_read(ptr nocapture noundef readonly %desc, i64 noundef %offs, i32 noundef %len, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  %cfg = alloca %struct.dw_spi_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %controller = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #5
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %cfg, align 4
  %map_len = getelementptr inbounds %struct.dw_spi_bt1, ptr %7, i32 0, i32 4
  %9 = ptrtoint ptr %map_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %map_len, align 4
  %conv = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %offs)
  %cmp.not = icmp ule i64 %conv, %offs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = trunc i64 %offs to i32
  %conv7 = sub i32 %10, %11
  %12 = tail call i32 @llvm.umin.i32(i32 %conv7, i32 %len)
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %cfg, align 4
  %dfs = getelementptr inbounds %struct.dw_spi_cfg, ptr %cfg, i32 0, i32 1
  %14 = ptrtoint ptr %dfs to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %dfs, align 1
  %ndf = getelementptr inbounds %struct.dw_spi_cfg, ptr %cfg, i32 0, i32 2
  %15 = ptrtoint ptr %ndf to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %ndf, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_speed_hz, align 8
  %freq = getelementptr inbounds %struct.dw_spi_cfg, ptr %cfg, i32 0, i32 3
  %20 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %freq, align 4
  %21 = load ptr, ptr %1, align 4
  tail call void @dw_spi_set_cs(ptr noundef %21, i1 noundef zeroext false) #5
  %regs.i.i = getelementptr inbounds %struct.dw_spi, ptr %7, i32 0, i32 4
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !28
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  call void @dw_spi_update_config(ptr noundef %7, ptr noundef %25, ptr noundef nonnull %cfg) #5
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %27, i32 44
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55) #5, !srcloc !29
  %or.i = or i32 %28, 16
  %29 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %30, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #5, !srcloc !28
  %31 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %32, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 1) #5, !srcloc !28
  %mux = getelementptr inbounds %struct.dw_spi_bt1, ptr %7, i32 0, i32 2
  %33 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mux, align 4
  %call.i = call i32 @mux_control_select_delay(ptr noundef %34, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %map = getelementptr inbounds %struct.dw_spi_bt1, ptr %7, i32 0, i32 3
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 4
  %add.ptr18 = getelementptr i8, ptr %36, i32 %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #5
  %37 = ptrtoint ptr %add.ptr18 to i32
  %and.i = and i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end17.if.end.i_crit_edge, label %if.then.i

if.end17.if.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub nuw nsw i32 4, %and.i
  %38 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %12) #5
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr18, i32 %idx.neg.i
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !29
  %40 = call i32 @llvm.bswap.i32(i32 %39) #5
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %data.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %data.i, i32 %and.i
  %42 = call ptr @memcpy(ptr %buf, ptr %add.ptr2.i, i32 %38)
  %add.ptr3.i = getelementptr i8, ptr %add.ptr18, i32 %38
  %add.ptr4.i = getelementptr i8, ptr %buf, i32 %38
  %sub5.i = sub i32 %12, %38
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end17.if.end.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub5.i, %if.then.i ], [ %12, %if.end17.if.end.i_crit_edge ]
  %from.addr.0.i = phi ptr [ %add.ptr3.i, %if.then.i ], [ %add.ptr18, %if.end17.if.end.i_crit_edge ]
  %to.addr.0.i = phi ptr [ %add.ptr4.i, %if.then.i ], [ %buf, %if.end17.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.0.i)
  %cmp641.i = icmp ugt i32 %len.addr.0.i, 3
  br i1 %cmp641.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %to.addr.144.i = phi ptr [ %add.ptr11.i, %while.body.i.while.body.i_crit_edge ], [ %to.addr.0.i, %if.end.i.while.body.i_crit_edge ]
  %from.addr.143.i = phi ptr [ %add.ptr10.i, %while.body.i.while.body.i_crit_edge ], [ %from.addr.0.i, %if.end.i.while.body.i_crit_edge ]
  %len.addr.142.i = phi i32 [ %sub12.i, %while.body.i.while.body.i_crit_edge ], [ %len.addr.0.i, %if.end.i.while.body.i_crit_edge ]
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %from.addr.143.i) #5, !srcloc !29
  %44 = call i32 @llvm.bswap.i32(i32 %43) #5
  %45 = ptrtoint ptr %to.addr.144.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %to.addr.144.i, align 1
  %add.ptr10.i = getelementptr i8, ptr %from.addr.143.i, i32 4
  %add.ptr11.i = getelementptr i8, ptr %to.addr.144.i, i32 4
  %sub12.i = add i32 %len.addr.142.i, -4
  %cmp6.i = icmp ugt i32 %sub12.i, 3
  br i1 %cmp6.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %len.addr.1.lcssa.i = phi i32 [ %len.addr.0.i, %if.end.i.while.end.i_crit_edge ], [ %sub12.i, %while.body.i.while.end.i_crit_edge ]
  %from.addr.1.lcssa.i = phi ptr [ %from.addr.0.i, %if.end.i.while.end.i_crit_edge ], [ %add.ptr10.i, %while.body.i.while.end.i_crit_edge ]
  %to.addr.1.lcssa.i = phi ptr [ %to.addr.0.i, %if.end.i.while.end.i_crit_edge ], [ %add.ptr11.i, %while.body.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.lcssa.i)
  %tobool13.not.i = icmp eq i32 %len.addr.1.lcssa.i, 0
  br i1 %tobool13.not.i, label %while.end.i.dw_spi_bt1_dirmap_copy_from_map.exit_crit_edge, label %if.then14.i

while.end.i.dw_spi_bt1_dirmap_copy_from_map.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dw_spi_bt1_dirmap_copy_from_map.exit

if.then14.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %from.addr.1.lcssa.i) #5, !srcloc !29
  %47 = call i32 @llvm.bswap.i32(i32 %46) #5
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %data.i, align 4
  %49 = call ptr @memcpy(ptr %to.addr.1.lcssa.i, ptr %data.i, i32 %len.addr.1.lcssa.i)
  br label %dw_spi_bt1_dirmap_copy_from_map.exit

dw_spi_bt1_dirmap_copy_from_map.exit:             ; preds = %if.then14.i, %while.end.i.dw_spi_bt1_dirmap_copy_from_map.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #5
  %50 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mux, align 4
  %call20 = call i32 @mux_control_deselect(ptr noundef %51) #5
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  call void @dw_spi_set_cs(ptr noundef %53, i1 noundef zeroext true) #5
  %call22 = call i32 @dw_spi_check_status(ptr noundef %7, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  %spec.select = select i1 %tobool23.not, i32 %12, i32 %call22
  br label %cleanup

cleanup:                                          ; preds = %dw_spi_bt1_dirmap_copy_from_map.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %dw_spi_bt1_dirmap_copy_from_map.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_spi_set_cs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_spi_update_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_deselect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_spi_check_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_select_delay(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_spi_dw_bt1__239_337_dw_spi_bt1_driver_init6, !1, !"__initcall__kmod_spi_dw_bt1__239_337_dw_spi_bt1_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-dw-bt1.c", i32 337, i32 1}
!2 = !{ptr @__exitcall_dw_spi_bt1_driver_exit, !1, !"__exitcall_dw_spi_bt1_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author240, !4, !"__UNIQUE_ID_author240", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-dw-bt1.c", i32 339, i32 1}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-dw-bt1.c", i32 340, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-dw-bt1.c", i32 341, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns244, !11, !"__UNIQUE_ID_import_ns244", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-dw-bt1.c", i32 342, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-dw-bt1.c", i32 333, i32 12}
!14 = !{ptr @dw_spi_bt1_driver, !15, !"dw_spi_bt1_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-dw-bt1.c", i32 329, i32 31}
!16 = !{ptr @dw_spi_bt1_of_match, !17, !"dw_spi_bt1_of_match", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-dw-bt1.c", i32 322, i32 34}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
!28 = !{i64 4236437}
!29 = !{i64 4236855}
