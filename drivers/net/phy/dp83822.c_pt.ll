; ModuleID = '/llk/IR_all_yes/drivers/net/phy/dp83822.c_pt.bc'
source_filename = "../drivers/net/phy/dp83822.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.dp83822_private = type { i8, i32, i16 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@__initcall__kmod_dp83822__349_629_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@dp83822_driver = internal global { [7 x %struct.phy_driver], [396 x i8] } { [7 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 536912448, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr @dp83822_phy_reset, ptr @dp83822_config_init, ptr @dp83822_probe, ptr null, ptr @dp83822_suspend, ptr @dp83822_resume, ptr null, ptr null, ptr @dp83822_read_status, ptr @dp83822_config_intr, ptr @dp83822_handle_interrupt, ptr null, ptr null, ptr @dp83822_set_wol, ptr @dp83822_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 536912208, ptr @.str.1, i32 -16, ptr null, i32 0, ptr null, ptr @dp83822_phy_reset, ptr @dp8382x_config_init, ptr null, ptr null, ptr @dp83822_suspend, ptr @dp83822_resume, ptr null, ptr null, ptr null, ptr @dp83822_config_intr, ptr @dp83822_handle_interrupt, ptr null, ptr null, ptr @dp83822_set_wol, ptr @dp83822_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 536912176, ptr @.str.2, i32 -16, ptr null, i32 0, ptr null, ptr @dp83822_phy_reset, ptr @dp8382x_config_init, ptr null, ptr null, ptr @dp83822_suspend, ptr @dp83822_resume, ptr null, ptr null, ptr null, ptr @dp83822_config_intr, ptr @dp83822_handle_interrupt, ptr null, ptr null, ptr @dp83822_set_wol, ptr @dp83822_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 536912144, ptr @.str.3, i32 -16, ptr null, i32 0, ptr null, ptr @dp83822_phy_reset, ptr @dp8382x_config_init, ptr null, ptr null, ptr @dp83822_suspend, ptr @dp83822_resume, ptr null, ptr null, ptr null, ptr @dp83822_config_intr, ptr @dp83822_handle_interrupt, ptr null, ptr null, ptr @dp83822_set_wol, ptr @dp83822_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 536912192, ptr @.str.4, i32 -16, ptr null, i32 0, ptr null, ptr @dp83822_phy_reset, ptr @dp8382x_config_init, ptr null, ptr null, ptr @dp83822_suspend, ptr @dp83822_resume, ptr null, ptr null, ptr null, ptr @dp83822_config_intr, ptr @dp83822_handle_interrupt, ptr null, ptr null, ptr @dp83822_set_wol, ptr @dp83822_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 536912224, ptr @.str.5, i32 -16, ptr null, i32 0, ptr null, ptr @dp83822_phy_reset, ptr @dp8382x_config_init, ptr null, ptr null, ptr @dp83822_suspend, ptr @dp83822_resume, ptr null, ptr null, ptr null, ptr @dp83822_config_intr, ptr @dp83822_handle_interrupt, ptr null, ptr null, ptr @dp83822_set_wol, ptr @dp83822_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 536912240, ptr @.str.6, i32 -16, ptr null, i32 0, ptr null, ptr @dp83822_phy_reset, ptr @dp8382x_config_init, ptr null, ptr null, ptr @dp83822_suspend, ptr @dp83822_resume, ptr null, ptr null, ptr null, ptr @dp83822_config_intr, ptr @dp83822_handle_interrupt, ptr null, ptr null, ptr @dp83822_set_wol, ptr @dp83822_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [396 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description350 = internal constant [57 x i8] c"dp83822.description=Texas Instruments DP83822 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author351 = internal constant [42 x i8] c"dp83822.author=Dan Murphy <dmurphy@ti.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [37 x i8] c"dp83822.file=drivers/net/phy/dp83822\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [23 x i8] c"dp83822.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TI DP83822\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TI DP83825I\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TI DP83826C\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TI DP83826NC\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TI DP83825S\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TI DP83825M\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TI DP83825CS\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,link-loss-low\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,fiber-mode\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"dp83822_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 620, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 621, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 622, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 623, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 624, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 625, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 626, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 627, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 499, i32 14 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [29 x i8] c"../drivers/net/phy/dp83822.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 502, i32 14 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description350, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_dp83822__349_629_phy_module_init6, ptr @phy_module_exit, ptr @dp83822_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83822_driver to i32), i32 1652, i32 2048, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @dp83822_driver, i32 noundef 7, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @phy_drivers_unregister(ptr noundef nonnull @dp83822_driver, i32 noundef 7) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83822_phy_reset(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 16384) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv, align 8
  %config_init = getelementptr inbounds %struct.phy_driver, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %config_init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config_init, align 4
  %call1 = tail call i32 %7(ptr noundef %phydev) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83822_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %2 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface.i, align 4
  %4 = add i32 %3, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @phy_get_internal_delay(ptr noundef %phydev, ptr noundef %phydev, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.inv = icmp sgt i32 %call2, 0
  %. = select i1 %cmp.inv, i32 4096, i32 0
  %call4 = tail call i32 @phy_get_internal_delay(ptr noundef %phydev, ptr noundef %phydev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 1
  %or = or i32 %., 2048
  %rgmii_delay.1 = select i1 %cmp5, i32 %., i32 %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rgmii_delay.1)
  %tobool.not = icmp eq i32 %rgmii_delay.1, 0
  br i1 %tobool.not, label %if.then.if.end15_crit_edge, label %if.then9

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then9:                                         ; preds = %if.then
  %conv = trunc i32 %rgmii_delay.1 to i16
  %call.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 23, i16 noundef zeroext 0, i16 noundef zeroext %conv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.then9.if.end15_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  %fx_enabled = getelementptr inbounds %struct.dp83822_private, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %fx_enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fx_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool16.not = icmp eq i32 %7, 0
  br i1 %tobool16.not, label %if.end15.if.end68_crit_edge, label %if.then17

if.end15.if.end68_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

if.then17:                                        ; preds = %if.end15
  %call18 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 10, i16 noundef zeroext 16384, i16 noundef zeroext 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then17.cleanup_crit_edge, label %if.end22

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end22:                                         ; preds = %if.then17
  %advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 17
  %supported = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %call.i.i = tail call i32 @__bitmap_and(ptr noundef %advertising, ptr noundef %advertising, ptr noundef %supported, i32 noundef 92) #3
  %8 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %supported, align 4
  %or.i.i = or i32 %9, 1024
  store i32 %or.i.i, ptr %supported, align 4
  %10 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %advertising, align 4
  %or.i.i115 = or i32 %11, 1024
  store i32 %or.i.i115, ptr %advertising, align 4
  %add.ptr.i.i = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 16, i32 2
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i118 = or i32 %13, 201326592
  store i32 %or.i.i118, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i119 = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 17, i32 2
  %14 = ptrtoint ptr %add.ptr.i.i119 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i119, align 4
  %or.i.i122 = or i32 %15, 201326592
  store i32 %or.i.i122, ptr %add.ptr.i.i119, align 4
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 8
  %call.i123 = tail call i32 @mdiobus_read(ptr noundef %17, i32 noundef %19, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %cmp39 = icmp slt i32 %call.i123, 0
  br i1 %cmp39, label %if.end22.cleanup_crit_edge, label %if.end42

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end42:                                         ; preds = %if.end22
  %and43 = and i32 %call.i123, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end51_crit_edge, label %if.then45

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end51

if.then45:                                        ; preds = %if.end42
  %call46 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 4096, i16 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then45.cleanup_crit_edge, label %if.then45.if.end51_crit_edge

if.then45.if.end51_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end51

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end51:                                         ; preds = %if.then45.if.end51_crit_edge, %if.end42.if.end51_crit_edge
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %20 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %autoneg, align 8
  %bf.clear = and i16 %bf.load, -9
  store i16 %bf.clear, ptr %autoneg, align 8
  %21 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %supported, align 4
  %and.i.i = and i32 %22, -65
  store i32 %and.i.i, ptr %supported, align 4
  %23 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %advertising, align 4
  %and.i.i124 = and i32 %24, -65
  store i32 %and.i.i124, ptr %advertising, align 4
  %call56 = tail call i32 @phy_modify_changed(ptr noundef %phydev, i32 noundef 4, i16 noundef zeroext 26240, i16 noundef zeroext 26240) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end51.cleanup_crit_edge, label %if.end60

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end60:                                         ; preds = %if.end51
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %1, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool61.not = icmp eq i8 %26, 0
  br i1 %tobool61.not, label %if.end60.if.end68_crit_edge, label %if.then62

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

if.then62:                                        ; preds = %if.end60
  %call.i125 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1125, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool64.not = icmp eq i32 %call.i125, 0
  br i1 %tobool64.not, label %if.then62.if.end68_crit_edge, label %if.then62.cleanup_crit_edge

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then62.if.end68_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

if.end68:                                         ; preds = %if.then62.if.end68_crit_edge, %if.end60.if.end68_crit_edge, %if.end15.if.end68_crit_edge
  %call.i.i126 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184, i16 noundef zeroext 161, i16 noundef zeroext 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then62.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i126, %if.end68 ], [ %call.i, %if.then9.cleanup_crit_edge ], [ %call18, %if.then17.cleanup_crit_edge ], [ %call.i123, %if.end22.cleanup_crit_edge ], [ %call46, %if.then45.cleanup_crit_edge ], [ %call56, %if.end51.cleanup_crit_edge ], [ %call.i125, %if.then62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83822_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 12, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %priv, align 8
  %call.i17 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1127) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp.i = icmp slt i32 %call.i17, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %and.i = lshr i32 %call.i17, 10
  %shr.i = and i32 %and.i, 3
  %shr.off.i = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.off.i)
  %switch.i = icmp ult i32 %shr.off.i, 2
  br i1 %switch.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %fx_enabled4.i = getelementptr inbounds %struct.dp83822_private, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %fx_enabled4.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %fx_enabled4.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %fx_enabled6.i = getelementptr inbounds %struct.dp83822_private, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %fx_enabled6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fx_enabled6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %4 = and i32 %call.i17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %switch28.not.i = icmp eq i32 %4, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %switch28.not.i
  br i1 %or.cond.i, label %if.end5.i.if.end4_crit_edge, label %if.then13.i

