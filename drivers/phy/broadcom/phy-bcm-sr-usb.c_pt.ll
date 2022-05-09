; ModuleID = '/llk/IR_all_yes/drivers/phy/broadcom/phy-bcm-sr-usb.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-bcm-sr-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.bcm_usb_phy_cfg = type { i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_bcm_sr_usb__289_334_bcm_usb_phy_driver_init6 = internal global ptr @bcm_usb_phy_driver_init, section ".initcall6.init", align 4
@bcm_usb_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm_usb_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_usb_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm_usb_phy_driver_exit = internal global ptr @bcm_usb_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [31 x i8] c"phy_bcm_sr_usb.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [60 x i8] c"phy_bcm_sr_usb.description=Broadcom stingray USB Phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [56 x i8] c"phy_bcm_sr_usb.file=drivers/phy/broadcom/phy-bcm-sr-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [30 x i8] c"phy_bcm_sr_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phy-bcm-sr-usb\00", [17 x i8] zeroinitializer }, align 32
@bcm_usb_phy_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-usb-combo-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-usb-hs-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@bcm_usb_combo_phy_hs = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0C\10", [30 x i8] zeroinitializer }, align 32
@bcm_usb_combo_phy_ss = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\18\14", [30 x i8] zeroinitializer }, align 32
@sr_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @bcm_usb_phy_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_usb_phy_reset, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@bcm_usb_hs_phy = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\08\0C", [30 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm_usb_pll_lock_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\013%s: FAIL\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm_usb_pll_lock_check\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/phy/broadcom/phy-bcm-sr-usb.c\00", [58 x i8] zeroinitializer }, align 32
@bcm_usb_pll_lock_check._entry_ptr = internal global ptr @bcm_usb_pll_lock_check._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"bcm_usb_phy_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 327, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 329, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"bcm_usb_phy_of_match\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 285, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"bcm_usb_combo_phy_hs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 32, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"bcm_usb_combo_phy_ss\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 27, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"sr_phy_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 205, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"bcm_usb_hs_phy\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 37, i32 17 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [41 x i8] c"../drivers/phy/broadcom/phy-bcm-sr-usb.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 119, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_bcm_usb_phy_driver_exit, ptr @__initcall__kmod_phy_bcm_sr_usb__289_334_bcm_usb_phy_driver_init6, ptr @bcm_usb_phy_driver_exit, ptr @bcm_usb_pll_lock_check._entry, ptr @bcm_usb_pll_lock_check._entry_ptr, ptr @bcm_usb_phy_driver, ptr @.str, ptr @bcm_usb_phy_of_match, ptr @bcm_usb_combo_phy_hs, ptr @bcm_usb_combo_phy_ss, ptr @sr_phy_ops, ptr @bcm_usb_hs_phy, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_usb_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_usb_phy_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_usb_combo_phy_hs to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_usb_combo_phy_ss to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_usb_hs_phy to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_usb_pll_lock_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_usb_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_usb_phy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm_usb_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_usb_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_usb_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @of_match_node(ptr noundef nonnull @bcm_usb_phy_of_match, ptr noundef %1) #5
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call4, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.then5.cleanup_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then30.i
  ]

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then5
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.end14.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14.i:                                       ; preds = %if.then.i
  %regs3.i = getelementptr %struct.bcm_usb_phy_cfg, ptr %call.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %regs3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %regs3.i, align 4
  %version5.i = getelementptr %struct.bcm_usb_phy_cfg, ptr %call.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %version5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %version5.i, align 4
  %9 = getelementptr %struct.bcm_usb_phy_cfg, ptr %call.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bcm_usb_combo_phy_hs, ptr %9, align 4
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %call.i.i, align 4
  %call15.i = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %1, ptr noundef nonnull @sr_phy_ops) #5
  %phy.i = getelementptr %struct.bcm_usb_phy_cfg, ptr %call.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call15.i, ptr %phy.i, align 4
  %cmp.i.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end14.i.bcm_usb_phy_create.exit_crit_edge, label %if.end14.1.i

if.end14.i.bcm_usb_phy_create.exit_crit_edge:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm_usb_phy_create.exit

