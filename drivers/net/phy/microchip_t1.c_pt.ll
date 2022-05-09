; ModuleID = '/llk/IR_all_yes/drivers/net/phy/microchip_t1.c_pt.bc'
source_filename = "../drivers/net/phy/microchip_t1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.access_ereg_val = type { i8, i8, i8, i16, i16 }
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

@__initcall__kmod_microchip_t1__347_528_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@microchip_t1_phy_driver = internal global { [1 x %struct.phy_driver], [52 x i8] } { [1 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 508240, ptr @.str, i32 -16, ptr @phy_basic_t1_features, i32 4, ptr null, ptr null, ptr @lan87xx_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @lan87xx_phy_config_intr, ptr @lan87xx_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan87xx_cable_test_start, ptr null, ptr @lan87xx_cable_test_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [52 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author348 = internal constant [60 x i8] c"microchip_t1.author=Nisar Sayed <nisar.sayed@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description349 = internal constant [57 x i8] c"microchip_t1.description=Microchip LAN87XX T1 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file350 = internal constant [47 x i8] c"microchip_t1.file=drivers/net/phy/microchip_t1\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [25 x i8] c"microchip_t1.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Microchip LAN87xx T1\00", [43 x i8] zeroinitializer }, align 32
@phy_basic_t1_features = external dso_local global [3 x i32], section ".data..ro_after_init", align 4
@lan87xx_phy_init.init = internal constant { [9 x %struct.access_ereg_val], [56 x i8] } { [9 x %struct.access_ereg_val] [%struct.access_ereg_val { i8 2, i8 3, i8 11, i16 10, i16 30 }, %struct.access_ereg_val { i8 0, i8 0, i8 24, i16 0, i16 0 }, %struct.access_ereg_val { i8 0, i8 1, i8 8, i16 0, i16 0 }, %struct.access_ereg_val { i8 2, i8 1, i8 32, i16 32, i16 32 }, %struct.access_ereg_val { i8 1, i8 2, i8 32, i16 10300, i16 0 }, %struct.access_ereg_val { i8 1, i8 1, i8 33, i16 10063, i16 0 }, %struct.access_ereg_val { i8 1, i8 1, i8 32, i16 -32601, i16 0 }, %struct.access_ereg_val { i8 1, i8 1, i8 36, i16 -3824, i16 0 }, %struct.access_ereg_val { i8 2, i8 0, i8 26, i16 256, i16 256 }], [56 x i8] zeroinitializer }, align 32
@lan87xx_cable_test_start.cable_test = internal constant { [8 x %struct.access_ereg_val], [32 x i8] } { [8 x %struct.access_ereg_val] [%struct.access_ereg_val { i8 1, i8 4, i8 93, i16 0, i16 0 }, %struct.access_ereg_val { i8 1, i8 4, i8 94, i16 10, i16 0 }, %struct.access_ereg_val { i8 1, i8 4, i8 95, i16 90, i16 0 }, %struct.access_ereg_val { i8 1, i8 4, i8 92, i16 60, i16 0 }, %struct.access_ereg_val { i8 1, i8 4, i8 79, i16 31, i16 0 }, %struct.access_ereg_val { i8 2, i8 4, i8 55, i16 0, i16 56 }, %struct.access_ereg_val { i8 1, i8 4, i8 94, i16 70, i16 0 }, %struct.access_ereg_val { i8 1, i8 4, i8 90, i16 1, i16 0 }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"microchip_t1_phy_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 507, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 511, i32 21 }
@___asan_gen_.7 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 159, i32 38 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"cable_test\00", align 1
@___asan_gen_.11 = private constant [34 x i8] c"../drivers/net/phy/microchip_t1.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 313, i32 38 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_microchip_t1__347_528_phy_module_init6, ptr @phy_module_exit, ptr @microchip_t1_phy_driver, ptr @.str, ptr @lan87xx_phy_init.init, ptr @lan87xx_cable_test_start.cable_test], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_t1_phy_driver to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan87xx_phy_init.init to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan87xx_cable_test_start.cable_test to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @microchip_t1_phy_driver, i32 noundef 1, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_drivers_unregister(ptr noundef nonnull @microchip_t1_phy_driver, i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan87xx_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i.i.i, align 8
  %addr.i.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i66.i.i.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i.i.i)
  %cmp242.i.i = icmp slt i32 %call.i66.i.i.i, 0
  br i1 %cmp242.i.i, label %entry.lan87xx_phy_init.exit.thread_crit_edge, label %access_ereg_modify_changed.exit.i

entry.lan87xx_phy_init.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan87xx_phy_init.exit.thread

access_ereg_modify_changed.exit.i:                ; preds = %entry
  %4 = trunc i32 %call.i66.i.i.i to i16
  %5 = and i16 %4, -257
  %6 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i.i.i.i = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 26, i16 noundef zeroext %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i, label %access_ereg_modify_changed.exit.i.lan87xx_phy_init.exit.thread_crit_edge, label %if.end.i

access_ereg_modify_changed.exit.i.lan87xx_phy_init.exit.thread_crit_edge: ; preds = %access_ereg_modify_changed.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan87xx_phy_init.exit.thread

if.end.i:                                         ; preds = %access_ereg_modify_changed.exit.i
  %10 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i.i.i, align 8
  %12 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i66.i.i62.i = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i.i62.i)
  %cmp242.i63.i = icmp slt i32 %call.i66.i.i62.i, 0
  br i1 %cmp242.i63.i, label %if.end.i.lan87xx_phy_init.exit.thread_crit_edge, label %access_ereg_modify_changed.exit67.i

if.end.i.lan87xx_phy_init.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan87xx_phy_init.exit.thread

access_ereg_modify_changed.exit67.i:              ; preds = %if.end.i
  %14 = trunc i32 %call.i66.i.i62.i to i16
  %conv845.i.i = or i16 %14, -32768
  %15 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i.i.i.i, align 8
  %17 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i.i.i64.i = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef 0, i16 noundef zeroext %conv845.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i64.i)
  %cmp2.i = icmp slt i32 %call.i.i.i64.i, 0
  br i1 %cmp2.i, label %access_ereg_modify_changed.exit67.i.lan87xx_phy_init.exit.thread_crit_edge, label %if.end4.i

access_ereg_modify_changed.exit67.i.lan87xx_phy_init.exit.thread_crit_edge: ; preds = %access_ereg_modify_changed.exit67.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan87xx_phy_init.exit.thread

if.end4.i:                                        ; preds = %access_ereg_modify_changed.exit67.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %19 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i.i.i.i, align 8
  %21 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i66.i.i = tail call i32 @mdiobus_read(ptr noundef %20, i32 noundef %22, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i.i)
  %cmp6.i = icmp slt i32 %call.i66.i.i, 0
  br i1 %cmp6.i, label %if.end4.i.lan87xx_phy_init.exit.thread_crit_edge, label %if.end8.i

if.end4.i.lan87xx_phy_init.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan87xx_phy_init.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %and.i = and i32 %call.i66.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp9.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp9.not.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.lan87xx_phy_init.exit.thread_crit_edge

if.end8.i.lan87xx_phy_init.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan87xx_phy_init.exit.thread

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end30.i
  %inc.i = add nuw nsw i32 %i.074.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %i.074.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end8.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [9 x %struct.access_ereg_val], ptr @lan87xx_phy_init.init, i32 0, i32 %i.074.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp13.i = icmp eq i8 %24, 2
  %bank.i = getelementptr [9 x %struct.access_ereg_val], ptr @lan87xx_phy_init.init, i32 0, i32 %i.074.i, i32 1
  %25 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bank.i, align 1
  %offset.i = getelementptr [9 x %struct.access_ereg_val], ptr @lan87xx_phy_init.init, i32 0, i32 %i.074.i, i32 2
  %27 = ptrtoint ptr %offset.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %offset.i, align 2
  %val.i = getelementptr [9 x %struct.access_ereg_val], ptr @lan87xx_phy_init.init, i32 0, i32 %i.074.i, i32 3
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %val.i, align 2
  br i1 %cmp13.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %mask.i = getelementptr [9 x %struct.access_ereg_val], ptr @lan87xx_phy_init.init, i32 0, i32 %i.074.i, i32 4
  %31 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mask.i, align 2
  %call20.i = tail call fastcc i32 @access_ereg_modify_changed(ptr noundef %phydev, i8 noundef zeroext %26, i8 noundef zeroext %28, i16 noundef zeroext %30, i16 noundef zeroext %32) #4
  br label %if.end30.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call29.i = tail call fastcc i32 @access_ereg(ptr noundef %phydev, i8 noundef zeroext %24, i8 noundef zeroext %26, i8 noundef zeroext %28, i16 noundef zeroext %30) #4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i, %if.then15.i
  %rc.0.i = phi i32 [ %call20.i, %if.then15.i ], [ %call29.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %cmp31.i = icmp slt i32 %rc.0.i, 0
  br i1 %cmp31.i, label %if.end30.i.lan87xx_phy_init.exit.thread_crit_edge, label %for.cond.i

if.end30.i.lan87xx_phy_init.exit.thread_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan87xx_phy_init.exit.thread

for.end.i:                                        ; preds = %for.cond.i
  %interface.i.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %33 = ptrtoint ptr %interface.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %interface.i.i.i, align 4
  %35 = add i32 %34, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %36 = icmp ult i32 %35, 4
  br i1 %36, label %if.end.i.i, label %for.end.i.lan87xx_phy_init.exit.thread6_crit_edge

for.end.i.lan87xx_phy_init.exit.thread6_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan87xx_phy_init.exit.thread6

if.end.i.i:                                       ; preds = %for.end.i
  %37 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus.i.i.i.i, align 8
  %39 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i72.i.i.i = tail call i32 @mdiobus_write(ptr noundef %38, i32 noundef %40, i32 noundef 20, i16 noundef zeroext 4369) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i72.i.i.i)
  %cmp35.i.i.i = icmp sgt i32 %call.i72.i.i.i, -1
  br i1 %cmp35.i.i.i, label %access_ereg.exit.i.i, label %if.end.i.i.lan87xx_phy_init.exit.thread_crit_edge

if.end.i.i.lan87xx_phy_init.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan87xx_phy_init.exit.thread

access_ereg.exit.i.i:                             ; preds = %if.end.i.i
  %41 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus.i.i.i.i, align 8
  %43 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i75.i.i.i = tail call i32 @mdiobus_read(ptr noundef %42, i32 noundef %44, i32 noundef 21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i75.i.i.i, 0
  br i1 %cmp.i.i, label %access_ereg.exit.i.i.lan87xx_phy_init.exit.thread_crit_edge, label %if.end3.i.i

access_ereg.exit.i.i.lan87xx_phy_init.exit.thread_crit_edge: ; preds = %access_ereg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan87xx_phy_init.exit.thread

if.end3.i.i:                                      ; preds = %access_ereg.exit.i.i
  %45 = ptrtoint ptr %interface.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %interface.i.i.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %46, label %if.end3.i.i.lan87xx_phy_init.exit.thread6_crit_edge [
    i32 9, label %sw.bb.i.i
    i32 10, label %sw.bb5.i.i
    i32 11, label %sw.bb7.i.i
    i32 12, label %sw.bb10.i.i
  ]

if.end3.i.i.lan87xx_phy_init.exit.thread6_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan87xx_phy_init.exit.thread6

sw.bb.i.i:                                        ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %and4.i.i = and i32 %call.i75.i.i.i, -24577
  br label %sw.epilog.i.i

sw.bb5.i.i:                                       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %or6.i.i = or i32 %call.i75.i.i.i, 24576
  br label %sw.epilog.i.i

sw.bb7.i.i:                                       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %and8.i.i = and i32 %call.i75.i.i.i, -24577
  %or9.i.i = or i32 %and8.i.i, 8192
  br label %sw.epilog.i.i

sw.bb10.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %or11.i.i = and i32 %call.i75.i.i.i, -24577
  %and12.i.i = or i32 %or11.i.i, 16384
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb10.i.i, %sw.bb7.i.i, %sw.bb5.i.i, %sw.bb.i.i
  %rc.0.i.i = phi i32 [ %and12.i.i, %sw.bb10.i.i ], [ %or9.i.i, %sw.bb7.i.i ], [ %or6.i.i, %sw.bb5.i.i ], [ %and4.i.i, %sw.bb.i.i ]
  %conv.i.i = trunc i32 %rc.0.i.i to i16
  %48 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i.i.i.i, align 8
  %50 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i69.i.i.i = tail call i32 @mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 22, i16 noundef zeroext %conv.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i.i.i)
  %cmp23.i.i.i = icmp slt i32 %call.i69.i.i.i, 0
  br i1 %cmp23.i.i.i, label %sw.epilog.i.i.lan87xx_phy_init.exit.thread_crit_edge, label %lan87xx_phy_init.exit

sw.epilog.i.i.lan87xx_phy_init.exit.thread_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan87xx_phy_init.exit.thread

lan87xx_phy_init.exit:                            ; preds = %sw.epilog.i.i
  %52 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i.i.i.i, align 8
  %54 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i72.i29.i.i = tail call i32 @mdiobus_write(ptr noundef %53, i32 noundef %55, i32 noundef 20, i16 noundef zeroext 2321) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i29.i.i)
  %cmp = icmp slt i32 %call.i72.i29.i.i, 0
  br i1 %cmp, label %lan87xx_phy_init.exit.lan87xx_phy_init.exit.thread_crit_edge, label %lan87xx_phy_init.exit.lan87xx_phy_init.exit.thread6_crit_edge

lan87xx_phy_init.exit.lan87xx_phy_init.exit.thread6_crit_edge: ; preds = %lan87xx_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan87xx_phy_init.exit.thread6

lan87xx_phy_init.exit.lan87xx_phy_init.exit.thread_crit_edge: ; preds = %lan87xx_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan87xx_phy_init.exit.thread

lan87xx_phy_init.exit.thread:                     ; preds = %lan87xx_phy_init.exit.lan87xx_phy_init.exit.thread_crit_edge, %sw.epilog.i.i.lan87xx_phy_init.exit.thread_crit_edge, %access_ereg.exit.i.i.lan87xx_phy_init.exit.thread_crit_edge, %if.end.i.i.lan87xx_phy_init.exit.thread_crit_edge, %if.end30.i.lan87xx_phy_init.exit.thread_crit_edge, %if.end8.i.lan87xx_phy_init.exit.thread_crit_edge, %if.end4.i.lan87xx_phy_init.exit.thread_crit_edge, %access_ereg_modify_changed.exit67.i.lan87xx_phy_init.exit.thread_crit_edge, %if.end.i.lan87xx_phy_init.exit.thread_crit_edge, %access_ereg_modify_changed.exit.i.lan87xx_phy_init.exit.thread_crit_edge, %entry.lan87xx_phy_init.exit.thread_crit_edge
  %retval.0.i4 = phi i32 [ %call.i72.i29.i.i, %lan87xx_phy_init.exit.lan87xx_phy_init.exit.thread_crit_edge ], [ %call.i66.i.i62.i, %if.end.i.lan87xx_phy_init.exit.thread_crit_edge ], [ %call.i66.i.i.i, %entry.lan87xx_phy_init.exit.thread_crit_edge ], [ %call.i72.i.i.i, %if.end.i.i.lan87xx_phy_init.exit.thread_crit_edge ], [ %call.i69.i.i.i, %sw.epilog.i.i.lan87xx_phy_init.exit.thread_crit_edge ], [ %call.i75.i.i.i, %access_ereg.exit.i.i.lan87xx_phy_init.exit.thread_crit_edge ], [ -110, %if.end8.i.lan87xx_phy_init.exit.thread_crit_edge ], [ %call.i66.i.i, %if.end4.i.lan87xx_phy_init.exit.thread_crit_edge ], [ %call.i.i.i64.i, %access_ereg_modify_changed.exit67.i.lan87xx_phy_init.exit.thread_crit_edge ], [ %call.i.i.i.i, %access_ereg_modify_changed.exit.i.lan87xx_phy_init.exit.thread_crit_edge ], [ %rc.0.i, %if.end30.i.lan87xx_phy_init.exit.thread_crit_edge ]
  br label %lan87xx_phy_init.exit.thread6

lan87xx_phy_init.exit.thread6:                    ; preds = %lan87xx_phy_init.exit.thread, %lan87xx_phy_init.exit.lan87xx_phy_init.exit.thread6_crit_edge, %if.end3.i.i.lan87xx_phy_init.exit.thread6_crit_edge, %for.end.i.lan87xx_phy_init.exit.thread6_crit_edge
  %56 = phi i32 [ %retval.0.i4, %lan87xx_phy_init.exit.thread ], [ 0, %lan87xx_phy_init.exit.lan87xx_phy_init.exit.thread6_crit_edge ], [ 0, %for.end.i.lan87xx_phy_init.exit.thread6_crit_edge ], [ 0, %if.end3.i.i.lan87xx_phy_init.exit.thread6_crit_edge ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan87xx_phy_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
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
  %bus.i26 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i26 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i26, align 8
  %addr.i27 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i27 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i27, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 25, i16 noundef zeroext 32767) #4
  %5 = ptrtoint ptr %bus.i26 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i26, align 8
  %7 = ptrtoint ptr %addr.i27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i27, align 8
  %call.i22 = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 24) #4
  %9 = ptrtoint ptr %bus.i26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i26, align 8
  %11 = ptrtoint ptr %addr.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i27, align 8
  %call.i25 = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 25, i16 noundef zeroext 6) #4
  br label %if.end7