if.end5.i.if.end4_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then13.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  %fx_sd_enable14.i = getelementptr inbounds %struct.dp83822_private, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %fx_sd_enable14.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %fx_sd_enable14.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then13.i, %if.end5.i.if.end4_crit_edge
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %fx_enabled.i = getelementptr inbounds %struct.dp83822_private, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %fx_enabled.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fx_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i19 = icmp eq i32 %9, 0
  br i1 %tobool.not.i19, label %if.end4.if.then5.i_crit_edge, label %land.lhs.true.i

if.end4.if.then5.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then5.i

land.lhs.true.i:                                  ; preds = %if.end4
  %fx_sd_enable.i = getelementptr inbounds %struct.dp83822_private, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %fx_sd_enable.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fx_sd_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool2.not.i = icmp eq i16 %11, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i21_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i21_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i21

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i20 = tail call zeroext i1 @device_property_present(ptr noundef %phydev, ptr noundef nonnull @.str.7) #3
  %frombool.i = zext i1 %call.i20 to i8
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool.i, ptr %7, align 4
  br label %if.end.i21

if.end.i21:                                       ; preds = %if.then.i, %land.lhs.true.i.if.end.i21_crit_edge
  %13 = ptrtoint ptr %fx_enabled.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr.i = load i32, ptr %fx_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool4.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool4.not.i, label %if.end.i21.if.then5.i_crit_edge, label %if.end.i21.dp83822_of_init.exit_crit_edge

