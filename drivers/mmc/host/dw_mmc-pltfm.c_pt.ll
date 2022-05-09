; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/dw_mmc-pltfm.c_pt.bc'
source_filename = "../drivers/mmc/host/dw_mmc-pltfm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dw_mci_pltfm_register\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_mci_pltfm_register\09\09\09\09"
module asm "\09.long\09__crc_dw_mci_pltfm_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mci_pltfm_register:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mci_pltfm_register\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mci_pltfm_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dw_mci_pltfm_pmops\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_mci_pltfm_pmops\09\09\09\09"
module asm "\09.long\09__crc_dw_mci_pltfm_pmops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mci_pltfm_pmops:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mci_pltfm_pmops\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mci_pltfm_pmops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dw_mci_pltfm_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_mci_pltfm_remove\09\09\09\09"
module asm "\09.long\09__crc_dw_mci_pltfm_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mci_pltfm_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mci_pltfm_remove\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mci_pltfm_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dw_mci = type { %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i8, ptr, %struct.sg_mapping_iter, ptr, ptr, ptr, %struct.mmc_command, i32, i8, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.tasklet_struct, i32, i32, i32, %struct.list_head, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, %union.anon.76, ptr, ptr, i32, i8, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.fault_attr, %struct.hrtimer }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { i64 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }

