; ModuleID = '/llk/IR_all_yes/drivers/net/phy/uPD60620.c_pt.bc'
source_filename = "../drivers/net/phy/uPD60620.c"
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

@__UNIQUE_ID_description281 = internal constant [49 x i8] c"uPD60620.description=Renesas uPD60620 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author282 = internal constant [59 x i8] c"uPD60620.author=Bernd Edlinger <bernd.edlinger@hotmail.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file283 = internal constant [39 x i8] c"uPD60620.file=drivers/net/phy/uPD60620\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [21 x i8] c"uPD60620.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_uPD60620__285_91_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@upd60620_driver = internal global { [1 x %struct.phy_driver], [52 x i8] } { [1 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1205589980, ptr @.str, i32 -2, ptr null, i32 0, ptr null, ptr null, ptr @upd60620_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @upd60620_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [52 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Renesas uPD60620\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"upd60620_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 81, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [30 x i8] c"../drivers/net/phy/uPD60620.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 84, i32 20 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description281, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_uPD60620__285_91_phy_module_init6, ptr @phy_module_exit, ptr @upd60620_driver, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd60620_driver to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @upd60620_driver, i32 noundef 1, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @phy_drivers_unregister(ptr noundef nonnull @upd60620_driver, i32 noundef 1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd60620_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 8
  %2 = trunc i32 %1 to i16
  %conv = or i16 %2, 384
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %1, i32 noundef 18, i16 noundef zeroext %conv) #3
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd60620_read_status(ptr noundef %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %link, align 8
  %bf.clear = and i16 %bf.load, -5
  store i16 %bf.clear, ptr %link, align 8
  %lp_advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 18
  %5 = call ptr @memset(ptr %lp_advertising, i32 0, i32 12)
  %pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 11
  %6 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pause, align 4
  %asym_pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 12
  %7 = ptrtoint ptr %asym_pause to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %asym_pause, align 8
  %and = and i32 %call.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i56 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 31) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp3 = icmp slt i32 %call.i56, 0
  br i1 %cmp3, label %if.then1.cleanup_crit_edge, label %if.end5

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  %and6 = and i32 %call.i56, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load10 = load i16, ptr %link, align 8
  %bf.set12 = or i16 %bf.load10, 4
  store i16 %bf.set12, ptr %link, align 8
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %14 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %duplex, align 4
  %and13 = and i32 %call.i56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then8.if.end17_crit_edge, label %if.then15

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then15:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 100, ptr %speed, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then8.if.end17_crit_edge
  %and18 = and i32 %call.i56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end22_crit_edge, label %if.then20

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %duplex, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %17 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i, align 8
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i, align 8
  %call.i59 = tail call i32 @mdiobus_read(ptr noundef %18, i32 noundef %20, i32 noundef 5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp24 = icmp slt i32 %call.i59, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  %21 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 0, ptr %21, align 4
  %and.i.i.i = lshr i32 %call.i59, 5
  %and.lobit.i.i.i = and i32 %and.i.i.i, 1
  %and4.i.i.i = shl i32 %call.i59, 3
  %23 = and i32 %and4.i.i.i, 8192
  %24 = and i32 %and4.i.i.i, 16384
  %storemerge.i28.i.i.i = and i32 %and.i.i.i, 14
  %storemerge.i.i.i.i = or i32 %storemerge.i28.i.i.i, %23
  %storemerge.i35.i.i.i = or i32 %storemerge.i.i.i.i, %24
  %storemerge.i42.i.i.i = or i32 %storemerge.i35.i.i.i, %and.lobit.i.i.i
  %and.i = lshr i32 %call.i59, 8
  %25 = and i32 %and.i, 64
  %26 = or i32 %storemerge.i42.i.i.i, %25
  %27 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %lp_advertising, align 4
  tail call void @phy_resolve_aneg_pause(ptr noundef %phydev) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end22.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i56, %if.then1.cleanup_crit_edge ], [ %call.i59, %if.end22.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end26 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_resolve_aneg_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__UNIQUE_ID_description281, !1, !"__UNIQUE_ID_description281", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/uPD60620.c", i32 77, i32 1}
!2 = !{ptr @__UNIQUE_ID_author282, !3, !"__UNIQUE_ID_author282", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/uPD60620.c", i32 78, i32 1}
!4 = !{ptr @__UNIQUE_ID_file283, !5, !"__UNIQUE_ID_file283", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/uPD60620.c", i32 79, i32 1}
!6 = !{ptr @__UNIQUE_ID_license284, !5, !"__UNIQUE_ID_license284", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_uPD60620__285_91_phy_module_init6, !8, !"__initcall__kmod_uPD60620__285_91_phy_module_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/uPD60620.c", i32 91, i32 1}
!9 = !{ptr @__exitcall_phy_module_exit, !8, !"__exitcall_phy_module_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/uPD60620.c", i32 84, i32 20}
!12 = !{ptr @upd60620_driver, !13, !"upd60620_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/uPD60620.c", i32 81, i32 26}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
