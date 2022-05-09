; ModuleID = '/llk/IR_all_yes/drivers/net/phy/lxt.c_pt.bc'
source_filename = "../drivers/net/phy/lxt.c"
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

@__UNIQUE_ID_description349 = internal constant [37 x i8] c"lxt.description=Intel LXT PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author350 = internal constant [24 x i8] c"lxt.author=Andy Fleming\00", section ".modinfo", align 1
@__UNIQUE_ID_file351 = internal constant [29 x i8] c"lxt.file=drivers/net/phy/lxt\00", section ".modinfo", align 1
@__UNIQUE_ID_license352 = internal constant [16 x i8] c"lxt.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_lxt__353_349_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@lxt97x_driver = internal global { [4 x %struct.phy_driver], [240 x i8] } { [4 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2014314496, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @lxt970_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lxt970_config_intr, ptr @lxt970_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1276128, ptr @.str.1, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @lxt971_config_intr, ptr @lxt971_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1276432, ptr @.str.2, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @lxt973_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @lxt973_config_aneg, ptr null, ptr @lxt973a2_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1276432, ptr @.str.3, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @lxt973_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @lxt973_config_aneg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [240 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LXT970\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LXT971\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LXT973-A2\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LXT973\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"lxt97x_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 308, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 311, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 319, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 328, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [25 x i8] c"../drivers/net/phy/lxt.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 339, i32 11 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_file351, ptr @__UNIQUE_ID_license352, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_lxt__353_349_phy_module_init6, ptr @phy_module_exit, ptr @lxt97x_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lxt97x_driver to i32), i32 944, i32 1184, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @lxt97x_driver, i32 noundef 4, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_drivers_unregister(ptr noundef nonnull @lxt97x_driver, i32 noundef 4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lxt970_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 19, i16 noundef zeroext 0) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lxt970_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
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
  %bus.i17 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i17, align 8
  %addr.i18 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i18, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %lxt970_ack_interrupt.exit

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lxt970_ack_interrupt.exit:                        ; preds = %if.then
  %5 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i17, align 8
  %7 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i18, align 8
  %call.i11.i = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 18) #4
  %9 = tail call i32 @llvm.smin.i32(i32 %call.i11.i, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i11.i)
  %tobool.not = icmp sgt i32 %call.i11.i, -1
  br i1 %tobool.not, label %if.end, label %lxt970_ack_interrupt.exit.cleanup_crit_edge

