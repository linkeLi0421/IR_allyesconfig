; ModuleID = '/llk/IR_all_yes/drivers/usb/host/bcma-hcd.c_pt.bc'
source_filename = "../drivers/usb/host/bcma-hcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bcma_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
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
%struct.bcma_hcd_device = type { ptr, ptr, ptr, ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.69, %struct.anon.70, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.69 = type { i8, i8, i8, i8 }
%struct.anon.70 = type { %struct.anon.71, %struct.anon.72 }
%struct.anon.71 = type { i8, i8, i8, i8, i8 }
%struct.anon.72 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author236 = internal constant [31 x i8] c"bcma_hcd.author=Hauke Mehrtens\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [52 x i8] c"bcma_hcd.description=Common USB driver for BCMA Bus\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [40 x i8] c"bcma_hcd.file=drivers/usb/host/bcma-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [21 x i8] c"bcma_hcd.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_bcma_hcd__240_498_bcma_hcd_driver_init6 = internal global ptr @bcma_hcd_driver_init, section ".initcall6.init", align 4
@bcma_hcd_driver = internal global { %struct.bcma_driver, [56 x i8] } { %struct.bcma_driver { ptr @.str, ptr @bcma_hcd_table, ptr @bcma_hcd_probe, ptr @bcma_hcd_remove, ptr @bcma_hcd_suspend, ptr @bcma_hcd_resume, ptr @bcma_hcd_shutdown, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcma_hcd_driver_exit = internal global ptr @bcma_hcd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bcma_hcd\00", [23 x i8] zeroinitializer }, align 32
@bcma_hcd_table = internal constant { [4 x %struct.bcma_device_id], [40 x i8] } { [4 x %struct.bcma_device_id] [%struct.bcma_device_id { i16 1215, i16 2073, i8 -1, i8 -1 }, %struct.bcma_device_id { i16 1215, i16 1284, i8 -1, i8 -1 }, %struct.bcma_device_id { i16 1215, i16 1285, i8 -1, i8 -1 }, %struct.bcma_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@bcma_hcd_usb20_old_arm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 191, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not find PMU core\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcma_hcd_usb20_old_arm_init\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/host/bcma-hcd.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcma_hcd_usb20_old_arm_init._entry_ptr = internal global ptr @bcma_hcd_usb20_old_arm_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 1284, i64 1285, i64 2073]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 53010, i64 53018]
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"bcma_hcd_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 489, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 490, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"bcma_hcd_table\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 481, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 410, i32 51 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [31 x i8] c"../drivers/usb/host/bcma-hcd.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 191, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_bcma_hcd_driver_exit, ptr @__initcall__kmod_bcma_hcd__240_498_bcma_hcd_driver_init6, ptr @bcma_hcd_driver_exit, ptr @bcma_hcd_usb20_old_arm_init._entry, ptr @bcma_hcd_usb20_old_arm_init._entry_ptr, ptr @bcma_hcd_driver, ptr @.str, ptr @bcma_hcd_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_hcd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_hcd_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_hcd_usb20_old_arm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_hcd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__bcma_driver_register(ptr noundef nonnull @bcma_hcd_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcma_hcd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @bcma_driver_unregister(ptr noundef nonnull @bcma_hcd_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bcma_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_hcd_probe(ptr noundef %core) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %core, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 2, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 7) #4
  %gpio_desc = getelementptr inbounds %struct.bcma_hcd_device, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %gpio_desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %gpio_desc, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %id8 = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %id8 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id8, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.end7.cleanup_crit_edge [
    i16 2073, label %sw.bb
    i16 1284, label %sw.bb10
    i16 1285, label %sw.bb12
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %dev2.i = getelementptr inbounds %struct.bcma_device, ptr %8, i32 0, i32 2
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #4
  %rev.i = getelementptr inbounds %struct.bcma_device, ptr %8, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %cmp.i = icmp ult i8 %10, 5
  br i1 %cmp.i, label %sw.bb.if.end16_crit_edge, label %if.end.i

sw.bb.if.end16_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.end.i:                                         ; preds = %sw.bb
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 8
  %call.i.i = tail call ptr @bcma_find_core_unit(ptr noundef %12, i16 noundef zeroext 2087, i8 noundef zeroext 0) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sw.epilog, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  %awrite32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %awrite32.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %awrite32.i.i, align 4
  tail call void %18(ptr noundef %8, i16 noundef zeroext 1032, i32 noundef 3) #4
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %8, align 8
  %ops.i29.i = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ops.i29.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i29.i, align 4
  %awrite32.i30.i = getelementptr inbounds %struct.bcma_host_ops, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %awrite32.i30.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %awrite32.i30.i, align 4
  tail call void %24(ptr noundef %8, i16 noundef zeroext 2048, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #4
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %8, align 8
  %ops.i31.i = getelementptr inbounds %struct.bcma_bus, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %ops.i31.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i31.i, align 4
  %awrite32.i32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %awrite32.i32.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %awrite32.i32.i, align 4
  tail call void %30(ptr noundef %8, i16 noundef zeroext 2048, i32 noundef 0) #4
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #4
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %8, align 8
  %ops.i33.i = getelementptr inbounds %struct.bcma_bus, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %ops.i33.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i33.i, align 4
  %awrite32.i34.i = getelementptr inbounds %struct.bcma_host_ops, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %awrite32.i34.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %awrite32.i34.i, align 4
  tail call void %36(ptr noundef %8, i16 noundef zeroext 1032, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #4
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %8, align 8
  %ops.i35.i = getelementptr inbounds %struct.bcma_bus, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %ops.i35.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i35.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32.i.i, align 4
  tail call void %42(ptr noundef %8, i16 noundef zeroext 480, i32 noundef 322) #4
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #4
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %8, align 8
  %ops.i36.i = getelementptr inbounds %struct.bcma_bus, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %ops.i36.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i36.i, align 4
  %write32.i37.i = getelementptr inbounds %struct.bcma_host_ops, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %write32.i37.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32.i37.i, align 4
  tail call void %48(ptr noundef %8, i16 noundef zeroext 1296, i32 noundef -940027904) #4
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %8, align 8
  %ops.i38.i = getelementptr inbounds %struct.bcma_bus, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %ops.i38.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i38.i, align 4
  %write32.i39.i = getelementptr inbounds %struct.bcma_host_ops, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %write32.i39.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write32.i39.i, align 4
  tail call void %54(ptr noundef %8, i16 noundef zeroext 1296, i32 noundef -940027901) #4
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 600, i32 noundef 2) #4
  %55 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i.i, align 8
  %ops.i40.i = getelementptr inbounds %struct.bcma_bus, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %ops.i40.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i40.i, align 4
  %write32.i41.i = getelementptr inbounds %struct.bcma_host_ops, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %write32.i41.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write32.i41.i, align 4
  tail call void %60(ptr noundef nonnull %call.i.i, i16 noundef zeroext 1632, i32 noundef 6) #4
  %61 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i.i, align 8
  %ops.i42.i = getelementptr inbounds %struct.bcma_bus, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %ops.i42.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i42.i, align 4
  %write32.i43.i = getelementptr inbounds %struct.bcma_host_ops, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %write32.i43.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write32.i43.i, align 4
  tail call void %66(ptr noundef nonnull %call.i.i, i16 noundef zeroext 1636, i32 noundef 5464257) #4
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #4
  %67 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i.i, align 8
  %ops.i44.i = getelementptr inbounds %struct.bcma_bus, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %ops.i44.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i44.i, align 4
  %write32.i45.i = getelementptr inbounds %struct.bcma_host_ops, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %write32.i45.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write32.i45.i, align 4
  tail call void %72(ptr noundef nonnull %call.i.i, i16 noundef zeroext 1632, i32 noundef 7) #4
  %73 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i.i, align 8
  %ops.i46.i = getelementptr inbounds %struct.bcma_bus, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %ops.i46.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i46.i, align 4
  %write32.i47.i = getelementptr inbounds %struct.bcma_host_ops, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %write32.i47.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write32.i47.i, align 4
  tail call void %78(ptr noundef nonnull %call.i.i, i16 noundef zeroext 1636, i32 noundef 0) #4
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #4
  %79 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i.i.i, align 4
  %read32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %84(ptr noundef nonnull %call.i.i, i16 noundef zeroext 1536) #4
  %or.i.i = or i32 %call.i.i.i, 1024
  %85 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call.i.i, align 8
  %ops.i1.i.i = getelementptr inbounds %struct.bcma_bus, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %ops.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops.i1.i.i, align 4
  %write32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %90(ptr noundef nonnull %call.i.i, i16 noundef zeroext 1536, i32 noundef %or.i.i) #4
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #4
  %91 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %8, align 8
  %ops.i48.i = getelementptr inbounds %struct.bcma_bus, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %ops.i48.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops.i48.i, align 4
  %write32.i49.i = getelementptr inbounds %struct.bcma_host_ops, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %write32.i49.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write32.i49.i, align 4
  tail call void %96(ptr noundef %8, i16 noundef zeroext 1296, i32 noundef 133746695) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748000) #4
  %98 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %8, align 8
  %ops.i50.i = getelementptr inbounds %struct.bcma_bus, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %ops.i50.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i50.i, align 4
  %write32.i51.i = getelementptr inbounds %struct.bcma_host_ops, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %write32.i51.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write32.i51.i, align 4
  tail call void %103(ptr noundef %8, i16 noundef zeroext 512, i32 noundef 1279) #4
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #4
  %104 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %8, align 8
  %ops.i52.i = getelementptr inbounds %struct.bcma_bus, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %ops.i52.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops.i52.i, align 4
  %write32.i53.i = getelementptr inbounds %struct.bcma_host_ops, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %write32.i53.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write32.i53.i, align 4
  tail call void %109(ptr noundef %8, i16 noundef zeroext 512, i32 noundef 1791) #4
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #4
  %110 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %8, align 8
  %ops.i54.i = getelementptr inbounds %struct.bcma_bus, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %ops.i54.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i54.i, align 4
  %write32.i55.i = getelementptr inbounds %struct.bcma_host_ops, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %write32.i55.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write32.i55.i, align 4
  tail call void %115(ptr noundef %8, i16 noundef zeroext 512, i32 noundef 2047) #4
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 50, i32 noundef 2) #4
  br label %if.end16.sink.split

sw.bb10:                                          ; preds = %if.end7
  %116 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 8
  %chipinfo.i = getelementptr inbounds %struct.bcma_bus, ptr %119, i32 0, i32 6
  %call.i30 = tail call i32 @bcma_core_enable(ptr noundef %117, i32 noundef 0) #4
  %120 = ptrtoint ptr %chipinfo.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %chipinfo.i, align 2
  %122 = zext i16 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %121, label %sw.bb10.bcma_hcd_usb20_ns_init.exit_crit_edge [
    i16 -12526, label %sw.bb10.if.then.i_crit_edge
    i16 -12518, label %sw.bb10.if.then.i_crit_edge44
  ]

sw.bb10.if.then.i_crit_edge44:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

sw.bb10.if.then.i_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

sw.bb10.bcma_hcd_usb20_ns_init.exit_crit_edge:    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  br label %bcma_hcd_usb20_ns_init.exit

if.then.i:                                        ; preds = %sw.bb10.if.then.i_crit_edge, %sw.bb10.if.then.i_crit_edge44
  %123 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %117, align 8
  %ops.i.i.i31 = getelementptr inbounds %struct.bcma_bus, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %ops.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops.i.i.i31, align 4
  %read32.i.i.i32 = getelementptr inbounds %struct.bcma_host_ops, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %read32.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %read32.i.i.i32, align 4
  %call.i.i.i33 = tail call i32 %128(ptr noundef %117, i16 noundef zeroext 148) #4
  %and.i.i = and i32 %call.i.i.i33, 65535
  %or.i.i34 = or i32 %and.i.i, 8388608
  %129 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %117, align 8
  %ops.i10.i.i = getelementptr inbounds %struct.bcma_bus, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %ops.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ops.i10.i.i, align 4
  %write32.i.i.i35 = getelementptr inbounds %struct.bcma_host_ops, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %write32.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write32.i.i.i35, align 4
  tail call void %134(ptr noundef %117, i16 noundef zeroext 148, i32 noundef %or.i.i34) #4
  %135 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %117, align 8
  %ops.i11.i.i = getelementptr inbounds %struct.bcma_bus, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %ops.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ops.i11.i.i, align 4
  %read32.i12.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %read32.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %read32.i12.i.i, align 4
  %call.i13.i.i = tail call i32 %140(ptr noundef %117, i16 noundef zeroext 156) #4
  %or2.i.i = or i32 %call.i13.i.i, 1
  %141 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %117, align 8
  %ops.i14.i.i = getelementptr inbounds %struct.bcma_bus, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %ops.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ops.i14.i.i, align 4
  %write32.i15.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %144, i32 0, i32 5
  %145 = ptrtoint ptr %write32.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write32.i15.i.i, align 4
  tail call void %146(ptr noundef %117, i16 noundef zeroext 156, i32 noundef %or2.i.i) #4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %bcma_hcd_usb20_ns_init.exit

bcma_hcd_usb20_ns_init.exit:                      ; preds = %if.then.i, %sw.bb10.bcma_hcd_usb20_ns_init.exit_crit_edge
  %dev2.i36 = getelementptr inbounds %struct.bcma_device, ptr %117, i32 0, i32 2
  br label %if.end16.sink.split

sw.bb12:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %147 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %call.i, align 4
  %dev2.i39 = getelementptr inbounds %struct.bcma_device, ptr %148, i32 0, i32 2
  %call.i40 = tail call i32 @bcma_core_enable(ptr noundef %148, i32 noundef 0) #4
  br label %if.end16.sink.split

sw.epilog:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end16.sink.split:                              ; preds = %sw.bb12, %bcma_hcd_usb20_ns_init.exit, %if.end5.i
  %.sink = phi ptr [ %148, %sw.bb12 ], [ %117, %bcma_hcd_usb20_ns_init.exit ], [ %8, %if.end5.i ]
  %dev2.i39.sink = phi ptr [ %dev2.i39, %sw.bb12 ], [ %dev2.i36, %bcma_hcd_usb20_ns_init.exit ], [ %dev2.i, %if.end5.i ]
  %of_node.i41 = getelementptr inbounds %struct.bcma_device, ptr %.sink, i32 0, i32 2, i32 27
  %149 = ptrtoint ptr %of_node.i41 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %of_node.i41, align 8
  %call3.i = tail call i32 @of_platform_default_populate(ptr noundef %150, ptr noundef null, ptr noundef %dev2.i39.sink) #4
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %sw.bb.if.end16_crit_edge
  %drvdata1.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 13
  %151 = ptrtoint ptr %drvdata1.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call.i, ptr %drvdata1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %sw.epilog, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ -2, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_hcd_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.bcma_device, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %ohci_dev1 = getelementptr inbounds %struct.bcma_hcd_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ohci_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ohci_dev1, align 4
  %ehci_dev2 = getelementptr inbounds %struct.bcma_hcd_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ehci_dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ehci_dev2, align 4
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
  tail call void @bcma_core_disable(ptr noundef %dev, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_hcd_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i.i = getelementptr inbounds %struct.bcma_device, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i.i, align 4
  %gpio_desc.i = getelementptr inbounds %struct.bcma_hcd_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gpio_desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_desc.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.bcma_hci_platform_power_gpio.exit_crit_edge, label %if.end.i

entry.bcma_hci_platform_power_gpio.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %bcma_hci_platform_power_gpio.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpiod_set_value(ptr noundef nonnull %3, i32 noundef 0) #4
  br label %bcma_hci_platform_power_gpio.exit

bcma_hci_platform_power_gpio.exit:                ; preds = %if.end.i, %entry.bcma_hci_platform_power_gpio.exit_crit_edge
  tail call void @bcma_core_disable(ptr noundef %dev, i32 noundef 0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_hcd_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i.i = getelementptr inbounds %struct.bcma_device, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i.i, align 4
  %gpio_desc.i = getelementptr inbounds %struct.bcma_hcd_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gpio_desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_desc.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.bcma_hci_platform_power_gpio.exit_crit_edge, label %if.end.i

entry.bcma_hci_platform_power_gpio.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %bcma_hci_platform_power_gpio.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpiod_set_value(ptr noundef nonnull %3, i32 noundef 1) #4
  br label %bcma_hci_platform_power_gpio.exit

bcma_hci_platform_power_gpio.exit:                ; preds = %if.end.i, %entry.bcma_hci_platform_power_gpio.exit_crit_edge
  %call = tail call i32 @bcma_core_enable(ptr noundef %dev, i32 noundef 0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_hcd_shutdown(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i.i = getelementptr inbounds %struct.bcma_device, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i.i, align 4
  %gpio_desc.i = getelementptr inbounds %struct.bcma_hcd_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gpio_desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_desc.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.bcma_hci_platform_power_gpio.exit_crit_edge, label %if.end.i

entry.bcma_hci_platform_power_gpio.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %bcma_hci_platform_power_gpio.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpiod_set_value(ptr noundef nonnull %3, i32 noundef 0) #4
  br label %bcma_hci_platform_power_gpio.exit

bcma_hci_platform_power_gpio.exit:                ; preds = %if.end.i, %entry.bcma_hci_platform_power_gpio.exit_crit_edge
  tail call void @bcma_core_disable(ptr noundef %dev, i32 noundef 0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bcma_find_core_unit(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_core_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__UNIQUE_ID_author236, !1, !"__UNIQUE_ID_author236", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/bcma-hcd.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_description237, !3, !"__UNIQUE_ID_description237", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/bcma-hcd.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_file238, !5, !"__UNIQUE_ID_file238", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/bcma-hcd.c", i32 35, i32 1}
!6 = !{ptr @__UNIQUE_ID_license239, !5, !"__UNIQUE_ID_license239", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_bcma_hcd__240_498_bcma_hcd_driver_init6, !8, !"__initcall__kmod_bcma_hcd__240_498_bcma_hcd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/usb/host/bcma-hcd.c", i32 498, i32 1}
!9 = !{ptr @__exitcall_bcma_hcd_driver_exit, !8, !"__exitcall_bcma_hcd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/bcma-hcd.c", i32 490, i32 11}
!12 = !{ptr @bcma_hcd_driver, !13, !"bcma_hcd_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/bcma-hcd.c", i32 489, i32 27}
!14 = !{ptr @bcma_hcd_table, !15, !"bcma_hcd_table", i1 false, i1 false}
!15 = !{!"../drivers/usb/host/bcma-hcd.c", i32 481, i32 36}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/host/bcma-hcd.c", i32 410, i32 51}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/host/bcma-hcd.c", i32 191, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bcma_hcd_usb20_old_arm_init._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @bcma_hcd_usb20_old_arm_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
