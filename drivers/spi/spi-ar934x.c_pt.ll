; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-ar934x.c_pt.bc'
source_filename = "../drivers/spi/spi-ar934x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.ar934x_spi = type { ptr, ptr, ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_spi_ar934x__230_246_ar934x_spi_driver_init6 = internal global ptr @ar934x_spi_driver_init, section ".initcall6.init", align 4
@ar934x_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ar934x_spi_probe, ptr @ar934x_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ar934x_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ar934x_spi_driver_exit = internal global ptr @ar934x_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description231 = internal constant [81 x i8] c"spi_ar934x.description=SPI controller driver for Qualcomm Atheros AR934x/QCA95xx\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [54 x i8] c"spi_ar934x.author=Chuanhong Guo <gch981213@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [39 x i8] c"spi_ar934x.file=drivers/spi/spi-ar934x\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [26 x i8] c"spi_ar934x.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [37 x i8] c"spi_ar934x.alias=platform:spi-ar934x\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spi-ar934x\00", [21 x i8] zeroinitializer }, align 32
@ar934x_spi_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qca,ar934x-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ar934x_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ar934x_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/spi/spi-ar934x.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ar934x_spi_probe._entry_ptr = internal global ptr @ar934x_spi_probe._entry, section ".printk_index", align 4
@ar934x_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 188, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to allocate spi controller\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ar934x_spi_probe._entry_ptr.9 = internal global ptr @ar934x_spi_probe._entry.6, section ".printk_index", align 4
@ar934x_spi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 70, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spi clock is too low\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ar934x_spi_setup\00", [47 x i8] zeroinitializer }, align 32
@ar934x_spi_setup._entry_ptr = internal global ptr @ar934x_spi_setup._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"ar934x_spi_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 237, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 239, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"ar934x_spi_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 158, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 178, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 188, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [28 x i8] c"../drivers/spi/spi-ar934x.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 70, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_ar934x_spi_driver_exit, ptr @__initcall__kmod_spi_ar934x__230_246_ar934x_spi_driver_init6, ptr @ar934x_spi_driver_exit, ptr @ar934x_spi_probe._entry, ptr @ar934x_spi_probe._entry.6, ptr @ar934x_spi_probe._entry_ptr, ptr @ar934x_spi_probe._entry_ptr.9, ptr @ar934x_spi_setup._entry, ptr @ar934x_spi_setup._entry_ptr, ptr @ar934x_spi_driver, ptr @.str, ptr @ar934x_spi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar934x_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar934x_spi_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar934x_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar934x_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar934x_spi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ar934x_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ar934x_spi_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ar934x_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ar934x_spi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar934x_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %cmp.i70 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %call1.i = tail call i32 @clk_enable(ptr noundef %call3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end11, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call3) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end.i
  %call.i71 = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev, i32 noundef 16, i1 noundef zeroext false) #5
  %tobool14.not = icmp eq ptr %call.i71, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %err_clk_disable

if.end20:                                         ; preds = %if.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call, i32 16777216) #5, !srcloc !46
  %add.ptr21 = getelementptr i8, ptr %call, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 1792) #5, !srcloc !46
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i71, i32 0, i32 5
  %2 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %mode_bits, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i71, i32 0, i32 20
  %3 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ar934x_spi_setup, ptr %setup, align 4
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i71, i32 0, i32 45
  %4 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ar934x_spi_transfer_one_message, ptr %transfer_one_message, align 4
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i71, i32 0, i32 7
  %5 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -2139062144, ptr %bits_per_word_mask, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %of_node24 = getelementptr inbounds %struct.device, ptr %call.i71, i32 0, i32 27
  %8 = ptrtoint ptr %of_node24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %of_node24, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i71, i32 0, i32 3
  %9 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 3, ptr %num_chipselect, align 2
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i71, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i71, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %base27 = getelementptr inbounds %struct.ar934x_spi, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %base27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %base27, align 4
  %clk28 = getelementptr inbounds %struct.ar934x_spi, ptr %12, i32 0, i32 2
  %14 = ptrtoint ptr %clk28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call3, ptr %clk28, align 4
  %call29 = tail call i32 @clk_get_rate(ptr noundef %call3) #5
  %clk_freq = getelementptr inbounds %struct.ar934x_spi, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call29, ptr %clk_freq, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i71, ptr %12, align 4
  %call31 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i71) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end20.cleanup_crit_edge, label %if.end20.err_clk_disable_crit_edge

