; ModuleID = '/llk/IR_all_yes/drivers/net/phy/qsemi.c_pt.bc'
source_filename = "../drivers/net/phy/qsemi.c"
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

@__UNIQUE_ID_description349 = internal constant [51 x i8] c"qsemi.description=Quality Semiconductor PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author350 = internal constant [26 x i8] c"qsemi.author=Andy Fleming\00", section ".modinfo", align 1
@__UNIQUE_ID_file351 = internal constant [33 x i8] c"qsemi.file=drivers/net/phy/qsemi\00", section ".modinfo", align 1
@__UNIQUE_ID_license352 = internal constant [18 x i8] c"qsemi.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_qsemi__353_156_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@qs6612_driver = internal global { [1 x %struct.phy_driver], [52 x i8] } { [1 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1578048, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @qs6612_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qs6612_config_intr, ptr @qs6612_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [52 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"QS6612\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"qs6612_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 146, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [27 x i8] c"../drivers/net/phy/qsemi.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 148, i32 11 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_file351, ptr @__UNIQUE_ID_license352, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_qsemi__353_156_phy_module_init6, ptr @phy_module_exit, ptr @qs6612_driver, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qs6612_driver to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @qs6612_driver, i32 noundef 1, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_drivers_unregister(ptr noundef nonnull @qs6612_driver, i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qs6612_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 3520) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qs6612_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
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
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i17, align 8
  %7 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i18, align 8
  %call.i18.i = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %cmp2.i = icmp slt i32 %call.i18.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %qs6612_ack_interrupt.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

qs6612_ack_interrupt.exit:                        ; preds = %if.end.i
  %9 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i17, align 8
  %11 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i18, align 8
  %call.i21.i = tail call i32 @mdiobus_read(ptr noundef %10, i32 noundef %12, i32 noundef 6) #4
  %13 = tail call i32 @llvm.smin.i32(i32 %call.i21.i, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i21.i)
  %tobool.not = icmp sgt i32 %call.i21.i, -1
  br i1 %tobool.not, label %if.end, label %qs6612_ack_interrupt.exit.cleanup_crit_edge

qs6612_ack_interrupt.exit.cleanup_crit_edge:      ; preds = %qs6612_ack_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %qs6612_ack_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i17, align 8
  %16 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i18, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 30, i16 noundef zeroext 58) #4
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i19 = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 30, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool4.not = icmp eq i32 %call.i19, 0
  br i1 %tobool4.not, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.else
  %18 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i17, align 8
  %20 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i18, align 8
  %call.i.i22 = tail call i32 @mdiobus_read(ptr noundef %19, i32 noundef %21, i32 noundef 29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp.i23 = icmp slt i32 %call.i.i22, 0
  br i1 %cmp.i23, label %if.end6.cleanup_crit_edge, label %if.end.i26

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i26:                                       ; preds = %if.end6
  %22 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i17, align 8
  %24 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i18, align 8
  %call.i18.i24 = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %25, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i24)
  %cmp2.i25 = icmp slt i32 %call.i18.i24, 0
  br i1 %cmp2.i25, label %if.end.i26.cleanup_crit_edge, label %if.end4.i28

if.end.i26.cleanup_crit_edge:                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i28:                                      ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i17, align 8
  %28 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i18, align 8
  %call.i21.i27 = tail call i32 @mdiobus_read(ptr noundef %27, i32 noundef %29, i32 noundef 6) #4
  %30 = tail call i32 @llvm.smin.i32(i32 %call.i21.i27, i32 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i28, %if.end.i26.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end, %qs6612_ack_interrupt.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %qs6612_ack_interrupt.exit.cleanup_crit_edge ], [ %call.i19, %if.else.cleanup_crit_edge ], [ %call.i, %if.end ], [ %call.i.i22, %if.end6.cleanup_crit_edge ], [ %call.i18.i24, %if.end.i26.cleanup_crit_edge ], [ %30, %if.end4.i28 ], [ %call.i18.i, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qs6612_handle_interrupt(ptr noundef %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_error(ptr noundef %phydev) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end2.qs6612_ack_interrupt.exit_crit_edge, label %if.end.i

if.end2.qs6612_ack_interrupt.exit_crit_edge:      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %qs6612_ack_interrupt.exit

if.end.i:                                         ; preds = %if.end2
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i18.i = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %cmp2.i = icmp slt i32 %call.i18.i, 0
  br i1 %cmp2.i, label %if.end.i.qs6612_ack_interrupt.exit_crit_edge, label %if.end4.i

if.end.i.qs6612_ack_interrupt.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %qs6612_ack_interrupt.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i21.i = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 6) #4
  br label %qs6612_ack_interrupt.exit

qs6612_ack_interrupt.exit:                        ; preds = %if.end4.i, %if.end.i.qs6612_ack_interrupt.exit_crit_edge, %if.end2.qs6612_ack_interrupt.exit_crit_edge
  tail call void @phy_trigger_machine(ptr noundef %phydev) #4
  br label %cleanup

cleanup:                                          ; preds = %qs6612_ack_interrupt.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %qs6612_ack_interrupt.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__UNIQUE_ID_description349, !1, !"__UNIQUE_ID_description349", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/qsemi.c", i32 53, i32 1}
!2 = !{ptr @__UNIQUE_ID_author350, !3, !"__UNIQUE_ID_author350", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/qsemi.c", i32 54, i32 1}
!4 = !{ptr @__UNIQUE_ID_file351, !5, !"__UNIQUE_ID_file351", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/qsemi.c", i32 55, i32 1}
!6 = !{ptr @__UNIQUE_ID_license352, !5, !"__UNIQUE_ID_license352", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_qsemi__353_156_phy_module_init6, !8, !"__initcall__kmod_qsemi__353_156_phy_module_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/qsemi.c", i32 156, i32 1}
!9 = !{ptr @__exitcall_phy_module_exit, !8, !"__exitcall_phy_module_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/qsemi.c", i32 148, i32 11}
!12 = !{ptr @qs6612_driver, !13, !"qs6612_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/qsemi.c", i32 146, i32 26}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