if.end14.1.i:                                     ; preds = %if.end14.i
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %call15.i, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  %arrayidx.1.i = getelementptr %struct.bcm_usb_phy_cfg, ptr %call.i.i, i32 1
  %regs3.1.i = getelementptr %struct.bcm_usb_phy_cfg, ptr %call.i.i, i32 1, i32 2
  %14 = ptrtoint ptr %regs3.1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %regs3.1.i, align 4
  %version5.1.i = getelementptr %struct.bcm_usb_phy_cfg, ptr %call.i.i, i32 1, i32 1
  %15 = ptrtoint ptr %version5.1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %version5.1.i, align 4
  %16 = getelementptr %struct.bcm_usb_phy_cfg, ptr %call.i.i, i32 1, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bcm_usb_combo_phy_ss, ptr %16, align 4
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %arrayidx.1.i, align 4
  %call15.1.i = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %1, ptr noundef nonnull @sr_phy_ops) #5
  %phy.1.i = getelementptr %struct.bcm_usb_phy_cfg, ptr %call.i.i, i32 1, i32 3
  %19 = ptrtoint ptr %phy.1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call15.1.i, ptr %phy.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call15.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.end14.1.i.bcm_usb_phy_create.exit_crit_edge, label %if.end14.1.i.bcm_usb_phy_create.exit.thread30_crit_edge

if.end14.1.i.bcm_usb_phy_create.exit.thread30_crit_edge: ; preds = %if.end14.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm_usb_phy_create.exit.thread30

if.end14.1.i.bcm_usb_phy_create.exit_crit_edge:   ; preds = %if.end14.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm_usb_phy_create.exit

if.then30.i:                                      ; preds = %if.then5
  %call.i96.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #5
  %tobool32.not.i = icmp eq ptr %call.i96.i, null
  br i1 %tobool32.not.i, label %if.then30.i.cleanup_crit_edge, label %if.end34.i

if.then30.i.cleanup_crit_edge:                    ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34.i:                                       ; preds = %if.then30.i
  %regs35.i = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %call.i96.i, i32 0, i32 2
  %20 = ptrtoint ptr %regs35.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %regs35.i, align 4
  %version36.i = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %call.i96.i, i32 0, i32 1
  %21 = ptrtoint ptr %version36.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %version36.i, align 4
  %offset37.i = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %call.i96.i, i32 0, i32 4
  %22 = ptrtoint ptr %offset37.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bcm_usb_hs_phy, ptr %offset37.i, align 4
  %23 = ptrtoint ptr %call.i96.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %call.i96.i, align 4
  %call39.i = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %1, ptr noundef nonnull @sr_phy_ops) #5
  %phy40.i = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %call.i96.i, i32 0, i32 3
  %24 = ptrtoint ptr %phy40.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call39.i, ptr %phy40.i, align 4
  %cmp.i97.i = icmp ugt ptr %call39.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97.i, label %if.end34.i.bcm_usb_phy_create.exit_crit_edge, label %if.end34.i.bcm_usb_phy_create.exit.thread30_crit_edge

if.end34.i.bcm_usb_phy_create.exit.thread30_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm_usb_phy_create.exit.thread30

if.end34.i.bcm_usb_phy_create.exit_crit_edge:     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm_usb_phy_create.exit

bcm_usb_phy_create.exit.thread30:                 ; preds = %if.end34.i.bcm_usb_phy_create.exit.thread30_crit_edge, %if.end14.1.i.bcm_usb_phy_create.exit.thread30_crit_edge
  %call15.1.sink.i = phi ptr [ %call15.1.i, %if.end14.1.i.bcm_usb_phy_create.exit.thread30_crit_edge ], [ %call39.i, %if.end34.i.bcm_usb_phy_create.exit.thread30_crit_edge ]
  %arrayidx.1.sink.i = phi ptr [ %arrayidx.1.i, %if.end14.1.i.bcm_usb_phy_create.exit.thread30_crit_edge ], [ %call.i96.i, %if.end34.i.bcm_usb_phy_create.exit.thread30_crit_edge ]
  %phy_cfg.0.i = phi ptr [ %call.i.i, %if.end14.1.i.bcm_usb_phy_create.exit.thread30_crit_edge ], [ %call.i96.i, %if.end34.i.bcm_usb_phy_create.exit.thread30_crit_edge ]
  %driver_data.i.i.1.i = getelementptr inbounds %struct.device, ptr %call15.1.sink.i, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.1.sink.i, ptr %driver_data.i.i.1.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %phy_cfg.0.i, ptr %driver_data.i.i, align 4
  br label %if.end10

