; ModuleID = '/llk/IR_all_yes/drivers/net/phy/dp83tc811.c_pt.bc'
source_filename = "../drivers/net/phy/dp83tc811.c"
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

@__initcall__kmod_dp83tc811__349_404_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@dp83811_driver = internal global { [1 x %struct.phy_driver], [52 x i8] } { [1 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 536912467, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr @dp83811_phy_reset, ptr @dp83811_config_init, ptr null, ptr null, ptr @dp83811_suspend, ptr @dp83811_resume, ptr @dp83811_config_aneg, ptr null, ptr null, ptr @dp83811_config_intr, ptr @dp83811_handle_interrupt, ptr null, ptr null, ptr @dp83811_set_wol, ptr @dp83811_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [52 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description350 = internal constant [61 x i8] c"dp83tc811.description=Texas Instruments DP83TC811 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author351 = internal constant [44 x i8] c"dp83tc811.author=Dan Murphy <dmurphy@ti.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [41 x i8] c"dp83tc811.file=drivers/net/phy/dp83tc811\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [22 x i8] c"dp83tc811.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TI DP83TC811\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"dp83811_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 387, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [31 x i8] c"../drivers/net/phy/dp83tc811.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 391, i32 11 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description350, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_dp83tc811__349_404_phy_module_init6, ptr @phy_module_exit, ptr @dp83811_driver, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83811_driver to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @dp83811_driver, i32 noundef 1, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_drivers_unregister(ptr noundef nonnull @dp83811_driver, i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83811_phy_reset(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext -32768) #4
  %4 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83811_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 9) #4
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp eq i32 %5, 4
  %6 = trunc i32 %call.i to i16
  %conv2 = and i16 %6, -4097
  %masksel = select i1 %cmp, i16 4096, i16 0
  %conv2.sink = or i16 %conv2, %masksel
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i, align 8
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i, align 8
  %call.i23 = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef %10, i32 noundef 9, i16 noundef zeroext %conv2.sink) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp4 = icmp slt i32 %call.i23, 0
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i24 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184, i16 noundef zeroext 161, i16 noundef zeroext 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i24, %if.end7 ], [ %call.i23, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83811_suspend(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184) #4
  %and = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @genphy_suspend(ptr noundef %phydev) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83811_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_resume(ptr noundef %phydev) #4
  %call.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184, i16 noundef zeroext 0, i16 noundef zeroext 2048) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83811_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then:                                          ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 9) #4
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %autoneg, align 8
  %7 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp1.not = icmp eq i16 %7, 0
  %8 = trunc i32 %call.i to i16
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %conv = or i16 %8, 8192
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 8
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 8
  %call.i28 = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 9, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp4 = icmp slt i32 %call.i28, 0
  br i1 %cmp4, label %if.then2.cleanup_crit_edge, label %if.then2.if.end14_crit_edge

