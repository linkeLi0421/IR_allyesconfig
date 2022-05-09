; ModuleID = '/llk/IR_all_yes/drivers/mfd/tc6387xb.c_pt.bc'
source_filename = "../drivers/mfd/tc6387xb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.tmio_mmc_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.tc6387xb = type { ptr, ptr, %struct.resource }
%struct.tc6387xb_platform_data = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_tc6387xb__302_227_tc6387xb_platform_driver_init6 = internal global ptr @tc6387xb_platform_driver_init, section ".initcall6.init", align 4
@tc6387xb_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tc6387xb_probe, ptr @tc6387xb_remove, ptr null, ptr @tc6387xb_suspend, ptr @tc6387xb_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tc6387xb_platform_driver_exit = internal global ptr @tc6387xb_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description303 = internal constant [50 x i8] c"tc6387xb.description=Toshiba TC6387XB core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [35 x i8] c"tc6387xb.file=drivers/mfd/tc6387xb\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [24 x i8] c"tc6387xb.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [27 x i8] c"tc6387xb.author=Ian Molton\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [33 x i8] c"tc6387xb.alias=platform:tc6387xb\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tc6387xb\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CLK_CK32K\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tc6387xb-core\00", [18 x i8] zeroinitializer }, align 32
@tc6387xb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 183, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Toshiba tc6387xb initialised\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tc6387xb_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mfd/tc6387xb.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tc6387xb_probe._entry_ptr = internal global ptr @tc6387xb_probe._entry, section ".printk_index", align 4
@tc6387xb_cells = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.8, i32 0, i32 0, ptr @tc6387xb_mmc_enable, ptr @tc6387xb_mmc_disable, ptr null, ptr null, ptr @tc6387xb_mmc_data, i32 52, ptr null, ptr null, i64 0, i8 0, ptr null, i32 2, ptr @tc6387xb_mmc_resources, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tmio-mmc\00", [23 x i8] zeroinitializer }, align 32
@tc6387xb_mmc_data = internal global { %struct.tmio_mmc_data, [44 x i8] } { %struct.tmio_mmc_data { ptr null, ptr null, i32 24000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 0, ptr @tc6387xb_mmc_pwr, ptr @tc6387xb_mmc_clk_div }, [44 x i8] zeroinitializer }, align 32
@tc6387xb_mmc_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2048, i32 2559, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [25 x i8] c"tc6387xb_platform_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 217, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 219, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 155, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 162, i32 15 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 183, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"tc6387xb_cells\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 121, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 123, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"tc6387xb_mmc_data\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 113, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant [23 x i8] c"tc6387xb_mmc_resources\00", align 1
@___asan_gen_.49 = private constant [26 x i8] c"../drivers/mfd/tc6387xb.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 28, i32 30 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_tc6387xb_platform_driver_exit, ptr @__initcall__kmod_tc6387xb__302_227_tc6387xb_platform_driver_init6, ptr @tc6387xb_platform_driver_exit, ptr @tc6387xb_probe._entry, ptr @tc6387xb_probe._entry_ptr, ptr @tc6387xb_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tc6387xb_cells, ptr @.str.8, ptr @tc6387xb_mmc_data, ptr @tc6387xb_mmc_resources], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6387xb_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6387xb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6387xb_cells to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6387xb_mmc_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc6387xb_mmc_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6387xb_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tc6387xb_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tc6387xb_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tc6387xb_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6387xb_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #8
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp = icmp sgt i32 %call7, -1
  br i1 %cmp, label %if.then8, label %if.end6.err_no_irq_crit_edge

if.end6.err_no_irq_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_no_irq

if.then8:                                         ; preds = %if.end6
  %call11 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call11 to i32
  br label %err_no_irq