lxt970_ack_interrupt.exit.cleanup_crit_edge:      ; preds = %lxt970_ack_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lxt970_ack_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i17, align 8
  %12 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i18, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 17, i16 noundef zeroext 2) #4
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i19 = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 17, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool4.not = icmp eq i32 %call.i19, 0
  br i1 %tobool4.not, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.else
  %14 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i17, align 8
  %16 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i18, align 8
  %call.i.i22 = tail call i32 @mdiobus_read(ptr noundef %15, i32 noundef %17, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp.i23 = icmp slt i32 %call.i.i22, 0
  br i1 %cmp.i23, label %if.end6.cleanup_crit_edge, label %if.end.i25

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i25:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i17, align 8
  %20 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i18, align 8
  %call.i11.i24 = tail call i32 @mdiobus_read(ptr noundef %19, i32 noundef %21, i32 noundef 18) #4
  %22 = tail call i32 @llvm.smin.i32(i32 %call.i11.i24, i32 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i25, %if.end6.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end, %lxt970_ack_interrupt.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %lxt970_ack_interrupt.exit.cleanup_crit_edge ], [ %call.i19, %if.else.cleanup_crit_edge ], [ %call.i, %if.end ], [ %call.i.i22, %if.end6.cleanup_crit_edge ], [ %22, %if.end.i25 ], [ %call.i.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lxt970_handle_interrupt(ptr noundef %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 1) #4
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
  %call.i15 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %cmp2 = icmp slt i32 %call.i15, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_error(ptr noundef %phydev) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %call.i15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_trigger_machine(ptr noundef %phydev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end4.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.end6 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lxt971_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
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
  %bus.i17 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i17, align 8
  %addr.i18 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i18, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 19) #4
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i17, align 8
  %8 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i18, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 18, i16 noundef zeroext 242) #4
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i19 = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 18, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool4.not = icmp eq i32 %call.i19, 0
  br i1 %tobool4.not, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i17, align 8
  %12 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i18, align 8
  %call.i.i22 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 19) #4
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i22, i32 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then.cleanup_crit_edge ], [ %call.i19, %if.else.cleanup_crit_edge ], [ %call.i, %if.end ], [ %14, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lxt971_handle_interrupt(ptr noundef %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_error(ptr noundef %phydev) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_trigger_machine(ptr noundef %phydev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lxt973_probe(ptr nocapture noundef %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 16) #4
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i15 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 0) #4
  %8 = trunc i32 %call.i15 to i16
  %9 = and i16 %8, -12545
  %conv = or i16 %9, 8448
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 8
  %call.i18 = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 0, i16 noundef zeroext %conv) #4
  %port = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 10
  %14 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %port, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lxt973_probe.sink = phi ptr [ @lxt973_probe, %if.then ], [ null, %entry.if.end_crit_edge ]
  %15 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %lxt973_probe.sink, ptr %15, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lxt973_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call.i, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lxt973a2_read_status(ptr noundef %phydev) #2 align 64 {
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
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.cleanup37_crit_edge, label %if.end.i

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup37

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i36.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %cmp2.i = icmp slt i32 %call.i36.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup37_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  br label %do.body.i

if.end.i.cleanup37_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup37

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %retry.0.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ 8, %if.end.i.do.body.i_crit_edge ]
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i39.i = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i39.i)
  %cmp6.i = icmp sgt i32 %call.i39.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0.i)
  %tobool.not.i = icmp ne i32 %retry.0.i, 0
  %or.cond.i = select i1 %cmp6.i, i1 %tobool.not.i, i1 false
  %dec.i = add nsw i32 %retry.0.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i39.i, i32 %call.i36.i)
  %cmp7.i = icmp eq i32 %call.i39.i, %call.i36.i
  %or.cond33.i = select i1 %or.cond.i, i1 %cmp7.i, i1 false
  br i1 %or.cond33.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %cmp8.i = icmp slt i32 %call.i39.i, 0
  br i1 %cmp8.i, label %do.end.i.cleanup37_crit_edge, label %if.end

do.end.i.cleanup37_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup37

if.end:                                           ; preds = %do.end.i
  %link.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %12 = ptrtoint ptr %link.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %link.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -5
  %13 = trunc i32 %call.i39.i to i16
  %14 = and i16 %13, 4
  %bf.clear.sink.i = or i16 %bf.clear.i, %14
  store i16 %bf.clear.sink.i, ptr %link.i, align 8
  %15 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.not = icmp eq i16 %15, 0
  br i1 %cmp.not, label %if.else27, label %if.then1

if.then1:                                         ; preds = %if.end
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %17, i32 noundef %19, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.then1.cleanup37_crit_edge, label %do.body

if.then1.cleanup37_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup37

do.body:                                          ; preds = %if.then1
  %20 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i, align 8
  %call.i71 = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %23, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp7 = icmp slt i32 %call.i71, 0
  br i1 %cmp7, label %do.body.cleanup37_crit_edge, label %do.cond

do.body.cleanup37_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup37

do.cond:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i71, i32 %call.i)
  %cmp10.not = icmp eq i32 %call.i71, %call.i
  br i1 %cmp10.not, label %do.body.1, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.body.1:                                        ; preds = %do.cond
  %24 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i, align 8
  %26 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i, align 8
  %call.i71.1 = tail call i32 @mdiobus_read(ptr noundef %25, i32 noundef %27, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.1)
  %cmp7.1 = icmp slt i32 %call.i71.1, 0
  br i1 %cmp7.1, label %do.body.1.cleanup37_crit_edge, label %do.body.1.do.end_crit_edge

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.body.1.cleanup37_crit_edge:                    ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup37