bcm_usb_phy_create.exit:                          ; preds = %if.end34.i.bcm_usb_phy_create.exit_crit_edge, %if.end14.1.i.bcm_usb_phy_create.exit_crit_edge, %if.end14.i.bcm_usb_phy_create.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call15.i, %if.end14.i.bcm_usb_phy_create.exit_crit_edge ], [ %call15.1.i, %if.end14.1.i.bcm_usb_phy_create.exit_crit_edge ], [ %call39.i, %if.end34.i.bcm_usb_phy_create.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool8.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool8.not, label %bcm_usb_phy_create.exit.if.end10_crit_edge, label %bcm_usb_phy_create.exit.cleanup_crit_edge

bcm_usb_phy_create.exit.cleanup_crit_edge:        ; preds = %bcm_usb_phy_create.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

bcm_usb_phy_create.exit.if.end10_crit_edge:       ; preds = %bcm_usb_phy_create.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end10:                                         ; preds = %bcm_usb_phy_create.exit.if.end10_crit_edge, %bcm_usb_phy_create.exit.thread30
  %call11 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @bcm_usb_phy_xlate) #5
  %cmp.i.i27 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  %27 = ptrtoint ptr %call11 to i32
  %spec.select.i = select i1 %cmp.i.i27, i32 %27, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %bcm_usb_phy_create.exit.cleanup_crit_edge, %if.then30.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %spec.select.i, %if.end10 ], [ -19, %if.end.cleanup_crit_edge ], [ %retval.0.i, %bcm_usb_phy_create.exit.cleanup_crit_edge ], [ -19, %if.then5.cleanup_crit_edge ], [ -12, %if.then30.i.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bcm_usb_phy_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %args3 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %args3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp4 = icmp sgt i32 %5, 1
  br i1 %cmp4, label %do.end, label %if.end29, !prof !47

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 224, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end29:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %phy = getelementptr %struct.bcm_usb_phy_cfg, ptr %1, i32 %5, i32 3
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %phy31 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %phy31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end29, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end ], [ %7, %if.end29 ], [ %9, %if.else ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_usb_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %3, label %entry.if.end6_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then4
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %regs1.i = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs1.i, align 4
  %offset2.i = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %offset2.i, align 4
  %arrayidx.i = getelementptr i8, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %12 = and i32 %11, 50396415
  %13 = or i32 %12, 402653184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv8.i = zext i8 %15 to i32
  %add.ptr9.i = getelementptr i8, ptr %6, i32 %conv8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %13) #5, !srcloc !51
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %8, align 1
  %conv11.i = zext i8 %17 to i32
  %add.ptr12.i = getelementptr i8, ptr %6, i32 %conv11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %19 = and i32 %18, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %19) #5, !srcloc !51
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %8, align 1
  %conv16.i = zext i8 %21 to i32
  %add.ptr17.i = getelementptr i8, ptr %6, i32 %conv16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  %23 = or i32 %22, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %23) #5, !srcloc !51
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %8, align 1
  %conv21.i = zext i8 %25 to i32
  %add.ptr22.i = getelementptr i8, ptr %6, i32 %conv21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  %27 = or i32 %26, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %27) #5, !srcloc !51
  tail call void @msleep(i32 noundef 30) #5
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %8, align 1
  %conv26.i = zext i8 %29 to i32
  %add.ptr27.i = getelementptr i8, ptr %6, i32 %conv26.i
  %call.i.i = tail call i64 @ktime_get() #5
  %add.i.i.i = add i64 %call.i.i, 1000000
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #5, !srcloc !48
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %and39.i.i = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i)
  %tobool.not40.i.i = icmp eq i32 %and39.i.i, 0
  br i1 %tobool.not40.i.i, label %if.then.land.lhs.true.i.i_crit_edge, label %if.then.for.end.i.i_crit_edge

