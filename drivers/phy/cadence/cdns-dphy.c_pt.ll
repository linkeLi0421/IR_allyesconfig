; ModuleID = '/llk/IR_all_yes/drivers/phy/cadence/cdns-dphy.c_pt.bc'
source_filename = "../drivers/phy/cadence/cdns-dphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cdns_dphy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cdns_dphy = type { %struct.cdns_dphy_cfg, ptr, ptr, ptr, ptr, ptr }
%struct.cdns_dphy_cfg = type { i8, i8, i16, i32 }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@__initcall__kmod_cdns_dphy__289_385_cdns_dphy_platform_driver_init6 = internal global ptr @cdns_dphy_platform_driver_init, section ".initcall6.init", align 4
@cdns_dphy_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_dphy_probe, ptr @cdns_dphy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_dphy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns_dphy_platform_driver_exit = internal global ptr @cdns_dphy_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [59 x i8] c"cdns_dphy.author=Maxime Ripard <maxime.ripard@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [48 x i8] c"cdns_dphy.description=Cadence MIPI D-PHY Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [45 x i8] c"cdns_dphy.file=drivers/phy/cadence/cdns-dphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [22 x i8] c"cdns_dphy.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns-mipi-dphy\00", [17 x i8] zeroinitializer }, align 32
@cdns_dphy_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,dphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ref_dphy_ops }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"psm\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll_ref\00", [24 x i8] zeroinitializer }, align 32
@cdns_dphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @cdns_dphy_power_on, ptr @cdns_dphy_power_off, ptr null, ptr null, ptr null, ptr @cdns_dphy_configure, ptr @cdns_dphy_validate, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@cdns_dphy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 348, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns_dphy_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/phy/cadence/cdns-dphy.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_dphy_probe._entry_ptr = internal global ptr @cdns_dphy_probe._entry, section ".printk_index", align 4
@ref_dphy_ops = internal constant { %struct.cdns_dphy_ops, [40 x i8] } { %struct.cdns_dphy_ops { ptr null, ptr null, ptr @cdns_dphy_ref_set_psm_div, ptr null, ptr @cdns_dphy_ref_set_pll_cfg, ptr @cdns_dphy_ref_get_wakeup_time_ns }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [26 x i8] c"cdns_dphy_platform_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 377, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 381, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"cdns_dphy_of_match\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 371, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 332, i32 43 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 336, i32 47 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"cdns_dphy_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 306, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 348, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"ref_dphy_ops\00", align 1
@___asan_gen_.45 = private constant [35 x i8] c"../drivers/phy/cadence/cdns-dphy.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 207, i32 35 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_cdns_dphy_platform_driver_exit, ptr @__initcall__kmod_cdns_dphy__289_385_cdns_dphy_platform_driver_init6, ptr @cdns_dphy_platform_driver_exit, ptr @cdns_dphy_probe._entry, ptr @cdns_dphy_probe._entry_ptr, ptr @cdns_dphy_platform_driver, ptr @.str, ptr @cdns_dphy_of_match, ptr @.str.1, ptr @.str.2, ptr @cdns_dphy_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ref_dphy_ops], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_dphy_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_dphy_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_dphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_dphy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_dphy_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dphy_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_dphy_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_dphy_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_dphy_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %ops = getelementptr inbounds %struct.cdns_dphy, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %ops, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.cdns_dphy, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %psm_clk = getelementptr inbounds %struct.cdns_dphy, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %psm_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call16, ptr %psm_clk, align 4
  %cmp.i95 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %call24 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %pll_ref_clk = getelementptr inbounds %struct.cdns_dphy, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %pll_ref_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call24, ptr %pll_ref_clk, align 4
  %cmp.i96 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool32.not = icmp eq ptr %11, null
  br i1 %tobool32.not, label %if.end30.if.end40_crit_edge, label %if.then33

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then33:                                        ; preds = %if.end30
  %call36 = tail call i32 %11(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then33.if.end40_crit_edge, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end40:                                         ; preds = %if.then33.if.end40_crit_edge, %if.end30.if.end40_crit_edge
  %call42 = tail call ptr @devm_phy_create(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @cdns_dphy_ops) #7
  %phy = getelementptr inbounds %struct.cdns_dphy, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call42, ptr %phy, align 4
  %cmp.i97 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %do.end, label %if.end55

do.end:                                           ; preds = %if.end40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %remove = getelementptr inbounds %struct.cdns_dphy_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remove, align 4
  %tobool48.not = icmp eq ptr %16, null
  br i1 %tobool48.not, label %do.end.if.end52_crit_edge, label %if.then49

do.end.if.end52_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then49:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %16(ptr noundef nonnull %call.i) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %do.end.if.end52_crit_edge
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call42, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call58 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #7
  %cmp.i.i = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  %21 = ptrtoint ptr %call58 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %21, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end52, %if.then33.cleanup_crit_edge, %if.then27, %if.then19, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then11 ], [ %5, %if.then19 ], [ %7, %if.then27 ], [ %19, %if.end52 ], [ %spec.select.i, %if.end55 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call36, %if.then33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dphy_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops = getelementptr inbounds %struct.cdns_dphy, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %remove = getelementptr inbounds %struct.cdns_dphy_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dphy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %psm_clk = getelementptr inbounds %struct.cdns_dphy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %psm_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psm_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %pll_ref_clk = getelementptr inbounds %struct.cdns_dphy, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pll_ref_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_ref_clk, align 4
  %call.i5 = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i6, label %if.end.i9, label %clk_prepare_enable.exit.clk_prepare_enable.exit11_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit11_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit11

if.end.i9:                                        ; preds = %clk_prepare_enable.exit
  %call1.i7 = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool2.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool2.not.i8, label %if.end.i9.clk_prepare_enable.exit11_crit_edge, label %if.then3.i10

if.end.i9.clk_prepare_enable.exit11_crit_edge:    ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit11

if.then3.i10:                                     ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %clk_prepare_enable.exit11

clk_prepare_enable.exit11:                        ; preds = %if.then3.i10, %if.end.i9.clk_prepare_enable.exit11_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit11_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.cdns_dphy, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16908288) #7, !srcloc !42
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dphy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pll_ref_clk = getelementptr inbounds %struct.cdns_dphy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pll_ref_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_ref_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %psm_clk = getelementptr inbounds %struct.cdns_dphy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %psm_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psm_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dphy_configure(ptr nocapture noundef readonly %phy, ptr noundef %opts) #2 align 64 {
entry:
  %cfg = alloca %struct.cdns_dphy_cfg, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg) #7
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %cfg, align 8
  %call1 = call fastcc i32 @cdns_dphy_config_from_opts(ptr noundef %phy, ptr noundef %opts, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %psm_clk.i = getelementptr inbounds %struct.cdns_dphy, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %psm_clk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %psm_clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %4) #7
  %5 = add i32 %call.i, -100000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100000000, i32 %5)
  %6 = icmp ult i32 %5, -100000000
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.cdns_dphy, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %set_psm_div.i = getelementptr inbounds %struct.cdns_dphy_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %set_psm_div.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_psm_div.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5_crit_edge, label %if.then3.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nuw nsw i32 %call.i, 500000
  %div1.i = udiv i32 %add.i, 1000000
  %conv.i = trunc i32 %div1.i to i8
  tail call void %10(ptr noundef %1, i8 noundef zeroext %conv.i) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3.i, %if.end.i.if.end5_crit_edge
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %set_clk_lane_cfg.i = getelementptr inbounds %struct.cdns_dphy_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %set_clk_lane_cfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_clk_lane_cfg.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end5.cdns_dphy_set_clk_lane_cfg.exit_crit_edge, label %if.then.i

