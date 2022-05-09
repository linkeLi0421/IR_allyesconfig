; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/tmio_mmc.c_pt.bc'
source_filename = "../drivers/mmc/host/tmio_mmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tmio_mmc_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tmio_mmc_host = type { ptr, ptr, ptr, ptr, ptr, %struct.mmc_host_ops, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i8, ptr, ptr, %struct.tasklet_struct, %struct.scatterlist, ptr, %struct.delayed_work, %struct.work_struct, i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_tmio_mmc__316_222_tmio_mmc_driver_init6 = internal global ptr @tmio_mmc_driver_init, section ".initcall6.init", align 4
@tmio_mmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tmio_mmc_probe, ptr @tmio_mmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tmio_mmc_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tmio_mmc_driver_exit = internal global ptr @tmio_mmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description317 = internal constant [48 x i8] c"tmio_mmc.description=Toshiba TMIO SD/MMC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author318 = internal constant [43 x i8] c"tmio_mmc.author=Ian Molton <spyro@f2s.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file319 = internal constant [40 x i8] c"tmio_mmc.file=drivers/mmc/host/tmio_mmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license320 = internal constant [24 x i8] c"tmio_mmc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias321 = internal constant [33 x i8] c"tmio_mmc.alias=platform:tmio-mmc\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tmio-mmc\00", [23 x i8] zeroinitializer }, align 32
@tmio_mmc_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tmio_mmc_suspend, ptr @tmio_mmc_resume, ptr @tmio_mmc_suspend, ptr @tmio_mmc_resume, ptr @tmio_mmc_suspend, ptr @tmio_mmc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tmio_mmc_host_runtime_suspend, ptr @tmio_mmc_host_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tmio_mmc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s at 0x%p irq %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tmio_mmc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mmc/host/tmio_mmc.c\00", [36 x i8] zeroinitializer }, align 32
@tmio_mmc_probe._entry_ptr = internal global ptr @tmio_mmc_probe._entry, section ".printk_index", align 4
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"tmio_mmc_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 212, i32 31 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 214, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"tmio_mmc_dev_pm_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 206, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [31 x i8] c"../drivers/mmc/host/tmio_mmc.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 177, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias321, ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_file319, ptr @__UNIQUE_ID_license320, ptr @__exitcall_tmio_mmc_driver_exit, ptr @__initcall__kmod_tmio_mmc__316_222_tmio_mmc_driver_init6, ptr @tmio_mmc_driver_exit, ptr @tmio_mmc_probe._entry, ptr @tmio_mmc_probe._entry_ptr, ptr @tmio_mmc_driver, ptr @.str, ptr @tmio_mmc_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmio_mmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmio_mmc_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmio_mmc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_mmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tmio_mmc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tmio_mmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tmio_mmc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_mmc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 10
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %2 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %hclk = getelementptr inbounds %struct.tmio_mmc_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %call4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %enable = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end7.if.end15_crit_edge, label %if.then9

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then9:                                         ; preds = %if.end7
  %call11 = tail call i32 %9(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then9.if.end15_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %call16 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cell_disable_crit_edge, label %if.end19

if.end15.cell_disable_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cell_disable

if.end19:                                         ; preds = %if.end15
  %call20 = tail call ptr @tmio_mmc_host_alloc(ptr noundef %pdev, ptr noundef nonnull %5) #5
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call20 to i32
  br label %cell_disable

if.end24:                                         ; preds = %if.end19
  %end.i = getelementptr inbounds %struct.resource, ptr %call16, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %13 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call16, align 4
  %sub.i = add i32 %12, 1
  %add.i = sub i32 %sub.i, %14
  %shr = lshr i32 %add.i, 10
  %bus_shift = getelementptr inbounds %struct.tmio_mmc_host, ptr %call20, i32 0, i32 11
  %15 = ptrtoint ptr %bus_shift to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr, ptr %bus_shift, align 4
  %set_clock = getelementptr inbounds %struct.tmio_mmc_host, ptr %call20, i32 0, i32 33
  %16 = ptrtoint ptr %set_clock to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @tmio_mmc_set_clock, ptr %set_clock, align 4
  %reset = getelementptr inbounds %struct.tmio_mmc_host, ptr %call20, i32 0, i32 37
  %17 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tmio_mmc_reset, ptr %reset, align 4
  %18 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hclk, align 4
  %mmc = getelementptr inbounds %struct.tmio_mmc_host, ptr %call20, i32 0, i32 4
  %20 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmc, align 4
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %f_max, align 8
  %23 = load i32, ptr %hclk, align 4
  %div90 = lshr i32 %23, 9
  %24 = load ptr, ptr %mmc, align 4
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div90, ptr %f_min, align 4
  %call29 = tail call i32 @tmio_mmc_host_probe(ptr noundef %call20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end24.host_free_crit_edge

if.end24.host_free_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %host_free

if.end32:                                         ; preds = %if.end24
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.dev_name.exit_crit_edge

if.end32.dev_name.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end32.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ %27, %if.end32.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call4, ptr noundef nonnull @tmio_mmc_irq, ptr noundef null, i32 noundef 2, ptr noundef %retval.0.i, ptr noundef %call20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool37.not = icmp eq i32 %call.i, 0
  br i1 %tobool37.not, label %do.end, label %host_remove

do.end:                                           ; preds = %dev_name.exit
  %30 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmc, align 4
  %init_name.i91 = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %init_name.i91 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i91, align 8
  %tobool.not.i92 = icmp eq ptr %33, null
  br i1 %tobool.not.i92, label %if.end.i93, label %do.end.dev_name.exit95_crit_edge

do.end.dev_name.exit95_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit95

if.end.i93:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit95

dev_name.exit95:                                  ; preds = %if.end.i93, %do.end.dev_name.exit95_crit_edge
  %retval.0.i94 = phi ptr [ %35, %if.end.i93 ], [ %33, %do.end.dev_name.exit95_crit_edge ]
  %36 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call20, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %retval.0.i94, ptr noundef %37, i32 noundef %call4) #8
  br label %cleanup

host_remove:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tmio_mmc_host_remove(ptr noundef %call20) #5
  br label %host_free

host_free:                                        ; preds = %host_remove, %if.end24.host_free_crit_edge
  %ret.0 = phi i32 [ %call29, %if.end24.host_free_crit_edge ], [ %call.i, %host_remove ]
  tail call void @tmio_mmc_host_free(ptr noundef %call20) #5
  br label %cell_disable

cell_disable:                                     ; preds = %host_free, %if.then22, %if.end15.cell_disable_crit_edge
  %ret.1 = phi i32 [ %10, %if.then22 ], [ %ret.0, %host_free ], [ -22, %if.end15.cell_disable_crit_edge ]
  %disable = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %disable, align 8
  %tobool43.not = icmp eq ptr %39, null
  br i1 %tobool43.not, label %cell_disable.cleanup_crit_edge, label %if.then44

cell_disable.cleanup_crit_edge:                   ; preds = %cell_disable
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then44:                                        ; preds = %cell_disable
  call void @__sanitizer_cov_trace_pc() #7
  %call46 = tail call i32 %39(ptr noundef %pdev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %cell_disable.cleanup_crit_edge, %dev_name.exit95, %if.then9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_name.exit95 ], [ -22, %entry.cleanup_crit_edge ], [ %call11, %if.then9.cleanup_crit_edge ], [ %ret.1, %if.then44 ], [ %ret.1, %cell_disable.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_mmc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 10
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @tmio_mmc_host_remove(ptr noundef %3) #5
  %disable = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 %5(ptr noundef %pdev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tmio_mmc_host_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmio_mmc_set_clock(ptr noundef %host, i32 noundef %new_clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_clock)
  %cmp = icmp eq i32 %new_clock, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %write16_hook.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %0 = ptrtoint ptr %write16_hook.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write16_hook.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.then.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i = tail call i32 %1(ptr noundef %host, i32 noundef 312) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.sd_ctrl_write16.exit.i_crit_edge

land.lhs.true.i.i.sd_ctrl_write16.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sd_ctrl_write16.exit.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.if.end.i.i_crit_edge
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %4 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i = shl i32 312, %5
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #5, !srcloc !34
  br label %sd_ctrl_write16.exit.i

sd_ctrl_write16.exit.i:                           ; preds = %if.end.i.i, %land.lhs.true.i.i.sd_ctrl_write16.exit.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %bus_shift.i4.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %8 = ptrtoint ptr %bus_shift.i4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_shift.i4.i, align 4
  %shl.i5.i = shl i32 36, %9
  %add.ptr.i6.i = getelementptr i8, ptr %7, i32 %shl.i5.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i6.i) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  %11 = and i16 %10, -2
  %12 = ptrtoint ptr %write16_hook.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write16_hook.i.i, align 4
  %tobool.not.i8.i = icmp eq ptr %13, null
  br i1 %tobool.not.i8.i, label %sd_ctrl_write16.exit.i.if.end.i15.i_crit_edge, label %land.lhs.true.i11.i

sd_ctrl_write16.exit.i.if.end.i15.i_crit_edge:    ; preds = %sd_ctrl_write16.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i15.i

land.lhs.true.i11.i:                              ; preds = %sd_ctrl_write16.exit.i
  %call.i9.i = tail call i32 %13(ptr noundef %host, i32 noundef 36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool2.not.i10.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool2.not.i10.i, label %land.lhs.true.i11.i.if.end.i15.i_crit_edge, label %land.lhs.true.i11.i.cleanup_crit_edge

land.lhs.true.i11.i.cleanup_crit_edge:            ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i11.i.if.end.i15.i_crit_edge:       ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i15.i

if.end.i15.i:                                     ; preds = %land.lhs.true.i11.i.if.end.i15.i_crit_edge, %sd_ctrl_write16.exit.i.if.end.i15.i_crit_edge
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %16 = ptrtoint ptr %bus_shift.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_shift.i4.i, align 4
  %shl.i13.i = shl i32 36, %17
  %add.ptr.i14.i = getelementptr i8, ptr %15, i32 %shl.i13.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i14.i, i16 %11) #5, !srcloc !34
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdata = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata, align 4
  %hclk = getelementptr inbounds %struct.tmio_mmc_data, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hclk, align 4
  %div = udiv i32 %21, %new_clock
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div)
  %cmp1 = icmp ult i32 %div, 2
  %conv = zext i1 %cmp1 to i32
  br i1 %cmp1, label %if.end.cond.end26_crit_edge, label %cond.end24

if.end.cond.end26_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end26

cond.end24:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %div, -1
  %22 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 false) #5, !range !37
  %sub.i.i.i = sub nuw nsw i32 32, %22
  %cond25 = shl nuw i32 1, %sub.i.i.i
  %23 = trunc i32 %cond25 to i16
  %24 = shl i16 %23, 6
  %phi.bo = and i16 %24, -256
  br label %cond.end26