if.else:                                          ; preds = %entry
  %call.i28 = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 25, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not = icmp eq i32 %call.i28, 0
  br i1 %tobool.not, label %if.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %bus.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i26, align 8
  %15 = ptrtoint ptr %addr.i27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i27, align 8
  %call.i31 = tail call i32 @mdiobus_read(ptr noundef %14, i32 noundef %16, i32 noundef 24) #4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %rc.0 = phi i32 [ %call.i25, %if.then ], [ %call.i31, %if.end ]
  %17 = tail call i32 @llvm.smin.i32(i32 %rc.0, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.end7 ], [ %call.i28, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan87xx_handle_interrupt(ptr noundef %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_error(ptr noundef %phydev) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp eq i32 %call.i, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_trigger_machine(ptr noundef %phydev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan87xx_cable_test_start(ptr noundef %phydev) #2 align 64 {
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
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

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
  %call.i33.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %cmp2.i = icmp slt i32 %call.i33.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %and.i = and i32 %call.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.i.if.end14.i_crit_edge, label %if.then5.i

if.end4.i.if.end14.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

if.then5.i:                                       ; preds = %if.end4.i
  %call6.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 4096, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then5.i.cleanup_crit_edge, label %if.end9.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9.i:                                        ; preds = %if.then5.i
  %call10.i = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end9.i.cleanup_crit_edge, label %if.end9.i.if.end14.i_crit_edge

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14.i:                                       ; preds = %if.end9.i.if.end14.i_crit_edge, %if.end4.i.if.end14.i_crit_edge
  %and15.i = and i32 %call.i33.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end_crit_edge, label %if.then17.i

if.end14.i.if.end_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 1500) #4
  br label %if.end

if.end:                                           ; preds = %if.then17.i, %if.end14.i.if.end_crit_edge
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i66.i = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %cmp2 = icmp slt i32 %call.i66.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i66.i87 = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i87)
  %cmp6 = icmp slt i32 %call.i66.i87, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %and = and i32 %call.i66.i87, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9.not.not = icmp eq i32 %and, 0
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i, align 8
  br i1 %cmp9.not.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %call.i72.i.i = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 20, i16 noundef zeroext 4878) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i72.i.i)
  %cmp35.i.i = icmp sgt i32 %call.i72.i.i, -1
  br i1 %cmp35.i.i, label %access_ereg.exit.i, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