if.end.i21.dp83822_of_init.exit_crit_edge:        ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp83822_of_init.exit

if.end.i21.if.then5.i_crit_edge:                  ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i21.if.then5.i_crit_edge, %if.end4.if.then5.i_crit_edge
  %call6.i = tail call zeroext i1 @device_property_present(ptr noundef %phydev, ptr noundef nonnull @.str.8) #3
  %conv7.i = zext i1 %call6.i to i32
  %14 = ptrtoint ptr %fx_enabled.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv7.i, ptr %fx_enabled.i, align 4
  br label %dp83822_of_init.exit

dp83822_of_init.exit:                             ; preds = %if.then5.i, %if.end.i21.dp83822_of_init.exit_crit_edge
  %15 = ptrtoint ptr %fx_enabled6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fx_enabled6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  br i1 %tobool6.not, label %dp83822_of_init.exit.cleanup_crit_edge, label %if.then7

dp83822_of_init.exit.cleanup_crit_edge:           ; preds = %dp83822_of_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %dp83822_of_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  %port = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 10
  %17 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %port, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %dp83822_of_init.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %dp83822_of_init.exit.cleanup_crit_edge ], [ %call.i17, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83822_suspend(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184) #3
  %and = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @genphy_suspend(ptr noundef %phydev) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83822_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_resume(ptr noundef %phydev) #3
  %call1 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184) #3
  %0 = trunc i32 %call1 to i16
  %conv = or i16 %0, 2048
  %call2 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184, i16 noundef zeroext %conv) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83822_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 16) #3
  %fx_enabled = getelementptr inbounds %struct.dp83822_private, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %fx_enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fx_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then:                                          ; preds = %entry
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 255, ptr %duplex, align 4
  br label %if.end15