if.then.for.end.i.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

if.then.land.lhs.true.i.i_crit_edge:              ; preds = %if.then
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %if.then.land.lhs.true.i.i_crit_edge
  %call5.i.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call5.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then7.i.i, label %cond.false.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #5, !srcloc !48
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  br label %for.end.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #5
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #5, !srcloc !48
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %and.i45.i = and i32 %36, 8
  %tobool.not.i.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i.land.lhs.true.i.i_crit_edge, label %cond.false.i.i.for.end.i.i_crit_edge

cond.false.i.i.for.end.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i.i

for.end.i.i:                                      ; preds = %cond.false.i.i.for.end.i.i_crit_edge, %if.then7.i.i, %if.then.for.end.i.i_crit_edge
  %data.0.i.i = phi i32 [ %33, %if.then7.i.i ], [ %31, %if.then.for.end.i.i_crit_edge ], [ %36, %cond.false.i.i.for.end.i.i_crit_edge ]
  %and22.i.i = and i32 %data.0.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %for.end.i.i.if.end6.sink.split_crit_edge, label %for.end.i.i.if.end6_crit_edge

for.end.i.i.if.end6_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

for.end.i.i.if.end6.sink.split_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.sink.split

if.then4:                                         ; preds = %entry
  %regs1.i10 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %regs1.i10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs1.i10, align 4
  %offset2.i11 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %offset2.i11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %offset2.i11, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %conv.i12 = zext i8 %42 to i32
  %add.ptr.i13 = getelementptr i8, ptr %38, i32 %conv.i12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %44 = and i32 %43, -536870913
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %44) #5, !srcloc !51
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %40, align 1
  %conv5.i = zext i8 %46 to i32
  %add.ptr6.i = getelementptr i8, ptr %38, i32 %conv5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  %48 = or i32 %47, 536870912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %48) #5, !srcloc !51
  %49 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %40, align 1
  %conv10.i = zext i8 %50 to i32
  %add.ptr11.i = getelementptr i8, ptr %38, i32 %conv10.i
  %call.i.i14 = tail call i64 @ktime_get() #5
  %add.i.i.i15 = add i64 %call.i.i14, 1000000
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #5, !srcloc !48
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %and39.i.i16 = and i32 %52, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i16)
  %tobool.not40.i.i17 = icmp eq i32 %and39.i.i16, 0
  br i1 %tobool.not40.i.i17, label %if.then4.land.lhs.true.i.i20_crit_edge, label %if.then4.for.end.i.i27_crit_edge

if.then4.for.end.i.i27_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i27

if.then4.land.lhs.true.i.i20_crit_edge:           ; preds = %if.then4
  br label %land.lhs.true.i.i20

land.lhs.true.i.i20:                              ; preds = %cond.false.i.i23.land.lhs.true.i.i20_crit_edge, %if.then4.land.lhs.true.i.i20_crit_edge
  %call5.i.i18 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i.i18, i64 %add.i.i.i15)
  %cmp3.i.i.i19 = icmp sgt i64 %call5.i.i18, %add.i.i.i15
  br i1 %cmp3.i.i.i19, label %if.then7.i.i21, label %cond.false.i.i23

if.then7.i.i21:                                   ; preds = %land.lhs.true.i.i20
  call void @__sanitizer_cov_trace_pc() #7
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #5, !srcloc !48
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  br label %for.end.i.i27

cond.false.i.i23:                                 ; preds = %land.lhs.true.i.i20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748) #5
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #5, !srcloc !48
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %and.i19.i = and i32 %57, 64
  %tobool.not.i.i22 = icmp eq i32 %and.i19.i, 0
  br i1 %tobool.not.i.i22, label %cond.false.i.i23.land.lhs.true.i.i20_crit_edge, label %cond.false.i.i23.for.end.i.i27_crit_edge

cond.false.i.i23.for.end.i.i27_crit_edge:         ; preds = %cond.false.i.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i27

cond.false.i.i23.land.lhs.true.i.i20_crit_edge:   ; preds = %cond.false.i.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i.i20