access_ereg.exit.i:                               ; preds = %if.then10
  %20 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i, align 8
  %call.i75.i.i = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %23, i32 noundef 21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i.i)
  %cmp2.i89 = icmp slt i32 %call.i75.i.i, 0
  br i1 %cmp2.i89, label %access_ereg.exit.i.cleanup_crit_edge, label %if.end17.i27.i

access_ereg.exit.i.cleanup_crit_edge:             ; preds = %access_ereg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17.i27.i:                                   ; preds = %access_ereg.exit.i
  %24 = trunc i32 %call.i75.i.i to i16
  %25 = and i16 %24, -8
  %conv8.i = or i16 %25, 5
  %26 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i.i, align 8
  %28 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i.i, align 8
  %call.i69.i.i = tail call i32 @mdiobus_write(ptr noundef %27, i32 noundef %29, i32 noundef 22, i16 noundef zeroext %conv8.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i.i)
  %cmp23.i.i = icmp slt i32 %call.i69.i.i, 0
  br i1 %cmp23.i.i, label %if.end17.i27.i.cleanup_crit_edge, label %access_ereg_modify_changed.exit

if.end17.i27.i.cleanup_crit_edge:                 ; preds = %if.end17.i27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

access_ereg_modify_changed.exit:                  ; preds = %if.end17.i27.i
  %30 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i.i, align 8
  %32 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i.i, align 8
  %call.i72.i34.i = tail call i32 @mdiobus_write(ptr noundef %31, i32 noundef %33, i32 noundef 20, i16 noundef zeroext 2830) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i34.i)
  %cmp12 = icmp slt i32 %call.i72.i34.i, 0
  br i1 %cmp12, label %access_ereg_modify_changed.exit.cleanup_crit_edge, label %if.end14

