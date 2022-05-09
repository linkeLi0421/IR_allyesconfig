; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ssb-hcd.c_pt.bc'
source_filename = "../drivers/usb/host/ssb-hcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ssb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_ohci_pdata = type { i8, i32, ptr, ptr, ptr }
%struct.usb_ehci_pdata = type { i32, i8, ptr, ptr, ptr, ptr }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.67, %struct.spinlock, i32, %union.anon.68, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.67 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.68 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.70, %struct.anon.71, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.70 = type { i8, i8, i8, i8 }
%struct.anon.71 = type { %struct.anon.72, %struct.anon.73 }
%struct.anon.72 = type { i8, i8, i8, i8, i8 }
%struct.anon.73 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.74, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ssb_hcd_device = type { ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__UNIQUE_ID_author236 = internal constant [30 x i8] c"ssb_hcd.author=Hauke Mehrtens\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [50 x i8] c"ssb_hcd.description=Common USB driver for SSB Bus\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [38 x i8] c"ssb_hcd.file=drivers/usb/host/ssb-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [20 x i8] c"ssb_hcd.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ssb_hcd__240_268_ssb_hcd_init6 = internal global ptr @ssb_hcd_init, section ".initcall6.init", align 4
@ssb_hcd_driver = internal global { %struct.ssb_driver, [56 x i8] } { %struct.ssb_driver { ptr @.str, ptr @ssb_hcd_table, ptr @ssb_hcd_probe, ptr @ssb_hcd_remove, ptr @ssb_hcd_suspend, ptr @ssb_hcd_resume, ptr @ssb_hcd_shutdown, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ssb_hcd_exit = internal global ptr @ssb_hcd_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ssb_hcd\00", [24 x i8] zeroinitializer }, align 32
@ssb_hcd_table = internal constant { [4 x %struct.ssb_device_id], [40 x i8] } { [4 x %struct.ssb_device_id] [%struct.ssb_device_id { i16 16963, i16 2056, i8 -1, i8 0 }, %struct.ssb_device_id { i16 16963, i16 2071, i8 -1, i8 0 }, %struct.ssb_device_id { i16 16963, i16 2073, i8 -1, i8 0 }, %struct.ssb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ohci-platform\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehci-platform\00", [18 x i8] zeroinitializer }, align 32
@ohci_pdata = internal constant { %struct.usb_ohci_pdata, [44 x i8] } zeroinitializer, align 32
@ehci_pdata = internal constant { %struct.usb_ehci_pdata, [40 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 18176, i64 21248]
@___asan_gen_.3 = private unnamed_addr constant [15 x i8] c"ssb_hcd_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 254, i32 26 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 255, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"ssb_hcd_table\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 246, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 118, i32 41 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 119, i32 6 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"ohci_pdata\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 100, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"ehci_pdata\00", align 1
@___asan_gen_.22 = private constant [30 x i8] c"../drivers/usb/host/ssb-hcd.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 97, i32 36 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_ssb_hcd_exit, ptr @__initcall__kmod_ssb_hcd__240_268_ssb_hcd_init6, ptr @ssb_hcd_exit, ptr @ssb_hcd_driver, ptr @.str, ptr @ssb_hcd_table, ptr @.str.1, ptr @.str.2, ptr @ohci_pdata, ptr @ehci_pdata], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_hcd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_hcd_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_pdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_hcd_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__ssb_driver_register(ptr noundef nonnull @ssb_hcd_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ssb_hcd_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ssb_driver_unregister(ptr noundef nonnull @ssb_hcd_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ssb_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_hcd_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %coreid2 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %coreid2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %coreid2, align 2
  %bus = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_id, align 4
  %6 = and i16 %5, -256
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %entry.cleanup_crit_edge [
    i16 18176, label %entry.if.end_crit_edge
    i16 21248, label %entry.if.end_crit_edge87
  ]

entry.if.end_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge87
  %dma_dev = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_dev, align 4
  %call.i = tail call i32 @dma_set_mask(ptr noundef %9, i64 noundef 4294967295) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %9, i64 noundef 4294967295) #4
  %dev11 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev11, align 4
  %call.i73 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 12, i32 noundef 3520) #4
  %tobool13.not = icmp eq ptr %call.i73, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %coreid2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %coreid2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2056, i16 %13)
  %cmp.i74 = icmp eq i16 %13, 2056
  %spec.select.i = select i1 %cmp.i74, i32 536870912, i32 0
  tail call void @ssb_device_enable(ptr noundef %dev, i32 noundef %spec.select.i) #4
  %14 = ptrtoint ptr %coreid2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %coreid2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2073, i16 %15)
  %cmp.i.i = icmp eq i16 %15, 2073
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end15.ssb_hcd_init_chip.exit_crit_edge

if.end15.ssb_hcd_init_chip.exit_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssb_hcd_init_chip.exit

if.then.i.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %19(ptr noundef %dev, i16 noundef zeroext 512, i32 noundef 2047) #4
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %23(ptr noundef %dev, i16 noundef zeroext 1024) #4
  %and.i.i = and i32 %call.i.i.i, -9
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %write32.i14.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %write32.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i14.i.i, align 4
  tail call void %27(ptr noundef %dev, i16 noundef zeroext 1024, i32 noundef %and.i.i) #4
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %read32.i15.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %read32.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i15.i.i, align 4
  %call.i16.i.i = tail call i32 %31(ptr noundef %dev, i16 noundef zeroext 1024) #4
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %read32.i17.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %read32.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i17.i.i, align 4
  %call.i18.i.i = tail call i32 %35(ptr noundef %dev, i16 noundef zeroext 772) #4
  %and4.i.i = and i32 %call.i18.i.i, -257
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %write32.i19.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %write32.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i19.i.i, align 4
  tail call void %39(ptr noundef %dev, i16 noundef zeroext 772, i32 noundef %and4.i.i) #4
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %read32.i20.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %read32.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i20.i.i, align 4
  %call.i21.i.i = tail call i32 %43(ptr noundef %dev, i16 noundef zeroext 772) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #4
  br label %ssb_hcd_init_chip.exit

ssb_hcd_init_chip.exit:                           ; preds = %if.then.i.i, %if.end15.ssb_hcd_init_chip.exit_crit_edge
  %enable_flags = getelementptr inbounds %struct.ssb_hcd_device, ptr %call.i73, i32 0, i32 2
  %45 = ptrtoint ptr %enable_flags to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.select.i, ptr %enable_flags, align 4
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32.i, align 4
  %call.i75 = tail call i32 %49(ptr noundef %dev, i16 noundef zeroext 4016) #4
  %call18 = tail call i32 @ssb_admatch_base(i32 noundef %call.i75) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2073, i16 %1)
  %cmp20 = icmp eq i16 %1, 2073
  br i1 %cmp20, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %ssb_hcd_init_chip.exit
  %call23 = tail call fastcc ptr @ssb_hcd_create_pdev(ptr noundef %dev, i1 noundef zeroext true, i32 noundef %call18, i32 noundef 2048)
  %ohci_dev = getelementptr inbounds %struct.ssb_hcd_device, ptr %call.i73, i32 0, i32 1
  %50 = ptrtoint ptr %ohci_dev to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call23, ptr %ohci_dev, align 4
  %cmp.i76 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %cond.end.if.then26_crit_edge, label %if.then33

cond.end.if.then26_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

cond.end.thread:                                  ; preds = %ssb_hcd_init_chip.exit
  %call22 = tail call i32 @ssb_admatch_size(i32 noundef %call.i75) #4
  %call2379 = tail call fastcc ptr @ssb_hcd_create_pdev(ptr noundef %dev, i1 noundef zeroext true, i32 noundef %call18, i32 noundef %call22)
  %ohci_dev80 = getelementptr inbounds %struct.ssb_hcd_device, ptr %call.i73, i32 0, i32 1
  %51 = ptrtoint ptr %ohci_dev80 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call2379, ptr %ohci_dev80, align 4
  %cmp.i7681 = icmp ugt ptr %call2379, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i7681, label %cond.end.thread.if.then26_crit_edge, label %cond.end.thread.if.end42_crit_edge

cond.end.thread.if.end42_crit_edge:               ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

cond.end.thread.if.then26_crit_edge:              ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

if.then26:                                        ; preds = %cond.end.thread.if.then26_crit_edge, %cond.end.if.then26_crit_edge
  %call2383 = phi ptr [ %call2379, %cond.end.thread.if.then26_crit_edge ], [ %call23, %cond.end.if.then26_crit_edge ]
  %52 = ptrtoint ptr %call2383 to i32
  br label %cleanup

if.then33:                                        ; preds = %cond.end
  %call34 = tail call i32 @ssb_admatch_base(i32 noundef %call.i75) #4
  %add = add i32 %call34, 2048
  %call35 = tail call fastcc ptr @ssb_hcd_create_pdev(ptr noundef %dev, i1 noundef zeroext false, i32 noundef %add, i32 noundef 2048)
  %53 = ptrtoint ptr %call.i73 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call35, ptr %call.i73, align 4
  %cmp.i77 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then38, label %if.then33.if.end42_crit_edge

if.then33.if.end42_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %call35 to i32
  %55 = ptrtoint ptr %ohci_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ohci_dev, align 4
  tail call void @platform_device_unregister(ptr noundef %56) #4
  br label %cleanup

if.end42:                                         ; preds = %if.then33.if.end42_crit_edge, %cond.end.thread.if.end42_crit_edge
  %drvdata.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 7
  %57 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i73, ptr %drvdata.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then38, %if.then26, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %52, %if.then26 ], [ %54, %if.then38 ], [ 0, %if.end42 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_hcd_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %ohci_dev1 = getelementptr inbounds %struct.ssb_hcd_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ohci_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ohci_dev1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_device_unregister(ptr noundef nonnull %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_device_unregister(ptr noundef nonnull %5) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @ssb_device_disable(ptr noundef %dev, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_hcd_suspend(ptr noundef %dev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ssb_device_disable(ptr noundef %dev, i32 noundef 0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_hcd_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %enable_flags = getelementptr inbounds %struct.ssb_hcd_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %enable_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_flags, align 4
  tail call void @ssb_device_enable(ptr noundef %dev, i32 noundef %3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_hcd_shutdown(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ssb_device_disable(ptr noundef %dev, i32 noundef 0) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_admatch_base(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_admatch_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ssb_hcd_create_pdev(ptr nocapture noundef readonly %dev, i1 noundef zeroext %ohci, i32 noundef %addr, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %hci_res = alloca [2 x %struct.resource], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hci_res) #4
  %0 = getelementptr inbounds i8, ptr %hci_res, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %hci_res to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %addr, ptr %hci_res, align 4
  %add = add i32 %addr, -1
  %sub = add i32 %add, %len
  %end = getelementptr inbounds %struct.resource, ptr %hci_res, i32 0, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %end, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %hci_res, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 512, ptr %flags, align 4
  %irq = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %arrayidx5 = getelementptr inbounds [2 x %struct.resource], ptr %hci_res, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx5, align 4
  %flags8 = getelementptr inbounds [2 x %struct.resource], ptr %hci_res, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1024, ptr %flags8, align 4
  %cond = select i1 %ohci, ptr @.str.1, ptr @.str.2
  %call = tail call ptr @platform_device_alloc(ptr noundef nonnull %cond, i32 noundef 0) #4
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev11 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev11, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %parent, align 8
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 19
  %dma_mask = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 18
  %12 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %coherent_dma_mask, ptr %dma_mask, align 8
  %call16 = call i32 @platform_device_add_resources(ptr noundef nonnull %call, ptr noundef nonnull %hci_res, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end.err_alloc_crit_edge

if.end.err_alloc_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_alloc

if.end19:                                         ; preds = %if.end
  br i1 %ohci, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = call i32 @platform_device_add_data(ptr noundef nonnull %call, ptr noundef nonnull @ohci_pdata, i32 noundef 20) #4
  br label %if.end24

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %call23 = call i32 @platform_device_add_data(ptr noundef nonnull %call, ptr noundef nonnull @ehci_pdata, i32 noundef 24) #4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  %ret.0 = phi i32 [ %call22, %if.then21 ], [ %call23, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool25.not = icmp eq i32 %ret.0, 0
  br i1 %tobool25.not, label %if.end27, label %if.end24.err_alloc_crit_edge

if.end24.err_alloc_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_alloc

if.end27:                                         ; preds = %if.end24
  %call28 = call i32 @platform_device_add(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end27.err_alloc_crit_edge

if.end27.err_alloc_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_alloc

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_alloc:                                        ; preds = %if.end27.err_alloc_crit_edge, %if.end24.err_alloc_crit_edge, %if.end.err_alloc_crit_edge
  %ret.1 = phi i32 [ %call16, %if.end.err_alloc_crit_edge ], [ %ret.0, %if.end24.err_alloc_crit_edge ], [ %call28, %if.end27.err_alloc_crit_edge ]
  call void @platform_device_put(ptr noundef nonnull %call) #4
  %13 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %13, %err_alloc ], [ %call, %if.end27.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hci_res) #4
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_device_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_device_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__UNIQUE_ID_author236, !1, !"__UNIQUE_ID_author236", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ssb-hcd.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_description237, !3, !"__UNIQUE_ID_description237", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ssb-hcd.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_file238, !5, !"__UNIQUE_ID_file238", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ssb-hcd.c", i32 30, i32 1}
!6 = !{ptr @__UNIQUE_ID_license239, !5, !"__UNIQUE_ID_license239", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_ssb_hcd__240_268_ssb_hcd_init6, !8, !"__initcall__kmod_ssb_hcd__240_268_ssb_hcd_init6", i1 false, i1 false}
!8 = !{!"../drivers/usb/host/ssb-hcd.c", i32 268, i32 1}
!9 = !{ptr @__exitcall_ssb_hcd_exit, !10, !"__exitcall_ssb_hcd_exit", i1 false, i1 false}
!10 = !{!"../drivers/usb/host/ssb-hcd.c", i32 274, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/host/ssb-hcd.c", i32 255, i32 11}
!13 = !{ptr @ssb_hcd_driver, !14, !"ssb_hcd_driver", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/ssb-hcd.c", i32 254, i32 26}
!15 = !{ptr @ssb_hcd_table, !16, !"ssb_hcd_table", i1 false, i1 false}
!16 = !{!"../drivers/usb/host/ssb-hcd.c", i32 246, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/ssb-hcd.c", i32 118, i32 41}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/ssb-hcd.c", i32 119, i32 6}
!21 = !{ptr @ohci_pdata, !22, !"ohci_pdata", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/ssb-hcd.c", i32 100, i32 36}
!23 = !{ptr @ehci_pdata, !24, !"ehci_pdata", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/ssb-hcd.c", i32 97, i32 36}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
