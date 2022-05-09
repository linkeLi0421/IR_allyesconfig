; ModuleID = '/llk/IR_all_yes/drivers/net/phy/rockchip.c_pt.bc'
source_filename = "../drivers/net/phy/rockchip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@__initcall__kmod_rockchip__347_189_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@rockchip_phy_driver = internal global { [1 x %struct.phy_driver], [52 x i8] } { [1 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 305452032, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @rockchip_integrated_phy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @rockchip_phy_resume, ptr @rockchip_config_aneg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [52 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author348 = internal constant [51 x i8] c"rockchip.author=David Wu <david.wu@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description349 = internal constant [50 x i8] c"rockchip.description=Rockchip Ethernet PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file350 = internal constant [39 x i8] c"rockchip.file=drivers/net/phy/rockchip\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [21 x i8] c"rockchip.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Rockchip integrated EPHY\00", [39 x i8] zeroinitializer }, align 32
@rockchip_link_change_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"rockchip_integrated_phy_analog_init err: %d.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rockchip_link_change_notify\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/phy/rockchip.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_link_change_notify._entry_ptr = internal global ptr @rockchip_link_change_notify._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"rockchip_phy_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 173, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 177, i32 12 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [30 x i8] c"../drivers/net/phy/rockchip.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 116, i32 4 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_rockchip__347_189_phy_module_init6, ptr @phy_module_exit, ptr @rockchip_link_change_notify._entry, ptr @rockchip_link_change_notify._entry_ptr, ptr @rockchip_phy_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_phy_driver to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_link_change_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @rockchip_phy_driver, i32 noundef 1, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_drivers_unregister(ptr noundef nonnull @rockchip_phy_driver, i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_integrated_phy_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = trunc i32 %call.i to i16
  %conv = and i16 %4, -129
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 8
  %call.i14 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 17, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not = icmp eq i32 %call.i14, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call fastcc i32 @rockchip_integrated_phy_analog_init(ptr noundef %phydev)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i14, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_phy_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_resume(ptr noundef %phydev) #4
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.rockchip_integrated_phy_config_init.exit_crit_edge, label %if.end.i

entry.rockchip_integrated_phy_config_init.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rockchip_integrated_phy_config_init.exit

if.end.i:                                         ; preds = %entry
  %4 = trunc i32 %call.i.i to i16
  %conv.i = and i16 %4, -129
  %5 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i.i, align 8
  %7 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i.i, align 8
  %call.i14.i = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 17, i16 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %tobool.not.i = icmp eq i32 %call.i14.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.rockchip_integrated_phy_config_init.exit_crit_edge

if.end.i.rockchip_integrated_phy_config_init.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rockchip_integrated_phy_config_init.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call fastcc i32 @rockchip_integrated_phy_analog_init(ptr noundef %phydev) #4
  br label %rockchip_integrated_phy_config_init.exit

rockchip_integrated_phy_config_init.exit:         ; preds = %if.end3.i, %if.end.i.rockchip_integrated_phy_config_init.exit_crit_edge, %entry.rockchip_integrated_phy_config_init.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end3.i ], [ %call.i.i, %entry.rockchip_integrated_phy_config_init.exit_crit_edge ], [ %call.i14.i, %if.end.i.rockchip_integrated_phy_config_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mdix = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 38
  %0 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mdix, align 8
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %call.i.i, -129
  %6 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %if.end.i.if.end_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb2.i
  ]

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %and1.i = and i32 %call.i.i, -193
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %or.i = or i32 %and.i, 64
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %val.0.i = phi i32 [ %or.i, %sw.bb2.i ], [ %and1.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0.i, i32 %and.i)
  %cmp4.not.i = icmp eq i32 %val.0.i, %and.i
  br i1 %cmp4.not.i, label %sw.epilog.i.if.end_crit_edge, label %if.then5.i

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then5.i:                                       ; preds = %sw.epilog.i
  %conv.i = trunc i32 %val.0.i to i16
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i.i, align 8
  %call.i23.i = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef %10, i32 noundef 17, i16 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %cmp = icmp slt i32 %call.i23.i, 0
  br i1 %cmp, label %if.then5.i.cleanup_crit_edge, label %if.then5.i.if.end_crit_edge

if.then5.i.if.end_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then5.i.if.end_crit_edge, %sw.epilog.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i23.i, %if.then5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_link_change_notify(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

land.lhs.true:                                    ; preds = %entry
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %3)
  %cmp1 = icmp eq i32 %3, 100
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc i32 @rockchip_integrated_phy_analog_init(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %do.end

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.1, i32 noundef %call) #7
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.then.if.end3_crit_edge, %land.lhs.true.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_integrated_phy_analog_init(ptr nocapture noundef readonly %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 20, i16 noundef zeroext 1024) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i13.i = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 20, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %tobool2.not.i = icmp eq i32 %call.i13.i, 0
  br i1 %tobool2.not.i, label %rockchip_init_tstmode.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

rockchip_init_tstmode.exit:                       ; preds = %if.end.i
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i16.i = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 20, i16 noundef zeroext 1024) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i)
  %tobool.not = icmp eq i32 %call.i16.i, 0
  br i1 %tobool.not, label %if.end, label %rockchip_init_tstmode.exit.cleanup_crit_edge

rockchip_init_tstmode.exit.cleanup_crit_edge:     ; preds = %rockchip_init_tstmode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %rockchip_init_tstmode.exit
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 23, i16 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i, align 8
  %call.i20 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 20, i16 noundef zeroext 17432) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool6.not = icmp eq i32 %call.i20, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i, align 8
  %call.i.i23 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 20, i16 noundef zeroext 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %rockchip_init_tstmode.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i23, %if.end8 ], [ %call.i16.i, %rockchip_init_tstmode.exit.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i20, %if.end4.cleanup_crit_edge ], [ %call.i13.i, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_rockchip__347_189_phy_module_init6, !1, !"__initcall__kmod_rockchip__347_189_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/rockchip.c", i32 189, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author348, !4, !"__UNIQUE_ID_author348", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/rockchip.c", i32 198, i32 1}
!5 = !{ptr @__UNIQUE_ID_description349, !6, !"__UNIQUE_ID_description349", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/rockchip.c", i32 199, i32 1}
!7 = !{ptr @__UNIQUE_ID_file350, !8, !"__UNIQUE_ID_file350", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/rockchip.c", i32 200, i32 1}
!9 = !{ptr @__UNIQUE_ID_license351, !8, !"__UNIQUE_ID_license351", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/rockchip.c", i32 177, i32 12}
!12 = !{ptr @rockchip_phy_driver, !13, !"rockchip_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/rockchip.c", i32 173, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/rockchip.c", i32 116, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rockchip_link_change_notify._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rockchip_link_change_notify._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