access_ereg_modify_changed.exit.cleanup_crit_edge: ; preds = %access_ereg_modify_changed.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %access_ereg_modify_changed.exit
  %34 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i.i, align 8
  %36 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr.i.i, align 8
  %call.i66.i.i = tail call i32 @mdiobus_read(ptr noundef %35, i32 noundef %37, i32 noundef 26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i.i)
  %cmp242.i = icmp slt i32 %call.i66.i.i, 0
  br i1 %cmp242.i, label %if.end14.cleanup_crit_edge, label %access_ereg_modify_changed.exit92

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

access_ereg_modify_changed.exit92:                ; preds = %if.end14
  %38 = trunc i32 %call.i66.i.i to i16
  %conv845.i = or i16 %38, 8
  %39 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i.i, align 8
  %41 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_write(ptr noundef %40, i32 noundef %42, i32 noundef 26, i16 noundef zeroext %conv845.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp16 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp16, label %access_ereg_modify_changed.exit92.cleanup_crit_edge, label %access_ereg_modify_changed.exit92.for.body.preheader_crit_edge

access_ereg_modify_changed.exit92.for.body.preheader_crit_edge: ; preds = %access_ereg_modify_changed.exit92
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

access_ereg_modify_changed.exit92.cleanup_crit_edge: ; preds = %access_ereg_modify_changed.exit92
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.end8
  %call.i66.i.i95 = tail call i32 @mdiobus_read(ptr noundef %17, i32 noundef %19, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i.i95)
  %cmp242.i96 = icmp slt i32 %call.i66.i.i95, 0
  br i1 %cmp242.i96, label %if.else.cleanup_crit_edge, label %access_ereg_modify_changed.exit101

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

access_ereg_modify_changed.exit101:               ; preds = %if.else
  %43 = trunc i32 %call.i66.i.i95 to i16
  %44 = and i16 %43, -73
  %conv845.i97 = or i16 %44, 8
  %45 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i.i, align 8
  %47 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr.i.i, align 8
  %call.i.i.i98 = tail call i32 @mdiobus_write(ptr noundef %46, i32 noundef %48, i32 noundef 16, i16 noundef zeroext %conv845.i97) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i98)
  %cmp20 = icmp slt i32 %call.i.i.i98, 0
  br i1 %cmp20, label %access_ereg_modify_changed.exit101.cleanup_crit_edge, label %access_ereg_modify_changed.exit101.for.body.preheader_crit_edge