cond.end26:                                       ; preds = %cond.end24, %if.end.cond.end26_crit_edge
  %cond27 = phi i16 [ %phi.bo, %cond.end24 ], [ 0, %if.end.cond.end26_crit_edge ]
  %set_clk_div = getelementptr inbounds %struct.tmio_mmc_data, ptr %19, i32 0, i32 12
  %25 = ptrtoint ptr %set_clk_div to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_clk_div, align 4
  %pdev = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 12
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  tail call void %26(ptr noundef %28, i32 noundef %conv) #5
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  %bus_shift.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %31 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bus_shift.i, align 4
  %shl.i53 = shl i32 36, %32
  %add.ptr.i = getelementptr i8, ptr %30, i32 %shl.i53
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  %34 = and i16 %33, -2
  %write16_hook.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %35 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %cond.end26.if.end.i_crit_edge, label %land.lhs.true.i

cond.end26.if.end.i_crit_edge:                    ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %cond.end26
  %call.i = tail call i32 %36(ptr noundef %host, i32 noundef 36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge

land.lhs.true.i.sd_ctrl_write16.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sd_ctrl_write16.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %cond.end26.if.end.i_crit_edge
  %37 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host, align 4
  %39 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bus_shift.i, align 4
  %shl.i55 = shl i32 36, %40
  %add.ptr.i56 = getelementptr i8, ptr %38, i32 %shl.i55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i56, i16 %34) #5, !srcloc !34
  br label %sd_ctrl_write16.exit