if.end5.cdns_dphy_set_clk_lane_cfg.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_dphy_set_clk_lane_cfg.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %14(ptr noundef %1, i32 noundef 2) #7
  br label %cdns_dphy_set_clk_lane_cfg.exit

cdns_dphy_set_clk_lane_cfg.exit:                  ; preds = %if.then.i, %if.end5.cdns_dphy_set_clk_lane_cfg.exit_crit_edge
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %set_pll_cfg.i = getelementptr inbounds %struct.cdns_dphy_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %set_pll_cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_pll_cfg.i, align 4
  %tobool.not.i17 = icmp eq ptr %18, null
  br i1 %tobool.not.i17, label %cdns_dphy_set_clk_lane_cfg.exit.cleanup_crit_edge, label %if.then.i18

cdns_dphy_set_clk_lane_cfg.exit.cleanup_crit_edge: ; preds = %cdns_dphy_set_clk_lane_cfg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i18:                                      ; preds = %cdns_dphy_set_clk_lane_cfg.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void %18(ptr noundef %1, ptr noundef nonnull %cfg) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i18, %cdns_dphy_set_clk_lane_cfg.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cdns_dphy_set_clk_lane_cfg.exit.cleanup_crit_edge ], [ 0, %if.then.i18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dphy_validate(ptr nocapture noundef readonly %phy, i32 noundef %mode, i32 noundef %submode, ptr noundef %opts) #2 align 64 {
entry:
  %cfg = alloca %struct.cdns_dphy_cfg, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg) #7
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %cfg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call fastcc i32 @cdns_dphy_config_from_opts(ptr noundef %phy, ptr noundef %opts, ptr noundef nonnull %cfg)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_dphy_config_from_opts(ptr nocapture noundef readonly %phy, ptr noundef %opts, ptr nocapture noundef %cfg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @phy_mipi_dphy_config_validate(ptr noundef %opts) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pll_ref_clk.i = getelementptr inbounds %struct.cdns_dphy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pll_ref_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_ref_clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %3) #7
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %cfg, align 4
  %5 = add i32 %call.i, -150000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -140400000, i32 %5)
  %6 = icmp ult i32 %5, -140400000
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.else.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %call.i)
  %cmp2.i = icmp ult i32 %call.i, 19200000
  br i1 %cmp2.i, label %if.else.i.if.end16.i_crit_edge, label %if.else4.i

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 38400000, i32 %call.i)
  %cmp5.i = icmp ult i32 %call.i, 38400000
  br i1 %cmp5.i, label %if.else4.i.if.end16.i_crit_edge, label %if.else8.i