access_ereg_modify_changed.exit101.for.body.preheader_crit_edge: ; preds = %access_ereg_modify_changed.exit101
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

access_ereg_modify_changed.exit101.cleanup_crit_edge: ; preds = %access_ereg_modify_changed.exit101
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %access_ereg_modify_changed.exit101.for.body.preheader_crit_edge, %access_ereg_modify_changed.exit92.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %if.end43
  %inc = add nuw nsw i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0110 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [8 x %struct.access_ereg_val], ptr @lan87xx_cable_test_start.cable_test, i32 0, i32 %i.0110
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp25 = icmp eq i8 %50, 2
  %bank = getelementptr [8 x %struct.access_ereg_val], ptr @lan87xx_cable_test_start.cable_test, i32 0, i32 %i.0110, i32 1
  %51 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bank, align 1
  %offset = getelementptr [8 x %struct.access_ereg_val], ptr @lan87xx_cable_test_start.cable_test, i32 0, i32 %i.0110, i32 2
  %53 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %offset, align 2
  %val = getelementptr [8 x %struct.access_ereg_val], ptr @lan87xx_cable_test_start.cable_test, i32 0, i32 %i.0110, i32 3
  %55 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %val, align 2
  br i1 %cmp25, label %if.then27, label %if.else33

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %mask = getelementptr [8 x %struct.access_ereg_val], ptr @lan87xx_cable_test_start.cable_test, i32 0, i32 %i.0110, i32 4
  %57 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mask, align 2
  %call32 = tail call fastcc i32 @access_ereg_modify_changed(ptr noundef %phydev, i8 noundef zeroext %52, i8 noundef zeroext %54, i16 noundef zeroext %56, i16 noundef zeroext %58)
  tail call void @msleep(i32 noundef 50) #4
  br label %if.end43

if.else33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call42 = tail call fastcc i32 @access_ereg(ptr noundef %phydev, i8 noundef zeroext %50, i8 noundef zeroext %52, i8 noundef zeroext %54, i16 noundef zeroext %56)
  br label %if.end43

if.end43:                                         ; preds = %if.else33, %if.then27
  %rc.0 = phi i32 [ %call32, %if.then27 ], [ %call42, %if.else33 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp44 = icmp slt i32 %rc.0, 0
  br i1 %cmp44, label %if.end43.cleanup_crit_edge, label %for.cond

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end43.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %access_ereg_modify_changed.exit101.cleanup_crit_edge, %if.else.cleanup_crit_edge, %access_ereg_modify_changed.exit92.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %access_ereg_modify_changed.exit.cleanup_crit_edge, %if.end17.i27.i.cleanup_crit_edge, %access_ereg.exit.i.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i66.i, %if.end.cleanup_crit_edge ], [ %call.i66.i87, %if.end4.cleanup_crit_edge ], [ %call.i72.i34.i, %access_ereg_modify_changed.exit.cleanup_crit_edge ], [ %call.i.i.i, %access_ereg_modify_changed.exit92.cleanup_crit_edge ], [ %call.i.i.i98, %access_ereg_modify_changed.exit101.cleanup_crit_edge ], [ %call10.i, %if.end9.i.cleanup_crit_edge ], [ %call6.i, %if.then5.i.cleanup_crit_edge ], [ %call.i33.i, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i72.i.i, %if.then10.cleanup_crit_edge ], [ %call.i69.i.i, %if.end17.i27.i.cleanup_crit_edge ], [ %call.i75.i.i, %access_ereg.exit.i.cleanup_crit_edge ], [ %call.i66.i.i, %if.end14.cleanup_crit_edge ], [ %call.i66.i.i95, %if.else.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %rc.0, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan87xx_cable_test_get_status(ptr noundef %phydev, ptr nocapture noundef writeonly %finished) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %finished, align 1
  %bus.i70.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i70.i, align 8
  %addr.i71.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i71.i, align 8
  %call.i72.i = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 20, i16 noundef zeroext 5210) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i72.i)
  %cmp35.i = icmp sgt i32 %call.i72.i, -1
  br i1 %cmp35.i, label %access_ereg.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

access_ereg.exit:                                 ; preds = %entry
  %5 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i70.i, align 8
  %7 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i71.i, align 8
  %call.i75.i = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %cmp = icmp slt i32 %call.i75.i, 0
  br i1 %cmp, label %access_ereg.exit.cleanup_crit_edge, label %if.end

access_ereg.exit.cleanup_crit_edge:               ; preds = %access_ereg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %access_ereg.exit
  %and = and i32 %call.i75.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %9 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i70.i, align 8
  %11 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i71.i, align 8
  %call.i69.i = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 22, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %cmp23.i = icmp slt i32 %call.i69.i, 0
  br i1 %cmp23.i, label %if.then2.cleanup_crit_edge, label %access_ereg.exit21

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

access_ereg.exit21:                               ; preds = %if.then2
  %13 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i70.i, align 8
  %15 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i71.i, align 8
  %call.i72.i18 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %16, i32 noundef 20, i16 noundef zeroext 3162) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i18)
  %cmp4 = icmp slt i32 %call.i72.i18, 0
  br i1 %cmp4, label %access_ereg.exit21.cleanup_crit_edge, label %if.end6