sd_ctrl_write16.exit:                             ; preds = %if.end.i, %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge
  %41 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i58 = icmp eq ptr %42, null
  br i1 %tobool.not.i58, label %sd_ctrl_write16.exit.if.end.i65_crit_edge, label %land.lhs.true.i61

sd_ctrl_write16.exit.if.end.i65_crit_edge:        ; preds = %sd_ctrl_write16.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i65

land.lhs.true.i61:                                ; preds = %sd_ctrl_write16.exit
  %call.i59 = tail call i32 %42(ptr noundef %host, i32 noundef 36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool2.not.i60 = icmp eq i32 %call.i59, 0
  br i1 %tobool2.not.i60, label %land.lhs.true.i61.if.end.i65_crit_edge, label %land.lhs.true.i61.sd_ctrl_write16.exit66_crit_edge

land.lhs.true.i61.sd_ctrl_write16.exit66_crit_edge: ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %sd_ctrl_write16.exit66

land.lhs.true.i61.if.end.i65_crit_edge:           ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i65

if.end.i65:                                       ; preds = %land.lhs.true.i61.if.end.i65_crit_edge, %sd_ctrl_write16.exit.if.end.i65_crit_edge
  %43 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host, align 4
  %45 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bus_shift.i, align 4
  %shl.i63 = shl i32 36, %46
  %add.ptr.i64 = getelementptr i8, ptr %44, i32 %shl.i63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i64, i16 %cond27) #5, !srcloc !34
  br label %sd_ctrl_write16.exit66