if.else:                                          ; preds = %if.then
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 8
  %call.i63 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 10) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp = icmp slt i32 %call.i63, 0
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.else
  %and5 = and i32 %call.i63, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then7:                                         ; preds = %if.end
  %14 = trunc i32 %call.i63 to i16
  %conv = or i16 %14, 16384
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 8
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i, align 8
  %call.i66 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef 10, i16 noundef zeroext %conv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp9 = icmp slt i32 %call.i66, 0
  br i1 %cmp9, label %if.then7.cleanup_crit_edge, label %if.then7.if.end15_crit_edge

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15:                                         ; preds = %if.then7.if.end15_crit_edge, %if.end.if.end15_crit_edge, %if.then2, %entry.if.end15_crit_edge
  %call16 = tail call i32 @genphy_read_status(ptr noundef %phydev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20 = icmp slt i32 %call.i, 0
  br i1 %cmp20, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %and24 = lshr i32 %call.i, 2
  %and24.lobit = and i32 %and24, 1
  %19 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and24.lobit, ptr %19, align 4
  %and31 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %. = select i1 %tobool32.not, i32 100, i32 10
  %speed34 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %21 = ptrtoint ptr %speed34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %., ptr %speed34, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i63, %if.else.cleanup_crit_edge ], [ %call.i66, %if.then7.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call.i, %if.end19.cleanup_crit_edge ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83822_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %2 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  %bus.i101 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i101 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i101, align 8
  %addr.i102 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %5 = ptrtoint ptr %addr.i102 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.i102, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @mdiobus_read(ptr noundef %4, i32 noundef %6, i32 noundef 18) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  %fx_enabled = getelementptr inbounds %struct.dp83822_private, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %fx_enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fx_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %spec.select.v = select i1 %tobool.not, i32 255, i32 227
  %spec.select = or i32 %spec.select.v, %call.i
  %conv = trunc i32 %spec.select to i16
  %9 = ptrtoint ptr %bus.i101 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i101, align 8
  %11 = ptrtoint ptr %addr.i102 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i102, align 8
  %call.i91 = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 18, i16 noundef zeroext %conv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp7 = icmp slt i32 %call.i91, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %13 = ptrtoint ptr %bus.i101 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i101, align 8
  %15 = ptrtoint ptr %addr.i102 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i102, align 8
  %call.i94 = tail call i32 @mdiobus_read(ptr noundef %14, i32 noundef %16, i32 noundef 19) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp12 = icmp slt i32 %call.i94, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %17 = ptrtoint ptr %fx_enabled to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fx_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  %spec.select88.v = select i1 %tobool18.not, i32 255, i32 181
  %spec.select88 = or i32 %spec.select88.v, %call.i94
  %conv22 = trunc i32 %spec.select88 to i16
  %19 = ptrtoint ptr %bus.i101 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i101, align 8
  %21 = ptrtoint ptr %addr.i102 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i102, align 8
  %call.i97 = tail call i32 @mdiobus_write(ptr noundef %20, i32 noundef %22, i32 noundef 19, i16 noundef zeroext %conv22) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp24 = icmp slt i32 %call.i97, 0
  br i1 %cmp24, label %if.end15.cleanup_crit_edge, label %if.end27

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  %23 = ptrtoint ptr %bus.i101 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i101, align 8
  %25 = ptrtoint ptr %addr.i102 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr.i102, align 8
  %call.i100 = tail call i32 @mdiobus_read(ptr noundef %24, i32 noundef %26, i32 noundef 17) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp29 = icmp slt i32 %call.i100, 0
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %or33 = or i32 %call.i100, 3
  br label %if.end49

if.else:                                          ; preds = %entry
  %call.i103 = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 18, i16 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp35 = icmp slt i32 %call.i103, 0
  br i1 %cmp35, label %if.else.cleanup_crit_edge, label %if.end38

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end38:                                         ; preds = %if.else
  %27 = ptrtoint ptr %bus.i101 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i101, align 8
  %29 = ptrtoint ptr %addr.i102 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i102, align 8
  %call.i106 = tail call i32 @mdiobus_write(ptr noundef %28, i32 noundef %30, i32 noundef 19, i16 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp40 = icmp slt i32 %call.i106, 0
  br i1 %cmp40, label %if.end38.cleanup_crit_edge, label %if.end43

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  %31 = ptrtoint ptr %bus.i101 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i101, align 8
  %33 = ptrtoint ptr %addr.i102 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i102, align 8
  %call.i109 = tail call i32 @mdiobus_read(ptr noundef %32, i32 noundef %34, i32 noundef 17) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp45 = icmp slt i32 %call.i109, 0
  br i1 %cmp45, label %if.end43.cleanup_crit_edge, label %if.end48

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %call.i109, -3
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end32
  %physcr_status.0 = phi i32 [ %or33, %if.end32 ], [ %and, %if.end48 ]
  %conv50 = trunc i32 %physcr_status.0 to i16
  %bus.i110 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %35 = ptrtoint ptr %bus.i110 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i110, align 8
  %addr.i111 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %37 = ptrtoint ptr %addr.i111 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr.i111, align 8
  %call.i112 = tail call i32 @mdiobus_write(ptr noundef %36, i32 noundef %38, i32 noundef 17, i16 noundef zeroext %conv50) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end43.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i112, %if.end49 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i91, %if.end.cleanup_crit_edge ], [ %call.i94, %if.end10.cleanup_crit_edge ], [ %call.i97, %if.end15.cleanup_crit_edge ], [ %call.i100, %if.end27.cleanup_crit_edge ], [ %call.i103, %if.else.cleanup_crit_edge ], [ %call.i106, %if.end38.cleanup_crit_edge ], [ %call.i109, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83822_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 18) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @phy_error(ptr noundef %phydev) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i29 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 19) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp5 = icmp slt i32 %call.i29, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @phy_error(ptr noundef %phydev) #3
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %and = shl i32 %call.i, 8
  %shl = and i32 %call.i, 65280
  %and1 = and i32 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp ne i32 %and1, 0
  %and8 = shl i32 %call.i29, 8
  %shl9 = and i32 %call.i29, 65280
  %and10 = and i32 %shl9, %and8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp ne i32 %and10, 0
  %spec.select = select i1 %tobool11.not, i1 true, i1 %tobool.not
  br i1 %spec.select, label %if.end16, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @phy_trigger_machine(ptr noundef %phydev) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end7.cleanup_crit_edge, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 1, %if.end16 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83822_set_wol(ptr noundef %phydev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else81, label %if.then

if.then:                                          ; preds = %entry
  %attached_dev = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 36
  %2 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attached_dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.then
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %or.i.i = or i32 %7, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %arrayidx = getelementptr i8, ptr %5, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i16
  %shl = shl nuw i16 %conv, 8
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %5, align 1
  %conv3 = zext i8 %14 to i16
  %or = or i16 %shl, %conv3
  %call5 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1186, i16 noundef zeroext %or) #3
  %arrayidx6 = getelementptr i8, ptr %5, i32 3
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %16 to i16
  %shl8 = shl nuw i16 %conv7, 8
  %arrayidx9 = getelementptr i8, ptr %5, i32 2
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %18 to i16
  %or11 = or i16 %shl8, %conv10
  %call13 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1187, i16 noundef zeroext %or11) #3
  %arrayidx14 = getelementptr i8, ptr %5, i32 5
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %20 to i16
  %shl16 = shl nuw i16 %conv15, 8
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i.i, align 1
  %conv18 = zext i8 %22 to i16
  %or19 = or i16 %shl16, %conv18
  %call21 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1188, i16 noundef zeroext %or19) #3
  %call22 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184) #3
  %23 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wolopts, align 4
  %25 = trunc i32 %call22 to i16
  %conv33 = and i16 %25, -2
  %26 = trunc i32 %24 to i16
  %27 = lshr i16 %26, 5
  %28 = and i16 %27, 1
  %value.0 = or i16 %28, %conv33
  %and36 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else71, label %if.then38

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %arrayidx39 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %30 to i16
  %shl41 = shl nuw i16 %conv40, 8
  %31 = ptrtoint ptr %sopass to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sopass, align 4
  %conv44 = zext i8 %32 to i16
  %or45 = or i16 %shl41, %conv44
  %call47 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1189, i16 noundef zeroext %or45) #3
  %arrayidx49 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %34 to i16
  %shl51 = shl nuw i16 %conv50, 8
  %arrayidx53 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx53, align 2
  %conv54 = zext i8 %36 to i16
  %or55 = or i16 %shl51, %conv54
  %call57 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1190, i16 noundef zeroext %or55) #3
  %arrayidx59 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 5
  %37 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %38 to i16
  %shl61 = shl nuw i16 %conv60, 8
  %arrayidx63 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 4
  %39 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx63, align 4
  %conv64 = zext i8 %40 to i16
  %or65 = or i16 %shl61, %conv64
  %call67 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1191, i16 noundef zeroext %or65) #3
  %41 = or i16 %value.0, 32
  br label %if.end75