access_ereg.exit21.cleanup_crit_edge:             ; preds = %access_ereg.exit21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %access_ereg.exit21
  %17 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %finished, align 1
  %18 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i70.i, align 8
  %20 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i71.i, align 8
  %call.i72.i.i = tail call i32 @mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 20, i16 noundef zeroext 5271) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i72.i.i)
  %cmp35.i.i = icmp sgt i32 %call.i72.i.i, -1
  br i1 %cmp35.i.i, label %if.then42.i.i, label %if.end6.access_ereg.exit.i_crit_edge

if.end6.access_ereg.exit.i_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %access_ereg.exit.i

if.then42.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i70.i, align 8
  %24 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i71.i, align 8
  %call.i75.i.i = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %25, i32 noundef 21) #4
  br label %access_ereg.exit.i

access_ereg.exit.i:                               ; preds = %if.then42.i.i, %if.end6.access_ereg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i72.i.i, %if.end6.access_ereg.exit.i_crit_edge ], [ %call.i75.i.i, %if.then42.i.i ]
  %26 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i70.i, align 8
  %28 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i71.i, align 8
  %call.i72.i15.i = tail call i32 @mdiobus_write(ptr noundef %27, i32 noundef %29, i32 noundef 20, i16 noundef zeroext 5273) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i72.i15.i)
  %cmp35.i16.i = icmp sgt i32 %call.i72.i15.i, -1
  br i1 %cmp35.i16.i, label %if.then42.i18.i, label %access_ereg.exit.i.access_ereg.exit20.i_crit_edge

access_ereg.exit.i.access_ereg.exit20.i_crit_edge: ; preds = %access_ereg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %access_ereg.exit20.i

if.then42.i18.i:                                  ; preds = %access_ereg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i70.i, align 8
  %32 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i71.i, align 8
  %call.i75.i17.i = tail call i32 @mdiobus_read(ptr noundef %31, i32 noundef %33, i32 noundef 21) #4
  br label %access_ereg.exit20.i

access_ereg.exit20.i:                             ; preds = %if.then42.i18.i, %access_ereg.exit.i.access_ereg.exit20.i_crit_edge
  %retval.0.i19.i = phi i32 [ %call.i72.i15.i, %access_ereg.exit.i.access_ereg.exit20.i_crit_edge ], [ %call.i75.i17.i, %if.then42.i18.i ]
  %34 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i70.i, align 8
  %36 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr.i71.i, align 8
  %call.i72.i23.i = tail call i32 @mdiobus_write(ptr noundef %35, i32 noundef %37, i32 noundef 20, i16 noundef zeroext 5274) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i72.i23.i)
  %cmp35.i24.i = icmp sgt i32 %call.i72.i23.i, -1
  br i1 %cmp35.i24.i, label %if.then42.i26.i, label %access_ereg.exit20.i.access_ereg.exit28.i_crit_edge

access_ereg.exit20.i.access_ereg.exit28.i_crit_edge: ; preds = %access_ereg.exit20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %access_ereg.exit28.i

if.then42.i26.i:                                  ; preds = %access_ereg.exit20.i
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i70.i, align 8
  %40 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr.i71.i, align 8
  %call.i75.i25.i = tail call i32 @mdiobus_read(ptr noundef %39, i32 noundef %41, i32 noundef 21) #4
  br label %access_ereg.exit28.i

access_ereg.exit28.i:                             ; preds = %if.then42.i26.i, %access_ereg.exit20.i.access_ereg.exit28.i_crit_edge
  %retval.0.i27.i = phi i32 [ %call.i72.i23.i, %access_ereg.exit20.i.access_ereg.exit28.i_crit_edge ], [ %call.i75.i25.i, %if.then42.i26.i ]
  %42 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus.i70.i, align 8
  %44 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr.i71.i, align 8
  %call.i72.i31.i = tail call i32 @mdiobus_write(ptr noundef %43, i32 noundef %45, i32 noundef 20, i16 noundef zeroext 5276) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i72.i31.i)
  %cmp35.i32.i = icmp sgt i32 %call.i72.i31.i, -1
  br i1 %cmp35.i32.i, label %if.then42.i34.i, label %access_ereg.exit28.i.access_ereg.exit36.i_crit_edge

access_ereg.exit28.i.access_ereg.exit36.i_crit_edge: ; preds = %access_ereg.exit28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %access_ereg.exit36.i

if.then42.i34.i:                                  ; preds = %access_ereg.exit28.i
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus.i70.i, align 8
  %48 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr.i71.i, align 8
  %call.i75.i33.i = tail call i32 @mdiobus_read(ptr noundef %47, i32 noundef %49, i32 noundef 21) #4
  br label %access_ereg.exit36.i

access_ereg.exit36.i:                             ; preds = %if.then42.i34.i, %access_ereg.exit28.i.access_ereg.exit36.i_crit_edge
  %retval.0.i35.i = phi i32 [ %call.i72.i31.i, %access_ereg.exit28.i.access_ereg.exit36.i_crit_edge ], [ %call.i75.i33.i, %if.then42.i34.i ]
  %50 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus.i70.i, align 8
  %52 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr.i71.i, align 8
  %call.i72.i39.i = tail call i32 @mdiobus_write(ptr noundef %51, i32 noundef %53, i32 noundef 20, i16 noundef zeroext 5277) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i72.i39.i)
  %cmp35.i40.i = icmp sgt i32 %call.i72.i39.i, -1
  br i1 %cmp35.i40.i, label %if.then42.i42.i, label %access_ereg.exit36.i.access_ereg.exit44.i_crit_edge

access_ereg.exit36.i.access_ereg.exit44.i_crit_edge: ; preds = %access_ereg.exit36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %access_ereg.exit44.i

if.then42.i42.i:                                  ; preds = %access_ereg.exit36.i
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus.i70.i, align 8
  %56 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %addr.i71.i, align 8
  %call.i75.i41.i = tail call i32 @mdiobus_read(ptr noundef %55, i32 noundef %57, i32 noundef 21) #4
  br label %access_ereg.exit44.i