if.else4.i.if.end16.i_crit_edge:                  ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.else8.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 76800000, i32 %call.i)
  %cmp9.i = icmp ult i32 %call.i, 76800000
  %..i = select i1 %cmp9.i, i8 4, i8 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else8.i, %if.else4.i.if.end16.i_crit_edge, %if.else.i.if.end16.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.else.i.if.end16.i_crit_edge ], [ 2, %if.else4.i.if.end16.i_crit_edge ], [ %..i, %if.else8.i ]
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink.i, ptr %cfg, align 4
  %hs_clk_rate.i = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %opts, i32 0, i32 22
  %8 = ptrtoint ptr %hs_clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hs_clk_rate.i, align 4
  %conv.i = zext i32 %9 to i64
  %10 = add i32 %9, 1794967295
  call void @__sanitizer_cov_trace_const_cmp4(i32 1954967295, i32 %10)
  %11 = icmp ult i32 %10, 1954967295
  br i1 %11, label %if.end16.i.cleanup_crit_edge, label %if.else23.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else23.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1249999999, i32 %9)
  %cmp24.i = icmp ugt i32 %9, 1249999999
  br i1 %cmp24.i, label %if.then26.i, label %if.else27.i

if.then26.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #9
  %pll_opdiv.i = getelementptr inbounds %struct.cdns_dphy_cfg, ptr %cfg, i32 0, i32 1
  %12 = ptrtoint ptr %pll_opdiv.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %pll_opdiv.i, align 1
  br label %if.end46.i

if.else27.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 629999999, i32 %9)
  %cmp28.i = icmp ugt i32 %9, 629999999
  br i1 %cmp28.i, label %if.then30.i, label %if.else32.i

if.then30.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #9
  %pll_opdiv31.i = getelementptr inbounds %struct.cdns_dphy_cfg, ptr %cfg, i32 0, i32 1
  %13 = ptrtoint ptr %pll_opdiv31.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %pll_opdiv31.i, align 1
  br label %if.end46.i

if.else32.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 319999999, i32 %9)
  %cmp33.i = icmp ugt i32 %9, 319999999
  %pll_opdiv36.i = getelementptr inbounds %struct.cdns_dphy_cfg, ptr %cfg, i32 0, i32 1
  br i1 %cmp33.i, label %if.then35.i, label %if.then40.i

if.then35.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %pll_opdiv36.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %pll_opdiv36.i, align 1
  br label %if.end46.i

if.then40.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %pll_opdiv36.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %pll_opdiv36.i, align 1
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then40.i, %if.then35.i, %if.then30.i, %if.then26.i
  %pll_opdiv47.i = getelementptr inbounds %struct.cdns_dphy_cfg, ptr %cfg, i32 0, i32 1
  %16 = ptrtoint ptr %pll_opdiv47.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pll_opdiv47.i, align 1
  %conv48.i = zext i8 %17 to i64
  %18 = shl nuw nsw i8 %.sink.i, 1
  %mul.i = zext i8 %18 to i64
  %mul49.i = mul nuw nsw i64 %mul.i, %conv.i
  %mul52.i = mul nuw nsw i64 %mul49.i, %conv48.i
  %conv53.i = zext i32 %call.i to i64
  %add.i = add nsw i64 %conv53.i, -1
  %sub.i = add nuw nsw i64 %mul52.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp227.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp227.i, label %if.then231.i, label %if.else237.i, !prof !43

if.then231.i:                                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv232.i = trunc i64 %sub.i to i32
  %div235.i = udiv i32 %conv232.i, %call.i
  %extract.t27.i = trunc i32 %div235.i to i16
  br label %if.end5

if.else237.i:                                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i, i64 %sub.i) #11, !srcloc !44
  %asmresult1.i.i = extractvalue { i64, i64 } %19, 1
  %extract.t28.i = trunc i64 %asmresult1.i.i to i16
  br label %if.end5