if.end20.err_clk_disable_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk_disable

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_clk_disable:                                  ; preds = %if.end20.err_clk_disable_crit_edge, %do.end18
  %ret.0 = phi i32 [ %call31, %if.end20.err_clk_disable_crit_edge ], [ -12, %do.end18 ]
  tail call void @clk_disable(ptr noundef %call3) #5
  tail call void @clk_unprepare(ptr noundef %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %err_clk_disable, %if.end20.cleanup_crit_edge, %if.then3.i, %if.end8.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %1, %do.end ], [ %ret.0, %err_clk_disable ], [ 0, %if.end20.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar934x_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @spi_unregister_controller(ptr noundef %1) #5
  %clk = getelementptr inbounds %struct.ar934x_spi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar934x_spi_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %4 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %clk_freq = getelementptr inbounds %struct.ar934x_spi, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_freq, align 4
  %div19 = lshr i32 %7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %div19)
  %cmp2 = icmp ugt i32 %5, %div19
  br i1 %cmp2, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %clk_freq3 = getelementptr inbounds %struct.ar934x_spi, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %clk_freq3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_freq3, align 4
  %div421 = lshr i32 %9, 1
  %10 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div421, ptr %max_speed_hz, align 8
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %div820 = lshr i32 %7, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %div820)
  %cmp9 = icmp ult i32 %5, %div820
  br i1 %cmp9, label %do.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar934x_spi_transfer_one_message(ptr noundef %master, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 6
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %actual_length, align 4
  %5 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn265 = load ptr, ptr %m, align 4
  %cmp.not267 = icmp eq ptr %.pn265, %m
  br i1 %cmp.not267, label %entry.msg_done_crit_edge, label %for.body.lr.ph

entry.msg_done_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %msg_done

for.body.lr.ph:                                   ; preds = %entry
  %clk_freq.i = getelementptr inbounds %struct.ar934x_spi, ptr %1, i32 0, i32 3
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 3
  %base = getelementptr inbounds %struct.ar934x_spi, ptr %1, i32 0, i32 1
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.end147.for.body_crit_edge, %for.body.lr.ph
  %.pn269 = phi ptr [ %.pn265, %for.body.lr.ph ], [ %.pn, %for.end147.for.body_crit_edge ]
  %term.0268 = phi i8 [ 0, %for.body.lr.ph ], [ %term.1.lcssa, %for.end147.for.body_crit_edge ]
  %t.0270 = getelementptr i8, ptr %.pn269, i32 -84
  %bits_per_word = getelementptr i8, ptr %.pn269, i32 -39
  %6 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bits_per_word, align 1
  %8 = add i8 %7, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %8)
  %9 = icmp ult i8 %8, 24
  %10 = lshr i8 %7, 3
  %narrow = select i1 %9, i8 %10, i8 4
  %bpw.0 = zext i8 %narrow to i32
  %speed_hz = getelementptr i8, ptr %.pn269, i32 -24
  %11 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else15, label %if.then12

if.then12:                                        ; preds = %for.body
  %13 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clk_freq.i, align 4
  %mul.i = shl i32 %12, 1
  %add.i = add i32 %mul.i, -1
  %sub.i = add i32 %add.i, %14
  %div2.i = udiv i32 %sub.i, %mul.i
  %sub3.i = add i32 %div2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %cmp.i = icmp slt i32 %sub3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub3.i)
  %cmp4.i = icmp ugt i32 %sub3.i, 63
  %.sub3.i = select i1 %cmp4.i, i32 -22, i32 %sub3.i
  br i1 %cmp.i, label %if.then12.if.end21_crit_edge, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.else15:                                        ; preds = %for.body
  %15 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_speed_hz, align 8
  %17 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_freq.i, align 4
  %mul.i227 = shl i32 %16, 1
  %add.i228 = add i32 %mul.i227, -1
  %sub.i229 = add i32 %add.i228, %18
  %div2.i230 = udiv i32 %sub.i229, %mul.i227
  %sub3.i231 = add i32 %div2.i230, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i231)
  %cmp.i232 = icmp slt i32 %sub3.i231, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub3.i231)
  %cmp4.i233 = icmp ugt i32 %sub3.i231, 63
  %.sub3.i234 = select i1 %cmp4.i233, i32 -22, i32 %sub3.i231
  br i1 %cmp.i232, label %if.else15.if.end21_crit_edge, label %if.else15.if.end17_crit_edge