access_ereg.exit44.i:                             ; preds = %if.then42.i42.i, %access_ereg.exit36.i.access_ereg.exit44.i_crit_edge
  %retval.0.i43.i = phi i32 [ %call.i72.i39.i, %access_ereg.exit36.i.access_ereg.exit44.i_crit_edge ], [ %call.i75.i41.i, %if.then42.i42.i ]
  %58 = lshr i32 %retval.0.i35.i, 7
  %and.i = and i32 %58, 127
  %and5.i = and i32 %retval.0.i35.i, 127
  %mul.i = mul nuw nsw i32 %and.i, 96
  %add6.i = add nuw nsw i32 %mul.i, %and5.i
  %59 = lshr i32 %retval.0.i43.i, 7
  %and8.i = and i32 %59, 127
  %and9.i = and i32 %retval.0.i43.i, 127
  %mul10.i = mul nuw nsw i32 %and8.i, 96
  %add11.i = add nuw nsw i32 %mul10.i, %and9.i
  %sub.i = add nsw i32 %add6.i, -185
  %60 = sub nsw i32 %sub.i, %add11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -89, i32 %60)
  %61 = icmp ult i32 %60, -89
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %add11.i)
  %cmp30.i = icmp ule i32 %add6.i, %add11.i
  %brmerge.i = select i1 %61, i1 true, i1 %cmp30.i
  br i1 %brmerge.i, label %if.else.i, label %access_ereg.exit44.i.if.end36.i_crit_edge

access_ereg.exit44.i.if.end36.i_crit_edge:        ; preds = %access_ereg.exit44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i

if.else.i:                                        ; preds = %access_ereg.exit44.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub18.i = sub nuw nsw i32 -96, %add6.i
  %62 = add nsw i32 %sub18.i, %add11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 89, i32 %62)
  %63 = icmp ult i32 %62, 89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i)
  %cmp24.not.i = icmp ne i32 %add11.i, 0
  %or.cond3.i = and i1 %cmp24.not.i, %63
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %add6.i)
  %cmp32.i = icmp ugt i32 %add11.i, %add6.i
  %spec.select.i = select i1 %cmp32.i, i1 %or.cond3.i, i1 false
  %spec.select46.i = select i1 %spec.select.i, i32 1, i32 -1
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i, %access_ereg.exit44.i.if.end36.i_crit_edge
  %cmp43.i = phi i1 [ false, %access_ereg.exit44.i.if.end36.i_crit_edge ], [ %spec.select.i, %if.else.i ]
  %detect.0.i = phi i32 [ 2, %access_ereg.exit44.i.if.end36.i_crit_edge ], [ %spec.select46.i, %if.else.i ]
  %64 = xor i1 %brmerge.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %retval.0.i19.i)
  %cmp37.i = icmp sgt i32 %retval.0.i19.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %retval.0.i27.i)
  %cmp39.i = icmp sgt i32 %retval.0.i27.i, 20
  %or.cond5.i = select i1 %cmp37.i, i1 %cmp39.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp41.i = icmp sgt i32 %retval.0.i.i, -1
  %or.cond6.i = select i1 %or.cond5.i, i1 %cmp41.i, i1 false
  %brmerge7.i = or i1 %cmp43.i, %64
  %or.cond10.i = and i1 %or.cond6.i, %brmerge7.i
  %spec.select8.i = select i1 %or.cond10.i, i32 %detect.0.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select8.i)
  %65 = icmp ult i32 %spec.select8.i, 3
  %switch.idx.cast = trunc i32 %spec.select8.i to i8
  %switch.offset = add i8 %switch.idx.cast, 1
  %retval.0.i45.i = select i1 %65, i8 %switch.offset, i8 0
  %call52.i = tail call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext 0, i8 noundef zeroext %retval.0.i45.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end36.i, %access_ereg.exit21.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %access_ereg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36.i ], [ %call.i75.i, %access_ereg.exit.cleanup_crit_edge ], [ %call.i72.i18, %access_ereg.exit21.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i72.i, %entry.cleanup_crit_edge ], [ %call.i69.i, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @access_ereg_modify_changed(ptr nocapture noundef readonly %phydev, i8 noundef zeroext %bank, i8 noundef zeroext %offset, i16 noundef zeroext %val, i16 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %bank)
  %cmp = icmp ugt i8 %bank, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bank)
  %cmp6.i = icmp eq i8 %bank, 0
  br i1 %cmp6.i, label %access_ereg.exit.thread40, label %if.end17.i

if.end17.i:                                       ; preds = %if.end.i
  %conv2.i = zext i8 %bank to i16
  %shl.i = shl nuw nsw i16 %conv2.i, 8
  %conv30.i = zext i8 %offset to i16
  %or.i = or i16 %shl.i, %conv30.i
  %or32.i = or i16 %or.i, 4096
  %bus.i70.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i70.i, align 8
  %addr.i71.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i71.i, align 8
  %call.i72.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 20, i16 noundef zeroext %or32.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i72.i)
  %cmp35.i = icmp sgt i32 %call.i72.i, -1
  br i1 %cmp35.i, label %access_ereg.exit, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

access_ereg.exit:                                 ; preds = %if.end17.i
  %4 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i70.i, align 8
  %6 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i71.i, align 8
  %call.i75.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %cmp2 = icmp slt i32 %call.i75.i, 0
  br i1 %cmp2, label %access_ereg.exit.cleanup_crit_edge, label %if.end17.i27

access_ereg.exit.cleanup_crit_edge:               ; preds = %access_ereg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

access_ereg.exit.thread40:                        ; preds = %if.end.i
  %conv13.i = zext i8 %offset to i32
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i66.i = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef %conv13.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %cmp242 = icmp slt i32 %call.i66.i, 0
  br i1 %cmp242, label %access_ereg.exit.thread40.cleanup_crit_edge, label %if.then8.i26