@__kstrtab_dw_mci_pltfm_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mci_pltfm_register = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mci_pltfm_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mci_pltfm_register to i32), ptr @__kstrtab_dw_mci_pltfm_register, ptr @__kstrtabns_dw_mci_pltfm_register }, section "___ksymtab_gpl+dw_mci_pltfm_register", align 4
@dw_mci_pltfm_pmops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mci_runtime_suspend, ptr @dw_mci_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_dw_mci_pltfm_pmops = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mci_pltfm_pmops = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mci_pltfm_pmops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mci_pltfm_pmops to i32), ptr @__kstrtab_dw_mci_pltfm_pmops, ptr @__kstrtabns_dw_mci_pltfm_pmops }, section "___ksymtab_gpl+dw_mci_pltfm_pmops", align 4
@__kstrtab_dw_mci_pltfm_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mci_pltfm_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mci_pltfm_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mci_pltfm_remove to i32), ptr @__kstrtab_dw_mci_pltfm_remove, ptr @__kstrtabns_dw_mci_pltfm_remove }, section "___ksymtab_gpl+dw_mci_pltfm_remove", align 4
@__initcall__kmod_dw_mmc_pltfm__272_106_dw_mci_pltfm_driver_init6 = internal global ptr @dw_mci_pltfm_driver_init, section ".initcall6.init", align 4
@dw_mci_pltfm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_mci_pltfm_probe, ptr @dw_mci_pltfm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @dw_mci_pltfm_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mci_pltfm_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw_mci_pltfm_driver_exit = internal global ptr @dw_mci_pltfm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description273 = internal constant [61 x i8] c"dw_mmc_pltfm.description=DW Multimedia Card Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [46 x i8] c"dw_mmc_pltfm.author=NXP Semiconductor VietNam\00", section ".modinfo", align 1
@__UNIQUE_ID_author275 = internal constant [49 x i8] c"dw_mmc_pltfm.author=Imagination Technologies Ltd\00", section ".modinfo", align 1
@__UNIQUE_ID_file276 = internal constant [48 x i8] c"dw_mmc_pltfm.file=drivers/mmc/host/dw_mmc-pltfm\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [28 x i8] c"dw_mmc_pltfm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dw_mmc\00", [25 x i8] zeroinitializer }, align 32
@dw_mci_pltfm_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"img,pistachio-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"dw_mci_pltfm_pmops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 56, i32 25 }
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"dw_mci_pltfm_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 95, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 99, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"dw_mci_pltfm_match\00", align 1
@___asan_gen_.11 = private constant [35 x i8] c"../drivers/mmc/host/dw_mmc-pltfm.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 65, i32 34 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__exitcall_dw_mci_pltfm_driver_exit, ptr @__initcall__kmod_dw_mmc_pltfm__272_106_dw_mci_pltfm_driver_init6, ptr @__ksymtab_dw_mci_pltfm_pmops, ptr @__ksymtab_dw_mci_pltfm_register, ptr @__ksymtab_dw_mci_pltfm_remove, ptr @dw_mci_pltfm_driver_exit, ptr @dw_mci_pltfm_pmops, ptr @dw_mci_pltfm_driver, ptr @.str, ptr @dw_mci_pltfm_match], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_pltfm_pmops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_pltfm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_pltfm_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_mci_pltfm_register(ptr noundef %pdev, ptr noundef %drv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 728, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #3
  %irq = getelementptr inbounds %struct.dw_mci, ptr %call.i, i32 0, i32 53
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %drv_data6 = getelementptr inbounds %struct.dw_mci, ptr %call.i, i32 0, i32 38
  %1 = ptrtoint ptr %drv_data6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %drv_data, ptr %drv_data6, align 4
  %dev8 = getelementptr inbounds %struct.dw_mci, ptr %call.i, i32 0, i32 36
  %2 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev8, align 4
  %irq_flags = getelementptr inbounds %struct.dw_mci, ptr %call.i, i32 0, i32 52
  %3 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %irq_flags, align 8
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  %pdata = getelementptr inbounds %struct.dw_mci, ptr %call.i, i32 0, i32 37
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pdata, align 8
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #3
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call10) #3
  %regs13 = getelementptr inbounds %struct.dw_mci, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %regs13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %regs13, align 8
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call10, align 4
  %phy_regs = getelementptr inbounds %struct.dw_mci, ptr %call.i, i32 0, i32 22
  %11 = ptrtoint ptr %phy_regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %phy_regs, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call20 = tail call i32 @dw_mci_probe(ptr noundef nonnull %call.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then16 ], [ %call20, %if.end19 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_runtime_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_mci_pltfm_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @dw_mci_remove(ptr noundef %1) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_mci_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_pltfm_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_mci_pltfm_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_pltfm_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_mci_pltfm_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_pltfm_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call ptr @of_match_node(ptr noundef nonnull @dw_mci_pltfm_match, ptr noundef nonnull %1) #3
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %drv_data.0 = phi ptr [ %3, %if.then ], [ null, %entry.if.end_crit_edge ]
  %call3 = tail call i32 @dw_mci_pltfm_register(ptr noundef %pdev, ptr noundef %drv_data.0)
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__ksymtab_dw_mci_pltfm_register, !1, !"__ksymtab_dw_mci_pltfm_register", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/dw_mmc-pltfm.c", i32 54, i32 1}
!2 = !{ptr @dw_mci_pltfm_pmops, !3, !"dw_mci_pltfm_pmops", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/dw_mmc-pltfm.c", i32 56, i32 25}
!4 = !{ptr @__ksymtab_dw_mci_pltfm_pmops, !5, !"__ksymtab_dw_mci_pltfm_pmops", i1 false, i1 false}
!5 = !{!"../drivers/mmc/host/dw_mmc-pltfm.c", i32 63, i32 1}
!6 = !{ptr @__ksymtab_dw_mci_pltfm_remove, !7, !"__ksymtab_dw_mci_pltfm_remove", i1 false, i1 false}
!7 = !{!"../drivers/mmc/host/dw_mmc-pltfm.c", i32 93, i32 1}
!8 = !{ptr @__initcall__kmod_dw_mmc_pltfm__272_106_dw_mci_pltfm_driver_init6, !9, !"__initcall__kmod_dw_mmc_pltfm__272_106_dw_mci_pltfm_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/dw_mmc-pltfm.c", i32 106, i32 1}
!10 = !{ptr @__exitcall_dw_mci_pltfm_driver_exit, !9, !"__exitcall_dw_mci_pltfm_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description273, !12, !"__UNIQUE_ID_description273", i1 false, i1 false}
!12 = !{!"../drivers/mmc/host/dw_mmc-pltfm.c", i32 108, i32 1}
!13 = !{ptr @__UNIQUE_ID_author274, !14, !"__UNIQUE_ID_author274", i1 false, i1 false}
!14 = !{!"../drivers/mmc/host/dw_mmc-pltfm.c", i32 109, i32 1}
!15 = !{ptr @__UNIQUE_ID_author275, !16, !"__UNIQUE_ID_author275", i1 false, i1 false}
!16 = !{!"../drivers/mmc/host/dw_mmc-pltfm.c", i32 110, i32 1}
!17 = !{ptr @__UNIQUE_ID_file276, !18, !"__UNIQUE_ID_file276", i1 false, i1 false}
!18 = !{!"../drivers/mmc/host/dw_mmc-pltfm.c", i32 111, i32 1}
!19 = !{ptr @__UNIQUE_ID_license277, !18, !"__UNIQUE_ID_license277", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/dw_mmc-pltfm.c", i32 99, i32 12}
!22 = !{ptr @dw_mci_pltfm_driver, !23, !"dw_mci_pltfm_driver", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/dw_mmc-pltfm.c", i32 95, i32 31}
!24 = !{ptr @dw_mci_pltfm_match, !25, !"dw_mci_pltfm_match", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/dw_mmc-pltfm.c", i32 65, i32 34}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