if.else15.if.end17_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.else15.if.end21_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end17:                                         ; preds = %if.else15.if.end17_crit_edge, %if.then12.if.end17_crit_edge
  %div.0 = phi i32 [ %.sub3.i, %if.then12.if.end17_crit_edge ], [ %.sub3.i234, %if.else15.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.0)
  %cmp18 = icmp slt i32 %div.0, 0
  br i1 %cmp18, label %if.end17.msg_done_crit_edge, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end17.msg_done_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %msg_done

if.end21:                                         ; preds = %if.end17.if.end21_crit_edge, %if.else15.if.end21_crit_edge, %if.then12.if.end21_crit_edge
  %div.0243 = phi i32 [ %div.0, %if.end17.if.end21_crit_edge ], [ 0, %if.then12.if.end21_crit_edge ], [ 0, %if.else15.if.end21_crit_edge ]
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  %22 = and i32 %21, -1056964609
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %or = or i32 %23, %div.0243
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr25 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %26) #5, !srcloc !46
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 0) #5, !srcloc !46
  %len = getelementptr i8, ptr %.pn269, i32 -76
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp29258.not = icmp eq i32 %30, 0
  br i1 %cmp29258.not, label %if.end21.for.end147_crit_edge, label %for.body31.lr.ph

if.end21.for.end147_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end147

for.body31.lr.ph:                                 ; preds = %if.end21
  %rx_buf = getelementptr i8, ptr %.pn269, i32 -80
  %word_delay = getelementptr i8, ptr %.pn269, i32 -30
  br label %for.body31

for.body31:                                       ; preds = %if.end142.for.body31_crit_edge, %for.body31.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body31.lr.ph ], [ %indvars.iv.next, %if.end142.for.body31_crit_edge ]
  %31 = phi i32 [ %30, %for.body31.lr.ph ], [ %67, %if.end142.for.body31_crit_edge ]
  %trx_done.0260 = phi i32 [ 0, %for.body31.lr.ph ], [ %add146, %if.end142.for.body31_crit_edge ]
  %term.1259 = phi i8 [ %term.0268, %for.body31.lr.ph ], [ %term.2, %if.end142.for.body31_crit_edge ]
  %sub = sub i32 %31, %trx_done.0260
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bpw.0)
  %cmp34 = icmp ugt i32 %sub, %bpw.0
  br i1 %cmp34, label %for.body31.if.end45_crit_edge, label %if.else38

for.body31.if.end45_crit_edge:                    ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.else38:                                        ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %.pn269 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.pn269, align 4
  %cmp.i236.not = icmp eq ptr %33, %m
  %spec.select = select i1 %cmp.i236.not, i8 1, i8 %term.1259
  br label %if.end45

if.end45:                                         ; preds = %if.else38, %for.body31.if.end45_crit_edge
  %term.2 = phi i8 [ %term.1259, %for.body31.if.end45_crit_edge ], [ %spec.select, %if.else38 ]
  %trx_cur.0 = phi i32 [ %bpw.0, %for.body31.if.end45_crit_edge ], [ %sub, %if.else38 ]
  %34 = ptrtoint ptr %t.0270 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %t.0270, align 4
  %tobool47.not = icmp eq ptr %35, null
  br i1 %tobool47.not, label %if.end45.if.end61_crit_edge, label %if.then48

if.end45.if.end61_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then48:                                        ; preds = %if.end45
  %add.ptr50 = getelementptr i8, ptr %35, i32 %trx_done.0260
  %36 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr50, align 1
  %conv51 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %trx_cur.0)
  %cmp53252 = icmp ugt i32 %trx_cur.0, 1
  br i1 %cmp53252, label %for.body55.preheader, label %if.then48.for.end_crit_edge

if.then48.for.end_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body55.preheader:                             ; preds = %if.then48
  %38 = add i32 %31, %indvars.iv
  %umin = call i32 @llvm.umin.i32(i32 %38, i32 %bpw.0)
  br label %for.body55

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.body55.preheader
  %i.0254 = phi i32 [ %inc, %for.body55.for.body55_crit_edge ], [ 1, %for.body55.preheader ]
  %reg.0253 = phi i32 [ %or58, %for.body55.for.body55_crit_edge ], [ %conv51, %for.body55.preheader ]
  %shl = shl i32 %reg.0253, 8
  %arrayidx56 = getelementptr i8, ptr %add.ptr50, i32 %i.0254
  %39 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %40 to i32
  %or58 = or i32 %shl, %conv57
  %inc = add nuw nsw i32 %i.0254, 1
  %exitcond.not = icmp eq i32 %inc, %umin
  br i1 %exitcond.not, label %for.body55.for.end_crit_edge, label %for.body55.for.body55_crit_edge

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body55