access_ereg.exit.thread40.cleanup_crit_edge:      ; preds = %access_ereg.exit.thread40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8.i26:                                     ; preds = %access_ereg.exit.thread40
  call void @__sanitizer_cov_trace_pc() #6
  %12 = xor i16 %mask, -1
  %13 = trunc i32 %call.i66.i to i16
  %14 = and i16 %13, %12
  %conv845 = or i16 %14, %val
  %15 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i.i, align 8
  %17 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef %conv13.i, i16 noundef zeroext %conv845) #4
  br label %cleanup

if.end17.i27:                                     ; preds = %access_ereg.exit
  %19 = xor i16 %mask, -1
  %20 = trunc i32 %call.i75.i to i16
  %21 = and i16 %20, %19
  %conv8 = or i16 %21, %val
  %22 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i70.i, align 8
  %24 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i71.i, align 8
  %call.i69.i = tail call i32 @mdiobus_write(ptr noundef %23, i32 noundef %25, i32 noundef 22, i16 noundef zeroext %conv8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %cmp23.i = icmp slt i32 %call.i69.i, 0
  br i1 %cmp23.i, label %if.end17.i27.cleanup_crit_edge, label %if.end28.i

if.end17.i27.cleanup_crit_edge:                   ; preds = %if.end17.i27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28.i:                                       ; preds = %if.end17.i27
  call void @__sanitizer_cov_trace_pc() #6
  %or32.i31 = or i16 %or.i, 2048
  %26 = ptrtoint ptr %bus.i70.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i70.i, align 8
  %28 = ptrtoint ptr %addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i71.i, align 8
  %call.i72.i34 = tail call i32 @mdiobus_write(ptr noundef %27, i32 noundef %29, i32 noundef 20, i16 noundef zeroext %or32.i31) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end28.i, %if.end17.i27.cleanup_crit_edge, %if.then8.i26, %access_ereg.exit.thread40.cleanup_crit_edge, %access_ereg.exit.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i75.i, %access_ereg.exit.cleanup_crit_edge ], [ %call.i66.i, %access_ereg.exit.thread40.cleanup_crit_edge ], [ %call.i.i, %if.then8.i26 ], [ %call.i69.i, %if.end17.i27.cleanup_crit_edge ], [ %call.i72.i34, %if.end28.i ], [ %call.i72.i, %if.end17.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @access_ereg(ptr nocapture noundef readonly %phydev, i8 noundef zeroext %mode, i8 noundef zeroext %bank, i8 noundef zeroext %offset, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mode)
  %cmp = icmp ugt i8 %mode, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv2 = zext i8 %bank to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %bank)
  %cmp3 = icmp ugt i8 %bank, 7
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bank)
  %cmp6 = icmp eq i8 %bank, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mode)
  %cmp10 = icmp eq i8 %mode, 1
  br i1 %cmp6, label %if.then8, label %if.end17

if.then8:                                         ; preds = %if.end
  %conv13 = zext i8 %offset to i32
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef %conv13, i16 noundef zeroext %val) #4
  br label %cleanup

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %call.i66 = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef %conv13) #4
  br label %cleanup

if.end17:                                         ; preds = %if.end
  br i1 %cmp10, label %if.then21, label %if.end17.if.end28_crit_edge

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then21:                                        ; preds = %if.end17
  %bus.i67 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i67 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i67, align 8
  %addr.i68 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i68 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i68, align 8
  %call.i69 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 22, i16 noundef zeroext %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp23 = icmp slt i32 %call.i69, 0
  br i1 %cmp23, label %if.then21.cleanup_crit_edge, label %if.then21.if.end28_crit_edge

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.then21.if.end28_crit_edge, %if.end17.if.end28_crit_edge
  %ereg.0 = phi i16 [ 2048, %if.then21.if.end28_crit_edge ], [ 4096, %if.end17.if.end28_crit_edge ]
  %shl = shl nuw i16 %conv2, 8
  %conv30 = zext i8 %offset to i16
  %or = or i16 %shl, %conv30
  %or32 = or i16 %ereg.0, %or
  %bus.i70 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i70 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i70, align 8
  %addr.i71 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %10 = ptrtoint ptr %addr.i71 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i71, align 8
  %call.i72 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 20, i16 noundef zeroext %or32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i72)
  %cmp35 = icmp sgt i32 %call.i72, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %cmp40 = icmp eq i8 %mode, 0
  %or.cond = and i1 %cmp40, %cmp35
  br i1 %or.cond, label %if.then42, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then42:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %bus.i70 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i70, align 8
  %14 = ptrtoint ptr %addr.i71 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i71, align 8
  %call.i75 = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 21) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end28.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.else, %if.then12, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.then12 ], [ %call.i66, %if.else ], [ %call.i69, %if.then21.cleanup_crit_edge ], [ %call.i72, %if.end28.cleanup_crit_edge ], [ %call.i75, %if.then42 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_result(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_microchip_t1__347_528_phy_module_init6, !1, !"__initcall__kmod_microchip_t1__347_528_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/microchip_t1.c", i32 528, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author348, !4, !"__UNIQUE_ID_author348", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/microchip_t1.c", i32 537, i32 1}
!5 = !{ptr @__UNIQUE_ID_description349, !6, !"__UNIQUE_ID_description349", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/microchip_t1.c", i32 538, i32 1}
!7 = !{ptr @__UNIQUE_ID_file350, !8, !"__UNIQUE_ID_file350", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/microchip_t1.c", i32 539, i32 1}
!9 = !{ptr @__UNIQUE_ID_license351, !8, !"__UNIQUE_ID_license351", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/microchip_t1.c", i32 511, i32 21}
!12 = !{ptr @microchip_t1_phy_driver, !13, !"microchip_t1_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/microchip_t1.c", i32 507, i32 26}
!14 = !{ptr @lan87xx_phy_init.init, !15, !"init", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/microchip_t1.c", i32 159, i32 38}
!16 = !{ptr @lan87xx_cable_test_start.cable_test, !17, !"cable_test", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/microchip_t1.c", i32 313, i32 38}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