sd_ctrl_write16.exit66:                           ; preds = %if.end.i65, %land.lhs.true.i61.sd_ctrl_write16.exit66_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  %47 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host, align 4
  %49 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bus_shift.i, align 4
  %shl.i.i68 = shl i32 36, %50
  %add.ptr.i.i69 = getelementptr i8, ptr %48, i32 %shl.i.i68
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i69) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  %52 = or i16 %51, 1
  %53 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i.i71 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i71, label %sd_ctrl_write16.exit66.if.end.i.i77_crit_edge, label %land.lhs.true.i.i74

sd_ctrl_write16.exit66.if.end.i.i77_crit_edge:    ; preds = %sd_ctrl_write16.exit66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i77

land.lhs.true.i.i74:                              ; preds = %sd_ctrl_write16.exit66
  %call.i.i72 = tail call i32 %54(ptr noundef %host, i32 noundef 36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72)
  %tobool2.not.i.i73 = icmp eq i32 %call.i.i72, 0
  br i1 %tobool2.not.i.i73, label %land.lhs.true.i.i74.if.end.i.i77_crit_edge, label %land.lhs.true.i.i74.sd_ctrl_write16.exit.i79_crit_edge

land.lhs.true.i.i74.sd_ctrl_write16.exit.i79_crit_edge: ; preds = %land.lhs.true.i.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %sd_ctrl_write16.exit.i79

land.lhs.true.i.i74.if.end.i.i77_crit_edge:       ; preds = %land.lhs.true.i.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i77

if.end.i.i77:                                     ; preds = %land.lhs.true.i.i74.if.end.i.i77_crit_edge, %sd_ctrl_write16.exit66.if.end.i.i77_crit_edge
  %55 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %host, align 4
  %57 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bus_shift.i, align 4
  %shl.i5.i75 = shl i32 36, %58
  %add.ptr.i6.i76 = getelementptr i8, ptr %56, i32 %shl.i5.i75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i6.i76, i16 %52) #5, !srcloc !34
  br label %sd_ctrl_write16.exit.i79

sd_ctrl_write16.exit.i79:                         ; preds = %if.end.i.i77, %land.lhs.true.i.i74.sd_ctrl_write16.exit.i79_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  %59 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i8.i78 = icmp eq ptr %60, null
  br i1 %tobool.not.i8.i78, label %sd_ctrl_write16.exit.i79.if.end.i15.i85_crit_edge, label %land.lhs.true.i11.i82

sd_ctrl_write16.exit.i79.if.end.i15.i85_crit_edge: ; preds = %sd_ctrl_write16.exit.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i15.i85

land.lhs.true.i11.i82:                            ; preds = %sd_ctrl_write16.exit.i79
  %call.i9.i80 = tail call i32 %60(ptr noundef %host, i32 noundef 312) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i80)
  %tobool2.not.i10.i81 = icmp eq i32 %call.i9.i80, 0
  br i1 %tobool2.not.i10.i81, label %land.lhs.true.i11.i82.if.end.i15.i85_crit_edge, label %land.lhs.true.i11.i82.cleanup_crit_edge

land.lhs.true.i11.i82.cleanup_crit_edge:          ; preds = %land.lhs.true.i11.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i11.i82.if.end.i15.i85_crit_edge:   ; preds = %land.lhs.true.i11.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i15.i85

if.end.i15.i85:                                   ; preds = %land.lhs.true.i11.i82.if.end.i15.i85_crit_edge, %sd_ctrl_write16.exit.i79.if.end.i15.i85_crit_edge
  %61 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %host, align 4
  %63 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bus_shift.i, align 4
  %shl.i13.i83 = shl i32 312, %64
  %add.ptr.i14.i84 = getelementptr i8, ptr %62, i32 %shl.i13.i83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i14.i84, i16 1) #5, !srcloc !34
  br label %cleanup