for.body55.for.end_crit_edge:                     ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body55.for.end_crit_edge, %if.then48.for.end_crit_edge
  %reg.0.lcssa = phi i32 [ %conv51, %if.then48.for.end_crit_edge ], [ %or58, %for.body55.for.end_crit_edge ]
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr60 = getelementptr i8, ptr %42, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %43 = tail call i32 @llvm.bswap.i32(i32 %reg.0.lcssa) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %43) #5, !srcloc !46
  br label %if.end61

if.end61:                                         ; preds = %for.end, %if.end45.if.end61_crit_edge
  %44 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %chip_select, align 4
  %conv62 = zext i8 %45 to i32
  %shl63 = shl i32 268435456, %conv62
  %conv65 = zext i8 %term.2 to i32
  %shl66 = shl i32 %conv65, 26
  %mul = shl i32 %trx_cur.0, 3
  %or64 = or i32 %shl66, %mul
  %or67 = or i32 %or64, %shl63
  %or68 = or i32 %or67, -2147483648
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr70 = getelementptr i8, ptr %47, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %48 = tail call i32 @llvm.bswap.i32(i32 %or68) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %48) #5, !srcloc !46
  %call71 = tail call i64 @ktime_get() #5
  %add.i237 = add i64 %call71, 5000
  br label %for.cond83

for.cond83:                                       ; preds = %land.lhs.true94.for.cond83_crit_edge, %if.end61
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr85 = getelementptr i8, ptr %50, i32 20
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %.mask = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool90.not = icmp eq i32 %.mask, 0
  br i1 %tobool90.not, label %for.cond83.if.end121_crit_edge, label %land.lhs.true94

for.cond83.if.end121_crit_edge:                   ; preds = %for.cond83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

land.lhs.true94:                                  ; preds = %for.cond83
  %call95 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call95, %add.i237
  br i1 %cmp3.i, label %for.end113, label %land.lhs.true94.for.cond83_crit_edge

land.lhs.true94.for.cond83_crit_edge:             ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond83

for.end113:                                       ; preds = %land.lhs.true94
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr103 = getelementptr i8, ptr %53, i32 20
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  %.mask248 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask248)
  %tobool116.not = icmp eq i32 %.mask248, 0
  br i1 %tobool116.not, label %for.end113.if.end121_crit_edge, label %for.end113.msg_done_crit_edge

for.end113.msg_done_crit_edge:                    ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %msg_done

for.end113.if.end121_crit_edge:                   ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.end121:                                        ; preds = %for.end113.if.end121_crit_edge, %for.cond83.if.end121_crit_edge
  %55 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_buf, align 4
  %tobool122.not = icmp eq ptr %56, null
  br i1 %tobool122.not, label %if.end121.if.end142_crit_edge, label %if.then123

if.end121.if.end142_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

if.then123:                                       ; preds = %if.end121
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %add.ptr125 = getelementptr i8, ptr %58, i32 24
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  %60 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_buf, align 4
  %add.ptr128 = getelementptr i8, ptr %61, i32 %trx_done.0260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trx_cur.0)
  %cmp130255.not = icmp eq i32 %trx_cur.0, 0
  br i1 %cmp130255.not, label %if.then123.if.end142_crit_edge, label %for.body132.preheader

if.then123.if.end142_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

for.body132.preheader:                            ; preds = %if.then123
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #5
  %63 = add i32 %31, %indvars.iv
  %umin276 = call i32 @llvm.umin.i32(i32 %63, i32 %bpw.0)
  br label %for.body132

for.body132:                                      ; preds = %for.body132.for.body132_crit_edge, %for.body132.preheader
  %i.1257 = phi i32 [ %inc140, %for.body132.for.body132_crit_edge ], [ 0, %for.body132.preheader ]
  %reg.2256 = phi i32 [ %shr138, %for.body132.for.body132_crit_edge ], [ %62, %for.body132.preheader ]
  %conv134 = trunc i32 %reg.2256 to i8
  %64 = xor i32 %i.1257, -1
  %sub136 = add nsw i32 %trx_cur.0, %64
  %arrayidx137 = getelementptr i8, ptr %add.ptr128, i32 %sub136
  %65 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv134, ptr %arrayidx137, align 1
  %shr138 = lshr i32 %reg.2256, 8
  %inc140 = add nuw nsw i32 %i.1257, 1
  %exitcond277.not = icmp eq i32 %inc140, %umin276
  br i1 %exitcond277.not, label %for.body132.if.end142_crit_edge, label %for.body132.for.body132_crit_edge