if.else71:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %42 = and i16 %value.0, -33
  br label %if.end75

if.end75:                                         ; preds = %if.else71, %if.then38
  %value.1 = phi i16 [ %41, %if.then38 ], [ %42, %if.else71 ]
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %44, i32 noundef %46, i32 noundef 19) #3
  %47 = or i16 %value.1, 2432
  %call80 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184, i16 noundef zeroext %47) #3
  br label %cleanup

if.else81:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i114 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184, i16 noundef zeroext 128, i16 noundef zeroext 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.else81, %if.end75, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call80, %if.end75 ], [ %call.i114, %if.else81 ], [ -22, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp83822_get_wol(ptr noundef %phydev, ptr nocapture noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 96, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184) #3
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  %or = or i32 %3, 32
  store i32 %or, ptr %wolopts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end39_crit_edge, label %if.then4

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1189) #3
  %conv8 = trunc i32 %call5 to i8
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %4 = ptrtoint ptr %sopass to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv8, ptr %sopass, align 4
  %conv6 = lshr i32 %call5, 8
  %conv10 = trunc i32 %conv6 to i8
  %arrayidx12 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv10, ptr %arrayidx12, align 1
  %call13 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1190) #3
  %conv17 = trunc i32 %call13 to i8
  %arrayidx19 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv17, ptr %arrayidx19, align 2
  %conv15 = lshr i32 %call13, 8
  %conv22 = trunc i32 %conv15 to i8
  %arrayidx24 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv22, ptr %arrayidx24, align 1
  %call25 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1191) #3
  %conv29 = trunc i32 %call25 to i8
  %arrayidx31 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv29, ptr %arrayidx31, align 4
  %conv27 = lshr i32 %call25, 8
  %conv34 = trunc i32 %conv27 to i8
  %arrayidx36 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 5
  %9 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv34, ptr %arrayidx36, align 1
  %10 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wolopts, align 4
  %or38 = or i32 %11, 64
  store i32 %or38, ptr %wolopts, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then4, %if.end.if.end39_crit_edge
  %and40 = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end39.if.end44_crit_edge

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %wolopts, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end39.if.end44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp8382x_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184, i16 noundef zeroext 161, i16 noundef zeroext 0) #3
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_get_internal_delay(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_changed(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_dp83822__349_629_phy_module_init6, !1, !"__initcall__kmod_dp83822__349_629_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/dp83822.c", i32 629, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description350, !4, !"__UNIQUE_ID_description350", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/dp83822.c", i32 643, i32 1}
!5 = !{ptr @__UNIQUE_ID_author351, !6, !"__UNIQUE_ID_author351", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/dp83822.c", i32 644, i32 1}
!7 = !{ptr @__UNIQUE_ID_file352, !8, !"__UNIQUE_ID_file352", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/dp83822.c", i32 645, i32 1}
!9 = !{ptr @__UNIQUE_ID_license353, !8, !"__UNIQUE_ID_license353", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/dp83822.c", i32 621, i32 2}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/dp83822.c", i32 622, i32 2}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/dp83822.c", i32 623, i32 2}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/dp83822.c", i32 624, i32 2}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/dp83822.c", i32 625, i32 2}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/dp83822.c", i32 626, i32 2}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/dp83822.c", i32 627, i32 2}
!24 = !{ptr @dp83822_driver, !25, !"dp83822_driver", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/dp83822.c", i32 620, i32 26}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/dp83822.c", i32 499, i32 14}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/dp83822.c", i32 502, i32 14}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i8 0, i8 2}