cleanup:                                          ; preds = %if.end.i15.i85, %land.lhs.true.i11.i82.cleanup_crit_edge, %if.end.i15.i, %land.lhs.true.i11.i.cleanup_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmio_mmc_reset(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write16_hook.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %0 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 %1(ptr noundef %host, i32 noundef 480) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge

land.lhs.true.i.sd_ctrl_write16.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sd_ctrl_write16.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %bus_shift.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %4 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_shift.i, align 4
  %shl.i = shl i32 480, %5
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #5, !srcloc !34
  br label %sd_ctrl_write16.exit

sd_ctrl_write16.exit:                             ; preds = %if.end.i, %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  %6 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i3 = icmp eq ptr %7, null
  br i1 %tobool.not.i3, label %sd_ctrl_write16.exit.if.end.i10_crit_edge, label %land.lhs.true.i6

sd_ctrl_write16.exit.if.end.i10_crit_edge:        ; preds = %sd_ctrl_write16.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i10

land.lhs.true.i6:                                 ; preds = %sd_ctrl_write16.exit
  %call.i4 = tail call i32 %7(ptr noundef %host, i32 noundef 480) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool2.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool2.not.i5, label %land.lhs.true.i6.if.end.i10_crit_edge, label %land.lhs.true.i6.sd_ctrl_write16.exit11_crit_edge

land.lhs.true.i6.sd_ctrl_write16.exit11_crit_edge: ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sd_ctrl_write16.exit11

land.lhs.true.i6.if.end.i10_crit_edge:            ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i10

if.end.i10:                                       ; preds = %land.lhs.true.i6.if.end.i10_crit_edge, %sd_ctrl_write16.exit.if.end.i10_crit_edge
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %bus_shift.i7 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %10 = ptrtoint ptr %bus_shift.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_shift.i7, align 4
  %shl.i8 = shl i32 480, %11
  %add.ptr.i9 = getelementptr i8, ptr %9, i32 %shl.i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9, i16 256) #5, !srcloc !34
  br label %sd_ctrl_write16.exit11

sd_ctrl_write16.exit11:                           ; preds = %if.end.i10, %land.lhs.true.i6.sd_ctrl_write16.exit11_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_irq(i32 noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_host_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_host_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_mmc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %mfd_cell.i = getelementptr i8, ptr %dev, i32 964
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %disable = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 %3(ptr noundef %add.ptr) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_mmc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr i8, ptr %dev, i32 964
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %resume = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resume, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then4_crit_edge, label %if.end

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call2 = tail call i32 %3(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.then4_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %entry.if.then4_crit_edge
  %call5 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %ret.1 = phi i32 [ %call2, %if.end.if.end6_crit_edge ], [ %call5, %if.then4 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_host_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_host_runtime_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_tmio_mmc__316_222_tmio_mmc_driver_init6, !1, !"__initcall__kmod_tmio_mmc__316_222_tmio_mmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/tmio_mmc.c", i32 222, i32 1}
!2 = !{ptr @__exitcall_tmio_mmc_driver_exit, !1, !"__exitcall_tmio_mmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description317, !4, !"__UNIQUE_ID_description317", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/tmio_mmc.c", i32 224, i32 1}
!5 = !{ptr @__UNIQUE_ID_author318, !6, !"__UNIQUE_ID_author318", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/tmio_mmc.c", i32 225, i32 1}
!7 = !{ptr @__UNIQUE_ID_file319, !8, !"__UNIQUE_ID_file319", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/tmio_mmc.c", i32 226, i32 1}
!9 = !{ptr @__UNIQUE_ID_license320, !8, !"__UNIQUE_ID_license320", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias321, !11, !"__UNIQUE_ID_alias321", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/tmio_mmc.c", i32 227, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/tmio_mmc.c", i32 214, i32 11}
!14 = !{ptr @tmio_mmc_driver, !15, !"tmio_mmc_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/tmio_mmc.c", i32 212, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/tmio_mmc.c", i32 177, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tmio_mmc_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @tmio_mmc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tmio_mmc_dev_pm_ops, !23, !"tmio_mmc_dev_pm_ops", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/tmio_mmc.c", i32 206, i32 32}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2152532732}
!34 = !{i64 4990540}
!35 = !{i64 4990740}
!36 = !{i64 2152531315}
!37 = !{i32 0, i32 33}