for.body132.for.body132_crit_edge:                ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body132

for.body132.if.end142_crit_edge:                  ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

if.end142:                                        ; preds = %for.body132.if.end142_crit_edge, %if.then123.if.end142_crit_edge, %if.end121.if.end142_crit_edge
  %call143 = tail call i32 @spi_delay_exec(ptr noundef %word_delay, ptr noundef %t.0270) #5
  %add146 = add i32 %trx_done.0260, %bpw.0
  %66 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len, align 4
  %cmp29 = icmp ugt i32 %67, %add146
  %indvars.iv.next = sub i32 %indvars.iv, %bpw.0
  br i1 %cmp29, label %if.end142.for.body31_crit_edge, label %if.end142.for.end147_crit_edge

if.end142.for.end147_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end147

if.end142.for.body31_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body31

for.end147:                                       ; preds = %if.end142.for.end147_crit_edge, %if.end21.for.end147_crit_edge
  %term.1.lcssa = phi i8 [ %term.0268, %if.end21.for.end147_crit_edge ], [ %term.2, %if.end142.for.end147_crit_edge ]
  %.lcssa = phi i32 [ 0, %if.end21.for.end147_crit_edge ], [ %67, %if.end142.for.end147_crit_edge ]
  %68 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %actual_length, align 4
  %add150 = add i32 %69, %.lcssa
  store i32 %add150, ptr %actual_length, align 4
  %delay.i = getelementptr i8, ptr %.pn269, i32 -38
  %call.i = tail call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %t.0270) #5
  %70 = ptrtoint ptr %.pn269 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn = load ptr, ptr %.pn269, align 4
  %cmp.not = icmp eq ptr %.pn, %m
  br i1 %cmp.not, label %for.end147.msg_done_crit_edge, label %for.end147.for.body_crit_edge

for.end147.for.body_crit_edge:                    ; preds = %for.end147
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end147.msg_done_crit_edge:                    ; preds = %for.end147
  call void @__sanitizer_cov_trace_pc() #7
  br label %msg_done

msg_done:                                         ; preds = %for.end147.msg_done_crit_edge, %for.end113.msg_done_crit_edge, %if.end17.msg_done_crit_edge, %entry.msg_done_crit_edge
  %stat.2 = phi i32 [ 0, %entry.msg_done_crit_edge ], [ -110, %for.end113.msg_done_crit_edge ], [ 0, %for.end147.msg_done_crit_edge ], [ -5, %if.end17.msg_done_crit_edge ]
  %status = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 7
  %71 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %stat.2, ptr %status, align 4
  tail call void @spi_finalize_current_message(ptr noundef %master) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_spi_ar934x__230_246_ar934x_spi_driver_init6, !1, !"__initcall__kmod_spi_ar934x__230_246_ar934x_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-ar934x.c", i32 246, i32 1}
!2 = !{ptr @__exitcall_ar934x_spi_driver_exit, !1, !"__exitcall_ar934x_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description231, !4, !"__UNIQUE_ID_description231", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-ar934x.c", i32 248, i32 1}
!5 = !{ptr @__UNIQUE_ID_author232, !6, !"__UNIQUE_ID_author232", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-ar934x.c", i32 249, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-ar934x.c", i32 250, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias235, !11, !"__UNIQUE_ID_alias235", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-ar934x.c", i32 251, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-ar934x.c", i32 239, i32 11}
!14 = !{ptr @ar934x_spi_driver, !15, !"ar934x_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-ar934x.c", i32 237, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-ar934x.c", i32 178, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ar934x_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ar934x_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-ar934x.c", i32 188, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ar934x_spi_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ar934x_spi_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-ar934x.c", i32 70, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ar934x_spi_setup._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @ar934x_spi_setup._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @ar934x_spi_match, !35, !"ar934x_spi_match", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-ar934x.c", i32 158, i32 34}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2149575345}
!46 = !{i64 2033223}
!47 = !{i64 2033641}
!48 = !{i64 2149573990}
!49 = !{i64 2154142147}
!50 = !{i64 2154142625}