if.then2.if.end14_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.then
  %conv7 = and i16 %8, -8193
  %13 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i, align 8
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i, align 8
  %call.i31 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %16, i32 noundef 9, i16 noundef zeroext %conv7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp9 = icmp slt i32 %call.i31, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then2.if.end14_crit_edge, %entry.if.end14_crit_edge
  %call.i32 = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.else.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i32, %if.end14 ], [ %call.i28, %if.then2.cleanup_crit_edge ], [ %call.i31, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83811_config_intr(ptr noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  %bus.i98 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i98 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i98, align 8
  %addr.i99 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i99 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i99, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %bus.i98 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i98, align 8
  %7 = ptrtoint ptr %addr.i99 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i99, align 8
  %call.i18.i = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %cmp2.i = icmp slt i32 %call.i18.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %dp83811_ack_interrupt.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

dp83811_ack_interrupt.exit:                       ; preds = %if.end.i
  %9 = ptrtoint ptr %bus.i98 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i98, align 8
  %11 = ptrtoint ptr %addr.i99 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i99, align 8
  %call.i21.i = tail call i32 @mdiobus_read(ptr noundef %10, i32 noundef %12, i32 noundef 24) #4
  %13 = tail call i32 @llvm.smin.i32(i32 %call.i21.i, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i21.i)
  %tobool.not = icmp sgt i32 %call.i21.i, -1
  br i1 %tobool.not, label %if.end, label %dp83811_ack_interrupt.exit.cleanup_crit_edge

dp83811_ack_interrupt.exit.cleanup_crit_edge:     ; preds = %dp83811_ack_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %dp83811_ack_interrupt.exit
  %14 = ptrtoint ptr %bus.i98 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i98, align 8
  %16 = ptrtoint ptr %addr.i99 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i99, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %15, i32 noundef %17, i32 noundef 18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %18 = trunc i32 %call.i to i16
  %conv = or i16 %18, 255
  %19 = ptrtoint ptr %bus.i98 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i98, align 8
  %21 = ptrtoint ptr %addr.i99 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i99, align 8
  %call.i85 = tail call i32 @mdiobus_write(ptr noundef %20, i32 noundef %22, i32 noundef 18, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %cmp7 = icmp slt i32 %call.i85, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %23 = ptrtoint ptr %bus.i98 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i98, align 8
  %25 = ptrtoint ptr %addr.i99 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr.i99, align 8
  %call.i88 = tail call i32 @mdiobus_read(ptr noundef %24, i32 noundef %26, i32 noundef 19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp12 = icmp slt i32 %call.i88, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %27 = trunc i32 %call.i88 to i16
  %conv17 = or i16 %27, 207
  %28 = ptrtoint ptr %bus.i98 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i98, align 8
  %30 = ptrtoint ptr %addr.i99 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i99, align 8
  %call.i91 = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 19, i16 noundef zeroext %conv17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp19 = icmp slt i32 %call.i91, 0
  br i1 %cmp19, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %32 = ptrtoint ptr %bus.i98 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i98, align 8
  %34 = ptrtoint ptr %addr.i99 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i99, align 8
  %call.i94 = tail call i32 @mdiobus_read(ptr noundef %33, i32 noundef %35, i32 noundef 24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp24 = icmp slt i32 %call.i94, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %36 = trunc i32 %call.i94 to i16
  %conv29 = or i16 %36, 25
  %37 = ptrtoint ptr %bus.i98 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus.i98, align 8
  %39 = ptrtoint ptr %addr.i99 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr.i99, align 8
  %call.i97 = tail call i32 @mdiobus_write(ptr noundef %38, i32 noundef %40, i32 noundef 24, i16 noundef zeroext %conv29) #4
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i100 = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 18, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp32 = icmp slt i32 %call.i100, 0
  br i1 %cmp32, label %if.else.cleanup_crit_edge, label %if.end35

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end35:                                         ; preds = %if.else
  %41 = ptrtoint ptr %bus.i98 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus.i98, align 8
  %43 = ptrtoint ptr %addr.i99 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr.i99, align 8
  %call.i103 = tail call i32 @mdiobus_write(ptr noundef %42, i32 noundef %44, i32 noundef 19, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp37 = icmp slt i32 %call.i103, 0
  br i1 %cmp37, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %45 = ptrtoint ptr %bus.i98 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i98, align 8
  %47 = ptrtoint ptr %addr.i99 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr.i99, align 8
  %call.i106 = tail call i32 @mdiobus_write(ptr noundef %46, i32 noundef %48, i32 noundef 24, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp42 = icmp slt i32 %call.i106, 0
  br i1 %cmp42, label %if.end40.cleanup_crit_edge, label %if.end45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %49 = ptrtoint ptr %bus.i98 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus.i98, align 8
  %51 = ptrtoint ptr %addr.i99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr.i99, align 8
  %call.i.i109 = tail call i32 @mdiobus_read(ptr noundef %50, i32 noundef %52, i32 noundef 18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %cmp.i110 = icmp slt i32 %call.i.i109, 0
  br i1 %cmp.i110, label %if.end45.cleanup_crit_edge, label %if.end.i113

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i113:                                      ; preds = %if.end45
  %53 = ptrtoint ptr %bus.i98 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus.i98, align 8
  %55 = ptrtoint ptr %addr.i99 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %addr.i99, align 8
  %call.i18.i111 = tail call i32 @mdiobus_read(ptr noundef %54, i32 noundef %56, i32 noundef 19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i111)
  %cmp2.i112 = icmp slt i32 %call.i18.i111, 0
  br i1 %cmp2.i112, label %if.end.i113.cleanup_crit_edge, label %if.end4.i115

if.end.i113.cleanup_crit_edge:                    ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i115:                                     ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %bus.i98 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus.i98, align 8
  %59 = ptrtoint ptr %addr.i99 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr.i99, align 8
  %call.i21.i114 = tail call i32 @mdiobus_read(ptr noundef %58, i32 noundef %60, i32 noundef 24) #4
  %61 = tail call i32 @llvm.smin.i32(i32 %call.i21.i114, i32 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i115, %if.end.i113.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end27, %if.end22.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dp83811_ack_interrupt.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %dp83811_ack_interrupt.exit.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i85, %if.end5.cleanup_crit_edge ], [ %call.i88, %if.end10.cleanup_crit_edge ], [ %call.i91, %if.end15.cleanup_crit_edge ], [ %call.i94, %if.end22.cleanup_crit_edge ], [ %call.i100, %if.else.cleanup_crit_edge ], [ %call.i103, %if.end35.cleanup_crit_edge ], [ %call.i106, %if.end40.cleanup_crit_edge ], [ %call.i97, %if.end27 ], [ %call.i.i109, %if.end45.cleanup_crit_edge ], [ %call.i18.i111, %if.end.i113.cleanup_crit_edge ], [ %61, %if.end4.i115 ], [ %call.i18.i, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83811_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_error(ptr noundef %phydev) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i46 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp5 = icmp slt i32 %call.i46, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_error(ptr noundef %phydev) #4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i49 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp15 = icmp slt i32 %call.i49, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_error(ptr noundef %phydev) #4
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %and8 = shl i32 %call.i46, 8
  %shl9 = and i32 %call.i46, 65280
  %and10 = and i32 %shl9, %and8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp ne i32 %and10, 0
  %and = shl i32 %call.i, 8
  %shl = and i32 %call.i, 65280
  %and1 = and i32 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp ne i32 %and1, 0
  %and18 = shl i32 %call.i49, 8
  %shl19 = and i32 %call.i49, 65280
  %and20 = and i32 %shl19, %and18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp ne i32 %and20, 0
  %12 = select i1 %tobool21.not, i1 true, i1 %tobool11.not
  %spec.select43 = select i1 %12, i1 true, i1 %tobool.not
  br i1 %spec.select43, label %if.end26, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_trigger_machine(ptr noundef %phydev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end17.cleanup_crit_edge, %if.then16, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then16 ], [ 1, %if.end26 ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83811_set_wol(ptr noundef %phydev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
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
  %call5 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1186, i16 noundef zeroext %or) #4
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
  %call13 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1187, i16 noundef zeroext %or11) #4
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
  %call21 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1188, i16 noundef zeroext %or19) #4
  %call22 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184) #4
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
  call void @__sanitizer_cov_trace_pc() #6
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
  %call47 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1189, i16 noundef zeroext %or45) #4
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
  %call57 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1190, i16 noundef zeroext %or55) #4
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
  %call67 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1191, i16 noundef zeroext %or65) #4
  %41 = or i16 %value.0, 32
  br label %if.end75

if.else71:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i = tail call i32 @mdiobus_read(ptr noundef %44, i32 noundef %46, i32 noundef 18) #4
  %47 = or i16 %value.1, 2432
  %call80 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184, i16 noundef zeroext %47) #4
  br label %cleanup

if.else81:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i114 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184, i16 noundef zeroext 128, i16 noundef zeroext 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else81, %if.end75, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call80, %if.end75 ], [ %call.i114, %if.else81 ], [ -22, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp83811_get_wol(ptr noundef %phydev, ptr nocapture noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 96, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1184) #4
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1189) #4
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
  %call13 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1190) #4
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
  %call25 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 1191) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %wolopts, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end39.if.end44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__initcall__kmod_dp83tc811__349_404_phy_module_init6, !1, !"__initcall__kmod_dp83tc811__349_404_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/dp83tc811.c", i32 404, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description350, !4, !"__UNIQUE_ID_description350", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/dp83tc811.c", i32 412, i32 1}
!5 = !{ptr @__UNIQUE_ID_author351, !6, !"__UNIQUE_ID_author351", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/dp83tc811.c", i32 413, i32 1}
!7 = !{ptr @__UNIQUE_ID_file352, !8, !"__UNIQUE_ID_file352", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/dp83tc811.c", i32 414, i32 1}
!9 = !{ptr @__UNIQUE_ID_license353, !8, !"__UNIQUE_ID_license353", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/dp83tc811.c", i32 391, i32 11}
!12 = !{ptr @dp83811_driver, !13, !"dp83811_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/dp83tc811.c", i32 387, i32 26}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