if.end5:                                          ; preds = %if.else237.i, %if.then231.i
  %_tmp.0.off0.i = phi i16 [ %extract.t27.i, %if.then231.i ], [ %extract.t28.i, %if.else237.i ]
  %pll_fbdiv.i = getelementptr inbounds %struct.cdns_dphy_cfg, ptr %cfg, i32 0, i32 2
  %20 = ptrtoint ptr %pll_fbdiv.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %_tmp.0.off0.i, ptr %pll_fbdiv.i, align 2
  %ops.i = getelementptr inbounds %struct.cdns_dphy, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %get_wakeup_time_ns.i = getelementptr inbounds %struct.cdns_dphy_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %get_wakeup_time_ns.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_wakeup_time_ns.i, align 4
  %call.i15 = tail call i32 %24(ptr noundef %1) #7
  %div = udiv i32 %call.i15, 1000
  %wakeup = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %opts, i32 0, i32 21
  %25 = ptrtoint ptr %wakeup to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div, ptr %wakeup, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end16.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end16.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_config_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_dphy_ref_set_psm_div(ptr nocapture noundef readonly %dphy, i8 noundef zeroext %div) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %conv = zext i8 %div to i32
  %shl = shl nuw nsw i32 %conv, 1
  %or = or i32 %shl, 1
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr inbounds %struct.cdns_dphy, ptr %dphy, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_dphy_ref_set_pll_cfg(ptr nocapture noundef readonly %dphy, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pll_fbdiv = getelementptr inbounds %struct.cdns_dphy_cfg, ptr %cfg, i32 0, i32 2
  %0 = ptrtoint ptr %pll_fbdiv to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pll_fbdiv, align 2
  %conv = zext i16 %1 to i32
  %div29 = lshr i32 %conv, 2
  %sub = add nsw i32 %div29, -2
  %sub3 = sub nsw i32 %conv, %sub
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cfg, align 4
  %conv5 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv5, 1
  %pll_opdiv = getelementptr inbounds %struct.cdns_dphy_cfg, ptr %cfg, i32 0, i32 1
  %4 = ptrtoint ptr %pll_opdiv to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pll_opdiv, align 1
  %conv6 = zext i8 %5 to i32
  %shl7 = shl nuw nsw i32 %conv6, 7
  %or = or i32 %shl, %shl7
  %or8 = or i32 %or, 65
  %6 = tail call i32 @llvm.bswap.i32(i32 %or8)
  %regs = getelementptr inbounds %struct.cdns_dphy, ptr %dphy, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %sub4 = shl nsw i32 %sub3, 11
  %shl12 = add nsw i32 %sub4, -4096
  %shl13 = shl i32 %sub, 22
  %or14 = or i32 %shl13, %shl12
  %or15 = or i32 %or14, 2098176
  %9 = tail call i32 @llvm.bswap.i32(i32 %or15)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %9) #7, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr22 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 100959232) #7, !srcloc !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdns_dphy_ref_get_wakeup_time_ns(ptr nocapture noundef readnone %dphy) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 800
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_cdns_dphy__289_385_cdns_dphy_platform_driver_init6, !1, !"__initcall__kmod_cdns_dphy__289_385_cdns_dphy_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/cadence/cdns-dphy.c", i32 385, i32 1}
!2 = !{ptr @__exitcall_cdns_dphy_platform_driver_exit, !1, !"__exitcall_cdns_dphy_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/cadence/cdns-dphy.c", i32 387, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/phy/cadence/cdns-dphy.c", i32 388, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/cadence/cdns-dphy.c", i32 389, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/cadence/cdns-dphy.c", i32 381, i32 12}
!12 = !{ptr @cdns_dphy_platform_driver, !13, !"cdns_dphy_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/cadence/cdns-dphy.c", i32 377, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/cadence/cdns-dphy.c", i32 332, i32 43}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/cadence/cdns-dphy.c", i32 336, i32 47}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/cadence/cdns-dphy.c", i32 348, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cdns_dphy_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @cdns_dphy_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @cdns_dphy_ops, !27, !"cdns_dphy_ops", i1 false, i1 false}
!27 = !{!"../drivers/phy/cadence/cdns-dphy.c", i32 306, i32 29}
!28 = !{ptr @cdns_dphy_of_match, !29, !"cdns_dphy_of_match", i1 false, i1 false}
!29 = !{!"../drivers/phy/cadence/cdns-dphy.c", i32 371, i32 34}
!30 = !{ptr @ref_dphy_ops, !31, !"ref_dphy_ops", i1 false, i1 false}
!31 = !{!"../drivers/phy/cadence/cdns-dphy.c", i32 207, i32 35}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2155145960}
!42 = !{i64 2037154}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2148638783, i64 2148639063, i64 2148639397, i64 2148639731}
!45 = !{i64 2155145180}
!46 = !{i64 2155138487}
!47 = !{i64 2155143642}
!48 = !{i64 2155144482}