if.end15:                                         ; preds = %if.then8
  %rscr16 = getelementptr inbounds %struct.tc6387xb, ptr %call7.i.i, i32 0, i32 2
  %name = getelementptr inbounds %struct.tc6387xb, ptr %call7.i.i, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %name, align 8
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call2, align 4
  %7 = ptrtoint ptr %rscr16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rscr16, align 8
  %8 = load i32, ptr %call2, align 4
  %add = add i32 %8, 255
  %end = getelementptr inbounds %struct.tc6387xb, ptr %call7.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %end, align 4
  %flags = getelementptr inbounds %struct.tc6387xb, ptr %call7.i.i, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 512, ptr %flags, align 4
  %call19 = tail call i32 @request_resource(ptr noundef nonnull %call2, ptr noundef %rscr16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end15.err_resource_crit_edge

if.end15.err_resource_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_resource

if.end22:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %rscr16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rscr16, align 8
  %13 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end, align 4
  %sub.i = sub i32 1, %12
  %add.i = add i32 %sub.i, %14
  %call25 = tail call ptr @ioremap(i32 noundef %12, i32 noundef %add.i) #5
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25, ptr %call7.i.i, align 8
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.end22.err_ioremap_crit_edge, label %if.end29

if.end22.err_ioremap_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_ioremap

if.end29:                                         ; preds = %if.end22
  %clk32k30 = getelementptr inbounds %struct.tc6387xb, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %clk32k30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call11, ptr %clk32k30, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %tobool31.not = icmp eq ptr %1, null
  br i1 %tobool31.not, label %if.end29.do.end_crit_edge, label %land.lhs.true

if.end29.do.end_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %if.end29
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %tobool32.not = icmp eq ptr %19, null
  br i1 %tobool32.not, label %land.lhs.true.do.end_crit_edge, label %if.then33

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = tail call i32 %19(ptr noundef %dev) #5
  br label %do.end

do.end:                                           ; preds = %if.then33, %land.lhs.true.do.end_crit_edge, %if.end29.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.3) #9
  %id = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %call39 = tail call i32 @mfd_add_devices(ptr noundef %dev1, i32 noundef %21, ptr noundef nonnull @tc6387xb_cells, i32 noundef 1, ptr noundef nonnull %call2, i32 noundef %call7, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.end.cleanup_crit_edge, label %if.end42

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  tail call void @iounmap(ptr noundef %23) #5
  br label %err_ioremap

err_ioremap:                                      ; preds = %if.end42, %if.end22.err_ioremap_crit_edge
  %ret.0 = phi i32 [ %call39, %if.end42 ], [ -12, %if.end22.err_ioremap_crit_edge ]
  %call45 = tail call i32 @release_resource(ptr noundef %rscr16) #5
  br label %err_resource

err_resource:                                     ; preds = %err_ioremap, %if.end15.err_resource_crit_edge
  %ret.1 = phi i32 [ %call19, %if.end15.err_resource_crit_edge ], [ %ret.0, %err_ioremap ]
  tail call void @clk_put(ptr noundef %call11) #5
  br label %err_no_irq

err_no_irq:                                       ; preds = %err_resource, %if.then13, %if.end6.err_no_irq_crit_edge
  %ret.2 = phi i32 [ %3, %if.then13 ], [ %ret.1, %err_resource ], [ %call7, %if.end6.err_no_irq_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_no_irq, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_no_irq ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6387xb_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  tail call void @mfd_remove_devices(ptr noundef %dev1) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %3) #5
  %rscr = getelementptr inbounds %struct.tc6387xb, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @release_resource(ptr noundef %rscr) #5
  %clk32k = getelementptr inbounds %struct.tc6387xb, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk32k to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk32k, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %6 = ptrtoint ptr %clk32k to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk32k, align 4
  tail call void @clk_put(ptr noundef %7) #5
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6387xb_suspend(ptr noundef %dev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %suspend = getelementptr inbounds %struct.tc6387xb_platform_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %suspend, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 %5(ptr noundef %dev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %clk32k = getelementptr inbounds %struct.tc6387xb, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %clk32k to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk32k, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6387xb_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %clk32k = getelementptr inbounds %struct.tc6387xb, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk32k to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk32k, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %clk_prepare_enable.exit.if.end_crit_edge, label %land.lhs.true

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %clk_prepare_enable.exit
  %resume = getelementptr inbounds %struct.tc6387xb_platform_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resume, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 %7(ptr noundef %dev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %clk_prepare_enable.exit.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 512
  %call7 = tail call i32 @tmio_core_mmc_resume(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 2048) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6387xb_mmc_enable(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %mmc, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %clk32k = getelementptr inbounds %struct.tc6387xb, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk32k to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk32k, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 512
  %call2 = tail call i32 @tmio_core_mmc_enable(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 2048) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc6387xb_mmc_disable(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %mmc, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %clk32k = getelementptr inbounds %struct.tc6387xb, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk32k to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk32k, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_core_mmc_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc6387xb_mmc_pwr(ptr nocapture noundef readonly %mmc, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %mmc, i32 0, i32 3, i32 1
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
  %add.ptr = getelementptr i8, ptr %5, i32 512
  tail call void @tmio_core_mmc_pwr(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %state) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc6387xb_mmc_clk_div(ptr nocapture noundef readonly %mmc, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %mmc, i32 0, i32 3, i32 1
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
  %add.ptr = getelementptr i8, ptr %5, i32 512
  tail call void @tmio_core_mmc_clk_div(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %state) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_core_mmc_pwr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_core_mmc_clk_div(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_core_mmc_resume(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_tc6387xb__302_227_tc6387xb_platform_driver_init6, !1, !"__initcall__kmod_tc6387xb__302_227_tc6387xb_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/tc6387xb.c", i32 227, i32 1}
!2 = !{ptr @__exitcall_tc6387xb_platform_driver_exit, !1, !"__exitcall_tc6387xb_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description303, !4, !"__UNIQUE_ID_description303", i1 false, i1 false}
!4 = !{!"../drivers/mfd/tc6387xb.c", i32 229, i32 1}
!5 = !{ptr @__UNIQUE_ID_file304, !6, !"__UNIQUE_ID_file304", i1 false, i1 false}
!6 = !{!"../drivers/mfd/tc6387xb.c", i32 230, i32 1}
!7 = !{ptr @__UNIQUE_ID_license305, !6, !"__UNIQUE_ID_license305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author306, !9, !"__UNIQUE_ID_author306", i1 false, i1 false}
!9 = !{!"../drivers/mfd/tc6387xb.c", i32 231, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias307, !11, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!11 = !{!"../drivers/mfd/tc6387xb.c", i32 232, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/tc6387xb.c", i32 219, i32 12}
!14 = !{ptr @tc6387xb_platform_driver, !15, !"tc6387xb_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/mfd/tc6387xb.c", i32 217, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mfd/tc6387xb.c", i32 155, i32 30}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/tc6387xb.c", i32 162, i32 15}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mfd/tc6387xb.c", i32 183, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tc6387xb_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @tc6387xb_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mfd/tc6387xb.c", i32 123, i32 11}
!30 = !{ptr @tc6387xb_cells, !31, !"tc6387xb_cells", i1 false, i1 false}
!31 = !{!"../drivers/mfd/tc6387xb.c", i32 121, i32 30}
!32 = !{ptr @tc6387xb_mmc_data, !33, !"tc6387xb_mmc_data", i1 false, i1 false}
!33 = !{!"../drivers/mfd/tc6387xb.c", i32 113, i32 29}
!34 = !{ptr @tc6387xb_mmc_resources, !35, !"tc6387xb_mmc_resources", i1 false, i1 false}
!35 = !{!"../drivers/mfd/tc6387xb.c", i32 28, i32 30}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