for.end.i.i27:                                    ; preds = %cond.false.i.i23.for.end.i.i27_crit_edge, %if.then7.i.i21, %if.then4.for.end.i.i27_crit_edge
  %data.0.i.i24 = phi i32 [ %54, %if.then7.i.i21 ], [ %52, %if.then4.for.end.i.i27_crit_edge ], [ %57, %cond.false.i.i23.for.end.i.i27_crit_edge ]
  %and22.i.i25 = and i32 %data.0.i.i24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i25)
  %tobool23.not.i.i26 = icmp eq i32 %and22.i.i25, 0
  br i1 %tobool23.not.i.i26, label %for.end.i.i27.if.end6.sink.split_crit_edge, label %for.end.i.i27.if.end6_crit_edge

for.end.i.i27.if.end6_crit_edge:                  ; preds = %for.end.i.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

for.end.i.i27.if.end6.sink.split_crit_edge:       ; preds = %for.end.i.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %for.end.i.i27.if.end6.sink.split_crit_edge, %for.end.i.i.if.end6.sink.split_crit_edge
  %call27.i.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %for.end.i.i27.if.end6_crit_edge, %for.end.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ret.0 = phi i32 [ -22, %entry.if.end6_crit_edge ], [ 0, %for.end.i.i.if.end6_crit_edge ], [ 0, %for.end.i.i27.if.end6_crit_edge ], [ -110, %if.end6.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_usb_phy_reset(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %offset2 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offset2, align 4
  %regs1 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %add.ptr = getelementptr i8, ptr %7, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %11 = and i32 %10, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #5, !srcloc !51
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %13 to i32
  %add.ptr6 = getelementptr i8, ptr %7, i32 %conv5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  %15 = or i32 %14, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %15) #5, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_phy_bcm_sr_usb__289_334_bcm_usb_phy_driver_init6, !1, !"__initcall__kmod_phy_bcm_sr_usb__289_334_bcm_usb_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 334, i32 1}
!2 = !{ptr @__exitcall_bcm_usb_phy_driver_exit, !1, !"__exitcall_bcm_usb_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 336, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 337, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 338, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 329, i32 11}
!12 = !{ptr @bcm_usb_phy_driver, !13, !"bcm_usb_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 327, i32 31}
!14 = !{ptr @bcm_usb_combo_phy_hs, !15, !"bcm_usb_combo_phy_hs", i1 false, i1 false}
!15 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 32, i32 17}
!16 = !{ptr @bcm_usb_combo_phy_ss, !17, !"bcm_usb_combo_phy_ss", i1 false, i1 false}
!17 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 27, i32 17}
!18 = !{ptr @sr_phy_ops, !19, !"sr_phy_ops", i1 false, i1 false}
!19 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 205, i32 29}
!20 = distinct !{null, !21, !"u3phy_ctrl", i1 false, i1 false}
!21 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 73, i32 17}
!22 = distinct !{null, !23, !"u3pll_ctrl", i1 false, i1 false}
!23 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 49, i32 17}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 119, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bcm_usb_pll_lock_check._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @bcm_usb_pll_lock_check._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"u2pll_ctrl", i1 false, i1 false}
!31 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 59, i32 17}
!32 = distinct !{null, !33, !"u2phy_ctrl", i1 false, i1 false}
!33 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 78, i32 17}
!34 = !{ptr @bcm_usb_hs_phy, !35, !"bcm_usb_hs_phy", i1 false, i1 false}
!35 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 37, i32 17}
!36 = !{ptr @bcm_usb_phy_of_match, !37, !"bcm_usb_phy_of_match", i1 false, i1 false}
!37 = !{!"../drivers/phy/broadcom/phy-bcm-sr-usb.c", i32 285, i32 34}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{i64 2981761}
!49 = !{i64 2155037525}
!50 = !{i64 2155037763}
!51 = !{i64 2981343}
!52 = !{i64 2155029965}
!53 = !{i64 2155030826}
!54 = !{i64 2155031888}
!55 = !{i64 2155032743}
!56 = !{i64 2155034548}
!57 = !{i64 2155034982}