do.end:                                           ; preds = %do.body.1.do.end_crit_edge, %do.cond.do.end_crit_edge
  %call.i71.lcssa80 = phi i32 [ %call.i71, %do.cond.do.end_crit_edge ], [ %call.i71.1, %do.body.1.do.end_crit_edge ]
  %lp_advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 18
  %28 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 0, ptr %28, align 4
  %and.i.i.i = lshr i32 %call.i71.lcssa80, 5
  %and.lobit.i.i.i = and i32 %and.i.i.i, 1
  %and4.i.i.i = shl i32 %call.i71.lcssa80, 3
  %30 = and i32 %and4.i.i.i, 8192
  %31 = and i32 %and4.i.i.i, 16384
  %storemerge.i28.i.i.i = and i32 %and.i.i.i, 14
  %storemerge.i.i.i.i = or i32 %storemerge.i28.i.i.i, %30
  %storemerge.i35.i.i.i = or i32 %storemerge.i.i.i.i, %31
  %storemerge.i42.i.i.i = or i32 %storemerge.i35.i.i.i, %and.lobit.i.i.i
  %and.i = lshr i32 %call.i71.lcssa80, 8
  %32 = and i32 %and.i, 64
  %33 = or i32 %storemerge.i42.i.i.i, %32
  %34 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %lp_advertising, align 4
  %and = and i32 %call.i71.lcssa80, %call.i
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %35 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 10, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %36 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %duplex, align 4
  %asym_pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 12
  %37 = ptrtoint ptr %asym_pause to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %asym_pause, align 8
  %pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 11
  %38 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %pause, align 4
  %and12 = and i32 %and, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %do.end
  %39 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 100, ptr %speed, align 8
  %and16 = and i32 %and, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then14.cleanup_crit_edge, label %if.then14.cleanup.sink.split_crit_edge

if.then14.cleanup.sink.split_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %do.end
  %and21 = and i32 %and, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then14.cleanup.sink.split_crit_edge
  %40 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %duplex, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then14.cleanup_crit_edge
  tail call void @phy_resolve_aneg_pause(ptr noundef %phydev) #4
  br label %cleanup37

if.else27:                                        ; preds = %if.end
  %call28 = tail call i32 @genphy_read_status_fixed(ptr noundef %phydev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.else27.cleanup37_crit_edge, label %if.end31

if.else27.cleanup37_crit_edge:                    ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup37

if.end31:                                         ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  %asym_pause32 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 12
  %41 = ptrtoint ptr %asym_pause32 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %asym_pause32, align 8
  %pause33 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 11
  %42 = ptrtoint ptr %pause33 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %pause33, align 4
  %lp_advertising34 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 18
  %43 = call ptr @memset(ptr %lp_advertising34, i32 0, i32 12)
  br label %cleanup37

cleanup37:                                        ; preds = %if.end31, %if.else27.cleanup37_crit_edge, %cleanup, %do.body.1.cleanup37_crit_edge, %do.body.cleanup37_crit_edge, %if.then1.cleanup37_crit_edge, %do.end.i.cleanup37_crit_edge, %if.end.i.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  %retval.1 = phi i32 [ %call28, %if.else27.cleanup37_crit_edge ], [ 0, %cleanup ], [ 0, %if.end31 ], [ %call.i39.i, %do.end.i.cleanup37_crit_edge ], [ %call.i36.i, %if.end.i.cleanup37_crit_edge ], [ %call.i.i, %entry.cleanup37_crit_edge ], [ %call.i, %if.then1.cleanup37_crit_edge ], [ %call.i71, %do.body.cleanup37_crit_edge ], [ %call.i71.1, %do.body.1.cleanup37_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_resolve_aneg_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status_fixed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__UNIQUE_ID_description349, !1, !"__UNIQUE_ID_description349", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/lxt.c", i32 58, i32 1}
!2 = !{ptr @__UNIQUE_ID_author350, !3, !"__UNIQUE_ID_author350", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/lxt.c", i32 59, i32 1}
!4 = !{ptr @__UNIQUE_ID_file351, !5, !"__UNIQUE_ID_file351", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/lxt.c", i32 60, i32 1}
!6 = !{ptr @__UNIQUE_ID_license352, !5, !"__UNIQUE_ID_license352", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_lxt__353_349_phy_module_init6, !8, !"__initcall__kmod_lxt__353_349_phy_module_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/lxt.c", i32 349, i32 1}
!9 = !{ptr @__exitcall_phy_module_exit, !8, !"__exitcall_phy_module_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/lxt.c", i32 311, i32 11}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/lxt.c", i32 319, i32 11}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/lxt.c", i32 328, i32 11}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/lxt.c", i32 339, i32 11}
!18 = !{ptr @lxt97x_driver, !19, !"lxt97x_driver", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/lxt.c", i32 308, i32 26}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
